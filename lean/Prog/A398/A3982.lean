import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C007
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C001
import Seq.B010.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A398200: Lower (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398200, the canonical program `A398200.P3776530324586389120` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398200 has offset 0).

The definition of A398200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398200.P3776530324586389120

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=24, a(5)=37, a(6)=52`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A398200

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P3776530324586389120.Spec : Prop :=
  ∀ n, P3776530324586389120.a n = A398200 n

theorem P3776530324586389120.correct : P3776530324586389120.Spec := by
  intro n
  simp only [A398200]

end A398200

/-! ## A398200.P3224607566984842266

`floor(4/5*∑[n])+n²`
-/

namespace A398200.P3224607566984842266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 5 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + (n ^ 2 : ℤ)

end

end A398200.P3224607566984842266

namespace A398200

/-- `floor(4/5*∑[n])+n²` -/
def P3224607566984842266.Spec : Prop :=
  ∀ n, P3224607566984842266.a n = A398200 n

end A398200

/-!
# A398201: Upper (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398201, the canonical program `A398201.P17485533436528189980` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398201 has offset 0).

The definition of A398201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398201.P17485533436528189980

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=24, a(5)=37, a(6)=53`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A398201

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P17485533436528189980.Spec : Prop :=
  ∀ n, P17485533436528189980.a n = A398201 n

theorem P17485533436528189980.correct : P17485533436528189980.Spec := by
  intro n
  simp only [A398201]

end A398201

/-! ## A398201.P13334291437583063126

`n²-floor(∑[n/5-n])`
-/

namespace A398201.P13334291437583063126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398201.P13334291437583063126

namespace A398201

/-- `n²-floor(∑[n/5-n])` -/
def P13334291437583063126.Spec : Prop :=
  ∀ n, P13334291437583063126.a n = A398201 n

end A398201

/-! ## A398201.P4141802802994478392

`∑[A057354(2*n+1)+A004273(n)]`
-/

namespace A398201.P4141802802994478392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n + 1) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398201.P4141802802994478392

namespace A398201

/-- `∑[A057354(2*n+1)+A004273(n)]` -/
def P4141802802994478392.Spec : Prop :=
  ∀ n, P4141802802994478392.a n = A398201 n

end A398201

/-! ## A398201.P15320728982961490987

`∑[A376959(n)%A069327(n+1)]`
-/

namespace A398201.P15320728982961490987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376959 n) (A069327 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398201.P15320728982961490987

namespace A398201

/-- `∑[A376959(n)%A069327(n+1)]` -/
def P15320728982961490987.Spec : Prop :=
  ∀ n, P15320728982961490987.a n = A398201 n

end A398201

/-!
# A398202: Lower (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398202, the canonical program `A398202.P5570466732706551257` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398202 has offset 0).

The definition of A398202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398202.P5570466732706551257

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=17, a(4)=29`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A398202

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P5570466732706551257.Spec : Prop :=
  ∀ n, P5570466732706551257.a n = A398202 n

theorem P5570466732706551257.correct : P5570466732706551257.Spec := by
  intro n
  simp only [A398202]

end A398202

/-! ## A398202.P8513281733878318333

`floor((5*n+2)*n/3)`
-/

namespace A398202.P8513281733878318333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n + 2 : ℚ) * ((n : ℚ) / 3)⌋

end

end A398202.P8513281733878318333

namespace A398202

/-- `floor((5*n+2)*n/3)` -/
def P8513281733878318333.Spec : Prop :=
  ∀ n, P8513281733878318333.a n = A398202 n

end A398202

/-! ## A398202.P13524601216513453412

`∑[a(n-3)+10]` with `a(0)=0, a(1)=2, a(2)=6, a(3)=9`
-/

namespace A398202.P13524601216513453412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6, 9] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398202.P13524601216513453412

namespace A398202

/-- `∑[a(n-3)+10]` -/
def P13524601216513453412.Spec : Prop :=
  ∀ n, (P13524601216513453412.a n : ℤ) = A398202 n

end A398202

/-! ## A398202.P2923665871626312664

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A398202.P2923665871626312664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398202.P2923665871626312664

namespace A398202

/-- `∑[∑[floor(a(n-3))]]` -/
def P2923665871626312664.Spec : Prop :=
  ∀ n, (P2923665871626312664.a n : ℤ) = A398202 n

end A398202

/-! ## A398202.P9044509976691956095

`round(A168668(n)/3)`
-/

namespace A398202.P9044509976691956095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168668 n : ℚ) / 3)

end

end A398202.P9044509976691956095

namespace A398202

/-- `round(A168668(n)/3)` -/
def P9044509976691956095.Spec : Prop :=
  ∀ n, P9044509976691956095.a n = A398202 n

end A398202

/-!
# A398203: Upper (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398203, the canonical program `A398203.P13519331803441787108` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398203 has offset 0).

The definition of A398203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398203.P13519331803441787108

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=17, a(4)=30`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A398203

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13519331803441787108.Spec : Prop :=
  ∀ n, P13519331803441787108.a n = A398203 n

theorem P13519331803441787108.correct : P13519331803441787108.Spec := by
  intro n
  simp only [A398203]

end A398203

/-! ## A398203.P16248072101377543904

`∑[a(n-3)+10]` with `a(0)=0, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A398203.P16248072101377543904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5, 9] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398203.P16248072101377543904

namespace A398203

/-- `∑[a(n-3)+10]` -/
def P16248072101377543904.Spec : Prop :=
  ∀ n, (P16248072101377543904.a n : ℤ) = A398203 n

end A398203

/-! ## A398203.P3730806996286488030

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398203.P3730806996286488030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398203.P3730806996286488030

namespace A398203

/-- `∑[∑[floor(a(n-3))]]` -/
def P3730806996286488030.Spec : Prop :=
  ∀ n, (P3730806996286488030.a n : ℤ) = A398203 n

end A398203

/-! ## A398203.P4821467736518419323

`round(((2*n)²+(n+1)²)/3)`
-/

namespace A398203.P4821467736518419323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n) ^ 2 + (n + 1) ^ 2 : ℚ) / 3)

end

end A398203.P4821467736518419323

namespace A398203

/-- `round(((2*n)²+(n+1)²)/3)` -/
def P4821467736518419323.Spec : Prop :=
  ∀ n, P4821467736518419323.a n = A398203 n

end A398203

/-! ## A398203.P10592705729783838795

`ceil(A168668(n)/3)`
-/

namespace A398203.P10592705729783838795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168668 n : ℚ) / 3⌉

end

end A398203.P10592705729783838795

namespace A398203

/-- `ceil(A168668(n)/3)` -/
def P10592705729783838795.Spec : Prop :=
  ∀ n, P10592705729783838795.a n = A398203 n

end A398203

/-!
# A398206: Records of A398031.

The programs for A398206, there is no canonical definition to state claims against.
-/

/-! ## A398206.P892173072544999831

`record[A398031(n+1)]`
-/

namespace A398206.P892173072544999831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398206.P892173072544999831

/-!
# A398225: Numbers that are neither 5-free nor 5-full.

The programs for A398225, there is no canonical definition to state claims against.
-/

/-! ## A398225.P16078803209705573372

`∩[A122616(n+1), A382879(n+1)]`
-/

namespace A398225.P16078803209705573372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P16078803209705573372

/-! ## A398225.P1908846542456676237

`∩[A177880(n+1), A382879(n+1)]`
-/

namespace A398225.P1908846542456676237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P1908846542456676237

/-! ## A398225.P4983668016831545070

`∩[A382879(n+1), A174312(n)]`
-/

namespace A398225.P4983668016831545070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P4983668016831545070

/-! ## A398225.P11345964302232037907

`∩[A334801(n+1), A174312(n)]`
-/

namespace A398225.P11345964302232037907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P11345964302232037907

/-! ## A398225.P5068225286319196628

`∩[A363950(n+1), A174312(n)]`
-/

namespace A398225.P5068225286319196628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398225.P5068225286319196628

/-!
# A398241: Number of simple graphs on n unlabeled vertices with feedback vertex set number 1.

The programs for A398241, there is no canonical definition to state claims against.
-/

/-! ## A398241.P17012622990673637535

`A057366(A394952(n))`
-/

namespace A398241.P17012622990673637535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (A394952 n).toNat

end

end A398241.P17012622990673637535

/-!
# A398243: Number of simple connected graphs on n unlabeled vertices with feedback vertex set number 1.

The programs for A398243, there is no canonical definition to state claims against.
-/

/-! ## A398243.P18352823215168374956

`A105518(A080643(n))`
-/

namespace A398243.P18352823215168374956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A080643 n).toNat

end

end A398243.P18352823215168374956

/-! ## A398243.P15929071560987757182

`A054404(A219261(n))`
-/

namespace A398243.P15929071560987757182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A219261 n).toNat

end

end A398243.P15929071560987757182

/-! ## A398243.P18377552735742886195

`A308028(A149421(n))`
-/

namespace A398243.P18377552735742886195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308028 (A149421 n).toNat

end

end A398243.P18377552735742886195

/-!
# A398244: Array read by antidiagonals: T(n,k) is the number of feedback vertex sets in the grid graph P_n X P_k.

The programs for A398244, there is no canonical definition to state claims against.
-/

/-! ## A398244.P5332762309983994666

`A354901(A255256(n))`
-/

namespace A398244.P5332762309983994666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354901 (A255256 n).toNat

end

end A398244.P5332762309983994666

/-! ## A398244.P9195477765313566227

`A366188(A328887(n))`
-/

namespace A398244.P9195477765313566227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366188 (A328887 n).toNat

end

end A398244.P9195477765313566227

/-! ## A398244.P14423457874980672579

`A107457(A049207(n))`
-/

namespace A398244.P14423457874980672579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107457 ((A049207 n).toNat + 18)

end

end A398244.P14423457874980672579

/-! ## A398244.P12070126614338007094

`A085516(A099594(n))`
-/

namespace A398244.P12070126614338007094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A099594 n).toNat

end

end A398244.P12070126614338007094

/-! ## A398244.P2712391421710958675

`A062821(A174410(n))`
-/

namespace A398244.P2712391421710958675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A174410 n).toNat

end

end A398244.P2712391421710958675

/-!
# A398245: Number of feedback vertex sets in the n X n grid graph.

The programs for A398245, there is no canonical definition to state claims against.
-/

/-! ## A398245.P11030181162909771794

`A398244(∑[4*n])`
-/

namespace A398245.P11030181162909771794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398245.P11030181162909771794

/-!
# A398246: Number of feedback vertex sets in the grid graph P_n X P_3.

The programs for A398246, the canonical program `A398246.P17760257700956056221` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398246 has offset 0).

The definition of A398246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398246.P17760257700956056221

`7*a(n-1)+3*a(n-2)-9*a(n-3)+10*a(n-4)` with `a(0)=1, a(1)=8, a(2)=57, a(3)=416`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A398246

/-- `7*a(n-1)+3*a(n-2)-9*a(n-3)+10*a(n-4)` -/
def P17760257700956056221.Spec : Prop :=
  ∀ n, P17760257700956056221.a n = A398246 n

theorem P17760257700956056221.correct : P17760257700956056221.Spec := by
  intro n
  simp only [A398246]

end A398246

/-! ## A398246.P13667297272050819115

`A398244(A167614(n+2))`
-/

namespace A398246.P13667297272050819115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 (A167614 (n + 2)).toNat

end

end A398246.P13667297272050819115

namespace A398246

/-- `A398244(A167614(n+2))` -/
def P13667297272050819115.Spec : Prop :=
  ∀ n, P13667297272050819115.a n = A398246 n

end A398246

/-! ## A398246.P6293062437636360446

`A398244(A000217(n+3)+n)`
-/

namespace A398246.P6293062437636360446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398244 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A398246.P6293062437636360446

namespace A398246

/-- `A398244(A000217(n+3)+n)` -/
def P6293062437636360446.Spec : Prop :=
  ∀ n, P6293062437636360446.a n = A398246 n

end A398246

/-!
# A398259: a(1)=0; for n>=2, let s = digit sum of a(n-1); if s=a(m) for some m < n-1, let m be the greatest such index and set a(n)=n-1-m; otherwise set a(n) = 0.

The programs for A398259, there is no canonical definition to state claims against.
-/

/-! ## A398259.P8053790753166414447

`A171917(A048266(n+2))`
-/

namespace A398259.P8053790753166414447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (A048266 (n + 2)).toNat

end

end A398259.P8053790753166414447

/-!
# A398262: Number of indecomposable closed walks of length 2n along the edges of the 4-cube (hypercube Q_4, the tesseract) based at a vertex.

The programs for A398262, the canonical program `A398262.P15848316115240564117` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398262 has offset 0).

The definition of A398262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398262.P15848316115240564117

`16*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=4, a(2)=24`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A398262

/-- `16*a(n-1)-24*a(n-2)` -/
def P15848316115240564117.Spec : Prop :=
  ∀ n, P15848316115240564117.a n = A398262 n

theorem P15848316115240564117.correct : P15848316115240564117.Spec := by
  intro n
  simp only [A398262]

end A398262

/-!
# A398264: Numbers divisible by the square but not the cube of their least prime factor.

The programs for A398264, there is no canonical definition to state claims against.
-/

/-! ## A398264.P17143932447249405318

`eq[2, val(A071364(n+1), 2)]+1`
-/

namespace A398264.P17143932447249405318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398264.P17143932447249405318

/-! ## A398264.P3932741442207104529

`eq[2, A067029(n+1)]+1`
-/

namespace A398264.P3932741442207104529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398264.P3932741442207104529

/-! ## A398264.P8105490729157939965

`∩[A240112(n+1), A385097(n+1)]`
-/

namespace A398264.P8105490729157939965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398264.P8105490729157939965

/-! ## A398264.P17188373148149342501

`∩[A365869(n+1), A385097(n+1)]`
-/

namespace A398264.P17188373148149342501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398264.P17188373148149342501

/-! ## A398264.P5328796887722764334

`∩[A344742(n+1), A365869(n+1)]`
-/

namespace A398264.P5328796887722764334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398264.P5328796887722764334

/-!
# A398269: Number of ways to partition the standard Roman numeral representation of n into a sequence of one or more substrings, each of which is itself the standard Roman numeral representation of a positive integer.

The programs for A398269, there is no canonical definition to state claims against.
-/

/-! ## A398269.P7148987726269609581

`2^(A006968(n+1)-1)`
-/

namespace A398269.P7148987726269609581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006968 (n + 1) - 1 : ℤ)

end

end A398269.P7148987726269609581

/-! ## A398269.P1520072545831778758

`A011782(A006968(n+1))`
-/

namespace A398269.P1520072545831778758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A006968 (n + 1)).toNat

end

end A398269.P1520072545831778758

/-! ## A398269.P2620630587864818069

`A000079(A006968(n+1)-1)`
-/

namespace A398269.P2620630587864818069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A006968 (n + 1) - 1).toNat

end

end A398269.P2620630587864818069

/-! ## A398269.P16451703902733015227

`A000010(2^A006968(n+1))`
-/

namespace A398269.P16451703902733015227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P16451703902733015227

/-! ## A398269.P2298385049299911412

`A102363(C(A006968(n+1), 2))`
-/

namespace A398269.P2298385049299911412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (Nat.choose (A006968 (n + 1)).toNat 2)

end

end A398269.P2298385049299911412

/-! ## A398269.P12836337702232433055

`A000079(A006968(n+1))/A020639(2*(n+1))`
-/

namespace A398269.P12836337702232433055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A006968 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A398269.P12836337702232433055

/-! ## A398269.P5787025514969769647

`A003557(2^A006968(n+1))`
-/

namespace A398269.P5787025514969769647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P5787025514969769647

/-! ## A398269.P9299002032689088312

`A004001(2^A006968(n+1))`
-/

namespace A398269.P9299002032689088312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P9299002032689088312

/-! ## A398269.P4244839130680043801

`A038554(2^A006968(n+1))`
-/

namespace A398269.P4244839130680043801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P4244839130680043801

/-! ## A398269.P233544799281315854

`A269386(2^A006968(n+1))`
-/

namespace A398269.P233544799281315854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006968 (n + 1) : ℤ))).toNat

end

end A398269.P233544799281315854

/-!
# A398270: Array read by antidiagonals: T(n,k) is the feedback vertex set number of the grid graph P_n X P_k.

The programs for A398270, there is no canonical definition to state claims against.
-/

/-! ## A398270.P1352460625471313176

`A003991(n+1)-A360920(n+1)`
-/

namespace A398270.P1352460625471313176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A360920 (n + 1)

end

end A398270.P1352460625471313176

/-! ## A398270.P876896513008932179

`A062153(A320500(n+1))`
-/

namespace A398270.P876896513008932179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A320500 (n + 1)).toNat

end

end A398270.P876896513008932179

/-! ## A398270.P11282544975726947508

`A143996(n+1)%A058669(n)`
-/

namespace A398270.P11282544975726947508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143996 (n + 1)) (A058669 n)

end

end A398270.P11282544975726947508

/-! ## A398270.P1310544682078472924

`A265893(A230899(n+1))`
-/

namespace A398270.P1310544682078472924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A230899 (n + 1)).toNat

end

end A398270.P1310544682078472924

/-! ## A398270.P7774649192510388367

`A004218(A157179(n))`
-/

namespace A398270.P7774649192510388367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A157179 n).toNat

end

end A398270.P7774649192510388367

/-!
# A398272: Number of minimum feedback vertex sets in the n X n grid graph.

The programs for A398272, there is no canonical definition to state claims against.
-/

/-! ## A398272.P3563624667348769124

`A398271((n+1)²+n²)`
-/

namespace A398272.P3563624667348769124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398271 ((n + 1) ^ 2 + n ^ 2)

end

end A398272.P3563624667348769124

/-!
# A398273: Number of minimum feedback vertex sets in the grid graph P_n X P_5.

The programs for A398273, there is no canonical definition to state claims against.
-/

/-! ## A398273.P4612695255479404563

`A398271(A374005(n+1))`
-/

namespace A398273.P4612695255479404563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398271 (A374005 (n + 1)).toNat

end

end A398273.P4612695255479404563

/-!
# A398275: Number of simple connected graphs on n unlabeled vertices with mutual-visibility number 3.

The programs for A398275, there is no canonical definition to state claims against.
-/

/-! ## A398275.P13199452590168919220

`A398274(A114830(n+2))`
-/

namespace A398275.P13199452590168919220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398274 (A114830 (n + 2)).toNat

end

end A398275.P13199452590168919220

/-!
# A398277: Number of total dominating sets in the 4 X n king graph.

The programs for A398277, there is no canonical definition to state claims against.
-/

/-! ## A398277.P5195824849412036404

`A303114(∑[n+3])`
-/

namespace A398277.P5195824849412036404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398277.P5195824849412036404

/-!
# A398278: Number of (non-null) induced trees in the grid graph P_3 X P_n.

The programs for A398278, there is no canonical definition to state claims against.
-/

/-! ## A398278.P2277526372539732507

`A360202(A167614(n+1))`
-/

namespace A398278.P2277526372539732507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A167614 (n + 1)).toNat

end

end A398278.P2277526372539732507

/-! ## A398278.P8713493084810452682

`A360202(A373663(n+1))`
-/

namespace A398278.P8713493084810452682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A373663 (n + 1)).toNat

end

end A398278.P8713493084810452682

/-! ## A398278.P6230246231370397679

`A360202(A034856(n+2))`
-/

namespace A398278.P6230246231370397679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A034856 (n + 2)).toNat

end

end A398278.P6230246231370397679

/-! ## A398278.P7366081194328773688

`A360202(A000096(n+2)-1)`
-/

namespace A398278.P7366081194328773688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A000096 (n + 2) - 1).toNat

end

end A398278.P7366081194328773688

/-! ## A398278.P10823625600122276722

`A360202(A000217(n+2)+n+1)`
-/

namespace A398278.P10823625600122276722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A398278.P10823625600122276722

/-!
# A398279: Number of (non-null) induced trees in the grid graph P_4 X P_n.

The programs for A398279, there is no canonical definition to state claims against.
-/

/-! ## A398279.P10403879388945602300

`A360202(A141214(n+1))`
-/

namespace A398279.P10403879388945602300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A141214 (n + 1)).toNat

end

end A398279.P10403879388945602300

/-! ## A398279.P12277928195730691992

`A360202(A374004(n+1))`
-/

namespace A398279.P12277928195730691992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A374004 (n + 1)).toNat

end

end A398279.P12277928195730691992

/-! ## A398279.P12322286618047090052

`A360202(A000096(n+2)+n+2)`
-/

namespace A398279.P12322286618047090052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360202 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A398279.P12322286618047090052

