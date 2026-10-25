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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A191200: Integers in (-1+A191138)/3; contains A191138 as a proper subsequence.

The programs for A191200, there is no canonical definition to state claims against.
-/

/-! ## A191200.P3567977147745482038

`A191121(n+2)-1`
-/

namespace A191200.P3567977147745482038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (n + 2) - 1

end

end A191200.P3567977147745482038

/-! ## A191200.P9388234605662959300

`floor(A191129(n+2)/2)`
-/

namespace A191200.P9388234605662959300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191129 (n + 2) : ℚ) / 2⌋

end

end A191200.P9388234605662959300

/-! ## A191200.P13166821881696351814

`∑[abs(Δ[A191121(n+1)])]`
-/

namespace A191200.P13166821881696351814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191200.P13166821881696351814

/-! ## A191200.P13178926657565231720

`(A191138(n+2)-1)/3`
-/

namespace A191200.P13178926657565231720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191138 (n + 2) - 1 : ℚ) / 3

end

end A191200.P13178926657565231720

/-! ## A191200.P14386542732606735779

`∑[Δ[A191129(n+1)]/2]`
-/

namespace A191200.P14386542732606735779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191129 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191200.P14386542732606735779

/-! ## A191200.P14886121114254945699

`∑[round(Δ[A191138(n+1)/3])]`
-/

namespace A191200.P14886121114254945699
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191138 (n + 1) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191200.P14886121114254945699

/-! ## A191200.P13016756985419418291

`∑[A000027(Δ[A191121(n+1)])]`
-/

namespace A191200.P13016756985419418291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191200.P13016756985419418291

/-! ## A191200.P1360496833787560832

`A191113(n+3)/2-1`
-/

namespace A191200.P1360496833787560832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191113 (n + 3) : ℚ) / 2 - 1

end

end A191200.P1360496833787560832

/-! ## A191200.P5214934081350393804

`∑[Δ[A191113(n+2)]/2]`
-/

namespace A191200.P5214934081350393804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191200.P5214934081350393804

/-! ## A191200.P4136900255139207626

`∑[Δ[A191121(n+1)]%(A000124(n+6)+6)]`
-/

namespace A191200.P4136900255139207626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191121 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000124 (n + 6) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191200.P4136900255139207626

/-! ## A191200.P13566435165060273093

`A023443(A191121(n+2))`
-/

namespace A191200.P13566435165060273093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A191121 (n + 2)).toNat

end

end A191200.P13566435165060273093

/-! ## A191200.P1428486479296650287

`A004524(A191129(n+2))`
-/

namespace A191200.P1428486479296650287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191129 (n + 2)).toNat

end

end A191200.P1428486479296650287

/-! ## A191200.P12708817938717411206

`A004525(A191129(n+2)-1)`
-/

namespace A191200.P12708817938717411206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191129 (n + 2) - 1).toNat

end

end A191200.P12708817938717411206

/-! ## A191200.P13977200843284813340

`A025480(A191129(n+2)-1)`
-/

namespace A191200.P13977200843284813340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191129 (n + 2) - 1).toNat

end

end A191200.P13977200843284813340

/-! ## A191200.P15374098779683450359

`A032742(A191129(n+2)-1)`
-/

namespace A191200.P15374098779683450359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A191129 (n + 2) - 1).toNat

end

end A191200.P15374098779683450359

/-! ## A191200.P6097441012049591315

`A078898(A191129(n+2)-1)`
-/

namespace A191200.P6097441012049591315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191129 (n + 2) - 1).toNat

end

end A191200.P6097441012049591315

/-! ## A191200.P7851643091866481465

`A000463(A191129(n+2)-2)`
-/

namespace A191200.P7851643091866481465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191129 (n + 2) - 2).toNat

end

end A191200.P7851643091866481465

/-! ## A191200.P2402276497280093273

`A008619(A191129(n+2)-2)`
-/

namespace A191200.P2402276497280093273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A191129 (n + 2) - 2).toNat

end

end A191200.P2402276497280093273

/-! ## A191200.P17136685525121039875

`A002264(A191138(n+2))`
-/

namespace A191200.P17136685525121039875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A191138 (n + 2)).toNat

end

end A191200.P17136685525121039875

/-! ## A191200.P5697611171956168264

`A110657(A191114(n+3))`
-/

namespace A191200.P5697611171956168264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A191114 (n + 3)).toNat

end

end A191200.P5697611171956168264

/-!
# A191201: Integers in (-3+A191138)/4; contains A191138 as a proper subsequence.

The programs for A191201, there is no canonical definition to state claims against.
-/

/-! ## A191201.P2899284778788998575

`3*A191167(n+1)-2`
-/

namespace A191201.P2899284778788998575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191167 (n + 1) - 2

end

end A191201.P2899284778788998575

/-! ## A191201.P13314535761593596728

`A016777(A191167(n+1)-1)`
-/

namespace A191201.P13314535761593596728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A191167 (n + 1) - 1).toNat

end

end A191201.P13314535761593596728

/-! ## A191201.P12797668548405117340

`A016789(A191167(n+1)-1)-1`
-/

namespace A191201.P12797668548405117340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A191167 (n + 1) - 1).toNat - 1

end

end A191201.P12797668548405117340

/-! ## A191201.P7531504563836837411

`record[A319556(A191183(n+1))]`
-/

namespace A191201.P7531504563836837411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319556 (A191183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191201.P7531504563836837411

/-! ## A191201.P6294123352637310023

`A047237(2*A191167(n+1))`
-/

namespace A191201.P6294123352637310023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (2 * A191167 (n + 1)).toNat

end

end A191201.P6294123352637310023

/-! ## A191201.P1298840436815868739

`A001651(A004273(A191167(n+1)))`
-/

namespace A191201.P1298840436815868739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A004273 (A191167 (n + 1)).toNat).toNat

end

end A191201.P1298840436815868739

/-! ## A191201.P7607089335954933486

`A001651(A191167(n+1)+A191167(n+1)-1)`
-/

namespace A191201.P7607089335954933486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A191167 (n + 1) + (A191167 (n + 1) - 1)).toNat

end

end A191201.P7607089335954933486

/-! ## A191201.P9880099288729103795

`A113655(3*A191167(n+1))`
-/

namespace A191201.P9880099288729103795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (3 * A191167 (n + 1)).toNat

end

end A191201.P9880099288729103795

/-! ## A191201.P11432169664341072494

`A244477(3*A191167(n+1))`
-/

namespace A191201.P11432169664341072494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (3 * A191167 (n + 1)).toNat

end

end A191201.P11432169664341072494

/-! ## A191201.P7628546299862333782

`A174257(6*A191167(n+1))`
-/

namespace A191201.P7628546299862333782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (6 * A191167 (n + 1)).toNat

end

end A191201.P7628546299862333782

/-!
# A191202: Positions of 1 in A191188; complement of A191194.

The programs for A191202, the canonical program `A191202.P17285865752956347945` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191202 has offset 1).

The definition of A191202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191202.P17285865752956347945

`filter[n+1, A191188(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191202

/-- `filter[n+1, A191188(#)]` -/
def P17285865752956347945.Spec : Prop :=
  ∀ n, (P17285865752956347945.a n : ℤ) = A191202 (n + 1)

theorem P17285865752956347945.correct : P17285865752956347945.Spec := by
  intro n
  simp only [A191202, Nat.add_sub_cancel]

end A191202

/-! ## A191202.P7168472682048461687

`eq[1, A191188(n+1)]+1`
-/

namespace A191202.P7168472682048461687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191202.P7168472682048461687

namespace A191202

/-- `eq[1, A191188(n+1)]+1` -/
def P7168472682048461687.Spec : Prop :=
  ∀ n, (P7168472682048461687.a n : ℤ) = A191202 (n + 1)

end A191202

/-! ## A191202.P10434231972125286124

`record[(n+1)*A191188(n+2)+1]`
-/

namespace A191202.P10434231972125286124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A191188 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191202.P10434231972125286124

namespace A191202

/-- `record[(n+1)*A191188(n+2)+1]` -/
def P10434231972125286124.Spec : Prop :=
  ∀ n, P10434231972125286124.a n = A191202 (n + 1)

end A191202

/-! ## A191202.P17878187977428980465

`record[A000027(n+1)*A191188(n+1)]`
-/

namespace A191202.P17878187977428980465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A191188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191202.P17878187977428980465

namespace A191202

/-- `record[A000027(n+1)*A191188(n+1)]` -/
def P17878187977428980465.Spec : Prop :=
  ∀ n, P17878187977428980465.a n = A191202 (n + 1)

end A191202

/-! ## A191202.P16282712159719430131

`eq[1, A024584(4*(n+1))]+1`
-/

namespace A191202.P16282712159719430131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191202.P16282712159719430131

namespace A191202

/-- `eq[1, A024584(4*(n+1))]+1` -/
def P16282712159719430131.Spec : Prop :=
  ∀ n, (P16282712159719430131.a n : ℤ) = A191202 (n + 1)

end A191202

/-! ## A191202.P11103869050295501397

`eq[1, A024584(A008574(n))]`
-/

namespace A191202.P11103869050295501397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191202.P11103869050295501397

namespace A191202

/-- `eq[1, A024584(A008574(n))]` -/
def P11103869050295501397.Spec : Prop :=
  ∀ n, (P11103869050295501397.a n : ℤ) = A191202 (n + 1)

end A191202

/-! ## A191202.P16035682376407158529

`eq[1, A024584(A130824(n)+2)]`
-/

namespace A191202.P16035682376407158529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A130824 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191202.P16035682376407158529

namespace A191202

/-- `eq[1, A024584(A130824(n)+2)]` -/
def P16035682376407158529.Spec : Prop :=
  ∀ n, (P16035682376407158529.a n : ℤ) = A191202 (n + 1)

end A191202

/-! ## A191202.P9957307281686311859

`eq[1, A024584(A257088(2*n))]`
-/

namespace A191202.P9957307281686311859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A257088 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191202.P9957307281686311859

namespace A191202

/-- `eq[1, A024584(A257088(2*n))]` -/
def P9957307281686311859.Spec : Prop :=
  ∀ n, (P9957307281686311859.a n : ℤ) = A191202 (n + 1)

end A191202

/-! ## A191202.P15954792453965840688

`eq[1, A024584(A008486(n)+n)]`
-/

namespace A191202.P15954792453965840688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A008486 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191202.P15954792453965840688

namespace A191202

/-- `eq[1, A024584(A008486(n)+n)]` -/
def P15954792453965840688.Spec : Prop :=
  ∀ n, (P15954792453965840688.a n : ℤ) = A191202 (n + 1)

end A191202

/-! ## A191202.P8929028719282624674

`eq[1, A024584(A004275(2*n+1))]`
-/

namespace A191202.P8929028719282624674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A004275 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191202.P8929028719282624674

namespace A191202

/-- `eq[1, A024584(A004275(2*n+1))]` -/
def P8929028719282624674.Spec : Prop :=
  ∀ n, (P8929028719282624674.a n : ℤ) = A191202 (n + 1)

end A191202

/-! ## A191202.P6321512607014656106

`record[A000027(n+1)/A024584(4*(n+1))]`
-/

namespace A191202.P6321512607014656106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A024584 (4 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191202.P6321512607014656106

namespace A191202

/-- `record[A000027(n+1)/A024584(4*(n+1))]` -/
def P6321512607014656106.Spec : Prop :=
  ∀ n, P6321512607014656106.a n = (A191202 (n + 1) : ℚ)

end A191202

/-! ## A191202.P13779731218217660220

`record[A008619(A005843(n))/A024584(4*(n+1))]`
-/

namespace A191202.P13779731218217660220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A005843 n).toNat : ℚ) / (A024584 (4 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191202.P13779731218217660220

namespace A191202

/-- `record[A008619(A005843(n))/A024584(4*(n+1))]` -/
def P13779731218217660220.Spec : Prop :=
  ∀ n, P13779731218217660220.a n = (A191202 (n + 1) : ℚ)

end A191202

/-!
# A191203: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x and 1+x^2 are in a.

The programs for A191203, there is no canonical definition to state claims against.
-/

/-! ## A191203.P11059990625552962818

`∩[A274384(n+1), A371448(n+1)]`
-/

namespace A191203.P11059990625552962818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191203.P11059990625552962818

/-! ## A191203.P13704804164734951773

`eq[A010125(n), A240200(A335458(2*n))]`
-/

namespace A191203.P13704804164734951773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240200 (A335458 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191203.P13704804164734951773

/-! ## A191203.P11929715420338744243

`∩[A190809(n+1), A261466(n+1)]`
-/

namespace A191203.P11929715420338744243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191203.P11929715420338744243

/-! ## A191203.P3061873798150516998

`A180252(n+1)+A051584(A205490(n)+1)`
-/

namespace A191203.P3061873798150516998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180252 (n + 1) + A051584 (A205490 n + 1).toNat

end

end A191203.P3061873798150516998

/-! ## A191203.P3604698644198609986

`lt[A237753(A378711(2*n+5)), A004018(n)]`
-/

namespace A191203.P3604698644198609986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237753 (A378711 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191203.P3604698644198609986

/-!
# A191205: Integers in (2+A191140)/4; contains A191140 as a proper subsequence.

The programs for A191205, there is no canonical definition to state claims against.
-/

/-! ## A191205.P16092188843243069596

`record[A359164(A191140(n+2))]`
-/

namespace A191205.P16092188843243069596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359164 (A191140 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191205.P16092188843243069596

/-! ## A191205.P165189567144505461

`record[ceil(A028234(A191204(n+1))/2)]`
-/

namespace A191205.P165189567144505461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028234 (A191204 (n + 1)).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191205.P165189567144505461

/-! ## A191205.P6515727931497133834

`round(record[A028234(A191204(n+2))]/2)`
-/

namespace A191205.P6515727931497133834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A191204 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)

end

end A191205.P6515727931497133834

/-! ## A191205.P13514499729556127162

`(record[A028234(A191204(n+3))]+1)/2`
-/

namespace A191205.P13514499729556127162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A191204 (n + 3)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A191205.P13514499729556127162

/-! ## A191205.P6303079764281465457

`A008619(record[A028234(A191204(n+1))])`
-/

namespace A191205.P6303079764281465457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A191204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191205.P6303079764281465457

/-!
# A191206: Integers in (-2+A191141)/3; contains A191141 as a proper subsequence.

The programs for A191206, there is no canonical definition to state claims against.
-/

/-! ## A191206.P4566700360763796760

`2*A191178(n+1)-1`
-/

namespace A191206.P4566700360763796760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191178 (n + 1) - 1

end

end A191206.P4566700360763796760

/-! ## A191206.P17945946619276652596

`A008683(A261456(n+1))+2*A191178(n+1)`
-/

namespace A191206.P17945946619276652596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A261456 (n + 1)).toNat + 2 * A191178 (n + 1)

end

end A191206.P17945946619276652596

/-! ## A191206.P1604451349288979254

`A033999(2*n+1)+2*A191178(n+1)`
-/

namespace A191206.P1604451349288979254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + 2 * A191178 (n + 1)

end

end A191206.P1604451349288979254

/-! ## A191206.P10028983979780518879

`A004273(A191178(n+1))`
-/

namespace A191206.P10028983979780518879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191178 (n + 1)).toNat

end

end A191206.P10028983979780518879

/-! ## A191206.P7399204697904492158

`A005408(A191178(n+1)-1)`
-/

namespace A191206.P7399204697904492158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191178 (n + 1) - 1).toNat

end

end A191206.P7399204697904492158

/-! ## A191206.P345223905267285670

`A014681(2*A191178(n+1))`
-/

namespace A191206.P345223905267285670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A191178 (n + 1)).toNat

end

end A191206.P345223905267285670

/-! ## A191206.P3630949246878509225

`A047241(2*A191178(n+1))/3`
-/

namespace A191206.P3630949246878509225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047241 (2 * A191178 (n + 1)).toNat : ℚ) / 3

end

end A191206.P3630949246878509225

/-!
# A191207: Integers in (1+A191141)/4; contains A191141 as a proper subsequence.

The programs for A191207, there is no canonical definition to state claims against.
-/

/-! ## A191207.P11814799578339379295

`2*A191179(n+1)-1`
-/

namespace A191207.P11814799578339379295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191179 (n + 1) - 1

end

end A191207.P11814799578339379295

/-! ## A191207.P10338426993993891946

`A008482(gcd(n, n+1))+2*A191179(n+1)`
-/

namespace A191207.P10338426993993891946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (Nat.gcd n (n + 1)) + 2 * A191179 (n + 1)

end

end A191207.P10338426993993891946

/-! ## A191207.P1219900924838467883

`A165326(2*(n+2))+2*A191179(n+1)`
-/

namespace A191207.P1219900924838467883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 2)) + 2 * A191179 (n + 1)

end

end A191207.P1219900924838467883

/-! ## A191207.P10920731190121502075

`A005408(A191179(n+1)-1)`
-/

namespace A191207.P10920731190121502075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191179 (n + 1) - 1).toNat

end

end A191207.P10920731190121502075

/-! ## A191207.P3354071116465389440

`A004273(A191179(n+1))`
-/

namespace A191207.P3354071116465389440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A191179 (n + 1)).toNat

end

end A191207.P3354071116465389440

/-! ## A191207.P15391199373127279538

`A267458(2*A191179(n+1))`
-/

namespace A191207.P15391199373127279538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (2 * A191179 (n + 1)).toNat

end

end A191207.P15391199373127279538

/-! ## A191207.P5712961789880800422

`abs(A024000(2*A191179(n+1)))`
-/

namespace A191207.P5712961789880800422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (2 * A191179 (n + 1)).toNat|

end

end A191207.P5712961789880800422

/-! ## A191207.P14094989650846406363

`A267458(A191179(n+1)+A191179(n+1)+1)`
-/

namespace A191207.P14094989650846406363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A191179 (n + 1) + (A191179 (n + 1) + 1)).toNat

end

end A191207.P14094989650846406363

/-! ## A191207.P1644541267826920597

`record[A028234(A191127(n+1))]`
-/

namespace A191207.P1644541267826920597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A191127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191207.P1644541267826920597

/-! ## A191207.P6388649888314097044

`record[A078898(A191127(n+2))]`
-/

namespace A191207.P6388649888314097044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A191127 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191207.P6388649888314097044

/-! ## A191207.P11701748193673907858

`record[A001057(A191127(n+2)-1)]`
-/

namespace A191207.P11701748193673907858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A191127 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191207.P11701748193673907858

/-! ## A191207.P14877284864223584974

`record[A003602(A191127(n+2)-1)]`
-/

namespace A191207.P14877284864223584974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A191127 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191207.P14877284864223584974

/-!
# A191208: Integers in (-2+A191142)/3; contains A191142 as a proper subsequence.

The programs for A191208, there is no canonical definition to state claims against.
-/

/-! ## A191208.P12105533872042190499

`record[A103627(A191142(n+1))]`
-/

namespace A191208.P12105533872042190499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A191142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191208.P12105533872042190499

/-!
# A191209: Integers in (A191142)/4; contains A191142 as a proper subsequence.

The programs for A191209, there is no canonical definition to state claims against.
-/

/-! ## A191209.P6326035654414393966

`record[A054576(A191142(n+1))]`
-/

namespace A191209.P6326035654414393966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A191142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191209.P6326035654414393966

/-! ## A191209.P3305096375174803011

`record[A054576(A191208(n+1))]`
-/

namespace A191209.P3305096375174803011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A191208 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191209.P3305096375174803011

/-!
# A191210: Integers in (-2+A191143)/3; contains A191143 as a proper subsequence.

The programs for A191210, there is no canonical definition to state claims against.
-/

/-! ## A191210.P15204010507599247117

`2*A191180(n+1)-1`
-/

namespace A191210.P15204010507599247117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191180 (n + 1) - 1

end

end A191210.P15204010507599247117

/-! ## A191210.P2519888724253853005

`4*A191229(n+1)-3`
-/

namespace A191210.P2519888724253853005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191229 (n + 1) - 3

end

end A191210.P2519888724253853005

/-! ## A191210.P10567752787597539393

`ratio[A033999(n)]+2*A191180(n+1)`
-/

namespace A191210.P10567752787597539393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (2 * A191180 (n + 1) : ℚ)

end

end A191210.P10567752787597539393

/-! ## A191210.P16167141735413904670

`A008683(A020483(n))+2*A191180(n+1)`
-/

namespace A191210.P16167141735413904670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A191180 (n + 1)

end

end A191210.P16167141735413904670

/-! ## A191210.P5996755738722761572

`A008683(A060397(n))+2*A191180(n+1)`
-/

namespace A191210.P5996755738722761572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060397 n).toNat + 2 * A191180 (n + 1)

end

end A191210.P5996755738722761572

/-! ## A191210.P16146526949497881598

`A191180(A000027(n+1))+A191180(n+1)-1`
-/

namespace A191210.P16146526949497881598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191180 (A000027 (n + 1)).toNat + (A191180 (n + 1) - 1)

end

end A191210.P16146526949497881598

/-! ## A191210.P10461488569298366340

`A033999(or(1, n)+2*n)+2*A191180(n+1)`
-/

namespace A191210.P10461488569298366340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n + 2 * n) + 2 * A191180 (n + 1)

end

end A191210.P10461488569298366340

/-! ## A191210.P3848880771626016062

`A244895(5*n+3)+2*A191180(n+1)`
-/

namespace A191210.P3848880771626016062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (5 * n + 3) + 2 * A191180 (n + 1)

end

end A191210.P3848880771626016062

/-! ## A191210.P7112382309217534906

`A033999(p?[2*n+1])+2*A191180(n+1)`
-/

namespace A191210.P7112382309217534906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 2 * A191180 (n + 1)

end

end A191210.P7112382309217534906

/-! ## A191210.P9264901779013583635

`A008683(A001359(n+1))+2*A191180(n+1)`
-/

namespace A191210.P9264901779013583635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 2 * A191180 (n + 1)

end

end A191210.P9264901779013583635

/-! ## A191210.P4256858892234654733

`A033999(A007821(n+2))+2*A191180(n+1)`
-/

namespace A191210.P4256858892234654733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007821 (n + 2)).toNat + 2 * A191180 (n + 1)

end

end A191210.P4256858892234654733

/-! ## A191210.P1208142768746597543

`A008683(A062584(n))+2*A191180(n+1)`
-/

namespace A191210.P1208142768746597543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062584 n).toNat + 2 * A191180 (n + 1)

end

end A191210.P1208142768746597543

/-! ## A191210.P14789964897665324703

`A000027(xor(3, 2*A191180(n+1)))`
-/

namespace A191210.P14789964897665324703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 3 (2 * A191180 (n + 1))).toNat

end

end A191210.P14789964897665324703

/-! ## A191210.P3813635946624083723

`A000027(A191180(n+1)+xor(1, A191180(n+1)))`
-/

namespace A191210.P3813635946624083723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A191180 (n + 1) + Int.xor 1 (A191180 (n + 1))).toNat

end

end A191210.P3813635946624083723

/-! ## A191210.P6567506088751413933

`A008683(A002515(n+1))+2*A191180(n+1)`
-/

namespace A191210.P6567506088751413933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002515 (n + 1)).toNat + 2 * A191180 (n + 1)

end

end A191210.P6567506088751413933

/-! ## A191210.P17570148555964162924

`A008683(A000355(n+1))+2*A191180(n+1)`
-/

namespace A191210.P17570148555964162924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000355 (n + 1)).toNat + 2 * A191180 (n + 1)

end

end A191210.P17570148555964162924

/-! ## A191210.P10666280745736399302

`A008683(A000353(n+1))+2*A191180(n+1)`
-/

namespace A191210.P10666280745736399302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000353 (n + 1)).toNat + 2 * A191180 (n + 1)

end

end A191210.P10666280745736399302

/-! ## A191210.P14434997184834945012

`A016813(A191229(n+1)-1)`
-/

namespace A191210.P14434997184834945012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A191229 (n + 1) - 1).toNat

end

end A191210.P14434997184834945012

/-! ## A191210.P14024025727666104524

`or(1, A019425(A191180(n+1)))`
-/

namespace A191210.P14024025727666104524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A019425 (A191180 (n + 1)).toNat)

end

end A191210.P14024025727666104524

/-! ## A191210.P12025639292086772757

`A019425(2*n)+A019425(A191180(n+1))`
-/

namespace A191210.P12025639292086772757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) + A019425 (A191180 (n + 1)).toNat

end

end A191210.P12025639292086772757

/-!
# A191211: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 1+2x and 1+x^2 are in a.

The programs for A191211, there is no canonical definition to state claims against.
-/

/-! ## A191211.P1416945474146284543

`eq[ceil(2/(n+1)), A272188(A153733(n))]`
-/

namespace A191211.P1416945474146284543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272188 (A153733 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191211.P1416945474146284543

/-! ## A191211.P2553716606860290562

`eq[A272188(A153733(n))², A057427(n)]`
-/

namespace A191211.P2553716606860290562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272188 (A153733 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191211.P2553716606860290562

/-! ## A191211.P3037950061696561243

`eq[A272188(A153733(n))², A178334(n)]`
-/

namespace A191211.P3037950061696561243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272188 (A153733 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191211.P3037950061696561243

/-! ## A191211.P17376970334408370014

`eq[A178489(n), A240439(A000265(n+1))]`
-/

namespace A191211.P17376970334408370014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240439 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191211.P17376970334408370014

/-! ## A191211.P4285485667262157683

`eq[A272188(A153733(n))², A014963(17*(n+1))]`
-/

namespace A191211.P4285485667262157683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272188 (A153733 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (17 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191211.P4285485667262157683

/-!
# A191212: Integers in (-2+A191144)/3; contains A191144 as a proper subsequence.

The programs for A191212, there is no canonical definition to state claims against.
-/

/-! ## A191212.P3049069361982025258

`record[A057979(A131380(A191144(n+1)))]`
-/

namespace A191212.P3049069361982025258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A131380 (A191144 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191212.P3049069361982025258

/-!
# A191213: Integers in (-2+A191144)/4; contains A191144 as a proper subsequence.

The programs for A191213, there is no canonical definition to state claims against.
-/

/-! ## A191213.P12938082558570765694

`record[A057979(A006370(A191144(n+1)))]`
-/

namespace A191213.P12938082558570765694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A006370 (A191144 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191213.P12938082558570765694

/-!
# A191214: Positions of 0 in A191162; complement of A191215.

The programs for A191214, the canonical program `A191214.P12989371329357514796` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191214 has offset 1).

The definition of A191214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191214.P12989371329357514796

`lt[n*A191162(A028310(n)), n]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191214

/-- `lt[n*A191162(A028310(n)), n]` -/
def P12989371329357514796.Spec : Prop :=
  ∀ n, (P12989371329357514796.a n : ℤ) = A191214 (n + 1)

theorem P12989371329357514796.correct : P12989371329357514796.Spec := by
  intro n
  simp only [A191214, Nat.add_sub_cancel]

end A191214

/-! ## A191214.P17617287278949354986

`lt[A336017(2*n), n]`
-/

namespace A191214.P17617287278949354986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336017 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191214.P17617287278949354986

namespace A191214

/-- `lt[A336017(2*n), n]` -/
def P17617287278949354986.Spec : Prop :=
  ∀ n, (P17617287278949354986.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P10148024368983069784

`lt[1, A024584(2*(n+1))]+1`
-/

namespace A191214.P10148024368983069784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191214.P10148024368983069784

namespace A191214

/-- `lt[1, A024584(2*(n+1))]+1` -/
def P10148024368983069784.Spec : Prop :=
  ∀ n, (P10148024368983069784.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P14800929064144837462

`lt[2, A020639(A004082(2*n+1))]`
-/

namespace A191214.P14800929064144837462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004082 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191214.P14800929064144837462

namespace A191214

/-- `lt[2, A020639(A004082(2*n+1))]` -/
def P14800929064144837462.Spec : Prop :=
  ∀ n, (P14800929064144837462.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P2095925179398303617

`ceil(eq[A035363(n), A191153(n+1)]/2)`
-/

namespace A191214.P2095925179398303617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2⌉

end

end A191214.P2095925179398303617

namespace A191214

/-- `ceil(eq[A035363(n), A191153(n+1)]/2)` -/
def P2095925179398303617.Spec : Prop :=
  ∀ n, P2095925179398303617.a n = A191214 (n + 1)

end A191214

/-! ## A191214.P13625330151635168695

`A000463(eq[A035363(n), A191153(n+1)])`
-/

namespace A191214.P13625330151635168695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191214.P13625330151635168695

namespace A191214

/-- `A000463(eq[A035363(n), A191153(n+1)])` -/
def P13625330151635168695.Spec : Prop :=
  ∀ n, P13625330151635168695.a n = A191214 (n + 1)

end A191214

/-! ## A191214.P11481622843063900757

`A001057(eq[A035363(n), A191153(n+1)])`
-/

namespace A191214.P11481622843063900757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191214.P11481622843063900757

namespace A191214

/-- `A001057(eq[A035363(n), A191153(n+1)])` -/
def P11481622843063900757.Spec : Prop :=
  ∀ n, P11481622843063900757.a n = A191214 (n + 1)

end A191214

/-! ## A191214.P11469240832743736445

`A003602(eq[A035363(n), A191153(n+1)])`
-/

namespace A191214.P11469240832743736445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191214.P11469240832743736445

namespace A191214

/-- `A003602(eq[A035363(n), A191153(n+1)])` -/
def P11469240832743736445.Spec : Prop :=
  ∀ n, P11469240832743736445.a n = A191214 (n + 1)

end A191214

/-! ## A191214.P11669770809085492838

`A008619(eq[A035363(n), A191153(n+1)])`
-/

namespace A191214.P11669770809085492838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191214.P11669770809085492838

namespace A191214

/-- `A008619(eq[A035363(n), A191153(n+1)])` -/
def P11669770809085492838.Spec : Prop :=
  ∀ n, P11669770809085492838.a n = A191214 (n + 1)

end A191214

/-! ## A191214.P14916283043604884186

`eq[1, A019429(A187320(4*n))]`
-/

namespace A191214.P14916283043604884186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A187320 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191214.P14916283043604884186

namespace A191214

/-- `eq[1, A019429(A187320(4*n))]` -/
def P14916283043604884186.Spec : Prop :=
  ∀ n, (P14916283043604884186.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P10361922168463444387

`eq[2, A020639(A022844(A008574(n)))]`
-/

namespace A191214.P10361922168463444387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022844 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191214.P10361922168463444387

namespace A191214

/-- `eq[2, A020639(A022844(A008574(n)))]` -/
def P10361922168463444387.Spec : Prop :=
  ∀ n, (P10361922168463444387.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P8479846062230856460

`eq[1, A019427(A063459(4*n))]`
-/

namespace A191214.P8479846062230856460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A063459 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191214.P8479846062230856460

namespace A191214

/-- `eq[1, A019427(A063459(4*n))]` -/
def P8479846062230856460.Spec : Prop :=
  ∀ n, (P8479846062230856460.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P3278238608585499868

`eq[A000007(n), A007814(A004082(2*n+1))]`
-/

namespace A191214.P3278238608585499868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004082 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191214.P3278238608585499868

namespace A191214

/-- `eq[A000007(n), A007814(A004082(2*n+1))]` -/
def P3278238608585499868.Spec : Prop :=
  ∀ n, (P3278238608585499868.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P13878741332220741387

`eq[A000038(n), A183063(A004082(2*n+1))]`
-/

namespace A191214.P13878741332220741387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004082 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191214.P13878741332220741387

namespace A191214

/-- `eq[A000038(n), A183063(A004082(2*n+1))]` -/
def P13878741332220741387.Spec : Prop :=
  ∀ n, (P13878741332220741387.a n : ℤ) = A191214 (n + 1)

end A191214

/-! ## A191214.P4674339215096321897

`eq[A135561(A004082(2*n+1))², A135561(2*n+1)]`
-/

namespace A191214.P4674339215096321897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (A004082 (2 * n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191214.P4674339215096321897

namespace A191214

/-- `eq[A135561(A004082(2*n+1))², A135561(2*n+1)]` -/
def P4674339215096321897.Spec : Prop :=
  ∀ n, (P4674339215096321897.a n : ℤ) = A191214 (n + 1)

end A191214

/-!
# A191215: Positions of 1 in A191162; complement of A191214.

The programs for A191215, the canonical program `A191215.P11746746193308624950` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191215 has offset 1).

The definition of A191215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191215.P11746746193308624950

`filter[n+1, A191162(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191215

/-- `filter[n+1, A191162(#)]` -/
def P11746746193308624950.Spec : Prop :=
  ∀ n, (P11746746193308624950.a n : ℤ) = A191215 (n + 1)

theorem P11746746193308624950.correct : P11746746193308624950.Spec := by
  intro n
  simp only [A191215, Nat.add_sub_cancel]

end A191215

/-! ## A191215.P14993304007928645598

`lt[1, A191162(A028310(n))+1]`
-/

namespace A191215.P14993304007928645598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191162 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191215.P14993304007928645598

namespace A191215

/-- `lt[1, A191162(A028310(n))+1]` -/
def P14993304007928645598.Spec : Prop :=
  ∀ n, (P14993304007928645598.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P14817354368937616827

`eq[1, A024584(2*(n+1))]+1`
-/

namespace A191215.P14817354368937616827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191215.P14817354368937616827

namespace A191215

/-- `eq[1, A024584(2*(n+1))]+1` -/
def P14817354368937616827.Spec : Prop :=
  ∀ n, (P14817354368937616827.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P14056709084689026033

`eq[1, A024584(A004275(n+1))]`
-/

namespace A191215.P14056709084689026033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191215.P14056709084689026033

namespace A191215

/-- `eq[1, A024584(A004275(n+1))]` -/
def P14056709084689026033.Spec : Prop :=
  ∀ n, (P14056709084689026033.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P3759813422963963429

`eq[1, A024584(A004273(n)+1)]`
-/

namespace A191215.P3759813422963963429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191215.P3759813422963963429

namespace A191215

/-- `eq[1, A024584(A004273(n)+1)]` -/
def P3759813422963963429.Spec : Prop :=
  ∀ n, (P3759813422963963429.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P7477095168514592591

`eq[1, A024584(A008486(n)-n)]`
-/

namespace A191215.P7477095168514592591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191215.P7477095168514592591

namespace A191215

/-- `eq[1, A024584(A008486(n)-n)]` -/
def P7477095168514592591.Spec : Prop :=
  ∀ n, (P7477095168514592591.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P15122787931646497561

`A000463(eq[A000035(n), A024584(n+1)])`
-/

namespace A191215.P15122787931646497561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191215.P15122787931646497561

namespace A191215

/-- `A000463(eq[A000035(n), A024584(n+1)])` -/
def P15122787931646497561.Spec : Prop :=
  ∀ n, P15122787931646497561.a n = A191215 (n + 1)

end A191215

/-! ## A191215.P6137394323015070384

`A001057(eq[A000035(n), A024584(n+1)])`
-/

namespace A191215.P6137394323015070384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191215.P6137394323015070384

namespace A191215

/-- `A001057(eq[A000035(n), A024584(n+1)])` -/
def P6137394323015070384.Spec : Prop :=
  ∀ n, P6137394323015070384.a n = A191215 (n + 1)

end A191215

/-! ## A191215.P5762564420610445349

`A000463(eq[A035363(n)+1, A191153(n+1)])`
-/

namespace A191215.P5762564420610445349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191215.P5762564420610445349

namespace A191215

/-- `A000463(eq[A035363(n)+1, A191153(n+1)])` -/
def P5762564420610445349.Spec : Prop :=
  ∀ n, P5762564420610445349.a n = A191215 (n + 1)

end A191215

/-! ## A191215.P14538910381269595204

`A001057(eq[A035363(n)+1, A191153(n+1)])`
-/

namespace A191215.P14538910381269595204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191215.P14538910381269595204

namespace A191215

/-- `A001057(eq[A035363(n)+1, A191153(n+1)])` -/
def P14538910381269595204.Spec : Prop :=
  ∀ n, P14538910381269595204.a n = A191215 (n + 1)

end A191215

/-! ## A191215.P2246054707686414351

`A003602(eq[A035363(n)+1, A191153(n+1)])`
-/

namespace A191215.P2246054707686414351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191215.P2246054707686414351

namespace A191215

/-- `A003602(eq[A035363(n)+1, A191153(n+1)])` -/
def P2246054707686414351.Spec : Prop :=
  ∀ n, P2246054707686414351.a n = A191215 (n + 1)

end A191215

/-! ## A191215.P17836006240451455510

`A008619(eq[A035363(n)+1, A191153(n+1)])`
-/

namespace A191215.P17836006240451455510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191215.P17836006240451455510

namespace A191215

/-- `A008619(eq[A035363(n)+1, A191153(n+1)])` -/
def P17836006240451455510.Spec : Prop :=
  ∀ n, P17836006240451455510.a n = A191215 (n + 1)

end A191215

/-! ## A191215.P15648207618731620660

`eq[2, A020639(A004082(Δ[n²]))]`
-/

namespace A191215.P15648207618731620660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004082 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191215.P15648207618731620660

namespace A191215

/-- `eq[2, A020639(A004082(Δ[n²]))]` -/
def P15648207618731620660.Spec : Prop :=
  ∀ n, (P15648207618731620660.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P15021965484973686305

`eq[2, A004082(2*n+1)/A004084(2*n+1)]`
-/

namespace A191215.P15021965484973686305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004082 (2 * n + 1) : ℚ) / (A004084 (2 * n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A191215.P15021965484973686305

namespace A191215

/-- `eq[2, A004082(2*n+1)/A004084(2*n+1)]` -/
def P15021965484973686305.Spec : Prop :=
  ∀ n, (P15021965484973686305.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P2898897695774025891

`eq[2, A328579(A038130(2*n))]`
-/

namespace A191215.P2898897695774025891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A038130 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191215.P2898897695774025891

namespace A191215

/-- `eq[2, A328579(A038130(2*n))]` -/
def P2898897695774025891.Spec : Prop :=
  ∀ n, (P2898897695774025891.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P2074266728082689897

`eq[1, A024584(A008619(A130824(n)))]`
-/

namespace A191215.P2074266728082689897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A008619 (A130824 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191215.P2074266728082689897

namespace A191215

/-- `eq[1, A024584(A008619(A130824(n)))]` -/
def P2074266728082689897.Spec : Prop :=
  ∀ n, (P2074266728082689897.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P11938579309391808853

`eq[1, A024584(A233583(n+1)+n)]`
-/

namespace A191215.P11938579309391808853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (A233583 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191215.P11938579309391808853

namespace A191215

/-- `eq[1, A024584(A233583(n+1)+n)]` -/
def P11938579309391808853.Spec : Prop :=
  ∀ n, (P11938579309391808853.a n : ℤ) = A191215 (n + 1)

end A191215

/-! ## A191215.P7273165472628425730

`eq[A004084(2*n+1), A064680(A004082(2*n+1))]`
-/

namespace A191215.P7273165472628425730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A004082 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191215.P7273165472628425730

namespace A191215

/-- `eq[A004084(2*n+1), A064680(A004082(2*n+1))]` -/
def P7273165472628425730.Spec : Prop :=
  ∀ n, (P7273165472628425730.a n : ℤ) = A191215 (n + 1)

end A191215

/-!
# A191217: Numbers k such that sigma(k) is congruent to 2 modulo 4.

The programs for A191217, the canonical program `A191217.P5086974476563652864` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191217 has offset 1).

The definition of A191217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191217.P6038332085841580394

`filter[A347877(n+1), A353812(#)]`
-/

namespace A191217.P6038332085841580394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P6038332085841580394

namespace A191217

/-- `filter[A347877(n+1), A353812(#)]` -/
def P6038332085841580394.Spec : Prop :=
  ∀ n, P6038332085841580394.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P4388641176269393910

`filter[A347877(n+1), A354032(#)]`
-/

namespace A191217.P4388641176269393910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A191217.P4388641176269393910

namespace A191217

/-- `filter[A347877(n+1), A354032(#)]` -/
def P4388641176269393910.Spec : Prop :=
  ∀ n, P4388641176269393910.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P5086974476563652864

`eq[1, A336937(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A191217

/-- `eq[1, A336937(n+1)]+1` -/
def P5086974476563652864.Spec : Prop :=
  ∀ n, (P5086974476563652864.a n : ℤ) = A191217 (n + 1)

theorem P5086974476563652864.correct : P5086974476563652864.Spec := by
  intro n
  simp only [A191217, Nat.add_sub_cancel]

end A191217

/-! ## A191217.P3326787888558654122

`eq[1, A353812(n+1)]+1`
-/

namespace A191217.P3326787888558654122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191217.P3326787888558654122

namespace A191217

/-- `eq[1, A353812(n+1)]+1` -/
def P3326787888558654122.Spec : Prop :=
  ∀ n, (P3326787888558654122.a n : ℤ) = A191217 (n + 1)

end A191217

/-! ## A191217.P16409765797950717501

`eq[1, val(A000203(n+1), 2)]+1`
-/

namespace A191217.P16409765797950717501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191217.P16409765797950717501

namespace A191217

/-- `eq[1, val(A000203(n+1), 2)]+1` -/
def P16409765797950717501.Spec : Prop :=
  ∀ n, (P16409765797950717501.a n : ℤ) = A191217 (n + 1)

end A191217

/-! ## A191217.P5276237635080907413

`filter[A000415(n+1), A353812(#)]`
-/

namespace A191217.P5276237635080907413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P5276237635080907413

namespace A191217

/-- `filter[A000415(n+1), A353812(#)]` -/
def P5276237635080907413.Spec : Prop :=
  ∀ n, P5276237635080907413.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P1106670366508387144

`filter[A000415(n+1), A354032(#)]`
-/

namespace A191217.P1106670366508387144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A191217.P1106670366508387144

namespace A191217

/-- `filter[A000415(n+1), A354032(#)]` -/
def P1106670366508387144.Spec : Prop :=
  ∀ n, P1106670366508387144.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P9780713568121957764

`filter[A004431(n+1), A353812(#)]`
-/

namespace A191217.P9780713568121957764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P9780713568121957764

namespace A191217

/-- `filter[A004431(n+1), A353812(#)]` -/
def P9780713568121957764.Spec : Prop :=
  ∀ n, P9780713568121957764.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P8093929175219093454

`filter[A004431(n+1), A354032(#)]`
-/

namespace A191217.P8093929175219093454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A191217.P8093929175219093454

namespace A191217

/-- `filter[A004431(n+1), A354032(#)]` -/
def P8093929175219093454.Spec : Prop :=
  ∀ n, P8093929175219093454.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P5929400878648674225

`filter[A000404(n+1), A353812(#)]`
-/

namespace A191217.P5929400878648674225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P5929400878648674225

namespace A191217

/-- `filter[A000404(n+1), A353812(#)]` -/
def P5929400878648674225.Spec : Prop :=
  ∀ n, P5929400878648674225.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P18349084965266212220

`filter[A000404(n+1), A354032(#)]`
-/

namespace A191217.P18349084965266212220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A191217.P18349084965266212220

namespace A191217

/-- `filter[A000404(n+1), A354032(#)]` -/
def P18349084965266212220.Spec : Prop :=
  ∀ n, P18349084965266212220.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P16827098387916317202

`filter[A001983(n+1), A353812(#)]`
-/

namespace A191217.P16827098387916317202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P16827098387916317202

namespace A191217

/-- `filter[A001983(n+1), A353812(#)]` -/
def P16827098387916317202.Spec : Prop :=
  ∀ n, P16827098387916317202.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P7244517651033963620

`filter[A001983(n+2), A354032(#)]`
-/

namespace A191217.P7244517651033963620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A191217.P7244517651033963620

namespace A191217

/-- `filter[A001983(n+2), A354032(#)]` -/
def P7244517651033963620.Spec : Prop :=
  ∀ n, P7244517651033963620.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P13018576495047048692

`filter[A001481(n+2), A353812(#)]`
-/

namespace A191217.P13018576495047048692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P13018576495047048692

namespace A191217

/-- `filter[A001481(n+2), A353812(#)]` -/
def P13018576495047048692.Spec : Prop :=
  ∀ n, P13018576495047048692.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P14551229418177536847

`filter[A005792(n+1), A353812(#)]`
-/

namespace A191217.P14551229418177536847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P14551229418177536847

namespace A191217

/-- `filter[A005792(n+1), A353812(#)]` -/
def P14551229418177536847.Spec : Prop :=
  ∀ n, P14551229418177536847.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P2228354867721902373

`filter[A068537(n+1), A353812(#)]`
-/

namespace A191217.P2228354867721902373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P2228354867721902373

namespace A191217

/-- `filter[A068537(n+1), A353812(#)]` -/
def P2228354867721902373.Spec : Prop :=
  ∀ n, P2228354867721902373.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P18416602116217558310

`eq[1, A324904(2*(n+1))]+1`
-/

namespace A191217.P18416602116217558310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191217.P18416602116217558310

namespace A191217

/-- `eq[1, A324904(2*(n+1))]+1` -/
def P18416602116217558310.Spec : Prop :=
  ∀ n, (P18416602116217558310.a n : ℤ) = A191217 (n + 1)

end A191217

/-! ## A191217.P11551783254640274497

`filter[A391195(n+1), A353812(#)]`
-/

namespace A191217.P11551783254640274497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P11551783254640274497

namespace A191217

/-- `filter[A391195(n+1), A353812(#)]` -/
def P11551783254640274497.Spec : Prop :=
  ∀ n, P11551783254640274497.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P9972903713650796181

`filter[A070049(n+1), A353812(#)]`
-/

namespace A191217.P9972903713650796181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P9972903713650796181

namespace A191217

/-- `filter[A070049(n+1), A353812(#)]` -/
def P9972903713650796181.Spec : Prop :=
  ∀ n, P9972903713650796181.a n = A191217 (n + 1)

end A191217

/-! ## A191217.P13672800999095400060

`filter[A327609(n+2), A353812(#)]`
-/

namespace A191217.P13672800999095400060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191217.P13672800999095400060

namespace A191217

/-- `filter[A327609(n+2), A353812(#)]` -/
def P13672800999095400060.Spec : Prop :=
  ∀ n, P13672800999095400060.a n = A191217 (n + 1)

end A191217

/-!
# A191218: Odd numbers n such that sigma(n) is congruent to 2 modulo 4.

The programs for A191218, the canonical program `A191218.P4909588505082131463` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191218 has offset 1).

The definition of A191218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191218.P13970497102151122459

`A351533(n+1)/9`
-/

namespace A191218.P13970497102151122459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351533 (n + 1) : ℚ) / 9

end

end A191218.P13970497102151122459

namespace A191218

/-- `A351533(n+1)/9` -/
def P13970497102151122459.Spec : Prop :=
  ∀ n, P13970497102151122459.a n = (A191218 (n + 1) : ℚ)

theorem P13970497102151122459.correct : P13970497102151122459.Spec := by
  intro n
  simp only [A191218, Nat.add_sub_cancel, A191218.P13970497102151122459.a, A191218.P4909588505082131463.f1, A191218.P4909588505082131463.a, A057653, A057653.P8862115344835850100.a, A351533, A351533.P2463827929453727071.a, A358678, A358678.P8777088749171866875.a, A000035, A000035.P2023072528413494694.a, A097269, A097269.P5694133736295637479.a, A353812, A353812.P18155869108031714769.a, A020756, A020756.P16947837090098696349.f1, A020756.P16947837090098696349.f3, A020756.P16947837090098696349.f2, A020756.P16947837090098696349.a, A347870, A347870.P5523994556869526496.a, A353811, A353811.P62770870440473012.a, A051533, A051533.P6966278410585714434.f1, A051533.P6966278410585714434.f2, A051533.P6966278410585714434.a, A053866, A053866.P7754923131584660837.a, A342925, A342925.P15461664039980779065.a, A353810, A353810.P10357715078653884361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191218

/-! ## A191218.P2511596391602314682

`filter[A057653(n+1), A353812(#)]`
-/

namespace A191218.P2511596391602314682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191218.P2511596391602314682

namespace A191218

/-- `filter[A057653(n+1), A353812(#)]` -/
def P2511596391602314682.Spec : Prop :=
  ∀ n, P2511596391602314682.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P4909588505082131463

`filter[A057653(n+1), A358678(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A191218

/-- `filter[A057653(n+1), A358678(#)]` -/
def P4909588505082131463.Spec : Prop :=
  ∀ n, P4909588505082131463.a n = A191218 (n + 1)

theorem P4909588505082131463.correct : P4909588505082131463.Spec := by
  intro n
  simp only [A191218, Nat.add_sub_cancel]

end A191218

/-! ## A191218.P2981327632811390067

`filter[A359151(n+1), A353812(#)]`
-/

namespace A191218.P2981327632811390067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A191218.P2981327632811390067

namespace A191218

/-- `filter[A359151(n+1), A353812(#)]` -/
def P2981327632811390067.Spec : Prop :=
  ∀ n, P2981327632811390067.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P8578312503678910531

`filter[A359151(n+1), A358678(#)]`
-/

namespace A191218.P8578312503678910531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A191218.P8578312503678910531

namespace A191218

/-- `filter[A359151(n+1), A358678(#)]` -/
def P8578312503678910531.Spec : Prop :=
  ∀ n, P8578312503678910531.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P3781622884744849664

`∩[2*n+1, A191217(n+1)]`
-/

namespace A191218.P3781622884744849664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191218.P3781622884744849664

namespace A191218

/-- `∩[2*n+1, A191217(n+1)]` -/
def P3781622884744849664.Spec : Prop :=
  ∀ n, (P3781622884744849664.a n : ℤ) = A191218 (n + 1)

end A191218

/-! ## A191218.P8489238271233183482

`A191217(eq[1, A191217(n+1)%2]+1)`
-/

namespace A191218.P8489238271233183482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191217 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191218.P8489238271233183482

namespace A191218

/-- `A191217(eq[1, A191217(n+1)%2]+1)` -/
def P8489238271233183482.Spec : Prop :=
  ∀ n, P8489238271233183482.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P12099218128185034553

`filter[A359151(n+1), A347870(#)]`
-/

namespace A191218.P12099218128185034553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A191218.P12099218128185034553

namespace A191218

/-- `filter[A359151(n+1), A347870(#)]` -/
def P12099218128185034553.Spec : Prop :=
  ∀ n, P12099218128185034553.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P16946814888474168355

`filter[A359151(n+1), A354032(#)]`
-/

namespace A191218.P16946814888474168355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A191218.P16946814888474168355

namespace A191218

/-- `filter[A359151(n+1), A354032(#)]` -/
def P16946814888474168355.Spec : Prop :=
  ∀ n, P16946814888474168355.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P7294068366149051290

`filter[A359151(n+1), A369253(#)]`
-/

namespace A191218.P7294068366149051290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A191218.P7294068366149051290

namespace A191218

/-- `filter[A359151(n+1), A369253(#)]` -/
def P7294068366149051290.Spec : Prop :=
  ∀ n, P7294068366149051290.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P5216168494600091177

`filter[A057653(n+2), A354032(#)]`
-/

namespace A191218.P5216168494600091177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A191218.P5216168494600091177

namespace A191218

/-- `filter[A057653(n+2), A354032(#)]` -/
def P5216168494600091177.Spec : Prop :=
  ∀ n, P5216168494600091177.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P15777232612921707547

`filter[A046711(n+1), A358678(#)]`
-/

namespace A191218.P15777232612921707547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A191218.P15777232612921707547

namespace A191218

/-- `filter[A046711(n+1), A358678(#)]` -/
def P15777232612921707547.Spec : Prop :=
  ∀ n, P15777232612921707547.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P12831385120138115003

`filter[A097268(n+1), A358678(#)]`
-/

namespace A191218.P12831385120138115003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A191218.P12831385120138115003

namespace A191218

/-- `filter[A097268(n+1), A358678(#)]` -/
def P12831385120138115003.Spec : Prop :=
  ∀ n, P12831385120138115003.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P8829987015040299921

`filter[A182358(n+1), A354035(#)]`
-/

namespace A191218.P8829987015040299921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A191218.P8829987015040299921

namespace A191218

/-- `filter[A182358(n+1), A354035(#)]` -/
def P8829987015040299921.Spec : Prop :=
  ∀ n, P8829987015040299921.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P607928889911439117

`filter[A182358(n+1), A358678(#)]`
-/

namespace A191218.P607928889911439117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A191218.P607928889911439117

namespace A191218

/-- `filter[A182358(n+1), A358678(#)]` -/
def P607928889911439117.Spec : Prop :=
  ∀ n, P607928889911439117.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P4226612984409175405

`filter[A182358(n+1), A359150(#)]`
-/

namespace A191218.P4226612984409175405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A191218.P4226612984409175405

namespace A191218

/-- `filter[A182358(n+1), A359150(#)]` -/
def P4226612984409175405.Spec : Prop :=
  ∀ n, P4226612984409175405.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P2299025340007202121

`eq[1, A358678(n+1)]+1`
-/

namespace A191218.P2299025340007202121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191218.P2299025340007202121

namespace A191218

/-- `eq[1, A358678(n+1)]+1` -/
def P2299025340007202121.Spec : Prop :=
  ∀ n, (P2299025340007202121.a n : ℤ) = A191218 (n + 1)

end A191218

/-! ## A191218.P15609378080688010111

`eq[2, A126812(n+1)]+1`
-/

namespace A191218.P15609378080688010111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191218.P15609378080688010111

namespace A191218

/-- `eq[2, A126812(n+1)]+1` -/
def P15609378080688010111.Spec : Prop :=
  ∀ n, (P15609378080688010111.a n : ℤ) = A191218 (n + 1)

end A191218

/-! ## A191218.P17193843039308981395

`filter[A000415(n+1), A358678(#)]`
-/

namespace A191218.P17193843039308981395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A191218.P17193843039308981395

namespace A191218

/-- `filter[A000415(n+1), A358678(#)]` -/
def P17193843039308981395.Spec : Prop :=
  ∀ n, P17193843039308981395.a n = A191218 (n + 1)

end A191218

/-! ## A191218.P3639902359451421501

`filter[A077425(n+1), A347870(#)]`
-/

namespace A191218.P3639902359451421501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A191218.P3639902359451421501

namespace A191218

/-- `filter[A077425(n+1), A347870(#)]` -/
def P3639902359451421501.Spec : Prop :=
  ∀ n, P3639902359451421501.a n = A191218 (n + 1)

end A191218

/-!
# A191219: Positive integers k such that n=k*(2*k-1) satisfies: sigma(n) congruent to 2 modulo 4.

The programs for A191219, there is no canonical definition to state claims against.
-/

/-! ## A191219.P3444466172379121842

`eq[1, A353812((2*n+1)*(n+1))]+1`
-/

namespace A191219.P3444466172379121842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 ((2 * n + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191219.P3444466172379121842

/-! ## A191219.P12305415083506681407

`eq[2, A000203(lcm(n+1, 2*n+1))%4]+1`
-/

namespace A191219.P12305415083506681407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (Nat.lcm (n + 1) (2 * n + 1))) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191219.P12305415083506681407

/-! ## A191219.P8441092373842146647

`eq[2, A325310(A118239(n+1))]`
-/

namespace A191219.P8441092373842146647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325310 (A118239 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191219.P8441092373842146647

/-!
# A191221: Numbers k such that k plus the sum of the digits of k is prime, and R(k) plus the sum of the digits of k is prime, where R(k) = A004086(k).

The programs for A191221, there is no canonical definition to state claims against.
-/

/-! ## A191221.P2279242345057744246

`eq[2, A105700(A062028(n)*A340479(n))]`
-/

namespace A191221.P2279242345057744246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A062028 n * A340479 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191221.P2279242345057744246

/-!
# A191222: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 1 king-move neighboring 1.

The programs for A191222, there is no canonical definition to state claims against.
-/

/-! ## A191222.P12565379653469011223

`record[A256598(and(n, -n))]`
-/

namespace A191222.P12565379653469011223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256598 (Int.land (n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191222.P12565379653469011223

/-!
# A191223: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 2 king-move neighboring 1s.

The programs for A191223, there is no canonical definition to state claims against.
-/

/-! ## A191223.P15009090552936365684

`A041949(n)-A339456(A152915(n))`
-/

namespace A191223.P15009090552936365684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041949 n - A339456 (A152915 n).toNat

end

end A191223.P15009090552936365684

/-! ## A191223.P199302016098291070

`A006530(n+1)+A002375(A005810(n))`
-/

namespace A191223.P199302016098291070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + A002375 (A005810 n).toNat

end

end A191223.P199302016098291070

/-!
# A191225: Number of Ramanujan primes R_k between triangular numbers T(n-1) < R_k <= T(n).

The programs for A191225, there is no canonical definition to state claims against.
-/

/-! ## A191225.P656845848020291139

`A257992(∑[A196185(3*n+4)])`
-/

namespace A191225.P656845848020291139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196185 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191225.P656845848020291139

/-! ## A191225.P1661795786724277775

`A284289(A284289(record[A239964(n)]))`
-/

namespace A191225.P1661795786724277775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A284289 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A191225.P1661795786724277775

/-! ## A191225.P7830278021372977968

`A193238(A008486(n*A181853(n)))`
-/

namespace A191225.P7830278021372977968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A008486 ((n : ℤ) * A181853 n).toNat).toNat

end

end A191225.P7830278021372977968

/-! ## A191225.P15530022122174194054

`A073490(lcm(A036305(n+1), A308624(n+1)))`
-/

namespace A191225.P15530022122174194054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (Int.lcm (A036305 (n + 1)) (A308624 (n + 1)))

end

end A191225.P15530022122174194054

/-! ## A191225.P9906415481988221063

`A001222(A256123(n+1)%A256094(2*n+1))`
-/

namespace A191225.P9906415481988221063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A256123 (n + 1)) (A256094 (2 * n + 1))).toNat

end

end A191225.P9906415481988221063

/-!
# A191228: Greatest Ramanujan prime index less than x, eta(x).

The programs for A191228, the canonical program `A191228.P7558607639382217669` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191228 has offset 1).

The definition of A191228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191228.P14076036516560453462

`∑[char[A104272(n+1)-1]]`
-/

namespace A191228.P14076036516560453462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P14076036516560453462

namespace A191228

/-- `∑[char[A104272(n+1)-1]]` -/
def P14076036516560453462.Spec : Prop :=
  ∀ n, (P14076036516560453462.a n : ℤ) = A191228 (n + 1)

end A191228

/-! ## A191228.P17673166717398647371

`∑[char[A164368(n+1)-1]]`
-/

namespace A191228.P17673166717398647371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P17673166717398647371

namespace A191228

/-- `∑[char[A164368(n+1)-1]]` -/
def P17673166717398647371.Spec : Prop :=
  ∀ n, (P17673166717398647371.a n : ℤ) = A191228 (n + 1)

end A191228

/-! ## A191228.P13459474315148621545

`∑[char[A194658(n+1)-1]]`
-/

namespace A191228.P13459474315148621545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194658 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P13459474315148621545

namespace A191228

/-- `∑[char[A194658(n+1)-1]]` -/
def P13459474315148621545.Spec : Prop :=
  ∀ n, (P13459474315148621545.a n : ℤ) = A191228 (n + 1)

end A191228

/-! ## A191228.P16945308395215774937

`∑[char[A182873(n)+a(n-1)]]` with `a(0)=1`
-/

namespace A191228.P16945308395215774937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A182873 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P16945308395215774937

namespace A191228

/-- `∑[char[A182873(n)+a(n-1)]]` -/
def P16945308395215774937.Spec : Prop :=
  ∀ n, (P16945308395215774937.a n : ℤ) = A191228 (n + 1)

end A191228

/-! ## A191228.P7558607639382217669

`A107347(∑[C(2, ∑{e}[n+1, #+1])])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A191228

/-- `A107347(∑[C(2, ∑{e}[n+1, #+1])])` -/
def P7558607639382217669.Spec : Prop :=
  ∀ n, P7558607639382217669.a n = A191228 (n + 1)

theorem P7558607639382217669.correct : P7558607639382217669.Spec := by
  intro n
  simp only [A191228, Nat.add_sub_cancel]

end A191228

/-! ## A191228.P1808396618340323870

`A107347(A036234(n+1))`
-/

namespace A191228.P1808396618340323870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (A036234 (n + 1)).toNat

end

end A191228.P1808396618340323870

namespace A191228

/-- `A107347(A036234(n+1))` -/
def P1808396618340323870.Spec : Prop :=
  ∀ n, P1808396618340323870.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P15507984576197744593

`A294602(A066169(n+1))`
-/

namespace A191228.P15507984576197744593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A066169 (n + 1)).toNat

end

end A191228.P15507984576197744593

namespace A191228

/-- `A294602(A066169(n+1))` -/
def P15507984576197744593.Spec : Prop :=
  ∀ n, P15507984576197744593.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P13004284451301015816

`A294602(A151800(n+1))`
-/

namespace A191228.P13004284451301015816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A151800 (n + 1)).toNat

end

end A191228.P13004284451301015816

namespace A191228

/-- `A294602(A151800(n+1))` -/
def P13004284451301015816.Spec : Prop :=
  ∀ n, P13004284451301015816.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P1778236748478646520

`A294602(A266620(n+1))`
-/

namespace A191228.P1778236748478646520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A266620 (n + 1)).toNat

end

end A191228.P1778236748478646520

namespace A191228

/-- `A294602(A266620(n+1))` -/
def P1778236748478646520.Spec : Prop :=
  ∀ n, P1778236748478646520.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P3115063374932372252

`A294602(A159477(n+2))`
-/

namespace A191228.P3115063374932372252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A159477 (n + 2)).toNat

end

end A191228.P3115063374932372252

namespace A191228

/-- `A294602(A159477(n+2))` -/
def P3115063374932372252.Spec : Prop :=
  ∀ n, P3115063374932372252.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P17489467242805776622

`A107347(∑[A080339(n+1)])`
-/

namespace A191228.P17489467242805776622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191228.P17489467242805776622

namespace A191228

/-- `A107347(∑[A080339(n+1)])` -/
def P17489467242805776622.Spec : Prop :=
  ∀ n, P17489467242805776622.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P10208590857715244327

`∑[Δ[A056171(A151800(n))]²]`
-/

namespace A191228.P10208590857715244327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A151800 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P10208590857715244327

namespace A191228

/-- `∑[Δ[A056171(A151800(n))]²]` -/
def P10208590857715244327.Spec : Prop :=
  ∀ n, P10208590857715244327.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P3701325902658868276

`A107347(A000720(n+1)+1)`
-/

namespace A191228.P3701325902658868276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (A000720 (n + 1) + 1).toNat

end

end A191228.P3701325902658868276

namespace A191228

/-- `A107347(A000720(n+1)+1)` -/
def P3701325902658868276.Spec : Prop :=
  ∀ n, P3701325902658868276.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P4690781840869882346

`A107347(A230980(n+1)+1)`
-/

namespace A191228.P4690781840869882346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (A230980 (n + 1) + 1).toNat

end

end A191228.P4690781840869882346

namespace A191228

/-- `A107347(A230980(n+1)+1)` -/
def P4690781840869882346.Spec : Prop :=
  ∀ n, P4690781840869882346.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P5612006789352471855

`A056171(A151800(n+1)-1)`
-/

namespace A191228.P5612006789352471855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A151800 (n + 1) - 1).toNat

end

end A191228.P5612006789352471855

namespace A191228

/-- `A056171(A151800(n+1)-1)` -/
def P5612006789352471855.Spec : Prop :=
  ∀ n, P5612006789352471855.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P15719145854305882868

`A056171(A007918(n+2)-1)`
-/

namespace A191228.P15719145854305882868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A007918 (n + 2) - 1).toNat

end

end A191228.P15719145854305882868

namespace A191228

/-- `A056171(A007918(n+2)-1)` -/
def P15719145854305882868.Spec : Prop :=
  ∀ n, P15719145854305882868.a n = A191228 (n + 1)

end A191228

/-! ## A191228.P1555556984741657277

`∑[char[A000010(A104272(n+1))]]`
-/

namespace A191228.P1555556984741657277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104272 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P1555556984741657277

namespace A191228

/-- `∑[char[A000010(A104272(n+1))]]` -/
def P1555556984741657277.Spec : Prop :=
  ∀ n, (P1555556984741657277.a n : ℤ) = A191228 (n + 1)

end A191228

/-! ## A191228.P9613056103828909750

`∑[char[A000010(A164368(n+1))]]`
-/

namespace A191228.P9613056103828909750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A164368 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P9613056103828909750

namespace A191228

/-- `∑[char[A000010(A164368(n+1))]]` -/
def P9613056103828909750.Spec : Prop :=
  ∀ n, (P9613056103828909750.a n : ℤ) = A191228 (n + 1)

end A191228

/-! ## A191228.P3042926874336264502

`∑[char[A000010(A194658(n+1))]]`
-/

namespace A191228.P3042926874336264502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A194658 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191228.P3042926874336264502

namespace A191228

/-- `∑[char[A000010(A194658(n+1))]]` -/
def P3042926874336264502.Spec : Prop :=
  ∀ n, (P3042926874336264502.a n : ℤ) = A191228 (n + 1)

end A191228

/-! ## A191228.P1150570823601136989

`A056171(Δ[∑[A151800(n)]-n])`
-/

namespace A191228.P1150570823601136989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (f1 (n + 1) - f1 n).toNat

end

end A191228.P1150570823601136989

namespace A191228

/-- `A056171(Δ[∑[A151800(n)]-n])` -/
def P1150570823601136989.Spec : Prop :=
  ∀ n, P1150570823601136989.a n = A191228 (n + 1)

end A191228

/-!
# A191229: Integers in (1+A191120)/3; contains A191120 as a proper subsequence.

The programs for A191229, there is no canonical definition to state claims against.
-/

/-! ## A191229.P15746189915961130123

`ceil(A191180(n+1)/2)`
-/

namespace A191229.P15746189915961130123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191180 (n + 1) : ℚ) / 2⌉

end

end A191229.P15746189915961130123

/-! ## A191229.P1081926260084606614

`ceil(A191210(n+1)/4)`
-/

namespace A191229.P1081926260084606614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191210 (n + 1) : ℚ) / 4⌉

end

end A191229.P1081926260084606614

/-! ## A191229.P1037996390359065365

`A191196(A028310(n))+A057427(n)`
-/

namespace A191229.P1037996390359065365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (A028310 n).toNat + A057427 n

end

end A191229.P1037996390359065365

/-! ## A191229.P13288582214529653357

`A191196(A028310(n))-A057428(n)`
-/

namespace A191229.P13288582214529653357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (A028310 n).toNat - A057428 n

end

end A191229.P13288582214529653357

/-! ## A191229.P795427828583303921

`A191196(A028310(n))%A027658(n)+1`
-/

namespace A191229.P795427828583303921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191196 (A028310 n).toNat) (A027658 n) + 1

end

end A191229.P795427828583303921

/-! ## A191229.P16363635458425233662

`A191196(A028310(n))+sqrt(A001248(n+1))%2`
-/

namespace A191229.P16363635458425233662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191196 (A028310 n).toNat + Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 2

end

end A191229.P16363635458425233662

/-! ## A191229.P9272754015099513282

`(A191180(n+1)+A000034(2*n))/2`
-/

namespace A191229.P9272754015099513282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191180 (n + 1) + A000034 (2 * n) : ℚ) / 2

end

end A191229.P9272754015099513282

/-! ## A191229.P9804991704345479873

`A014682(A191180(n+1)+1)`
-/

namespace A191229.P9804991704345479873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191180 (n + 1) + 1).toNat

end

end A191229.P9804991704345479873

/-! ## A191229.P4117413694589505576

`A328399(A191180(n+1)-1)`
-/

namespace A191229.P4117413694589505576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A191180 (n + 1) - 1).toNat

end

end A191229.P4117413694589505576

/-! ## A191229.P9071721262216588079

`A328399(xor(1, A191180(n+1)))`
-/

namespace A191229.P9071721262216588079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (Int.xor 1 (A191180 (n + 1))).toNat

end

end A191229.P9071721262216588079

/-! ## A191229.P8887776948122838860

`A175126(A191180(n+1)+1)`
-/

namespace A191229.P8887776948122838860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A191180 (n + 1) + 1).toNat

end

end A191229.P8887776948122838860

/-! ## A191229.P9969522783496349515

`A000463(A191180(n+1))`
-/

namespace A191229.P9969522783496349515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A191180 (n + 1)).toNat

end

end A191229.P9969522783496349515

/-! ## A191229.P486246196465920582

`A004526(A191180(n+1)+1)`
-/

namespace A191229.P486246196465920582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191180 (n + 1) + 1).toNat

end

end A191229.P486246196465920582

/-! ## A191229.P12390280205563194935

`A029578(A191180(n+1)+1)`
-/

namespace A191229.P12390280205563194935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A191180 (n + 1) + 1).toNat

end

end A191229.P12390280205563194935

/-! ## A191229.P5081845677180330808

`A000463((A191210(n+1)+1)/2)`
-/

namespace A191229.P5081845677180330808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway ((A191210 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A191229.P5081845677180330808

/-! ## A191229.P8827550630172056615

`A008621(A191210(n+1))`
-/

namespace A191229.P8827550630172056615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A191210 (n + 1)).toNat

end

end A191229.P8827550630172056615

/-! ## A191229.P237109600758456392

`A002265(A191210(n+1)+4)`
-/

namespace A191229.P237109600758456392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A191210 (n + 1) + 4).toNat

end

end A191229.P237109600758456392

/-! ## A191229.P740533647830066830

`A002265(2*(A191180(n+1)+1))`
-/

namespace A191229.P740533647830066830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A191180 (n + 1) + 1)).toNat

end

end A191229.P740533647830066830

/-! ## A191229.P12275473833839117011

`A002265(A191180(n+1)+A191180(n+1)+2)`
-/

namespace A191229.P12275473833839117011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A191180 (n + 1) + (A191180 (n + 1) + 2)).toNat

end

end A191229.P12275473833839117011

/-!
# A191230: Positions of 0 in A191152; complement of A191231.

The programs for A191230, the canonical program `A191230.P13694247197576503895` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191230 has offset 1).

The definition of A191230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191230.P5591497450747722432

`lt[A344348(2*n), n]`
-/

namespace A191230.P5591497450747722432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344348 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191230.P5591497450747722432

namespace A191230

/-- `lt[A344348(2*n), n]` -/
def P5591497450747722432.Spec : Prop :=
  ∀ n, (P5591497450747722432.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P13694247197576503895

`eq[1, A019426(A195182(2*n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191230

/-- `eq[1, A019426(A195182(2*n))]` -/
def P13694247197576503895.Spec : Prop :=
  ∀ n, (P13694247197576503895.a n : ℤ) = A191230 (n + 1)

theorem P13694247197576503895.correct : P13694247197576503895.Spec := by
  intro n
  simp only [A191230, Nat.add_sub_cancel]

end A191230

/-! ## A191230.P2898749669823927603

`eq[1, A121384(2*n)-A022852(2*n)]`
-/

namespace A191230.P2898749669823927603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (2 * n) - A022852 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191230.P2898749669823927603

namespace A191230

/-- `eq[1, A121384(2*n)-A022852(2*n)]` -/
def P2898749669823927603.Spec : Prop :=
  ∀ n, (P2898749669823927603.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P10812830847728897265

`eq[1, A019427(A195182(A005843(n)))]`
-/

namespace A191230.P10812830847728897265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A195182 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191230.P10812830847728897265

namespace A191230

/-- `eq[1, A019427(A195182(A005843(n)))]` -/
def P10812830847728897265.Spec : Prop :=
  ∀ n, (P10812830847728897265.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P3992999150485217723

`record[A028242(n)-A019426(A195182(n))]`
-/

namespace A191230.P3992999150485217723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n - A019426 (A195182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191230.P3992999150485217723

namespace A191230

/-- `record[A028242(n)-A019426(A195182(n))]` -/
def P3992999150485217723.Spec : Prop :=
  ∀ n, P3992999150485217723.a n = A191230 (n + 1)

end A191230

/-! ## A191230.P11605569885657439095

`eq[A000007(n), A000035(A195182(2*n))]`
-/

namespace A191230.P11605569885657439095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191230.P11605569885657439095

namespace A191230

/-- `eq[A000007(n), A000035(A195182(2*n))]` -/
def P11605569885657439095.Spec : Prop :=
  ∀ n, (P11605569885657439095.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P2450296404480317839

`eq[A000035(A195182(2*n)), A000038(n)]`
-/

namespace A191230.P2450296404480317839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195182 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191230.P2450296404480317839

namespace A191230

/-- `eq[A000035(A195182(2*n)), A000038(n)]` -/
def P2450296404480317839.Spec : Prop :=
  ∀ n, (P2450296404480317839.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P12630051845165710438

`eq[A033999(A195182(2*n)), A057427(n)]`
-/

namespace A191230.P12630051845165710438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A195182 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191230.P12630051845165710438

namespace A191230

/-- `eq[A033999(A195182(2*n)), A057427(n)]` -/
def P12630051845165710438.Spec : Prop :=
  ∀ n, (P12630051845165710438.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P12821347734882017731

`eq[A000007(2*n), A135481(A195182(2*n))]`
-/

namespace A191230.P12821347734882017731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191230.P12821347734882017731

namespace A191230

/-- `eq[A000007(2*n), A135481(A195182(2*n))]` -/
def P12821347734882017731.Spec : Prop :=
  ∀ n, (P12821347734882017731.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P16520509595883336294

`eq[A000038(2*n), A135481(A195182(2*n))]`
-/

namespace A191230.P16520509595883336294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191230.P16520509595883336294

namespace A191230

/-- `eq[A000038(2*n), A135481(A195182(2*n))]` -/
def P16520509595883336294.Spec : Prop :=
  ∀ n, (P16520509595883336294.a n : ℤ) = A191230 (n + 1)

end A191230

/-! ## A191230.P10061288431382032431

`record[A054576(A283777(n+1))]`
-/

namespace A191230.P10061288431382032431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A283777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191230.P10061288431382032431

namespace A191230

/-- `record[A054576(A283777(n+1))]` -/
def P10061288431382032431.Spec : Prop :=
  ∀ n, P10061288431382032431.a n = A191230 (n + 1)

end A191230

/-! ## A191230.P2330991482020134143

`eq[1, A019425(A276853(2*n))]`
-/

namespace A191230.P2330991482020134143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A276853 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191230.P2330991482020134143

namespace A191230

/-- `eq[1, A019425(A276853(2*n))]` -/
def P2330991482020134143.Spec : Prop :=
  ∀ n, (P2330991482020134143.a n : ℤ) = A191230 (n + 1)

end A191230

/-!
# A191231: Positions of 1 in A191152; complement of A191230.

The programs for A191231, the canonical program `A191231.P1577848690134281578` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191231 has offset 1).

The definition of A191231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191231.P1577848690134281578

`filter[n+1, A191152(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191231

/-- `filter[n+1, A191152(#)]` -/
def P1577848690134281578.Spec : Prop :=
  ∀ n, (P1577848690134281578.a n : ℤ) = A191231 (n + 1)

theorem P1577848690134281578.correct : P1577848690134281578.Spec := by
  intro n
  simp only [A191231, Nat.add_sub_cancel]

end A191231

/-! ## A191231.P5756649262779686594

`eq[1, A000035(A195182(2*n))]`
-/

namespace A191231.P5756649262779686594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191231.P5756649262779686594

namespace A191231

/-- `eq[1, A000035(A195182(2*n))]` -/
def P5756649262779686594.Spec : Prop :=
  ∀ n, (P5756649262779686594.a n : ℤ) = A191231 (n + 1)

end A191231

/-! ## A191231.P6459411715159441985

`lt[A195182(n+1), A019425(A195182(2*n))]`
-/

namespace A191231.P6459411715159441985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191231.P6459411715159441985

namespace A191231

/-- `lt[A195182(n+1), A019425(A195182(2*n))]` -/
def P6459411715159441985.Spec : Prop :=
  ∀ n, (P6459411715159441985.a n : ℤ) = A191231 (n + 1)

end A191231

/-! ## A191231.P16426767174515093978

`lt[A019425(2*n), A019425(A195182(2*n))]`
-/

namespace A191231.P16426767174515093978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191231.P16426767174515093978

namespace A191231

/-- `lt[A019425(2*n), A019425(A195182(2*n))]` -/
def P16426767174515093978.Spec : Prop :=
  ∀ n, (P16426767174515093978.a n : ℤ) = A191231 (n + 1)

end A191231

/-! ## A191231.P17807037040187687014

`lt[A019426(2*n), A019426(A195182(2*n))]`
-/

namespace A191231.P17807037040187687014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191231.P17807037040187687014

namespace A191231

/-- `lt[A019426(2*n), A019426(A195182(2*n))]` -/
def P17807037040187687014.Spec : Prop :=
  ∀ n, (P17807037040187687014.a n : ℤ) = A191231 (n + 1)

end A191231

/-! ## A191231.P4638926365495447472

`eq[A033999(2*n+1), A033999(A195182(2*n))]`
-/

namespace A191231.P4638926365495447472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A195182 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191231.P4638926365495447472

namespace A191231

/-- `eq[A033999(2*n+1), A033999(A195182(2*n))]` -/
def P4638926365495447472.Spec : Prop :=
  ∀ n, (P4638926365495447472.a n : ℤ) = A191231 (n + 1)

end A191231

/-!
# A191232: Concatenation of primes written in base 2 (A004676).

The programs for A191232, there is no canonical definition to state claims against.
-/

/-! ## A191232.P10854248622229135246

`floor(A191233(n+1)/A095375(n+1))`
-/

namespace A191232.P10854248622229135246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191233 (n + 1) : ℚ) / (A095375 (n + 1) : ℚ)⌋

end

end A191232.P10854248622229135246

/-! ## A191232.P1579174706039584919

`round(A191233(n+1)/A014580(n+1))`
-/

namespace A191232.P1579174706039584919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191233 (n + 1) : ℚ) / (A014580 (n + 1) : ℚ))

end

end A191232.P1579174706039584919

/-! ## A191232.P10573633962380642421

`floor(A191233(n+1)/∑[A014499(n+1)])`
-/

namespace A191232.P10573633962380642421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191233 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A191232.P10573633962380642421

/-! ## A191232.P10449520198543737244

`floor(A191233(n+1)/(A328659(n+1)-A345867(n+1)))`
-/

namespace A191232.P10449520198543737244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191233 (n + 1) : ℚ) / (A328659 (n + 1) - A345867 (n + 1) : ℚ)⌋

end

end A191232.P10449520198543737244

/-! ## A191232.P14593442329779211506

`A285467(∑[∑[A048645(n+2)]])`
-/

namespace A191232.P14593442329779211506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191232.P14593442329779211506

/-!
# A191234: The number of strong binary words of length n.

The programs for A191234, there is no canonical definition to state claims against.
-/

/-! ## A191234.P3983541126108718419

`A064289(4*A035048(n+1))`
-/

namespace A191234.P3983541126108718419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (4 * A035048 (n + 1)).toNat

end

end A191234.P3983541126108718419

/-! ## A191234.P12147188105556455816

`A071628(A304480(n+1))+A002322(n+1)`
-/

namespace A191234.P12147188105556455816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071628 (A304480 (n + 1)).toNat + A002322 (n + 1)

end

end A191234.P12147188105556455816

/-!
# A191235: Primes p such that the binary representation of p is the concatenation of the binary representations of prime 2 and an odd prime.

The programs for A191235, there is no canonical definition to state claims against.
-/

/-! ## A191235.P2872484647078492193

`∩[A091932(n+1), A262284(n+1)]`
-/

namespace A191235.P2872484647078492193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191235.P2872484647078492193

/-! ## A191235.P134942361669997444

`p?[A004757(p?[2*n+1])]`
-/

namespace A191235.P134942361669997444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P134942361669997444

/-! ## A191235.P12361919171685967601

`p?[A004757(A000040(n+1))]`
-/

namespace A191235.P12361919171685967601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P12361919171685967601

/-! ## A191235.P1735090293982021319

`p?[A004757(A001751(n+1))]`
-/

namespace A191235.P1735090293982021319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P1735090293982021319

/-! ## A191235.P15928776921360334533

`p?[A004757(A004139(n+1))]`
-/

namespace A191235.P15928776921360334533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A004139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P15928776921360334533

/-! ## A191235.P17351787702158543198

`p?[A004757(A045319(n+1))]`
-/

namespace A191235.P17351787702158543198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A045319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P17351787702158543198

/-! ## A191235.P8400702553405750264

`p?[A004757(A065091(n+1))]`
-/

namespace A191235.P8400702553405750264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P8400702553405750264

/-! ## A191235.P17495968443450507578

`p?[A004757(A093515(n+1))]`
-/

namespace A191235.P17495968443450507578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A093515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P17495968443450507578

/-! ## A191235.P10566291630081202616

`p?[A004757(A006005(n+2))]`
-/

namespace A191235.P10566291630081202616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A006005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P10566291630081202616

/-! ## A191235.P7248504210570110807

`p?[A004757(A008578(n+2))]`
-/

namespace A191235.P7248504210570110807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P7248504210570110807

/-! ## A191235.P10779428296793647337

`p?[A004757(sqrt(A001248(n+1)))]`
-/

namespace A191235.P10779428296793647337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P10779428296793647337

/-! ## A191235.P15147482002588538997

`∩[A004757(n+1), A091932(n+1)]`
-/

namespace A191235.P15147482002588538997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191235.P15147482002588538997

/-! ## A191235.P8989139470192766389

`p?[A004757(A007504(n+1)-A007504(n))]`
-/

namespace A191235.P8989139470192766389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (A007504 (n + 1) - A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P8989139470192766389

/-! ## A191235.P15145297015623679557

`p?[A072055(n+1)+A010078(A008864(n+1))]`
-/

namespace A191235.P15145297015623679557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A010078 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P15145297015623679557

/-! ## A191235.P16438441970247143200

`p?[A100484(n+1)+A010078(A000040(n+1))]`
-/

namespace A191235.P16438441970247143200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A010078 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P16438441970247143200

/-! ## A191235.P1880955357909565426

`p?[A010078(A000040(n+1))+A001747(n+2)]`
-/

namespace A191235.P1880955357909565426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A000040 (n + 1)).toNat + A001747 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P1880955357909565426

/-! ## A191235.P5254758525156330882

`p?[A048985(A073582(n+1))]`
-/

namespace A191235.P5254758525156330882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048985 (A073582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P5254758525156330882

/-! ## A191235.P4931927732716736253

`p?[A048985(A100484(n+1))]`
-/

namespace A191235.P4931927732716736253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048985 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P4931927732716736253

/-! ## A191235.P10278602116091085465

`p?[A048985(2*A000040(n+1))]`
-/

namespace A191235.P10278602116091085465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048985 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P10278602116091085465

/-! ## A191235.P17441251136832836767

`p?[A230625(2*A000040(n+1))]`
-/

namespace A191235.P17441251136832836767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230625 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191235.P17441251136832836767

/-!
# A191236: Number of ways to place n nonattacking bishops on black squares of a 2n X 2n board.

The programs for A191236, there is no canonical definition to state claims against.
-/

/-! ## A191236.P17890746625359340163

`abs(A217905(n+1))`
-/

namespace A191236.P17890746625359340163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217905 (n + 1)|

end

end A191236.P17890746625359340163

/-! ## A191236.P11115799141717819807

`Δ[-∑[A217905(n)]]`
-/

namespace A191236.P11115799141717819807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191236.P11115799141717819807

/-! ## A191236.P10437688875193751577

`record[abs(A217905(A025581(n)))]`
-/

namespace A191236.P10437688875193751577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217905 (A025581 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191236.P10437688875193751577

/-! ## A191236.P4171062843186334946

`record[abs(A217905(A110657(n)))]`
-/

namespace A191236.P4171062843186334946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217905 (A110657 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191236.P4171062843186334946

/-! ## A191236.P5478551661271598099

`lcm(A001316(n), A217905(n+1))`
-/

namespace A191236.P5478551661271598099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A217905 (n + 1))

end

end A191236.P5478551661271598099

/-! ## A191236.P1574387647570058758

`record[-A217905(A002260(n+1))]`
-/

namespace A191236.P1574387647570058758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A217905 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191236.P1574387647570058758

/-! ## A191236.P1201002782010861410

`A000035(2*n)-A217905(n+1)`
-/

namespace A191236.P1201002782010861410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A217905 (n + 1)

end

end A191236.P1201002782010861410

/-! ## A191236.P3273394677793545994

`char[A101639(n+1)]-A217905(n+1)`
-/

namespace A191236.P3273394677793545994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101639 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A217905 (n + 1)

end

end A191236.P3273394677793545994

/-! ## A191236.P8602315982193800965

`char[A101640(n+1)]-A217905(n+1)`
-/

namespace A191236.P8602315982193800965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101640 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A217905 (n + 1)

end

end A191236.P8602315982193800965

/-! ## A191236.P8239879729440674052

`char[(A000040(n+1)^3)²]-A217905(n+1)`
-/

namespace A191236.P8239879729440674052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 3) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A217905 (n + 1)

end

end A191236.P8239879729440674052

/-!
# A191237: Expansion of e.g.f. exp(x+x^3+x^5).

The programs for A191237, there is no canonical definition to state claims against.
-/

/-! ## A191237.P5580957040910337120

`A004179(A118395(n)+A052787(n))`
-/

namespace A191237.P5580957040910337120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A118395 n + A052787 n).toNat

end

end A191237.P5580957040910337120

/-! ## A191237.P9565303135935483747

`A004179(A118396(n)+A052787(n))`
-/

namespace A191237.P9565303135935483747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A118396 n + A052787 n).toNat

end

end A191237.P9565303135935483747

/-! ## A191237.P416425342756103064

`A026741(A118395(n)+A052787(n))`
-/

namespace A191237.P416425342756103064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A118395 n + A052787 n).toNat

end

end A191237.P416425342756103064

/-! ## A191237.P15247562244814177896

`A026741(A118396(n)+A052787(n))`
-/

namespace A191237.P15247562244814177896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A118396 n + A052787 n).toNat

end

end A191237.P15247562244814177896

/-!
# A191238: Triangle T(n,k) = coefficient of x^n in expansion of (x+x^3+x^5)^k.

The programs for A191238, there is no canonical definition to state claims against.
-/

/-! ## A191238.P394909405537287990

`and(A086970(A185810(n)), A253190(n+1))`
-/

namespace A191238.P394909405537287990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086970 (A185810 n).toNat) (A253190 (n + 1))

end

end A191238.P394909405537287990

/-! ## A191238.P10335567341661487644

`A253190(n+1)%A076342(A008305(n+1))`
-/

namespace A191238.P10335567341661487644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253190 (n + 1)) (A076342 (A008305 (n + 1)).toNat)

end

end A191238.P10335567341661487644

/-! ## A191238.P9998530224708026342

`A253190(n+1)%A249484(A331572(n))`
-/

namespace A191238.P9998530224708026342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253190 (n + 1)) (A249484 (A331572 n).toNat)

end

end A191238.P9998530224708026342

/-! ## A191238.P16054225306213145435

`A091247(A196268(2*(n+2)))*A168561(n)`
-/

namespace A191238.P16054225306213145435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A196268 (2 * (n + 2))).toNat * A168561 n

end

end A191238.P16054225306213145435

/-! ## A191238.P11568228327478259781

`and(A171253(n+1), A253190(n+1))`
-/

namespace A191238.P11568228327478259781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171253 (n + 1)) (A253190 (n + 1))

end

end A191238.P11568228327478259781

/-!
# A191239: Triangle T(n,k) = coefficient of x^n in expansion of (x+x^2+2*x^3)^k.

The programs for A191239, there is no canonical definition to state claims against.
-/

/-! ## A191239.P13794029338928661383

`A189175(n)%A233583(A094275(n+1))`
-/

namespace A191239.P13794029338928661383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189175 n) (A233583 (A094275 (n + 1)).toNat)

end

end A191239.P13794029338928661383

/-! ## A191239.P14250967769229914055

`and(A105306(n+1), A132209(A174109(n)))`
-/

namespace A191239.P14250967769229914055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105306 (n + 1)) (A132209 (A174109 n).toNat)

end

end A191239.P14250967769229914055

/-! ## A191239.P17993180414990558061

`and(A006512(A295956(n)), A105306(n+1))`
-/

namespace A191239.P17993180414990558061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006512 (A295956 n).toNat) (A105306 (n + 1))

end

end A191239.P17993180414990558061

/-! ## A191239.P16324818602592203508

`and(A105306(n+1), A144396(A302832(n)))`
-/

namespace A191239.P16324818602592203508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105306 (n + 1)) (A144396 (A302832 n).toNat)

end

end A191239.P16324818602592203508

/-! ## A191239.P7452750678436603196

`and(A020639(A048488(n)), A105306(n+1))`
-/

namespace A191239.P7452750678436603196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A048488 n).toNat) (A105306 (n + 1))

end

end A191239.P7452750678436603196

/-!
# A191240: Primes whose binary digits are the concatenation of the first k bits in the concatenation of the bits of the primes.

The programs for A191240, there is no canonical definition to state claims against.
-/

/-! ## A191240.P7600408851203231806

`p?[A054386(2^n)]`
-/

namespace A191240.P7600408851203231806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191240.P7600408851203231806

/-!
# A191241: Reversion of x - x^2 - 2*x^5.

The programs for A191241, there is no canonical definition to state claims against.
-/

/-! ## A191241.P2863817537658863769

`A076885(A149981(n))`
-/

namespace A191241.P2863817537658863769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A149981 n).toNat

end

end A191241.P2863817537658863769

/-! ## A191241.P1619284094595674303

`A261585(A102434(n+1))`
-/

namespace A191241.P1619284094595674303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A102434 (n + 1)).toNat

end

end A191241.P1619284094595674303

/-! ## A191241.P16067609981896202862

`ceil(A289120(A001835(n+1))/3)+1`
-/

namespace A191241.P16067609981896202862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289120 (A001835 (n + 1)).toNat : ℚ) / 3⌉ + 1

end

end A191241.P16067609981896202862

/-! ## A191241.P11319350522140351748

`A261585(eq[3, A305389(n)]+∏[4-2/(n+1)]/2)`
-/

namespace A191241.P11319350522140351748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) + (∏ j ∈ Finset.range (n + 1), f3 j) / 2)).toNat

end

end A191241.P11319350522140351748

/-!
# A191242: Reversion of x-x^2-x^3-2*x^4.

The programs for A191242, there is no canonical definition to state claims against.
-/

/-! ## A191242.P12220584770945357605

`A154958(A273582(n+2)+A028235(n+1))`
-/

namespace A191242.P12220584770945357605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A273582 (n + 2) + A028235 (n + 1)).toNat

end

end A191242.P12220584770945357605

/-! ## A191242.P15804783732314695132

`A103221(A273582(n+2)+A191558(n+1))`
-/

namespace A191242.P15804783732314695132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A273582 (n + 2) + A191558 (n + 1)).toNat

end

end A191242.P15804783732314695132

/-!
# A191243: Reversion of x-x^2-x^3-x^4-x^5-x^6.

The programs for A191243, there is no canonical definition to state claims against.
-/

/-! ## A191243.P8059062155072664523

`A034586(A049134(n+2))`
-/

namespace A191243.P8059062155072664523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034586 (A049134 (n + 2)).toNat

end

end A191243.P8059062155072664523

/-! ## A191243.P9177257833107293095

`A056966(A090338(n))+A049160(n)`
-/

namespace A191243.P9177257833107293095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056966 (A090338 n).toNat + A049160 n

end

end A191243.P9177257833107293095

/-! ## A191243.P3471626162522202505

`A001003(n)-A025444(A076875(n))`
-/

namespace A191243.P3471626162522202505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - A025444 (A076875 n).toNat

end

end A191243.P3471626162522202505

/-! ## A191243.P17468104519943914784

`A001003(n)-A321936(A011782(n))`
-/

namespace A191243.P17468104519943914784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - A321936 (A011782 n).toNat

end

end A191243.P17468104519943914784

/-!
# A191245: Primes that remain prime if the bit pattern 10 is attached as the most-significant bits to their binary representation.

The programs for A191245, there is no canonical definition to state claims against.
-/

/-! ## A191245.P1480232157066190254

`A053645(A191235(n+1))`
-/

namespace A191245.P1480232157066190254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A191235 (n + 1)).toNat

end

end A191245.P1480232157066190254

/-! ## A191245.P5284889943102892830

`A053646(p?[A191235(n+1)])`
-/

namespace A191245.P5284889943102892830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A191245.P5284889943102892830

/-! ## A191245.P4318477241631379265

`A087734(p?[A191235(n+1)])`
-/

namespace A191245.P4318477241631379265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A191245.P4318477241631379265

/-! ## A191245.P5818362365216643592

`p?[A053645(A262284(n+1))]`
-/

namespace A191245.P5818362365216643592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A262284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191245.P5818362365216643592

/-! ## A191245.P17464182201136421741

`A266539(p?[A191235(n+1)])`
-/

namespace A191245.P17464182201136421741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A191245.P17464182201136421741

/-! ## A191245.P5118049664678659928

`A266539(A191235(n+1)+1)`
-/

namespace A191245.P5118049664678659928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (A191235 (n + 1) + 1).toNat

end

end A191245.P5118049664678659928

/-! ## A191245.P4898283024183631294

`A062050(A191235(n+1)-1)`
-/

namespace A191245.P4898283024183631294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A191235 (n + 1) - 1).toNat

end

end A191245.P4898283024183631294

/-! ## A191245.P1350725867426998651

`A053646(or(1, A191235(n+1)))`
-/

namespace A191245.P1350725867426998651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (Int.lor 1 (A191235 (n + 1))).toNat

end

end A191245.P1350725867426998651

/-! ## A191245.P4957205776198999131

`A087734(or(1, A191235(n+1)))`
-/

namespace A191245.P4957205776198999131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (Int.lor 1 (A191235 (n + 1))).toNat

end

end A191245.P4957205776198999131

/-! ## A191245.P5170070751720179320

`∑{d}[A053646(A191235(n+1)), A000010(#)]`
-/

namespace A191245.P5170070751720179320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A191235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A191245.P5170070751720179320

/-!
# A191246: Length of prefix cyclically shifted with permutations in cool-lex ordering.

The programs for A191246, there is no canonical definition to state claims against.
-/

/-! ## A191246.P11764448730423712726

`A002828(A250162(n+1)%A100172(n+1))`
-/

namespace A191246.P11764448730423712726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (A250162 (n + 1)) (A100172 (n + 1))).toNat

end

end A191246.P11764448730423712726

/-! ## A191246.P1410333782763360068

`A001221(A240160(n+1)+A165765(3*n+1))`
-/

namespace A191246.P1410333782763360068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A240160 (n + 1) + A165765 (3 * n + 1)).toNat

end

end A191246.P1410333782763360068

/-! ## A191246.P7924605734959371916

`A109301((floor(n/(xor(n, n+1)+1))+1)*A304806(n))`
-/

namespace A191246.P7924605734959371916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 ((⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) * A304806 n).toNat

end

end A191246.P7924605734959371916

/-! ## A191246.P2591135420076725727

`A001222(lcm(A054486(n), A274007(n)))`
-/

namespace A191246.P2591135420076725727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A054486 n) (A274007 n))

end

end A191246.P2591135420076725727

/-!
# A191247: First element in permutations in cool-lex ordering.

The programs for A191247, there is no canonical definition to state claims against.
-/

/-! ## A191247.P8049464802386127163

`A036584(n)%A000796(A038283(n))`
-/

namespace A191247.P8049464802386127163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036584 n) (A000796 ((A038283 n).toNat + 1))

end

end A191247.P8049464802386127163

/-! ## A191247.P10851673045086163255

`A318655(Δ[A006218(n)]^A098668(n+1))`
-/

namespace A191247.P10851673045086163255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) ^ (A098668 (n + 1) : ℤ))).toNat

end

end A191247.P10851673045086163255

/-! ## A191247.P14165391029034677497

`A010059(A060693(3*n+1))*A036584(n)`
-/

namespace A191247.P14165391029034677497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A060693 (3 * n + 1)).toNat * A036584 n

end

end A191247.P14165391029034677497

/-! ## A191247.P9128574097712600962

`A318655(A000005(n+1)^A028233(n+1))`
-/

namespace A191247.P9128574097712600962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (SequenceMachineLib.roundAway ((A000005 (n + 1) : ℚ) ^ (A028233 (n + 1) : ℤ))).toNat

end

end A191247.P9128574097712600962

/-! ## A191247.P6518202270533909733

`round(A139716(n+1)/A106466(A187829(n+1)))`
-/

namespace A191247.P6518202270533909733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139716 (n + 1) : ℚ) / (A106466 (A187829 (n + 1)).toNat : ℚ))

end

end A191247.P6518202270533909733

/-!
# A191249: Triangular array T(n,k) read by rows: number of labeled relations of the n-set with exactly k connected components.

The programs for A191249, there is no canonical definition to state claims against.
-/

/-! ## A191249.P3467346357520214180

`∏[char[∑[n]]+1]*A189898(n+1)`
-/

namespace A191249.P3467346357520214180
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A189898 (n + 1)

end

end A191249.P3467346357520214180

/-!
# A191250: Fixed point of the morphism 0 -> 01, 1 -> 02, 2 -> 001.

The programs for A191250, there is no canonical definition to state claims against.
-/

/-! ## A191250.P5717798275843691889

`A324852(A209229(A000013(n))+A000982(n))`
-/

namespace A191250.P5717798275843691889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A209229 (A000013 n).toNat + A000982 n).toNat

end

end A191250.P5717798275843691889

/-! ## A191250.P1366955420394851757

`and(A084642(A001611(n)), A183086(n+4))`
-/

namespace A191250.P1366955420394851757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084642 (A001611 n).toNat) (A183086 (n + 4))

end

end A191250.P1366955420394851757

/-! ## A191250.P8045615675827160741

`and(A084642(A157729(n)), A183086(n+4))`
-/

namespace A191250.P8045615675827160741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084642 (A157729 n).toNat) (A183086 (n + 4))

end

end A191250.P8045615675827160741

/-! ## A191250.P7058044560791181668

`A287397(A325952(n))`
-/

namespace A191250.P7058044560791181668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287397 (A325952 n).toNat

end

end A191250.P7058044560791181668

/-!
# A191251: Positions of 0 in A191250.

The programs for A191251, there is no canonical definition to state claims against.
-/

/-! ## A191251.P8891990881028430135

`eq[1, exp(a(A191250(n)))]` with `a(0)=0`
-/

namespace A191251.P8891990881028430135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A191250 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A191251.P8891990881028430135

/-! ## A191251.P4900847157242909340

`eq[0, A191250(n+1)]+1`
-/

namespace A191251.P4900847157242909340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191251.P4900847157242909340

/-! ## A191251.P525456845075422581

`eq[1, A000070(a(A191250(n)))]` with `a(0)=0`
-/

namespace A191251.P525456845075422581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000070 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191251.P525456845075422581

/-! ## A191251.P14533475377910575007

`eq[1, A000079(a(A191250(n)))]` with `a(0)=0`
-/

namespace A191251.P14533475377910575007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000079 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191251.P14533475377910575007

/-! ## A191251.P13597429482158252664

`eq[1, A000097(a(A191250(n)))]` with `a(0)=0`
-/

namespace A191251.P13597429482158252664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000097 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191251.P13597429482158252664

/-! ## A191251.P11318835352874509750

`eq[1, A000124(a(A191250(n)))]` with `a(0)=0`
-/

namespace A191251.P11318835352874509750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000124 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191251.P11318835352874509750

/-! ## A191251.P11514878253607838876

`eq[1, A000065(a(A191250(n)))]` with `a(0)=2`
-/

namespace A191251.P11514878253607838876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000065 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191251.P11514878253607838876

/-! ## A191251.P14477910108362473067

`eq[0, A191250(A000038(n)+n)]`
-/

namespace A191251.P14477910108362473067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191251.P14477910108362473067

/-! ## A191251.P9263560619413210204

`lt[n*A191250(A028310(n)), n]`
-/

namespace A191251.P9263560619413210204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A191250 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191251.P9263560619413210204

/-! ## A191251.P236180585413777843

`record[A000027(n+1)-A191250(n+1)]`
-/

namespace A191251.P236180585413777843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A191250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191251.P236180585413777843

/-!
# A191252: Positions of 1 in A191250.

The programs for A191252, there is no canonical definition to state claims against.
-/

/-! ## A191252.P2815574439027304221

`eq[1, log2(a(A191250(n)))]` with `a(0)=4`
-/

namespace A191252.P2815574439027304221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.logb 2 (f2 (A191250 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A191252.P2815574439027304221

/-! ## A191252.P17390095883068374315

`eq[1, A191250(n+1)]+1`
-/

namespace A191252.P17390095883068374315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191252.P17390095883068374315

/-! ## A191252.P7283449970335256964

`eq[1, A191250(A028310(n))]`
-/

namespace A191252.P7283449970335256964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P7283449970335256964

/-! ## A191252.P2753975772661139798

`eq[1, A001222(a(A191250(n)))]` with `a(0)=4`
-/

namespace A191252.P2753975772661139798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P2753975772661139798

/-! ## A191252.P14574094340049152408

`eq[1, A000267(a(A191250(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A191252.P14574094340049152408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A000267 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P14574094340049152408

/-! ## A191252.P2818975943698921677

`eq[1, A135491(a(A191250(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A191252.P2818975943698921677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A135491 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P2818975943698921677

/-! ## A191252.P15866936239793927440

`eq[1, A195054(a(A191250(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A191252.P15866936239793927440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A195054 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P15866936239793927440

/-! ## A191252.P8999982885809550210

`eq[1, A008611(a(A191250(n)))]` with `a(0)=3, a(1)=0`
-/

namespace A191252.P8999982885809550210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  A008611 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P8999982885809550210

/-! ## A191252.P6814319114931863997

`eq[1, A008624(a(A191250(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A191252.P6814319114931863997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  A008624 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P6814319114931863997

/-! ## A191252.P15522265073653683995

`eq[1, A000034(a(A191250(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A191252.P15522265073653683995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A000034 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191252.P15522265073653683995

/-!
# A191253: Positions of 2 in A191250.

The programs for A191253, there is no canonical definition to state claims against.
-/

/-! ## A191253.P17067285562511181753

`A191252(A191252(n+1)-n)-2`
-/

namespace A191253.P17067285562511181753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191252 (A191252 (n + 1) - (n : ℤ)).toNat - 2

end

end A191253.P17067285562511181753

/-! ## A191253.P14188216902128642420

`lt[1, A191250(n+1)]+1`
-/

namespace A191253.P14188216902128642420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191253.P14188216902128642420

/-! ## A191253.P9296464541599340523

`lt[1, A191250(A028310(n))]`
-/

namespace A191253.P9296464541599340523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191253.P9296464541599340523

/-! ## A191253.P4197632785500912460

`eq[1, A000045(a(A191250(n)))]` with `a(0)=4`
-/

namespace A191253.P4197632785500912460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P4197632785500912460

/-! ## A191253.P10823042625392787508

`eq[1, A000010(a(A191250(n)))]` with `a(0)=8`
-/

namespace A191253.P10823042625392787508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A000010 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P10823042625392787508

/-! ## A191253.P11575675129707864772

`eq[1, A007318(a(A191250(n)))]` with `a(0)=11`
-/

namespace A191253.P11575675129707864772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f2 =>
  A007318 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P11575675129707864772

/-! ## A191253.P14261338832783005695

`eq[2, A191250(A000038(n)+n)]`
-/

namespace A191253.P14261338832783005695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P14261338832783005695

/-! ## A191253.P833886281819990558

`eq[1, A000079(a(A191250(n)))]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A191253.P833886281819990558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  A000079 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P833886281819990558

/-! ## A191253.P2353041377102215283

`eq[1, A000097(a(A191250(n)))]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A191253.P2353041377102215283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  A000097 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P2353041377102215283

/-! ## A191253.P9133130842988809177

`eq[1, A000267(a(A191250(n)))]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A191253.P9133130842988809177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  A000267 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P9133130842988809177

/-! ## A191253.P11089639298468712230

`eq[1, A000034(a(A191250(n)))]` with `a(0)=3, a(1)=3, a(2)=2`
-/

namespace A191253.P11089639298468712230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 2] fun n f2 =>
  A000034 (f2 (A191250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191253.P11089639298468712230

/-!
# A191254: Fixed point of the morphism 0 -> 01, 1 -> 02, 2 -> 01.

The programs for A191254, the canonical program `A191254.P17375190648081682118` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191254 has offset 1).

The definition of A191254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191254.P17375190648081682118

`xor(2, xor(n, n+1))%3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191254

/-- `xor(2, xor(n, n+1))%3` -/
def P17375190648081682118.Spec : Prop :=
  ∀ n, (P17375190648081682118.a n : ℤ) = A191254 (n + 1)

theorem P17375190648081682118.correct : P17375190648081682118.Spec := by
  intro n
  simp only [A191254, Nat.add_sub_cancel]

end A191254

/-! ## A191254.P9214881779962807908

`log2((2^val(n+1, 2))%6)`
-/

namespace A191254.P9214881779962807908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 ^ SequenceMachineLib.valuation (n + 1) 2 % 6 : ℕ) : ℝ)

end

end A191254.P9214881779962807908

namespace A191254

/-- `log2((2^val(n+1, 2))%6)` -/
def P9214881779962807908.Spec : Prop :=
  ∀ n, P9214881779962807908.a n = (A191254 (n + 1) : ℝ)

end A191254

/-! ## A191254.P4686478925515429371

`gcd(val(n+1, 2), Δ[or(1, n)])`
-/

namespace A191254.P4686478925515429371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A191254.P4686478925515429371

namespace A191254

/-- `gcd(val(n+1, 2), Δ[or(1, n)])` -/
def P4686478925515429371.Spec : Prop :=
  ∀ n, (P4686478925515429371.a n : ℤ) = A191254 (n + 1)

end A191254

/-! ## A191254.P2182579878700840948

`(val(n+1, 2)-1)%2+1`
-/

namespace A191254.P2182579878700840948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1) 2 + 1

end

end A191254.P2182579878700840948

namespace A191254

/-- `(val(n+1, 2)-1)%2+1` -/
def P2182579878700840948.Spec : Prop :=
  ∀ n, P2182579878700840948.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P1937056913353463831

`and(3, 2*n-val(n+1, 2)²)`
-/

namespace A191254.P1937056913353463831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((2 * n : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 ^ 2 : ℤ))

end

end A191254.P1937056913353463831

namespace A191254

/-- `and(3, 2*n-val(n+1, 2)²)` -/
def P1937056913353463831.Spec : Prop :=
  ∀ n, P1937056913353463831.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P899070127480123329

`A026491(n+1)%4`
-/

namespace A191254.P899070127480123329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026491 (n + 1)) 4

end

end A191254.P899070127480123329

namespace A191254

/-- `A026491(n+1)%4` -/
def P899070127480123329.Spec : Prop :=
  ∀ n, P899070127480123329.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P12291632792092981315

`val(A038387(n+1), 2)`
-/

namespace A191254.P12291632792092981315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038387 (n + 1)).toNat 2

end

end A191254.P12291632792092981315

namespace A191254

/-- `val(A038387(n+1), 2)` -/
def P12291632792092981315.Spec : Prop :=
  ∀ n, (P12291632792092981315.a n : ℤ) = A191254 (n + 1)

end A191254

/-! ## A191254.P14110356102773301403

`val(A066990(n+1), 2)`
-/

namespace A191254.P14110356102773301403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066990 (n + 1)).toNat 2

end

end A191254.P14110356102773301403

namespace A191254

/-- `val(A066990(n+1), 2)` -/
def P14110356102773301403.Spec : Prop :=
  ∀ n, (P14110356102773301403.a n : ℤ) = A191254 (n + 1)

end A191254

/-! ## A191254.P1036996953711634648

`A134451(val(n+1, 2))`
-/

namespace A191254.P1036996953711634648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (SequenceMachineLib.valuation (n + 1) 2)

end

end A191254.P1036996953711634648

namespace A191254

/-- `A134451(val(n+1, 2))` -/
def P1036996953711634648.Spec : Prop :=
  ∀ n, P1036996953711634648.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P7597430802244707009

`A175834(val(n+1, 2))`
-/

namespace A191254.P7597430802244707009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 (SequenceMachineLib.valuation (n + 1) 2)

end

end A191254.P7597430802244707009

namespace A191254

/-- `A175834(val(n+1, 2))` -/
def P7597430802244707009.Spec : Prop :=
  ∀ n, P7597430802244707009.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P14841338559264808297

`and(1, n)*A101662(n)`
-/

namespace A191254.P14841338559264808297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A101662 n

end

end A191254.P14841338559264808297

namespace A191254

/-- `and(1, n)*A101662(n)` -/
def P14841338559264808297.Spec : Prop :=
  ∀ n, P14841338559264808297.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P3869365306337399029

`ceil(log(A089242(n+1)))`
-/

namespace A191254.P3869365306337399029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A089242 (n + 1) : ℝ)⌉

end

end A191254.P3869365306337399029

namespace A191254

/-- `ceil(log(A089242(n+1)))` -/
def P3869365306337399029.Spec : Prop :=
  ∀ n, P3869365306337399029.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P1139675853482008467

`Δ[or(1, n)]-A096268(n)`
-/

namespace A191254.P1139675853482008467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A096268 n

end

end A191254.P1139675853482008467

namespace A191254

/-- `Δ[or(1, n)]-A096268(n)` -/
def P1139675853482008467.Spec : Prop :=
  ∀ n, P1139675853482008467.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P7235743839436137388

`A000975(val(n+1, 2))%4`
-/

namespace A191254.P7235743839436137388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000975 (SequenceMachineLib.valuation (n + 1) 2)) 4

end

end A191254.P7235743839436137388

namespace A191254

/-- `A000975(val(n+1, 2))%4` -/
def P7235743839436137388.Spec : Prop :=
  ∀ n, P7235743839436137388.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P7964780908189332051

`A328981(n+1)+and(1, n)`
-/

namespace A191254.P7964780908189332051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (n + 1) + (Nat.land 1 n : ℤ)

end

end A191254.P7964780908189332051

namespace A191254

/-- `A328981(n+1)+and(1, n)` -/
def P7964780908189332051.Spec : Prop :=
  ∀ n, P7964780908189332051.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P17411569291568758095

`A101659(and(n, 2*n+1))`
-/

namespace A191254.P17411569291568758095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101659 (Nat.land n (2 * n + 1))

end

end A191254.P17411569291568758095

namespace A191254

/-- `A101659(and(n, 2*n+1))` -/
def P17411569291568758095.Spec : Prop :=
  ∀ n, P17411569291568758095.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P18379576697761186717

`n%2*A000041(Δ[val(n+1, 2)%2]+2)`
-/

namespace A191254.P18379576697761186717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A191254.P18379576697761186717

namespace A191254

/-- `n%2*A000041(Δ[val(n+1, 2)%2]+2)` -/
def P18379576697761186717.Spec : Prop :=
  ∀ n, P18379576697761186717.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P16914624254367325493

`A079343(A135481(n))`
-/

namespace A191254.P16914624254367325493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A135481 n).toNat

end

end A191254.P16914624254367325493

namespace A191254

/-- `A079343(A135481(n))` -/
def P16914624254367325493.Spec : Prop :=
  ∀ n, P16914624254367325493.a n = A191254 (n + 1)

end A191254

/-! ## A191254.P2663106986274763212

`A134451(A007814(n+1))`
-/

namespace A191254.P2663106986274763212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A007814 (n + 1)).toNat

end

end A191254.P2663106986274763212

namespace A191254

/-- `A134451(A007814(n+1))` -/
def P2663106986274763212.Spec : Prop :=
  ∀ n, P2663106986274763212.a n = A191254 (n + 1)

end A191254

/-!
# A191255: Fixed point of the morphism 0 -> 01, 1 -> 02, 2 -> 03, 3 -> 01.

The programs for A191255, the canonical program `A191255.P10846076098061926596` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191255 has offset 1).

The definition of A191255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191255.P13308942774542717229

`dr(3*val(n+1, 2))/3`
-/

namespace A191255.P13308942774542717229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℚ) / 3

end

end A191255.P13308942774542717229

namespace A191255

/-- `dr(3*val(n+1, 2))/3` -/
def P13308942774542717229.Spec : Prop :=
  ∀ n, P13308942774542717229.a n = (A191255 (n + 1) : ℚ)

end A191255

/-! ## A191255.P15195535776685990772

`dr(val((n+1)^3, 2))/3`
-/

namespace A191255.P15195535776685990772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((n + 1) ^ 3) 2 : ℤ) : ℚ) / 3

end

end A191255.P15195535776685990772

namespace A191255

/-- `dr(val((n+1)^3, 2))/3` -/
def P15195535776685990772.Spec : Prop :=
  ∀ n, P15195535776685990772.a n = (A191255 (n + 1) : ℚ)

end A191255

/-! ## A191255.P12121737373105001926

`log2((2^val(n+1, 2))%14)`
-/

namespace A191255.P12121737373105001926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 ^ SequenceMachineLib.valuation (n + 1) 2 % 14 : ℕ) : ℝ)

end

end A191255.P12121737373105001926

namespace A191255

/-- `log2((2^val(n+1, 2))%14)` -/
def P12121737373105001926.Spec : Prop :=
  ∀ n, P12121737373105001926.a n = (A191255 (n + 1) : ℝ)

end A191255

/-! ## A191255.P11934253600690601749

`log2((or(n, n+1)-n)%14)`
-/

namespace A191255.P11934253600690601749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) 14 : ℝ)

end

end A191255.P11934253600690601749

namespace A191255

/-- `log2((or(n, n+1)-n)%14)` -/
def P11934253600690601749.Spec : Prop :=
  ∀ n, P11934253600690601749.a n = (A191255 (n + 1) : ℝ)

end A191255

/-! ## A191255.P10846076098061926596

`(val(n+1, 2)-1)%3+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191255

/-- `(val(n+1, 2)-1)%3+1` -/
def P10846076098061926596.Spec : Prop :=
  ∀ n, P10846076098061926596.a n = A191255 (n + 1)

theorem P10846076098061926596.correct : P10846076098061926596.Spec := by
  intro n
  simp only [A191255, Nat.add_sub_cancel]

end A191255

/-! ## A191255.P11839926969887223298

`log2(and(n+1, -(n+1))%14)`
-/

namespace A191255.P11839926969887223298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 14 : ℝ)

end

end A191255.P11839926969887223298

namespace A191255

/-- `log2(and(n+1, -(n+1))%14)` -/
def P11839926969887223298.Spec : Prop :=
  ∀ n, P11839926969887223298.a n = (A191255 (n + 1) : ℝ)

end A191255

/-! ## A191255.P13861936797690076127

`log2((n+1-and(n, n+1))%14)`
-/

namespace A191255.P13861936797690076127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) 14 : ℝ)

end

end A191255.P13861936797690076127

namespace A191255

/-- `log2((n+1-and(n, n+1))%14)` -/
def P13861936797690076127.Spec : Prop :=
  ∀ n, P13861936797690076127.a n = (A191255 (n + 1) : ℝ)

end A191255

/-! ## A191255.P10878150101897889750

`log2(A006519(n+1)%14)`
-/

namespace A191255.P10878150101897889750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod (A006519 (n + 1)) 14 : ℝ)

end

end A191255.P10878150101897889750

namespace A191255

/-- `log2(A006519(n+1)%14)` -/
def P10878150101897889750.Spec : Prop :=
  ∀ n, P10878150101897889750.a n = (A191255 (n + 1) : ℝ)

end A191255

/-! ## A191255.P7229436161219059026

`1-Δ[A000120(n)]%3`
-/

namespace A191255.P7229436161219059026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (f1 (n + 1) - f1 n) 3

end

end A191255.P7229436161219059026

namespace A191255

/-- `1-Δ[A000120(n)]%3` -/
def P7229436161219059026.Spec : Prop :=
  ∀ n, P7229436161219059026.a n = A191255 (n + 1)

end A191255

/-! ## A191255.P1300083088920034417

`(A007814(n+1)-1)%3+1`
-/

namespace A191255.P1300083088920034417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1) - 1) 3 + 1

end

end A191255.P1300083088920034417

namespace A191255

/-- `(A007814(n+1)-1)%3+1` -/
def P1300083088920034417.Spec : Prop :=
  ∀ n, P1300083088920034417.a n = A191255 (n + 1)

end A191255

/-! ## A191255.P1309216072280340344

`(A001511(n+1)-2)%3+1`
-/

namespace A191255.P1309216072280340344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001511 (n + 1) - 2) 3 + 1

end

end A191255.P1309216072280340344

namespace A191255

/-- `(A001511(n+1)-2)%3+1` -/
def P1309216072280340344.Spec : Prop :=
  ∀ n, P1309216072280340344.a n = A191255 (n + 1)

end A191255

/-! ## A191255.P11058222562877496602

`∑{d}[n+1, A063524(#-1)*A078734((n+1)/#)]`
-/

namespace A191255.P11058222562877496602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A078734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191255.P11058222562877496602

namespace A191255

/-- `∑{d}[n+1, A063524(#-1)*A078734((n+1)/#)]` -/
def P11058222562877496602.Spec : Prop :=
  ∀ n, P11058222562877496602.a n = A191255 (n + 1)

end A191255

/-! ## A191255.P10820642512128495996

`A010685(n)-(A080425(A007814(n+1))+1)`
-/

namespace A191255.P10820642512128495996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n - (A080425 (A007814 (n + 1)).toNat + 1)

end

end A191255.P10820642512128495996

namespace A191255

/-- `A010685(n)-(A080425(A007814(n+1))+1)` -/
def P10820642512128495996.Spec : Prop :=
  ∀ n, P10820642512128495996.a n = A191255 (n + 1)

end A191255

/-! ## A191255.P12188108942650512528

`A302567(A276391(n+1))`
-/

namespace A191255.P12188108942650512528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302567 (A276391 (n + 1)).toNat

end

end A191255.P12188108942650512528

namespace A191255

/-- `A302567(A276391(n+1))` -/
def P12188108942650512528.Spec : Prop :=
  ∀ n, P12188108942650512528.a n = A191255 (n + 1)

end A191255

/-! ## A191255.P552317672794001286

`A053574(A019565(A007814((n+1)²)))`
-/

namespace A191255.P552317672794001286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A019565 (A007814 ((n + 1) ^ 2)).toNat).toNat

end

end A191255.P552317672794001286

namespace A191255

/-- `A053574(A019565(A007814((n+1)²)))` -/
def P552317672794001286.Spec : Prop :=
  ∀ n, P552317672794001286.a n = A191255 (n + 1)

end A191255

/-! ## A191255.P11220014665992368559

`A357701(A000217(A001511((n+1)²)))`
-/

namespace A191255.P11220014665992368559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357701 (A000217 (A001511 ((n + 1) ^ 2)).toNat).toNat

end

end A191255.P11220014665992368559

namespace A191255

/-- `A357701(A000217(A001511((n+1)²)))` -/
def P11220014665992368559.Spec : Prop :=
  ∀ n, P11220014665992368559.a n = A191255 (n + 1)

end A191255

/-!
# A191257: a(n) = A067368(n)/2.

The programs for A191257, the canonical program `A191257.P3519043626035016268` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191257 has offset 1).

The definition of A191257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067368, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A191257.P3519043626035016268

`A067368(n+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191257

/-- `A067368(n+1)/2` -/
def P3519043626035016268.Spec : Prop :=
  ∀ n, P3519043626035016268.a n = (A191257 (n + 1) : ℚ)

end A191257

/-! ## A191257.P4079404628189248400

`eq[1, and(n, -n)%7]`
-/

namespace A191257.P4079404628189248400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191257.P4079404628189248400

namespace A191257

/-- `eq[1, and(n, -n)%7]` -/
def P4079404628189248400.Spec : Prop :=
  ∀ n, (P4079404628189248400.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P11035749665201309522

`eq[1, dr(and(n, -n)²)]`
-/

namespace A191257.P11035749665201309522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land (n : ℤ) (-(n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191257.P11035749665201309522

namespace A191257

/-- `eq[1, dr(and(n, -n)²)]` -/
def P11035749665201309522.Spec : Prop :=
  ∀ n, (P11035749665201309522.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P1487901562959827149

`eq[1, dr(or(n, -n)²)]`
-/

namespace A191257.P1487901562959827149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor (n : ℤ) (-(n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191257.P1487901562959827149

namespace A191257

/-- `eq[1, dr(or(n, -n)²)]` -/
def P1487901562959827149.Spec : Prop :=
  ∀ n, (P1487901562959827149.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P2060771370179456735

`eq[4, dr(xor(n, -n)²)]`
-/

namespace A191257.P2060771370179456735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor (n : ℤ) (-(n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191257.P2060771370179456735

namespace A191257

/-- `eq[4, dr(xor(n, -n)²)]` -/
def P2060771370179456735.Spec : Prop :=
  ∀ n, (P2060771370179456735.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P3383061274092217717

`eq[1, xor(n, n-1)%7]`
-/

namespace A191257.P3383061274092217717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191257.P3383061274092217717

namespace A191257

/-- `eq[1, xor(n, n-1)%7]` -/
def P3383061274092217717.Spec : Prop :=
  ∀ n, (P3383061274092217717.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P3911369820013840014

`lt[1, gcd(3, val(n+1, 2))]+1`
-/

namespace A191257.P3911369820013840014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A191257.P3911369820013840014

namespace A191257

/-- `lt[1, gcd(3, val(n+1, 2))]+1` -/
def P3911369820013840014.Spec : Prop :=
  ∀ n, (P3911369820013840014.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P15007672688180432267

`record[n+1-val(n+1, 2)%3]`
-/

namespace A191257.P15007672688180432267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((SequenceMachineLib.valuation (n + 1) 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191257.P15007672688180432267

namespace A191257

/-- `record[n+1-val(n+1, 2)%3]` -/
def P15007672688180432267.Spec : Prop :=
  ∀ n, P15007672688180432267.a n = A191257 (n + 1)

end A191257

/-! ## A191257.P15385312902604611692

`A213258(n+1)/4`
-/

namespace A191257.P15385312902604611692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213258 (n + 1) : ℚ) / 4

end

end A191257.P15385312902604611692

namespace A191257

/-- `A213258(n+1)/4` -/
def P15385312902604611692.Spec : Prop :=
  ∀ n, P15385312902604611692.a n = (A191257 (n + 1) : ℚ)

end A191257

/-! ## A191257.P2060322399163130723

`lt[A096271(n), 1]+1`
-/

namespace A191257.P2060322399163130723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A191257.P2060322399163130723

namespace A191257

/-- `lt[A096271(n), 1]+1` -/
def P2060322399163130723.Spec : Prop :=
  ∀ n, (P2060322399163130723.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P15570833811781261936

`eq[1, A078734(n+1)]+1`
-/

namespace A191257.P15570833811781261936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191257.P15570833811781261936

namespace A191257

/-- `eq[1, A078734(n+1)]+1` -/
def P15570833811781261936.Spec : Prop :=
  ∀ n, (P15570833811781261936.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P12187198155658320815

`eq[1, A373157(n+1)]+1`
-/

namespace A191257.P12187198155658320815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373157 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191257.P12187198155658320815

namespace A191257

/-- `eq[1, A373157(n+1)]+1` -/
def P12187198155658320815.Spec : Prop :=
  ∀ n, (P12187198155658320815.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P6199581339841414685

`(A067396(n+1)-n)/4`
-/

namespace A191257.P6199581339841414685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067396 (n + 1) - (n : ℤ) : ℚ) / 4

end

end A191257.P6199581339841414685

namespace A191257

/-- `(A067396(n+1)-n)/4` -/
def P6199581339841414685.Spec : Prop :=
  ∀ n, P6199581339841414685.a n = (A191257 (n + 1) : ℚ)

end A191257

/-! ## A191257.P4244469204308097537

`eq[1, A096271(2*n+1)]+1`
-/

namespace A191257.P4244469204308097537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191257.P4244469204308097537

namespace A191257

/-- `eq[1, A096271(2*n+1)]+1` -/
def P4244469204308097537.Spec : Prop :=
  ∀ n, (P4244469204308097537.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P14451491549622624812

`eq[1, A191255(2*(n+1))]+1`
-/

namespace A191257.P14451491549622624812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191257.P14451491549622624812

namespace A191257

/-- `eq[1, A191255(2*(n+1))]+1` -/
def P14451491549622624812.Spec : Prop :=
  ∀ n, (P14451491549622624812.a n : ℤ) = A191257 (n + 1)

end A191257

/-! ## A191257.P11252979109541065728

`filter[A047486(n+2), A373157(#)]`
-/

namespace A191257.P11252979109541065728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A191257.P11252979109541065728

namespace A191257

/-- `filter[A047486(n+2), A373157(#)]` -/
def P11252979109541065728.Spec : Prop :=
  ∀ n, P11252979109541065728.a n = A191257 (n + 1)

end A191257

/-! ## A191257.P562362063248411616

`filter[A047490(n+2), A373157(#)]`
-/

namespace A191257.P562362063248411616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047490 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A191257.P562362063248411616

namespace A191257

/-- `filter[A047490(n+2), A373157(#)]` -/
def P562362063248411616.Spec : Prop :=
  ∀ n, P562362063248411616.a n = A191257 (n + 1)

end A191257

/-! ## A191257.P12025545285938487648

`filter[A047585(n+2), A373157(#)]`
-/

namespace A191257.P12025545285938487648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047585 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A191257.P12025545285938487648

namespace A191257

/-- `filter[A047585(n+2), A373157(#)]` -/
def P12025545285938487648.Spec : Prop :=
  ∀ n, P12025545285938487648.a n = A191257 (n + 1)

end A191257

/-! ## A191257.P12816928347633059942

`filter[A107750(n+1), A373157(#)]`
-/

namespace A191257.P12816928347633059942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A191257.P12816928347633059942

namespace A191257

/-- `filter[A107750(n+1), A373157(#)]` -/
def P12816928347633059942.Spec : Prop :=
  ∀ n, P12816928347633059942.a n = A191257 (n + 1)

end A191257

/-!
# A191258: Fixed point of the morphism 0->01, 1->02, 2->03, 3->001.

The programs for A191258, there is no canonical definition to state claims against.
-/

/-! ## A191258.P13206639985710268193

`val(A007088(∏[A043567(n)]+n), 2)`
-/

namespace A191258.P13206639985710268193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007088 (∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat).toNat 2

end

end A191258.P13206639985710268193

/-! ## A191258.P4990926365470972783

`val(2^A034413(n+1)+n, 2)`
-/

namespace A191258.P4990926365470972783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A034413 (n + 1) : ℤ) + (n : ℚ))).toNat 2

end

end A191258.P4990926365470972783

/-! ## A191258.P106521641561267344

`A007814(∏[A043567(n)]+n)`
-/

namespace A191258.P106521641561267344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A191258.P106521641561267344

/-! ## A191258.P17763869406138571351

`A007814(∑[A080367(3*n+5)^A278521(3*(n+1))])`
-/

namespace A191258.P17763869406138571351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080367 (3 * n + 5) : ℚ) ^ (A278521 (3 * (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A191258.P17763869406138571351

/-!
# A191259: Positions of 1 in A191258.

The programs for A191259, there is no canonical definition to state claims against.
-/

/-! ## A191259.P4743898478039251641

`eq[1, A191258(n+1)]+1`
-/

namespace A191259.P4743898478039251641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191259.P4743898478039251641

/-! ## A191259.P18231070647915326026

`eq[1, A191258(A028310(n))]`
-/

namespace A191259.P18231070647915326026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191259.P18231070647915326026

/-! ## A191259.P16496216653655810544

`A020725(eq[1, A191258(n+1)])`
-/

namespace A191259.P16496216653655810544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191259.P16496216653655810544

/-! ## A191259.P1202240766743447238

`eq[1, A191258(A000007(n)+n)]`
-/

namespace A191259.P1202240766743447238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191259.P1202240766743447238

/-! ## A191259.P6406125927386008065

`eq[1, A191258(A065033(2*n))]`
-/

namespace A191259.P6406125927386008065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191259.P6406125927386008065

/-!
# A191260: Positions of 2 in A191258.

The programs for A191260, there is no canonical definition to state claims against.
-/

/-! ## A191260.P10569444167259422305

`eq[2, A191258(n+1)]+1`
-/

namespace A191260.P10569444167259422305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191260.P10569444167259422305

/-! ## A191260.P3301497410123578838

`eq[2, A191258(A028310(n))]`
-/

namespace A191260.P3301497410123578838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191260.P3301497410123578838

/-! ## A191260.P16470062990080747173

`A020725(eq[2, A191258(n+1)])`
-/

namespace A191260.P16470062990080747173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191260.P16470062990080747173

/-! ## A191260.P12875195249146804126

`eq[2, A191258(A000007(n)+n)]`
-/

namespace A191260.P12875195249146804126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191260.P12875195249146804126

/-! ## A191260.P2810845952318065059

`eq[2, A191258(A065033(2*n))]`
-/

namespace A191260.P2810845952318065059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191260.P2810845952318065059

/-! ## A191260.P15602838937319304733

`eq[2, A191258(A233583(n+1))]`
-/

namespace A191260.P15602838937319304733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191260.P15602838937319304733

/-!
# A191261: Fixed point of the morphism 0 -> 01, 1 -> 002, 2 -> 01.

The programs for A191261, there is no canonical definition to state claims against.
-/

/-! ## A191261.P15578826038839046359

`gcd(3, ∑[A102005(n)])-A102005(n)`
-/

namespace A191261.P15578826038839046359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A102005 n

end

end A191261.P15578826038839046359

/-! ## A191261.P17705759239318435182

`val(A195880(3*n+5), Δ[A065091(2*n+1)])`
-/

namespace A191261.P17705759239318435182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A195880 (3 * n + 5)).toNat (f1 (n + 1) - f1 n).toNat

end

end A191261.P17705759239318435182

/-! ## A191261.P8404708364410559562

`A007623(A000288(n))%A136548(A333238(n+2))`
-/

namespace A191261.P8404708364410559562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007623 (A000288 n).toNat) (A136548 (A333238 (n + 2)).toNat)

end

end A191261.P8404708364410559562

/-! ## A191261.P11460120880677557188

`A374099(A076091(n+2))`
-/

namespace A191261.P11460120880677557188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374099 (A076091 (n + 2)).toNat

end

end A191261.P11460120880677557188

/-!
# A191262: Positions of 0 in A191261.

The programs for A191262, there is no canonical definition to state claims against.
-/

/-! ## A191262.P13918497413552204899

`∩[A284746(n+1)-2, A284746(n+1)]`
-/

namespace A191262.P13918497413552204899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191262.P13918497413552204899

/-! ## A191262.P12375541403809567585

`lt[A191261(n+1), 1]+1`
-/

namespace A191262.P12375541403809567585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A191262.P12375541403809567585

/-! ## A191262.P4271986847153908269

`record[A000027(n+1)-A191261(n+1)]`
-/

namespace A191262.P4271986847153908269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A191261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191262.P4271986847153908269

/-! ## A191262.P7128572196404494103

`eq[A000035(2*(n+1)), A191261(n+1)]+1`
-/

namespace A191262.P7128572196404494103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191262.P7128572196404494103

/-!
# A191263: Positions of 1 in A191261.

The programs for A191263, there is no canonical definition to state claims against.
-/

/-! ## A191263.P15084101779212477962

`A284682(n+1)+1+n`
-/

namespace A191263.P15084101779212477962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1) + 1 + (n : ℤ)

end

end A191263.P15084101779212477962

/-! ## A191263.P8958867063757057918

`(A191264(n+1)-(n+1))/2`
-/

namespace A191263.P8958867063757057918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191264 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A191263.P8958867063757057918

/-! ## A191263.P18438276136821486385

`3*A284746(n+1)-(n+1)`
-/

namespace A191263.P18438276136821486385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284746 (n + 1) - (n + 1 : ℤ)

end

end A191263.P18438276136821486385

/-! ## A191263.P14653340937086719769

`eq[1, A284680(n+1)]+2+n`
-/

namespace A191263.P14653340937086719769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A191263.P14653340937086719769

/-! ## A191263.P12756302084255934521

`A284746(A284682(n+1))+1`
-/

namespace A191263.P12756302084255934521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (A284682 (n + 1)).toNat + 1

end

end A191263.P12756302084255934521

/-! ## A191263.P9044222111775595881

`A284746(record[(n+1)*A284680(n+1)])+1`
-/

namespace A191263.P9044222111775595881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A191263.P9044222111775595881

/-! ## A191263.P18107962551224535608

`A284681(3*n+1)-2*n`
-/

namespace A191263.P18107962551224535608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284681 (3 * n + 1) - (2 * n : ℤ)

end

end A191263.P18107962551224535608

/-! ## A191263.P6892666860921576302

`lt[1, A102005(n)]+1`
-/

namespace A191263.P6892666860921576302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191263.P6892666860921576302

/-! ## A191263.P12605694862977163458

`filter[n+1, A284745(#)]`
-/

namespace A191263.P12605694862977163458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284745 (f1 j) = 1) n)

end

end A191263.P12605694862977163458

/-! ## A191263.P101828901750132634

`eq[1, A191261(n+1)]+1`
-/

namespace A191263.P101828901750132634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191263.P101828901750132634

/-! ## A191263.P14949824938214422048

`eq[1, A284745(n+1)]+1`
-/

namespace A191263.P14949824938214422048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191263.P14949824938214422048

/-! ## A191263.P1342211080479933788

`eq[1, A191261(A028310(n))]`
-/

namespace A191263.P1342211080479933788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191263.P1342211080479933788

/-!
# A191264: Positions of 2 in A191261.

The programs for A191264, there is no canonical definition to state claims against.
-/

/-! ## A191264.P14555572818084356908

`2*A191263(n+1)+n+1`
-/

namespace A191264.P14555572818084356908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191263 (n + 1) + (n + 1 : ℤ)

end

end A191264.P14555572818084356908

/-! ## A191264.P18150312457793584442

`6*A284746(n+1)-(n+1)`
-/

namespace A191264.P18150312457793584442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A284746 (n + 1) - (n + 1 : ℤ)

end

end A191264.P18150312457793584442

/-! ## A191264.P11131671612076440548

`A000027(A191263(n+1)+A191263(n+1)+n+1)`
-/

namespace A191264.P11131671612076440548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A191263 (n + 1) + (A191263 (n + 1) + (n + 1 : ℤ))).toNat

end

end A191264.P11131671612076440548

/-! ## A191264.P6564755653681670045

`A008458(A284746(n+1))-(n+1)`
-/

namespace A191264.P6564755653681670045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A284746 (n + 1)).toNat - (n + 1 : ℤ)

end

end A191264.P6564755653681670045

/-! ## A191264.P3880531134574373572

`A191263(A284682(n+1))+3`
-/

namespace A191264.P3880531134574373572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (A284682 (n + 1)).toNat + 3

end

end A191264.P3880531134574373572

/-! ## A191264.P3918684082756901836

`A191263(A191263(n+1)-(n+1))+3`
-/

namespace A191264.P3918684082756901836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (A191263 (n + 1) - (n + 1 : ℤ)).toNat + 3

end

end A191264.P3918684082756901836

/-! ## A191264.P10690506874391499899

`A284682(n+1)+A284681(3*(n+1))`
-/

namespace A191264.P10690506874391499899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1) + A284681 (3 * (n + 1))

end

end A191264.P10690506874391499899

/-! ## A191264.P10339747146892299514

`2*eq[1, A284745(n+1)]+n+3`
-/

namespace A191264.P10339747146892299514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 3)

end

end A191264.P10339747146892299514

/-! ## A191264.P6903417472582547042

`A005408(A191263(n+1))+n`
-/

namespace A191264.P6903417472582547042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191263 (n + 1)).toNat + (n : ℤ)

end

end A191264.P6903417472582547042

/-! ## A191264.P5656302738201653344

`A191263(lt[1, A102005(n)]-n)+3`
-/

namespace A191264.P5656302738201653344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - n) + 3

end

end A191264.P5656302738201653344

/-! ## A191264.P17811561146149349142

`A005843(A191263(n+1))+A000027(n+1)`
-/

namespace A191264.P17811561146149349142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191263 (n + 1)).toNat + A000027 (n + 1)

end

end A191264.P17811561146149349142

/-! ## A191264.P7320729640166708538

`lt[1, A191261(n+1)]+1`
-/

namespace A191264.P7320729640166708538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191264.P7320729640166708538

/-! ## A191264.P7472122842242184494

`eq[2, A191261(A028310(n))]`
-/

namespace A191264.P7472122842242184494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191264.P7472122842242184494

/-! ## A191264.P3547913795787898358

`lt[A102005(n), A102005(n+2)]+1`
-/

namespace A191264.P3547913795787898358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A191264.P3547913795787898358

/-!
# A191265: Fixed point of the morphism 0 -> 001, 1 -> 002, 2 -> 01.

The programs for A191265, there is no canonical definition to state claims against.
-/

/-! ## A191265.P9412281028546485634

`A224763(A091840(n+1))%A091840(A091840(n+4))`
-/

namespace A191265.P9412281028546485634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224763 (A091840 (n + 1)).toNat) (A091840 (A091840 (n + 4)).toNat)

end

end A191265.P9412281028546485634

/-! ## A191265.P3012420894660279677

`(Δ[A159952(n+1)]-1)%3`
-/

namespace A191265.P3012420894660279677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) 3

end

end A191265.P3012420894660279677

/-! ## A191265.P4544812973151964708

`A088978(Δ[A159952(n+1)])`
-/

namespace A191265.P4544812973151964708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088978 (f1 (n + 1) - f1 n).toNat

end

end A191265.P4544812973151964708

/-! ## A191265.P8915047626518244509

`A158819(Δ[A159952(n+1)])`
-/

namespace A191265.P8915047626518244509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158819 (f1 (n + 1) - f1 n).toNat

end

end A191265.P8915047626518244509

/-!
# A191266: Positions of 0 in A191265.

The programs for A191266, there is no canonical definition to state claims against.
-/

/-! ## A191266.P853484947358559773

`eq[2, sqrt(a(A191265(n)))]` with `a(0)=4`
-/

namespace A191266.P853484947358559773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A191265 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A191266.P853484947358559773

/-! ## A191266.P16948873008838534033

`eq[0, A191265(n+1)]+1`
-/

namespace A191266.P16948873008838534033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191266.P16948873008838534033

/-! ## A191266.P8097851519700950705

`eq[2, A000040(a(A191265(n)))]` with `a(0)=1`
-/

namespace A191266.P8097851519700950705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191266.P8097851519700950705

/-! ## A191266.P10298912416181830147

`eq[1, A001222(a(A191265(n)))]` with `a(0)=2`
-/

namespace A191266.P10298912416181830147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001222 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191266.P10298912416181830147

/-! ## A191266.P16054260311434178603

`eq[2, A002939(a(A191265(n)))]` with `a(0)=1`
-/

namespace A191266.P16054260311434178603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002939 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191266.P16054260311434178603

/-! ## A191266.P3276402735512827933

`eq[2, A257920(a(A191265(n)))]` with `a(0)=1`
-/

namespace A191266.P3276402735512827933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A257920 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191266.P3276402735512827933

/-! ## A191266.P11937411260426283673

`eq[2, A000010(a(A191265(n)))]` with `a(0)=3`
-/

namespace A191266.P11937411260426283673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191266.P11937411260426283673

/-! ## A191266.P1553915574436609489

`eq[1, A091840(n+3)]`
-/

namespace A191266.P1553915574436609489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091840 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191266.P1553915574436609489

/-!
# A191267: Positions of 1 in A191265.

The programs for A191267, there is no canonical definition to state claims against.
-/

/-! ## A191267.P5719989206986025789

`eq[1, A191265(n+1)]+1`
-/

namespace A191267.P5719989206986025789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191267.P5719989206986025789

/-! ## A191267.P12619126584482699262

`eq[2, sqrt(a(A191265(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A191267.P12619126584482699262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  Real.sqrt (f2 (A191265 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A191267.P12619126584482699262

/-! ## A191267.P11139228007138848642

`eq[1, A191265(A000007(n)+n)]`
-/

namespace A191267.P11139228007138848642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191267.P11139228007138848642

/-! ## A191267.P14390250793446471102

`eq[1, A191265(A169585(n)+n)]`
-/

namespace A191267.P14390250793446471102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191267.P14390250793446471102

/-! ## A191267.P4395062181126418934

`eq[1, A000045(a(A191265(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A191267.P4395062181126418934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000045 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191267.P4395062181126418934

/-! ## A191267.P16781636950773334371

`eq[2, A000040(a(A191265(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A191267.P16781636950773334371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000040 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191267.P16781636950773334371

/-! ## A191267.P546074306178473120

`eq[2, A020639(a(A191265(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A191267.P546074306178473120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A020639 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191267.P546074306178473120

/-! ## A191267.P15908994305577082749

`eq[1, A000010(a(A191265(n)))]` with `a(0)=5, a(1)=2`
-/

namespace A191267.P15908994305577082749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  A000010 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191267.P15908994305577082749

/-! ## A191267.P10856031550098620423

`eq[1, A001222(a(A191265(n)))²]` with `a(0)=4, a(1)=2`
-/

namespace A191267.P10856031550098620423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  A001222 (f2 (A191265 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191267.P10856031550098620423

/-!
# A191268: Positions of 2 in A191265.

The programs for A191268, there is no canonical definition to state claims against.
-/

/-! ## A191268.P7745142741376911118

`eq[2, A191265(n+1)]+1`
-/

namespace A191268.P7745142741376911118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191268.P7745142741376911118

/-! ## A191268.P7604729303520873564

`eq[2, A191265(A000007(n)+n)]`
-/

namespace A191268.P7604729303520873564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P7604729303520873564

/-! ## A191268.P3650922655131382137

`eq[2, A191265(A169585(n)+n)]`
-/

namespace A191268.P3650922655131382137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P3650922655131382137

/-! ## A191268.P11621319706198245091

`eq[2, A257920(a(A191265(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A191268.P11621319706198245091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A257920 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P11621319706198245091

/-! ## A191268.P17925321717722388674

`eq[1, A118402(a(A191265(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A191268.P17925321717722388674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A118402 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P17925321717722388674

/-! ## A191268.P2204122351605215755

`eq[1, A128063(a(A191265(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A191268.P2204122351605215755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A128063 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P2204122351605215755

/-! ## A191268.P5747569559873170223

`eq[1, A169585(a(A191265(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A191268.P5747569559873170223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A169585 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P5747569559873170223

/-! ## A191268.P16655018875676619282

`eq[1, A262726(a(A191265(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A191268.P16655018875676619282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A262726 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P16655018875676619282

/-! ## A191268.P11434606482142128838

`eq[1, A070365(a(A191265(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A191268.P11434606482142128838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A070365 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P11434606482142128838

/-! ## A191268.P17812365731082623295

`eq[1, A128059(a(A191265(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A191268.P17812365731082623295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A128059 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P17812365731082623295

/-! ## A191268.P7925539944914579529

`eq[1, A065120(a(A191265(n)))]` with `a(0)=4, a(1)=2`
-/

namespace A191268.P7925539944914579529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  A065120 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P7925539944914579529

/-! ## A191268.P8332473884130414869

`eq[1, A000010(a(A191265(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A191268.P8332473884130414869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A000010 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P8332473884130414869

/-! ## A191268.P8886373878519723722

`eq[1, A124579(a(A191265(n)))]` with `a(0)=7, a(1)=2`
-/

namespace A191268.P8886373878519723722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n f2 =>
  A124579 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P8886373878519723722

/-! ## A191268.P16897699037833155145

`eq[1, A309683(a(A191265(n)))]` with `a(0)=7, a(1)=2`
-/

namespace A191268.P16897699037833155145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n f2 =>
  A309683 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P16897699037833155145

/-! ## A191268.P3654067101947670545

`eq[1, A000045(a(A191265(n)))]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A191268.P3654067101947670545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  A000045 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P3654067101947670545

/-! ## A191268.P16650381696278806336

`eq[2, A020639(a(A191265(n)))]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A191268.P16650381696278806336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  A020639 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P16650381696278806336

/-! ## A191268.P9865470202818809718

`eq[2, A000040(a(A191265(n)))]` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A191268.P9865470202818809718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f2 =>
  A000040 (f2 (A191265 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191268.P9865470202818809718

/-!
# A191269: Fixed point of the morphism 0 -> 001, 1 -> 02, 2 -> 01.

The programs for A191269, there is no canonical definition to state claims against.
-/

/-! ## A191269.P9981851409241693500

`A191254(A358654(n+1))`
-/

namespace A191269.P9981851409241693500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A358654 (n + 1)).toNat

end

end A191269.P9981851409241693500

/-! ## A191269.P3435633904552121709

`A327407(A325038(n+1))-Δ[ceil(n/ϕ)]`
-/

namespace A191269.P3435633904552121709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (A325038 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A191269.P3435633904552121709

/-! ## A191269.P17030030194327858803

`A242082(3*n+1)!*A188432(n+1)`
-/

namespace A191269.P17030030194327858803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A242082 (3 * n + 1)).toNat : ℤ) * A188432 (n + 1)

end

end A191269.P17030030194327858803

/-! ## A191269.P171183988133614278

`A286561(A062041(n+1))+A188432(n+1)`
-/

namespace A191269.P171183988133614278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A062041 (n + 1)).toNat + A188432 (n + 1)

end

end A191269.P171183988133614278

/-!
# A191270: Positions of 1 in A191269.

The programs for A191270, there is no canonical definition to state claims against.
-/

/-! ## A191270.P15023995711595832505

`eq[2, A001511(A083368(n+1))]+2`
-/

namespace A191270.P15023995711595832505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A083368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A191270.P15023995711595832505

/-! ## A191270.P4745288709161241427

`eq[1, A191269(n+1)]+1`
-/

namespace A191270.P4745288709161241427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191270.P4745288709161241427

/-! ## A191270.P5078989168603053078

`eq[1, A191269(A028310(n))]`
-/

namespace A191270.P5078989168603053078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191270.P5078989168603053078

/-! ## A191270.P16221789487174920717

`A005206(A005206(A191271(n+1)-1))`
-/

namespace A191270.P16221789487174920717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A191271 (n + 1) - 1).toNat).toNat

end

end A191270.P16221789487174920717

/-! ## A191270.P12467895092635151889

`lt[1, A191269(floor(ϕ*n+n+1))]`
-/

namespace A191270.P12467895092635151889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 ⌊Real.goldenRatio * (n : ℝ) + (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191270.P12467895092635151889

/-! ## A191270.P9315844455040154142

`A026272(A191271(n+1))`
-/

namespace A191270.P9315844455040154142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A191271 (n + 1)).toNat

end

end A191270.P9315844455040154142

/-! ## A191270.P14633845870216346171

`eq[2, A191269(A026352(n))]`
-/

namespace A191270.P14633845870216346171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (A026352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191270.P14633845870216346171

/-! ## A191270.P7332895942962364104

`A019586(A191271(n+1)+1)`
-/

namespace A191270.P7332895942962364104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A191271 (n + 1) + 1).toNat

end

end A191270.P7332895942962364104

/-! ## A191270.P11584804165031161841

`A189663(A191271(n+1)-1)`
-/

namespace A191270.P11584804165031161841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A191271 (n + 1) - 1).toNat

end

end A191270.P11584804165031161841

/-! ## A191270.P11137055853285889813

`A189663(A191271(n+1))%A000041(n+5)`
-/

namespace A191270.P11137055853285889813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189663 (A191271 (n + 1)).toNat) (A000041 (n + 5))

end

end A191270.P11137055853285889813

/-! ## A191270.P8914038041251270960

`A189663(A191271(n+1)%A191271(n+1)²)`
-/

namespace A191270.P8914038041251270960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (Int.tmod (A191271 (n + 1)) (A191271 (n + 1) ^ 2)).toNat

end

end A191270.P8914038041251270960

/-! ## A191270.P3362744304167433451

`A189663(A191271(n+1))%A191271(A008619(n))`
-/

namespace A191270.P3362744304167433451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189663 (A191271 (n + 1)).toNat) (A191271 (A008619 n).toNat)

end

end A191270.P3362744304167433451

/-!
# A191271: Positions of 2 in A191269.

The programs for A191271, there is no canonical definition to state claims against.
-/

/-! ## A191271.P13976432075730367995

`A004937(A191270(n+1))`
-/

namespace A191271.P13976432075730367995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A191270 (n + 1)).toNat

end

end A191271.P13976432075730367995

/-! ## A191271.P2773764304181737539

`A026352(eq[1, A191269(n+1)]+1)`
-/

namespace A191271.P2773764304181737539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191271.P2773764304181737539

/-! ## A191271.P10986122640576695292

`A026274(A191270(2*n+1-n))`
-/

namespace A191271.P10986122640576695292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (A191270 (2 * n + 1 - n)).toNat

end

end A191271.P10986122640576695292

/-! ## A191271.P664043770139815941

`A026274(A191270(n+1)%(10*n+8))`
-/

namespace A191271.P664043770139815941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (Int.tmod (A191270 (n + 1)) (10 * n + 8 : ℤ)).toNat

end

end A191271.P664043770139815941

/-! ## A191271.P17351934629515904133

`A026274(or(A000007(n), A191270(n+1)))`
-/

namespace A191271.P17351934629515904133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (Int.lor (A000007 n) (A191270 (n + 1))).toNat

end

end A191271.P17351934629515904133

/-! ## A191271.P16699841141864260226

`A026274(A000034(2*n)*A191270(n+1))`
-/

namespace A191271.P16699841141864260226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (A000034 (2 * n) * A191270 (n + 1)).toNat

end

end A191271.P16699841141864260226

/-! ## A191271.P17580988121433356613

`lt[1, A191269(n+1)]+1`
-/

namespace A191271.P17580988121433356613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191271.P17580988121433356613

/-! ## A191271.P12490982761871035651

`eq[2, A191269(n+2)]+2`
-/

namespace A191271.P12490982761871035651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A191271.P12490982761871035651

/-! ## A191271.P1575537470720571671

`lt[1, A191269(A028310(n))]`
-/

namespace A191271.P1575537470720571671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191271.P1575537470720571671

/-!
# A191272: Expansion of x*(4+5*x)/( (1-4*x)*(1 + x + x^2) ).

The programs for A191272, the canonical program `A191272.P8781404460720340307` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191272 has offset 0).

The definition of A191272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4x+5x^2)/(1-3x-3x^2-4x^3))` (program `A191272.P8781404460720340307`, by `A191272.P8781404460720340307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191272.P8781404460720340307

`ogf((4x+5x^2)/(1-3x-3x^2-4x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191272

/-- `ogf((4x+5x^2)/(1-3x-3x^2-4x^3))` -/
def P8781404460720340307.Spec : Prop :=
  ∀ n, P8781404460720340307.a n = A191272 n

theorem P8781404460720340307.correct : P8781404460720340307.Spec := by
  intro n
  simp only [A191272]

end A191272

/-! ## A191272.P3505667679993567637

`3*a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=4, a(2)=17`
-/

namespace A191272.P3505667679993567637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 17] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3)

end

end A191272.P3505667679993567637

namespace A191272

/-- `3*a(n-1)+3*a(n-2)+4*a(n-3)` -/
def P3505667679993567637.Spec : Prop :=
  ∀ n, (P3505667679993567637.a n : ℤ) = A191272 n

end A191272

/-! ## A191272.P18064027101444766887

`4^n-A057078(n)`
-/

namespace A191272.P18064027101444766887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A057078 n

end

end A191272.P18064027101444766887

namespace A191272

/-- `4^n-A057078(n)` -/
def P18064027101444766887.Spec : Prop :=
  ∀ n, P18064027101444766887.a n = A191272 n

end A191272

/-! ## A191272.P17194867685503824066

`A052539(n)-A080425(n+1)`
-/

namespace A191272.P17194867685503824066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n - A080425 (n + 1)

end

end A191272.P17194867685503824066

namespace A191272

/-- `A052539(n)-A080425(n+1)` -/
def P17194867685503824066.Spec : Prop :=
  ∀ n, P17194867685503824066.a n = A191272 n

end A191272

/-! ## A191272.P16634798353822027718

`A024495(2*n)+A024495(1+2*n)`
-/

namespace A191272.P16634798353822027718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * n) + A024495 (1 + 2 * n)

end

end A191272.P16634798353822027718

namespace A191272

/-- `A024495(2*n)+A024495(1+2*n)` -/
def P16634798353822027718.Spec : Prop :=
  ∀ n, P16634798353822027718.a n = A191272 n

end A191272

/-! ## A191272.P2057482849407415889

`4^n+n%3-1`
-/

namespace A191272.P2057482849407415889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) + (((n % 3 : ℕ) : ℤ) - 1)

end

end A191272.P2057482849407415889

namespace A191272

/-- `4^n+n%3-1` -/
def P2057482849407415889.Spec : Prop :=
  ∀ n, P2057482849407415889.a n = A191272 n

end A191272

/-! ## A191272.P4727233949405633829

`A000302(n)-(1-n%3)`
-/

namespace A191272.P4727233949405633829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - (1 - ((n % 3 : ℕ) : ℤ))

end

end A191272.P4727233949405633829

namespace A191272

/-- `A000302(n)-(1-n%3)` -/
def P4727233949405633829.Spec : Prop :=
  ∀ n, P4727233949405633829.a n = A191272 n

end A191272

/-! ## A191272.P15581093516701036596

`A024036(n)+A010872(n)`
-/

namespace A191272.P15581093516701036596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n + A010872 n

end

end A191272.P15581093516701036596

namespace A191272

/-- `A024036(n)+A010872(n)` -/
def P15581093516701036596.Spec : Prop :=
  ∀ n, P15581093516701036596.a n = A191272 n

end A191272

/-! ## A191272.P15032103778256769888

`A178675(n)-A164360(n)`
-/

namespace A191272.P15032103778256769888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178675 n - A164360 n

end

end A191272.P15032103778256769888

namespace A191272

/-- `A178675(n)-A164360(n)` -/
def P15032103778256769888.Spec : Prop :=
  ∀ n, P15032103778256769888.a n = A191272 n

end A191272

/-! ## A191272.P11877036839635685743

`record[A154383(n)-A010892(n)]`
-/

namespace A191272.P11877036839635685743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154383 n - A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191272.P11877036839635685743

namespace A191272

/-- `record[A154383(n)-A010892(n)]` -/
def P11877036839635685743.Spec : Prop :=
  ∀ n, P11877036839635685743.a n = A191272 n

end A191272

/-! ## A191272.P3187108654145638999

`A049347(n+1)+A000302(n)`
-/

namespace A191272.P3187108654145638999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + A000302 n

end

end A191272.P3187108654145638999

namespace A191272

/-- `A049347(n+1)+A000302(n)` -/
def P3187108654145638999.Spec : Prop :=
  ∀ n, P3187108654145638999.a n = A191272 n

end A191272

/-! ## A191272.P7289216178083547108

`A010872(n)+A000225(2*n)`
-/

namespace A191272.P7289216178083547108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n + A000225 (2 * n)

end

end A191272.P7289216178083547108

namespace A191272

/-- `A010872(n)+A000225(2*n)` -/
def P7289216178083547108.Spec : Prop :=
  ∀ n, P7289216178083547108.a n = A191272 n

end A191272

/-! ## A191272.P14378844636348144932

`A000302(n)-A010892(2*n)`
-/

namespace A191272.P14378844636348144932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A010892 (2 * n)

end

end A191272.P14378844636348144932

namespace A191272

/-- `A000302(n)-A010892(2*n)` -/
def P14378844636348144932.Spec : Prop :=
  ∀ n, P14378844636348144932.a n = A191272 n

end A191272

/-! ## A191272.P13568025246385481606

`A000302(n)-A049347(2*n)`
-/

namespace A191272.P13568025246385481606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A049347 (2 * n)

end

end A191272.P13568025246385481606

namespace A191272

/-- `A000302(n)-A049347(2*n)` -/
def P13568025246385481606.Spec : Prop :=
  ∀ n, P13568025246385481606.a n = A191272 n

end A191272

/-! ## A191272.P17959587507596374485

`A049347(n+1)+A000079(n)²`
-/

namespace A191272.P17959587507596374485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + A000079 n ^ 2

end

end A191272.P17959587507596374485

namespace A191272

/-- `A049347(n+1)+A000079(n)²` -/
def P17959587507596374485.Spec : Prop :=
  ∀ n, P17959587507596374485.a n = A191272 n

end A191272

/-! ## A191272.P5043992467448883529

`A106510(n+2)+A000079(n)²`
-/

namespace A191272.P5043992467448883529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (n + 2) + A000079 n ^ 2

end

end A191272.P5043992467448883529

namespace A191272

/-- `A106510(n+2)+A000079(n)²` -/
def P5043992467448883529.Spec : Prop :=
  ∀ n, P5043992467448883529.a n = A191272 n

end A191272

/-! ## A191272.P2274448950410670049

`A000079(n)²-A010892(2*n)`
-/

namespace A191272.P2274448950410670049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A010892 (2 * n)

end

end A191272.P2274448950410670049

namespace A191272

/-- `A000079(n)²-A010892(2*n)` -/
def P2274448950410670049.Spec : Prop :=
  ∀ n, P2274448950410670049.a n = A191272 n

end A191272

/-! ## A191272.P16449954213014012928

`A049347(n+1)+A000079(2*n)`
-/

namespace A191272.P16449954213014012928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + A000079 (2 * n)

end

end A191272.P16449954213014012928

namespace A191272

/-- `A049347(n+1)+A000079(2*n)` -/
def P16449954213014012928.Spec : Prop :=
  ∀ n, P16449954213014012928.a n = A191272 n

end A191272

/-! ## A191272.P5538385360672887789

`A135446(2*n)+A061347(n+1)`
-/

namespace A191272.P5538385360672887789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135446 (2 * n) + A061347 (n + 1)

end

end A191272.P5538385360672887789

namespace A191272

/-- `A135446(2*n)+A061347(n+1)` -/
def P5538385360672887789.Spec : Prop :=
  ∀ n, P5538385360672887789.a n = A191272 n

end A191272

/-! ## A191272.P17984859123668713881

`A191597(n)+A024495(2*n+1)`
-/

namespace A191272.P17984859123668713881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191597 n + A024495 (2 * n + 1)

end

end A191272.P17984859123668713881

namespace A191272

/-- `A191597(n)+A024495(2*n+1)` -/
def P17984859123668713881.Spec : Prop :=
  ∀ n, P17984859123668713881.a n = A191272 n

end A191272

/-!
# A191273: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 1 diagonally or antidiagonally neighboring 1.

The programs for A191273, there is no canonical definition to state claims against.
-/

/-! ## A191273.P6132164775158380723

`A108612(A369847(n+1))`
-/

namespace A191273.P6132164775158380723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108612 (A369847 (n + 1)).toNat

end

end A191273.P6132164775158380723

/-! ## A191273.P13893606853736087524

`A284615(3*(n+1))+A241463(A276214(n+1))`
-/

namespace A191273.P13893606853736087524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284615 (3 * (n + 1)) + A241463 (A276214 (n + 1)).toNat

end

end A191273.P13893606853736087524

/-!
# A191274: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 2 diagonally or antidiagonally neighboring 1s.

The programs for A191274, there is no canonical definition to state claims against.
-/

/-! ## A191274.P15335676125307356153

`A023193(A135922(n)+1)`
-/

namespace A191274.P15335676125307356153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A135922 n + 1).toNat

end

end A191274.P15335676125307356153

/-! ## A191274.P7799894189005338021

`A111854(A078592(n))+1`
-/

namespace A191274.P7799894189005338021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111854 (A078592 n).toNat + 1

end

end A191274.P7799894189005338021

/-! ## A191274.P620810130279239675

`A103221(A006897(n+1)-n)`
-/

namespace A191274.P620810130279239675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A006897 (n + 1) - (n : ℤ)).toNat

end

end A191274.P620810130279239675

/-!
# A191275: Numbers that are congruent to {0, 1, 3, 5, 7, 9, 11} mod 12.

The programs for A191275, the canonical program `A191275.P11393128651894986378` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191275 has offset 1).

The definition of A191275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191275.P11393128651894986378

`a(n-7)+12` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191275

/-- `a(n-7)+12` -/
def P11393128651894986378.Spec : Prop :=
  ∀ n, (P11393128651894986378.a n : ℤ) = A191275 (n + 1)

theorem P11393128651894986378.correct : P11393128651894986378.Spec := by
  intro n
  simp only [A191275, Nat.add_sub_cancel]

end A191275

/-! ## A191275.P7283207181855617250

`comp[2*comp[6*n]]`
-/

namespace A191275.P7283207181855617250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A191275.P7283207181855617250

namespace A191275

/-- `comp[2*comp[6*n]]` -/
def P7283207181855617250.Spec : Prop :=
  ∀ n, (P7283207181855617250.a n : ℤ) = A191275 (n + 1)

end A191275

/-! ## A191275.P4779267893312427892

`∑[floor(atan(n%7))]+n`
-/

namespace A191275.P4779267893312427892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((n % 7 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A191275.P4779267893312427892

namespace A191275

/-- `∑[floor(atan(n%7))]+n` -/
def P4779267893312427892.Spec : Prop :=
  ∀ n, P4779267893312427892.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P3322573863156712236

`∪[2*n+1, 12*n]`
-/

namespace A191275.P3322573863156712236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A191275.P3322573863156712236

namespace A191275

/-- `∪[2*n+1, 12*n]` -/
def P3322573863156712236.Spec : Prop :=
  ∀ n, (P3322573863156712236.a n : ℤ) = A191275 (n + 1)

end A191275

/-! ## A191275.P10335824858551862742

`lt[1, gcd(n+3, (n+3)%4)]`
-/

namespace A191275.P10335824858551862742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) ((n + 3) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191275.P10335824858551862742

namespace A191275

/-- `lt[1, gcd(n+3, (n+3)%4)]` -/
def P10335824858551862742.Spec : Prop :=
  ∀ n, (P10335824858551862742.a n : ℤ) = A191275 (n + 1)

end A191275

/-! ## A191275.P5348726799323829358

`eq[1, gcd(n+1, or(n, gcd(3, n)))]`
-/

namespace A191275.P5348726799323829358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.lor n (Nat.gcd 3 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191275.P5348726799323829358

namespace A191275

/-- `eq[1, gcd(n+1, or(n, gcd(3, n)))]` -/
def P5348726799323829358.Spec : Prop :=
  ∀ n, (P5348726799323829358.a n : ℤ) = A191275 (n + 1)

end A191275

/-! ## A191275.P3668312523342234311

`2*n-∑[char[∑[6^and(1, n)]]]`
-/

namespace A191275.P3668312523342234311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A191275.P3668312523342234311

namespace A191275

/-- `2*n-∑[char[∑[6^and(1, n)]]]` -/
def P3668312523342234311.Spec : Prop :=
  ∀ n, P3668312523342234311.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P13187365108341361071

`A083033(n+1)-A238469(n)`
-/

namespace A191275.P13187365108341361071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) - A238469 n

end

end A191275.P13187365108341361071

namespace A191275

/-- `A083033(n+1)-A238469(n)` -/
def P13187365108341361071.Spec : Prop :=
  ∀ n, P13187365108341361071.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P8755936337314021640

`A191276(n+1)-A238470(n)`
-/

namespace A191275.P8755936337314021640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 1) - A238470 n

end

end A191275.P8755936337314021640

namespace A191275

/-- `A191276(n+1)-A238470(n)` -/
def P8755936337314021640.Spec : Prop :=
  ∀ n, P8755936337314021640.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P5379998518554872861

`2*A145569(n)-A109720(n)`
-/

namespace A191275.P5379998518554872861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145569 n - A109720 n

end

end A191275.P5379998518554872861

namespace A191275

/-- `2*A145569(n)-A109720(n)` -/
def P5379998518554872861.Spec : Prop :=
  ∀ n, P5379998518554872861.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P10389565307721151287

`A145569(A004273(n)-n)+A145569(n)`
-/

namespace A191275.P10389565307721151287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A004273 n - (n : ℤ)).toNat + A145569 n

end

end A191275.P10389565307721151287

namespace A191275

/-- `A145569(A004273(n)-n)+A145569(n)` -/
def P10389565307721151287.Spec : Prop :=
  ∀ n, P10389565307721151287.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P3762973133475004739

`A145569(n-A109720(n))+A145569(n)`
-/

namespace A191275.P3762973133475004739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 ((n : ℤ) - A109720 n).toNat + A145569 n

end

end A191275.P3762973133475004739

namespace A191275

/-- `A145569(n-A109720(n))+A145569(n)` -/
def P3762973133475004739.Spec : Prop :=
  ∀ n, P3762973133475004739.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P9001773946550076620

`A190719(n+1)+A190785(n+1)-A083028(n+1)`
-/

namespace A191275.P9001773946550076620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190719 (n + 1) + (A190785 (n + 1) - A083028 (n + 1))

end

end A191275.P9001773946550076620

namespace A191275

/-- `A190719(n+1)+A190785(n+1)-A083028(n+1)` -/
def P9001773946550076620.Spec : Prop :=
  ∀ n, P9001773946550076620.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P17257192098563446649

`A190719(n+1)+A083028(n+2)-A060107(n+2)`
-/

namespace A191275.P17257192098563446649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190719 (n + 1) + (A083028 (n + 2) - A060107 (n + 2))

end

end A191275.P17257192098563446649

namespace A191275

/-- `A190719(n+1)+A083028(n+2)-A060107(n+2)` -/
def P17257192098563446649.Spec : Prop :=
  ∀ n, P17257192098563446649.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P15928027841102745561

`A190785(n+1)+A190785(n+2)-A083026(n+2)`
-/

namespace A191275.P15928027841102745561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 1) + (A190785 (n + 2) - A083026 (n + 2))

end

end A191275.P15928027841102745561

namespace A191275

/-- `A190785(n+1)+A190785(n+2)-A083026(n+2)` -/
def P15928027841102745561.Spec : Prop :=
  ∀ n, P15928027841102745561.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P3390790731705964277

`A190785(n+1)+A190719(n+2)-A191276(n+2)`
-/

namespace A191275.P3390790731705964277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 1) + (A190719 (n + 2) - A191276 (n + 2))

end

end A191275.P3390790731705964277

namespace A191275

/-- `A190785(n+1)+A190719(n+2)-A191276(n+2)` -/
def P3390790731705964277.Spec : Prop :=
  ∀ n, P3390790731705964277.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P2383845864038679162

`A047273(A004776(n+2))`
-/

namespace A191275.P2383845864038679162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A004776 (n + 2)).toNat

end

end A191275.P2383845864038679162

namespace A191275

/-- `A047273(A004776(n+2))` -/
def P2383845864038679162.Spec : Prop :=
  ∀ n, P2383845864038679162.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P1194037058525945076

`filter[A047273(n+1), A152822(#)]`
-/

namespace A191275.P1194037058525945076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A191275.P1194037058525945076

namespace A191275

/-- `filter[A047273(n+1), A152822(#)]` -/
def P1194037058525945076.Spec : Prop :=
  ∀ n, P1194037058525945076.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P2750634503508179539

`filter[A042965(n+1), A093719(#)]`
-/

namespace A191275.P2750634503508179539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A191275.P2750634503508179539

namespace A191275

/-- `filter[A042965(n+1), A093719(#)]` -/
def P2750634503508179539.Spec : Prop :=
  ∀ n, P2750634503508179539.a n = A191275 (n + 1)

end A191275

/-! ## A191275.P5816865671015965261

`∩[A047273(n+1), A107750(n)]`
-/

namespace A191275.P5816865671015965261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191275.P5816865671015965261

namespace A191275

/-- `∩[A047273(n+1), A107750(n)]` -/
def P5816865671015965261.Spec : Prop :=
  ∀ n, (P5816865671015965261.a n : ℤ) = A191275 (n + 1)

end A191275

/-!
# A191276: Numbers that are congruent to {0, 1, 4, 5, 7, 9, 11} mod 12.

The programs for A191276, the canonical program `A191276.P7055579163183776945` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191276 has offset 1).

The definition of A191276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191276.P7055579163183776945

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=7, a(5)=8, a(6)=11, a(7)=12`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191276

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P7055579163183776945.Spec : Prop :=
  ∀ n, P7055579163183776945.a n = A191276 (n + 1)

theorem P7055579163183776945.correct : P7055579163183776945.Spec := by
  intro n
  simp only [A191276, Nat.add_sub_cancel]

end A191276

/-! ## A191276.P10593831366080143258

`comp[lcm(2, n)-6+n]`
-/

namespace A191276.P10593831366080143258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - 6 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A191276.P10593831366080143258

namespace A191276

/-- `comp[lcm(2, n)-6+n]` -/
def P10593831366080143258.Spec : Prop :=
  ∀ n, (P10593831366080143258.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P4288103625872090948

`record[n-and(2, gcd(12, n))]`
-/

namespace A191276.P4288103625872090948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 2 (Nat.gcd 12 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191276.P4288103625872090948

namespace A191276

/-- `record[n-and(2, gcd(12, n))]` -/
def P4288103625872090948.Spec : Prop :=
  ∀ n, P4288103625872090948.a n = A191276 (n + 1)

end A191276

/-! ## A191276.P2036769472477674696

`comp[xor(1, a(n-2)+5)]` with `a(0)=2, a(1)=3`
-/

namespace A191276.P2036769472477674696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  Nat.xor 1 (f1 (n - 2) + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A191276.P2036769472477674696

namespace A191276

/-- `comp[xor(1, a(n-2)+5)]` -/
def P2036769472477674696.Spec : Prop :=
  ∀ n, (P2036769472477674696.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P12133414475795710594

`∪[or(1, 3*n+1), 4*n]`
-/

namespace A191276.P12133414475795710594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A191276.P12133414475795710594

namespace A191276

/-- `∪[or(1, 3*n+1), 4*n]` -/
def P12133414475795710594.Spec : Prop :=
  ∀ n, (P12133414475795710594.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P1602271620740317921

`comp[(n+1)*(4-xor(n, n+1))]`
-/

namespace A191276.P1602271620740317921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (4 - (Nat.xor n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A191276.P1602271620740317921

namespace A191276

/-- `comp[(n+1)*(4-xor(n, n+1))]` -/
def P1602271620740317921.Spec : Prop :=
  ∀ n, (P1602271620740317921.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P12012596349388419549

`eq[1, gcd(gcd(n+2, n-2)+n-1, n+3)]`
-/

namespace A191276.P12012596349388419549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Int.gcd (n + 2 : ℤ) ((n : ℤ) - 2) : ℤ) + ((n : ℤ) - 1)) (n + 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191276.P12012596349388419549

namespace A191276

/-- `eq[1, gcd(gcd(n+2, n-2)+n-1, n+3)]` -/
def P12012596349388419549.Spec : Prop :=
  ∀ n, (P12012596349388419549.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P2260940849279910151

`comp[abs((and(2, n)+1-n%4)*(n-2)-3*n)]`
-/

namespace A191276.P2260940849279910151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.land 2 n : ℤ) + (1 - ((n % 4 : ℕ) : ℤ))) * ((n : ℤ) - 2) - (3 * n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A191276.P2260940849279910151

namespace A191276

/-- `comp[abs((and(2, n)+1-n%4)*(n-2)-3*n)]` -/
def P2260940849279910151.Spec : Prop :=
  ∀ n, (P2260940849279910151.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P2792271516034819169

`comp[or(n+1, 4-A020639(n+1))]`
-/

namespace A191276.P2792271516034819169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (4 - A020639 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A191276.P2792271516034819169

namespace A191276

/-- `comp[or(n+1, 4-A020639(n+1))]` -/
def P2792271516034819169.Spec : Prop :=
  ∀ n, (P2792271516034819169.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P3600114144122812323

`A238470(n)+A191275(n+1)`
-/

namespace A191276.P3600114144122812323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 n + A191275 (n + 1)

end

end A191276.P3600114144122812323

namespace A191276

/-- `A238470(n)+A191275(n+1)` -/
def P3600114144122812323.Spec : Prop :=
  ∀ n, P3600114144122812323.a n = A191276 (n + 1)

end A191276

/-! ## A191276.P245056099852243181

`∪[A007310(n+1), A008586(n)]`
-/

namespace A191276.P245056099852243181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P245056099852243181

namespace A191276

/-- `∪[A007310(n+1), A008586(n)]` -/
def P245056099852243181.Spec : Prop :=
  ∀ n, (P245056099852243181.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P6209064596309985250

`∪[A084087(n+1), A008586(n)]`
-/

namespace A191276.P6209064596309985250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P6209064596309985250

namespace A191276

/-- `∪[A084087(n+1), A008586(n)]` -/
def P6209064596309985250.Spec : Prop :=
  ∀ n, (P6209064596309985250.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P5820125867380020588

`∪[A359380(n+1), A008586(n)]`
-/

namespace A191276.P5820125867380020588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P5820125867380020588

namespace A191276

/-- `∪[A359380(n+1), A008586(n)]` -/
def P5820125867380020588.Spec : Prop :=
  ∀ n, (P5820125867380020588.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P5090610550845621836

`∪[A359380(n+1), A008594(n)]`
-/

namespace A191276.P5090610550845621836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P5090610550845621836

namespace A191276

/-- `∪[A359380(n+1), A008594(n)]` -/
def P5090610550845621836.Spec : Prop :=
  ∀ n, (P5090610550845621836.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P6900763640603150846

`∪[A374044(n+1), A008586(n)]`
-/

namespace A191276.P6900763640603150846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P6900763640603150846

namespace A191276

/-- `∪[A374044(n+1), A008586(n)]` -/
def P6900763640603150846.Spec : Prop :=
  ∀ n, (P6900763640603150846.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P4762479691989681053

`∪[A083030(n+1), A359380(n+1)]`
-/

namespace A191276.P4762479691989681053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P4762479691989681053

namespace A191276

/-- `∪[A083030(n+1), A359380(n+1)]` -/
def P4762479691989681053.Spec : Prop :=
  ∀ n, (P4762479691989681053.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P2489741624979075581

`∪[A174398(n+1), A319280(n+1)]`
-/

namespace A191276.P2489741624979075581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P2489741624979075581

namespace A191276

/-- `∪[A174398(n+1), A319280(n+1)]` -/
def P2489741624979075581.Spec : Prop :=
  ∀ n, (P2489741624979075581.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P3276046664109035510

`∪[A272975(n+1), A359380(n+1)]`
-/

namespace A191276.P3276046664109035510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P3276046664109035510

namespace A191276

/-- `∪[A272975(n+1), A359380(n+1)]` -/
def P3276046664109035510.Spec : Prop :=
  ∀ n, (P3276046664109035510.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P2730468883802535928

`∪[A319280(n+1), A359380(n+1)]`
-/

namespace A191276.P2730468883802535928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191276.P2730468883802535928

namespace A191276

/-- `∪[A319280(n+1), A359380(n+1)]` -/
def P2730468883802535928.Spec : Prop :=
  ∀ n, (P2730468883802535928.a n : ℤ) = A191276 (n + 1)

end A191276

/-! ## A191276.P3588861072655571282

`A083033(n+2)-A291454(n+1)`
-/

namespace A191276.P3588861072655571282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 2) - A291454 (n + 1)

end

end A191276.P3588861072655571282

namespace A191276

/-- `A083033(n+2)-A291454(n+1)` -/
def P3588861072655571282.Spec : Prop :=
  ∀ n, P3588861072655571282.a n = A191276 (n + 1)

end A191276

/-!
# A191277: Expansion of e.g.f. 1/(1 - sinh(x)*cosh(x)).

The programs for A191277, there is no canonical definition to state claims against.
-/

/-! ## A191277.P3063705985075483170

`A026177(A000670(n))+A011886(n)`
-/

namespace A191277.P3063705985075483170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (A000670 n).toNat + A011886 n

end

end A191277.P3063705985075483170

/-! ## A191277.P15117773548899095401

`A074069(A184315(n+2))`
-/

namespace A191277.P15117773548899095401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074069 (A184315 (n + 2)).toNat

end

end A191277.P15117773548899095401

/-!
# A191278: Count of mosaic numbers that equal n.

The programs for A191278, there is no canonical definition to state claims against.
-/

/-! ## A191278.P15048495500783669059

`A188817(A046644(n+1)^A327695(n+1))`
-/

namespace A191278.P15048495500783669059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188817 (SequenceMachineLib.roundAway ((A046644 (n + 1) : ℚ) ^ (A327695 (n + 1) : ℤ))).toNat

end

end A191278.P15048495500783669059

/-! ## A191278.P7020636392826431311

`A260708(A081707(n+1)%A101640(n+1))`
-/

namespace A191278.P7020636392826431311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 (Int.tmod (A081707 (n + 1)) (A101640 (n + 1))).toNat

end

end A191278.P7020636392826431311

/-! ## A191278.P17112743893729518557

`A152009(lcm(A081707(n+1), A335521(n+1)))`
-/

namespace A191278.P17112743893729518557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152009 (Int.lcm (A081707 (n + 1)) (A335521 (n + 1)))

end

end A191278.P17112743893729518557

/-! ## A191278.P1694929733390181754

`A054886(A281116(n+1)%A241231(n+4))`
-/

namespace A191278.P1694929733390181754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (Int.tmod (A281116 (n + 1)) (A241231 (n + 4))).toNat

end

end A191278.P1694929733390181754

/-! ## A191278.P15982269308881047151

`A375750(A008480(n+1)%A355911(n+5))`
-/

namespace A191278.P15982269308881047151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375750 (Int.tmod (A008480 (n + 1)) (A355911 (n + 5))).toNat

end

end A191278.P15982269308881047151

/-!
# A191280: a(0)=1; for n>0, p2(n)+Sum(binomial(2*k,k)*p2(n-k)/2,k=1..n-1) where p2 = A002995, the number of unlabeled planar trees on n nodes.

The programs for A191280, there is no canonical definition to state claims against.
-/

/-! ## A191280.P4548704234605200807

`A076885(A001168(n+1))`
-/

namespace A191280.P4548704234605200807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A001168 (n + 1)).toNat

end

end A191280.P4548704234605200807

/-! ## A191280.P4746550005827606423

`A008621(A281593(n)+A068875(n))`
-/

namespace A191280.P4746550005827606423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A281593 n + A068875 n).toNat

end

end A191280.P4746550005827606423

/-! ## A191280.P11779197577259104538

`A300763(A361276(n)+A360294(n))`
-/

namespace A191280.P11779197577259104538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A361276 n + A360294 n).toNat

end

end A191280.P11779197577259104538

/-!
# A191281: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x and x^2-x+1 are in a.

The programs for A191281, there is no canonical definition to state claims against.
-/

/-! ## A191281.P17416372504770084477

`record[(n+1)/A256188(A136655(n+1))]`
-/

namespace A191281.P17416372504770084477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A256188 (A136655 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191281.P17416372504770084477

/-! ## A191281.P16273021501666050865

`record[A236847(record[A256094(n)])]`
-/

namespace A191281.P16273021501666050865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191281.P16273021501666050865

/-! ## A191281.P3115474206783620028

`eq[2, A000005(A049773(n+1)^4+1)]+1`
-/

namespace A191281.P3115474206783620028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049773 (n + 1) ^ 4 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191281.P3115474206783620028

/-! ## A191281.P1211394616323833867

`lt[A331748(n), A020639(A110169(n))]`
-/

namespace A191281.P1211394616323833867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A110169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191281.P1211394616323833867

/-! ## A191281.P12584162963462390798

`lt[A331748(n), A020639(A110608(n))]`
-/

namespace A191281.P12584162963462390798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A110608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191281.P12584162963462390798

/-!
# A191282: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x and x^2+x+1 are in a.

The programs for A191282, there is no canonical definition to state claims against.
-/

/-! ## A191282.P4672712403598571585

`eq[2, A110012(A278243(n))]`
-/

namespace A191282.P4672712403598571585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110012 (A278243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191282.P4672712403598571585

/-! ## A191282.P17862411309205565490

`record[A004277(n)/A110012(A278243(n))]`
-/

namespace A191282.P17862411309205565490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A110012 (A278243 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191282.P17862411309205565490

/-! ## A191282.P7076890632955518433

`record[A004275(n+1)/A110012(A278243(n))]`
-/

namespace A191282.P7076890632955518433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (n + 1) : ℚ) / (A110012 (A278243 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191282.P7076890632955518433

/-!
# A191283: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x and x(x+1)/2 are in a.

The programs for A191283, there is no canonical definition to state claims against.
-/

/-! ## A191283.P2915332775897877615

`record[gcd(n, A000027(A222712(n+1)))]`
-/

namespace A191283.P2915332775897877615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000027 (A222712 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191283.P2915332775897877615

/-! ## A191283.P14351458382539891757

`record[A000005(A017665(A043320(n+1)))]`
-/

namespace A191283.P14351458382539891757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017665 (A043320 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191283.P14351458382539891757

/-! ## A191283.P5632659586686338165

`eq[A059966(A333939(n)), A329313(2*n)]`
-/

namespace A191283.P5632659586686338165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A333939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191283.P5632659586686338165

/-! ## A191283.P11740658607360772291

`record[A188550(A136053(n+1)+A108299(n))]`
-/

namespace A191283.P11740658607360772291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188550 (A136053 (n + 1) + A108299 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191283.P11740658607360772291

/-!
# A191284: Increasing sequence generated by these rules: a(1)=1, and if x is in a then floor(3x/2) and 2x are in a.

The programs for A191284, there is no canonical definition to state claims against.
-/

/-! ## A191284.P18086734310942132322

`record[A191090(A059893(2*(n+1)))]`
-/

namespace A191284.P18086734310942132322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191090 (A059893 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191284.P18086734310942132322

/-! ## A191284.P11388355876325854361

`eq[A335877(n+1), A355655(A139827(3*n+5)+1)]+1`
-/

namespace A191284.P11388355876325854361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355655 (A139827 (3 * n + 5) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191284.P11388355876325854361

/-! ## A191284.P457467146415952774

`lt[A327125(A364491(n)), 1]`
-/

namespace A191284.P457467146415952774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 (A364491 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191284.P457467146415952774

/-! ## A191284.P10756623251073704573

`A186716(A327148(n))+A014121(n+1)`
-/

namespace A191284.P10756623251073704573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186716 (A327148 n).toNat + A014121 (n + 1)

end

end A191284.P10756623251073704573

/-! ## A191284.P15901376594642726665

`lt[A375047(n+1), A000001(A338086(n))]`
-/

namespace A191284.P15901376594642726665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A338086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191284.P15901376594642726665

/-!
# A191285: Increasing sequence S generated by these rules: 1 is in S, and if x is in S then 3x and floor((x^2)/2) are in S.

The programs for A191285, there is no canonical definition to state claims against.
-/

/-! ## A191285.P6506392217731325369

`eq[A072909(n+1), A301333(n)]`
-/

namespace A191285.P6506392217731325369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191285.P6506392217731325369

/-! ## A191285.P9672477258304621725

`eq[A079115(n+1), A301333(n)]`
-/

namespace A191285.P9672477258304621725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191285.P9672477258304621725

/-! ## A191285.P4487143120324312195

`eq[A000377(n), A005765(n+2)]`
-/

namespace A191285.P4487143120324312195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005765 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191285.P4487143120324312195

/-! ## A191285.P3243800371797149574

`eq[A005765(n+2), A232989(n)]`
-/

namespace A191285.P3243800371797149574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005765 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191285.P3243800371797149574

/-! ## A191285.P1576445888251123162

`eq[A005765(n+2), A300982(n)]`
-/

namespace A191285.P1576445888251123162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005765 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191285.P1576445888251123162

/-!
# A191286: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 1+x^2 are in a.

The programs for A191286, there is no canonical definition to state claims against.
-/

/-! ## A191286.P5769690507729548100

`eq[1, A054532(A132731(3*n+4))]+1`
-/

namespace A191286.P5769690507729548100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (A132731 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191286.P5769690507729548100

/-!
# A191288: Increasing sequence generated by these rules: 1 is in a, and if x is in a then 2x and floor((x^2)/3) are in a.

The programs for A191288, there is no canonical definition to state claims against.
-/

/-! ## A191288.P9065472953640027204

`eq[1, A126885(A352961(n))]`
-/

namespace A191288.P9065472953640027204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (A352961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191288.P9065472953640027204

/-! ## A191288.P15391301246944682077

`eq[A037800(3*n), A363801(A366213(n+1))]`
-/

namespace A191288.P15391301246944682077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363801 (A366213 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191288.P15391301246944682077

/-! ## A191288.P14321044970808362069

`eq[A048729(A191612(n+1)), A048735(n)]`
-/

namespace A191288.P14321044970808362069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (A191612 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191288.P14321044970808362069

/-! ## A191288.P1360253555892912318

`eq[A048729(A191612(n+1)), A213370(n)]`
-/

namespace A191288.P1360253555892912318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (A191612 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191288.P1360253555892912318

/-! ## A191288.P18417676817523890027

`eq[A275714(A208270(n+5)), A318921(n)]`
-/

namespace A191288.P18417676817523890027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275714 (A208270 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191288.P18417676817523890027

/-!
# A191289: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x-1 and x^2 are in a.

The programs for A191289, there is no canonical definition to state claims against.
-/

/-! ## A191289.P10077051733035300892

`lt[A336921(2*n+1), A040630(A139264(3*n+4))]+1`
-/

namespace A191289.P10077051733035300892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040630 (A139264 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A191289.P10077051733035300892

/-! ## A191289.P15228983760843616410

`record[A224458(3*(∑[n]+1))]`
-/

namespace A191289.P15228983760843616410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (3 * (∑ j ∈ Finset.range (n + 1), f2 j + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191289.P15228983760843616410

/-! ## A191289.P9818088230756704373

`record[and((n+1)/2^val(n+1, 2), A126343(n+1))]`
-/

namespace A191289.P9818088230756704373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A126343 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191289.P9818088230756704373

/-! ## A191289.P6249197817479922986

`∑[dr(A026136(A002212(n)))]`
-/

namespace A191289.P6249197817479922986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A026136 (A002212 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191289.P6249197817479922986

/-! ## A191289.P11357052455664785654

`record[and(A126343(n+1), A141310(n))]`
-/

namespace A191289.P11357052455664785654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126343 (n + 1)) (A141310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191289.P11357052455664785654

/-!
# A191290: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 2x+1 and x(x+1)/2 are in a.

The programs for A191290, there is no canonical definition to state claims against.
-/

/-! ## A191290.P618915883204070978

`eq[A124331(n+2), A265863(A000265(n+1))]`
-/

namespace A191290.P618915883204070978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191290.P618915883204070978

/-! ## A191290.P13373519352329214058

`record[xor(A305790(n+1), A307297(n))]`
-/

namespace A191290.P13373519352329214058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A305790 (n + 1)) (A307297 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191290.P13373519352329214058

/-! ## A191290.P18351575155173032807

`record[or(A049317(n+1), A194914(n+1))]`
-/

namespace A191290.P18351575155173032807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049317 (n + 1)) (A194914 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191290.P18351575155173032807

/-! ## A191290.P17658718684441767899

`record[or(A064775(n+1), A225765(n+1))]`
-/

namespace A191290.P17658718684441767899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064775 (n + 1)) (A225765 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191290.P17658718684441767899

/-! ## A191290.P17251957318470743801

`eq[A048993(∏{p}[n+1, #]), A329313(2*(n+1))]`
-/

namespace A191290.P17251957318470743801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A191290.P17251957318470743801

/-!
# A191291: The number of bases >=2 in which n is 3-digit number.

The programs for A191291, the canonical program `A191291.P7722402091718871721` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191291 has offset 1).

The definition of A191291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191291.P7722402091718871721

`floor(sqrt(n+1))-floor((n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191291

/-- `floor(sqrt(n+1))-floor((n+1)^(1/3))` -/
def P7722402091718871721.Spec : Prop :=
  ∀ n, P7722402091718871721.a n = A191291 (n + 1)

theorem P7722402091718871721.correct : P7722402091718871721.Spec := by
  intro n
  simp only [A191291, Nat.add_sub_cancel]

end A191291

/-! ## A191291.P12400485029926573924

`Δ[A022554(n)-A031876(n)]`
-/

namespace A191291.P12400485029926573924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n - A031876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191291.P12400485029926573924

namespace A191291

/-- `Δ[A022554(n)-A031876(n)]` -/
def P12400485029926573924.Spec : Prop :=
  ∀ n, P12400485029926573924.a n = A191291 (n + 1)

end A191291

/-! ## A191291.P17457252663795250422

`∑[A015101(A052409(n+1)!)]`
-/

namespace A191291.P17457252663795250422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (Nat.factorial (A052409 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191291.P17457252663795250422

namespace A191291

/-- `∑[A015101(A052409(n+1)!)]` -/
def P17457252663795250422.Spec : Prop :=
  ∀ n, P17457252663795250422.a n = A191291 (n + 1)

end A191291

/-! ## A191291.P10592078963101617807

`∑[A015101(A132349(n+1)!)]`
-/

namespace A191291.P10592078963101617807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (Nat.factorial (A132349 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191291.P10592078963101617807

namespace A191291

/-- `∑[A015101(A132349(n+1)!)]` -/
def P10592078963101617807.Spec : Prop :=
  ∀ n, P10592078963101617807.a n = A191291 (n + 1)

end A191291

/-! ## A191291.P13729714009218366638

`A183570(n)%A219227(n+1)`
-/

namespace A191291.P13729714009218366638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183570 n) (A219227 (n + 1))

end

end A191291.P13729714009218366638

namespace A191291

/-- `A183570(n)%A219227(n+1)` -/
def P13729714009218366638.Spec : Prop :=
  ∀ n, P13729714009218366638.a n = A191291 (n + 1)

end A191291

/-!
# A191292: Numbers k such that k-1 and k+1 are both digitally balanced.

The programs for A191292, there is no canonical definition to state claims against.
-/

/-! ## A191292.P12876095496365698116

`xor(gcd(2, A031443(n+1)), A337238(n+1))`
-/

namespace A191292.P12876095496365698116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.gcd 2 (A031443 (n + 1)) : ℤ) (A337238 (n + 1))

end

end A191292.P12876095496365698116

/-! ## A191292.P12723180865118759399

`xor(A040001(A031443(n+1)), A337238(n+1))`
-/

namespace A191292.P12723180865118759399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040001 (A031443 (n + 1)).toNat) (A337238 (n + 1))

end

end A191292.P12723180865118759399

/-! ## A191292.P5447631198800375031

`A047457(A031443(n+1)+1)`
-/

namespace A191292.P5447631198800375031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047457 (A031443 (n + 1) + 1).toNat

end

end A191292.P5447631198800375031

/-! ## A191292.P7486871924902952490

`A047457(eq[0, A037861(n)]+1)`
-/

namespace A191292.P7486871924902952490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191292.P7486871924902952490

/-! ## A191292.P12975495697611849980

`A271833(A337238(n+1))`
-/

namespace A191292.P12975495697611849980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271833 (A337238 (n + 1)).toNat

end

end A191292.P12975495697611849980

/-!
# A191293: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 2 horizontally or vertically neighboring 1s.

The programs for A191293, there is no canonical definition to state claims against.
-/

/-! ## A191293.P6436112202623023609

`∑[A351701(n!+1)]`
-/

namespace A191293.P6436112202623023609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351701 (Nat.factorial n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191293.P6436112202623023609

/-! ## A191293.P356624269707077862

`A031265(A378465(n)+1)`
-/

namespace A191293.P356624269707077862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031265 (A378465 n + 1).toNat

end

end A191293.P356624269707077862

/-!
# A191294: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 1 knight-move neighboring 1.

The programs for A191294, there is no canonical definition to state claims against.
-/

/-! ## A191294.P2112812308649086003

`A076497(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A191294.P2112812308649086003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A076497 (a (n - 1) + 3).toNat

end

end A191294.P2112812308649086003

/-! ## A191294.P2368566391266428832

`A339619(and(-2, 2^n))+∑[∑{e}[n, #]]`
-/

namespace A191294.P2368566391266428832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339619 (Int.land (-2) (2 ^ n : ℤ)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A191294.P2368566391266428832

/-!
# A191295: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 2 knight-move neighboring 1s.

The programs for A191295, there is no canonical definition to state claims against.
-/

/-! ## A191295.P17999719197397301294

`∏{p}[(A073999(n+1)+1)², #]`
-/

namespace A191295.P17999719197397301294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073999 (n + 1) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191295.P17999719197397301294

/-! ## A191295.P10731630153164365290

`A006530(round(sqrt(C(n+1, 3)))^(n+1)+1)`
-/

namespace A191295.P10731630153164365290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (n + 1) 3 : ℝ)) ^ (n + 1) + 1).toNat

end

end A191295.P10731630153164365290

/-!
# A191296: Least k such that k-1 and k+1 in binary representation have same number n of 0's as 1's.

The programs for A191296, the canonical program `A191296.P6052797589910244650` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191296 has offset 2).

The definition of A191296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191296.P6052797589910244650

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=11, a(1)=36, a(2)=140, a(3)=540`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191296

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P6052797589910244650.Spec : Prop :=
  ∀ n, P6052797589910244650.a n = A191296 (n + 2)

theorem P6052797589910244650.correct : P6052797589910244650.Spec := by
  intro n
  simp only [A191296, Nat.add_sub_cancel]

end A191296

/-! ## A191296.P2613182091734414572

`A281482(n+1)-3%A281482(n)`
-/

namespace A191296.P2613182091734414572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281482 (n + 1) - Int.tmod 3 (A281482 n)

end

end A191296.P2613182091734414572

namespace A191296

/-- `A281482(n+1)-3%A281482(n)` -/
def P2613182091734414572.Spec : Prop :=
  ∀ n, P2613182091734414572.a n = A191296 (n + 2)

end A191296

/-! ## A191296.P1856113441699613959

`xor(A056469(2*(n+2)), A134067(n))`
-/

namespace A191296.P1856113441699613959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056469 (2 * (n + 2))) (A134067 n)

end

end A191296.P1856113441699613959

namespace A191296

/-- `xor(A056469(2*(n+2)), A134067(n))` -/
def P1856113441699613959.Spec : Prop :=
  ∀ n, P1856113441699613959.a n = A191296 (n + 2)

end A191296

/-! ## A191296.P7252555577048065834

`A094373(2*(n+2))+A131130(n)+1`
-/

namespace A191296.P7252555577048065834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (2 * (n + 2)) + (A131130 n + 1)

end

end A191296.P7252555577048065834

namespace A191296

/-- `A094373(2*(n+2))+A131130(n)+1` -/
def P7252555577048065834.Spec : Prop :=
  ∀ n, P7252555577048065834.a n = A191296 (n + 2)

end A191296

/-! ## A191296.P4310760158811907098

`A283650(2*(n+1))+A000079(n+2)`
-/

namespace A191296.P4310760158811907098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283650 (2 * (n + 1)) + A000079 (n + 2)

end

end A191296.P4310760158811907098

namespace A191296

/-- `A283650(2*(n+1))+A000079(n+2)` -/
def P4310760158811907098.Spec : Prop :=
  ∀ n, P4310760158811907098.a n = A191296 (n + 2)

end A191296

/-! ## A191296.P12316681532731511433

`xor(1, A283592(n+2)+A283591(2*(n+1)))`
-/

namespace A191296.P12316681532731511433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A283592 (n + 2) + A283591 (2 * (n + 1)))

end

end A191296.P12316681532731511433

namespace A191296

/-- `xor(1, A283592(n+2)+A283591(2*(n+1)))` -/
def P12316681532731511433.Spec : Prop :=
  ∀ n, P12316681532731511433.a n = A191296 (n + 2)

end A191296

/-! ## A191296.P14348195414954043222

`A173033(n)+A000079(n+1)*A258935(n+2)`
-/

namespace A191296.P14348195414954043222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173033 n + A000079 (n + 1) * A258935 (n + 2)

end

end A191296.P14348195414954043222

namespace A191296

/-- `A173033(n)+A000079(n+1)*A258935(n+2)` -/
def P14348195414954043222.Spec : Prop :=
  ∀ n, P14348195414954043222.a n = A191296 (n + 2)

end A191296

/-! ## A191296.P18045011016956950980

`8*A000079(n)²+A000079(n+2)-A113311(2*n)`
-/

namespace A191296.P18045011016956950980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000079 n ^ 2 + (A000079 (n + 2) - A113311 (2 * n))

end

end A191296.P18045011016956950980

namespace A191296

/-- `8*A000079(n)²+A000079(n+2)-A113311(2*n)` -/
def P18045011016956950980.Spec : Prop :=
  ∀ n, P18045011016956950980.a n = A191296 (n + 2)

end A191296

/-! ## A191296.P17154365954831250041

`A000079(2*n+3)+A000079(n+2)-A113311(2*n)`
-/

namespace A191296.P17154365954831250041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 3) + (A000079 (n + 2) - A113311 (2 * n))

end

end A191296.P17154365954831250041

namespace A191296

/-- `A000079(2*n+3)+A000079(n+2)-A113311(2*n)` -/
def P17154365954831250041.Spec : Prop :=
  ∀ n, P17154365954831250041.a n = A191296 (n + 2)

end A191296

/-!
# A191298: Expansion of exp(x*sin(x)) = 1 + Sum_{n>0} a(n)*x^(2*n)/(2*n-1)!.

The programs for A191298, there is no canonical definition to state claims against.
-/

/-! ## A191298.P4997446769821098125

`A009214(n)/A004277(n)`
-/

namespace A191298.P4997446769821098125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009214 n : ℚ) / (A004277 n : ℚ)

end

end A191298.P4997446769821098125

/-! ## A191298.P4160980603667987305

`A009214(n)/record[A124625(n)]`
-/

namespace A191298.P4160980603667987305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009214 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A191298.P4160980603667987305

/-! ## A191298.P10162612564434876057

`A009214(n)/A028310(2*n)`
-/

namespace A191298.P10162612564434876057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009214 n : ℚ) / (A028310 (2 * n) : ℚ)

end

end A191298.P10162612564434876057

/-! ## A191298.P5196936616406655105

`A009214(n)/(A028310(n)+n)`
-/

namespace A191298.P5196936616406655105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009214 n : ℚ) / (A028310 n + (n : ℤ) : ℚ)

end

end A191298.P5196936616406655105

/-! ## A191298.P3997498396971642980

`A009214(n)/(A008486(n)-n)`
-/

namespace A191298.P3997498396971642980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009214 n : ℚ) / (A008486 n - (n : ℤ) : ℚ)

end

end A191298.P3997498396971642980

