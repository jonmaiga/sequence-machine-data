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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A169700: First differences of A169699.

The programs for A169700, the canonical program `A169700.P8168186238467961938` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169700 has offset 0).

The definition of A169700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169700.P8168186238467961938

`Δ[A169699(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A169700

/-- `Δ[A169699(n)]` -/
def P8168186238467961938.Spec : Prop :=
  ∀ n, P8168186238467961938.a n = A169700 n

theorem P8168186238467961938.correct : P8168186238467961938.Spec := by
  intro n
  simp only [A169700]

end A169700

/-! ## A169700.P3480777173165952004

`A169699(n+1)-A169699(n)`
-/

namespace A169700.P3480777173165952004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169699 (n + 1) - A169699 n

end

end A169700.P3480777173165952004

namespace A169700

/-- `A169699(n+1)-A169699(n)` -/
def P3480777173165952004.Spec : Prop :=
  ∀ n, P3480777173165952004.a n = A169700 n

theorem P3480777173165952004.correct : P3480777173165952004.Spec := by
  intro n
  simp only [A169700, Nat.add_sub_cancel, A169700.P3480777173165952004.a, A169700.P8168186238467961938.f1, A169700.P8168186238467961938.a, SequenceMachineLib.memo_apply]

end A169700

/-! ## A169700.P13609721177128608747

`Δ[A181385(A016825(n))-A272702(n)]`
-/

namespace A169700.P13609721177128608747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169700.P13609721177128608747

namespace A169700

/-- `Δ[A181385(A016825(n))-A272702(n)]` -/
def P13609721177128608747.Spec : Prop :=
  ∀ n, P13609721177128608747.a n = A169700 n

end A169700

/-! ## A169700.P16149393449173630275

`Δ[A008740(A008458(n))-A272702(n)]`
-/

namespace A169700.P16149393449173630275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169700.P16149393449173630275

namespace A169700

/-- `Δ[A008740(A008458(n))-A272702(n)]` -/
def P16149393449173630275.Spec : Prop :=
  ∀ n, P16149393449173630275.a n = A169700 n

end A169700

/-! ## A169700.P7069694990437205450

`Δ[A008740(A008458(n))]-A272704(n)`
-/

namespace A169700.P7069694990437205450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272704 n

end

end A169700.P7069694990437205450

namespace A169700

/-- `Δ[A008740(A008458(n))]-A272704(n)` -/
def P7069694990437205450.Spec : Prop :=
  ∀ n, P7069694990437205450.a n = A169700 n

end A169700

/-!
# A169701: Total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 374".

The programs for A169701, there is no canonical definition to state claims against.
-/

/-! ## A169701.P4187141453708804121

`(2*n+3)²-A273069(n+1)`
-/

namespace A169701.P4187141453708804121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273069 (n + 1)

end

end A169701.P4187141453708804121

/-! ## A169701.P16724931813208297259

`A144396(n+1)²%A273069(n+1)`
-/

namespace A169701.P16724931813208297259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1) ^ 2) (A273069 (n + 1))

end

end A169701.P16724931813208297259

/-! ## A169701.P4425899799122476055

`A016754(n+1)-Δ[A273071(n)]`
-/

namespace A169701.P4425899799122476055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f1 (n + 1) - f1 n)

end

end A169701.P4425899799122476055

/-! ## A169701.P13711103843150918775

`A169702(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A169701.P13711103843150918775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169702 (n - 1) + a (n - 1)

end

end A169701.P13711103843150918775

/-! ## A169701.P4656022207959839949

`Δ[A271459(n)]-A169702(n)`
-/

namespace A169701.P4656022207959839949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169702 n

end

end A169701.P4656022207959839949

/-! ## A169701.P304453339685092289

`A271459(n+1)-(A271459(n)+A169702(n))`
-/

namespace A169701.P304453339685092289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271459 (n + 1) - (A271459 n + A169702 n)

end

end A169701.P304453339685092289

/-!
# A169702: First differences of A169701.

The programs for A169702, there is no canonical definition to state claims against.
-/

/-! ## A169702.P14536164792481627739

`Δ[A169701(n)]`
-/

namespace A169702.P14536164792481627739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169702.P14536164792481627739

/-! ## A169702.P6329934606583457836

`8*(n+2)-A273072(n+1)`
-/

namespace A169702.P6329934606583457836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A273072 (n + 1)

end

end A169702.P6329934606583457836

/-! ## A169702.P10878902417077391166

`Δ[(2*n+3)²-A273069(n+1)]`
-/

namespace A169702.P10878902417077391166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169702.P10878902417077391166

/-! ## A169702.P16119510119631698056

`A169701(n+1)-A169701(n)`
-/

namespace A169702.P16119510119631698056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169701 (n + 1) - A169701 n

end

end A169702.P16119510119631698056

/-! ## A169702.P258579085018448455

`Δ[A144396(n+1)²%A273069(n+1)]`
-/

namespace A169702.P258579085018448455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1) ^ 2) (A273069 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169702.P258579085018448455

/-!
# A169703: Total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 174".

The programs for A169703, the canonical program `A169703.P13390613285210414476` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169703 has offset 0).

The definition of A169703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169703.P4780759706244811124

`A147562(n+1)-A147562(floor(n/2))`
-/

namespace A169703.P4780759706244811124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (n + 1) - A147562 ⌊(n : ℚ) / 2⌋.toNat

end

end A169703.P4780759706244811124

namespace A169703

/-- `A147562(n+1)-A147562(floor(n/2))` -/
def P4780759706244811124.Spec : Prop :=
  ∀ n, P4780759706244811124.a n = A169703 n

end A169703

/-! ## A169703.P2095903259918137069

`A079317(n)+A079315(n)-floor(atan(n+1))`
-/

namespace A169703.P2095903259918137069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n - ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A169703.P2095903259918137069

namespace A169703

/-- `A079317(n)+A079315(n)-floor(atan(n+1))` -/
def P2095903259918137069.Spec : Prop :=
  ∀ n, P2095903259918137069.a n = A169703 n

end A169703

/-! ## A169703.P6439972109903939688

`abs(A147562(n+1)-A147562(A004526(n)))`
-/

namespace A169703.P6439972109903939688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147562 (n + 1) - A147562 (A004526 n).toNat|

end

end A169703.P6439972109903939688

namespace A169703

/-- `abs(A147562(n+1)-A147562(A004526(n)))` -/
def P6439972109903939688.Spec : Prop :=
  ∀ n, P6439972109903939688.a n = A169703 n

end A169703

/-! ## A169703.P13762884061301235536

`A079317(n)+A079315(n)-A000040(n+1)%2`
-/

namespace A169703.P13762884061301235536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n - Int.tmod (A000040 (n + 1)) 2

end

end A169703.P13762884061301235536

namespace A169703

/-- `A079317(n)+A079315(n)-A000040(n+1)%2` -/
def P13762884061301235536.Spec : Prop :=
  ∀ n, P13762884061301235536.a n = A169703 n

end A169703

/-! ## A169703.P13390613285210414476

`A160410(A110654(n))+A147582(A029579(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A169703

/-- `A160410(A110654(n))+A147582(A029579(n))` -/
def P13390613285210414476.Spec : Prop :=
  ∀ n, P13390613285210414476.a n = A169703 n

theorem P13390613285210414476.correct : P13390613285210414476.Spec := by
  intro n
  simp only [A169703]

end A169703

/-! ## A169703.P11909600083302099184

`A079315(n)+A079317(n)-A001221(A001316(n))`
-/

namespace A169703.P11909600083302099184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079315 n + (A079317 n - A001221 (A001316 n).toNat)

end

end A169703.P11909600083302099184

namespace A169703

/-- `A079315(n)+A079317(n)-A001221(A001316(n))` -/
def P11909600083302099184.Spec : Prop :=
  ∀ n, P11909600083302099184.a n = A169703 n

end A169703

/-! ## A169703.P16004793591361413167

`A169704(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A169703.P16004793591361413167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169704 (n - 1) + a (n - 1)

end

end A169703.P16004793591361413167

namespace A169703

/-- `A169704(n-1)+a(n-1)` -/
def P16004793591361413167.Spec : Prop :=
  ∀ n, P16004793591361413167.a n = A169703 n

end A169703

/-! ## A169703.P10694930432328948443

`Δ[A269709(n)]-A169704(n)`
-/

namespace A169703.P10694930432328948443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169704 n

end

end A169703.P10694930432328948443

namespace A169703

/-- `Δ[A269709(n)]-A169704(n)` -/
def P10694930432328948443.Spec : Prop :=
  ∀ n, P10694930432328948443.a n = A169703 n

end A169703

/-! ## A169703.P17061042696145119287

`A079317(n)+A079315(n)-A006530((n+1)²+1)%2`
-/

namespace A169703.P17061042696145119287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n - Int.tmod (A006530 ((n + 1) ^ 2 + 1)) 2

end

end A169703.P17061042696145119287

namespace A169703

/-- `A079317(n)+A079315(n)-A006530((n+1)²+1)%2` -/
def P17061042696145119287.Spec : Prop :=
  ∀ n, P17061042696145119287.a n = A169703 n

end A169703

/-!
# A169704: First differences of A169703.

The programs for A169704, the canonical program `A169704.P14470906211956367627` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169704 has offset 0).

The definition of A169704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169704.P14470906211956367627

`Δ[A169703(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A169704

/-- `Δ[A169703(n)]` -/
def P14470906211956367627.Spec : Prop :=
  ∀ n, P14470906211956367627.a n = A169704 n

theorem P14470906211956367627.correct : P14470906211956367627.Spec := by
  intro n
  simp only [A169704]

end A169704

/-! ## A169704.P2440515084285613563

`A169703(n+1)-A169703(n)`
-/

namespace A169704.P2440515084285613563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169703 (n + 1) - A169703 n

end

end A169704.P2440515084285613563

namespace A169704

/-- `A169703(n+1)-A169703(n)` -/
def P2440515084285613563.Spec : Prop :=
  ∀ n, P2440515084285613563.a n = A169704 n

theorem P2440515084285613563.correct : P2440515084285613563.Spec := by
  intro n
  simp only [A169704, Nat.add_sub_cancel, A169704.P2440515084285613563.a, A169704.P14470906211956367627.f1, A169704.P14470906211956367627.a, SequenceMachineLib.memo_apply]

end A169704

/-! ## A169704.P17811829682665796264

`Δ[A147562(n+1)-A147562(floor(n/2))]`
-/

namespace A169704.P17811829682665796264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (n + 1) - A147562 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P17811829682665796264

namespace A169704

/-- `Δ[A147562(n+1)-A147562(floor(n/2))]` -/
def P17811829682665796264.Spec : Prop :=
  ∀ n, P17811829682665796264.a n = A169704 n

end A169704

/-! ## A169704.P5620718562623111927

`Δ[C(2, n+2)+A079317(n)+A079315(n)]`
-/

namespace A169704.P5620718562623111927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A079317 n + A079315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P5620718562623111927

namespace A169704

/-- `Δ[C(2, n+2)+A079317(n)+A079315(n)]` -/
def P5620718562623111927.Spec : Prop :=
  ∀ n, P5620718562623111927.a n = A169704 n

end A169704

/-! ## A169704.P9728448757133989533

`Δ[A000007(n)+A079317(n)+A079315(n)]`
-/

namespace A169704.P9728448757133989533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A079317 n + A079315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P9728448757133989533

namespace A169704

/-- `Δ[A000007(n)+A079317(n)+A079315(n)]` -/
def P9728448757133989533.Spec : Prop :=
  ∀ n, P9728448757133989533.a n = A169704 n

end A169704

/-! ## A169704.P499028026672182972

`Δ[A054977(n)+A079317(n)+A079315(n)]`
-/

namespace A169704.P499028026672182972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A079317 n + A079315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P499028026672182972

namespace A169704

/-- `Δ[A054977(n)+A079317(n)+A079315(n)]` -/
def P499028026672182972.Spec : Prop :=
  ∀ n, P499028026672182972.a n = A169704 n

end A169704

/-! ## A169704.P12919698964656423984

`Δ[A079317(n)+A079315(n)-A000040(n+1)%2]`
-/

namespace A169704.P12919698964656423984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n - Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P12919698964656423984

namespace A169704

/-- `Δ[A079317(n)+A079315(n)-A000040(n+1)%2]` -/
def P12919698964656423984.Spec : Prop :=
  ∀ n, P12919698964656423984.a n = A169704 n

end A169704

/-! ## A169704.P8877037934031041606

`Δ[A079317(n)+A079315(n)-A000045(n²%(n+1))]`
-/

namespace A169704.P8877037934031041606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n - A000045 (n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P8877037934031041606

namespace A169704

/-- `Δ[A079317(n)+A079315(n)-A000045(n²%(n+1))]` -/
def P8877037934031041606.Spec : Prop :=
  ∀ n, P8877037934031041606.a n = A169704 n

end A169704

/-! ## A169704.P9002989478785956344

`Δ[A079317(n)+A079315(n)]+A008683(2*(n+1)²)`
-/

namespace A169704.P9002989478785956344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (2 * (n + 1) ^ 2)

end

end A169704.P9002989478785956344

namespace A169704

/-- `Δ[A079317(n)+A079315(n)]+A008683(2*(n+1)²)` -/
def P9002989478785956344.Spec : Prop :=
  ∀ n, P9002989478785956344.a n = A169704 n

end A169704

/-!
# A169705: Total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 494".

The programs for A169705, there is no canonical definition to state claims against.
-/

/-! ## A169705.P14646465931517960602

`A169706(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A169705.P14646465931517960602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169706 (n - 1) + a (n - 1)

end

end A169705.P14646465931517960602

/-! ## A169705.P823378495417037763

`Δ[A272548(n)]-A169706(n)`
-/

namespace A169705.P823378495417037763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169706 n

end

end A169705.P823378495417037763

/-! ## A169705.P11275313841550564170

`A272548(n+1)-(A272548(n)+A169706(n))`
-/

namespace A169705.P11275313841550564170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272548 (n + 1) - (A272548 n + A169706 n)

end

end A169705.P11275313841550564170

/-! ## A169705.P17586279423831042293

`(2*n+1)²-A057427(n)*A272834(n)`
-/

namespace A169705.P17586279423831042293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - A057427 n * A272834 n

end

end A169705.P17586279423831042293

/-! ## A169705.P2774479085633649386

`A000007(n)+A016754(n)-A272834(n)`
-/

namespace A169705.P2774479085633649386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272834 n)

end

end A169705.P2774479085633649386

/-! ## A169705.P1823279854619223553

`A016754(n)*A054977(n)-A272834(n)`
-/

namespace A169705.P1823279854619223553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A054977 n - A272834 n

end

end A169705.P1823279854619223553

/-! ## A169705.P13425078871641779321

`1-A057427(n)+A016754(n)-A272834(n)`
-/

namespace A169705.P13425078871641779321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 n + (A016754 n - A272834 n)

end

end A169705.P13425078871641779321

/-! ## A169705.P17616909876730008930

`A000035(A004013(n))+A016754(n)-A272834(n)`
-/

namespace A169705.P17616909876730008930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004013 n).toNat + (A016754 n - A272834 n)

end

end A169705.P17616909876730008930

/-! ## A169705.P2301733622932769052

`A016754(n)+A000035(A033715(n))-A272834(n)`
-/

namespace A169705.P2301733622932769052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + (A000035 (A033715 n).toNat - A272834 n)

end

end A169705.P2301733622932769052

/-! ## A169705.P4822193040960161110

`A016754(n)+A036987(A022144(n))-A272834(n)`
-/

namespace A169705.P4822193040960161110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + (A036987 (A022144 n).toNat - A272834 n)

end

end A169705.P4822193040960161110

/-! ## A169705.P11163636314729831899

`(2*n+1)²-A272834(n)%A272836(n)`
-/

namespace A169705.P11163636314729831899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272834 n) (A272836 n)

end

end A169705.P11163636314729831899

/-! ## A169705.P10749011907299567457

`A181385(A016825(n))-A272834(n)`
-/

namespace A169705.P10749011907299567457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272834 n

end

end A169705.P10749011907299567457

/-! ## A169705.P8220529551805483217

`A008683(A004011(n))+A016754(n)-A272834(n)`
-/

namespace A169705.P8220529551805483217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004011 n).toNat + (A016754 n - A272834 n)

end

end A169705.P8220529551805483217

/-! ## A169705.P1755324186883710260

`A008740(A008458(n))-A272834(n)`
-/

namespace A169705.P1755324186883710260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272834 n

end

end A169705.P1755324186883710260

/-! ## A169705.P4294732319412425222

`A008683(A008458(A008458(n)))+A016754(n)-A272834(n)`
-/

namespace A169705.P4294732319412425222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008458 (A008458 n).toNat).toNat + (A016754 n - A272834 n)

end

end A169705.P4294732319412425222

/-! ## A169705.P16729253030256118829

`A016754(n)-A272834(n)-A008683(A269753(n+1))`
-/

namespace A169705.P16729253030256118829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272834 n - A008683 (A269753 (n + 1)).toNat

end

end A169705.P16729253030256118829

/-! ## A169705.P11173123145431596579

`∏{d}[A016754(n)-A272834(n), A014963(#)]`
-/

namespace A169705.P11173123145431596579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A169705.P11173123145431596579

/-!
# A169706: First differences of A169705.

The programs for A169706, there is no canonical definition to state claims against.
-/

/-! ## A169706.P12974362189273965290

`Δ[A169705(n)]`
-/

namespace A169706.P12974362189273965290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169706.P12974362189273965290

/-! ## A169706.P17371070571821955604

`A169705(n+1)-A169705(n)`
-/

namespace A169706.P17371070571821955604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 (n + 1) - A169705 n

end

end A169706.P17371070571821955604

/-! ## A169706.P806701579538972144

`Δ[A000007(n)+A016754(n)-A272834(n)]`
-/

namespace A169706.P806701579538972144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169706.P806701579538972144

/-! ## A169706.P11915422695449290939

`Δ[A016754(n)+A054977(n)-A272834(n)]`
-/

namespace A169706.P11915422695449290939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + (A054977 n - A272834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169706.P11915422695449290939

/-! ## A169706.P11913773796233339588

`Δ[1-A057427(n)+A016754(n)-A272834(n)]`
-/

namespace A169706.P11913773796233339588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 n + (A016754 n - A272834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169706.P11913773796233339588

/-! ## A169706.P15997171300651866050

`Δ[(2*n+1)²-A272834(n)%A272836(n)]`
-/

namespace A169706.P15997171300651866050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272834 n) (A272836 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169706.P15997171300651866050

/-!
# A169707: Total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 750" using the von Neumann neighborhood.

The programs for A169707, there is no canonical definition to state claims against.
-/

/-! ## A169707.P17624620496151386195

`A160164(n+1)-A170903(n+1)`
-/

namespace A169707.P17624620496151386195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (n + 1) - A170903 (n + 1)

end

end A169707.P17624620496151386195

/-! ## A169707.P18315165182158839699

`A187220(n+1)+2*A160552(n)`
-/

namespace A169707.P18315165182158839699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (n + 1) + 2 * A160552 n

end

end A169707.P18315165182158839699

/-! ## A169707.P7091088056996009020

`1+2*(A139250(n+1)-A160552(n+1))`
-/

namespace A169707.P7091088056996009020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * (A139250 (n + 1) - A160552 (n + 1))

end

end A169707.P7091088056996009020

/-! ## A169707.P8816223597199489972

`∑[A169708(n)]`
-/

namespace A169707.P8816223597199489972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169707.P8816223597199489972

/-! ## A169707.P1531926830852364878

`1+4*A255747(n)`
-/

namespace A169707.P1531926830852364878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A255747 n

end

end A169707.P1531926830852364878

/-! ## A169707.P12124104383686568531

`∑[4*A160552(n)]+1`
-/

namespace A169707.P12124104383686568531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A160552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A169707.P12124104383686568531

/-! ## A169707.P18433974973001651536

`2*A266530(2*(n+1))+1`
-/

namespace A169707.P18433974973001651536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266530 (2 * (n + 1)) + 1

end

end A169707.P18433974973001651536

/-! ## A169707.P3055428420060422799

`4*∑[A266529(2*(n+1))]+1`
-/

namespace A169707.P3055428420060422799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A169707.P3055428420060422799

/-! ## A169707.P17598000239263496600

`2*(2*A139250(n)+1)-a(n-1)` with `a(0)=1`
-/

namespace A169707.P17598000239263496600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * A139250 n + 1) - a (n - 1)

end

end A169707.P17598000239263496600

/-! ## A169707.P11611283679469545408

`abs(∑[4*A033999(n)*A139250(n)])+1`
-/

namespace A169707.P11611283679469545408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A033999 n * A139250 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| + 1

end

end A169707.P11611283679469545408

/-! ## A169707.P4281949258997153015

`A255747(n+1)+A246336(n)-A170903(n+1)`
-/

namespace A169707.P4281949258997153015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (n + 1) + (A246336 n - A170903 (n + 1))

end

end A169707.P4281949258997153015

/-! ## A169707.P9465706247105091135

`A139250(n+1)+A139250(n+1)-A170903(n+1)`
-/

namespace A169707.P9465706247105091135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) + (A139250 (n + 1) - A170903 (n + 1))

end

end A169707.P9465706247105091135

/-! ## A169707.P16472057551085255818

`A255366(n+1)+A255366(n+1)-A147562(n+1)`
-/

namespace A169707.P16472057551085255818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255366 (n + 1) + (A255366 (n + 1) - A147562 (n + 1))

end

end A169707.P16472057551085255818

/-! ## A169707.P17117028804033810772

`∑[A008574(A160552(n))]`
-/

namespace A169707.P17117028804033810772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A160552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169707.P17117028804033810772

/-! ## A169707.P15917460127248243145

`∑[A047461(A160552(n)+1)]`
-/

namespace A169707.P15917460127248243145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A160552 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169707.P15917460127248243145

/-! ## A169707.P14336482825167215722

`A005408(A160552(n))+2*A139250(n)`
-/

namespace A169707.P14336482825167215722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A160552 n).toNat + 2 * A139250 n

end

end A169707.P14336482825167215722

/-! ## A169707.P790727758910409266

`A255263(n+1)+A162795(n+1)`
-/

namespace A169707.P790727758910409266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255263 (n + 1) + A162795 (n + 1)

end

end A169707.P790727758910409266

/-! ## A169707.P12062035821964804866

`A255049(n)+A187220(n+1)`
-/

namespace A169707.P12062035821964804866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255049 n + A187220 (n + 1)

end

end A169707.P12062035821964804866

/-! ## A169707.P6435082050389615842

`A016813(A255747(n))`
-/

namespace A169707.P6435082050389615842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A255747 n).toNat

end

end A169707.P6435082050389615842

/-! ## A169707.P18346440841763356001

`A130824(A255747(n)+1)-1`
-/

namespace A169707.P18346440841763356001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A255747 n + 1).toNat - 1

end

end A169707.P18346440841763356001

/-!
# A169708: First differences of A169707.

The programs for A169708, there is no canonical definition to state claims against.
-/

/-! ## A169708.P8166989925355351743

`A000007(n)+4*A160552(n)`
-/

namespace A169708.P8166989925355351743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 4 * A160552 n

end

end A169708.P8166989925355351743

/-! ## A169708.P9860546385813554664

`A008574(A160552(n))`
-/

namespace A169708.P9860546385813554664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A160552 n).toNat

end

end A169708.P9860546385813554664

/-! ## A169708.P1747358539814760870

`A047461(A160552(n)+1)`
-/

namespace A169708.P1747358539814760870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A160552 n + 1).toNat

end

end A169708.P1747358539814760870

/-! ## A169708.P3272202384518355022

`A008574(A151568(n)-A151704(n))`
-/

namespace A169708.P3272202384518355022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A151568 n - A151704 n).toNat

end

end A169708.P3272202384518355022

/-! ## A169708.P17189240538832386560

`A008574(A151861(n)-A151859(n))`
-/

namespace A169708.P17189240538832386560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A151861 n - A151859 n).toNat

end

end A169708.P17189240538832386560

/-! ## A169708.P8308578065469848412

`A008574((A151569(n)-A151704(n))/2)`
-/

namespace A169708.P8308578065469848412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A151569 n - A151704 n : ℚ) / 2)).toNat

end

end A169708.P8308578065469848412

/-! ## A169708.P12450336138449421084

`A003485(2*A160552(n))`
-/

namespace A169708.P12450336138449421084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (2 * A160552 n).toNat

end

end A169708.P12450336138449421084

/-! ## A169708.P7463334166655907093

`A004277(2*A160552(n))`
-/

namespace A169708.P7463334166655907093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A160552 n).toNat

end

end A169708.P7463334166655907093

/-! ## A169708.P3390866167016162130

`A003485(lcm(2, A160552(n)))`
-/

namespace A169708.P3390866167016162130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (Int.lcm 2 (A160552 n))

end

end A169708.P3390866167016162130

/-! ## A169708.P10353309615267791398

`A004275(2*A160552(n)+1)`
-/

namespace A169708.P10353309615267791398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * A160552 n + 1).toNat

end

end A169708.P10353309615267791398

/-! ## A169708.P8397073269062051938

`A004273(2*A160552(n))+1`
-/

namespace A169708.P8397073269062051938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A160552 n).toNat + 1

end

end A169708.P8397073269062051938

/-! ## A169708.P17129443887966268460

`A004275(or(1, 2*A160552(n)))`
-/

namespace A169708.P17129443887966268460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.lor 1 (2 * A160552 n)).toNat

end

end A169708.P17129443887966268460

/-! ## A169708.P10331384545651975864

`A004275(xor(1, 2*A160552(n)))`
-/

namespace A169708.P10331384545651975864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.xor 1 (2 * A160552 n)).toNat

end

end A169708.P10331384545651975864

/-! ## A169708.P8326879958510121987

`A004277(2*A266529(Δ[n²]))`
-/

namespace A169708.P8326879958510121987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A169708.P8326879958510121987

/-! ## A169708.P9332307509284521780

`A004277(A151569(n)-A151704(n))`
-/

namespace A169708.P9332307509284521780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151569 n - A151704 n).toNat

end

end A169708.P9332307509284521780

/-! ## A169708.P10273725024694515951

`A004275(A160552(n)+A160552(n)+1)`
-/

namespace A169708.P10273725024694515951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A160552 n + (A160552 n + 1)).toNat

end

end A169708.P10273725024694515951

/-! ## A169708.P18185417721309696467

`A004277(2*(A151569(n)-A151568(n)))`
-/

namespace A169708.P18185417721309696467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * (A151569 n - A151568 n)).toNat

end

end A169708.P18185417721309696467

/-! ## A169708.P2693949959911692116

`A004277(2*(A151568(n)-A151704(n)))`
-/

namespace A169708.P2693949959911692116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * (A151568 n - A151704 n)).toNat

end

end A169708.P2693949959911692116

/-! ## A169708.P3548197723882769042

`A004277(A266529(Δ[n²])+A160552(n))`
-/

namespace A169708.P3548197723882769042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A160552 n).toNat

end

end A169708.P3548197723882769042

/-! ## A169708.P16316081344881299311

`A003485(A255049(n))`
-/

namespace A169708.P16316081344881299311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A255049 n).toNat

end

end A169708.P16316081344881299311

/-!
# A169709: Total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 1006".

The programs for A169709, there is no canonical definition to state claims against.
-/

/-! ## A169709.P15473726077923521328

`A169710(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A169709.P15473726077923521328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169710 (n - 1) + a (n - 1)

end

end A169709.P15473726077923521328

/-! ## A169709.P21135906913596645

`Δ[A273861(n)]-A169710(n)`
-/

namespace A169709.P21135906913596645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169710 n

end

end A169709.P21135906913596645

/-! ## A169709.P14002331395692763081

`A273861(n+1)-(A273861(n)+A169710(n))`
-/

namespace A169709.P14002331395692763081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273861 (n + 1) - (A273861 n + A169710 n)

end

end A169709.P14002331395692763081

/-! ## A169709.P17194245624440938213

`A020985(n)²+∑[A169710(n)]-A169710(n)`
-/

namespace A169709.P17194245624440938213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n)

end

end A169709.P17194245624440938213

/-! ## A169709.P6745120269940236525

`A033999(n)²+∑[A169710(n)]-A169710(n)`
-/

namespace A169709.P6745120269940236525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n)

end

end A169709.P6745120269940236525

/-! ## A169709.P10242826463793853223

`A106400(n)²+∑[A169710(n)]-A169710(n)`
-/

namespace A169709.P10242826463793853223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n)

end

end A169709.P10242826463793853223

/-! ## A169709.P11180952813023639897

`A158388(n)²+∑[A169710(n)]-A169710(n)`
-/

namespace A169709.P11180952813023639897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n)

end

end A169709.P11180952813023639897

/-! ## A169709.P2332741583321726932

`A002144(n+1)%2+∑[A169710(n)]-A169710(n)`
-/

namespace A169709.P2332741583321726932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002144 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n)

end

end A169709.P2332741583321726932

/-! ## A169709.P12327410503248386739

`A003484(4*n+3)+∑[A169710(n)]-A169710(n)`
-/

namespace A169709.P12327410503248386739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (4 * n + 3) + (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n)

end

end A169709.P12327410503248386739

/-! ## A169709.P14667349836271287651

`A005408((∑[A169710(n)]-A169710(n))/2)`
-/

namespace A169709.P14667349836271287651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A169710 n : ℤ) : ℚ) / 2)).toNat

end

end A169709.P14667349836271287651

/-! ## A169709.P14467457500646187026

`A141310(∑[A169710(n)]-A169710(n))`
-/

namespace A169709.P14467457500646187026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n).toNat

end

end A169709.P14467457500646187026

/-! ## A169709.P9075604709042975894

`1-A009531(∑[A169710(n)]-A169710(n))`
-/

namespace A169709.P9075604709042975894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A009531 (∑ j ∈ Finset.range (n + 1), f1 j - A169710 n).toNat

end

end A169709.P9075604709042975894

/-!
# A169710: First differences of A169709.

The programs for A169710, there is no canonical definition to state claims against.
-/

/-! ## A169710.P1682942358643841045

`Δ[A169709(n)]`
-/

namespace A169710.P1682942358643841045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169710.P1682942358643841045

/-! ## A169710.P10476554964345675921

`A169709(n+1)-A169709(n)`
-/

namespace A169710.P10476554964345675921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 (n + 1) - A169709 n

end

end A169710.P10476554964345675921

/-! ## A169710.P3700874379020209389

`record[A169709(abs(1-n))]-A169709(n)`
-/

namespace A169710.P3700874379020209389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A169709 n

end

end A169710.P3700874379020209389

/-!
# A169711: The function W_n(6) (see Borwein et al. reference for definition).

The programs for A169711, the canonical program `A169711.P3852952923090487921` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169711 has offset 1).

The definition of A169711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A169711.P3852952923090487921

`6*(n+1)^3-9*(n+1)²+4*(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169711

/-- `6*(n+1)^3-9*(n+1)²+4*(n+1)` -/
def P3852952923090487921.Spec : Prop :=
  ∀ n, P3852952923090487921.a n = A169711 (n + 1)

theorem P3852952923090487921.correct : P3852952923090487921.Spec := by
  intro n
  simp only [A169711, Nat.add_sub_cancel]

end A169711

/-! ## A169711.P2227535388973132145

`(n+1)*∑[ogf((1+7x+4x^2)/(1-2x+x^2))]`
-/

namespace A169711.P2227535388973132145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A169711.P2227535388973132145

namespace A169711

/-- `(n+1)*∑[ogf((1+7x+4x^2)/(1-2x+x^2))]` -/
def P2227535388973132145.Spec : Prop :=
  ∀ n, P2227535388973132145.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P9525979240911445385

`(C(2*n, 2)+(2*n+1)²)*(n+1)`
-/

namespace A169711.P9525979240911445385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 + (2 * n + 1) ^ 2) * (n + 1)

end

end A169711.P9525979240911445385

namespace A169711

/-- `(C(2*n, 2)+(2*n+1)²)*(n+1)` -/
def P9525979240911445385.Spec : Prop :=
  ∀ n, (P9525979240911445385.a n : ℤ) = A169711 (n + 1)

theorem P9525979240911445385.correct : P9525979240911445385.Spec := by
  intro n
  simp only [A169711, Nat.add_sub_cancel, A169711.P9525979240911445385.a, A169711.P3852952923090487921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169711

/-! ## A169711.P9728814824427433491

`∑[A195321(n)+1]`
-/

namespace A169711.P9728814824427433491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169711.P9728814824427433491

namespace A169711

/-- `∑[A195321(n)+1]` -/
def P9728814824427433491.Spec : Prop :=
  ∀ n, P9728814824427433491.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P9471301384171627773

`(n+1)*A085473(n)`
-/

namespace A169711.P9471301384171627773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085473 n

end

end A169711.P9471301384171627773

namespace A169711

/-- `(n+1)*A085473(n)` -/
def P9471301384171627773.Spec : Prop :=
  ∀ n, P9471301384171627773.a n = A169711 (n + 1)

theorem P9471301384171627773.correct : P9471301384171627773.Spec := by
  intro n
  simp only [A169711, Nat.add_sub_cancel, A169711.P9471301384171627773.a, A169711.P3852952923090487921.a, A085473, A085473.P10681717492594671342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169711

/-! ## A169711.P3083624699723541520

`ceil(A193228(n+1)/2)`
-/

namespace A169711.P3083624699723541520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193228 (n + 1) : ℚ) / 2⌉

end

end A169711.P3083624699723541520

namespace A169711

/-- `ceil(A193228(n+1)/2)` -/
def P3083624699723541520.Spec : Prop :=
  ∀ n, P3083624699723541520.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P10162345726536590362

`(n+1)*(A195319(n)+1)`
-/

namespace A169711.P10162345726536590362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A195319 n + 1)

end

end A169711.P10162345726536590362

namespace A169711

/-- `(n+1)*(A195319(n)+1)` -/
def P10162345726536590362.Spec : Prop :=
  ∀ n, P10162345726536590362.a n = A169711 (n + 1)

theorem P10162345726536590362.correct : P10162345726536590362.Spec := by
  intro n
  simp only [A169711, Nat.add_sub_cancel, A169711.P10162345726536590362.a, A169711.P3852952923090487921.a, A195319, A195319.P14159989131175070761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169711

/-! ## A169711.P12830737138701212569

`(n+1)*(A080859(n)-n)`
-/

namespace A169711.P12830737138701212569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A080859 n - (n : ℤ))

end

end A169711.P12830737138701212569

namespace A169711

/-- `(n+1)*(A080859(n)-n)` -/
def P12830737138701212569.Spec : Prop :=
  ∀ n, P12830737138701212569.a n = A169711 (n + 1)

theorem P12830737138701212569.correct : P12830737138701212569.Spec := by
  intro n
  simp only [A169711, Nat.add_sub_cancel, A169711.P12830737138701212569.a, A169711.P3852952923090487921.a, A080859, A080859.P14823795919072812333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169711

/-! ## A169711.P9580098189236726673

`(n+1)*(A033580(n)+1+n)`
-/

namespace A169711.P9580098189236726673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A033580 n + 1 + (n : ℤ))

end

end A169711.P9580098189236726673

namespace A169711

/-- `(n+1)*(A033580(n)+1+n)` -/
def P9580098189236726673.Spec : Prop :=
  ∀ n, P9580098189236726673.a n = A169711 (n + 1)

theorem P9580098189236726673.correct : P9580098189236726673.Spec := by
  intro n
  simp only [A169711, Nat.add_sub_cancel, A169711.P9580098189236726673.a, A169711.P3852952923090487921.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169711

/-! ## A169711.P15579877021669049404

`(n+1)*(A136392(n+1)+n)`
-/

namespace A169711.P15579877021669049404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A136392 (n + 1) + (n : ℤ))

end

end A169711.P15579877021669049404

namespace A169711

/-- `(n+1)*(A136392(n+1)+n)` -/
def P15579877021669049404.Spec : Prop :=
  ∀ n, P15579877021669049404.a n = A169711 (n + 1)

theorem P15579877021669049404.correct : P15579877021669049404.Spec := by
  intro n
  simp only [A169711, Nat.add_sub_cancel, A169711.P15579877021669049404.a, A169711.P3852952923090487921.a, A136392, A136392.P9626772396593886433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169711

/-! ## A169711.P13028627495225503806

`∑[A298034(2*n)]`
-/

namespace A169711.P13028627495225503806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169711.P13028627495225503806

namespace A169711

/-- `∑[A298034(2*n)]` -/
def P13028627495225503806.Spec : Prop :=
  ∀ n, P13028627495225503806.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P3775629580449154840

`(n+1)*A005448(2*n+1)`
-/

namespace A169711.P3775629580449154840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005448 (2 * n + 1)

end

end A169711.P3775629580449154840

namespace A169711

/-- `(n+1)*A005448(2*n+1)` -/
def P3775629580449154840.Spec : Prop :=
  ∀ n, P3775629580449154840.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P3953616514525290211

`A213818(2*n+1)/(2*n+1)`
-/

namespace A169711.P3953616514525290211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213818 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A169711.P3953616514525290211

namespace A169711

/-- `A213818(2*n+1)/(2*n+1)` -/
def P3953616514525290211.Spec : Prop :=
  ∀ n, P3953616514525290211.a n = (A169711 (n + 1) : ℚ)

end A169711

/-! ## A169711.P14357600560158326704

`∑[A058331(3*n)]`
-/

namespace A169711.P14357600560158326704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169711.P14357600560158326704

namespace A169711

/-- `∑[A058331(3*n)]` -/
def P14357600560158326704.Spec : Prop :=
  ∀ n, P14357600560158326704.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P7652190956185484695

`A309793(A017581(n))`
-/

namespace A169711.P7652190956185484695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309793 (A017581 n).toNat

end

end A169711.P7652190956185484695

namespace A169711

/-- `A309793(A017581(n))` -/
def P7652190956185484695.Spec : Prop :=
  ∀ n, P7652190956185484695.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P9688012235873740567

`∑[A161705(n²)]`
-/

namespace A169711.P9688012235873740567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169711.P9688012235873740567

namespace A169711

/-- `∑[A161705(n²)]` -/
def P9688012235873740567.Spec : Prop :=
  ∀ n, P9688012235873740567.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P8056548971903906667

`∑[A008600(n²)+1]`
-/

namespace A169711.P8056548971903906667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169711.P8056548971903906667

namespace A169711

/-- `∑[A008600(n²)+1]` -/
def P8056548971903906667.Spec : Prop :=
  ∀ n, P8056548971903906667.a n = A169711 (n + 1)

end A169711

/-! ## A169711.P8504027100107256098

`∑[A350521(n²)-3]`
-/

namespace A169711.P8504027100107256098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350521 (n ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169711.P8504027100107256098

namespace A169711

/-- `∑[A350521(n²)-3]` -/
def P8504027100107256098.Spec : Prop :=
  ∀ n, P8504027100107256098.a n = A169711 (n + 1)

end A169711

/-!
# A169712: The function W_n(8) (see Borwein et al. reference for definition).

The programs for A169712, the canonical program `A169712.P12999999471380340020` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169712 has offset 1).

The definition of A169712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169712.P12999999471380340020

`(n+1)*or(1, A022144(n)+n*A010014(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A169712

/-- `(n+1)*or(1, A022144(n)+n*A010014(n))` -/
def P12999999471380340020.Spec : Prop :=
  ∀ n, P12999999471380340020.a n = A169712 (n + 1)

theorem P12999999471380340020.correct : P12999999471380340020.Spec := by
  intro n
  simp only [A169712, Nat.add_sub_cancel]

end A169712

/-! ## A169712.P5517063477204637073

`(n+1)²+A008585(n+1)*A173200(n+1)`
-/

namespace A169712.P5517063477204637073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A008585 (n + 1) * A173200 (n + 1)

end

end A169712.P5517063477204637073

namespace A169712

/-- `(n+1)²+A008585(n+1)*A173200(n+1)` -/
def P5517063477204637073.Spec : Prop :=
  ∀ n, P5517063477204637073.a n = A169712 (n + 1)

end A169712

/-! ## A169712.P4789662232452282120

`A211014(C(Δ[n²], 2))-(12*C(n, 2)-1)`
-/

namespace A169712.P4789662232452282120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2) - ((12 * Nat.choose n 2 : ℤ) - 1)

end

end A169712.P4789662232452282120

namespace A169712

/-- `A211014(C(Δ[n²], 2))-(12*C(n, 2)-1)` -/
def P4789662232452282120.Spec : Prop :=
  ∀ n, P4789662232452282120.a n = A169712 (n + 1)

end A169712

/-! ## A169712.P9842925132104398345

`A033580(A014105(n))+A017173(n)`
-/

namespace A169712.P9842925132104398345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 (A014105 n).toNat + A017173 n

end

end A169712.P9842925132104398345

namespace A169712

/-- `A033580(A014105(n))+A017173(n)` -/
def P9842925132104398345.Spec : Prop :=
  ∀ n, P9842925132104398345.a n = A169712 (n + 1)

end A169712

/-! ## A169712.P4052476216086046225

`A239325(A014105(n))-A062783(n)`
-/

namespace A169712.P4052476216086046225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 (A014105 n).toNat - A062783 n

end

end A169712.P4052476216086046225

namespace A169712

/-- `A239325(A014105(n))-A062783(n)` -/
def P4052476216086046225.Spec : Prop :=
  ∀ n, P4052476216086046225.a n = A169712 (n + 1)

end A169712

/-! ## A169712.P14644020082192109541

`6*n+A033580(A014105(n))+A016777(n)`
-/

namespace A169712.P14644020082192109541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (A033580 (A014105 n).toNat + A016777 n)

end

end A169712.P14644020082192109541

namespace A169712

/-- `6*n+A033580(A014105(n))+A016777(n)` -/
def P14644020082192109541.Spec : Prop :=
  ∀ n, P14644020082192109541.a n = A169712 (n + 1)

end A169712

/-! ## A169712.P2025174146830560984

`A033580(A014105(n))+A016777(A008585(n))`
-/

namespace A169712.P2025174146830560984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 (A014105 n).toNat + A016777 (A008585 n).toNat

end

end A169712.P2025174146830560984

namespace A169712

/-- `A033580(A014105(n))+A016777(A008585(n))` -/
def P2025174146830560984.Spec : Prop :=
  ∀ n, P2025174146830560984.a n = A169712 (n + 1)

end A169712

/-!
# A169713: The function W_n(10) (see Borwein et al. reference for definition).

The programs for A169713, there is no canonical definition to state claims against.
-/

/-! ## A169713.P6216752244078628216

`A287316(A167499(n+5))`
-/

namespace A169713.P6216752244078628216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (A167499 (n + 5)).toNat

end

end A169713.P6216752244078628216

/-! ## A169713.P3214114651533575563

`A287316(eq[6, A128227(n)])`
-/

namespace A169713.P3214114651533575563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169713.P3214114651533575563

/-! ## A169713.P1803450411860365362

`A287316(A134869(n+6)+4)`
-/

namespace A169713.P1803450411860365362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (A134869 (n + 6) + 4).toNat

end

end A169713.P1803450411860365362

/-! ## A169713.P604137377759857464

`A287316(A055998(n+4)+8)`
-/

namespace A169713.P604137377759857464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (A055998 (n + 4) + 8).toNat

end

end A169713.P604137377759857464

/-! ## A169713.P4606940832603400215

`A287316(A052905(n+3)+10)`
-/

namespace A169713.P4606940832603400215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (A052905 (n + 3) + 10).toNat

end

end A169713.P4606940832603400215

/-!
# A169714: The function W_5(2n) (see Borwein et al. reference for definition).

The programs for A169714, there is no canonical definition to state claims against.
-/

/-! ## A169714.P1223526659996956408

`A287317(n)/A000984(n)`
-/

namespace A169714.P1223526659996956408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287317 n : ℚ) / (A000984 n : ℚ)

end

end A169714.P1223526659996956408

/-! ## A169714.P5746114086322351238

`A287317(n)/sqrt(A002894(n))`
-/

namespace A169714.P5746114086322351238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A287317 n : ℝ) / Real.sqrt (A002894 n : ℝ)

end

end A169714.P5746114086322351238

/-! ## A169714.P13206179120504975186

`A287317(n)/A081668(2*n)`
-/

namespace A169714.P13206179120504975186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287317 n : ℚ) / (A081668 (2 * n) : ℚ)

end

end A169714.P13206179120504975186

/-! ## A169714.P11031539333022632686

`A287317(n)/A007318(A046092(n))`
-/

namespace A169714.P11031539333022632686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287317 n : ℚ) / (A007318 (A046092 n).toNat : ℚ)

end

end A169714.P11031539333022632686

/-! ## A169714.P17476849250099279763

`record[A287316(A055999(n))]`
-/

namespace A169714.P17476849250099279763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169714.P17476849250099279763

/-!
# A169715: The function W_6(2n) (see Borwein et al. reference for definition).

The programs for A169715, there is no canonical definition to state claims against.
-/

/-! ## A169715.P6619226992004085278

`A356258(n)/A000984(n)`
-/

namespace A169715.P6619226992004085278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356258 n : ℚ) / (A000984 n : ℚ)

end

end A169715.P6619226992004085278

/-! ## A169715.P748928247596872397

`A356258(n)/A056040(2*n)`
-/

namespace A169715.P748928247596872397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356258 n : ℚ) / (A056040 (2 * n) : ℚ)

end

end A169715.P748928247596872397

/-! ## A169715.P313420832629009919

`A287316(eq[6, A025581(n)])`
-/

namespace A169715.P313420832629009919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169715.P313420832629009919

/-! ## A169715.P13852172465703826728

`A287316(eq[64, A130321(n)])`
-/

namespace A169715.P13852172465703826728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169715.P13852172465703826728

/-! ## A169715.P14703390678617202

`A287316(eq[7, A004736(n+1)])`
-/

namespace A169715.P14703390678617202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A169715.P14703390678617202

/-!
# A169717: 1A coefficients in an expansion of the elliptic genus of the K3 surface.

The programs for A169717, there is no canonical definition to state claims against.
-/

/-! ## A169717.P17911371982985304024

`A212301(n)/2`
-/

namespace A169717.P17911371982985304024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212301 n : ℚ) / 2

end

end A169717.P17911371982985304024

/-!
# A169718: Number of ways of making change for n cents using coins of 1, 5, 10, 25, 50 and 100 cents.

The programs for A169718, there is no canonical definition to state claims against.
-/

/-! ## A169718.P10752069283687730878

`A001305(floor(n/5))`
-/

namespace A169718.P10752069283687730878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001305 ⌊(n : ℚ) / 5⌋.toNat

end

end A169718.P10752069283687730878

/-! ## A169718.P10321828700303100686

`gcd(A000038(n), A001305(A002266(n)))`
-/

namespace A169718.P10321828700303100686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001305 (A002266 n).toNat)

end

end A169718.P10321828700303100686

/-! ## A169718.P2210402204548880353

`lcm(A001305(A002266(n)), A158388(n))`
-/

namespace A169718.P2210402204548880353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001305 (A002266 n).toNat) (A158388 n)

end

end A169718.P2210402204548880353

/-! ## A169718.P15922380969193210968

`or(A000007(n), A001305(A002266(n)))`
-/

namespace A169718.P15922380969193210968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A001305 (A002266 n).toNat)

end

end A169718.P15922380969193210968

/-! ## A169718.P7309525411891576288

`A165326(n)²*A001305(A002266(n))`
-/

namespace A169718.P7309525411891576288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A001305 (A002266 n).toNat

end

end A169718.P7309525411891576288

/-! ## A169718.P383584406308450348

`A001305(A002266(n))^A000041(C(2, n))`
-/

namespace A169718.P383584406308450348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A002266 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A169718.P383584406308450348

/-! ## A169718.P16043997587339951547

`A001305(A002266(n))^(A000040(n+1)%2)`
-/

namespace A169718.P16043997587339951547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A002266 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A169718.P16043997587339951547

/-! ## A169718.P8969267125965520184

`A001310(A008616(record[A115379(n)]))`
-/

namespace A169718.P8969267125965520184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001310 (A008616 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A169718.P8969267125965520184

/-! ## A169718.P13624764914040816584

`A001305(A002266(n))^A014963(∑[n+1])`
-/

namespace A169718.P13624764914040816584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A002266 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A169718.P13624764914040816584

/-! ## A169718.P6565229210210482011

`or(A000586(A196222(n)), A001300(n))`
-/

namespace A169718.P6565229210210482011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000586 (A196222 n).toNat) (A001300 n)

end

end A169718.P6565229210210482011

/-! ## A169718.P7235264088096864731

`A001300(n)+A245574(n)-A057536(n)`
-/

namespace A169718.P7235264088096864731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 n + (A245574 n - A057536 n)

end

end A169718.P7235264088096864731

/-!
# A169719: Theta series of extremal lattice of dimension 14, level 7 and minimal norm 6.

The programs for A169719, there is no canonical definition to state claims against.
-/

/-! ## A169719.P6732676176444493725

`A048881(A000058(n))*A050404(n)`
-/

namespace A169719.P6732676176444493725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A000058 n).toNat * A050404 n

end

end A169719.P6732676176444493725

/-!
# A169720: a(n) = (3*2^(n-1)-1)*(3*2^n-1).

The programs for A169720, the canonical program `A169720.P9866594527993193879` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169720 has offset 0).

The definition of A169720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*2^(n-1)-1)*(3*2^n-1)` (program `A169720.P3399523703717069654`, by `A169720.P3399523703717069654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169720.P3399523703717069654

`(3*2^(n-1)-1)*(3*2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169720.P3399523703717069654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * ((3 * 2 ^ n : ℤ) - 1 : ℚ)

end

end A169720.P3399523703717069654

namespace A169720

/-- `(3*2^(n-1)-1)*(3*2^n-1)` -/
def P3399523703717069654.Spec : Prop :=
  ∀ n, P3399523703717069654.a n = (A169720 n : ℚ)

theorem P3399523703717069654.correct : P3399523703717069654.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169720, Nat.add_sub_cancel, A169720.P3399523703717069654.a, A169720.P9866594527993193879.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169720, Nat.add_sub_cancel, A169720.P3399523703717069654.a, A169720.P9866594527993193879.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A169720

/-! ## A169720.P9866594527993193879

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=10, a(2)=55`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169720

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P9866594527993193879.Spec : Prop :=
  ∀ n, P9866594527993193879.a n = A169720 n

theorem P9866594527993193879.correct : P9866594527993193879.Spec := by
  intro n
  simp only [A169720]

end A169720

/-! ## A169720.P6902348388694305534

`(3*A169726(n)-1)/2`
-/

namespace A169720.P6902348388694305534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A169726 n - 1 : ℚ) / 2

end

end A169720.P6902348388694305534

namespace A169720

/-- `(3*A169726(n)-1)/2` -/
def P6902348388694305534.Spec : Prop :=
  ∀ n, P6902348388694305534.a n = (A169720 n : ℚ)

theorem P6902348388694305534.correct : P6902348388694305534.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169720, Nat.add_sub_cancel, A169720.P6902348388694305534.a, A169720.P9866594527993193879.a, A169726, A169726.P11086986432710171647.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169720, Nat.add_sub_cancel, A169720.P6902348388694305534.a, A169720.P9866594527993193879.a, A169726, A169726.P11086986432710171647.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A169720

/-! ## A169720.P17389060066883380411

`A000217(A033484(n))`
-/

namespace A169720.P17389060066883380411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033484 n).toNat

end

end A169720.P17389060066883380411

namespace A169720

/-- `A000217(A033484(n))` -/
def P17389060066883380411.Spec : Prop :=
  ∀ n, P17389060066883380411.a n = A169720 n

end A169720

/-! ## A169720.P14587874361314738617

`9*C(2^n, 2)+1`
-/

namespace A169720.P14587874361314738617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (2 ^ n) 2 + 1

end

end A169720.P14587874361314738617

namespace A169720

/-- `9*C(2^n, 2)+1` -/
def P14587874361314738617.Spec : Prop :=
  ∀ n, (P14587874361314738617.a n : ℤ) = A169720 n

end A169720

/-! ## A169720.P17834452656455706906

`∑[ogf((1+3x-x^2)/(1-6x+8x^2))]`
-/

namespace A169720.P17834452656455706906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169720.P17834452656455706906

namespace A169720

/-- `∑[ogf((1+3x-x^2)/(1-6x+8x^2))]` -/
def P17834452656455706906.Spec : Prop :=
  ∀ n, P17834452656455706906.a n = A169720 n

end A169720

/-! ## A169720.P16170670935771992659

`A171480(n)+A002450(n)`
-/

namespace A169720.P16170670935771992659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171480 n + A002450 n

end

end A169720.P16170670935771992659

namespace A169720

/-- `A171480(n)+A002450(n)` -/
def P16170670935771992659.Spec : Prop :=
  ∀ n, P16170670935771992659.a n = A169720 n

end A169720

/-! ## A169720.P11430754595434642081

`A171479(n)+A020522(n)`
-/

namespace A169720.P11430754595434642081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171479 n + A020522 n

end

end A169720.P11430754595434642081

namespace A169720

/-- `A171479(n)+A020522(n)` -/
def P11430754595434642081.Spec : Prop :=
  ∀ n, P11430754595434642081.a n = A169720 n

end A169720

/-! ## A169720.P15275680222774718774

`lcm(A052940(n), A083329(n))`
-/

namespace A169720.P15275680222774718774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052940 n) (A083329 n)

end

end A169720.P15275680222774718774

namespace A169720

/-- `lcm(A052940(n), A083329(n))` -/
def P15275680222774718774.Spec : Prop :=
  ∀ n, (P15275680222774718774.a n : ℤ) = A169720 n

end A169720

/-! ## A169720.P849176902181217770

`A060867(n+1)+A006516(n)`
-/

namespace A169720.P849176902181217770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (n + 1) + A006516 n

end

end A169720.P849176902181217770

namespace A169720

/-- `A060867(n+1)+A006516(n)` -/
def P849176902181217770.Spec : Prop :=
  ∀ n, P849176902181217770.a n = A169720 n

end A169720

/-! ## A169720.P5743439209822463321

`A211012(n+1)+A134169(n)`
-/

namespace A169720.P5743439209822463321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211012 (n + 1) + A134169 n

end

end A169720.P5743439209822463321

namespace A169720

/-- `A211012(n+1)+A134169(n)` -/
def P5743439209822463321.Spec : Prop :=
  ∀ n, P5743439209822463321.a n = A169720 n

end A169720

/-! ## A169720.P16074818464948625862

`A394960(n)+A170940(n+1)`
-/

namespace A169720.P16074818464948625862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394960 n + A170940 (n + 1)

end

end A169720.P16074818464948625862

namespace A169720

/-- `A394960(n)+A170940(n+1)` -/
def P16074818464948625862.Spec : Prop :=
  ∀ n, P16074818464948625862.a n = A169720 n

end A169720

/-! ## A169720.P4807356773431726810

`A384988(n+2)+A032263(n+1)`
-/

namespace A169720.P4807356773431726810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384988 (n + 2) + A032263 (n + 1)

end

end A169720.P4807356773431726810

namespace A169720

/-- `A384988(n+2)+A032263(n+1)` -/
def P4807356773431726810.Spec : Prop :=
  ∀ n, P4807356773431726810.a n = A169720 n

end A169720

/-! ## A169720.P17929372661467714247

`A060867(n+1)+A007179(2*n)`
-/

namespace A169720.P17929372661467714247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (n + 1) + A007179 (2 * n)

end

end A169720.P17929372661467714247

namespace A169720

/-- `A060867(n+1)+A007179(2*n)` -/
def P17929372661467714247.Spec : Prop :=
  ∀ n, P17929372661467714247.a n = A169720 n

end A169720

/-! ## A169720.P17953057713095854234

`A276918(2*n)+A007179(2*n)`
-/

namespace A169720.P17953057713095854234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276918 (2 * n) + A007179 (2 * n)

end

end A169720.P17953057713095854234

namespace A169720

/-- `A276918(2*n)+A007179(2*n)` -/
def P17953057713095854234.Spec : Prop :=
  ∀ n, P17953057713095854234.a n = A169720 n

end A169720

/-! ## A169720.P3442880167954818223

`A006095(n)+A171478(n)+A020522(n)`
-/

namespace A169720.P3442880167954818223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + (A171478 n + A020522 n)

end

end A169720.P3442880167954818223

namespace A169720

/-- `A006095(n)+A171478(n)+A020522(n)` -/
def P3442880167954818223.Spec : Prop :=
  ∀ n, P3442880167954818223.a n = A169720 n

end A169720

/-! ## A169720.P12951199527426085434

`A055010(n)+A033484(n)*A083329(n)`
-/

namespace A169720.P12951199527426085434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + A033484 n * A083329 n

end

end A169720.P12951199527426085434

namespace A169720

/-- `A055010(n)+A033484(n)*A083329(n)` -/
def P12951199527426085434.Spec : Prop :=
  ∀ n, P12951199527426085434.a n = A169720 n

end A169720

/-! ## A169720.P9351804728545058644

`A134057(n+1)+A171477(n)-A006095(n)`
-/

namespace A169720.P9351804728545058644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 (n + 1) + (A171477 n - A006095 n)

end

end A169720.P9351804728545058644

namespace A169720

/-- `A134057(n+1)+A171477(n)-A006095(n)` -/
def P9351804728545058644.Spec : Prop :=
  ∀ n, P9351804728545058644.a n = A169720 n

end A169720

/-! ## A169720.P6010450123999753058

`A134057(n+1)+A169726(n)-A134057(n)`
-/

namespace A169720.P6010450123999753058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 (n + 1) + (A169726 n - A134057 n)

end

end A169720.P6010450123999753058

namespace A169720

/-- `A134057(n+1)+A169726(n)-A134057(n)` -/
def P6010450123999753058.Spec : Prop :=
  ∀ n, P6010450123999753058.a n = A169720 n

end A169720

/-! ## A169720.P3314091272639524376

`A006516(n+1)+A134057(n+1)+A006516(n)`
-/

namespace A169720.P3314091272639524376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) + (A134057 (n + 1) + A006516 n)

end

end A169720.P3314091272639524376

namespace A169720

/-- `A006516(n+1)+A134057(n+1)+A006516(n)` -/
def P3314091272639524376.Spec : Prop :=
  ∀ n, P3314091272639524376.a n = A169720 n

end A169720

/-!
# A169721: a(n) = (2*(3*2^(n-1)-1))^2.

The programs for A169721, the canonical program `A169721.P244076272587699702` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169721 has offset 0).

The definition of A169721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(3*2^(n-1)-1))²` (program `A169721.P6265509623345198212`, by `A169721.P6265509623345198212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169721.P6265509623345198212

`(2*(3*2^(n-1)-1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169721.P6265509623345198212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)) ^ 2

end

end A169721.P6265509623345198212

namespace A169721

/-- `(2*(3*2^(n-1)-1))²` -/
def P6265509623345198212.Spec : Prop :=
  ∀ n, P6265509623345198212.a n = (A169721 n : ℚ)

theorem P6265509623345198212.correct : P6265509623345198212.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169721, Nat.add_sub_cancel, A169721.P6265509623345198212.a, A169721.P244076272587699702.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169721, Nat.add_sub_cancel, A169721.P6265509623345198212.a, A169721.P244076272587699702.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A169721

/-! ## A169721.P244076272587699702

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=16, a(2)=100`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169721

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P244076272587699702.Spec : Prop :=
  ∀ n, P244076272587699702.a n = A169721 n

theorem P244076272587699702.correct : P244076272587699702.Spec := by
  intro n
  simp only [A169721]

end A169721

/-! ## A169721.P17382856819938118333

`∑[ogf((1+9x+2x^2)/(1-6x+8x^2))]`
-/

namespace A169721.P17382856819938118333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 2] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169721.P17382856819938118333

namespace A169721

/-- `∑[ogf((1+9x+2x^2)/(1-6x+8x^2))]` -/
def P17382856819938118333.Spec : Prop :=
  ∀ n, P17382856819938118333.a n = A169721 n

end A169721

/-! ## A169721.P463034104823365410

`∑[2*a(n-1)]^2` with `a(0)=1, a(1)=3`
-/

namespace A169721.P463034104823365410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169721.P463034104823365410

namespace A169721

/-- `∑[2*a(n-1)]^2` -/
def P463034104823365410.Spec : Prop :=
  ∀ n, (P463034104823365410.a n : ℤ) = A169721 n

end A169721

/-! ## A169721.P13228490449962280109

`4*(sqrt(a(n-1))+1)²` with `a(0)=1`
-/

namespace A169721.P13228490449962280109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  4 * (Real.sqrt (a (n - 1)) + 1) ^ 2

end

end A169721.P13228490449962280109

namespace A169721

/-- `4*(sqrt(a(n-1))+1)²` -/
def P13228490449962280109.Spec : Prop :=
  ∀ n, P13228490449962280109.a n = (A169721 n : ℝ)

end A169721

/-! ## A169721.P7825238525980872431

`floor(∑[2*a(n-1)]²)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A169721.P7825238525980872431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169721.P7825238525980872431

namespace A169721

/-- `floor(∑[2*a(n-1)]²)` -/
def P7825238525980872431.Spec : Prop :=
  ∀ n, (P7825238525980872431.a n : ℤ) = A169721 n

end A169721

/-! ## A169721.P4563405943445358175

`ceil(∑[2*a(n-1)]²)` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A169721.P4563405943445358175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169721.P4563405943445358175

namespace A169721

/-- `ceil(∑[2*a(n-1)]²)` -/
def P4563405943445358175.Spec : Prop :=
  ∀ n, (P4563405943445358175.a n : ℤ) = A169721 n

end A169721

/-! ## A169721.P13822266694736310313

`round(∑[2*a(n-1)]²)` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A169721.P13822266694736310313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169721.P13822266694736310313

namespace A169721

/-- `round(∑[2*a(n-1)]²)` -/
def P13822266694736310313.Spec : Prop :=
  ∀ n, (P13822266694736310313.a n : ℤ) = A169721 n

end A169721

/-! ## A169721.P11141751318639354057

`floor(Δ[2*(a(n-1)-n)]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A169721.P11141751318639354057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A169721.P11141751318639354057

namespace A169721

/-- `floor(Δ[2*(a(n-1)-n)]²)` -/
def P11141751318639354057.Spec : Prop :=
  ∀ n, P11141751318639354057.a n = A169721 n

end A169721

/-! ## A169721.P13023173112857736933

`floor(∑[a(n-1)+floor(a(n-1))]²)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A169721.P13023173112857736933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169721.P13023173112857736933

namespace A169721

/-- `floor(∑[a(n-1)+floor(a(n-1))]²)` -/
def P13023173112857736933.Spec : Prop :=
  ∀ n, (P13023173112857736933.a n : ℤ) = A169721 n

end A169721

/-! ## A169721.P17350288800193565727

`(3*2^n-2)*abs(2-lcm(3, 2^n))`
-/

namespace A169721.P17350288800193565727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * 2 ^ n : ℤ) - 2) * |2 - (Nat.lcm 3 (2 ^ n) : ℤ)|

end

end A169721.P17350288800193565727

namespace A169721

/-- `(3*2^n-2)*abs(2-lcm(3, 2^n))` -/
def P17350288800193565727.Spec : Prop :=
  ∀ n, P17350288800193565727.a n = A169721 n

end A169721

/-! ## A169721.P1241560992015568408

`A027383(2*n)^2`
-/

namespace A169721.P1241560992015568408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n) ^ 2

end

end A169721.P1241560992015568408

namespace A169721

/-- `A027383(2*n)^2` -/
def P1241560992015568408.Spec : Prop :=
  ∀ n, P1241560992015568408.a n = A169721 n

end A169721

/-! ## A169721.P14489975718968798623

`record[(2-A072946(n))²]`
-/

namespace A169721.P14489975718968798623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A072946 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169721.P14489975718968798623

namespace A169721

/-- `record[(2-A072946(n))²]` -/
def P14489975718968798623.Spec : Prop :=
  ∀ n, P14489975718968798623.a n = A169721 n

end A169721

/-! ## A169721.P1094604766339286351

`record[(2-A074323(n))²]`
-/

namespace A169721.P1094604766339286351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A074323 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169721.P1094604766339286351

namespace A169721

/-- `record[(2-A074323(n))²]` -/
def P1094604766339286351.Spec : Prop :=
  ∀ n, P1094604766339286351.a n = A169721 n

end A169721

/-! ## A169721.P7713945038212616464

`A033484(n)*A033484(n)`
-/

namespace A169721.P7713945038212616464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n * A033484 n

end

end A169721.P7713945038212616464

namespace A169721

/-- `A033484(n)*A033484(n)` -/
def P7713945038212616464.Spec : Prop :=
  ∀ n, P7713945038212616464.a n = A169721 n

theorem P7713945038212616464.correct : P7713945038212616464.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169721, Nat.add_sub_cancel, A169721.P7713945038212616464.a, A169721.P244076272587699702.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169721, Nat.add_sub_cancel, A169721.P7713945038212616464.a, A169721.P244076272587699702.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A169721

/-! ## A169721.P16111802329140777980

`A127509(n+1)-A198693(n)`
-/

namespace A169721.P16111802329140777980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127509 (n + 1) - A198693 n

end

end A169721.P16111802329140777980

namespace A169721

/-- `A127509(n+1)-A198693(n)` -/
def P16111802329140777980.Spec : Prop :=
  ∀ n, P16111802329140777980.a n = A169721 n

theorem P16111802329140777980.correct : P16111802329140777980.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169721, Nat.add_sub_cancel, A169721.P16111802329140777980.a, A169721.P244076272587699702.a, A127509, A127509.P5672709053485805299.a, A198693, A198693.P12935129787090081838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169721, Nat.add_sub_cancel, A169721.P16111802329140777980.a, A169721.P244076272587699702.a, A127509, A127509.P5672709053485805299.a, A198693, A198693.P12935129787090081838.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169721

/-! ## A169721.P7953645596683637619

`A153893(n)²-A068156(n+1)`
-/

namespace A169721.P7953645596683637619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n ^ 2 - A068156 (n + 1)

end

end A169721.P7953645596683637619

namespace A169721

/-- `A153893(n)²-A068156(n+1)` -/
def P7953645596683637619.Spec : Prop :=
  ∀ n, P7953645596683637619.a n = A169721 n

end A169721

/-! ## A169721.P18152784381550264917

`A296953(n+1)*A296953(n+1)`
-/

namespace A169721.P18152784381550264917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 (n + 1) * A296953 (n + 1)

end

end A169721.P18152784381550264917

namespace A169721

/-- `A296953(n+1)*A296953(n+1)` -/
def P18152784381550264917.Spec : Prop :=
  ∀ n, P18152784381550264917.a n = A169721 n

end A169721

/-! ## A169721.P12402018098383954246

`A099942(2*n)*A099942(2*n)`
-/

namespace A169721.P12402018098383954246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099942 (2 * n) * A099942 (2 * n)

end

end A169721.P12402018098383954246

namespace A169721

/-- `A099942(2*n)*A099942(2*n)` -/
def P12402018098383954246.Spec : Prop :=
  ∀ n, P12402018098383954246.a n = A169721 n

end A169721

/-! ## A169721.P10084935221241450072

`A083416(2*n+1)*A083416(2*n+1)`
-/

namespace A169721.P10084935221241450072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083416 (2 * n + 1) * A083416 (2 * n + 1)

end

end A169721.P10084935221241450072

namespace A169721

/-- `A083416(2*n+1)*A083416(2*n+1)` -/
def P10084935221241450072.Spec : Prop :=
  ∀ n, P10084935221241450072.a n = A169721 n

end A169721

/-!
# A169722: a(n) = (3*2^(n-1)-1)*(18*2^(n-1)-7).

The programs for A169722, the canonical program `A169722.P10785272552316172832` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169722 has offset 0).

The definition of A169722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*2^(n-1)-1)*(18*2^(n-1)-7)` (program `A169722.P6413217427747693171`, by `A169722.P6413217427747693171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169722.P6413217427747693171

`(3*2^(n-1)-1)*(18*2^(n-1)-7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169722.P6413217427747693171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * (18 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 7)

end

end A169722.P6413217427747693171

namespace A169722

/-- `(3*2^(n-1)-1)*(18*2^(n-1)-7)` -/
def P6413217427747693171.Spec : Prop :=
  ∀ n, P6413217427747693171.a n = (A169722 n : ℚ)

theorem P6413217427747693171.correct : P6413217427747693171.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169722, Nat.add_sub_cancel, A169722.P6413217427747693171.a, A169722.P10785272552316172832.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169722, Nat.add_sub_cancel, A169722.P6413217427747693171.a, A169722.P10785272552316172832.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A169722

/-! ## A169722.P10785272552316172832

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=22, a(2)=145`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169722

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P10785272552316172832.Spec : Prop :=
  ∀ n, P10785272552316172832.a n = A169722 n

theorem P10785272552316172832.correct : P10785272552316172832.Spec := by
  intro n
  simp only [A169722]

end A169722

/-! ## A169722.P399030097816223525

`2*A169721(n)-A169720(n)`
-/

namespace A169722.P399030097816223525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169721 n - A169720 n

end

end A169722.P399030097816223525

namespace A169722

/-- `2*A169721(n)-A169720(n)` -/
def P399030097816223525.Spec : Prop :=
  ∀ n, P399030097816223525.a n = A169722 n

end A169722

/-! ## A169722.P4201943590642221388

`2*A033484(n)²-A169720(n)`
-/

namespace A169722.P4201943590642221388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033484 n ^ 2 - A169720 n

end

end A169722.P4201943590642221388

namespace A169722

/-- `2*A033484(n)²-A169720(n)` -/
def P4201943590642221388.Spec : Prop :=
  ∀ n, P4201943590642221388.a n = A169722 n

end A169722

/-! ## A169722.P9417394061044679391

`A169720(n)+A169721(n)-A033484(n)`
-/

namespace A169722.P9417394061044679391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169720 n + (A169721 n - A033484 n)

end

end A169722.P9417394061044679391

namespace A169722

/-- `A169720(n)+A169721(n)-A033484(n)` -/
def P9417394061044679391.Spec : Prop :=
  ∀ n, P9417394061044679391.a n = A169722 n

end A169722

/-! ## A169722.P8539871299065591957

`A169720(n)+A169727(n)-A169726(n)`
-/

namespace A169722.P8539871299065591957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169720 n + (A169727 n - A169726 n)

end

end A169722.P8539871299065591957

namespace A169722

/-- `A169720(n)+A169727(n)-A169726(n)` -/
def P8539871299065591957.Spec : Prop :=
  ∀ n, P8539871299065591957.a n = A169722 n

end A169722

/-! ## A169722.P11191768795010083967

`A033484(n)²+A055010(n)*A068156(n)`
-/

namespace A169722.P11191768795010083967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n ^ 2 + A055010 n * A068156 n

end

end A169722.P11191768795010083967

namespace A169722

/-- `A033484(n)²+A055010(n)*A068156(n)` -/
def P11191768795010083967.Spec : Prop :=
  ∀ n, P11191768795010083967.a n = A169722 n

end A169722

/-!
# A169723: a(n) = 3^(n-1)*(2*3^(n-1)+3)+1.

The programs for A169723, the canonical program `A169723.P8375067009441883603` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169723 has offset 1).

The definition of A169723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(2*3^n+3)+1` (program `A169723.P8375067009441883603`, by `A169723.P8375067009441883603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169723.P8375067009441883603

`3^n*(2*3^n+3)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169723

/-- `3^n*(2*3^n+3)+1` -/
def P8375067009441883603.Spec : Prop :=
  ∀ n, (P8375067009441883603.a n : ℤ) = A169723 (n + 1)

theorem P8375067009441883603.correct : P8375067009441883603.Spec := by
  intro n
  simp only [A169723, Nat.add_sub_cancel]

end A169723

/-! ## A169723.P15187816433545260742

`lcm(3^n+1, Δ[3^n]+1)`
-/

namespace A169723.P15187816433545260742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1)

end

end A169723.P15187816433545260742

namespace A169723

/-- `lcm(3^n+1, Δ[3^n]+1)` -/
def P15187816433545260742.Spec : Prop :=
  ∀ n, (P15187816433545260742.a n : ℤ) = A169723 (n + 1)

end A169723

/-! ## A169723.P18212247161497481833

`Δ[(A007051(n)+1)²+n]`
-/

namespace A169723.P18212247161497481833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169723.P18212247161497481833

namespace A169723

/-- `Δ[(A007051(n)+1)²+n]` -/
def P18212247161497481833.Spec : Prop :=
  ∀ n, P18212247161497481833.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P15744296743675459284

`Δ[A104743(n)]*A034472(n)`
-/

namespace A169723.P15744296743675459284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A034472 n

end

end A169723.P15744296743675459284

namespace A169723

/-- `Δ[A104743(n)]*A034472(n)` -/
def P15744296743675459284.Spec : Prop :=
  ∀ n, P15744296743675459284.a n = A169723 (n + 1)

theorem P15744296743675459284.correct : P15744296743675459284.Spec := by
  intro n
  simp only [A169723, Nat.add_sub_cancel, A169723.P15744296743675459284.f1, A169723.P15744296743675459284.a, A169723.P8375067009441883603.a, A034472, A034472.P6935477064191477456.a, A104743, A104743.P17964489936834295293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169723

/-! ## A169723.P5079161542089291212

`(A008776(n)+1)*A034472(n)`
-/

namespace A169723.P5079161542089291212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n + 1) * A034472 n

end

end A169723.P5079161542089291212

namespace A169723

/-- `(A008776(n)+1)*A034472(n)` -/
def P5079161542089291212.Spec : Prop :=
  ∀ n, P5079161542089291212.a n = A169723 (n + 1)

theorem P5079161542089291212.correct : P5079161542089291212.Spec := by
  intro n
  simp only [A169723, Nat.add_sub_cancel, A169723.P5079161542089291212.a, A169723.P8375067009441883603.a, A008776, A008776.P11088121667404015999.a, A034472, A034472.P6935477064191477456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169723

/-! ## A169723.P3924527913497722552

`A034472(n)*A052919(n+1)`
-/

namespace A169723.P3924527913497722552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n * A052919 (n + 1)

end

end A169723.P3924527913497722552

namespace A169723

/-- `A034472(n)*A052919(n+1)` -/
def P3924527913497722552.Spec : Prop :=
  ∀ n, P3924527913497722552.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P5279773326979334764

`(A048473(n)+2)*A034472(n)`
-/

namespace A169723.P5279773326979334764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048473 n + 2) * A034472 n

end

end A169723.P5279773326979334764

namespace A169723

/-- `(A048473(n)+2)*A034472(n)` -/
def P5279773326979334764.Spec : Prop :=
  ∀ n, P5279773326979334764.a n = A169723 (n + 1)

theorem P5279773326979334764.correct : P5279773326979334764.Spec := by
  intro n
  simp only [A169723, Nat.add_sub_cancel, A169723.P5279773326979334764.a, A169723.P8375067009441883603.a, A034472, A034472.P6935477064191477456.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169723

/-! ## A169723.P15243837081533861713

`2*(A067771(n)+A024101(n))`
-/

namespace A169723.P15243837081533861713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067771 n + A024101 n)

end

end A169723.P15243837081533861713

namespace A169723

/-- `2*(A067771(n)+A024101(n))` -/
def P15243837081533861713.Spec : Prop :=
  ∀ n, P15243837081533861713.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P17616401395486063087

`(A115099(n)-1)*A034472(n)`
-/

namespace A169723.P17616401395486063087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115099 n - 1) * A034472 n

end

end A169723.P17616401395486063087

namespace A169723

/-- `(A115099(n)-1)*A034472(n)` -/
def P17616401395486063087.Spec : Prop :=
  ∀ n, P17616401395486063087.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P4272392652548323208

`sqrt(A169724(n+1))*A034472(n)`
-/

namespace A169723.P4272392652548323208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A169724 (n + 1) : ℝ) * (A034472 n : ℝ)

end

end A169723.P4272392652548323208

namespace A169723

/-- `sqrt(A169724(n+1))*A034472(n)` -/
def P4272392652548323208.Spec : Prop :=
  ∀ n, P4272392652548323208.a n = (A169723 (n + 1) : ℝ)

end A169723

/-! ## A169723.P15682860880644670277

`2*(A034472(n)²-A007051(n))`
-/

namespace A169723.P15682860880644670277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034472 n ^ 2 - A007051 n)

end

end A169723.P15682860880644670277

namespace A169723

/-- `2*(A034472(n)²-A007051(n))` -/
def P15682860880644670277.Spec : Prop :=
  ∀ n, P15682860880644670277.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P13970644161843541117

`(A000244(n)+1)*A052919(n+1)`
-/

namespace A169723.P13970644161843541117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + 1) * A052919 (n + 1)

end

end A169723.P13970644161843541117

namespace A169723

/-- `(A000244(n)+1)*A052919(n+1)` -/
def P13970644161843541117.Spec : Prop :=
  ∀ n, P13970644161843541117.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P16445072510355643934

`A052919(n+1)*A094388(n+1)`
-/

namespace A169723.P16445072510355643934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 1) * A094388 (n + 1)

end

end A169723.P16445072510355643934

namespace A169723

/-- `A052919(n+1)*A094388(n+1)` -/
def P16445072510355643934.Spec : Prop :=
  ∀ n, P16445072510355643934.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P9108620643571122952

`2*A007051(n)*A052919(n+1)`
-/

namespace A169723.P9108620643571122952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007051 n * A052919 (n + 1)

end

end A169723.P9108620643571122952

namespace A169723

/-- `2*A007051(n)*A052919(n+1)` -/
def P9108620643571122952.Spec : Prop :=
  ∀ n, P9108620643571122952.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P1825039852147231344

`A034472(n)*A062547(2*n+1)`
-/

namespace A169723.P1825039852147231344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n * A062547 (2 * n + 1)

end

end A169723.P1825039852147231344

namespace A169723

/-- `A034472(n)*A062547(2*n+1)` -/
def P1825039852147231344.Spec : Prop :=
  ∀ n, P1825039852147231344.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P14035324122084569936

`(8*A003462(n)+6)*A007051(n)`
-/

namespace A169723.P14035324122084569936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A003462 n + 6) * A007051 n

end

end A169723.P14035324122084569936

namespace A169723

/-- `(8*A003462(n)+6)*A007051(n)` -/
def P14035324122084569936.Spec : Prop :=
  ∀ n, P14035324122084569936.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P12465150517402190404

`2*(A007051(n+1)+A000244(n)²)`
-/

namespace A169723.P12465150517402190404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 (n + 1) + A000244 n ^ 2)

end

end A169723.P12465150517402190404

namespace A169723

/-- `2*(A007051(n+1)+A000244(n)²)` -/
def P12465150517402190404.Spec : Prop :=
  ∀ n, P12465150517402190404.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P9480109301788307582

`2*A052919(n+1)*A124302(n+1)`
-/

namespace A169723.P9480109301788307582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052919 (n + 1) * A124302 (n + 1))

end

end A169723.P9480109301788307582

namespace A169723

/-- `2*A052919(n+1)*A124302(n+1)` -/
def P9480109301788307582.Spec : Prop :=
  ∀ n, P9480109301788307582.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P18181084818728490708

`2*(A007051(n+1)+A000244(2*n))`
-/

namespace A169723.P18181084818728490708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 (n + 1) + A000244 (2 * n))

end

end A169723.P18181084818728490708

namespace A169723

/-- `2*(A007051(n+1)+A000244(2*n))` -/
def P18181084818728490708.Spec : Prop :=
  ∀ n, P18181084818728490708.a n = A169723 (n + 1)

end A169723

/-! ## A169723.P17343790495246625564

`(A034472(n)+A000244(n))*A034472(n)`
-/

namespace A169723.P17343790495246625564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000244 n) * A034472 n

end

end A169723.P17343790495246625564

namespace A169723

/-- `(A034472(n)+A000244(n))*A034472(n)` -/
def P17343790495246625564.Spec : Prop :=
  ∀ n, P17343790495246625564.a n = A169723 (n + 1)

theorem P17343790495246625564.correct : P17343790495246625564.Spec := by
  intro n
  simp only [A169723, Nat.add_sub_cancel, A169723.P17343790495246625564.a, A169723.P8375067009441883603.a, A000244, A000244.P17162167222172810417.a, A034472, A034472.P6935477064191477456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169723

/-!
# A169724: a(n) = (2*3^(n-1)+1)^2.

The programs for A169724, the canonical program `A169724.P3810620558516851735` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169724 has offset 1).

The definition of A169724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*3^n+1)²` (program `A169724.P3810620558516851735`, by `A169724.P3810620558516851735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169724.P3810620558516851735

`(2*3^n+1)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169724

/-- `(2*3^n+1)²` -/
def P3810620558516851735.Spec : Prop :=
  ∀ n, (P3810620558516851735.a n : ℤ) = A169724 (n + 1)

theorem P3810620558516851735.correct : P3810620558516851735.Spec := by
  intro n
  simp only [A169724, Nat.add_sub_cancel]

end A169724

/-! ## A169724.P10753522776593237254

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=9, a(1)=49, a(2)=361`
-/

namespace A169724.P10753522776593237254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 49, 361] fun n a =>
  13 * a (n - 1) - 39 * a (n - 2) + 27 * a (n - 3)

end

end A169724.P10753522776593237254

namespace A169724

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P10753522776593237254.Spec : Prop :=
  ∀ n, P10753522776593237254.a n = A169724 (n + 1)

theorem P10753522776593237254.correct : P10753522776593237254.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A169724, Nat.add_sub_cancel, A169724.P10753522776593237254.a, A169724.P3810620558516851735.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A169724, Nat.add_sub_cancel, A169724.P10753522776593237254.a, A169724.P3810620558516851735.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A169724

/-! ## A169724.P1719259276843383184

`(lcm(2, 3^n)+1)^2`
-/

namespace A169724.P1719259276843383184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 ^ n) + 1) ^ 2

end

end A169724.P1719259276843383184

namespace A169724

/-- `(lcm(2, 3^n)+1)^2` -/
def P1719259276843383184.Spec : Prop :=
  ∀ n, (P1719259276843383184.a n : ℤ) = A169724 (n + 1)

end A169724

/-! ## A169724.P11016825145992462324

`(2*or(1, 3^n)+1)^2`
-/

namespace A169724.P11016825145992462324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 (3 ^ n) + 1) ^ 2

end

end A169724.P11016825145992462324

namespace A169724

/-- `(2*or(1, 3^n)+1)^2` -/
def P11016825145992462324.Spec : Prop :=
  ∀ n, (P11016825145992462324.a n : ℤ) = A169724 (n + 1)

end A169724

/-! ## A169724.P7579532544024139984

`∑[3*a(n-1)]^2` with `a(0)=3, a(1)=4`
-/

namespace A169724.P7579532544024139984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169724.P7579532544024139984

namespace A169724

/-- `∑[3*a(n-1)]^2` -/
def P7579532544024139984.Spec : Prop :=
  ∀ n, (P7579532544024139984.a n : ℤ) = A169724 (n + 1)

end A169724

/-! ## A169724.P3085866667507551523

`floor(∑[3*a(n-1)]²)` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A169724.P3085866667507551523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A169724.P3085866667507551523

namespace A169724

/-- `floor(∑[3*a(n-1)]²)` -/
def P3085866667507551523.Spec : Prop :=
  ∀ n, (P3085866667507551523.a n : ℤ) = A169724 (n + 1)

end A169724

/-! ## A169724.P7081498842174911559

`(3^n/tan(acot(2))+1)^2`
-/

namespace A169724.P7081498842174911559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)) + 1) ^ 2

end

end A169724.P7081498842174911559

namespace A169724

/-- `(3^n/tan(acot(2))+1)^2` -/
def P7081498842174911559.Spec : Prop :=
  ∀ n, P7081498842174911559.a n = (A169724 (n + 1) : ℝ)

end A169724

/-! ## A169724.P13122696168989854673

`(xor(1, 2*3^n+1)+1)^2`
-/

namespace A169724.P13122696168989854673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * 3 ^ n + 1) + 1) ^ 2

end

end A169724.P13122696168989854673

namespace A169724

/-- `(xor(1, 2*3^n+1)+1)^2` -/
def P13122696168989854673.Spec : Prop :=
  ∀ n, (P13122696168989854673.a n : ℤ) = A169724 (n + 1)

end A169724

/-! ## A169724.P5220772296332313900

`4*A074610(n)+1`
-/

namespace A169724.P5220772296332313900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A074610 n + 1

end

end A169724.P5220772296332313900

namespace A169724

/-- `4*A074610(n)+1` -/
def P5220772296332313900.Spec : Prop :=
  ∀ n, P5220772296332313900.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P15079991823112986206

`4*A034513(n)-3`
-/

namespace A169724.P15079991823112986206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A034513 n - 3

end

end A169724.P15079991823112986206

namespace A169724

/-- `4*A034513(n)-3` -/
def P15079991823112986206.Spec : Prop :=
  ∀ n, P15079991823112986206.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P8885748057739761275

`(A008776(n)+1)^2`
-/

namespace A169724.P8885748057739761275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n + 1) ^ 2

end

end A169724.P8885748057739761275

namespace A169724

/-- `(A008776(n)+1)^2` -/
def P8885748057739761275.Spec : Prop :=
  ∀ n, P8885748057739761275.a n = A169724 (n + 1)

theorem P8885748057739761275.correct : P8885748057739761275.Spec := by
  intro n
  simp only [A169724, Nat.add_sub_cancel, A169724.P8885748057739761275.a, A169724.P3810620558516851735.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169724

/-! ## A169724.P1314126478615265092

`4*A155607(n)+5`
-/

namespace A169724.P1314126478615265092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A155607 n + 5

end

end A169724.P1314126478615265092

namespace A169724

/-- `4*A155607(n)+5` -/
def P1314126478615265092.Spec : Prop :=
  ∀ n, P1314126478615265092.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P3974173200684505046

`A062547(2*n+1)^2`
-/

namespace A169724.P3974173200684505046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (2 * n + 1) ^ 2

end

end A169724.P3974173200684505046

namespace A169724

/-- `A062547(2*n+1)^2` -/
def P3974173200684505046.Spec : Prop :=
  ∀ n, P3974173200684505046.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P2919953735692442748

`record[(2*A254006(n)+1)²]`
-/

namespace A169724.P2919953735692442748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A254006 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169724.P2919953735692442748

namespace A169724

/-- `record[(2*A254006(n)+1)²]` -/
def P2919953735692442748.Spec : Prop :=
  ∀ n, P2919953735692442748.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P12162977978180076591

`4*(A001019(n)+3^n)+1`
-/

namespace A169724.P12162977978180076591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001019 n + (3 ^ n : ℤ)) + 1

end

end A169724.P12162977978180076591

namespace A169724

/-- `4*(A001019(n)+3^n)+1` -/
def P12162977978180076591.Spec : Prop :=
  ∀ n, P12162977978180076591.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P8054370643239422918

`(2*∏{d}[n, 3^A000010(#)]+1)^2`
-/

namespace A169724.P8054370643239422918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (∏ d ∈ Nat.divisors (f1 n), (3 : ℚ) ^ (A000010 d : ℤ)) + 1) ^ 2

end

end A169724.P8054370643239422918

namespace A169724

/-- `(2*∏{d}[n, 3^A000010(#)]+1)^2` -/
def P8054370643239422918.Spec : Prop :=
  ∀ n, P8054370643239422918.a n = (A169724 (n + 1) : ℚ)

end A169724

/-! ## A169724.P10055027835373826197

`A052919(n+1)*A052919(n+1)`
-/

namespace A169724.P10055027835373826197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 1) * A052919 (n + 1)

end

end A169724.P10055027835373826197

namespace A169724

/-- `A052919(n+1)*A052919(n+1)` -/
def P10055027835373826197.Spec : Prop :=
  ∀ n, P10055027835373826197.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P6502347910183549070

`A100702(n+1)*A100702(n+1)`
-/

namespace A169724.P6502347910183549070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 (n + 1) * A100702 (n + 1)

end

end A169724.P6502347910183549070

namespace A169724

/-- `A100702(n+1)*A100702(n+1)` -/
def P6502347910183549070.Spec : Prop :=
  ∀ n, P6502347910183549070.a n = A169724 (n + 1)

end A169724

/-! ## A169724.P5140441497750168158

`4*(A000244(n)+A000244(n)²)+1`
-/

namespace A169724.P5140441497750168158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000244 n + A000244 n ^ 2) + 1

end

end A169724.P5140441497750168158

namespace A169724

/-- `4*(A000244(n)+A000244(n)²)+1` -/
def P5140441497750168158.Spec : Prop :=
  ∀ n, P5140441497750168158.a n = A169724 (n + 1)

theorem P5140441497750168158.correct : P5140441497750168158.Spec := by
  intro n
  simp only [A169724, Nat.add_sub_cancel, A169724.P5140441497750168158.a, A169724.P3810620558516851735.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169724

/-! ## A169724.P12391036442256862729

`4*(A000244(2*n)+A000244(n))+1`
-/

namespace A169724.P12391036442256862729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000244 (2 * n) + A000244 n) + 1

end

end A169724.P12391036442256862729

namespace A169724

/-- `4*(A000244(2*n)+A000244(n))+1` -/
def P12391036442256862729.Spec : Prop :=
  ∀ n, P12391036442256862729.a n = A169724 (n + 1)

theorem P12391036442256862729.correct : P12391036442256862729.Spec := by
  intro n
  simp only [A169724, Nat.add_sub_cancel, A169724.P12391036442256862729.a, A169724.P3810620558516851735.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169724

/-!
# A169725: a(n) = 3^(n-1)*(6*3^(n-1) + 5) + 1.

The programs for A169725, the canonical program `A169725.P11583971263640551351` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169725 has offset 1).

The definition of A169725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(6*3^n+5)+1` (program `A169725.P11583971263640551351`, by `A169725.P11583971263640551351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169725.P11583971263640551351

`3^n*(6*3^n+5)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169725

/-- `3^n*(6*3^n+5)+1` -/
def P11583971263640551351.Spec : Prop :=
  ∀ n, (P11583971263640551351.a n : ℤ) = A169725 (n + 1)

theorem P11583971263640551351.correct : P11583971263640551351.Spec := by
  intro n
  simp only [A169725, Nat.add_sub_cancel]

end A169725

/-! ## A169725.P4142616772570381264

`Δ[2*A178778(2*n)]`
-/

namespace A169725.P4142616772570381264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178778 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169725.P4142616772570381264

namespace A169725

/-- `Δ[2*A178778(2*n)]` -/
def P4142616772570381264.Spec : Prop :=
  ∀ n, P4142616772570381264.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P18111274053714882352

`Δ[A104743(n)]*A034472(n+1)`
-/

namespace A169725.P18111274053714882352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A034472 (n + 1)

end

end A169725.P18111274053714882352

namespace A169725

/-- `Δ[A104743(n)]*A034472(n+1)` -/
def P18111274053714882352.Spec : Prop :=
  ∀ n, P18111274053714882352.a n = A169725 (n + 1)

theorem P18111274053714882352.correct : P18111274053714882352.Spec := by
  intro n
  simp only [A169725, Nat.add_sub_cancel, A169725.P18111274053714882352.f1, A169725.P18111274053714882352.a, A169725.P11583971263640551351.a, A034472, A034472.P6935477064191477456.a, A104743, A104743.P17964489936834295293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169725

/-! ## A169725.P4170042289578782900

`ratio[A067771(n)]*A169723(n+1)`
-/

namespace A169725.P4170042289578782900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A169723 (n + 1) : ℚ)

end

end A169725.P4170042289578782900

namespace A169725

/-- `ratio[A067771(n)]*A169723(n+1)` -/
def P4170042289578782900.Spec : Prop :=
  ∀ n, P4170042289578782900.a n = (A169725 (n + 1) : ℚ)

end A169725

/-! ## A169725.P17470925359500800806

`ratio[A115099(n)]*A169723(n+1)`
-/

namespace A169725.P17470925359500800806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115099 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A169723 (n + 1) : ℚ)

end

end A169725.P17470925359500800806

namespace A169725

/-- `ratio[A115099(n)]*A169723(n+1)` -/
def P17470925359500800806.Spec : Prop :=
  ∀ n, P17470925359500800806.a n = (A169725 (n + 1) : ℚ)

end A169725

/-! ## A169725.P2116413834813148054

`A034472(n+1)*A052919(n+1)`
-/

namespace A169725.P2116413834813148054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 1) * A052919 (n + 1)

end

end A169725.P2116413834813148054

namespace A169725

/-- `A034472(n+1)*A052919(n+1)` -/
def P2116413834813148054.Spec : Prop :=
  ∀ n, P2116413834813148054.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P1644614496732855552

`(A008776(n)+1)*A094388(n+2)`
-/

namespace A169725.P1644614496732855552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n + 1) * A094388 (n + 2)

end

end A169725.P1644614496732855552

namespace A169725

/-- `(A008776(n)+1)*A094388(n+2)` -/
def P1644614496732855552.Spec : Prop :=
  ∀ n, P1644614496732855552.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P6637938052966247969

`A052919(n+1)*A094388(n+2)`
-/

namespace A169725.P6637938052966247969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 1) * A094388 (n + 2)

end

end A169725.P6637938052966247969

namespace A169725

/-- `A052919(n+1)*A094388(n+2)` -/
def P6637938052966247969.Spec : Prop :=
  ∀ n, P6637938052966247969.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P479875570065147967

`(A000244(n+1)+1)*A052919(n+1)`
-/

namespace A169725.P479875570065147967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) + 1) * A052919 (n + 1)

end

end A169725.P479875570065147967

namespace A169725

/-- `(A000244(n+1)+1)*A052919(n+1)` -/
def P479875570065147967.Spec : Prop :=
  ∀ n, P479875570065147967.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P18228664254308816550

`(A025192(n+1)+1)*A034472(n+1)`
-/

namespace A169725.P18228664254308816550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025192 (n + 1) + 1) * A034472 (n + 1)

end

end A169725.P18228664254308816550

namespace A169725

/-- `(A025192(n+1)+1)*A034472(n+1)` -/
def P18228664254308816550.Spec : Prop :=
  ∀ n, P18228664254308816550.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P6427585168303747000

`(A000244(n+1)+1)*A100702(n+1)`
-/

namespace A169725.P6427585168303747000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) + 1) * A100702 (n + 1)

end

end A169725.P6427585168303747000

namespace A169725

/-- `(A000244(n+1)+1)*A100702(n+1)` -/
def P6427585168303747000.Spec : Prop :=
  ∀ n, P6427585168303747000.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P11479245972506674936

`(A003946(n+1)+2)*A007051(n+1)`
-/

namespace A169725.P11479245972506674936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003946 (n + 1) + 2) * A007051 (n + 1)

end

end A169725.P11479245972506674936

namespace A169725

/-- `(A003946(n+1)+2)*A007051(n+1)` -/
def P11479245972506674936.Spec : Prop :=
  ∀ n, P11479245972506674936.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P9631940398333307456

`2*A007051(n+1)*A052919(n+1)`
-/

namespace A169725.P9631940398333307456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 (n + 1) * A052919 (n + 1))

end

end A169725.P9631940398333307456

namespace A169725

/-- `2*A007051(n+1)*A052919(n+1)` -/
def P9631940398333307456.Spec : Prop :=
  ∀ n, P9631940398333307456.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P13992379444491252535

`A034472(n+1)*A062547(2*n+1)`
-/

namespace A169725.P13992379444491252535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 1) * A062547 (2 * n + 1)

end

end A169725.P13992379444491252535

namespace A169725

/-- `A034472(n+1)*A062547(2*n+1)` -/
def P13992379444491252535.Spec : Prop :=
  ∀ n, P13992379444491252535.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P1240008166881026506

`2*A007051(n+1)*A100702(n+1)`
-/

namespace A169725.P1240008166881026506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 (n + 1) * A100702 (n + 1))

end

end A169725.P1240008166881026506

namespace A169725

/-- `2*A007051(n+1)*A100702(n+1)` -/
def P1240008166881026506.Spec : Prop :=
  ∀ n, P1240008166881026506.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P12017267272558619605

`(A060647(2*n)+2)*A034472(n+1)`
-/

namespace A169725.P12017267272558619605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060647 (2 * n) + 2) * A034472 (n + 1)

end

end A169725.P12017267272558619605

namespace A169725

/-- `(A060647(2*n)+2)*A034472(n+1)` -/
def P12017267272558619605.Spec : Prop :=
  ∀ n, P12017267272558619605.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P107142848789667382

`(8*A007051(n)-2)*A007051(n+1)`
-/

namespace A169725.P107142848789667382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A007051 n - 2) * A007051 (n + 1)

end

end A169725.P107142848789667382

namespace A169725

/-- `(8*A007051(n)-2)*A007051(n+1)` -/
def P107142848789667382.Spec : Prop :=
  ∀ n, P107142848789667382.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P13880938598058143909

`(8*A003462(n)+6)*A007051(n+1)`
-/

namespace A169725.P13880938598058143909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A003462 n + 6) * A007051 (n + 1)

end

end A169725.P13880938598058143909

namespace A169725

/-- `(8*A003462(n)+6)*A007051(n+1)` -/
def P13880938598058143909.Spec : Prop :=
  ∀ n, P13880938598058143909.a n = A169725 (n + 1)

end A169725

/-! ## A169725.P12270204282744823263

`(A034472(n)+A000244(n))*A034472(n+1)`
-/

namespace A169725.P12270204282744823263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000244 n) * A034472 (n + 1)

end

end A169725.P12270204282744823263

namespace A169725

/-- `(A034472(n)+A000244(n))*A034472(n+1)` -/
def P12270204282744823263.Spec : Prop :=
  ∀ n, P12270204282744823263.a n = A169725 (n + 1)

theorem P12270204282744823263.correct : P12270204282744823263.Spec := by
  intro n
  simp only [A169725, Nat.add_sub_cancel, A169725.P12270204282744823263.a, A169725.P11583971263640551351.a, A000244, A000244.P17162167222172810417.a, A034472, A034472.P6935477064191477456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169725

/-! ## A169725.P16248821775174829861

`(A168607(n)+A024023(n))*A034472(n+1)`
-/

namespace A169725.P16248821775174829861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168607 n + A024023 n) * A034472 (n + 1)

end

end A169725.P16248821775174829861

namespace A169725

/-- `(A168607(n)+A024023(n))*A034472(n+1)` -/
def P16248821775174829861.Spec : Prop :=
  ∀ n, P16248821775174829861.a n = A169725 (n + 1)

theorem P16248821775174829861.correct : P16248821775174829861.Spec := by
  intro n
  simp only [A169725, Nat.add_sub_cancel, A169725.P16248821775174829861.a, A169725.P11583971263640551351.a, A024023, A024023.P3457506902639293536.a, A034472, A034472.P6935477064191477456.a, A168607, A168607.P9034026260611557504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169725

/-!
# A169726: a(n) = 3*2^n*(2^n-1) + 1.

The programs for A169726, the canonical program `A169726.P11086986432710171647` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169726 has offset 0).

The definition of A169726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n*(2^n-1)+1` (program `A169726.P11086986432710171647`, by `A169726.P11086986432710171647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169726.P11086986432710171647

`3*2^n*(2^n-1)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169726

/-- `3*2^n*(2^n-1)+1` -/
def P11086986432710171647.Spec : Prop :=
  ∀ n, P11086986432710171647.a n = A169726 n

theorem P11086986432710171647.correct : P11086986432710171647.Spec := by
  intro n
  simp only [A169726]

end A169726

/-! ## A169726.P406950710833806861

`(2*A169720(n)+1)/3`
-/

namespace A169726.P406950710833806861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A169720 n + 1 : ℚ) / 3

end

end A169726.P406950710833806861

namespace A169726

/-- `(2*A169720(n)+1)/3` -/
def P406950710833806861.Spec : Prop :=
  ∀ n, P406950710833806861.a n = (A169726 n : ℚ)

end A169726

/-! ## A169726.P11638128788320406696

`∑[ogf((1+2x^2)/(1-6x+8x^2))]`
-/

namespace A169726.P11638128788320406696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169726.P11638128788320406696

namespace A169726

/-- `∑[ogf((1+2x^2)/(1-6x+8x^2))]` -/
def P11638128788320406696.Spec : Prop :=
  ∀ n, P11638128788320406696.a n = A169726 n

end A169726

/-! ## A169726.P16415599361319897134

`xor(1, (2^n-1)*3*2^n)`
-/

namespace A169726.P16415599361319897134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((2 ^ n : ℤ) - 1) * (3 * 2 ^ n : ℤ))

end

end A169726.P16415599361319897134

namespace A169726

/-- `xor(1, (2^n-1)*3*2^n)` -/
def P16415599361319897134.Spec : Prop :=
  ∀ n, P16415599361319897134.a n = A169726 n

end A169726

/-! ## A169726.P7865743789544908563

`A395108(2*n)`
-/

namespace A169726.P7865743789544908563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395108 (2 * n)

end

end A169726.P7865743789544908563

namespace A169726

/-- `A395108(2*n)` -/
def P7865743789544908563.Spec : Prop :=
  ∀ n, P7865743789544908563.a n = A169726 n

end A169726

/-! ## A169726.P17615588456070762391

`A395109(2*n)`
-/

namespace A169726.P17615588456070762391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395109 (2 * n)

end

end A169726.P17615588456070762391

namespace A169726

/-- `A395109(2*n)` -/
def P17615588456070762391.Spec : Prop :=
  ∀ n, P17615588456070762391.a n = A169726 n

end A169726

/-! ## A169726.P17750381760853154798

`(A020527(n)+1)/2`
-/

namespace A169726.P17750381760853154798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020527 n + 1 : ℚ) / 2

end

end A169726.P17750381760853154798

namespace A169726

/-- `(A020527(n)+1)/2` -/
def P17750381760853154798.Spec : Prop :=
  ∀ n, P17750381760853154798.a n = (A169726 n : ℚ)

end A169726

/-! ## A169726.P13570106607816462670

`(A127509(n+1)+1)/4`
-/

namespace A169726.P13570106607816462670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127509 (n + 1) + 1 : ℚ) / 4

end

end A169726.P13570106607816462670

namespace A169726

/-- `(A127509(n+1)+1)/4` -/
def P13570106607816462670.Spec : Prop :=
  ∀ n, P13570106607816462670.a n = (A169726 n : ℚ)

theorem P13570106607816462670.correct : P13570106607816462670.Spec := by
  intro n
  simp only [A169726, Nat.add_sub_cancel, A169726.P13570106607816462670.a, A169726.P11086986432710171647.a, A127509, A127509.P5672709053485805299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A169726

/-! ## A169726.P3255299661064741801

`A103897(n+1)%A198693(n)`
-/

namespace A169726.P3255299661064741801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103897 (n + 1)) (A198693 n)

end

end A169726.P3255299661064741801

namespace A169726

/-- `A103897(n+1)%A198693(n)` -/
def P3255299661064741801.Spec : Prop :=
  ∀ n, P3255299661064741801.a n = A169726 n

end A169726

/-! ## A169726.P16415881424190586331

`A086221(n+1)%A330246(n)`
-/

namespace A169726.P16415881424190586331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086221 (n + 1)) (A330246 n)

end

end A169726.P16415881424190586331

namespace A169726

/-- `A086221(n+1)%A330246(n)` -/
def P16415881424190586331.Spec : Prop :=
  ∀ n, P16415881424190586331.a n = A169726 n

end A169726

/-!
# A169727: a(n) = 3*(2^(n+1)-2)*(2^(n+1)-1) + 1.

The programs for A169727, the canonical program `A169727.P10032530400493676055` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169727 has offset 0).

The definition of A169727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(2^(n+1)-2)*(2^(n+1)-1)+1` (program `A169727.P10032530400493676055`, by `A169727.P10032530400493676055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169727.P10032530400493676055

`3*(2^(n+1)-2)*(2^(n+1)-1)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169727

/-- `3*(2^(n+1)-2)*(2^(n+1)-1)+1` -/
def P10032530400493676055.Spec : Prop :=
  ∀ n, P10032530400493676055.a n = A169727 n

theorem P10032530400493676055.correct : P10032530400493676055.Spec := by
  intro n
  simp only [A169727]

end A169727

/-! ## A169727.P12356664470604406075

`∑[Δ[A154251(n)]*A095121(n)]`
-/

namespace A169727.P12356664470604406075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A095121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169727.P12356664470604406075

namespace A169727

/-- `∑[Δ[A154251(n)]*A095121(n)]` -/
def P12356664470604406075.Spec : Prop :=
  ∀ n, P12356664470604406075.a n = A169727 n

end A169727

/-! ## A169727.P2388141512959350532

`∑[A003945(n)*A068293(n+1)]`
-/

namespace A169727.P2388141512959350532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A068293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169727.P2388141512959350532

namespace A169727

/-- `∑[A003945(n)*A068293(n+1)]` -/
def P2388141512959350532.Spec : Prop :=
  ∀ n, P2388141512959350532.a n = A169727 n

end A169727

/-! ## A169727.P6282422864176092786

`∑[A003945(n)*A061776(2*n)]`
-/

namespace A169727.P6282422864176092786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A061776 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169727.P6282422864176092786

namespace A169727

/-- `∑[A003945(n)*A061776(2*n)]` -/
def P6282422864176092786.Spec : Prop :=
  ∀ n, P6282422864176092786.a n = A169727 n

end A169727

/-! ## A169727.P6282881520353493049

`xor(1, 6*A000225(n+1)*A000225(n))`
-/

namespace A169727.P6282881520353493049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * (A000225 (n + 1) * A000225 n))

end

end A169727.P6282881520353493049

namespace A169727

/-- `xor(1, 6*A000225(n+1)*A000225(n))` -/
def P6282881520353493049.Spec : Prop :=
  ∀ n, P6282881520353493049.a n = A169727 n

end A169727

/-!
# A169731: Numbers that are the same upside down (using only digits 0, 1, 6 and 9).

The programs for A169731, there is no canonical definition to state claims against.
-/

/-! ## A169731.P5394789033329846657

`∩[A000787(n+1), A039133(n+1)]`
-/

namespace A169731.P5394789033329846657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169731.P5394789033329846657

/-! ## A169731.P17911231810856529478

`∩[A000787(n+1), A039139(n+1)]`
-/

namespace A169731.P17911231810856529478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169731.P17911231810856529478

/-! ## A169731.P7980448988540982599

`∩[A000787(n+1), A039144(n+1)]`
-/

namespace A169731.P7980448988540982599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169731.P7980448988540982599

/-! ## A169731.P15560667775216659006

`∩[A000787(n+1), A039148(n+1)]`
-/

namespace A169731.P15560667775216659006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169731.P15560667775216659006

/-! ## A169731.P17942936507804363040

`∩[A000787(n+1), A039153(n+1)]`
-/

namespace A169731.P17942936507804363040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A169731.P17942936507804363040

/-!
# A169733: First differences of A169732, negated.

The programs for A169733, there is no canonical definition to state claims against.
-/

/-! ## A169733.P3769617582159788492

`∑{digits}[A169732(n+1), #]`
-/

namespace A169733.P3769617582159788492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A169733.P3769617582159788492

/-! ## A169733.P4024752933622159966

`A007953(A169732(n+1))`
-/

namespace A169733.P4024752933622159966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A169732 (n + 1)).toNat

end

end A169733.P4024752933622159966

/-! ## A169733.P9239853139286177411

`A004092(5*A169732(n+1))`
-/

namespace A169733.P9239853139286177411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A169732 (n + 1)).toNat

end

end A169733.P9239853139286177411

/-! ## A169733.P16353018883512167511

`abs(Δ[A169732(-xor(n, -1))])`
-/

namespace A169733.P16353018883512167511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169732 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A169733.P16353018883512167511

/-! ## A169733.P9072029474939811547

`abs(Δ[A169732(A000027(n+1))])`
-/

namespace A169733.P9072029474939811547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169732 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A169733.P9072029474939811547

/-! ## A169733.P15366699404752630460

`∑{d}[Δ[A169732(n+1)], A000010(#)]`
-/

namespace A169733.P15366699404752630460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A169733.P15366699404752630460

/-! ## A169733.P3000539430853826979

`A169732(n+1)-A169732(n+2)`
-/

namespace A169733.P3000539430853826979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169732 (n + 1) - A169732 (n + 2)

end

end A169733.P3000539430853826979

/-!
# A169734: a(1) = 1000; for n>1, a(n) = a(n-1) + digitsum(a(n-1)).

The programs for A169734, the canonical program `A169734.P17344525313310178766` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169734 has offset 1).

The definition of A169734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169734.P17344525313310178766

`A160931(a(n-1)-1)+1` with `a(0)=1000`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A169734

/-- `A160931(a(n-1)-1)+1` -/
def P17344525313310178766.Spec : Prop :=
  ∀ n, P17344525313310178766.a n = A169734 (n + 1)

theorem P17344525313310178766.correct : P17344525313310178766.Spec := by
  intro n
  simp only [A169734, Nat.add_sub_cancel]

end A169734

/-! ## A169734.P17239995481838927914

`A062028(a(n-1))` with `a(0)=1000`
-/

namespace A169734.P17239995481838927914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1000] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A169734.P17239995481838927914

namespace A169734

/-- `A062028(a(n-1))` -/
def P17239995481838927914.Spec : Prop :=
  ∀ n, P17239995481838927914.a n = A169734 (n + 1)

end A169734

/-!
# A169736: First differences of A169735.

The programs for A169736, there is no canonical definition to state claims against.
-/

/-! ## A169736.P4348614932149766899

`dr(a(n-1)*A196368(n))` with `a(0)=1, a(1)=18`
-/

namespace A169736.P4348614932149766899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  SequenceMachineLib.digitalRoot ((a (n - 1) : ℤ) * A196368 n)

end

end A169736.P4348614932149766899

/-!
# A169737: a(1) = 100; for n>1, a(n) = a(n-1) + digitsum(a(n-1)).

The programs for A169737, there is no canonical definition to state claims against.
-/

/-! ## A169737.P13586868132243027944

`record[A219675(n)+A169735(n+1)]`
-/

namespace A169737.P13586868132243027944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 n + A169735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169737.P13586868132243027944

/-! ## A169737.P9775519540486709424

`record[A169735(n+2)+A004207(n+1)]`
-/

namespace A169737.P9775519540486709424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169735 (n + 2) + A004207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169737.P9775519540486709424

/-! ## A169737.P8410033214027356159

`record[A169735(3*n+2)+∑[A065075(n+1)]]`
-/

namespace A169737.P8410033214027356159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169735 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169737.P8410033214027356159

/-!
# A169738: Base 10 numbers d_1 d_2 ... d_k such that the digits d_i are distinct and not zero, and Sum_{i=1..k-1} d_i^i = d_k^k.

The programs for A169738, there is no canonical definition to state claims against.
-/

/-! ## A169738.P2518438968915314486

`A177772(∑[floor(n/2)!])`
-/

namespace A169738.P2518438968915314486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A169738.P2518438968915314486

/-! ## A169738.P5525142818134886316

`A177772(∑[A300951(n)])`
-/

namespace A169738.P5525142818134886316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177772 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169738.P5525142818134886316

/-! ## A169738.P13149110009654162178

`A177772(∑[∏[A177812(n)]])`
-/

namespace A169738.P13149110009654162178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177812 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177772 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169738.P13149110009654162178

/-!
# A169739: a(n) = A030068(4n+1).

The programs for A169739, there is no canonical definition to state claims against.
-/

/-! ## A169739.P133961086874426300

`A030067(4*n+1)`
-/

namespace A169739.P133961086874426300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (4 * n + 1)

end

end A169739.P133961086874426300

/-! ## A169739.P8289299989483966672

`∑[A030068(n+1)]`
-/

namespace A169739.P8289299989483966672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169739.P8289299989483966672

/-! ## A169739.P16614531938039718352

`A169740(n)-A030068(n+1)`
-/

namespace A169739.P16614531938039718352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169740 n - A030068 (n + 1)

end

end A169739.P16614531938039718352

/-! ## A169739.P7207889192986844762

`A030068(Δ[n²])`
-/

namespace A169739.P7207889192986844762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A169739.P7207889192986844762

/-! ## A169739.P8278056502464521042

`∑[A030067(Δ[n²])]`
-/

namespace A169739.P8278056502464521042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169739.P8278056502464521042

/-! ## A169739.P662201970227348218

`∑[record[A030067(n+1)]]`
-/

namespace A169739.P662201970227348218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169739.P662201970227348218

/-! ## A169739.P12537703534236815077

`A030068(2*(n+1))-A030068(n+1)`
-/

namespace A169739.P12537703534236815077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (2 * (n + 1)) - A030068 (n + 1)

end

end A169739.P12537703534236815077

/-! ## A169739.P10580445151975721443

`record[A030067(A259445(n+2)-1)]`
-/

namespace A169739.P10580445151975721443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (A259445 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169739.P10580445151975721443

/-! ## A169739.P14009955715025872923

`record[A030067(A177704(n+1)+n)]`
-/

namespace A169739.P14009955715025872923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (A177704 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169739.P14009955715025872923

/-!
# A169740: a(n) = A030068(4n+3).

The programs for A169740, there is no canonical definition to state claims against.
-/

/-! ## A169740.P15986502425732979953

`A169739(n)+A030068(n+1)`
-/

namespace A169740.P15986502425732979953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 n + A030068 (n + 1)

end

end A169740.P15986502425732979953

/-! ## A169740.P14537993250181994110

`A169739(n+1)-A030067(n+1)`
-/

namespace A169740.P14537993250181994110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 (n + 1) - A030067 (n + 1)

end

end A169740.P14537993250181994110

/-! ## A169740.P4965363857991510776

`A030068(n+1)+A030068(Δ[n²])`
-/

namespace A169740.P4965363857991510776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (n + 1) + A030068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A169740.P4965363857991510776

/-! ## A169740.P6149638256532789332

`A030068(2*(n+1))`
-/

namespace A169740.P6149638256532789332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030068 (2 * (n + 1))

end

end A169740.P6149638256532789332

/-! ## A169740.P5404050121124561972

`Δ[A169739(2*n)]-A169739(n+1)`
-/

namespace A169740.P5404050121124561972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169739 (n + 1)

end

end A169740.P5404050121124561972

/-! ## A169740.P11457853023109688766

`A169739(2*n+1)-A169739(2*n)`
-/

namespace A169740.P11457853023109688766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169739 (2 * n + 1) - A169739 (2 * n)

end

end A169740.P11457853023109688766

/-! ## A169740.P8140105839473720285

`A030067(2*n+1)+∑[record[A030067(n+1)]]`
-/

namespace A169740.P8140105839473720285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169740.P8140105839473720285

/-! ## A169740.P7314116716642424254

`A030067(4*n+3)`
-/

namespace A169740.P7314116716642424254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (4 * n + 3)

end

end A169740.P7314116716642424254

/-! ## A169740.P4724476538620097681

`record[A030067(xor(n, gcd(2, n))+1)]`
-/

namespace A169740.P4724476538620097681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (Nat.xor n (Nat.gcd 2 n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169740.P4724476538620097681

/-! ## A169740.P5252035783969072379

`record[A030067(A259445(n+2)+1)]`
-/

namespace A169740.P5252035783969072379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (A259445 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169740.P5252035783969072379

/-! ## A169740.P5466118341578171324

`record[A030067(xor(n, 3-A177704(n))+1)]`
-/

namespace A169740.P5466118341578171324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030067 (Int.xor (n : ℤ) (3 - A177704 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169740.P5466118341578171324

/-!
# A169741: a(n) = smallest k such that A109671(k)=n, or -1 if n does not appear in A109671.

The programs for A169741, there is no canonical definition to state claims against.
-/

/-! ## A169741.P13147917545511797460

`A079887(C(A075823(n+1), A081145(n+1)))`
-/

namespace A169741.P13147917545511797460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079887 (Nat.choose (A075823 (n + 1)).toNat (A081145 (n + 1)).toNat)

end

end A169741.P13147917545511797460

/-!
# A169742: A109671(2n+1).

The programs for A169742, there is no canonical definition to state claims against.
-/

/-! ## A169742.P14563684932742236891

`A109671(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169742.P14563684932742236891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (2 * n + 1)

end

end A169742.P14563684932742236891

/-! ## A169742.P12828327202051827935

`A109671(n+1+n)%(n+2)`
-/

namespace A169742.P12828327202051827935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109671 (n + 1 + n)) (n + 2 : ℤ)

end

end A169742.P12828327202051827935

/-! ## A169742.P1602170720999554276

`gcd(2, A005408(n))*A109671(A005408(n))`
-/

namespace A169742.P1602170720999554276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A005408 n) : ℤ) * A109671 (A005408 n).toNat

end

end A169742.P1602170720999554276

/-!
# A169743: Numbers k such that A109671(k) = 1.

The programs for A169743, there is no canonical definition to state claims against.
-/

/-! ## A169743.P15503906358008691839

`eq[1, A109671(n+1)]+1`
-/

namespace A169743.P15503906358008691839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169743.P15503906358008691839

/-! ## A169743.P12911115064716845364

`eq[1, A000194(Δ[A169742(n)]²)]+1`
-/

namespace A169743.P12911115064716845364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f3 (n + 1) - f3 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A169743.P12911115064716845364

/-! ## A169743.P2492221800571942895

`record[A000027(n+1)/A109671(n+1)]`
-/

namespace A169743.P2492221800571942895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A109671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169743.P2492221800571942895

/-! ## A169743.P8809684257925111502

`A000027(lt[15, 16/A109671(n+1)]+1)`
-/

namespace A169743.P8809684257925111502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  16 / (A109671 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1)

end

end A169743.P8809684257925111502

/-! ## A169743.P5305945834215442353

`record[A065033(2*(n+1))/A109671(n+1)]`
-/

namespace A169743.P5305945834215442353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * (n + 1)) : ℚ) / (A109671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169743.P5305945834215442353

/-!
# A169744: Odd numbers n such that A109671(n) = 1.

The programs for A169744, there is no canonical definition to state claims against.
-/

/-! ## A169744.P11814311787448721045

`2*A169745(n+1)+1`
-/

namespace A169744.P11814311787448721045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169745 (n + 1) + 1

end

end A169744.P11814311787448721045

/-! ## A169744.P17958331876115433075

`A005408(A169745(n+1))`
-/

namespace A169744.P17958331876115433075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A169745 (n + 1)).toNat

end

end A169744.P17958331876115433075

/-! ## A169744.P6844954105287697637

`A004273(A169745(n+1)+1)`
-/

namespace A169744.P6844954105287697637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A169745 (n + 1) + 1).toNat

end

end A169744.P6844954105287697637

/-! ## A169744.P2134187072058537735

`A047268(A169745(n+1)+1)`
-/

namespace A169744.P2134187072058537735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A169745 (n + 1) + 1).toNat

end

end A169744.P2134187072058537735

/-! ## A169744.P9346142945129345667

`A060747(A169745(n+1)+1)`
-/

namespace A169744.P9346142945129345667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A169745 (n + 1) + 1).toNat

end

end A169744.P9346142945129345667

/-! ## A169744.P8733325723146363519

`A004442(2*A169745(n+1))`
-/

namespace A169744.P8733325723146363519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A169745 (n + 1)).toNat

end

end A169744.P8733325723146363519

/-! ## A169744.P13452126008300738384

`A079097(2*A169745(n+1))`
-/

namespace A169744.P13452126008300738384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (2 * A169745 (n + 1)).toNat

end

end A169744.P13452126008300738384

/-! ## A169744.P16406784871584166032

`A008619(4*A169745(n+1))`
-/

namespace A169744.P16406784871584166032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A169745 (n + 1)).toNat

end

end A169744.P16406784871584166032

/-!
# A169745: Numbers k such that A109671(2*k+1) = 1.

The programs for A169745, there is no canonical definition to state claims against.
-/

/-! ## A169745.P5615835660368409463

`∑[A169746(A028310(n))]-2`
-/

namespace A169745.P5615835660368409463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A169745.P5615835660368409463

/-! ## A169745.P8005278907266594170

`∑[A169746(n+1)]-A169746(n+1)`
-/

namespace A169745.P8005278907266594170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A169746 (n + 1)

end

end A169745.P8005278907266594170

/-! ## A169745.P6403047155526697342

`eq[1, A169742(n)]`
-/

namespace A169745.P6403047155526697342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169745.P6403047155526697342

/-! ## A169745.P17073460609516103008

`record[n%floor(A005408(n)/A169742(n))]`
-/

namespace A169745.P17073460609516103008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) ⌊(A005408 n : ℚ) / (A169742 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169745.P17073460609516103008

/-! ## A169745.P5883101272403904693

`lt[A141255(A169742(n)), A105899(n)]`
-/

namespace A169745.P5883101272403904693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (A169742 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A169745.P5883101272403904693

/-! ## A169745.P10544620112109901734

`eq[1, A109671(Δ[n²])]`
-/

namespace A169745.P10544620112109901734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169745.P10544620112109901734

/-! ## A169745.P2915985979257487500

`eq[1, A109671(2*n+1)²]`
-/

namespace A169745.P2915985979257487500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A169745.P2915985979257487500

/-! ## A169745.P17102558676287982905

`record[floor(n/A109671(A005408(n)))]`
-/

namespace A169745.P17102558676287982905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A109671 (A005408 n).toNat : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169745.P17102558676287982905

/-! ## A169745.P15734771560046889151

`lt[A109671(A000027(2*n+1)), 2]`
-/

namespace A169745.P15734771560046889151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (A000027 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A169745.P15734771560046889151

/-! ## A169745.P1839688758388713653

`eq[A109671(2*n+1)*A227185(n+1), A227185(n+1)]`
-/

namespace A169745.P1839688758388713653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (2 * n + 1) * A227185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A169745.P1839688758388713653

/-!
# A169746: First differences of A169745.

The programs for A169746, there is no canonical definition to state claims against.
-/

/-! ## A169746.P11924505318526407704

`Δ[A169745(n+1)]`
-/

namespace A169746.P11924505318526407704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169746.P11924505318526407704

/-! ## A169746.P7887867466829837838

`A169745(n+2)-A169745(n+1)`
-/

namespace A169746.P7887867466829837838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169745 (n + 2) - A169745 (n + 1)

end

end A169746.P7887867466829837838

/-! ## A169746.P577516549622253574

`abs(Δ[A169745(A028242(2*n))])`
-/

namespace A169746.P577516549622253574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169745 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A169746.P577516549622253574

/-! ## A169746.P3245153342362804408

`Δ[eq[1, A169742(n)]]`
-/

namespace A169746.P3245153342362804408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A169746.P3245153342362804408

/-! ## A169746.P13919225712480881086

`Δ[eq[1, A109671(2*n+1)]]`
-/

namespace A169746.P13919225712480881086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A169746.P13919225712480881086

/-! ## A169746.P1833945988088896851

`Δ[A169744(n+1)/2]`
-/

namespace A169746.P1833945988088896851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169744 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169746.P1833945988088896851

/-! ## A169746.P5086006374376437957

`A001281(Δ[A169744(n+1)])`
-/

namespace A169746.P5086006374376437957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A169746.P5086006374376437957

/-! ## A169746.P11422891406897880781

`A004525(Δ[A169744(n+1)])`
-/

namespace A169746.P11422891406897880781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A169746.P11422891406897880781

/-! ## A169746.P5023130984958535771

`A065262(Δ[A169744(n+1)])`
-/

namespace A169746.P5023130984958535771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (f1 (n + 1) - f1 n).toNat

end

end A169746.P5023130984958535771

/-!
# A169747: a(1)=1; thereafter, a(2n)=a(n), a(2n+1) = a(2n-1)-a(n) if that number is positive and not already in the sequence, otherwise a(2n+1) = a(2n-1)+a(n).

The programs for A169747, there is no canonical definition to state claims against.
-/

/-! ## A169747.P8069132423884039034

`A064989(A016116(n)*A257738(n+1))`
-/

namespace A169747.P8069132423884039034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A016116 n * A257738 (n + 1)).toNat

end

end A169747.P8069132423884039034

/-! ## A169747.P12965990858457747965

`A064989(lcm(A016116(n), A257738(n+1)))`
-/

namespace A169747.P12965990858457747965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.lcm (A016116 n) (A257738 (n + 1)))

end

end A169747.P12965990858457747965

/-! ## A169747.P13208935253493896541

`A064989(A257738(n+1))%Δ[A343677(n)]`
-/

namespace A169747.P13208935253493896541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A257738 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A169747.P13208935253493896541

/-! ## A169747.P1096282952995109207

`A064989(A257738(n+1)^A278657(n))`
-/

namespace A169747.P1096282952995109207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A257738 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A169747.P1096282952995109207

/-! ## A169747.P16921678705888052772

`A001221(A072828(n+1))*A064989(A257738(n+1))`
-/

namespace A169747.P16921678705888052772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072828 (n + 1)).toNat * A064989 (A257738 (n + 1)).toNat

end

end A169747.P16921678705888052772

/-!
# A169748: A variation on Recamán's sequence A005132: see Comments for definition.

The programs for A169748, there is no canonical definition to state claims against.
-/

/-! ## A169748.P14965903017896723250

`A169755(n+1)%A000173(n+1)`
-/

namespace A169748.P14965903017896723250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169755 (n + 1)) (A000173 (n + 1))

end

end A169748.P14965903017896723250

/-! ## A169748.P13716276008713970882

`and(A169755(n+1), A387415(n+1))`
-/

namespace A169748.P13716276008713970882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169755 (n + 1)) (A387415 (n + 1))

end

end A169748.P13716276008713970882

/-! ## A169748.P805155506004931098

`and(A169755(n+1), A387418(n+1))`
-/

namespace A169748.P805155506004931098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169755 (n + 1)) (A387418 (n + 1))

end

end A169748.P805155506004931098

/-! ## A169748.P13950409766325993140

`A169755(n+1)+A000007(A000726(n))`
-/

namespace A169748.P13950409766325993140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169755 (n + 1) + A000007 (A000726 n).toNat

end

end A169748.P13950409766325993140

/-! ## A169748.P15746901282658020635

`A169755(n+1)+A000007(A052335(n))`
-/

namespace A169748.P15746901282658020635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169755 (n + 1) + A000007 (A052335 n).toNat

end

end A169748.P15746901282658020635

/-!
# A169753: 

The programs for A169753, there is no canonical definition to state claims against.
-/

/-! ## A169753.P17053482664753931106

`A000312(A176905(n+1))`
-/

namespace A169753.P17053482664753931106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A176905 (n + 1)).toNat

end

end A169753.P17053482664753931106

/-! ## A169753.P14428631025101012021

`A000312(p?[A049329(n+1)])`
-/

namespace A169753.P14428631025101012021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A169753.P14428631025101012021

/-! ## A169753.P13518044602550476

`p?[A049329(n+1)]^A176905(n+1)`
-/

namespace A169753.P13518044602550476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A176905 (n + 1) : ℤ)

end

end A169753.P13518044602550476

/-! ## A169753.P8213627931521570268

`A176905(n+1)^record[A014963(A049329(n+2))]`
-/

namespace A169753.P8213627931521570268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A049329 (n + 2)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176905 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A169753.P8213627931521570268

/-!
# A169754: Numbers of the form k^k which contain k as a substring in base 10.

The programs for A169754, there is no canonical definition to state claims against.
-/

/-! ## A169754.P4312874244220989624

`A000312(A049329(n+1))`
-/

namespace A169754.P4312874244220989624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A049329 (n + 1)).toNat

end

end A169754.P4312874244220989624

/-! ## A169754.P1865962471273340643

`A110132(2*A049329(n+1))`
-/

namespace A169754.P1865962471273340643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (2 * A049329 (n + 1)).toNat

end

end A169754.P1865962471273340643

/-! ## A169754.P7695885524228680799

`A049329(A038770(n+1))^A049329(n+1)`
-/

namespace A169754.P7695885524228680799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049329 (A038770 (n + 1)).toNat : ℚ) ^ (A049329 (n + 1) : ℤ)

end

end A169754.P7695885524228680799

/-! ## A169754.P4909520210232930383

`A049329(n+1)^A049329(A066638(n+1))`
-/

namespace A169754.P4909520210232930383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049329 (n + 1) : ℚ) ^ (A049329 (A066638 (n + 1)).toNat : ℤ)

end

end A169754.P4909520210232930383

/-!
# A169757: First differences of A170907.

The programs for A169757, there is no canonical definition to state claims against.
-/

/-! ## A169757.P17096504722175791070

`Δ[A170907(n+1)]`
-/

namespace A169757.P17096504722175791070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169757.P17096504722175791070

/-! ## A169757.P7212194405052701179

`A170907(n+2)-A170907(n+1)`
-/

namespace A169757.P7212194405052701179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (n + 2) - A170907 (n + 1)

end

end A169757.P7212194405052701179

/-! ## A169757.P12396075949698119845

`Δ[A169782((n+1)²)]`
-/

namespace A169757.P12396075949698119845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169757.P12396075949698119845

/-! ## A169757.P4357958179121542297

`Δ[record[A169782(A008642(n))]]`
-/

namespace A169757.P4357958179121542297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A008642 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169757.P4357958179121542297

/-! ## A169757.P11960043069971825056

`abs(Δ[A169782(A000290(n+1))])`
-/

namespace A169757.P11960043069971825056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A000290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A169757.P11960043069971825056

/-! ## A169757.P4256570264289179692

`abs(Δ[A169782(A005563(n)+1)])`
-/

namespace A169757.P4256570264289179692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A005563 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A169757.P4256570264289179692

/-! ## A169757.P3059987824327637282

`Δ[record[A169782(A055461(n+1))]]`
-/

namespace A169757.P3059987824327637282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A055461 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169757.P3059987824327637282

/-! ## A169757.P15647033911962108400

`A169758(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A169757.P15647033911962108400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A169758 (n - 1) + a (n - 1)

end

end A169757.P15647033911962108400

/-!
# A169758: Second differences of A170907.

The programs for A169758, there is no canonical definition to state claims against.
-/

/-! ## A169758.P6755887980164415443

`Δ[A169757(n)]`
-/

namespace A169758.P6755887980164415443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169758.P6755887980164415443

/-! ## A169758.P14863962302891817729

`Δ[Δ[A170907(n+1)]]`
-/

namespace A169758.P14863962302891817729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169758.P14863962302891817729

/-! ## A169758.P1473347562200726255

`Δ[Δ[A169782((n+1)²)]]`
-/

namespace A169758.P1473347562200726255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169758.P1473347562200726255

/-! ## A169758.P1038569563202372023

`A169757(n+1)-A169757(n)`
-/

namespace A169758.P1038569563202372023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169757 (n + 1) - A169757 n

end

end A169758.P1038569563202372023

/-! ## A169758.P12723085396139332394

`Δ[Δ[A169782(A000290(n+1))+n]]`
-/

namespace A169758.P12723085396139332394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A000290 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169758.P12723085396139332394

/-!
# A169759: Sum of terms in n-th row of A151724 when that sequence is written as a triangle.

The programs for A169759, there is no canonical definition to state claims against.
-/

/-! ## A169759.P9401843670833271688

`record[Δ[A151723(A140531(n))]]`
-/

namespace A169759.P9401843670833271688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A140531 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169759.P9401843670833271688

/-! ## A169759.P3861858421918856155

`record[Δ[A151723(A292944(n))]]`
-/

namespace A169759.P3861858421918856155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A292944 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169759.P3861858421918856155

/-! ## A169759.P13537492685278241186

`Δ[A151723(floor(A011782(n)/2))]`
-/

namespace A169759.P13537492685278241186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 ⌊(A011782 n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169759.P13537492685278241186

/-! ## A169759.P12288499958103191777

`Δ[A151723(round(A000225(n)/4))]`
-/

namespace A169759.P12288499958103191777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (SequenceMachineLib.roundAway ((A000225 n : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169759.P12288499958103191777

/-! ## A169759.P4302827345208478164

`Δ[A151723(A004526(ceil(2^(n-1))))]`
-/

namespace A169759.P4302827345208478164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A004526 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169759.P4302827345208478164

/-!
# A169760: A169759(n)/6.

The programs for A169760, there is no canonical definition to state claims against.
-/

/-! ## A169760.P17243209445939919720

`A169759(n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169760.P17243209445939919720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169759 (n + 2) : ℚ) / 6

end

end A169760.P17243209445939919720

/-! ## A169760.P2679772560392546191

`Δ[A169785(n)/6]`
-/

namespace A169760.P2679772560392546191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169785 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169760.P2679772560392546191

/-! ## A169760.P4911483838243329843

`Δ[A169779(2^n-1)]`
-/

namespace A169760.P4911483838243329843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169779 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169760.P4911483838243329843

/-! ## A169760.P17085977209040437357

`Δ[A169780(2^n-1)]`
-/

namespace A169760.P17085977209040437357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169760.P17085977209040437357

/-! ## A169760.P9333970164226590212

`Δ[A169781(n)-2^n]`
-/

namespace A169760.P9333970164226590212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169781 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169760.P9333970164226590212

/-!
# A169764: Number of closed Knight's tours on a 3 X n board.

The programs for A169764, there is no canonical definition to state claims against.
-/

/-! ## A169764.P2468671468677748954

`A070030(gcd(1-n, floor(n/2))+1)`
-/

namespace A169764.P2468671468677748954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + 1)

end

end A169764.P2468671468677748954

/-! ## A169764.P13066638639084507992

`A070030(gcd(∑[n], A008619(n)))`
-/

namespace A169764.P13066638639084507992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A008619 n))

end

end A169764.P13066638639084507992

/-! ## A169764.P18376848314568428031

`n%2*A070030(A065033(n))`
-/

namespace A169764.P18376848314568428031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A070030 (A065033 n).toNat

end

end A169764.P18376848314568428031

/-! ## A169764.P15980052939785097895

`A070030(gcd(n+1, ∑[A004442(n)]))`
-/

namespace A169764.P15980052939785097895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A169764.P15980052939785097895

/-! ## A169764.P5489140095973356767

`A070030(gcd(A103517(n), A110654(n)))`
-/

namespace A169764.P5489140095973356767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (Int.gcd (A103517 n) (A110654 n))

end

end A169764.P5489140095973356767

/-! ## A169764.P803237151223367596

`A070030(A008619(n*Δ[A008619(n)]))`
-/

namespace A169764.P803237151223367596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (A008619 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A169764.P803237151223367596

/-! ## A169764.P17657839577796399524

`A070030(A008619(n)^Δ[A008619(n)])`
-/

namespace A169764.P17657839577796399524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A169764.P17657839577796399524

/-! ## A169764.P12879685716072195547

`A070030(gcd(A000217(n), A004442(n+2)))`
-/

namespace A169764.P12879685716072195547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (Int.gcd (A000217 n) (A004442 (n + 2)))

end

end A169764.P12879685716072195547

/-! ## A169764.P7422816890341560215

`A021913(2*n)*A070030(A008619(n))`
-/

namespace A169764.P7422816890341560215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (2 * n) * A070030 (A008619 n).toNat

end

end A169764.P7422816890341560215

/-!
# A169765: Number of closed knight's tour diagrams of a 3 X n chessboard that are symmetric with respect to left-right reflection about a vertical axis.

The programs for A169765, there is no canonical definition to state claims against.
-/

/-! ## A169765.P15240364467883283906

`A169768(A078112(n+1)+4)`
-/

namespace A169765.P15240364467883283906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 (A078112 (n + 1) + 4).toNat

end

end A169765.P15240364467883283906

/-! ## A169765.P9769886840257862245

`A169768(n*A014707(n)+4)`
-/

namespace A169765.P9769886840257862245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 ((n : ℤ) * A014707 n + 4).toNat

end

end A169765.P9769886840257862245

/-! ## A169765.P15256206441995052198

`A021913(n)*A169768(n+4)`
-/

namespace A169765.P15256206441995052198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A169768 (n + 4)

end

end A169765.P15256206441995052198

/-! ## A169765.P1659005728347504321

`A059125(n)*A169768(n+4)`
-/

namespace A169765.P1659005728347504321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 n * A169768 (n + 4)

end

end A169765.P1659005728347504321

/-! ## A169765.P3595297954685674376

`A088150(n)*A169768(n+4)`
-/

namespace A169765.P3595297954685674376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088150 n * A169768 (n + 4)

end

end A169765.P3595297954685674376

/-! ## A169765.P5812158661905655549

`A140081(n)*A169768(n+4)`
-/

namespace A169765.P5812158661905655549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n * A169768 (n + 4)

end

end A169765.P5812158661905655549

/-! ## A169765.P2449397698898071105

`A165560(n)*A169768(n+4)`
-/

namespace A169765.P2449397698898071105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n * A169768 (n + 4)

end

end A169765.P2449397698898071105

/-! ## A169765.P3743534054322514186

`A166486(n)*A169768(n+4)`
-/

namespace A169765.P3743534054322514186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A169768 (n + 4)

end

end A169765.P3743534054322514186

/-! ## A169765.P10859221430941824737

`A169768(n+4)*A241979(n)`
-/

namespace A169765.P10859221430941824737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 (n + 4) * A241979 n

end

end A169765.P10859221430941824737

/-! ## A169765.P11980852632127834592

`A169768(n+4)*A269518(n)`
-/

namespace A169765.P11980852632127834592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 (n + 4) * A269518 n

end

end A169765.P11980852632127834592

/-! ## A169765.P9774154620155659393

`A169768(n+4)*A309215(n)`
-/

namespace A169765.P9774154620155659393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 (n + 4) * A309215 n

end

end A169765.P9774154620155659393

/-! ## A169765.P16901531516369617183

`A169768(n+4)*A330602(n)`
-/

namespace A169765.P16901531516369617183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 (n + 4) * A330602 n

end

end A169765.P16901531516369617183

/-! ## A169765.P1687716844830993197

`A169768(n+4)*A359820(n)`
-/

namespace A169765.P1687716844830993197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 (n + 4) * A359820 n

end

end A169765.P1687716844830993197

/-! ## A169765.P12447197388811705190

`lcm(A003816(n), A169768(n+4))`
-/

namespace A169765.P12447197388811705190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003816 n) (A169768 (n + 4))

end

end A169765.P12447197388811705190

/-! ## A169765.P13148512434625056588

`A169768(and(n, A009001(n))+4)`
-/

namespace A169765.P13148512434625056588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169768 (Int.land (n : ℤ) (A009001 n) + 4).toNat

end

end A169765.P13148512434625056588

/-! ## A169765.P14380989743612484160

`and(A056594(n), A169768(n+4))`
-/

namespace A169765.P14380989743612484160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056594 n) (A169768 (n + 4))

end

end A169765.P14380989743612484160

/-! ## A169765.P11250083526685819605

`and(A057077(n), A169768(n+4))`
-/

namespace A169765.P11250083526685819605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 n) (A169768 (n + 4))

end

end A169765.P11250083526685819605

/-! ## A169765.P8986284687798069385

`and(A084100(n), A169768(n+4))`
-/

namespace A169765.P8986284687798069385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084100 n) (A169768 (n + 4))

end

end A169765.P8986284687798069385

/-! ## A169765.P1254445446053552598

`and(A087960(n), A169768(n+4))`
-/

namespace A169765.P1254445446053552598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087960 n) (A169768 (n + 4))

end

end A169765.P1254445446053552598

/-! ## A169765.P5929116122363527456

`and(A098554(n), A169768(n+4))`
-/

namespace A169765.P5929116122363527456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098554 n) (A169768 (n + 4))

end

end A169765.P5929116122363527456

/-!
# A169766: Number of closed knight's tour diagrams of a 3 X n chessboard that have "Bergholtian symmetry".

The programs for A169766, there is no canonical definition to state claims against.
-/

/-! ## A169766.P7665388842826169065

`48%A226378(A201426(n+1))`
-/

namespace A169766.P7665388842826169065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 48 (A226378 (A201426 (n + 1)).toNat)

end

end A169766.P7665388842826169065

/-! ## A169766.P2934823617562496770

`A319998(n^A217760(n+1))`
-/

namespace A169766.P2934823617562496770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A217760 (n + 1) : ℤ))).toNat

end

end A169766.P2934823617562496770

/-! ## A169766.P13589900338780378813

`and(A283101(n+1), A284466(n))`
-/

namespace A169766.P13589900338780378813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283101 (n + 1)) (A284466 n)

end

end A169766.P13589900338780378813

/-! ## A169766.P6771863080744886467

`and(A051885(n)², A228017(n+1))`
-/

namespace A169766.P6771863080744886467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051885 n ^ 2) (A228017 (n + 1))

end

end A169766.P6771863080744886467

/-! ## A169766.P10501224145123270725

`n*A005177(floor(C(n, 10)/10))-A216972(n)`
-/

namespace A169766.P10501224145123270725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005177 ⌊(Nat.choose n 10 : ℚ) / 10⌋.toNat - A216972 n

end

end A169766.P10501224145123270725

/-!
# A169767: Number of closed knight's tour diagrams of a 3 X n chessboard that have "Eulerian symmetry".

The programs for A169767, there is no canonical definition to state claims against.
-/

/-! ## A169767.P11664525838310002491

`A169765(n+4)+A169766(n+4)*A309214(n)`
-/

namespace A169767.P11664525838310002491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169765 (n + 4) + A169766 (n + 4) * A309214 n

end

end A169767.P11664525838310002491

/-! ## A169767.P7005950286254506536

`A169765(n+4)-A169766(n+4)*A309215(n)`
-/

namespace A169767.P7005950286254506536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169765 (n + 4) - A169766 (n + 4) * A309215 n

end

end A169767.P7005950286254506536

/-! ## A169767.P12448493242382854869

`A169765(n+4)-A169766(n+4)*A330602(n)`
-/

namespace A169767.P12448493242382854869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169765 (n + 4) - A169766 (n + 4) * A330602 n

end

end A169767.P12448493242382854869

/-! ## A169767.P4124374223563287877

`(A169768(n+4)-A169766(n+4))*A330602(n)`
-/

namespace A169767.P4124374223563287877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169768 (n + 4) - A169766 (n + 4)) * A330602 n

end

end A169767.P4124374223563287877

/-! ## A169767.P6251626168129574950

`A054425(n+1)*A327201(A212368(n))`
-/

namespace A169767.P6251626168129574950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (n + 1) * A327201 (A212368 n).toNat

end

end A169767.P6251626168129574950

/-!
# A169768: Number of geometrically distinct closed knight's tours of a 3 X n chessboard that have twofold symmetry.

The programs for A169768, there is no canonical definition to state claims against.
-/

/-! ## A169768.P6494925429121681258

`(A169765(n+4)+A169766(n+4)+A169767(n+4))/2`
-/

namespace A169768.P6494925429121681258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169765 (n + 4) + A169766 (n + 4) + A169767 (n + 4) : ℚ) / 2

end

end A169768.P6494925429121681258

/-! ## A169768.P16366478951270942568

`A169765(A187829(n+1)-A065941(n)+4)`
-/

namespace A169768.P16366478951270942568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169765 (A187829 (n + 1) - A065941 n + 4).toNat

end

end A169768.P16366478951270942568

/-!
# A169769: Number of geometrically distinct closed knight's tours of a 3 X n chessboard.

The programs for A169769, there is no canonical definition to state claims against.
-/

/-! ## A169769.P16330882037392171337

`A169764(n+4)/4+A169768(n+4)/2`
-/

namespace A169769.P16330882037392171337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169764 (n + 4) : ℚ) / 4 + (A169768 (n + 4) : ℚ) / 2

end

end A169769.P16330882037392171337

/-! ## A169769.P9942928416090551435

`A212148(or(n+3, A061866(n+1)))`
-/

namespace A169769.P9942928416090551435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212148 (Int.lor (n + 3 : ℤ) (A061866 (n + 1))).toNat

end

end A169769.P9942928416090551435

/-! ## A169769.P2389909116662542859

`A212148(or(A227374(n), A325833(n)))`
-/

namespace A169769.P2389909116662542859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212148 (Int.lor (A227374 n) (A325833 n)).toNat

end

end A169769.P2389909116662542859

/-! ## A169769.P18167144860894642224

`A212148(gcd(A127092(n+1), A319876(2*(n+2)))+1)`
-/

namespace A169769.P18167144860894642224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212148 (Int.gcd (A127092 (n + 1)) (A319876 (2 * (n + 2))) + 1)

end

end A169769.P18167144860894642224

/-! ## A169769.P12476809533402127329

`and(46, A237880(n+1))`
-/

namespace A169769.P12476809533402127329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 46 (A237880 (n + 1))

end

end A169769.P12476809533402127329

/-!
# A169771: Number of open knight's tour diagrams of a 3 X n chessboard that have "type F": the endpoints occur in different columns and agree in color with the cells in the nearest corner.

The programs for A169771, there is no canonical definition to state claims against.
-/

/-! ## A169771.P189294901862885883

`A169696(n+4)-(A169772(n+4)+A169770(n+4))`
-/

namespace A169771.P189294901862885883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169696 (n + 4) - (A169772 (n + 4) + A169770 (n + 4))

end

end A169771.P189294901862885883

/-! ## A169771.P284582780577115226

`A276520(A000079(2*n+3))*A349166(3*n+1)`
-/

namespace A169771.P284582780577115226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (A000079 (2 * n + 3)).toNat * A349166 (3 * n + 1)

end

end A169771.P284582780577115226

/-!
# A169773: Number of open knight's tour diagrams of a 3 X n chessboard that are symmetric under 180-degree rotation and have "type X": both endpoints occur in the same column.

The programs for A169773, there is no canonical definition to state claims against.
-/

/-! ## A169773.P15275057518713288281

`and(∑[4*n], A122875(A122881(n+1)))`
-/

namespace A169773.P15275057518713288281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A122875 (A122881 (n + 1)).toNat)

end

end A169773.P15275057518713288281

/-! ## A169773.P2569004479194765920

`and(A046092(n), A136681(A136680(n+1)))`
-/

namespace A169773.P2569004479194765920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046092 n) (A136681 (A136680 (n + 1)).toNat)

end

end A169773.P2569004479194765920

/-! ## A169773.P16072795083455998378

`and(A088313(A293053(n)), A219616(n+1))`
-/

namespace A169773.P16072795083455998378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088313 (A293053 n).toNat) (A219616 (n + 1))

end

end A169773.P16072795083455998378

/-! ## A169773.P8089124038390087035

`and(A122875(A122881(n+1)), A242490(n+2))`
-/

namespace A169773.P8089124038390087035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122875 (A122881 (n + 1)).toNat) (A242490 (n + 2))

end

end A169773.P8089124038390087035

/-! ## A169773.P6231085624425813096

`and(A185497(n+4), A359907(A008305(n+1)))`
-/

namespace A169773.P6231085624425813096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185497 (n + 4)) (A359907 (A008305 (n + 1)).toNat)

end

end A169773.P6231085624425813096

/-!
# A169775: Number of open knight's tour diagrams of a 3 X n chessboard that are symmetric under 180-degree rotation and have "type B": the endpoints occur in different columns and disagree in color with the cells in the nearest corner.

The programs for A169775, there is no canonical definition to state claims against.
-/

/-! ## A169775.P14589253877365790626

`and(record[A144462(n+1)], A144485(n))`
-/

namespace A169775.P14589253877365790626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A144485 n)

end

end A169775.P14589253877365790626

/-! ## A169775.P7924801209792136262

`A001414(n+2)!%A018280(n+4)`
-/

namespace A169775.P7924801209792136262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A001414 (n + 2)).toNat : ℤ) (A018280 (n + 4))

end

end A169775.P7924801209792136262

/-! ## A169775.P12327846961662676394

`and(A000057(n+1), A229781(2*floor(ϕ*(n+1))+n))`
-/

namespace A169775.P12327846961662676394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000057 (n + 1)) (A229781 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)).toNat)

end

end A169775.P12327846961662676394

/-! ## A169775.P8644261950683944569

`A007920(n)*A007953(A024430(n))`
-/

namespace A169775.P8644261950683944569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n * A007953 (A024430 n).toNat

end

end A169775.P8644261950683944569

/-! ## A169775.P17855499179532941706

`A000005(A001576(n))*A293813(n)`
-/

namespace A169775.P17855499179532941706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001576 n).toNat * A293813 n

end

end A169775.P17855499179532941706

/-!
# A169776: Number of geometrically distinct open knight's tours of a 3 X n chessboard that have twofold symmetry.

The programs for A169776, there is no canonical definition to state claims against.
-/

/-! ## A169776.P16451369230528061112

`(A169773(n+4)+A169774(n+4)+A169775(n+4))/2`
-/

namespace A169776.P16451369230528061112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169773 (n + 4) + A169774 (n + 4) + A169775 (n + 4) : ℚ) / 2

end

end A169776.P16451369230528061112

/-!
# A169777: Number of geometrically distinct open knight's tours of a 3 X n chessboard.

The programs for A169777, there is no canonical definition to state claims against.
-/

/-! ## A169777.P11503895793200631446

`A169696(n+4)/4+A169776(n+4)/2`
-/

namespace A169777.P11503895793200631446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169696 (n + 4) : ℚ) / 4 + (A169776 (n + 4) : ℚ) / 2

end

end A169777.P11503895793200631446

/-!
# A169778: a(n) = ceiling(A170905/2).

The programs for A169778, there is no canonical definition to state claims against.
-/

/-! ## A169778.P17636056197517167966

`ceil(A170905(n)/2)`
-/

namespace A169778.P17636056197517167966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170905 n : ℚ) / 2⌉

end

end A169778.P17636056197517167966

/-! ## A169778.P1026861430380963646

`ceil(A151724(n)/12)`
-/

namespace A169778.P1026861430380963646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151724 n : ℚ) / 12⌉

end

end A169778.P1026861430380963646

/-! ## A169778.P12910119885341276909

`A170905(char[1]+n)/2`
-/

namespace A169778.P12910119885341276909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170905 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2

end

end A169778.P12910119885341276909

/-! ## A169778.P286862242130973393

`(A170899(floor(n-atan(n)))+1)%(n+1)`
-/

namespace A169778.P286862242130973393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170899 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat + 1) (n + 1 : ℤ)

end

end A169778.P286862242130973393

/-! ## A169778.P11200712644960555624

`ceil(Δ[A169780(floor(n-n/(n+1)))]/2)`
-/

namespace A169778.P11200712644960555624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 ⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A169778.P11200712644960555624

/-! ## A169778.P2782762162686957109

`A004525(A170905(n))`
-/

namespace A169778.P2782762162686957109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170905 n).toNat

end

end A169778.P2782762162686957109

/-! ## A169778.P3952575031851859763

`A004526(A170905(n)+1)`
-/

namespace A169778.P3952575031851859763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170905 n + 1).toNat

end

end A169778.P3952575031851859763

/-! ## A169778.P16494062883336991223

`A008679(A151724(n)+2)`
-/

namespace A169778.P16494062883336991223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A151724 n + 2).toNat

end

end A169778.P16494062883336991223

/-! ## A169778.P11841485349119808011

`A008647(A151724(n)+3)`
-/

namespace A169778.P11841485349119808011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A151724 n + 3).toNat

end

end A169778.P11841485349119808011

/-! ## A169778.P635193817333497772

`A001281(lcm(2, A170905(n)))`
-/

namespace A169778.P635193817333497772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A170905 n))

end

end A169778.P635193817333497772

/-!
# A169779: Partial sums of A170898.

The programs for A169779, there is no canonical definition to state claims against.
-/

/-! ## A169779.P3296195266734920934

`(A151723(n+2)-1)/6`
-/

namespace A169779.P3296195266734920934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151723 (n + 2) - 1 : ℚ) / 6

end

end A169779.P3296195266734920934

/-! ## A169779.P12846955088177816419

`∑[A170898(n)]`
-/

namespace A169779.P12846955088177816419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169779.P12846955088177816419

/-! ## A169779.P7291029037777620827

`∑[A170905(n+2)-1]`
-/

namespace A169779.P7291029037777620827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169779.P7291029037777620827

/-! ## A169779.P15277624661708796757

`∑[2*A170899(n)+1]`
-/

namespace A169779.P15277624661708796757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170899 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169779.P15277624661708796757

/-! ## A169779.P11880939551408610013

`∑[A151724(n+2)/6]`
-/

namespace A169779.P11880939551408610013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151724 (n + 2) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169779.P11880939551408610013

/-! ## A169779.P7372585983158508547

`A169780(n+2)-(n+2)`
-/

namespace A169779.P7372585983158508547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 (n + 2) - (n + 2 : ℤ)

end

end A169779.P7372585983158508547

/-! ## A169779.P11059386692567359820

`∑[n+1]-A169788(n+2)`
-/

namespace A169779.P11059386692567359820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A169788 (n + 2)

end

end A169779.P11059386692567359820

/-! ## A169779.P5281235847343778908

`∑[A112689(A151724(n+2))]`
-/

namespace A169779.P5281235847343778908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A151724 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169779.P5281235847343778908

/-! ## A169779.P4146212501141827032

`A169782((n+2)*(n+3))-(n+2)`
-/

namespace A169779.P4146212501141827032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 ((n + 2) * (n + 3)) - (n + 2 : ℤ)

end

end A169779.P4146212501141827032

/-! ## A169779.P2613189987228117980

`∑[A256139(n+1)/4]`
-/

namespace A169779.P2613189987228117980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256139 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169779.P2613189987228117980

/-!
# A169780: Total number of ON cells after n-th stage in one-sixth slice of hexagonal CA defined in A151723 (including both boundaries).

The programs for A169780, there is no canonical definition to state claims against.
-/

/-! ## A169780.P2016819989377990999

`∑[A170905(n)]`
-/

namespace A169780.P2016819989377990999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169780.P2016819989377990999

/-! ## A169780.P6050887862167146706

`∑[n]-A169788(n)`
-/

namespace A169780.P6050887862167146706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A169788 n

end

end A169780.P6050887862167146706

/-! ## A169780.P218333075206424191

`A002620(n+1)+A002620(n)-A169788(n)`
-/

namespace A169780.P218333075206424191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002620 n - A169788 n)

end

end A169780.P218333075206424191

/-! ## A169780.P868761063280608611

`∑[A112689(A151724(n)+3)]`
-/

namespace A169780.P868761063280608611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A151724 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169780.P868761063280608611

/-! ## A169780.P7002651994212810228

`∑[A170898(n)-A342276(n)]+n`
-/

namespace A169780.P7002651994212810228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170898 n - A342276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A169780.P7002651994212810228

/-! ## A169780.P15924749821317684875

`∑[A130130(n)*A169778(n)]`
-/

namespace A169780.P15924749821317684875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n * A169778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169780.P15924749821317684875

/-!
# A169781: a(n) = A169780(2^n).

The programs for A169781, there is no canonical definition to state claims against.
-/

/-! ## A169781.P5582570775102366698

`A169780(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169781.P5582570775102366698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 (2 ^ n)

end

end A169781.P5582570775102366698

/-! ## A169781.P16986773971886710351

`floor(2^n+A169785(n)/6)`
-/

namespace A169781.P16986773971886710351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) + (A169785 n : ℚ) / 6⌋

end

end A169781.P16986773971886710351

/-! ## A169781.P15599821501392316764

`A000079(n)+floor(A169785(n)/6)`
-/

namespace A169781.P15599821501392316764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ⌊(A169785 n : ℚ) / 6⌋

end

end A169781.P15599821501392316764

/-! ## A169781.P3864356574280218736

`ceil(A000225(n)+A169785(n)/6)`
-/

namespace A169781.P3864356574280218736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n : ℚ) + (A169785 n : ℚ) / 6⌉

end

end A169781.P3864356574280218736

/-! ## A169781.P14059021928495729321

`record[A059268(n)]+floor(A169785(n)/6)`
-/

namespace A169781.P14059021928495729321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊(A169785 n : ℚ) / 6⌋

end

end A169781.P14059021928495729321

/-!
# A169783: Number of solutions to a^2 + b^2 + 4*c^2 = n.

The programs for A169783, there is no canonical definition to state claims against.
-/

/-! ## A169783.P17570623459745114223

`gcd(4, n+1)%4*A246631(n)`
-/

namespace A169783.P17570623459745114223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 4 (n + 1) % 4 : ℕ) : ℤ) * A246631 n

end

end A169783.P17570623459745114223

/-! ## A169783.P4491425160836191663

`∑[A057077(n)]*A246631(n)`
-/

namespace A169783.P4491425160836191663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A246631 n

end

end A169783.P4491425160836191663

/-! ## A169783.P7516785280981634572

`abs(∑[A057077(n)]*A212885(n))`
-/

namespace A169783.P7516785280981634572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A212885 n|

end

end A169783.P7516785280981634572

/-! ## A169783.P7169578145924685159

`A035199(Δ[A005187(n)])*A246631(n)`
-/

namespace A169783.P7169578145924685159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (f1 (n + 1) - f1 n).toNat * A246631 n

end

end A169783.P7169578145924685159

/-! ## A169783.P7874529858745711640

`A014457(2*n)`
-/

namespace A169783.P7874529858745711640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (2 * n)

end

end A169783.P7874529858745711640

/-! ## A169783.P14099579760713228879

`A001281(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P14099579760713228879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P14099579760713228879

/-! ## A169783.P13906783079556694490

`A004525(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P13906783079556694490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P13906783079556694490

/-! ## A169783.P6371112721470675666

`A004526(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P6371112721470675666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P6371112721470675666

/-! ## A169783.P7816285474277527564

`A025480(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P7816285474277527564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P7816285474277527564

/-! ## A169783.P15465430686455761271

`A026741(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P15465430686455761271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P15465430686455761271

/-! ## A169783.P13253211923948094402

`A038572(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P13253211923948094402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P13253211923948094402

/-! ## A169783.P4296817539302713872

`A064680(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P4296817539302713872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P4296817539302713872

/-! ## A169783.P150043781401761383

`A142150(A083703(2*n)+A014455(2*n))`
-/

namespace A169783.P150043781401761383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A083703 (2 * n) + A014455 (2 * n)).toNat

end

end A169783.P150043781401761383

/-! ## A169783.P6019861779061454540

`lcm(A000045(A000032((n%2)^n)), A014457(n+n))`
-/

namespace A169783.P6019861779061454540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 (A000032 ((n % 2) ^ n)).toNat) (A014457 (n + n))

end

end A169783.P6019861779061454540

/-! ## A169783.P9039665702496864347

`A007877(n+1)*A033717(2*n)`
-/

namespace A169783.P9039665702496864347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (n + 1) * A033717 (2 * n)

end

end A169783.P9039665702496864347

/-! ## A169783.P6594472327563917534

`(1-A056594(n+1))*A033717(2*n)`
-/

namespace A169783.P6594472327563917534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A056594 (n + 1)) * A033717 (2 * n)

end

end A169783.P6594472327563917534

/-! ## A169783.P6382447743291730599

`(A319078(n)+A005875(n))/2`
-/

namespace A169783.P6382447743291730599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319078 n + A005875 n : ℚ) / 2

end

end A169783.P6382447743291730599

/-! ## A169783.P11888532117635658216

`A004526(A319078(n)+A005875(n))`
-/

namespace A169783.P11888532117635658216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319078 n + A005875 n).toNat

end

end A169783.P11888532117635658216

/-! ## A169783.P10296390205996174327

`A014457(n+n)%A153826(n+1)`
-/

namespace A169783.P10296390205996174327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014457 (n + n)) (A153826 (n + 1))

end

end A169783.P10296390205996174327

/-! ## A169783.P1551507945078865440

`A072071(8*n)`
-/

namespace A169783.P1551507945078865440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072071 (8 * n)

end

end A169783.P1551507945078865440

/-!
# A169784: Number of solutions to a^2 + b^2 + 5*c^2 = n.

The programs for A169784, there is no canonical definition to state claims against.
-/

/-! ## A169784.P14778482433737199081

`A033737(25*n)`
-/

namespace A169784.P14778482433737199081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033737 (25 * n)

end

end A169784.P14778482433737199081

/-! ## A169784.P6497824936231637663

`A033737(A008607(n))+A007814(A017377(n))`
-/

namespace A169784.P6497824936231637663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033737 (A008607 n).toNat + A007814 (A017377 n).toNat

end

end A169784.P6497824936231637663

/-! ## A169784.P2566074208257953034

`A033737(A008607(n))+A007814(A139391(n+1))`
-/

namespace A169784.P2566074208257953034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033737 (A008607 n).toNat + A007814 (A139391 (n + 1)).toNat

end

end A169784.P2566074208257953034

/-! ## A169784.P8403296455954515288

`A033737(A008607(n))/A000034(A074772(n+1))`
-/

namespace A169784.P8403296455954515288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033737 (A008607 n).toNat : ℚ) / (A000034 (A074772 (n + 1)).toNat : ℚ)

end

end A169784.P8403296455954515288

/-! ## A169784.P10341964580922028718

`A033737(A008607(n))/A169695(n²)`
-/

namespace A169784.P10341964580922028718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033737 (A008607 n).toNat : ℚ) / (A169695 (n ^ 2) : ℚ)

end

end A169784.P10341964580922028718

/-! ## A169784.P15713100110974736370

`A033737(A008607(n))/A000034(A074771(n+1))`
-/

namespace A169784.P15713100110974736370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033737 (A008607 n).toNat : ℚ) / (A000034 (A074771 (n + 1)).toNat : ℚ)

end

end A169784.P15713100110974736370

/-! ## A169784.P9610022883457915739

`A028710(4*5*5*n)`
-/

namespace A169784.P9610022883457915739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (4 * (5 * (5 * n)))

end

end A169784.P9610022883457915739

/-!
# A169785: a(n) = A151723(2^n).

The programs for A169785, there is no canonical definition to state claims against.
-/

/-! ## A169785.P12812954033647814701

`6*A169781(n)-6*2^n+1`
-/

namespace A169785.P12812954033647814701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A169781 n - (6 * 2 ^ n : ℤ) + 1

end

end A169785.P12812954033647814701

/-! ## A169785.P15949113961416463611

`A151723(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169785.P15949113961416463611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (2 ^ n)

end

end A169785.P15949113961416463611

/-! ## A169785.P5145740795129226748

`record[A151723(A001316(n))]`
-/

namespace A169785.P5145740795129226748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169785.P5145740795129226748

/-! ## A169785.P15601765954208084269

`record[A151723(A034008(n))]`
-/

namespace A169785.P15601765954208084269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169785.P15601765954208084269

/-! ## A169785.P5892422671147828737

`record[A151723(A048896(n))]`
-/

namespace A169785.P5892422671147828737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A048896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A169785.P5892422671147828737

/-!
# A169786: Triangle read by rows: T(n,k) is number of cells that turn from OFF to ON at stage k of the growth of the obtuse triangle of hexagons described in the comment.

The programs for A169786, there is no canonical definition to state claims against.
-/

/-! ## A169786.P11427136887454917683

`A000120(p?[A223541(A222210(n))])`
-/

namespace A169786.P11427136887454917683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (A222210 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A169786.P11427136887454917683

/-! ## A169786.P2820427682891616057

`A263259(A290293(n)-A054523(n+1))`
-/

namespace A169786.P2820427682891616057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A290293 n - A054523 (n + 1)).toNat

end

end A169786.P2820427682891616057

/-! ## A169786.P4326305909321625574

`A263259(xor(A054523(n+1), A290293(n)))`
-/

namespace A169786.P4326305909321625574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (Int.xor (A054523 (n + 1)) (A290293 n)).toNat

end

end A169786.P4326305909321625574

/-!
# A169787: The rows of the triangle in A169786 converge to this sequence.

The programs for A169787, there is no canonical definition to state claims against.
-/

/-! ## A169787.P4531616425109229418

`A342272(n)+1`
-/

namespace A169787.P4531616425109229418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n + 1

end

end A169787.P4531616425109229418

/-! ## A169787.P15715520634602003718

`∑[A342276(abs(1-n))]`
-/

namespace A169787.P15715520634602003718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169787.P15715520634602003718

/-! ## A169787.P1017299052996198580

`A342276(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A169787.P1017299052996198580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A342276 (n - 1) + a (n - 1)

end

end A169787.P1017299052996198580

/-! ## A169787.P5047357887780445376

`A170905(2*lt[xor(n, 2*n), 2*n]-(n+1))/2`
-/

namespace A169787.P5047357887780445376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170905 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n - (n + 1)) : ℚ) / 2

end

end A169787.P5047357887780445376

/-! ## A169787.P2034618854652276243

`A057174(A342272(n))`
-/

namespace A169787.P2034618854652276243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A342272 n).toNat

end

end A169787.P2034618854652276243

/-! ## A169787.P5930473907395095202

`A008619(2*A342272(n))`
-/

namespace A169787.P5930473907395095202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A342272 n).toNat

end

end A169787.P5930473907395095202

/-! ## A169787.P8033714818805657315

`A028242(2*A342272(n))`
-/

namespace A169787.P8033714818805657315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A342272 n).toNat

end

end A169787.P8033714818805657315

/-! ## A169787.P13913891494123477442

`∑[A342276(n)]+1-A342276(n)`
-/

namespace A169787.P13913891494123477442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A342276 n)

end

end A169787.P13913891494123477442

/-! ## A169787.P12938331773300292212

`A170899(A004757(n+1)-2)+1`
-/

namespace A169787.P12938331773300292212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170899 (A004757 (n + 1) - 2).toNat + 1

end

end A169787.P12938331773300292212

/-! ## A169787.P3661459632798195475

`ceil(xor(2*A342272(n), A000045(((-1)^n)²))/2)`
-/

namespace A169787.P3661459632798195475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (2 * A342272 n) (A000045 (((-1) ^ n) ^ 2).toNat) : ℚ) / 2⌉

end

end A169787.P3661459632798195475

/-!
# A169788: a(n) = n(n+1)/2 - A169780(n).

The programs for A169788, there is no canonical definition to state claims against.
-/

/-! ## A169788.P5041712190057697402

`n*(n+1)/2-A169780(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169788.P5041712190057697402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2 - (A169780 n : ℚ)

end

end A169788.P5041712190057697402

/-! ## A169788.P10700518953983768655

`∑[n-A170905(n)]`
-/

namespace A169788.P10700518953983768655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A170905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169788.P10700518953983768655

/-! ## A169788.P9764423023555311748

`A000124(n)-(A169780(n)+1)`
-/

namespace A169788.P9764423023555311748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A169780 n + 1)

end

end A169788.P9764423023555311748

/-! ## A169788.P12278226517911219767

`A000096(n)-(A169780(n)+n)`
-/

namespace A169788.P12278226517911219767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A169780 n + (n : ℤ))

end

end A169788.P12278226517911219767

/-! ## A169788.P7679980753946302568

`∑[n-A112689(A151724(n)+3)]`
-/

namespace A169788.P7679980753946302568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A112689 (A151724 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169788.P7679980753946302568

/-! ## A169788.P10196509850731559017

`A023443(A000124(n)-A169780(n))`
-/

namespace A169788.P10196509850731559017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000124 n - A169780 n).toNat

end

end A169788.P10196509850731559017

/-! ## A169788.P851273826095530678

`A000217(n)%A169782(A002061(n))`
-/

namespace A169788.P851273826095530678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A169782 (A002061 n).toNat)

end

end A169788.P851273826095530678

/-! ## A169788.P18270176073623586346

`∑[n]%A169782((n+1)²+n)`
-/

namespace A169788.P18270176073623586346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A169782 ((n + 1) ^ 2 + n))

end

end A169788.P18270176073623586346

/-! ## A169788.P1594436946565215819

`∑[n-A130130(n)*A169778(n)]`
-/

namespace A169788.P1594436946565215819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130130 n * A169778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169788.P1594436946565215819

/-!
# A169789: A169788(2^n).

The programs for A169789, there is no canonical definition to state claims against.
-/

/-! ## A169789.P16479613657334282448

`A169788(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A169789.P16479613657334282448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169788 (2 ^ n)

end

end A169789.P16479613657334282448

/-! ## A169789.P10172049825125420062

`A169788(A000079(n))+char[11]`
-/

namespace A169789.P10172049825125420062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169788 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A169789.P10172049825125420062

/-! ## A169789.P6233010003893625743

`A169788(A051049(n))+char[11]`
-/

namespace A169789.P6233010003893625743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169788 (A051049 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A169789.P6233010003893625743

/-! ## A169789.P4976105197617662919

`A169788(A000225(n))+A025469(n)`
-/

namespace A169789.P4976105197617662919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169788 (A000225 n).toNat + A025469 n

end

end A169789.P4976105197617662919

/-! ## A169789.P3313332517556929344

`A277156(n)+A169788(A000079(n))`
-/

namespace A169789.P3313332517556929344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277156 n + A169788 (A000079 n).toNat

end

end A169789.P3313332517556929344

/-!
# A169790: Least number k having n unordered partitions into a nonzero Fibonacci number and a prime.

The programs for A169790, there is no canonical definition to state claims against.
-/

/-! ## A169790.P8437436299323315516

`A169791(n+2)+A139380(A169791(n+1))`
-/

namespace A169790.P8437436299323315516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169791 (n + 2) + A139380 (A169791 (n + 1)).toNat

end

end A169790.P8437436299323315516

/-! ## A169790.P11905819317315832229

`A169791(n+2)+A000122(A329533(n))`
-/

namespace A169790.P11905819317315832229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169791 (n + 2) + A000122 (A329533 n).toNat

end

end A169790.P11905819317315832229

/-!
# A169792: Expansion of ((1-x)/(1-2x))^5.

The programs for A169792, the canonical program `A169792.P12941910783712671954` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169792 has offset 0).

The definition of A169792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))` (program `A169792.P12941910783712671954`, by `A169792.P12941910783712671954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A169792.P12941910783712671954

`ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A169792

/-- `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P12941910783712671954.Spec : Prop :=
  ∀ n, P12941910783712671954.a n = A169792 n

theorem P12941910783712671954.correct : P12941910783712671954.Spec := by
  intro n
  simp only [A169792]

end A169792

/-! ## A169792.P5587878652625614702

`A062109(n)+A055589(n)`
-/

namespace A169792.P5587878652625614702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 n + A055589 n

end

end A169792.P5587878652625614702

namespace A169792

/-- `A062109(n)+A055589(n)` -/
def P5587878652625614702.Spec : Prop :=
  ∀ n, P5587878652625614702.a n = A169792 n

theorem P5587878652625614702.correct : P5587878652625614702.Spec := by
  intro n
  simp only [A169792, Nat.add_sub_cancel, A169792.P5587878652625614702.a, A169792.P12941910783712671954.a, A055589, A055589.P10202033342249056807.a, A062109, A062109.P8341807795069969925.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A169792

/-! ## A169792.P14199943422372609041

`A049612(n+1)+A055589(n)-A049612(n)`
-/

namespace A169792.P14199943422372609041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 1) + (A055589 n - A049612 n)

end

end A169792.P14199943422372609041

namespace A169792

/-- `A049612(n+1)+A055589(n)-A049612(n)` -/
def P14199943422372609041.Spec : Prop :=
  ∀ n, P14199943422372609041.a n = A169792 n

end A169792

/-! ## A169792.P4116925577310737717

`Δ[A055589(n)]`
-/

namespace A169792.P4116925577310737717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169792.P4116925577310737717

namespace A169792

/-- `Δ[A055589(n)]` -/
def P4116925577310737717.Spec : Prop :=
  ∀ n, P4116925577310737717.a n = A169792 n

end A169792

/-! ## A169792.P11450620423521755228

`A055589(n+1)-A055589(n)`
-/

namespace A169792.P11450620423521755228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (n + 1) - A055589 n

end

end A169792.P11450620423521755228

namespace A169792

/-- `A055589(n+1)-A055589(n)` -/
def P11450620423521755228.Spec : Prop :=
  ∀ n, P11450620423521755228.a n = A169792 n

end A169792

/-! ## A169792.P18316087777349225194

`A169793(n)-A055852(n)`
-/

namespace A169792.P18316087777349225194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169793 n - A055852 n

end

end A169792.P18316087777349225194

namespace A169792

/-- `A169793(n)-A055852(n)` -/
def P18316087777349225194.Spec : Prop :=
  ∀ n, P18316087777349225194.a n = A169792 n

end A169792

/-! ## A169792.P10583685920947633012

`A055852(n+1)-2*A055852(n)`
-/

namespace A169792.P10583685920947633012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055852 (n + 1) - 2 * A055852 n

end

end A169792.P10583685920947633012

namespace A169792

/-- `A055852(n+1)-2*A055852(n)` -/
def P10583685920947633012.Spec : Prop :=
  ∀ n, P10583685920947633012.a n = A169792 n

end A169792

/-! ## A169792.P8897174270242026904

`Δ[A055852(n)/A011782(n)]*A000079(n)`
-/

namespace A169792.P8897174270242026904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055852 n : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A000079 n : ℚ)

end

end A169792.P8897174270242026904

namespace A169792

/-- `Δ[A055852(n)/A011782(n)]*A000079(n)` -/
def P8897174270242026904.Spec : Prop :=
  ∀ n, P8897174270242026904.a n = (A169792 n : ℚ)

end A169792

/-! ## A169792.P14533530871778753288

`A105306(A167499(n+3))`
-/

namespace A169792.P14533530871778753288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A167499 (n + 3)).toNat

end

end A169792.P14533530871778753288

namespace A169792

/-- `A105306(A167499(n+3))` -/
def P14533530871778753288.Spec : Prop :=
  ∀ n, P14533530871778753288.a n = A169792 n

end A169792

/-! ## A169792.P16312974373004454032

`A062110(A133263(n+5)+3)`
-/

namespace A169792.P16312974373004454032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A133263 (n + 5) + 3).toNat

end

end A169792.P16312974373004454032

namespace A169792

/-- `A062110(A133263(n+5)+3)` -/
def P16312974373004454032.Spec : Prop :=
  ∀ n, P16312974373004454032.a n = A169792 n

end A169792

/-! ## A169792.P8620003337210503206

`record[A055589(A051340(n))]-A055589(n)`
-/

namespace A169792.P8620003337210503206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A055589 n

end

end A169792.P8620003337210503206

namespace A169792

/-- `record[A055589(A051340(n))]-A055589(n)` -/
def P8620003337210503206.Spec : Prop :=
  ∀ n, P8620003337210503206.a n = A169792 n

end A169792

/-! ## A169792.P408710450559967295

`Δ[A049600(∑[n+5]+5)]`
-/

namespace A169792.P408710450559967295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169792.P408710450559967295

namespace A169792

/-- `Δ[A049600(∑[n+5]+5)]` -/
def P408710450559967295.Spec : Prop :=
  ∀ n, P408710450559967295.a n = A169792 n

end A169792

/-!
# A169793: Expansion of ((1-x)/(1-2*x))^6.

The programs for A169793, there is no canonical definition to state claims against.
-/

/-! ## A169793.P3638686762735303365

`A169792(n)+A055852(n)`
-/

namespace A169793.P3638686762735303365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169792 n + A055852 n

end

end A169793.P3638686762735303365

/-! ## A169793.P1063367194701809545

`A055589(n+1)+A055852(n)-A055589(n)`
-/

namespace A169793.P1063367194701809545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (n + 1) + (A055852 n - A055589 n)

end

end A169793.P1063367194701809545

/-! ## A169793.P66940197919181548

`Δ[A055852(n)]`
-/

namespace A169793.P66940197919181548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169793.P66940197919181548

/-! ## A169793.P11019104801041982818

`A055852(n+1)-A055852(n)`
-/

namespace A169793.P11019104801041982818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055852 (n + 1) - A055852 n

end

end A169793.P11019104801041982818

/-! ## A169793.P867213540745567758

`A169794(n)-A055853(n)`
-/

namespace A169793.P867213540745567758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169794 n - A055853 n

end

end A169793.P867213540745567758

/-! ## A169793.P4805624636172392526

`A055853(n+1)-2*A055853(n)`
-/

namespace A169793.P4805624636172392526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055853 (n + 1) - 2 * A055853 n

end

end A169793.P4805624636172392526

/-! ## A169793.P7567460868917598966

`Δ[A055853(n)/A011782(n)]*A000079(n)`
-/

namespace A169793.P7567460868917598966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055853 n : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A000079 n : ℚ)

end

end A169793.P7567460868917598966

/-!
# A169794: Expansion of ((1-x)/(1-2*x))^7.

The programs for A169794, there is no canonical definition to state claims against.
-/

/-! ## A169794.P9034090071983960677

`A169793(n)+A055853(n)`
-/

namespace A169794.P9034090071983960677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169793 n + A055853 n

end

end A169794.P9034090071983960677

/-! ## A169794.P17218736383669877953

`A055852(n+1)+A055853(n)-A055852(n)`
-/

namespace A169794.P17218736383669877953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055852 (n + 1) + (A055853 n - A055852 n)

end

end A169794.P17218736383669877953

/-! ## A169794.P17636583291144620097

`Δ[A055853(n)]`
-/

namespace A169794.P17636583291144620097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169794.P17636583291144620097

/-! ## A169794.P16863188099156905936

`A055853(n+1)-A055853(n)`
-/

namespace A169794.P16863188099156905936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055853 (n + 1) - A055853 n

end

end A169794.P16863188099156905936

/-! ## A169794.P10620411839116946910

`A169795(n)-A055854(n)`
-/

namespace A169794.P10620411839116946910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169795 n - A055854 n

end

end A169794.P10620411839116946910

/-! ## A169794.P3363953983249218384

`A055854(n+1)-2*A055854(n)`
-/

namespace A169794.P3363953983249218384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055854 (n + 1) - 2 * A055854 n

end

end A169794.P3363953983249218384

/-!
# A169795: Expansion of ((1-x)/(1-2x))^8.

The programs for A169795, there is no canonical definition to state claims against.
-/

/-! ## A169795.P15028263727022622579

`A169794(n)+A055854(n)`
-/

namespace A169795.P15028263727022622579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169794 n + A055854 n

end

end A169795.P15028263727022622579

/-! ## A169795.P12817566971476172866

`Δ[A055854(n)]`
-/

namespace A169795.P12817566971476172866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169795.P12817566971476172866

/-! ## A169795.P8081347844636797898

`A055854(n+1)-A055854(n)`
-/

namespace A169795.P8081347844636797898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055854 (n + 1) - A055854 n

end

end A169795.P8081347844636797898

/-! ## A169795.P11836044297103257532

`A169796(n)-A055855(n)`
-/

namespace A169795.P11836044297103257532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169796 n - A055855 n

end

end A169795.P11836044297103257532

/-! ## A169795.P2125040805140231054

`A055855(n+1)-2*A055855(n)`
-/

namespace A169795.P2125040805140231054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055855 (n + 1) - 2 * A055855 n

end

end A169795.P2125040805140231054

/-!
# A169796: Expansion of ((1-x)/(1-2x))^9.

The programs for A169796, there is no canonical definition to state claims against.
-/

/-! ## A169796.P10662996675906350866

`A169795(n)+A055855(n)`
-/

namespace A169796.P10662996675906350866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169795 n + A055855 n

end

end A169796.P10662996675906350866

/-! ## A169796.P13864460877953741211

`A055854(n+1)+A055855(n)-A055854(n)`
-/

namespace A169796.P13864460877953741211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055854 (n + 1) + (A055855 n - A055854 n)

end

end A169796.P13864460877953741211

/-! ## A169796.P4653597535905725636

`Δ[A055855(n)]`
-/

namespace A169796.P4653597535905725636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169796.P4653597535905725636

/-! ## A169796.P1382892971008292076

`A055855(n+1)-A055855(n)`
-/

namespace A169796.P1382892971008292076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055855 (n + 1) - A055855 n

end

end A169796.P1382892971008292076

/-! ## A169796.P2730397939404484492

`A105306(A133263(n+9)-(n+2))`
-/

namespace A169796.P2730397939404484492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A133263 (n + 9) - (n + 2 : ℤ)).toNat

end

end A169796.P2730397939404484492

/-! ## A169796.P674566903404238281

`A160232(A000217(n+8)+n+1)`
-/

namespace A169796.P674566903404238281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A169796.P674566903404238281

/-! ## A169796.P17652844857462968989

`Δ[A049600(A000217(n+9)-9)]`
-/

namespace A169796.P17652844857462968989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000217 (n + 9) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169796.P17652844857462968989

/-!
# A169797: Expansion of ((1-x)/(1-2x))^10.

The programs for A169797, the canonical program `A169797.P17979696602202155902` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A169797 has offset 0).

The definition of A169797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A169797.P17979696602202155902

`A105306(A000124(n+9)+9)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A169797

/-- `A105306(A000124(n+9)+9)` -/
def P17979696602202155902.Spec : Prop :=
  ∀ n, P17979696602202155902.a n = A169797 n

theorem P17979696602202155902.correct : P17979696602202155902.Spec := by
  intro n
  simp only [A169797]

end A169797

/-! ## A169797.P17690072661016529433

`A105306(A000217(n+9)+10)`
-/

namespace A169797.P17690072661016529433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A000217 (n + 9) + 10).toNat

end

end A169797.P17690072661016529433

namespace A169797

/-- `A105306(A000217(n+9)+10)` -/
def P17690072661016529433.Spec : Prop :=
  ∀ n, P17690072661016529433.a n = A169797 n

end A169797

/-! ## A169797.P12449724817962041173

`A062110(A000096(n+9)+11)`
-/

namespace A169797.P12449724817962041173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A000096 (n + 9) + 11).toNat

end

end A169797.P12449724817962041173

namespace A169797

/-- `A062110(A000096(n+9)+11)` -/
def P12449724817962041173.Spec : Prop :=
  ∀ n, P12449724817962041173.a n = A169797 n

end A169797

/-! ## A169797.P8733627588836399137

`Δ[A049600(A055999(n+7)-4)]`
-/

namespace A169797.P8733627588836399137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A055999 (n + 7) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169797.P8733627588836399137

namespace A169797

/-- `Δ[A049600(A055999(n+7)-4)]` -/
def P8733627588836399137.Spec : Prop :=
  ∀ n, P8733627588836399137.a n = A169797 n

end A169797

/-! ## A169797.P2878017932779095025

`Δ[A049600(A000217(n+10)-10)]`
-/

namespace A169797.P2878017932779095025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000217 (n + 10) - 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169797.P2878017932779095025

namespace A169797

/-- `Δ[A049600(A000217(n+10)-10)]` -/
def P2878017932779095025.Spec : Prop :=
  ∀ n, P2878017932779095025.a n = A169797 n

end A169797

/-!
# A169798: a(n) = smallest prime number > a(n-1) that contains the n-th composite number as a substring.

The programs for A169798, there is no canonical definition to state claims against.
-/

/-! ## A169798.P2409257495496990943

`A060399(A002808(n+1))%A133972(3*n+2)`
-/

namespace A169798.P2409257495496990943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060399 (A002808 (n + 1)).toNat) (A133972 (3 * n + 2))

end

end A169798.P2409257495496990943

/-! ## A169798.P17506663238335676906

`A060915(lt[A040650(n), A220412(3*(n+1))])`
-/

namespace A169798.P17506663238335676906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220412 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A169798.P17506663238335676906

/-! ## A169798.P10012426538974488630

`A060915(lt[A003154(n+1), A220412(3*(n+1))])`
-/

namespace A169798.P10012426538974488630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220412 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A169798.P10012426538974488630

/-! ## A169798.P16032190015598681797

`A060915(lt[A060915(n+1), A220412(3*(n+1))])`
-/

namespace A169798.P16032190015598681797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220412 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A169798.P16032190015598681797

/-!
# A169799: First differences of A167209.

The programs for A169799, there is no canonical definition to state claims against.
-/

/-! ## A169799.P4626739686023420562

`Δ[A167209(n)]`
-/

namespace A169799.P4626739686023420562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169799.P4626739686023420562

/-! ## A169799.P4523443900457277324

`∑[A169820(n+1)]`
-/

namespace A169799.P4523443900457277324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169799.P4523443900457277324

/-! ## A169799.P9287648460898231202

`∑[A169820(-xor(n, -1))%11]`
-/

namespace A169799.P9287648460898231202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169820 (-Int.xor (n : ℤ) (-1)).toNat) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169799.P9287648460898231202

/-! ## A169799.P17145132212140250238

`A167209(n+1)-A167209(n)`
-/

namespace A169799.P17145132212140250238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167209 (n + 1) - A167209 n

end

end A169799.P17145132212140250238

/-! ## A169799.P14730781671462278340

`∑[A057946(A169820(-xor(n, -1)))]`
-/

namespace A169799.P14730781671462278340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 (A169820 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A169799.P14730781671462278340

/-! ## A169799.P18318684899451131694

`record[A167209(A328477(n))]-A167209(n)`
-/

namespace A169799.P18318684899451131694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167209 (A328477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A167209 n

end

end A169799.P18318684899451131694

