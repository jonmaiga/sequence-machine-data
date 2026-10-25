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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A220801: Sum of neighbor maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and vertical neighbors in a random 0..3 nX2 array.

The programs for A220801, there is no canonical definition to state claims against.
-/

/-! ## A220801.P8732249663350648053

`A220805(∑[n+1]+2)`
-/

namespace A220801.P8732249663350648053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220801.P8732249663350648053

/-! ## A220801.P8739837841106971360

`lcm(2, A220805(A000096(n)+3))`
-/

namespace A220801.P8739837841106971360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220805 (A000096 n + 3).toNat)

end

end A220801.P8739837841106971360

/-! ## A220801.P11890049252077277501

`record[A220805(n+1)/A036073(n)]`
-/

namespace A220801.P11890049252077277501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220805 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220801.P11890049252077277501

/-! ## A220801.P6098029956664467460

`record[A220805(n+3)/A070918(n)]`
-/

namespace A220801.P6098029956664467460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220805 (n + 3) : ℚ) / (A070918 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220801.P6098029956664467460

/-! ## A220801.P17734414064857874707

`record[root(A220805(n+1), A156366(n))]`
-/

namespace A220801.P17734414064857874707
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220805 (n + 1) : ℝ) ^ (1 / (A156366 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220801.P17734414064857874707

/-!
# A220802: Sum of neighbor maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and vertical neighbors in a random 0..3 nX3 array.

The programs for A220802, there is no canonical definition to state claims against.
-/

/-! ## A220802.P12225711901290760858

`A220805(∑[n+2]+4)`
-/

namespace A220802.P12225711901290760858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220802.P12225711901290760858

/-! ## A220802.P4664832227583298746

`lcm(2, A220805(A167614(n+1)))`
-/

namespace A220802.P4664832227583298746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220805 (A167614 (n + 1)).toNat)

end

end A220802.P4664832227583298746

/-! ## A220802.P14930909676347687011

`A220805(A167614(n+1))+A011731(n)`
-/

namespace A220802.P14930909676347687011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A167614 (n + 1)).toNat + A011731 n

end

end A220802.P14930909676347687011

/-! ## A220802.P17218745424378655900

`A220805(A167614(n+1))+A025469(n)`
-/

namespace A220802.P17218745424378655900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A167614 (n + 1)).toNat + A025469 n

end

end A220802.P17218745424378655900

/-! ## A220802.P10305525905690469432

`A220805(A167614(n+1))+A031346(n)`
-/

namespace A220802.P10305525905690469432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A167614 (n + 1)).toNat + A031346 n

end

end A220802.P10305525905690469432

/-!
# A220803: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and vertical neighbors in a random 0..3 nX4 array.

The programs for A220803, there is no canonical definition to state claims against.
-/

/-! ## A220803.P9962598358102467207

`A220805(∑[n+3]+7)`
-/

namespace A220803.P9962598358102467207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220803.P9962598358102467207

/-! ## A220803.P10255303148161649614

`A220805(A145018(n+4))+A091194(n+1)`
-/

namespace A220803.P10255303148161649614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A145018 (n + 4)).toNat + A091194 (n + 1)

end

end A220803.P10255303148161649614

/-! ## A220803.P6351867177180866576

`A220805(A145018(n+4))+A098108(2*n)`
-/

namespace A220803.P6351867177180866576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A145018 (n + 4)).toNat + A098108 (2 * n)

end

end A220803.P6351867177180866576

/-! ## A220803.P651090312518048961

`A220805(A052905(n)+9)+A120080(2*n+3)`
-/

namespace A220803.P651090312518048961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A052905 n + 9).toNat + A120080 (2 * n + 3)

end

end A220803.P651090312518048961

/-!
# A220804: Sum of neighbor maps: number of n X 5 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal and vertical neighbors in a random 0..3 n X 5 array.

The programs for A220804, there is no canonical definition to state claims against.
-/

/-! ## A220804.P5569633184412974195

`A220805(A374005(n+1))`
-/

namespace A220804.P5569633184412974195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A374005 (n + 1)).toNat

end

end A220804.P5569633184412974195

/-! ## A220804.P1670172257992676226

`A220805(A167499(n+3))`
-/

namespace A220804.P1670172257992676226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A167499 (n + 3)).toNat

end

end A220804.P1670172257992676226

/-! ## A220804.P6297108245893145021

`A220805(A155212(n)+13)`
-/

namespace A220804.P6297108245893145021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220805 (A155212 n + 13).toNat

end

end A220804.P6297108245893145021

/-!
# A220806: Equals one maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..2 n X 2 array.

The programs for A220806, the canonical program `A220806.P11484627285642746905` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220806 has offset 1).

The definition of A220806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220806.P11484627285642746905

`4^(n+1)-A135491(2*n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A220806

/-- `4^(n+1)-A135491(2*n+1)` -/
def P11484627285642746905.Spec : Prop :=
  ∀ n, P11484627285642746905.a n = A220806 (n + 1)

theorem P11484627285642746905.correct : P11484627285642746905.Spec := by
  intro n
  simp only [A220806, Nat.add_sub_cancel]

end A220806

/-! ## A220806.P17016864528621453983

`record[A213173(n+2)-A135491(n+1)]`
-/

namespace A220806.P17016864528621453983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 (n + 2) - A135491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220806.P17016864528621453983

namespace A220806

/-- `record[A213173(n+2)-A135491(n+1)]` -/
def P17016864528621453983.Spec : Prop :=
  ∀ n, P17016864528621453983.a n = A220806 (n + 1)

end A220806

/-! ## A220806.P17656210818948157368

`A265725(2*n+1)+2*A000079(n)²`
-/

namespace A220806.P17656210818948157368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265725 (2 * n + 1) + 2 * A000079 n ^ 2

end

end A220806.P17656210818948157368

namespace A220806

/-- `A265725(2*n+1)+2*A000079(n)²` -/
def P17656210818948157368.Spec : Prop :=
  ∀ n, P17656210818948157368.a n = A220806 (n + 1)

end A220806

/-! ## A220806.P17974078201554834891

`A265725(2*n+1)+A000079(2*n+1)`
-/

namespace A220806.P17974078201554834891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265725 (2 * n + 1) + A000079 (2 * n + 1)

end

end A220806.P17974078201554834891

namespace A220806

/-- `A265725(2*n+1)+A000079(2*n+1)` -/
def P17974078201554834891.Spec : Prop :=
  ∀ n, P17974078201554834891.a n = A220806 (n + 1)

end A220806

/-! ## A220806.P8093335934704434687

`A213663(2*n+1)-A000213(2*(n+2))`
-/

namespace A220806.P8093335934704434687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213663 (2 * n + 1) - A000213 (2 * (n + 2))

end

end A220806.P8093335934704434687

namespace A220806

/-- `A213663(2*n+1)-A000213(2*(n+2))` -/
def P8093335934704434687.Spec : Prop :=
  ∀ n, P8093335934704434687.a n = A220806 (n + 1)

end A220806

/-! ## A220806.P11336244312582717588

`A000051(2*n+1)+A265725(2*n+1)-1`
-/

namespace A220806.P11336244312582717588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) + (A265725 (2 * n + 1) - 1)

end

end A220806.P11336244312582717588

namespace A220806

/-- `A000051(2*n+1)+A265725(2*n+1)-1` -/
def P11336244312582717588.Spec : Prop :=
  ∀ n, P11336244312582717588.a n = A220806 (n + 1)

end A220806

/-! ## A220806.P5864074220594185472

`A133140(2*n+1)+A265725(2*n+1)-2`
-/

namespace A220806.P5864074220594185472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 (2 * n + 1) + (A265725 (2 * n + 1) - 2)

end

end A220806.P5864074220594185472

namespace A220806

/-- `A133140(2*n+1)+A265725(2*n+1)-2` -/
def P5864074220594185472.Spec : Prop :=
  ∀ n, P5864074220594185472.a n = A220806 (n + 1)

end A220806

/-! ## A220806.P11710563679985703178

`7*a(n-1)-11*a(n-2)-3*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=38, a(3)=168`
-/

namespace A220806.P11710563679985703178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 38, 168] fun n a =>
  7 * a (n - 1) - 11 * a (n - 2) - 3 * a (n - 3) - 4 * a (n - 4)

end

end A220806.P11710563679985703178

namespace A220806

/-- `7*a(n-1)-11*a(n-2)-3*a(n-3)-4*a(n-4)` -/
def P11710563679985703178.Spec : Prop :=
  ∀ n, P11710563679985703178.a n = A220806 (n + 1)

end A220806

/-!
# A220807: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A220807, there is no canonical definition to state claims against.
-/

/-! ## A220807.P9550006165902623098

`A220810(∑[n+2]+4)`
-/

namespace A220807.P9550006165902623098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220807.P9550006165902623098

/-! ## A220807.P9991521150204845399

`lcm((-1)^n, A220810(A167614(n+1)))`
-/

namespace A220807.P9991521150204845399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A220810 (A167614 (n + 1)).toNat)

end

end A220807.P9991521150204845399

/-! ## A220807.P18334265860129055056

`A220810(A167614(n+1))+A025465(n)`
-/

namespace A220807.P18334265860129055056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A167614 (n + 1)).toNat + A025465 n

end

end A220807.P18334265860129055056

/-! ## A220807.P4487631155178219325

`A220810(A167614(n+1))+A025466(n)`
-/

namespace A220807.P4487631155178219325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A167614 (n + 1)).toNat + A025466 n

end

end A220807.P4487631155178219325

/-! ## A220807.P16165550225122662740

`A220810(A167614(n+1))+A025469(n)`
-/

namespace A220807.P16165550225122662740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A167614 (n + 1)).toNat + A025469 n

end

end A220807.P16165550225122662740

/-!
# A220808: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A220808, there is no canonical definition to state claims against.
-/

/-! ## A220808.P7289034559093321205

`A220810(A374004(n+1))`
-/

namespace A220808.P7289034559093321205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A374004 (n + 1)).toNat

end

end A220808.P7289034559093321205

/-! ## A220808.P14316287301298795540

`A220810(A141214(n)+7)`
-/

namespace A220808.P14316287301298795540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A141214 n + 7).toNat

end

end A220808.P14316287301298795540

/-! ## A220808.P7874867088418325747

`A220810(A052905(n)+9)`
-/

namespace A220808.P7874867088418325747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A052905 n + 9).toNat

end

end A220808.P7874867088418325747

/-! ## A220808.P9567360230042547067

`A220810(A055999(n)+10)`
-/

namespace A220808.P9567360230042547067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A055999 n + 10).toNat

end

end A220808.P9567360230042547067

/-!
# A220809: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A220809, there is no canonical definition to state claims against.
-/

/-! ## A220809.P18356269091043272938

`A220810(A374005(n+1))`
-/

namespace A220809.P18356269091043272938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A374005 (n + 1)).toNat

end

end A220809.P18356269091043272938

/-! ## A220809.P5573811541533573210

`A220810(A167499(n+3))`
-/

namespace A220809.P5573811541533573210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A167499 (n + 3)).toNat

end

end A220809.P5573811541533573210

/-! ## A220809.P18219685528927004849

`A220810(A155212(n)+13)`
-/

namespace A220809.P18219685528927004849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (A155212 n + 13).toNat

end

end A220809.P18219685528927004849

/-!
# A220810: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A220810, there is no canonical definition to state claims against.
-/

/-! ## A220810.P1659588539073282645

`A221024(A000005(2^n))`
-/

namespace A220810.P1659588539073282645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A000005 (2 ^ n)).toNat

end

end A220810.P1659588539073282645

/-! ## A220810.P12994107744660618993

`A221024(∑[A291149(n)^n])`
-/

namespace A220810.P12994107744660618993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220810.P12994107744660618993

/-! ## A220810.P18160549080270572528

`A002264(3*A221024(n+1))`
-/

namespace A220810.P18160549080270572528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A221024 (n + 1)).toNat

end

end A220810.P18160549080270572528

/-! ## A220810.P17177176183439112220

`A289438(3*A221024(n+1))`
-/

namespace A220810.P17177176183439112220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (3 * A221024 (n + 1)).toNat

end

end A220810.P17177176183439112220

/-! ## A220810.P4153421809775397702

`A002265(4*A221024(n+1))`
-/

namespace A220810.P4153421809775397702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A221024 (n + 1)).toNat

end

end A220810.P4153421809775397702

/-!
# A220812: 

The programs for A220812, there is no canonical definition to state claims against.
-/

/-! ## A220812.P12927402070268383560

`10^2^n`
-/

namespace A220812.P12927402070268383560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ 2 ^ n

end

end A220812.P12927402070268383560

/-!
# A220813: The elements of the set P3 in ascending order.

The programs for A220813, there is no canonical definition to state claims against.
-/

/-! ## A220813.P15171803865285194308

`p?[A309243(n+1)%A008486(n+1)]`
-/

namespace A220813.P15171803865285194308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309243 (n + 1)) (A008486 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220813.P15171803865285194308

/-! ## A220813.P3186646829440211738

`p?[A027656(A300272(n+1))]`
-/

namespace A220813.P3186646829440211738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A300272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220813.P3186646829440211738

/-!
# A220814: The elements of the set P5 in ascending order.

The programs for A220814, there is no canonical definition to state claims against.
-/

/-! ## A220814.P10603511737822204442

`p?[C(n, A330348(A016969(n)))]`
-/

namespace A220814.P10603511737822204442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A330348 (A016969 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A220814.P10603511737822204442

/-! ## A220814.P4470745937905406972

`A045327(A065108(n+1))%A158682(n+5)`
-/

namespace A220814.P4470745937905406972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045327 (A065108 (n + 1)).toNat) (A158682 (n + 5))

end

end A220814.P4470745937905406972

/-! ## A220814.P17993398856955604380

`A000040(lt[A340202(n+1), A340205(3*(n+1))])`
-/

namespace A220814.P17993398856955604380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A220814.P17993398856955604380

/-! ## A220814.P8018126258455143735

`∩[A028768(n+1), A092570(n+1)]`
-/

namespace A220814.P8018126258455143735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220814.P8018126258455143735

/-! ## A220814.P1050437507746653684

`∩[A045327(n+1), A367600(n+1)]`
-/

namespace A220814.P1050437507746653684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220814.P1050437507746653684

/-!
# A220815: The elements of the set P7 in ascending order.

The programs for A220815, there is no canonical definition to state claims against.
-/

/-! ## A220815.P237129497716650038

`record[A006530(A102609(n+1)+A047369(n+1))]`
-/

namespace A220815.P237129497716650038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102609 (n + 1) + A047369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220815.P237129497716650038

/-! ## A220815.P11751718436172922827

`A042997(record[A036234(n+1)*A102609(n+1)])`
-/

namespace A220815.P11751718436172922827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) * A102609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220815.P11751718436172922827

/-! ## A220815.P7172856640480313861

`A042997(∑[A272917(A137795(n+1))])`
-/

namespace A220815.P7172856640480313861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272917 (A137795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220815.P7172856640480313861

/-! ## A220815.P12778362461579156586

`∩[A042997(n+1), A277061(n+1)]`
-/

namespace A220815.P12778362461579156586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A220815.P12778362461579156586

/-!
# A220816: Number of rooted binary MUL-trees with n leaves on the label set [3].

The programs for A220816, there is no canonical definition to state claims against.
-/

/-! ## A220816.P16402522700113344273

`A319539(∑[n+3]+1)`
-/

namespace A220816.P16402522700113344273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220816.P16402522700113344273

/-! ## A220816.P4530317684980686539

`record[gcd(A292085(n+6), A319539(n+4))]`
-/

namespace A220816.P4530317684980686539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292085 (n + 6)) (A319539 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220816.P4530317684980686539

/-! ## A220816.P3437638643255776339

`A001222(A094343(n+1))*A319539(A052905(n)+3)`
-/

namespace A220816.P3437638643255776339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A094343 (n + 1)).toNat * A319539 (A052905 n + 3).toNat

end

end A220816.P3437638643255776339

/-! ## A220816.P2539902025192404520

`A014963(A017317(n+8))*A319539(A052905(n)+3)`
-/

namespace A220816.P2539902025192404520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017317 (n + 8)).toNat * A319539 (A052905 n + 3).toNat

end

end A220816.P2539902025192404520

/-! ## A220816.P1576316653282564686

`A001222(A343783(n+1)+1)*A319539(A052905(n)+3)`
-/

namespace A220816.P1576316653282564686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A343783 (n + 1) + 1).toNat * A319539 (A052905 n + 3).toNat

end

end A220816.P1576316653282564686

/-!
# A220817: Number of rooted binary MUL-trees with n leaves on the label set [4].

The programs for A220817, there is no canonical definition to state claims against.
-/

/-! ## A220817.P7340948363134174380

`A319539(A027379(n+2))`
-/

namespace A220817.P7340948363134174380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A027379 (n + 2)).toNat

end

end A220817.P7340948363134174380

/-! ## A220817.P77758414834687512

`A319539(A055998(n+2))`
-/

namespace A220817.P77758414834687512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A055998 (n + 2)).toNat

end

end A220817.P77758414834687512

/-! ## A220817.P5973551420650930051

`A319539(A052905(n+1)+2)`
-/

namespace A220817.P5973551420650930051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A052905 (n + 1) + 2).toNat

end

end A220817.P5973551420650930051

/-! ## A220817.P15411619003659627731

`A319539(A000217(n+4)-3)`
-/

namespace A220817.P15411619003659627731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A000217 (n + 4) - 3).toNat

end

end A220817.P15411619003659627731

/-! ## A220817.P12050788810573354981

`A319539(A051936(n+4)+6)`
-/

namespace A220817.P12050788810573354981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A051936 (n + 4) + 6).toNat

end

end A220817.P12050788810573354981

/-! ## A220817.P10603040156321612614

`record[gcd(A292085(n+10), A319539(n+7))]`
-/

namespace A220817.P10603040156321612614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292085 (n + 10)) (A319539 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220817.P10603040156321612614

/-!
# A220818: Number of rooted binary MUL-trees with n leaves on the label set [5].

The programs for A220818, there is no canonical definition to state claims against.
-/

/-! ## A220818.P17793746276630293958

`A319539(A046691(n+3))`
-/

namespace A220818.P17793746276630293958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A046691 (n + 3)).toNat

end

end A220818.P17793746276630293958

/-! ## A220818.P3945946181925938737

`A319539(A052905(n+2)+1)`
-/

namespace A220818.P3945946181925938737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A052905 (n + 2) + 1).toNat

end

end A220818.P3945946181925938737

/-! ## A220818.P2289915315312712315

`A319539(A055998(n+3)-1)`
-/

namespace A220818.P2289915315312712315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A055998 (n + 3) - 1).toNat

end

end A220818.P2289915315312712315

/-! ## A220818.P14177336770972610381

`A319539(A000217(n+5)-4)`
-/

namespace A220818.P14177336770972610381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (A000217 (n + 5) - 4).toNat

end

end A220818.P14177336770972610381

/-! ## A220818.P15495973955733273326

`A319539(eq[2, A299038(n+7)])`
-/

namespace A220818.P15495973955733273326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220818.P15495973955733273326

/-!
# A220819: Number of rooted binary leaf-multilabeled trees with n leaves on the label set [2].

The programs for A220819, there is no canonical definition to state claims against.
-/

/-! ## A220819.P4004283760962118160

`A083563(n+1)-2*A001190(n+1)`
-/

namespace A220819.P4004283760962118160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083563 (n + 1) - 2 * A001190 (n + 1)

end

end A220819.P4004283760962118160

/-! ## A220819.P4736868768494625012

`A319541(A133263(n))-A000007(n)`
-/

namespace A220819.P4736868768494625012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319541 (A133263 n).toNat - A000007 n

end

end A220819.P4736868768494625012

/-! ## A220819.P12752492497967373010

`A319541(A133263(n))-A151934(n)`
-/

namespace A220819.P12752492497967373010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319541 (A133263 n).toNat - A151934 n

end

end A220819.P12752492497967373010

/-! ## A220819.P14195133591656191690

`A057427(n)*A319541(A133263(n))`
-/

namespace A220819.P14195133591656191690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A319541 (A133263 n).toNat

end

end A220819.P14195133591656191690

/-! ## A220819.P3402434593948202038

`A319541(A133263(n))%A024097(n)`
-/

namespace A220819.P3402434593948202038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319541 (A133263 n).toNat) (A024097 n)

end

end A220819.P3402434593948202038

/-! ## A220819.P2310751073251040027

`A151934(A151934(n)²)*A319541(A133263(n))`
-/

namespace A220819.P2310751073251040027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A151934 n ^ 2).toNat * A319541 (A133263 n).toNat

end

end A220819.P2310751073251040027

/-!
# A220820: Number of rooted binary leaf-multilabeled trees with n leaves on the label set [3].

The programs for A220820, there is no canonical definition to state claims against.
-/

/-! ## A220820.P11039513408256649418

`A113315(A002750(n))-1`
-/

namespace A220820.P11039513408256649418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (A002750 n).toNat - 1

end

end A220820.P11039513408256649418

/-! ## A220820.P4966107085076613292

`A001037(2*n)*A302642(A331684(n+3))`
-/

namespace A220820.P4966107085076613292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (2 * n) * A302642 (A331684 (n + 3)).toNat

end

end A220820.P4966107085076613292

/-!
# A220821: Number of rooted binary leaf-multilabeled trees with n leaves on the label set [4].

The programs for A220821, there is no canonical definition to state claims against.
-/

/-! ## A220821.P13742509413961241627

`A088864(A182356(n))`
-/

namespace A220821.P13742509413961241627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088864 (A182356 n).toNat

end

end A220821.P13742509413961241627

/-! ## A220821.P14621194154705398156

`A054900(A337041(n))*A178891(n)`
-/

namespace A220821.P14621194154705398156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A337041 n).toNat * A178891 n

end

end A220821.P14621194154705398156

/-!
# A220822: Number of rooted binary leaf-multilabeled trees with n leaves on the label set [5].

The programs for A220822, there is no canonical definition to state claims against.
-/

/-! ## A220822.P4545361538991024832

`C(n, 4)*A335952(∑[∑[n]])`
-/

namespace A220822.P4545361538991024832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) * A335952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220822.P4545361538991024832

/-! ## A220822.P4919031409940817282

`7*A325104(A205801(n))`
-/

namespace A220822.P4919031409940817282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A325104 (A205801 n).toNat

end

end A220822.P4919031409940817282

/-!
# A220823: Number of rooted gene trees with n leaves on the label set [3].

The programs for A220823, there is no canonical definition to state claims against.
-/

/-! ## A220823.P1820018951345550591

`A319254(∑[n+3]+1)`
-/

namespace A220823.P1820018951345550591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220823.P1820018951345550591

/-! ## A220823.P13580706467563799196

`record[gcd(A292085(n+6), A319254(n+4))]`
-/

namespace A220823.P13580706467563799196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292085 (n + 6)) (A319254 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220823.P13580706467563799196

/-! ## A220823.P3694749365580367489

`lcm(A165326(n), A319254(A034856(n+2)))`
-/

namespace A220823.P3694749365580367489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A319254 (A034856 (n + 2)).toNat)

end

end A220823.P3694749365580367489

/-! ## A220823.P13256991186556929399

`A319254(A034856(n+2))%A220824(n+1)`
-/

namespace A220823.P13256991186556929399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319254 (A034856 (n + 2)).toNat) (A220824 (n + 1))

end

end A220823.P13256991186556929399

/-! ## A220823.P8615518619567220123

`A319254((n+2)²-A000217(n))%A259519(n+1)`
-/

namespace A220823.P8615518619567220123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319254 (((n + 2) ^ 2 : ℤ) - A000217 n).toNat) (A259519 (n + 1))

end

end A220823.P8615518619567220123

/-!
# A220824: Number of rooted gene trees with n leaves on the label set [4].

The programs for A220824, there is no canonical definition to state claims against.
-/

/-! ## A220824.P17011456458332187072

`A319254(A027379(n+2))`
-/

namespace A220824.P17011456458332187072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A027379 (n + 2)).toNat

end

end A220824.P17011456458332187072

/-! ## A220824.P858758965272293796

`A319254(A055998(n+2))`
-/

namespace A220824.P858758965272293796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A055998 (n + 2)).toNat

end

end A220824.P858758965272293796

/-! ## A220824.P8809052886817280741

`A319254(A155212(n)+5)`
-/

namespace A220824.P8809052886817280741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A155212 n + 5).toNat

end

end A220824.P8809052886817280741

/-! ## A220824.P1435641818910940307

`A319254(eq[4, A140997(n)])`
-/

namespace A220824.P1435641818910940307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220824.P1435641818910940307

/-! ## A220824.P6781500106583168940

`A319254(A052905(n+1)+2)`
-/

namespace A220824.P6781500106583168940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A052905 (n + 1) + 2).toNat

end

end A220824.P6781500106583168940

/-!
# A220825: Number of rooted gene trees with n leaves on the label set [5].

The programs for A220825, there is no canonical definition to state claims against.
-/

/-! ## A220825.P7592432806861967961

`A319254(A046691(n+3))`
-/

namespace A220825.P7592432806861967961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A046691 (n + 3)).toNat

end

end A220825.P7592432806861967961

/-! ## A220825.P11342650077411363969

`A319254(Δ[A023545(n+1)])`
-/

namespace A220825.P11342650077411363969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (f1 (n + 1) - f1 n).toNat

end

end A220825.P11342650077411363969

/-! ## A220825.P2297530834264882487

`A319254(A000217(n+4)+n+1)`
-/

namespace A220825.P2297530834264882487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A220825.P2297530834264882487

/-! ## A220825.P7433745254086021092

`A319254(A027379(n+2)+n+4)`
-/

namespace A220825.P7433745254086021092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A027379 (n + 2) + (n + 4 : ℤ)).toNat

end

end A220825.P7433745254086021092

/-! ## A220825.P11172552310527669624

`A319254(A166136(n+1)+A016789(n))`
-/

namespace A220825.P11172552310527669624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A166136 (n + 1) + A016789 n).toNat

end

end A220825.P11172552310527669624

/-!
# A220826: Number of unrooted binary leaf-multi-labeled trees with n leaves on the label set [2].

The programs for A220826, there is no canonical definition to state claims against.
-/

/-! ## A220826.P439257545242120428

`A339649(A027379(n+2))`
-/

namespace A220826.P439257545242120428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A027379 (n + 2)).toNat

end

end A220826.P439257545242120428

/-! ## A220826.P5401565272184100197

`A339649(A055998(n+2))`
-/

namespace A220826.P5401565272184100197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A055998 (n + 2)).toNat

end

end A220826.P5401565272184100197

/-! ## A220826.P7422233296261127704

`A339649(A155212(n)+5)`
-/

namespace A220826.P7422233296261127704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A155212 n + 5).toNat

end

end A220826.P7422233296261127704

/-! ## A220826.P6867333310858125803

`A339649(A052905(n+1)+2)`
-/

namespace A220826.P6867333310858125803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A052905 (n + 1) + 2).toNat

end

end A220826.P6867333310858125803

/-! ## A220826.P8963852752526629063

`A339649(A000096(n+3)-2)`
-/

namespace A220826.P8963852752526629063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A000096 (n + 3) - 2).toNat

end

end A220826.P8963852752526629063

/-!
# A220827: Number of unrooted binary leaf-multi-labeled trees with n leaves on the label set [3].

The programs for A220827, there is no canonical definition to state claims against.
-/

/-! ## A220827.P1498686698293549746

`A339649(A046691(n+3))`
-/

namespace A220827.P1498686698293549746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A046691 (n + 3)).toNat

end

end A220827.P1498686698293549746

/-! ## A220827.P2981346388167079483

`A339649(Δ[A023545(n+1)])`
-/

namespace A220827.P2981346388167079483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (f1 (n + 1) - f1 n).toNat

end

end A220827.P2981346388167079483

/-! ## A220827.P7037056772650824925

`A339649(A052905(n+2)+1)`
-/

namespace A220827.P7037056772650824925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A052905 (n + 2) + 1).toNat

end

end A220827.P7037056772650824925

/-! ## A220827.P14429550317618941936

`A339649(A000124(n+5)-5)`
-/

namespace A220827.P14429550317618941936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A000124 (n + 5) - 5).toNat

end

end A220827.P14429550317618941936

/-! ## A220827.P10286518339421741011

`A339649(A020722(n)+A155212(n)+1)`
-/

namespace A220827.P10286518339421741011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A020722 n + (A155212 n + 1)).toNat

end

end A220827.P10286518339421741011

/-!
# A220828: Number of unrooted binary leaf-multi-labeled trees with n leaves on the label set [4].

The programs for A220828, there is no canonical definition to state claims against.
-/

/-! ## A220828.P3860034118927997210

`A339649(A052905(n+3))`
-/

namespace A220828.P3860034118927997210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A052905 (n + 3)).toNat

end

end A220828.P3860034118927997210

/-! ## A220828.P12078053267907509

`A339649(A000217(n+6)-5)`
-/

namespace A220828.P12078053267907509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A000217 (n + 6) - 5).toNat

end

end A220828.P12078053267907509

/-! ## A220828.P10708658487147230823

`A339649(A000124(n+6)-6)`
-/

namespace A220828.P10708658487147230823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A000124 (n + 6) - 6).toNat

end

end A220828.P10708658487147230823

/-! ## A220828.P13226576653061305458

`A339649(A167499(n+5)-10)`
-/

namespace A220828.P13226576653061305458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (A167499 (n + 5) - 10).toNat

end

end A220828.P13226576653061305458

/-! ## A220828.P10251596883144834983

`A339649(Δ[A023545(n+2)]-1)`
-/

namespace A220828.P10251596883144834983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339649 (f1 (n + 1) - f1 n - 1).toNat

end

end A220828.P10251596883144834983

/-!
# A220829: Number of unrooted binary leaf-multi-labeled trees with n leaves on the label set [2], with each label used at least once.

The programs for A220829, there is no canonical definition to state claims against.
-/

/-! ## A220829.P12671798068926750340

`A339650(∑[n+1]+2)`
-/

namespace A220829.P12671798068926750340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220829.P12671798068926750340

/-! ## A220829.P16690134365237475506

`record[A339650(A022856(n+1))]`
-/

namespace A220829.P16690134365237475506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220829.P16690134365237475506

/-! ## A220829.P7762076363693270725

`record[A339650(A252752(n+1))]`
-/

namespace A220829.P7762076363693270725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A252752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220829.P7762076363693270725

/-! ## A220829.P13930674036105145803

`record[A339650(A133263(n)-n)]`
-/

namespace A220829.P13930674036105145803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A133263 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220829.P13930674036105145803

/-! ## A220829.P16272033399401071524

`A339650(A252752(2*(n+2)))%A099025(n)`
-/

namespace A220829.P16272033399401071524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339650 (A252752 (2 * (n + 2))).toNat) (A099025 n)

end

end A220829.P16272033399401071524

/-!
# A220830: Number of unrooted binary leaf-multi-labeled trees with n leaves on the label set [3], with each label used at least once.

The programs for A220830, there is no canonical definition to state claims against.
-/

/-! ## A220830.P14338606364562927689

`A339650(A253145(n)+3)`
-/

namespace A220830.P14338606364562927689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A253145 n + 3).toNat

end

end A220830.P14338606364562927689

/-! ## A220830.P6866943534971399586

`A339650(A134869(n+1)+2)`
-/

namespace A220830.P6866943534971399586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A134869 (n + 1) + 2).toNat

end

end A220830.P6866943534971399586

/-! ## A220830.P9042966090120422550

`A339650(A133263(n)+2+n)`
-/

namespace A220830.P9042966090120422550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A133263 n + 2 + (n : ℤ)).toNat

end

end A220830.P9042966090120422550

/-! ## A220830.P4585795299014862457

`A339650(∑[A233583(n+1)+1])`
-/

namespace A220830.P4585795299014862457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220830.P4585795299014862457

/-! ## A220830.P3305775633139792765

`A339650(A038722(A034856(n+1)))`
-/

namespace A220830.P3305775633139792765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A038722 (A034856 (n + 1)).toNat).toNat

end

end A220830.P3305775633139792765

/-! ## A220830.P1166500093421384303

`A339650(A123932(n)+A000096(n))`
-/

namespace A220830.P1166500093421384303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A123932 n + A000096 n).toNat

end

end A220830.P1166500093421384303

/-!
# A220831: Number of unrooted binary leaf-multi-labeled trees with n leaves on the label set [4], with each label used at least once.

The programs for A220831, there is no canonical definition to state claims against.
-/

/-! ## A220831.P17969426088336463067

`A339650(∑[n+3]-A004275(n))`
-/

namespace A220831.P17969426088336463067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004275 n).toNat

end

end A220831.P17969426088336463067

/-! ## A220831.P4089692257270683308

`A339650(A238531(n)+A062545(n))`
-/

namespace A220831.P4089692257270683308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339650 (A238531 n + A062545 n).toNat

end

end A220831.P4089692257270683308

/-!
# A220836: Triangle read by rows giving coefficients of Zhang-Zhang polynomial for benzenoidal system S(n).

The programs for A220836, there is no canonical definition to state claims against.
-/

/-! ## A220836.P17818508594154891258

`A125005(A013610(n))+A013609(n)`
-/

namespace A220836.P17818508594154891258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A013610 n).toNat + A013609 n

end

end A220836.P17818508594154891258

/-! ## A220836.P8231076737377806967

`A037829(A156888(n))+A013609(n)`
-/

namespace A220836.P8231076737377806967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A156888 n).toNat + A013609 n

end

end A220836.P8231076737377806967

/-! ## A220836.P7375618712850476395

`A304884(A062264(n))`
-/

namespace A220836.P7375618712850476395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304884 (A062264 n).toNat

end

end A220836.P7375618712850476395

/-! ## A220836.P6917630166721310137

`A304884(A252501(n))`
-/

namespace A220836.P6917630166721310137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304884 (A252501 n).toNat

end

end A220836.P6917630166721310137

/-!
# A220837: Normalized position numbers of distant parents in complete binary trees.

The programs for A220837, there is no canonical definition to state claims against.
-/

/-! ## A220837.P14121211088914516167

`A000265(A065033(n)+1)-A043529(n+2)`
-/

namespace A220837.P14121211088914516167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A065033 n + 1).toNat - A043529 (n + 2)

end

end A220837.P14121211088914516167

/-! ## A220837.P10966468332496972469

`(A153733(n+1)-A158416(n+1))%A325401(n+3)`
-/

namespace A220837.P10966468332496972469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153733 (n + 1) - A158416 (n + 1)) (A325401 (n + 3))

end

end A220837.P10966468332496972469

/-! ## A220837.P7470313355553828242

`A322250(or(1, n+1)+1)-A001511(A322250(n+2)+1)`
-/

namespace A220837.P7470313355553828242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322250 (Nat.lor 1 (n + 1) + 1) - A001511 (A322250 (n + 2) + 1).toNat

end

end A220837.P7470313355553828242

/-!
# A220838: Tropical version of Somos-4 sequence A006720.

The programs for A220838, the canonical program `A220838.P14620897940068102218` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220838 has offset 1).

The definition of A220838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220838.P8241103332216461222

`∑[A110655(n)]-A236294(n)`
-/

namespace A220838.P8241103332216461222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A236294 n

end

end A220838.P8241103332216461222

namespace A220838

/-- `∑[A110655(n)]-A236294(n)` -/
def P8241103332216461222.Spec : Prop :=
  ∀ n, P8241103332216461222.a n = A220838 (n + 1)

end A220838

/-! ## A220838.P14620897940068102218

`∑[A110656(n)-A002817(n+1)%2]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A220838

/-- `∑[A110656(n)-A002817(n+1)%2]` -/
def P14620897940068102218.Spec : Prop :=
  ∀ n, P14620897940068102218.a n = A220838 (n + 1)

theorem P14620897940068102218.correct : P14620897940068102218.Spec := by
  intro n
  simp only [A220838, Nat.add_sub_cancel]

end A220838

/-! ## A220838.P10354492464720110345

`A236294(n+4)-(n+4)`
-/

namespace A220838.P10354492464720110345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236294 (n + 4) - (n + 4 : ℤ)

end

end A220838.P10354492464720110345

namespace A220838

/-- `A236294(n+4)-(n+4)` -/
def P10354492464720110345.Spec : Prop :=
  ∀ n, P10354492464720110345.a n = A220838 (n + 1)

end A220838

/-! ## A220838.P16566618360460671582

`record[A008736(n+1+2*n)]-∑[n+1]`
-/

namespace A220838.P16566618360460671582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008736 (n + 1 + 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A220838.P16566618360460671582

namespace A220838

/-- `record[A008736(n+1+2*n)]-∑[n+1]` -/
def P16566618360460671582.Spec : Prop :=
  ∀ n, P16566618360460671582.a n = A220838 (n + 1)

end A220838

/-! ## A220838.P2135643685568009015

`A004526(A001972(n))-A008621(A007494(n))`
-/

namespace A220838.P2135643685568009015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001972 n).toNat - A008621 (A007494 n).toNat

end

end A220838.P2135643685568009015

namespace A220838

/-- `A004526(A001972(n))-A008621(A007494(n))` -/
def P2135643685568009015.Spec : Prop :=
  ∀ n, P2135643685568009015.a n = A220838 (n + 1)

end A220838

/-!
# A220840: Number of 1-cop-win graphs of order n.

The programs for A220840, there is no canonical definition to state claims against.
-/

/-! ## A220840.P13402408550194753276

`A076328(n+1)-A220841(n+1)`
-/

namespace A220840.P13402408550194753276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076328 (n + 1) - A220841 (n + 1)

end

end A220840.P13402408550194753276

/-! ## A220840.P6802329561330721968

`A224065(A119663(n+1))-char[9]-A220841(n+1)`
-/

namespace A220840.P6802329561330721968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A220841 (n + 1)

end

end A220840.P6802329561330721968

/-! ## A220840.P10701075648342068055

`or(A076327(n+1)-A220841(n+1), A205578(n+1))`
-/

namespace A220840.P10701075648342068055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A076327 (n + 1) - A220841 (n + 1)) (A205578 (n + 1))

end

end A220840.P10701075648342068055

/-! ## A220840.P16818965598431691317

`A001349(A216556(n))-(A220841(n+1)+A036640(n))`
-/

namespace A220840.P16818965598431691317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A216556 n).toNat - (A220841 (n + 1) + A036640 n)

end

end A220840.P16818965598431691317

/-! ## A220840.P13377267098150659392

`A076326(n+1)+A095160(A290995(n))-A220841(n+1)`
-/

namespace A220840.P13377267098150659392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076326 (n + 1) + (A095160 (A290995 n).toNat - A220841 (n + 1))

end

end A220840.P13377267098150659392

/-!
# A220841: Number of 2-cop-win graphs of order n.

The programs for A220841, there is no canonical definition to state claims against.
-/

/-! ## A220841.P12114306012922006256

`A076328(n+1)-A220840(n+1)`
-/

namespace A220841.P12114306012922006256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076328 (n + 1) - A220840 (n + 1)

end

end A220841.P12114306012922006256

/-! ## A220841.P3450898976857531469

`A224065(A119663(n+1))-char[9]-A220840(n+1)`
-/

namespace A220841.P3450898976857531469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A220840 (n + 1)

end

end A220841.P3450898976857531469

/-! ## A220841.P8850359674462687671

`A001349(A216556(n))-(A220840(n+1)+A036640(n))`
-/

namespace A220841.P8850359674462687671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (A216556 n).toNat - (A220840 (n + 1) + A036640 n)

end

end A220841.P8850359674462687671

/-! ## A220841.P4343747561469594777

`A001349(n+1)-A165878(A036669(n))-A220840(n+1)`
-/

namespace A220841.P4343747561469594777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A165878 (A036669 n).toNat - A220840 (n + 1)

end

end A220841.P4343747561469594777

/-! ## A220841.P10127891792157952690

`A001349(n+1)-A188009(A047904(n+1))-A220840(n+1)`
-/

namespace A220841.P10127891792157952690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A188009 (A047904 (n + 1)).toNat - A220840 (n + 1)

end

end A220841.P10127891792157952690

/-!
# A220842: Number of admissible 2-dimensional lattice patterns of type B(2,3).

The programs for A220842, there is no canonical definition to state claims against.
-/

/-! ## A220842.P13445320024815224068

`A355741(A006605(n))+A182808(n+1)`
-/

namespace A220842.P13445320024815224068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A006605 n).toNat + A182808 (n + 1)

end

end A220842.P13445320024815224068

/-!
# A220843: Number of admissible 2-dimensional lattice patterns of type Sigma(2,3,5).

The programs for A220843, there is no canonical definition to state claims against.
-/

/-! ## A220843.P7690955781026251918

`∏{e}[A129655(n+2), #+1]`
-/

namespace A220843.P7690955781026251918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A220843.P7690955781026251918

/-! ## A220843.P10652576284442312208

`∏{e}[∏[A054010(n+1)], #+1]`
-/

namespace A220843.P10652576284442312208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A220843.P10652576284442312208

/-! ## A220843.P16970012816146186594

`A111650(A151034(n))`
-/

namespace A220843.P16970012816146186594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (A151034 n).toNat

end

end A220843.P16970012816146186594

/-! ## A220843.P6395864947390089852

`A111650(A370539(n))`
-/

namespace A220843.P6395864947390089852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (A370539 n).toNat

end

end A220843.P6395864947390089852

/-!
# A220844: Sum of inclusive heights of complete 4-ary trees on n nodes.

The programs for A220844, the canonical program `A220844.P9819612190595918228` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220844 has offset 1).

The definition of A220844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220844.P9819612190595918228

`∑[val(12*n+4, 4)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220844

/-- `∑[val(12*n+4, 4)]` -/
def P9819612190595918228.Spec : Prop :=
  ∀ n, (P9819612190595918228.a n : ℤ) = A220844 (n + 1)

theorem P9819612190595918228.correct : P9819612190595918228.Spec := by
  intro n
  simp only [A220844, Nat.add_sub_cancel]

end A220844

/-! ## A220844.P4093057050636956876

`a(floor(n/log(55)))+1+n` with `a(0)=1`
-/

namespace A220844.P4093057050636956876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℝ) / Real.log (55 : ℝ)⌋.toNat + 1 + n

end

end A220844.P4093057050636956876

namespace A220844

/-- `a(floor(n/log(55)))+1+n` -/
def P4093057050636956876.Spec : Prop :=
  ∀ n, (P4093057050636956876.a n : ℤ) = A220844 (n + 1)

end A220844

/-! ## A220844.P1706252468845973746

`a(floor((n-1)/4))+n+1` with `a(0)=1`
-/

namespace A220844.P1706252468845973746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat + (n + 1)

end

end A220844.P1706252468845973746

namespace A220844

/-- `a(floor((n-1)/4))+n+1` -/
def P1706252468845973746.Spec : Prop :=
  ∀ n, (P1706252468845973746.a n : ℤ) = A220844 (n + 1)

end A220844

/-! ## A220844.P7053831744372346095

`∑[dr(val(xor(12*n, -4)^2, 16))]`
-/

namespace A220844.P7053831744372346095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (Int.xor (12 * n : ℤ) (-4) ^ 2).toNat 16 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P7053831744372346095

namespace A220844

/-- `∑[dr(val(xor(12*n, -4)^2, 16))]` -/
def P7053831744372346095.Spec : Prop :=
  ∀ n, (P7053831744372346095.a n : ℤ) = A220844 (n + 1)

end A220844

/-! ## A220844.P6367627100537078728

`∑[val(n+1+n+n, 4)+1]`
-/

namespace A220844.P6367627100537078728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1 + (n + n)) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P6367627100537078728

namespace A220844

/-- `∑[val(n+1+n+n, 4)+1]` -/
def P6367627100537078728.Spec : Prop :=
  ∀ n, (P6367627100537078728.a n : ℤ) = A220844 (n + 1)

end A220844

/-! ## A220844.P13144945659052151201

`floor(a(n-1)+val(12*n+4, 4))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A220844.P13144945659052151201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (12 * n + 4) 4

end

end A220844.P13144945659052151201

namespace A220844

/-- `floor(a(n-1)+val(12*n+4, 4))` -/
def P13144945659052151201.Spec : Prop :=
  ∀ n, (P13144945659052151201.a n : ℤ) = A220844 (n + 1)

end A220844

/-! ## A220844.P13623617903790572605

`ceil(a(n-1)+val(12*n+4, 4))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A220844.P13623617903790572605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (12 * n + 4) 4

end

end A220844.P13623617903790572605

namespace A220844

/-- `ceil(a(n-1)+val(12*n+4, 4))` -/
def P13623617903790572605.Spec : Prop :=
  ∀ n, (P13623617903790572605.a n : ℤ) = A220844 (n + 1)

end A220844

/-! ## A220844.P15005246157666651729

`∑[A263845(n)]`
-/

namespace A220844.P15005246157666651729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P15005246157666651729

namespace A220844

/-- `∑[A263845(n)]` -/
def P15005246157666651729.Spec : Prop :=
  ∀ n, P15005246157666651729.a n = A220844 (n + 1)

theorem P15005246157666651729.correct : P15005246157666651729.Spec := by
  intro n
  simp only [A220844, Nat.add_sub_cancel, A220844.P15005246157666651729.f1, A220844.P15005246157666651729.a, A220844.P9819612190595918228.f1, A220844.P9819612190595918228.a, A263845, A263845.P12048050640187622971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220844

/-! ## A220844.P13203828770550928781

`∑[A115362(3*n)]`
-/

namespace A220844.P13203828770550928781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P13203828770550928781

namespace A220844

/-- `∑[A115362(3*n)]` -/
def P13203828770550928781.Spec : Prop :=
  ∀ n, P13203828770550928781.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P15034000294911860749

`∑[floor(A087229(n)/2)]`
-/

namespace A220844.P15034000294911860749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087229 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P15034000294911860749

namespace A220844

/-- `∑[floor(A087229(n)/2)]` -/
def P15034000294911860749.Spec : Prop :=
  ∀ n, P15034000294911860749.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P7923092957871315047

`∑[A258059(4*n+1)]`
-/

namespace A220844.P7923092957871315047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258059 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P7923092957871315047

namespace A220844

/-- `∑[A258059(4*n+1)]` -/
def P7923092957871315047.Spec : Prop :=
  ∀ n, P7923092957871315047.a n = A220844 (n + 1)

theorem P7923092957871315047.correct : P7923092957871315047.Spec := by
  intro n
  simp only [A220844, Nat.add_sub_cancel, A220844.P7923092957871315047.f1, A220844.P7923092957871315047.a, A220844.P9819612190595918228.f1, A220844.P9819612190595918228.a, A258059, A258059.P4288899918116185409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220844

/-! ## A220844.P1701297002556526671

`∑[A235127(3*n+1)+1]`
-/

namespace A220844.P1701297002556526671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (3 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P1701297002556526671

namespace A220844

/-- `∑[A235127(3*n+1)+1]` -/
def P1701297002556526671.Spec : Prop :=
  ∀ n, P1701297002556526671.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P4511889164338003943

`∑[ceil((A007814(3*n+1)+1)/2)]`
-/

namespace A220844.P4511889164338003943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007814 (3 * n + 1) + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P4511889164338003943

namespace A220844

/-- `∑[ceil((A007814(3*n+1)+1)/2)]` -/
def P4511889164338003943.Spec : Prop :=
  ∀ n, P4511889164338003943.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P3483666152941791568

`∑[A254046(A215090(n+1))]`
-/

namespace A220844.P3483666152941791568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A215090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P3483666152941791568

namespace A220844

/-- `∑[A254046(A215090(n+1))]` -/
def P3483666152941791568.Spec : Prop :=
  ∀ n, P3483666152941791568.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P2394720815860110300

`∑[A008619(val(A016777(n), 2))]`
-/

namespace A220844.P2394720815860110300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.valuation (A016777 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P2394720815860110300

namespace A220844

/-- `∑[A008619(val(A016777(n), 2))]` -/
def P2394720815860110300.Spec : Prop :=
  ∀ n, P2394720815860110300.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P4703423823517978295

`∑[A001511(A000188(3*n+1))]`
-/

namespace A220844.P4703423823517978295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000188 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P4703423823517978295

namespace A220844

/-- `∑[A001511(A000188(3*n+1))]` -/
def P4703423823517978295.Spec : Prop :=
  ∀ n, P4703423823517978295.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P9019337096887800034

`∑[A008619(A007814(3*n+1))]`
-/

namespace A220844.P9019337096887800034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007814 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P9019337096887800034

namespace A220844

/-- `∑[A008619(A007814(3*n+1))]` -/
def P9019337096887800034.Spec : Prop :=
  ∀ n, P9019337096887800034.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P8488161972846881866

`∑[A046951(A006519(3*n+1))]`
-/

namespace A220844.P8488161972846881866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A006519 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P8488161972846881866

namespace A220844

/-- `∑[A046951(A006519(3*n+1))]` -/
def P8488161972846881866.Spec : Prop :=
  ∀ n, P8488161972846881866.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P7104099935794806857

`∑[A000005(A342007(3*n+1))]`
-/

namespace A220844.P7104099935794806857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A342007 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220844.P7104099935794806857

namespace A220844

/-- `∑[A000005(A342007(3*n+1))]` -/
def P7104099935794806857.Spec : Prop :=
  ∀ n, P7104099935794806857.a n = A220844 (n + 1)

end A220844

/-! ## A220844.P3248329738246555268

`∑[A258059(n+1)+1]-A258059(n+1)`
-/

namespace A220844.P3248329738246555268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258059 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A258059 (n + 1)

end

end A220844.P3248329738246555268

namespace A220844

/-- `∑[A258059(n+1)+1]-A258059(n+1)` -/
def P3248329738246555268.Spec : Prop :=
  ∀ n, P3248329738246555268.a n = A220844 (n + 1)

end A220844

/-!
# A220845: Sum of exclusive heights of complete 3-ary trees on n nodes.

The programs for A220845, the canonical program `A220845.P15101563720682922442` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220845 has offset 1).

The definition of A220845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220845.P15101563720682922442

`∑[val(n+41, 3)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220845

/-- `∑[val(n+41, 3)]` -/
def P15101563720682922442.Spec : Prop :=
  ∀ n, (P15101563720682922442.a n : ℤ) = A220845 (n + 1)

theorem P15101563720682922442.correct : P15101563720682922442.Spec := by
  intro n
  simp only [A220845, Nat.add_sub_cancel]

end A220845

/-! ## A220845.P8740169041804120934

`∑[dr(val(Δ[n²], 3))]`
-/

namespace A220845.P8740169041804120934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P8740169041804120934

namespace A220845

/-- `∑[dr(val(Δ[n²], 3))]` -/
def P8740169041804120934.Spec : Prop :=
  ∀ n, (P8740169041804120934.a n : ℤ) = A220845 (n + 1)

end A220845

/-! ## A220845.P15893544593646119150

`∑[val(Δ[n²], 3)%5]`
-/

namespace A220845.P15893544593646119150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3 % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P15893544593646119150

namespace A220845

/-- `∑[val(Δ[n²], 3)%5]` -/
def P15893544593646119150.Spec : Prop :=
  ∀ n, (P15893544593646119150.a n : ℤ) = A220845 (n + 1)

end A220845

/-! ## A220845.P10638988935266972020

`∑[and(7, val(Δ[n²], 3))]`
-/

namespace A220845.P10638988935266972020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (SequenceMachineLib.valuation ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P10638988935266972020

namespace A220845

/-- `∑[and(7, val(Δ[n²], 3))]` -/
def P10638988935266972020.Spec : Prop :=
  ∀ n, (P10638988935266972020.a n : ℤ) = A220845 (n + 1)

end A220845

/-! ## A220845.P3754286908343857457

`∑[∑{digits}[val(Δ[n²], 3), #]]`
-/

namespace A220845.P3754286908343857457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P3754286908343857457

namespace A220845

/-- `∑[∑{digits}[val(Δ[n²], 3), #]]` -/
def P3754286908343857457.Spec : Prop :=
  ∀ n, (P3754286908343857457.a n : ℤ) = A220845 (n + 1)

end A220845

/-! ## A220845.P2180915627009527674

`∑[∏{digits}[val(Δ[n²], 3), #]]`
-/

namespace A220845.P2180915627009527674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P2180915627009527674

namespace A220845

/-- `∑[∏{digits}[val(Δ[n²], 3), #]]` -/
def P2180915627009527674.Spec : Prop :=
  ∀ n, (P2180915627009527674.a n : ℤ) = A220845 (n + 1)

end A220845

/-! ## A220845.P7647925713874158262

`log(∏[exp(val(2*n+1, 3))])`
-/

namespace A220845.P7647925713874158262
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (SequenceMachineLib.valuation (2 * n + 1) 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A220845.P7647925713874158262

namespace A220845

/-- `log(∏[exp(val(2*n+1, 3))])` -/
def P7647925713874158262.Spec : Prop :=
  ∀ n, P7647925713874158262.a n = (A220845 (n + 1) : ℝ)

end A220845

/-! ## A220845.P10231179517855070362

`a(n-1)+val(n+41, 3)` with `a(0)=0, a(1)=1`
-/

namespace A220845.P10231179517855070362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (n + 41) 3

end

end A220845.P10231179517855070362

namespace A220845

/-- `a(n-1)+val(n+41, 3)` -/
def P10231179517855070362.Spec : Prop :=
  ∀ n, (P10231179517855070362.a n : ℤ) = A220845 (n + 1)

end A220845

/-! ## A220845.P2032940861250570092

`A127427(ceil(n/3))`
-/

namespace A220845.P2032940861250570092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 ⌈(n : ℚ) / 3⌉.toNat

end

end A220845.P2032940861250570092

namespace A220845

/-- `A127427(ceil(n/3))` -/
def P2032940861250570092.Spec : Prop :=
  ∀ n, P2032940861250570092.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P12010831215033613832

`∑[A253786(n+1)]`
-/

namespace A220845.P12010831215033613832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P12010831215033613832

namespace A220845

/-- `∑[A253786(n+1)]` -/
def P12010831215033613832.Spec : Prop :=
  ∀ n, P12010831215033613832.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P8754023648384040664

`∑[A007949(Δ[n²])]`
-/

namespace A220845.P8754023648384040664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P8754023648384040664

namespace A220845

/-- `∑[A007949(Δ[n²])]` -/
def P8754023648384040664.Spec : Prop :=
  ∀ n, P8754023648384040664.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P3638571318313920952

`A397801(4*n+2)`
-/

namespace A220845.P3638571318313920952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397801 (4 * n + 2)

end

end A220845.P3638571318313920952

namespace A220845

/-- `A397801(4*n+2)` -/
def P3638571318313920952.Spec : Prop :=
  ∀ n, P3638571318313920952.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P713077044914133335

`∑[A254046(n+1)-1]`
-/

namespace A220845.P713077044914133335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P713077044914133335

namespace A220845

/-- `∑[A254046(n+1)-1]` -/
def P713077044914133335.Spec : Prop :=
  ∀ n, P713077044914133335.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P8456115529512291213

`∑[A169611(2*n+1)]`
-/

namespace A220845.P8456115529512291213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P8456115529512291213

namespace A220845

/-- `∑[A169611(2*n+1)]` -/
def P8456115529512291213.Spec : Prop :=
  ∀ n, P8456115529512291213.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P17173258288786120202

`∑[A244417(2*n+1)]`
-/

namespace A220845.P17173258288786120202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P17173258288786120202

namespace A220845

/-- `∑[A244417(2*n+1)]` -/
def P17173258288786120202.Spec : Prop :=
  ∀ n, P17173258288786120202.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P129206711431500580

`∑[A382487(2*n+1)]`
-/

namespace A220845.P129206711431500580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382487 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P129206711431500580

namespace A220845

/-- `∑[A382487(2*n+1)]` -/
def P129206711431500580.Spec : Prop :=
  ∀ n, P129206711431500580.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P7230156742151937362

`A127427(n+1)-(n+1)`
-/

namespace A220845.P7230156742151937362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 (n + 1) - (n + 1 : ℤ)

end

end A220845.P7230156742151937362

namespace A220845

/-- `A127427(n+1)-(n+1)` -/
def P7230156742151937362.Spec : Prop :=
  ∀ n, P7230156742151937362.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P16745334434928984772

`∑[log2(A318666(2*n+1))]`
-/

namespace A220845.P16745334434928984772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318666 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P16745334434928984772

namespace A220845

/-- `∑[log2(A318666(2*n+1))]` -/
def P16745334434928984772.Spec : Prop :=
  ∀ n, P16745334434928984772.a n = (A220845 (n + 1) : ℝ)

end A220845

/-! ## A220845.P9638450536866995238

`∑[A051064(2*n+1)-1]`
-/

namespace A220845.P9638450536866995238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P9638450536866995238

namespace A220845

/-- `∑[A051064(2*n+1)-1]` -/
def P9638450536866995238.Spec : Prop :=
  ∀ n, P9638450536866995238.a n = A220845 (n + 1)

end A220845

/-! ## A220845.P10080218083234873756

`∑[A072078(2*n+1)-1]`
-/

namespace A220845.P10080218083234873756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220845.P10080218083234873756

namespace A220845

/-- `∑[A072078(2*n+1)-1]` -/
def P10080218083234873756.Spec : Prop :=
  ∀ n, P10080218083234873756.a n = A220845 (n + 1)

end A220845

/-!
# A220846: a(n) = sum_(d|n) ((product_(d|n) d) / d).

The programs for A220846, the canonical program `A220846.P4568934254118068041` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220846 has offset 1).

The definition of A220846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220846.P14979023369301993185

`∑{d}[n+1, 1/#]*∏{d}[n+1, #]`
-/

namespace A220846.P14979023369301993185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)) * ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

end

end A220846.P14979023369301993185

namespace A220846

/-- `∑{d}[n+1, 1/#]*∏{d}[n+1, #]` -/
def P14979023369301993185.Spec : Prop :=
  ∀ n, P14979023369301993185.a n = (A220846 (n + 1) : ℚ)

end A220846

/-! ## A220846.P3550220552110408907

`A076722(n+1)/(n+1)`
-/

namespace A220846.P3550220552110408907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A220846.P3550220552110408907

namespace A220846

/-- `A076722(n+1)/(n+1)` -/
def P3550220552110408907.Spec : Prop :=
  ∀ n, P3550220552110408907.a n = (A220846 (n + 1) : ℚ)

end A220846

/-! ## A220846.P4568934254118068041

`∑{d}[n+1, #]*A007956(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A220846

/-- `∑{d}[n+1, #]*A007956(n+1)` -/
def P4568934254118068041.Spec : Prop :=
  ∀ n, P4568934254118068041.a n = A220846 (n + 1)

theorem P4568934254118068041.correct : P4568934254118068041.Spec := by
  intro n
  simp only [A220846, Nat.add_sub_cancel]

end A220846

/-! ## A220846.P15589391314695328014

`∑{d}[n+1, A007955(n+1)/#]`
-/

namespace A220846.P15589391314695328014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007955 (n + 1) : ℚ) / (d : ℚ)

end

end A220846.P15589391314695328014

namespace A220846

/-- `∑{d}[n+1, A007955(n+1)/#]` -/
def P15589391314695328014.Spec : Prop :=
  ∀ n, P15589391314695328014.a n = (A220846 (n + 1) : ℚ)

end A220846

/-! ## A220846.P9141486158853878244

`∏{d}[n+1, #]/(n+1)*A000203(n+1)`
-/

namespace A220846.P9141486158853878244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * (A000203 (n + 1) : ℚ)

end

end A220846.P9141486158853878244

namespace A220846

/-- `∏{d}[n+1, #]/(n+1)*A000203(n+1)` -/
def P9141486158853878244.Spec : Prop :=
  ∀ n, P9141486158853878244.a n = (A220846 (n + 1) : ℚ)

end A220846

/-! ## A220846.P7637293086163670843

`∑{d}[n+1, (n+1)^(A000005(n+1)/2)/#]`
-/

namespace A220846.P7637293086163670843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) / (d : ℝ)

end

end A220846.P7637293086163670843

namespace A220846

/-- `∑{d}[n+1, (n+1)^(A000005(n+1)/2)/#]` -/
def P7637293086163670843.Spec : Prop :=
  ∀ n, P7637293086163670843.a n = (A220846 (n + 1) : ℝ)

end A220846

/-! ## A220846.P18160118416227172343

`∏{d}[n+1, #]+∏{d}[n+1, #]/(n+1)*A001065(n+1)`
-/

namespace A220846.P18160118416227172343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * (A001065 (n + 1) : ℚ)

end

end A220846.P18160118416227172343

namespace A220846

/-- `∏{d}[n+1, #]+∏{d}[n+1, #]/(n+1)*A001065(n+1)` -/
def P18160118416227172343.Spec : Prop :=
  ∀ n, P18160118416227172343.a n = (A220846 (n + 1) : ℚ)

end A220846

/-! ## A220846.P11689097043750360250

`A224381(A161886(n+1))`
-/

namespace A220846.P11689097043750360250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224381 (A161886 (n + 1)).toNat

end

end A220846.P11689097043750360250

namespace A220846

/-- `A224381(A161886(n+1))` -/
def P11689097043750360250.Spec : Prop :=
  ∀ n, P11689097043750360250.a n = A220846 (n + 1)

end A220846

/-! ## A220846.P9501762023923110968

`A224381(∑[A000005(n+1)]+n)`
-/

namespace A220846.P9501762023923110968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224381 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A220846.P9501762023923110968

namespace A220846

/-- `A224381(∑[A000005(n+1)]+n)` -/
def P9501762023923110968.Spec : Prop :=
  ∀ n, P9501762023923110968.a n = A220846 (n + 1)

end A220846

/-! ## A220846.P8692527863954157003

`A000203(n+1)*A007956(n+1)`
-/

namespace A220846.P8692527863954157003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A007956 (n + 1)

end

end A220846.P8692527863954157003

namespace A220846

/-- `A000203(n+1)*A007956(n+1)` -/
def P8692527863954157003.Spec : Prop :=
  ∀ n, P8692527863954157003.a n = A220846 (n + 1)

end A220846

/-! ## A220846.P12192984397303142198

`A306682(n+1)*A307893(n+1)`
-/

namespace A220846.P12192984397303142198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1) * A307893 (n + 1)

end

end A220846.P12192984397303142198

namespace A220846

/-- `A306682(n+1)*A307893(n+1)` -/
def P12192984397303142198.Spec : Prop :=
  ∀ n, P12192984397303142198.a n = A220846 (n + 1)

end A220846

/-! ## A220846.P31010949050117612

`A007956(n+1)*A262610(Δ[n²])`
-/

namespace A220846.P31010949050117612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A220846.P31010949050117612

namespace A220846

/-- `A007956(n+1)*A262610(Δ[n²])` -/
def P31010949050117612.Spec : Prop :=
  ∀ n, P31010949050117612.a n = A220846 (n + 1)

end A220846

/-! ## A220846.P5960987451174709032

`(A088580(n+1)-1)*A007956(n+1)`
-/

namespace A220846.P5960987451174709032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A007956 (n + 1)

end

end A220846.P5960987451174709032

namespace A220846

/-- `(A088580(n+1)-1)*A007956(n+1)` -/
def P5960987451174709032.Spec : Prop :=
  ∀ n, P5960987451174709032.a n = A220846 (n + 1)

theorem P5960987451174709032.correct : P5960987451174709032.Spec := by
  intro n
  simp only [A220846, Nat.add_sub_cancel, A220846.P5960987451174709032.a, A220846.P4568934254118068041.f1, A220846.P4568934254118068041.a, A007956, A007956.P11894205286673783912.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007955, A007955.P14752630106558465512.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220846

/-! ## A220846.P14107993712142997100

`A007956(n+1)*A245092(2*n+1)`
-/

namespace A220846.P14107993712142997100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A245092 (2 * n + 1)

end

end A220846.P14107993712142997100

namespace A220846

/-- `A007956(n+1)*A245092(2*n+1)` -/
def P14107993712142997100.Spec : Prop :=
  ∀ n, P14107993712142997100.a n = A220846 (n + 1)

end A220846

/-! ## A220846.P14630285191226090520

`(A001065(n+1)+n+1)*A007956(n+1)`
-/

namespace A220846.P14630285191226090520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + (n + 1 : ℤ)) * A007956 (n + 1)

end

end A220846.P14630285191226090520

namespace A220846

/-- `(A001065(n+1)+n+1)*A007956(n+1)` -/
def P14630285191226090520.Spec : Prop :=
  ∀ n, P14630285191226090520.a n = A220846 (n + 1)

theorem P14630285191226090520.correct : P14630285191226090520.Spec := by
  intro n
  simp only [A220846, Nat.add_sub_cancel, A220846.P14630285191226090520.a, A220846.P4568934254118068041.f1, A220846.P4568934254118068041.a, A001065, A001065.P4097147489331274860.a, A007956, A007956.P11894205286673783912.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007955, A007955.P14752630106558465512.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220846

/-! ## A220846.P15094071319465840017

`A000203(n+1)/(n+1)*A007955(n+1)`
-/

namespace A220846.P15094071319465840017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (n + 1 : ℚ) * (A007955 (n + 1) : ℚ)

end

end A220846.P15094071319465840017

namespace A220846

/-- `A000203(n+1)/(n+1)*A007955(n+1)` -/
def P15094071319465840017.Spec : Prop :=
  ∀ n, P15094071319465840017.a n = (A220846 (n + 1) : ℚ)

end A220846

/-! ## A220846.P836331259916056900

`A000203(n+1)*∏{d}[n+1, #/A014963(#)]`
-/

namespace A220846.P836331259916056900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) * (∏ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A014963 d : ℚ))

end

end A220846.P836331259916056900

namespace A220846

/-- `A000203(n+1)*∏{d}[n+1, #/A014963(#)]` -/
def P836331259916056900.Spec : Prop :=
  ∀ n, P836331259916056900.a n = (A220846 (n + 1) : ℚ)

end A220846

/-! ## A220846.P3329735011093354241

`(n+1)^(A000005(n+1)/2-1)*A000203(n+1)`
-/

namespace A220846.P3329735011093354241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 - 1 : ℝ) * (A000203 (n + 1) : ℝ)

end

end A220846.P3329735011093354241

namespace A220846

/-- `(n+1)^(A000005(n+1)/2-1)*A000203(n+1)` -/
def P3329735011093354241.Spec : Prop :=
  ∀ n, P3329735011093354241.a n = (A220846 (n + 1) : ℝ)

end A220846

/-! ## A220846.P12921002587797633172

`(A007955(n+1)-A076721(n+1))*A007956(n+1)`
-/

namespace A220846.P12921002587797633172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) - A076721 (n + 1)) * A007956 (n + 1)

end

end A220846.P12921002587797633172

namespace A220846

/-- `(A007955(n+1)-A076721(n+1))*A007956(n+1)` -/
def P12921002587797633172.Spec : Prop :=
  ∀ n, P12921002587797633172.a n = A220846 (n + 1)

end A220846

/-!
# A220848: a(n) = sum_(d|n) product_(d_x|n, d_x<=d) d_x.

The programs for A220848, there is no canonical definition to state claims against.
-/

/-! ## A220848.P1324415931878435541

`A356302(A356328(n))+A175317(n+1)`
-/

namespace A220848.P1324415931878435541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356302 (A356328 n).toNat + A175317 (n + 1)

end

end A220848.P1324415931878435541

/-! ## A220848.P9449399624494299199

`A175317(n+1)+A055641(A056925(3*n+5))`
-/

namespace A220848.P9449399624494299199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175317 (n + 1) + A055641 (A056925 (3 * n + 5)).toNat

end

end A220848.P9449399624494299199

/-!
# A220849: a(n) = Product_{d|n} Product_{d_x|n , d_x <= d} d_x.

The programs for A220849, there is no canonical definition to state claims against.
-/

/-! ## A220849.P10527166714152877301

`∏{d}[A187829(n+1), A136182(#)]`
-/

namespace A220849.P10527166714152877301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A136182 d

end

end A220849.P10527166714152877301

/-! ## A220849.P17767847286947046004

`A040001(A007714(n))*A266265(n+1)`
-/

namespace A220849.P17767847286947046004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A007714 n).toNat * A266265 (n + 1)

end

end A220849.P17767847286947046004

/-! ## A220849.P3902230627562510724

`A211776(A008326(n+4)^A200139(n))*A266265(n+1)`
-/

namespace A220849.P3902230627562510724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (SequenceMachineLib.roundAway ((A008326 (n + 4) : ℚ) ^ (A200139 n : ℤ))).toNat * A266265 (n + 1)

end

end A220849.P3902230627562510724

/-! ## A220849.P6332131571487606618

`∏{digits}[A056142(A037278(n+1)), #]`
-/

namespace A220849.P6332131571487606618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A037278 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A220849.P6332131571487606618

/-! ## A220849.P16060458901615567692

`A091255(A058163(n+1))*A266265(n+1)`
-/

namespace A220849.P16060458901615567692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A058163 (n + 1)).toNat * A266265 (n + 1)

end

end A220849.P16060458901615567692

/-!
# A220850: a(n+1) is equal to a(n) plus the number of primes between a(n) and 2*a(n) inclusively.

The programs for A220850, there is no canonical definition to state claims against.
-/

/-! ## A220850.P10399335823753415530

`A035250(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A220850.P10399335823753415530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035250 (a (n - 1)).toNat + a (n - 1)

end

end A220850.P10399335823753415530

/-! ## A220850.P6327275144257157397

`2*a(n-1)-A307989(a(n-1))` with `a(0)=1`
-/

namespace A220850.P6327275144257157397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A307989 (a (n - 1)).toNat

end

end A220850.P6327275144257157397

/-! ## A220850.P2625407612125122608

`A259899(A000009(3*n+4)-A036606(2*n+3))`
-/

namespace A220850.P2625407612125122608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A000009 (3 * n + 4) - A036606 (2 * n + 3)).toNat

end

end A220850.P2625407612125122608

/-! ## A220850.P10711174205430610971

`A112232(∑[∑[A112195(2*n+3)]])`
-/

namespace A220850.P10711174205430610971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112195 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220850.P10711174205430610971

/-! ## A220850.P5222618059448194459

`A111660(2*(n+1))+A111660(A003402(n))`
-/

namespace A220850.P5222618059448194459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * (n + 1)) + A111660 (A003402 n).toNat

end

end A220850.P5222618059448194459

/-!
# A220851: a(n+1) is equal to a(n) plus the number of primes between a(n) and 2*a(n) exclusively.

The programs for A220851, there is no canonical definition to state claims against.
-/

/-! ## A220851.P17046151625523842759

`A056171(2*a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A220851.P17046151625523842759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056171 (2 * a (n - 1)).toNat + a (n - 1)

end

end A220851.P17046151625523842759

/-! ## A220851.P2216398958528593680

`A060715(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A220851.P2216398958528593680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A060715 (a (n - 1)).toNat + a (n - 1)

end

end A220851.P2216398958528593680

/-! ## A220851.P9702736831907816144

`A108954(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A220851.P9702736831907816144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A108954 (a (n - 1)).toNat + a (n - 1)

end

end A220851.P9702736831907816144

/-! ## A220851.P3454654095983264188

`A095117(2*a(n-1))-A095117(a(n-1))` with `a(0)=2`
-/

namespace A220851.P3454654095983264188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A095117 (2 * a (n - 1)).toNat - A095117 (a (n - 1)).toNat

end

end A220851.P3454654095983264188

/-! ## A220851.P12676037687047979399

`A095117(a(n-1)+a(n-1))-A095117(a(n-1))` with `a(0)=2`
-/

namespace A220851.P12676037687047979399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A095117 (a (n - 1) + a (n - 1)).toNat - A095117 (a (n - 1)).toNat

end

end A220851.P12676037687047979399

/-!
# A220853: Denominators of the fraction (30*n+7) * binomial(2*n,n)^2 * 2F1([1/2 - n/2, -n/2], [1], 64)/(-256)^n, where 2F1 is the hypergeometric function.

The programs for A220853, there is no canonical definition to state claims against.
-/

/-! ## A220853.P15020626070906031104

`4^(val(n!, 2)+3*n)`
-/

namespace A220853.P15020626070906031104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (SequenceMachineLib.valuation (Nat.factorial n) 2 + 3 * n)

end

end A220853.P15020626070906031104

/-! ## A220853.P2005917859259933568

`∏[gcd(8*n, (4^n)²)]²`
-/

namespace A220853.P2005917859259933568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (8 * n) ((4 ^ n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A220853.P2005917859259933568

/-! ## A220853.P9312444275492285280

`record[xor(n+2, -(n+2))*a(n-1)]²` with `a(0)=1, a(1)=8`
-/

namespace A220853.P9312444275492285280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  Int.xor (n + 2 : ℤ) (-(n + 2 : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A220853.P9312444275492285280

/-! ## A220853.P2902271968462197626

`A061549(n)²`
-/

namespace A220853.P2902271968462197626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061549 n ^ 2

end

end A220853.P2902271968462197626

/-! ## A220853.P3221436757448726687

`A056982(2*n)`
-/

namespace A220853.P3221436757448726687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056982 (2 * n)

end

end A220853.P3221436757448726687

/-!
# A220854: Sum of exclusive heights of size-balanced 3-ary trees on n nodes.

The programs for A220854, the canonical program `A220854.P2644252176317831732` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220854 has offset 1).

The definition of A220854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220854.P2644252176317831732

`∑[A065120(A081608(3*n+4))-1]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A220854

/-- `∑[A065120(A081608(3*n+4))-1]` -/
def P2644252176317831732.Spec : Prop :=
  ∀ n, P2644252176317831732.a n = A220854 (n + 1)

theorem P2644252176317831732.correct : P2644252176317831732.Spec := by
  intro n
  simp only [A220854, Nat.add_sub_cancel]

end A220854

/-! ## A220854.P4252846015570628462

`A213513(n+1)-(n+1)`
-/

namespace A220854.P4252846015570628462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213513 (n + 1) - (n + 1 : ℤ)

end

end A220854.P4252846015570628462

namespace A220854

/-- `A213513(n+1)-(n+1)` -/
def P4252846015570628462.Spec : Prop :=
  ∀ n, P4252846015570628462.a n = A220854 (n + 1)

end A220854

/-! ## A220854.P7384958424592635139

`A213513(Δ[n²]-n)-1-n`
-/

namespace A220854.P7384958424592635139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213513 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A220854.P7384958424592635139

namespace A220854

/-- `A213513(Δ[n²]-n)-1-n` -/
def P7384958424592635139.Spec : Prop :=
  ∀ n, P7384958424592635139.a n = A220854 (n + 1)

end A220854

/-! ## A220854.P5203747127696527406

`A213513(or(n, char[1])+1)%(n+1)`
-/

namespace A220854.P5203747127696527406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213513 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0) + 1)) (n + 1 : ℤ)

end

end A220854.P5203747127696527406

namespace A220854

/-- `A213513(or(n, char[1])+1)%(n+1)` -/
def P5203747127696527406.Spec : Prop :=
  ∀ n, P5203747127696527406.a n = A220854 (n + 1)

end A220854

/-! ## A220854.P3573352726041083069

`Δ[A213513(n)-(n-a(n-1))]` with `a(0)=0`
-/

namespace A220854.P3573352726041083069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A213513 n - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220854.P3573352726041083069

namespace A220854

/-- `Δ[A213513(n)-(n-a(n-1))]` -/
def P3573352726041083069.Spec : Prop :=
  ∀ n, P3573352726041083069.a n = A220854 (n + 1)

end A220854

/-! ## A220854.P5423444844877324711

`A213513(log2(1/2)+n+2)%(n+1)`
-/

namespace A220854.P5423444844877324711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213513 (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n + 2 : ℝ))).toNat) (n + 1 : ℤ)

end

end A220854.P5423444844877324711

namespace A220854

/-- `A213513(log2(1/2)+n+2)%(n+1)` -/
def P5423444844877324711.Spec : Prop :=
  ∀ n, P5423444844877324711.a n = A220854 (n + 1)

end A220854

/-! ## A220854.P471250297427749120

`A023443(A213513(n+1)-n)`
-/

namespace A220854.P471250297427749120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A213513 (n + 1) - (n : ℤ)).toNat

end

end A220854.P471250297427749120

namespace A220854

/-- `A023443(A213513(n+1)-n)` -/
def P471250297427749120.Spec : Prop :=
  ∀ n, P471250297427749120.a n = A220854 (n + 1)

end A220854

/-! ## A220854.P1782624318981645551

`A130734(A213513(n+1)-n)`
-/

namespace A220854.P1782624318981645551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A213513 (n + 1) - (n : ℤ)).toNat

end

end A220854.P1782624318981645551

namespace A220854

/-- `A130734(A213513(n+1)-n)` -/
def P1782624318981645551.Spec : Prop :=
  ∀ n, P1782624318981645551.a n = A220854 (n + 1)

end A220854

/-! ## A220854.P2919049998061758630

`A002262(A213513(n+1)+∑[n])`
-/

namespace A220854.P2919049998061758630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A213513 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A220854.P2919049998061758630

namespace A220854

/-- `A002262(A213513(n+1)+∑[n])` -/
def P2919049998061758630.Spec : Prop :=
  ∀ n, P2919049998061758630.a n = A220854 (n + 1)

end A220854

/-!
# A220855: Number of mappings by Struijk et al. Design Space Explorations with n actors and one implementation alternative.

The programs for A220855, there is no canonical definition to state claims against.
-/

/-! ## A220855.P2002097253964251467

`∑[A001399(record[A265824(n)])]`
-/

namespace A220855.P2002097253964251467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220855.P2002097253964251467

/-!
# A220861: Choose smallest m>0 such that the n-th rational prime p ramifies in the imaginary quadratic extension field K = Q(sqrt(-m)); a(n) = discriminant(K).

The programs for A220861, the canonical program `A220861.P3384637757439596115` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220861 has offset 1).

The definition of A220861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220861.P3384637757439596115

`-A204993(record[A110560(n)])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A220861

/-- `-A204993(record[A110560(n)])` -/
def P3384637757439596115.Spec : Prop :=
  ∀ n, P3384637757439596115.a n = A220861 (n + 1)

theorem P3384637757439596115.correct : P3384637757439596115.Spec := by
  intro n
  simp only [A220861, Nat.add_sub_cancel]

end A220861

/-! ## A220861.P16571666001008155421

`-A204993(record[A128059(n)])`
-/

namespace A220861.P16571666001008155421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220861.P16571666001008155421

namespace A220861

/-- `-A204993(record[A128059(n)])` -/
def P16571666001008155421.Spec : Prop :=
  ∀ n, P16571666001008155421.a n = A220861 (n + 1)

end A220861

/-! ## A220861.P6290939019789083499

`-A204993(A006005(n+1))`
-/

namespace A220861.P6290939019789083499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (A006005 (n + 1)).toNat

end

end A220861.P6290939019789083499

namespace A220861

/-- `-A204993(A006005(n+1))` -/
def P6290939019789083499.Spec : Prop :=
  ∀ n, P6290939019789083499.a n = A220861 (n + 1)

end A220861

/-! ## A220861.P10102973454692757182

`-A204993(A075643(n+2))`
-/

namespace A220861.P10102973454692757182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (A075643 (n + 2)).toNat

end

end A220861.P10102973454692757182

namespace A220861

/-- `-A204993(A075643(n+2))` -/
def P10102973454692757182.Spec : Prop :=
  ∀ n, P10102973454692757182.a n = A220861 (n + 1)

end A220861

/-!
# A220862: a(n) = smallest m>0 such that the n-th rational prime p splits in the imaginary quadratic extension field K = Q(sqrt(-m)).

The programs for A220862, there is no canonical definition to state claims against.
-/

/-! ## A220862.P10818471738966540108

`A088190(n+1)-A065530(Δ[A007504(n)])`
-/

namespace A220862.P10818471738966540108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1) - A065530 (f1 (n + 1) - f1 n).toNat

end

end A220862.P10818471738966540108

/-! ## A220862.P11091366547653577027

`A088190(n+1)-A065530(p?[A006370(n)])`
-/

namespace A220862.P11091366547653577027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1) - A065530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220862.P11091366547653577027

/-! ## A220862.P2111567951820894073

`A088190(n+1)-A065530(p?[A014681(n)])`
-/

namespace A220862.P2111567951820894073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1) - A065530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220862.P2111567951820894073

/-! ## A220862.P17870588342431506908

`A088190(n+1)-A065530(p?[A057979(n)])`
-/

namespace A220862.P17870588342431506908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1) - A065530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220862.P17870588342431506908

/-! ## A220862.P14713393732576591921

`A088190(n+1)-A065530(p?[A256450(n)])`
-/

namespace A220862.P14713393732576591921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1) - A065530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220862.P14713393732576591921

/-! ## A220862.P5857005986392835819

`A088190(n+1)-A065530(A000040(n+1))`
-/

namespace A220862.P5857005986392835819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1) - A065530 (A000040 (n + 1)).toNat

end

end A220862.P5857005986392835819

/-! ## A220862.P465052842318804177

`-A007913(-A220863(n+1))`
-/

namespace A220862.P465052842318804177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A007913 (-A220863 (n + 1)).toNat

end

end A220862.P465052842318804177

/-!
# A220863: Choose smallest m>0 such that the n-th rational prime p splits in the imaginary quadratic extension field K = Q(sqrt(-m)); a(n) = discriminant(K).

The programs for A220863, there is no canonical definition to state claims against.
-/

/-! ## A220863.P728422169259957923

`-A204993(-A220862(n+1))`
-/

namespace A220863.P728422169259957923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A204993 (-A220862 (n + 1)).toNat

end

end A220863.P728422169259957923

/-! ## A220863.P17873665319167662437

`A088190(and(2, A220862(n+1))+1)*A220862(n+1)`
-/

namespace A220863.P17873665319167662437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (Int.land 2 (A220862 (n + 1)) + 1).toNat * A220862 (n + 1)

end

end A220863.P17873665319167662437

/-!
# A220864: Number of perfect matchings in the graph C_4 X C_n.

The programs for A220864, there is no canonical definition to state claims against.
-/

/-! ## A220864.P9255216651725386484

`A341741(∑[n+3]+5)`
-/

namespace A220864.P9255216651725386484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A220864.P9255216651725386484

/-!
# A220869: Number of ways to tile an 8 X n rectangle with 1 X 2 and 2 X 2 tiles (i.e., dominoes and squares).

The programs for A220869, there is no canonical definition to state claims against.
-/

/-! ## A220869.P7044324304457309058

`A352431(A052905(n+2))`
-/

namespace A220869.P7044324304457309058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (A052905 (n + 2)).toNat

end

end A220869.P7044324304457309058

/-! ## A220869.P15884741924303641751

`A352431(eq[3, A129713(n)])`
-/

namespace A220869.P15884741924303641751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220869.P15884741924303641751

/-! ## A220869.P2450354510708779093

`A352431(A000217(n+5)-5)`
-/

namespace A220869.P2450354510708779093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (A000217 (n + 5) - 5).toNat

end

end A220869.P2450354510708779093

/-! ## A220869.P5526798176878491176

`A352431(A134869(n+5)-6)`
-/

namespace A220869.P5526798176878491176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (A134869 (n + 5) - 6).toNat

end

end A220869.P5526798176878491176

/-! ## A220869.P713295568026597843

`A352431(A103517(n+1)+A000217(n+3))`
-/

namespace A220869.P713295568026597843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 (A103517 (n + 1) + A000217 (n + 3)).toNat

end

end A220869.P713295568026597843

/-!
# A220871: Number of partial matchings of n elements treatable by "PTR" (Procedure Triple Reverse).

The programs for A220871, there is no canonical definition to state claims against.
-/

/-! ## A220871.P1809186217089970094

`A131149(A007123(n+1))`
-/

namespace A220871.P1809186217089970094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131149 (A007123 (n + 1)).toNat

end

end A220871.P1809186217089970094

/-! ## A220871.P14030883701833223609

`A086008(A007097(n))+A007579(n)`
-/

namespace A220871.P14030883701833223609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 (A007097 n).toNat + A007579 n

end

end A220871.P14030883701833223609

/-! ## A220871.P13649904595628458281

`A101638(A005425(n))+A007579(n)`
-/

namespace A220871.P13649904595628458281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (A005425 n).toNat + A007579 n

end

end A220871.P13649904595628458281

/-! ## A220871.P16249714891982680543

`A162782(A000288(n))+A007579(n)`
-/

namespace A220871.P16249714891982680543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (A000288 n).toNat + A007579 n

end

end A220871.P16249714891982680543

/-! ## A220871.P6877647274394618345

`A359429(A001834(n))+A007579(n)`
-/

namespace A220871.P6877647274394618345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359429 (A001834 n).toNat + A007579 n

end

end A220871.P6877647274394618345

/-!
# A220872: Number of enhanced partial matchings of n elements treatable by "PTR" (Procedure Triple Reverse).

The programs for A220872, there is no canonical definition to state claims against.
-/

/-! ## A220872.P16078677002688800973

`A124501(n)-A337682(A337720(n))`
-/

namespace A220872.P16078677002688800973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124501 n - A337682 (A337720 n).toNat

end

end A220872.P16078677002688800973

/-! ## A220872.P3123598705094548654

`A206499(A000204(n+1))+A124500(n)`
-/

namespace A220872.P3123598705094548654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (A000204 (n + 1)).toNat + A124500 n

end

end A220872.P3123598705094548654

/-!
# A220873: Number of enhanced set partitions of n elements treatable by "PTR" (Procedure Triple Reverse).

The programs for A220873, there is no canonical definition to state claims against.
-/

/-! ## A220873.P3543448887762250843

`∑[A347609(2^(n+1))]`
-/

namespace A220873.P3543448887762250843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220873.P3543448887762250843

/-! ## A220873.P12964283827119413552

`A095396(∏[∑[(n+2)%3]])`
-/

namespace A220873.P12964283827119413552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095396 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A220873.P12964283827119413552

/-!
# A220874: Number of permutations of [n+1] avoiding 2413, 3142, 1324, 4231.

The programs for A220874, there is no canonical definition to state claims against.
-/

/-! ## A220874.P10755500427848050125

`A099384(A052854(n))+A049612(n)`
-/

namespace A220874.P10755500427848050125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (A052854 n).toNat + A049612 n

end

end A220874.P10755500427848050125

/-! ## A220874.P15954047777230137806

`A350355(ceil(5*2^(n-2)))`
-/

namespace A220874.P15954047777230137806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 ⌈5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat

end

end A220874.P15954047777230137806

/-!
# A220875: Number of boundary guillotine partitions of a 3-dimensional box obtained with n cuts.

The programs for A220875, there is no canonical definition to state claims against.
-/

/-! ## A220875.P17331806720532500573

`∑[A187182(A077851(n)²)]`
-/

namespace A220875.P17331806720532500573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A077851 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220875.P17331806720532500573

/-! ## A220875.P5984175631319188656

`∑[A038759(A193913(n+1))]`
-/

namespace A220875.P5984175631319188656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (A193913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220875.P5984175631319188656

/-!
# A220877: Number of boundary guillotine partitions of a 5-dimensional box obtained with n cuts.

The programs for A220877, there is no canonical definition to state claims against.
-/

/-! ## A220877.P4415802559213825628

`or(A093391(A368322(n)), A368322(n))`
-/

namespace A220877.P4415802559213825628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093391 (A368322 n).toNat) (A368322 n)

end

end A220877.P4415802559213825628

/-!
# A220878: Number of Catalan M-paths.

The programs for A220878, there is no canonical definition to state claims against.
-/

/-! ## A220878.P3541060335211725826

`A342497(A077802(n))`
-/

namespace A220878.P3541060335211725826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A077802 n).toNat

end

end A220878.P3541060335211725826

/-!
# A220879: Number of inequivalent monotone Boolean functions of n variables with no symmetries.

The programs for A220879, there is no canonical definition to state claims against.
-/

/-! ## A220879.P8370349355510964232

`A153234(gcd(A103931(n+1), A370195(3*n+4)))`
-/

namespace A220879.P8370349355510964232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (Int.gcd (A103931 (n + 1)) (A370195 (3 * n + 4)))

end

end A220879.P8370349355510964232

/-!
# A220880: Number of profiles of monotone Boolean functions of n variables.

The programs for A220880, there is no canonical definition to state claims against.
-/

/-! ## A220880.P1171203160058866057

`A007695(n)-1`
-/

namespace A220880.P1171203160058866057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007695 n - 1

end

end A220880.P1171203160058866057

/-! ## A220880.P6241803691688962194

`A057428(n+1)+A007695(n)`
-/

namespace A220880.P6241803691688962194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A007695 n

end

end A220880.P6241803691688962194

/-! ## A220880.P15008938198325054669

`A033999(2*n+1)+A007695(n)`
-/

namespace A220880.P15008938198325054669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A007695 n

end

end A220880.P15008938198325054669

/-! ## A220880.P7554200924409346219

`A286714(gcd(n, n+1))+A007695(n)`
-/

namespace A220880.P7554200924409346219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286714 (Nat.gcd n (n + 1)) + A007695 n

end

end A220880.P7554200924409346219

/-! ## A220880.P12456174749732814100

`A331430(A178334(n))+A007695(n)`
-/

namespace A220880.P12456174749732814100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331430 (A178334 n).toNat + A007695 n

end

end A220880.P12456174749732814100

/-!
# A220881: Number of nonequivalent dissections of an n-gon into n-3 polygons by nonintersecting diagonals up to rotation.

The programs for A220881, there is no canonical definition to state claims against.
-/

/-! ## A220881.P8792751692053495615

`A003444(C(2, n+2)+n+3)`
-/

namespace A220881.P8792751692053495615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003444 (Nat.choose 2 (n + 2) + (n + 3))

end

end A220881.P8792751692053495615

/-! ## A220881.P16627491399747426185

`A003444(A243427(n+1))`
-/

namespace A220881.P16627491399747426185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003444 (A243427 (n + 1)).toNat

end

end A220881.P16627491399747426185

/-! ## A220881.P4239742956806449922

`A003444(A028310(n)+3)`
-/

namespace A220881.P4239742956806449922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003444 (A028310 n + 3).toNat

end

end A220881.P4239742956806449922

/-! ## A220881.P14474568259904298791

`A072506(∑[n+1]+n)`
-/

namespace A220881.P14474568259904298791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072506 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A220881.P14474568259904298791

/-! ## A220881.P9020722643859645969

`A132892(A005893(n+1))`
-/

namespace A220881.P9020722643859645969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A005893 (n + 1)).toNat

end

end A220881.P9020722643859645969

/-! ## A220881.P8212633766449555340

`A132892(A271624(n+2))`
-/

namespace A220881.P8212633766449555340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A271624 (n + 2)).toNat

end

end A220881.P8212633766449555340

/-! ## A220881.P16351196715460374914

`A132892(A058331(n+1)+1)`
-/

namespace A220881.P16351196715460374914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A058331 (n + 1) + 1).toNat

end

end A220881.P16351196715460374914

/-! ## A220881.P16743390147669035037

`A132892(A080827(2*(n+1))+1)`
-/

namespace A220881.P16743390147669035037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A080827 (2 * (n + 1)) + 1).toNat

end

end A220881.P16743390147669035037

/-! ## A220881.P4886809505115632752

`A003444(A000122(n²+n)+n+3)`
-/

namespace A220881.P4886809505115632752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003444 (A000122 (n ^ 2 + n) + (n : ℤ) + 3).toNat

end

end A220881.P4886809505115632752

/-! ## A220881.P17495716452181466530

`A132892(A001844(n+1)-(2*n+1))`
-/

namespace A220881.P17495716452181466530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A001844 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A220881.P17495716452181466530

/-!
# A220882: Number of (n - 6)-dissections of an n-gon (equivalently, the number of three-dimensional faces of the (n-3)-dimensional associahedron) modulo the cyclic action.

The programs for A220882, there is no canonical definition to state claims against.
-/

/-! ## A220882.P13905553890773815531

`A295633(A000096(n+3))`
-/

namespace A220882.P13905553890773815531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295633 (A000096 (n + 3)).toNat

end

end A220882.P13905553890773815531

/-! ## A220882.P14105538104515388130

`A295633(A141214(n+1)+2)`
-/

namespace A220882.P14105538104515388130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295633 (A141214 (n + 1) + 2).toNat

end

end A220882.P14105538104515388130

/-! ## A220882.P6549769269277523870

`A295633(A027379(n+2)+2)`
-/

namespace A220882.P6549769269277523870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295633 (A027379 (n + 2) + 2).toNat

end

end A220882.P6549769269277523870

/-! ## A220882.P13882844300995680329

`A295633(A000217(n+4)-1)`
-/

namespace A220882.P13882844300995680329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295633 (A000217 (n + 4) - 1).toNat

end

end A220882.P13882844300995680329

/-! ## A220882.P15126383125080441511

`A295633(Δ[A264443(n)]-(n+2))`
-/

namespace A220882.P15126383125080441511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295633 (f1 (n + 1) - f1 n - (n + 2 : ℤ)).toNat

end

end A220882.P15126383125080441511

/-!
# A220883: Triangle read by rows: row n gives coefficients of expansion of Product_{k = 1..n-1} ((n + 1)*x + k), starting with lowest power.

The programs for A220883, there is no canonical definition to state claims against.
-/

/-! ## A220883.P17180885388886389972

`A076112(comp[∑[n]])*A130534(n)`
-/

namespace A220883.P17180885388886389972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A130534 n

end

end A220883.P17180885388886389972

/-! ## A220883.P12342537143027041134

`abs(A008275(n+1)*A076112(A014132(n+1)))`
-/

namespace A220883.P12342537143027041134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A076112 (A014132 (n + 1)).toNat|

end

end A220883.P12342537143027041134

/-! ## A220883.P17982597388783668573

`A076112(A014132(n+1))*A094638(A038722(n+1))`
-/

namespace A220883.P17982597388783668573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A014132 (n + 1)).toNat * A094638 (A038722 (n + 1)).toNat

end

end A220883.P17982597388783668573

/-! ## A220883.P17872421573020066133

`A076112(A014132(n+1))*A094638(A061579(n)+1)`
-/

namespace A220883.P17872421573020066133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A014132 (n + 1)).toNat * A094638 (A061579 n + 1).toNat

end

end A220883.P17872421573020066133

/-! ## A220883.P4657619939790837523

`A076112(A014132(n+1))/A002260(n+1)*A028421(n)`
-/

namespace A220883.P4657619939790837523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076112 (A014132 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A028421 n : ℚ)

end

end A220883.P4657619939790837523

/-! ## A220883.P4566427196640760542

`A076112(A014132(n+1))*A094638(A002024(n+1)²-n)`
-/

namespace A220883.P4566427196640760542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A014132 (n + 1)).toNat * A094638 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A220883.P4566427196640760542

/-! ## A220883.P17529492401993630406

`A076112(A014132(n+1))*A188881(n+1)/A233543(n)`
-/

namespace A220883.P17529492401993630406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076112 (A014132 (n + 1)).toNat * A188881 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A220883.P17529492401993630406

/-!
# A220884: Triangle read by rows: row n gives coefficients of expansion of Product_{k=2..n} ((n+1-k)*x+k), starting with lowest power.

The programs for A220884, there is no canonical definition to state claims against.
-/

/-! ## A220884.P14588472434309161396

`A299924(A270073(n)*A270075(n))`
-/

namespace A220884.P14588472434309161396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299924 (A270073 n * A270075 n).toNat

end

end A220884.P14588472434309161396

/-!
# A220885: a(3)=5, a(4)=8, a(5)=12; thereafter a(n) = a(n-1) + A000931(n+7).

The programs for A220885, the canonical program `A220885.P8037492791935991280` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220885 has offset 3).

The definition of A220885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000931(n+10)` (program `A220885.P8037492791935991280`, by `A220885.P8037492791935991280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220885.P3851600493183037414

`a(n-2)+a(n-3)+9` with `a(0)=5, a(1)=8, a(2)=12, a(3)=19, a(4)=28`
-/

namespace A220885.P3851600493183037414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 12, 19, 28] fun n a =>
  a (n - 2) + a (n - 3) + 9

end

end A220885.P3851600493183037414

namespace A220885

/-- `a(n-2)+a(n-3)+9` -/
def P3851600493183037414.Spec : Prop :=
  ∀ n, (P3851600493183037414.a n : ℤ) = A220885 (n + 3)

end A220885

/-! ## A220885.P8037492791935991280

`a(n-1)+A000931(n+10)` with `a(0)=5, a(1)=8, a(2)=12`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A220885

/-- `a(n-1)+A000931(n+10)` -/
def P8037492791935991280.Spec : Prop :=
  ∀ n, P8037492791935991280.a n = A220885 (n + 3)

theorem P8037492791935991280.correct : P8037492791935991280.Spec := by
  intro n
  simp only [A220885, Nat.add_sub_cancel]

end A220885

/-! ## A220885.P17931134851923013867

`∑[A182097(n+7)]+C(2, n+1)`
-/

namespace A220885.P17931134851923013867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (n + 1) : ℤ)

end

end A220885.P17931134851923013867

namespace A220885

/-- `∑[A182097(n+7)]+C(2, n+1)` -/
def P17931134851923013867.Spec : Prop :=
  ∀ n, P17931134851923013867.a n = A220885 (n + 3)

end A220885

/-! ## A220885.P5085539236580485925

`A164482(n)+A167385(n)+3`
-/

namespace A220885.P5085539236580485925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164482 n + (A167385 n + 3)

end

end A220885.P5085539236580485925

namespace A220885

/-- `A164482(n)+A167385(n)+3` -/
def P5085539236580485925.Spec : Prop :=
  ∀ n, P5085539236580485925.a n = A220885 (n + 3)

end A220885

/-! ## A220885.P16434658218353072766

`A164482(n)+A023434(n+5)`
-/

namespace A220885.P16434658218353072766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164482 n + A023434 (n + 5)

end

end A220885.P16434658218353072766

namespace A220885

/-- `A164482(n)+A023434(n+5)` -/
def P16434658218353072766.Spec : Prop :=
  ∀ n, P16434658218353072766.a n = A220885 (n + 3)

end A220885

/-! ## A220885.P7150031232987728867

`A233583(n+1)+∑[A182097(n+7)]-n`
-/

namespace A220885.P7150031232987728867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A220885.P7150031232987728867

namespace A220885

/-- `A233583(n+1)+∑[A182097(n+7)]-n` -/
def P7150031232987728867.Spec : Prop :=
  ∀ n, P7150031232987728867.a n = A220885 (n + 3)

end A220885

/-!
# A220888: a(n) = F(n+7) - (1/2)*(n^3+2*n^2+13*n+26) where F(i) is a Fibonacci number (A000045).

The programs for A220888, the canonical program `A220888.P5153867486153837338` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220888 has offset 0).

The definition of A220888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220888.P9375743571599757579

`A000045(n+7)-1/2*(n^3+2*n²+13*n+26)`
-/

namespace A220888.P9375743571599757579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 7) : ℚ) - (1 : ℚ) / 2 * (n ^ 3 + 2 * n ^ 2 + 13 * n + 26 : ℚ)

end

end A220888.P9375743571599757579

namespace A220888

/-- `A000045(n+7)-1/2*(n^3+2*n²+13*n+26)` -/
def P9375743571599757579.Spec : Prop :=
  ∀ n, P9375743571599757579.a n = (A220888 n : ℚ)

end A220888

/-! ## A220888.P5153867486153837338

`∑[A001891(n)]-A006003(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A220888

/-- `∑[A001891(n)]-A006003(n)` -/
def P5153867486153837338.Spec : Prop :=
  ∀ n, P5153867486153837338.a n = A220888 n

theorem P5153867486153837338.correct : P5153867486153837338.Spec := by
  intro n
  simp only [A220888]

end A220888

/-! ## A220888.P12416441599671793666

`A163250(n+1)-A006003(n)`
-/

namespace A220888.P12416441599671793666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 (n + 1) - A006003 n

end

end A220888.P12416441599671793666

namespace A220888

/-- `A163250(n+1)-A006003(n)` -/
def P12416441599671793666.Spec : Prop :=
  ∀ n, P12416441599671793666.a n = A220888 n

end A220888

/-! ## A220888.P13270834890631082101

`∑[A001891(n)]-sqrt(A135509(n))`
-/

namespace A220888.P13270834890631082101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - Real.sqrt (A135509 n : ℝ)

end

end A220888.P13270834890631082101

namespace A220888

/-- `∑[A001891(n)]-sqrt(A135509(n))` -/
def P13270834890631082101.Spec : Prop :=
  ∀ n, P13270834890631082101.a n = (A220888 n : ℝ)

end A220888

/-! ## A220888.P3514316886722210846

`∑[∑[A001911(n)]]-A006003(n)`
-/

namespace A220888.P3514316886722210846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006003 n

end

end A220888.P3514316886722210846

namespace A220888

/-- `∑[∑[A001911(n)]]-A006003(n)` -/
def P3514316886722210846.Spec : Prop :=
  ∀ n, P3514316886722210846.a n = A220888 n

end A220888

/-!
# A220889: a(n) = F(n+8) - (1/6)*(n^4-2*n^3+26*n^2+47*n+132) where F(i) = Fibonacci numbers (A000045).

The programs for A220889, the canonical program `A220889.P18153767106500405500` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220889 has offset 1).

The definition of A220889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220889.P18153767106500405500

`∑[A220888(n)]-A000332(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A220889

/-- `∑[A220888(n)]-A000332(n)` -/
def P18153767106500405500.Spec : Prop :=
  ∀ n, P18153767106500405500.a n = A220889 (n + 1)

theorem P18153767106500405500.correct : P18153767106500405500.Spec := by
  intro n
  simp only [A220889, Nat.add_sub_cancel]

end A220889

/-! ## A220889.P10086055728769577745

`A172471(∑[∑[A332834(n)]]²)`
-/

namespace A220889.P10086055728769577745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332834 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A220889.P10086055728769577745

namespace A220889

/-- `A172471(∑[∑[A332834(n)]]²)` -/
def P10086055728769577745.Spec : Prop :=
  ∀ n, P10086055728769577745.a n = A220889 (n + 1)

end A220889

/-!
# A220891: Where record values occur in A187824.

The programs for A220891, there is no canonical definition to state claims against.
-/

/-! ## A220891.P4168732796393037447

`record[A056697(A052938(n))]`
-/

namespace A220891.P4168732796393037447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056697 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220891.P4168732796393037447

/-! ## A220891.P10675135329042701879

`record[A056697(A331742(n))]`
-/

namespace A220891.P10675135329042701879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056697 (A331742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220891.P10675135329042701879

/-! ## A220891.P12313158405458438957

`record[A056697(A008611(n)+1)]`
-/

namespace A220891.P12313158405458438957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056697 (A008611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220891.P12313158405458438957

/-! ## A220891.P13423894161209347339

`record[A056697(A305801(n+1))]`
-/

namespace A220891.P13423894161209347339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056697 (A305801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220891.P13423894161209347339

/-! ## A220891.P3200565658992198504

`record[A056697(A003056(A036467(n)))]`
-/

namespace A220891.P3200565658992198504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056697 (A003056 (A036467 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220891.P3200565658992198504

/-!
# A220892: G.f.: (1+8*x+22*x^2+8*x^3+x^4)/(1-x)^6.

The programs for A220892, the canonical program `A220892.P5253584960924880092` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220892 has offset 0).

The definition of A220892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220892.P5253584960924880092

`(n+1)*(n²+3*n+3)*(n²+n+1)/3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220892

/-- `(n+1)*(n²+3*n+3)*(n²+n+1)/3` -/
def P5253584960924880092.Spec : Prop :=
  ∀ n, P5253584960924880092.a n = (A220892 n : ℚ)

end A220892

/-! ## A220892.P1386315977208580735

`A052459(n+1)-A000292(n)`
-/

namespace A220892.P1386315977208580735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052459 (n + 1) - A000292 n

end

end A220892.P1386315977208580735

namespace A220892

/-- `A052459(n+1)-A000292(n)` -/
def P1386315977208580735.Spec : Prop :=
  ∀ n, P1386315977208580735.a n = A220892 n

end A220892

/-! ## A220892.P14801143558929711340

`A201106(n+1)+A072474(n+1)`
-/

namespace A220892.P14801143558929711340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201106 (n + 1) + A072474 (n + 1)

end

end A220892.P14801143558929711340

namespace A220892

/-- `A201106(n+1)+A072474(n+1)` -/
def P14801143558929711340.Spec : Prop :=
  ∀ n, P14801143558929711340.a n = A220892 n

end A220892

/-! ## A220892.P1681705101131458715

`(n+1)/3*A059826(n+1)`
-/

namespace A220892.P1681705101131458715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A059826 (n + 1) : ℚ)

end

end A220892.P1681705101131458715

namespace A220892

/-- `(n+1)/3*A059826(n+1)` -/
def P1681705101131458715.Spec : Prop :=
  ∀ n, P1681705101131458715.a n = (A220892 n : ℚ)

end A220892

/-! ## A220892.P8632180219107121461

`A046163(n+1)*A051176(n+1)*A130770(n)`
-/

namespace A220892.P8632180219107121461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (n + 1) * A051176 (n + 1) * A130770 n

end

end A220892.P8632180219107121461

namespace A220892

/-- `A046163(n+1)*A051176(n+1)*A130770(n)` -/
def P8632180219107121461.Spec : Prop :=
  ∀ n, P8632180219107121461.a n = A220892 n

end A220892

/-! ## A220892.P10288839156195707356

`A051176(n+1)*A130770(n+1)*A130770(n)`
-/

namespace A220892.P10288839156195707356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1) * A130770 (n + 1) * A130770 n

end

end A220892.P10288839156195707356

namespace A220892

/-- `A051176(n+1)*A130770(n+1)*A130770(n)` -/
def P10288839156195707356.Spec : Prop :=
  ∀ n, P10288839156195707356.a n = A220892 n

end A220892

/-! ## A220892.P14593914334916139805

`∑[A158138(A008619((2*n+1)²))]`
-/

namespace A220892.P14593914334916139805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158138 (A008619 ((2 * n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220892.P14593914334916139805

namespace A220892

/-- `∑[A158138(A008619((2*n+1)²))]` -/
def P14593914334916139805.Spec : Prop :=
  ∀ n, P14593914334916139805.a n = A220892 n

end A220892

/-!
# A220894: Number of closed lambda-terms of size n with size 0 for the variables.

The programs for A220894, there is no canonical definition to state claims against.
-/

/-! ## A220894.P4890171970380199385

`∏[n+1]-A267307(∑[n²-n]+1)`
-/

namespace A220894.P4890171970380199385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A267307 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

end

end A220894.P4890171970380199385

/-! ## A220894.P3196421103288421502

`A215700(n+1)+A030341(n)`
-/

namespace A220894.P3196421103288421502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215700 (n + 1) + A030341 n

end

end A220894.P3196421103288421502

/-!
# A220895: Number of closed lambda-terms of size n with at most 1 free de Bruijn index.

The programs for A220895, there is no canonical definition to state claims against.
-/

/-! ## A220895.P606662323570467207

`A004526(A215051(n+1)+A046034(n+1))`
-/

namespace A220895.P606662323570467207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A215051 (n + 1) + A046034 (n + 1)).toNat

end

end A220895.P606662323570467207

/-! ## A220895.P5214833135003695612

`A130482(A006152(n+1))-A196025(n+1)`
-/

namespace A220895.P5214833135003695612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (A006152 (n + 1)).toNat - A196025 (n + 1)

end

end A220895.P5214833135003695612

/-!
# A220896: Number of closed lambda-terms of size n with at most 2 free de Bruijn indices.

The programs for A220896, there is no canonical definition to state claims against.
-/

/-! ## A220896.P2361457278467310624

`A134025(floor(10^n/9))+∑[A000009(2*(n+2))]`
-/

namespace A220896.P2361457278467310624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134025 ⌊(10 ^ n : ℚ) / 9⌋.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220896.P2361457278467310624

/-!
# A220898: Number of primitive maps on n edges.

The programs for A220898, there is no canonical definition to state claims against.
-/

/-! ## A220898.P4759688740272030236

`A220899(n)+a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A220898.P4759688740272030236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A220899 n + a (n - 1)

end

end A220898.P4759688740272030236

/-! ## A220898.P4825664880631424949

`A136110(2*a(n-1))` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A220898.P4825664880631424949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  A136110 (2 * a (n - 1)).toNat

end

end A220898.P4825664880631424949

/-! ## A220898.P1803018138157642439

`A123133(a(n-1))+1-n` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A220898.P1803018138157642439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  A123133 (a (n - 1)).toNat + (1 - (n : ℤ))

end

end A220898.P1803018138157642439

/-!
# A220899: Number of 2-face-free maps on n edges.

The programs for A220899, there is no canonical definition to state claims against.
-/

/-! ## A220899.P8967226890908373351

`Δ[A220898(n+1)]`
-/

namespace A220899.P8967226890908373351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220899.P8967226890908373351

/-! ## A220899.P11198184047475318866

`record[Δ[A220898(floor(n/2))]]`
-/

namespace A220899.P11198184047475318866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220898 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220899.P11198184047475318866

/-! ## A220899.P7283999716569816463

`abs(Δ[A220898(-xor(n, -1))])`
-/

namespace A220899.P7283999716569816463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220898 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A220899.P7283999716569816463

/-! ## A220899.P13299813000037328565

`A220898(n+2)-A220898(n+1)`
-/

namespace A220899.P13299813000037328565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220898 (n + 2) - A220898 (n + 1)

end

end A220899.P13299813000037328565

/-! ## A220899.P12218080667306028538

`abs(Δ[A220898(A077168(n))])`
-/

namespace A220899.P12218080667306028538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220898 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A220899.P12218080667306028538

