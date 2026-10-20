import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C031
import Seq.B001.C000
import Seq.B002.C000
import Seq.B003.C000
import Seq.B004.C000
import Seq.B014.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C009
import Seq.Opaque.C013
import Seq.Opaque.C022

/-!
# A021100: Decimal expansion of 1/96.

The programs for A021100, the canonical program `A021100.P15508648509027999851` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021100 has offset 0).

The definition of A021100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021100.P15508648509027999851

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4, a(4)=1, a(5)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021100

/-- `a(n-1)` -/
def P15508648509027999851.Spec : Prop :=
  ∀ n, (P15508648509027999851.a n : ℤ) = A021100 n

theorem P15508648509027999851.correct : P15508648509027999851.Spec := by
  intro n
  simp only [A021100]

end A021100

/-!
# A021103: Number of two-connected (or biconnected) planar graphs with n nodes.

The programs for A021103, there is no canonical definition to state claims against.
-/

/-! ## A021103.P10822069013764759598

`A066339(A353255(n)+A001006(n))`
-/

namespace A021103.P10822069013764759598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A353255 n + A001006 n).toNat

end

end A021103.P10822069013764759598

/-! ## A021103.P6171841069325995245

`A025428(A001764(n)-A053120(n))`
-/

namespace A021103.P6171841069325995245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A001764 n - A053120 n).toNat

end

end A021103.P6171841069325995245

/-!
# A021104: Expansion of g.f. 1/((1 - x)*(1 - 2*x)*(1 - 4*x)*(1 - 12*x)).

The programs for A021104, there is no canonical definition to state claims against.
-/

/-! ## A021104.P5850333676954210834

`∑[2^n*∑[2^n*∑[3^n]]]`
-/

namespace A021104.P5850333676954210834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021104.P5850333676954210834

/-! ## A021104.P10773272065537344770

`or(1, ∑[A016294(n)])`
-/

namespace A021104.P10773272065537344770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021104.P10773272065537344770

/-! ## A021104.P2775222930313266172

`A016207(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021104.P2775222930313266172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016207 n + 4 * a (n - 1)

end

end A021104.P2775222930313266172

/-! ## A021104.P4091502150515113215

`A171477(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021104.P4091502150515113215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171477 n + 12 * a (n - 1)

end

end A021104.P4091502150515113215

/-! ## A021104.P2791470848428881497

`a(n-1)+A016227(n)+a(n-1)` with `a(0)=1`
-/

namespace A021104.P2791470848428881497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016227 n + a (n - 1))

end

end A021104.P2791470848428881497

/-!
# A021105: Decimal expansion of 1/101.

The programs for A021105, the canonical program `A021105.P7927055981486351382` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021105 has offset 0).

The definition of A021105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021105.P7927055981486351382

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021105

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P7927055981486351382.Spec : Prop :=
  ∀ n, P7927055981486351382.a n = A021105 n

theorem P7927055981486351382.correct : P7927055981486351382.Spec := by
  intro n
  simp only [A021105]

end A021105

/-!
# A021108: Decimal expansion of 1/104.

The programs for A021108, the canonical program `A021108.P10794516118075837223` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021108 has offset 0).

The definition of A021108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021108.P10794516118075837223

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=6, a(4)=1, a(5)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021108

/-- `9-a(n-3)` -/
def P10794516118075837223.Spec : Prop :=
  ∀ n, P10794516118075837223.a n = A021108 n

theorem P10794516118075837223.correct : P10794516118075837223.Spec := by
  intro n
  simp only [A021108]

end A021108

/-!
# A021109: Decimal expansion of 1/105.

The programs for A021109, there is no canonical definition to state claims against.
-/

/-! ## A021109.P8566444606040516121

`A021172(A154854(C(2, n)!)+n)`
-/

namespace A021109.P8566444606040516121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021172 (A154854 (Nat.factorial (Nat.choose 2 n)) + (n : ℤ)).toNat

end

end A021109.P8566444606040516121

/-!
# A021112: Decimal expansion of 1/108.

The programs for A021112, the canonical program `A021112.P582862242207834524` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021112 has offset 0).

The definition of A021112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021112.P582862242207834524

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=2, a(4)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021112

/-- `a(n-3)` -/
def P582862242207834524.Spec : Prop :=
  ∀ n, (P582862242207834524.a n : ℤ) = A021112 n

theorem P582862242207834524.correct : P582862242207834524.Spec := by
  intro n
  simp only [A021112]

end A021112

/-!
# A021114: Expansion of 1/((1-x)*(1-2x)*(1-5x)*(1-6x)).

The programs for A021114, the canonical program `A021114.P5974715316266371263` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021114 has offset 0).

The definition of A021114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021114.P5974715316266371263

`(3*6^(n+3)-5^(n+4)+5*2^(n+3)-3)/60`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021114

/-- `(3*6^(n+3)-5^(n+4)+5*2^(n+3)-3)/60` -/
def P5974715316266371263.Spec : Prop :=
  ∀ n, P5974715316266371263.a n = (A021114 n : ℚ)

end A021114

/-! ## A021114.P16796545305230289003

`∑[A016295(n)]`
-/

namespace A021114.P16796545305230289003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021114.P16796545305230289003

namespace A021114

/-- `∑[A016295(n)]` -/
def P16796545305230289003.Spec : Prop :=
  ∀ n, P16796545305230289003.a n = A021114 n

end A021114

/-! ## A021114.P5552284515713355299

`a(n-1)+A016228(n)+a(n-1)` with `a(0)=1`
-/

namespace A021114.P5552284515713355299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016228 n + a (n - 1))

end

end A021114.P5552284515713355299

namespace A021114

/-- `a(n-1)+A016228(n)+a(n-1)` -/
def P5552284515713355299.Spec : Prop :=
  ∀ n, P5552284515713355299.a n = A021114 n

end A021114

/-! ## A021114.P6038412095796177298

`2*A021076(n)-A021074(n)`
-/

namespace A021114.P6038412095796177298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021076 n - A021074 n

end

end A021114.P6038412095796177298

namespace A021114

/-- `2*A021076(n)-A021074(n)` -/
def P6038412095796177298.Spec : Prop :=
  ∀ n, P6038412095796177298.a n = A021114 n

end A021114

/-! ## A021114.P8225699920697713001

`A016200(n+1)-A016198(n+1)`
-/

namespace A021114.P8225699920697713001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016200 (n + 1) - A016198 (n + 1)

end

end A021114.P8225699920697713001

namespace A021114

/-- `A016200(n+1)-A016198(n+1)` -/
def P8225699920697713001.Spec : Prop :=
  ∀ n, P8225699920697713001.a n = A021114 n

end A021114

/-! ## A021114.P13708660893778556453

`2*A021124(n)-A021174(n)`
-/

namespace A021114.P13708660893778556453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021124 n - A021174 n

end

end A021114.P13708660893778556453

namespace A021114

/-- `2*A021124(n)-A021174(n)` -/
def P13708660893778556453.Spec : Prop :=
  ∀ n, P13708660893778556453.a n = A021114 n

end A021114

/-! ## A021114.P1594726490251746802

`A021174(n)+A021224(n)-A022111(n)`
-/

namespace A021114.P1594726490251746802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021174 n + (A021224 n - A022111 n)

end

end A021114.P1594726490251746802

namespace A021114

/-- `A021174(n)+A021224(n)-A022111(n)` -/
def P1594726490251746802.Spec : Prop :=
  ∀ n, P1594726490251746802.a n = A021114 n

end A021114

/-! ## A021114.P7605949136823016034

`∑[A019747(n)/A000079(n)]`
-/

namespace A021114.P7605949136823016034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019747 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021114.P7605949136823016034

namespace A021114

/-- `∑[A019747(n)/A000079(n)]` -/
def P7605949136823016034.Spec : Prop :=
  ∀ n, P7605949136823016034.a n = (A021114 n : ℚ)

end A021114

/-!
# A021115: Decimal expansion of 1/111.

The programs for A021115, the canonical program `A021115.P16254005703688202094` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021115 has offset 0).

The definition of A021115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021115.P16254005703688202094

`9*A022003(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021115

/-- `9*A022003(n)` -/
def P16254005703688202094.Spec : Prop :=
  ∀ n, P16254005703688202094.a n = A021115 n

theorem P16254005703688202094.correct : P16254005703688202094.Spec := by
  intro n
  simp only [A021115]

end A021115

/-!
# A021116: Decimal expansion of 1/112.

The programs for A021116, the canonical program `A021116.P13328393724985619072` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021116 has offset 0).

The definition of A021116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021116.P13328393724985619072

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=9, a(4)=2, a(5)=8, a(6)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021116

/-- `9-a(n-3)` -/
def P13328393724985619072.Spec : Prop :=
  ∀ n, P13328393724985619072.a n = A021116 n

theorem P13328393724985619072.correct : P13328393724985619072.Spec := by
  intro n
  simp only [A021116]

end A021116

/-!
# A021117: Decimal expansion of 1/113.

The programs for A021117, there is no canonical definition to state claims against.
-/

/-! ## A021117.P5131799180181636537

`A068079(n+17)`
-/

namespace A021117.P5131799180181636537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068079 (n + 17 + 1)

end

end A021117.P5131799180181636537

/-!
# A021119: Decimal expansion of 1/115.

The programs for A021119, there is no canonical definition to state claims against.
-/

/-! ## A021119.P6724596652999424032

`A021096(A253145(n)-A000217(n))`
-/

namespace A021119.P6724596652999424032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021096 (A253145 n - A000217 n).toNat

end

end A021119.P6724596652999424032

/-!
# A021121: Decimal expansion of 1/117.

The programs for A021121, the canonical program `A021121.P4719174221967181459` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021121 has offset 0).

The definition of A021121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021121.P4719174221967181459

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=5, a(4)=4, a(5)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021121

/-- `a(n-6)` -/
def P4719174221967181459.Spec : Prop :=
  ∀ n, (P4719174221967181459.a n : ℤ) = A021121 n

theorem P4719174221967181459.correct : P4719174221967181459.Spec := by
  intro n
  simp only [A021121]

end A021121

/-!
# A021123: Decimal expansion of 1/119.

The programs for A021123, there is no canonical definition to state claims against.
-/

/-! ## A021123.P5410738726812626559

`A021480(n+4)`
-/

namespace A021123.P5410738726812626559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021480 (n + 4)

end

end A021123.P5410738726812626559

/-!
# A021124: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-7*x)).

The programs for A021124, the canonical program `A021124.P506079275577940139` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021124 has offset 0).

The definition of A021124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021124.P506079275577940139

`(2*7^(n+3)-5^(n+4)+2^(n+6)-5)/120`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021124

/-- `(2*7^(n+3)-5^(n+4)+2^(n+6)-5)/120` -/
def P506079275577940139.Spec : Prop :=
  ∀ n, P506079275577940139.a n = (A021124 n : ℚ)

end A021124

/-! ## A021124.P14461693975811860556

`∑[A016296(n)]`
-/

namespace A021124.P14461693975811860556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021124.P14461693975811860556

namespace A021124

/-- `∑[A016296(n)]` -/
def P14461693975811860556.Spec : Prop :=
  ∀ n, P14461693975811860556.a n = A021124 n

end A021124

/-! ## A021124.P1498549311044756215

`A016198(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A021124.P1498549311044756215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016198 n + 7 * a (n - 1)

end

end A021124.P1498549311044756215

namespace A021124

/-- `A016198(n)+7*a(n-1)` -/
def P1498549311044756215.Spec : Prop :=
  ∀ n, P1498549311044756215.a n = A021124 n

end A021124

/-! ## A021124.P10256654541067764243

`a(n-1)+A016230(n)+a(n-1)` with `a(0)=1`
-/

namespace A021124.P10256654541067764243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016230 n + a (n - 1))

end

end A021124.P10256654541067764243

namespace A021124

/-- `a(n-1)+A016230(n)+a(n-1)` -/
def P10256654541067764243.Spec : Prop :=
  ∀ n, P10256654541067764243.a n = A021124 n

end A021124

/-! ## A021124.P5433417497618125933

`2*A016296(n)-A016230(n)`
-/

namespace A021124.P5433417497618125933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016296 n - A016230 n

end

end A021124.P5433417497618125933

namespace A021124

/-- `2*A016296(n)-A016230(n)` -/
def P5433417497618125933.Spec : Prop :=
  ∀ n, P5433417497618125933.a n = A021124 n

end A021124

/-! ## A021124.P3651668957597676577

`2*A021034(n)-A021024(n)`
-/

namespace A021124.P3651668957597676577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021034 n - A021024 n

end

end A021124.P3651668957597676577

namespace A021124

/-- `2*A021034(n)-A021024(n)` -/
def P3651668957597676577.Spec : Prop :=
  ∀ n, P3651668957597676577.a n = A021124 n

end A021124

/-! ## A021124.P1874156031867248695

`A016296(n+1)-A016230(n+1)`
-/

namespace A021124.P1874156031867248695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016296 (n + 1) - A016230 (n + 1)

end

end A021124.P1874156031867248695

namespace A021124

/-- `A016296(n+1)-A016230(n+1)` -/
def P1874156031867248695.Spec : Prop :=
  ∀ n, P1874156031867248695.a n = A021124 n

end A021124

/-! ## A021124.P17209960048505857940

`2*A021134(n)-A021229(n)`
-/

namespace A021124.P17209960048505857940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021134 n - A021229 n

end

end A021124.P17209960048505857940

namespace A021124

/-- `2*A021134(n)-A021229(n)` -/
def P17209960048505857940.Spec : Prop :=
  ∀ n, P17209960048505857940.a n = A021124 n

end A021124

/-!
# A021127: Decimal expansion of 1/123.

The programs for A021127, the canonical program `A021127.P11865276718559429158` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021127 has offset 0).

The definition of A021127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021127.P11865276718559429158

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021127

/-- `a(n-5)` -/
def P11865276718559429158.Spec : Prop :=
  ∀ n, (P11865276718559429158.a n : ℤ) = A021127 n

theorem P11865276718559429158.correct : P11865276718559429158.Spec := by
  intro n
  simp only [A021127]

end A021127

/-!
# A021128: Decimal expansion of 1/124.

The programs for A021128, there is no canonical definition to state claims against.
-/

/-! ## A021128.P15366607721142483257

`A021996(n+3)`
-/

namespace A021128.P15366607721142483257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021996 (n + 3)

end

end A021128.P15366607721142483257

/-!
# A021129: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-8*x)).

The programs for A021129, the canonical program `A021129.P7121800306219978886` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021129 has offset 0).

The definition of A021129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021129.P7121800306219978886

`(2*8^(n+3)-7*5^(n+3)+14*2^(n+3)-9)/252`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021129

/-- `(2*8^(n+3)-7*5^(n+3)+14*2^(n+3)-9)/252` -/
def P7121800306219978886.Spec : Prop :=
  ∀ n, P7121800306219978886.a n = (A021129 n : ℚ)

end A021129

/-! ## A021129.P9757427713543089923

`∑[A016297(n)]`
-/

namespace A021129.P9757427713543089923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021129.P9757427713543089923

namespace A021129

/-- `∑[A016297(n)]` -/
def P9757427713543089923.Spec : Prop :=
  ∀ n, P9757427713543089923.a n = A021129 n

end A021129

/-! ## A021129.P3046235048221397208

`A016198(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A021129.P3046235048221397208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016198 n + 8 * a (n - 1)

end

end A021129.P3046235048221397208

namespace A021129

/-- `A016198(n)+8*a(n-1)` -/
def P3046235048221397208.Spec : Prop :=
  ∀ n, P3046235048221397208.a n = A021129 n

end A021129

/-! ## A021129.P4168667597579204621

`a(n-1)+A016233(n)+a(n-1)` with `a(0)=1`
-/

namespace A021129.P4168667597579204621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016233 n + a (n - 1))

end

end A021129.P4168667597579204621

namespace A021129

/-- `a(n-1)+A016233(n)+a(n-1)` -/
def P4168667597579204621.Spec : Prop :=
  ∀ n, P4168667597579204621.a n = A021129 n

end A021129

/-! ## A021129.P2853440714911236415

`2*A021154(n)-A021274(n)`
-/

namespace A021129.P2853440714911236415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021154 n - A021274 n

end

end A021129.P2853440714911236415

namespace A021129

/-- `2*A021154(n)-A021274(n)` -/
def P2853440714911236415.Spec : Prop :=
  ∀ n, P2853440714911236415.a n = A021129 n

end A021129

/-! ## A021129.P13704968702185864321

`∑[2*A016301(n)-A016318(n)]`
-/

namespace A021129.P13704968702185864321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016301 n - A016318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021129.P13704968702185864321

namespace A021129

/-- `∑[2*A016301(n)-A016318(n)]` -/
def P13704968702185864321.Spec : Prop :=
  ∀ n, P13704968702185864321.a n = A021129 n

end A021129

/-! ## A021129.P16362342848518904607

`2*A021154(n)-∑[A016318(n)]`
-/

namespace A021129.P16362342848518904607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021154 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021129.P16362342848518904607

namespace A021129

/-- `2*A021154(n)-∑[A016318(n)]` -/
def P16362342848518904607.Spec : Prop :=
  ∀ n, P16362342848518904607.a n = A021129 n

end A021129

/-! ## A021129.P3474581807946455921

`∑[2*A016301(n)]-A021274(n)`
-/

namespace A021129.P3474581807946455921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A021274 n

end

end A021129.P3474581807946455921

namespace A021129

/-- `∑[2*A016301(n)]-A021274(n)` -/
def P3474581807946455921.Spec : Prop :=
  ∀ n, P3474581807946455921.a n = A021129 n

end A021129

/-! ## A021129.P4913878454665499014

`∑[A225468(A133263(n+2))]`
-/

namespace A021129.P4913878454665499014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (A133263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021129.P4913878454665499014

namespace A021129

/-- `∑[A225468(A133263(n+2))]` -/
def P4913878454665499014.Spec : Prop :=
  ∀ n, P4913878454665499014.a n = A021129 n

end A021129

/-! ## A021129.P2158114623036453566

`∑[A225468(eq[2, A002262(n)])]`
-/

namespace A021129.P2158114623036453566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021129.P2158114623036453566

namespace A021129

/-- `∑[A225468(eq[2, A002262(n)])]` -/
def P2158114623036453566.Spec : Prop :=
  ∀ n, P2158114623036453566.a n = A021129 n

end A021129

/-!
# A021130: Decimal expansion of 1/126.

The programs for A021130, the canonical program `A021130.P6240863585808759865` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021130 has offset 0).

The definition of A021130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021130.P6240863585808759865

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=9, a(4)=3, a(5)=6, a(6)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021130

/-- `a(n-6)` -/
def P6240863585808759865.Spec : Prop :=
  ∀ n, (P6240863585808759865.a n : ℤ) = A021130 n

theorem P6240863585808759865.correct : P6240863585808759865.Spec := by
  intro n
  simp only [A021130]

end A021130

/-!
# A021132: Decimal expansion of 1/128.

The programs for A021132, the canonical program `A021132.P12200072428819835598` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021132 has offset 0).

The definition of A021132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021132.P12200072428819835598

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=8, a(4)=1, a(5)=2, a(6)=5, a(7)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021132

/-- `a(n-1)` -/
def P12200072428819835598.Spec : Prop :=
  ∀ n, (P12200072428819835598.a n : ℤ) = A021132 n

theorem P12200072428819835598.correct : P12200072428819835598.Spec := by
  intro n
  simp only [A021132]

end A021132

/-!
# A021134: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-9*x)).

The programs for A021134, the canonical program `A021134.P7229365067704280566` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021134 has offset 0).

The definition of A021134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021134.P7229365067704280566

`(3*9^(n+3)-14*5^(n+3)+32*2^(n+3)-21)/672`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021134

/-- `(3*9^(n+3)-14*5^(n+3)+32*2^(n+3)-21)/672` -/
def P7229365067704280566.Spec : Prop :=
  ∀ n, P7229365067704280566.a n = (A021134 n : ℚ)

end A021134

/-! ## A021134.P5766970307350782095

`∑[A016298(n)]`
-/

namespace A021134.P5766970307350782095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021134.P5766970307350782095

namespace A021134

/-- `∑[A016298(n)]` -/
def P5766970307350782095.Spec : Prop :=
  ∀ n, P5766970307350782095.a n = A021134 n

end A021134

/-! ## A021134.P12699382080309175070

`a(n-1)+A016234(n)+a(n-1)` with `a(0)=1`
-/

namespace A021134.P12699382080309175070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016234 n + a (n - 1))

end

end A021134.P12699382080309175070

namespace A021134

/-- `a(n-1)+A016234(n)+a(n-1)` -/
def P12699382080309175070.Spec : Prop :=
  ∀ n, P12699382080309175070.a n = A021134 n

end A021134

/-! ## A021134.P6635454056971654569

`∑[a(n-1)+A016163(n)+a(n-1)]` with `a(0)=1`
-/

namespace A021134.P6635454056971654569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A016163 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021134.P6635454056971654569

namespace A021134

/-- `∑[a(n-1)+A016163(n)+a(n-1)]` -/
def P6635454056971654569.Spec : Prop :=
  ∀ n, P6635454056971654569.a n = A021134 n

end A021134

/-! ## A021134.P4317376519920564165

`∑[2*A016204(n)-A016198(n)]`
-/

namespace A021134.P4317376519920564165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016204 n - A016198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021134.P4317376519920564165

namespace A021134

/-- `∑[2*A016204(n)-A016198(n)]` -/
def P4317376519920564165.Spec : Prop :=
  ∀ n, P4317376519920564165.a n = A021134 n

end A021134

/-! ## A021134.P10129345414410201264

`∑[∑[2*A016133(n)-A016127(n)]]`
-/

namespace A021134.P10129345414410201264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016133 n - A016127 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021134.P10129345414410201264

namespace A021134

/-- `∑[∑[2*A016133(n)-A016127(n)]]` -/
def P10129345414410201264.Spec : Prop :=
  ∀ n, P10129345414410201264.a n = A021134 n

end A021134

/-! ## A021134.P15973943189868920603

`a(n-1)+A029833(2*(n+1))+A016298(n)` with `a(0)=1`
-/

namespace A021134.P15973943189868920603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A029833 (2 * (n + 1)) + A016298 n)

end

end A021134.P15973943189868920603

namespace A021134

/-- `a(n-1)+A029833(2*(n+1))+A016298(n)` -/
def P15973943189868920603.Spec : Prop :=
  ∀ n, P15973943189868920603.a n = A021134 n

end A021134

/-! ## A021134.P17085316959989433687

`∑[2*a(n-1)+A211866(n+1)-A104891(n)]` with `a(0)=1`
-/

namespace A021134.P17085316959989433687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + (A211866 (n + 1) - A104891 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021134.P17085316959989433687

namespace A021134

/-- `∑[2*a(n-1)+A211866(n+1)-A104891(n)]` -/
def P17085316959989433687.Spec : Prop :=
  ∀ n, P17085316959989433687.a n = A021134 n

end A021134

/-! ## A021134.P3814016194090123654

`∑[(A016312(n)+A016296(n))/2]`
-/

namespace A021134.P3814016194090123654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016312 n + A016296 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021134.P3814016194090123654

namespace A021134

/-- `∑[(A016312(n)+A016296(n))/2]` -/
def P3814016194090123654.Spec : Prop :=
  ∀ n, P3814016194090123654.a n = (A021134 n : ℚ)

end A021134

/-!
# A021136: Decimal expansion of 1/132.

The programs for A021136, the canonical program `A021136.P3665565447764531220` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021136 has offset 0).

The definition of A021136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021136.P3665565447764531220

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021136

/-- `a(n-2)` -/
def P3665565447764531220.Spec : Prop :=
  ∀ n, (P3665565447764531220.a n : ℤ) = A021136 n

theorem P3665565447764531220.correct : P3665565447764531220.Spec := by
  intro n
  simp only [A021136]

end A021136

/-!
# A021139: Decimal expansion of 1/135.

The programs for A021139, the canonical program `A021139.P5039972236594992909` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021139 has offset 0).

The definition of A021139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021139.P5039972236594992909

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021139

/-- `a(n-3)` -/
def P5039972236594992909.Spec : Prop :=
  ∀ n, (P5039972236594992909.a n : ℤ) = A021139 n

theorem P5039972236594992909.correct : P5039972236594992909.Spec := by
  intro n
  simp only [A021139]

end A021139

/-!
# A021141: Decimal expansion of 1/137.

The programs for A021141, the canonical program `A021141.P14541736035329085119` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021141 has offset 0).

The definition of A021141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021141.P14541736035329085119

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021141

/-- `9-a(n-4)` -/
def P14541736035329085119.Spec : Prop :=
  ∀ n, P14541736035329085119.a n = A021141 n

theorem P14541736035329085119.correct : P14541736035329085119.Spec := by
  intro n
  simp only [A021141]

end A021141

/-!
# A021144: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-10*x)).

The programs for A021144, the canonical program `A021144.P14419249874044689641` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021144 has offset 0).

The definition of A021144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021144.P14419249874044689641

`(10^(n+3)-6*5^(n+3)+15*2^(n+3)-10)/360`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021144

/-- `(10^(n+3)-6*5^(n+3)+15*2^(n+3)-10)/360` -/
def P14419249874044689641.Spec : Prop :=
  ∀ n, P14419249874044689641.a n = (A021144 n : ℚ)

end A021144

/-! ## A021144.P10235328599522697831

`∑[A016299(n)]`
-/

namespace A021144.P10235328599522697831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021144.P10235328599522697831

namespace A021144

/-- `∑[A016299(n)]` -/
def P10235328599522697831.Spec : Prop :=
  ∀ n, P10235328599522697831.a n = A021144 n

end A021144

/-! ## A021144.P7794229758766333941

`A016205(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021144.P7794229758766333941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016205 n + 5 * a (n - 1)

end

end A021144.P7794229758766333941

namespace A021144

/-- `A016205(n)+5*a(n-1)` -/
def P7794229758766333941.Spec : Prop :=
  ∀ n, P7794229758766333941.a n = A021144 n

end A021144

/-! ## A021144.P17301804349637552924

`∑[A016127(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A021144.P17301804349637552924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A021144.P17301804349637552924

namespace A021144

/-- `∑[A016127(n)]+10*a(n-1)` -/
def P17301804349637552924.Spec : Prop :=
  ∀ n, P17301804349637552924.a n = A021144 n

end A021144

/-! ## A021144.P13799329184576208854

`a(n-1)+A016237(n)+a(n-1)` with `a(0)=1`
-/

namespace A021144.P13799329184576208854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016237 n + a (n - 1))

end

end A021144.P13799329184576208854

namespace A021144

/-- `a(n-1)+A016237(n)+a(n-1)` -/
def P13799329184576208854.Spec : Prop :=
  ∀ n, P13799329184576208854.a n = A021144 n

end A021144

/-! ## A021144.P14746168437732286331

`2*A016205(n)-A016198(n)`
-/

namespace A021144.P14746168437732286331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016205 n - A016198 n

end

end A021144.P14746168437732286331

namespace A021144

/-- `2*A016205(n)-A016198(n)` -/
def P14746168437732286331.Spec : Prop :=
  ∀ n, P14746168437732286331.a n = A021144 n

end A021144

/-! ## A021144.P7638489696830006297

`2*A021268(n)-A022565(n)`
-/

namespace A021144.P7638489696830006297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021268 n - A022565 n

end

end A021144.P7638489696830006297

namespace A021144

/-- `2*A021268(n)-A022565(n)` -/
def P7638489696830006297.Spec : Prop :=
  ∀ n, P7638489696830006297.a n = A021144 n

end A021144

/-!
# A021147: Decimal expansion of 1/143.

The programs for A021147, the canonical program `A021147.P224464834440034346` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021147 has offset 0).

The definition of A021147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021147.P224464834440034346

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021147

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P224464834440034346.Spec : Prop :=
  ∀ n, P224464834440034346.a n = A021147 n

theorem P224464834440034346.correct : P224464834440034346.Spec := by
  intro n
  simp only [A021147]

end A021147

/-!
# A021148: Decimal expansion of 1/144.

The programs for A021148, the canonical program `A021148.P3141854408169131582` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021148 has offset 0).

The definition of A021148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021148.P3141854408169131582

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=9, a(4)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021148

/-- `a(n-1)` -/
def P3141854408169131582.Spec : Prop :=
  ∀ n, (P3141854408169131582.a n : ℤ) = A021148 n

theorem P3141854408169131582.correct : P3141854408169131582.Spec := by
  intro n
  simp only [A021148]

end A021148

/-!
# A021149: Decimal expansion of 1/145.

The programs for A021149, there is no canonical definition to state claims against.
-/

/-! ## A021149.P14790688193005142464

`A021120(round(sqrt(n²+1))+4)`
-/

namespace A021149.P14790688193005142464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021120 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 4).toNat

end

end A021149.P14790688193005142464

/-!
# A021150: Decimal expansion of 1/146.

The programs for A021150, the canonical program `A021150.P603292364300416278` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021150 has offset 0).

The definition of A021150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021150.P603292364300416278

`a(n-1)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=8, a(4)=4, a(5)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021150

/-- `a(n-1)-a(n-4)+a(n-5)` -/
def P603292364300416278.Spec : Prop :=
  ∀ n, P603292364300416278.a n = A021150 n

theorem P603292364300416278.correct : P603292364300416278.Spec := by
  intro n
  simp only [A021150]

end A021150

/-!
# A021152: Decimal expansion of 1/148.

The programs for A021152, the canonical program `A021152.P17301726918520401182` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021152 has offset 0).

The definition of A021152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021152.P17301726918520401182

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=7, a(4)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021152

/-- `a(n-3)` -/
def P17301726918520401182.Spec : Prop :=
  ∀ n, (P17301726918520401182.a n : ℤ) = A021152 n

theorem P17301726918520401182.correct : P17301726918520401182.Spec := by
  intro n
  simp only [A021152]

end A021152

/-!
# A021154: Expansion of g.f. 1/((1 - x)*(1 - 2*x)*(1 - 5*x)*(1 - 11*x)).

The programs for A021154, there is no canonical definition to state claims against.
-/

/-! ## A021154.P16728153470807277180

`∑[A016301(n)]`
-/

namespace A021154.P16728153470807277180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021154.P16728153470807277180

/-! ## A021154.P8903353434727833691

`A016238(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021154.P8903353434727833691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016238 n + 2 * a (n - 1)

end

end A021154.P8903353434727833691

/-! ## A021154.P10971026523856653602

`(A021274(n)+A021129(n))/2`
-/

namespace A021154.P10971026523856653602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021274 n + A021129 n : ℚ) / 2

end

end A021154.P10971026523856653602

/-! ## A021154.P17332088968207188292

`2*A021274(n)-A022628(n)`
-/

namespace A021154.P17332088968207188292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021274 n - A022628 n

end

end A021154.P17332088968207188292

/-! ## A021154.P2640720809292830584

`∑[(A016318(n)+A016297(n))/2]`
-/

namespace A021154.P2640720809292830584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016318 n + A016297 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021154.P2640720809292830584

/-! ## A021154.P8073417362088198444

`A021124(n)+A025995(n)-A021244(n)`
-/

namespace A021154.P8073417362088198444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021124 n + (A025995 n - A021244 n)

end

end A021154.P8073417362088198444

/-! ## A021154.P5087436678701279222

`2*A021294(n)-A026028(n)`
-/

namespace A021154.P5087436678701279222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021294 n - A026028 n

end

end A021154.P5087436678701279222

/-!
# A021158: Decimal expansion of 1/154.

The programs for A021158, the canonical program `A021158.P14009844925172660601` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021158 has offset 0).

The definition of A021158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021158.P14009844925172660601

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021158

/-- `9-a(n-3)` -/
def P14009844925172660601.Spec : Prop :=
  ∀ n, P14009844925172660601.a n = A021158 n

theorem P14009844925172660601.correct : P14009844925172660601.Spec := by
  intro n
  simp only [A021158]

end A021158

/-!
# A021160: Decimal expansion of 1/156.

The programs for A021160, the canonical program `A021160.P10357539094273175482` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021160 has offset 0).

The definition of A021160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021160.P10357539094273175482

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=4, a(4)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021160

/-- `2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P10357539094273175482.Spec : Prop :=
  ∀ n, P10357539094273175482.a n = A021160 n

theorem P10357539094273175482.correct : P10357539094273175482.Spec := by
  intro n
  simp only [A021160]

end A021160

/-!
# A021164: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-12*x)).

The programs for A021164, there is no canonical definition to state claims against.
-/

/-! ## A021164.P13899947183945561264

`∑[A016302(n)]`
-/

namespace A021164.P13899947183945561264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021164.P13899947183945561264

/-! ## A021164.P13996301886989332643

`A016239(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021164.P13996301886989332643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016239 n + 2 * a (n - 1)

end

end A021164.P13996301886989332643

/-! ## A021164.P7028875373097179835

`A016207(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021164.P7028875373097179835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016207 n + 5 * a (n - 1)

end

end A021164.P7028875373097179835

/-! ## A021164.P16196455872849943445

`∑[A016166(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A021164.P16196455872849943445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016166 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021164.P16196455872849943445

/-! ## A021164.P1344335694347547532

`(A025936(n)+A021064(n))/2`
-/

namespace A021164.P1344335694347547532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025936 n + A021064 n : ℚ) / 2

end

end A021164.P1344335694347547532

/-! ## A021164.P4226510958529778238

`2*A021279(n)-A022725(n)`
-/

namespace A021164.P4226510958529778238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021279 n - A022725 n

end

end A021164.P4226510958529778238

/-!
# A021166: Decimal expansion of 1/162.

The programs for A021166, there is no canonical definition to state claims against.
-/

/-! ## A021166.P10073810207417557977

`A021490(3*n)`
-/

namespace A021166.P10073810207417557977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021490 (3 * n)

end

end A021166.P10073810207417557977

/-!
# A021168: Decimal expansion of 1/164.

The programs for A021168, the canonical program `A021168.P11682449875899542808` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021168 has offset 0).

The definition of A021168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021168.P11682449875899542808

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=0, a(4)=9, a(5)=7, a(6)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021168

/-- `a(n-5)` -/
def P11682449875899542808.Spec : Prop :=
  ∀ n, (P11682449875899542808.a n : ℤ) = A021168 n

theorem P11682449875899542808.correct : P11682449875899542808.Spec := by
  intro n
  simp only [A021168]

end A021168

/-!
# A021169: Decimal expansion of 1/165.

The programs for A021169, the canonical program `A021169.P13778284461279284757` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021169 has offset 0).

The definition of A021169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021169.P13778284461279284757

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021169

/-- `a(n-2)` -/
def P13778284461279284757.Spec : Prop :=
  ∀ n, (P13778284461279284757.a n : ℤ) = A021169 n

theorem P13778284461279284757.correct : P13778284461279284757.Spec := by
  intro n
  simp only [A021169]

end A021169

/-!
# A021171: Decimal expansion of 1/167.

The programs for A021171, there is no canonical definition to state claims against.
-/

/-! ## A021171.P8344588346003939366

`9-A021338(n+3)`
-/

namespace A021171.P8344588346003939366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021338 (n + 3)

end

end A021171.P8344588346003939366

/-!
# A021174: Expansion of 1/((1-x)(1-2x)(1-6x)(1-7x)).

The programs for A021174, the canonical program `A021174.P4835487723145802356` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021174 has offset 0).

The definition of A021174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021174.P4835487723145802356

`(2*7^(n+3)-3*6^(n+3)+3*2^(n+3)-2)/60`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021174

/-- `(2*7^(n+3)-3*6^(n+3)+3*2^(n+3)-2)/60` -/
def P4835487723145802356.Spec : Prop :=
  ∀ n, P4835487723145802356.a n = (A021174 n : ℚ)

end A021174

/-! ## A021174.P1338550077574039148

`∑[A016304(n)]`
-/

namespace A021174.P1338550077574039148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021174.P1338550077574039148

namespace A021174

/-- `∑[A016304(n)]` -/
def P1338550077574039148.Spec : Prop :=
  ∀ n, P1338550077574039148.a n = A021174 n

end A021174

/-! ## A021174.P4065732720934933531

`a(n-1)+A016241(n)+a(n-1)` with `a(0)=1`
-/

namespace A021174.P4065732720934933531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016241 n + a (n - 1))

end

end A021174.P4065732720934933531

namespace A021174

/-- `a(n-1)+A016241(n)+a(n-1)` -/
def P4065732720934933531.Spec : Prop :=
  ∀ n, P4065732720934933531.a n = A021174 n

end A021174

/-! ## A021174.P7535077727352919382

`2*A021124(n)-A021114(n)`
-/

namespace A021174.P7535077727352919382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021124 n - A021114 n

end

end A021174.P7535077727352919382

namespace A021174

/-- `2*A021124(n)-A021114(n)` -/
def P7535077727352919382.Spec : Prop :=
  ∀ n, P7535077727352919382.a n = A021174 n

end A021174

/-! ## A021174.P1833100882645086793

`A016304(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A021174.P1833100882645086793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016304 n + a (A023443 n).toNat

end

end A021174.P1833100882645086793

namespace A021174

/-- `A016304(n)+a(A023443(n))` -/
def P1833100882645086793.Spec : Prop :=
  ∀ n, P1833100882645086793.a n = A021174 n

end A021174

/-! ## A021174.P11974276481824561249

`A016201(n+1)-A016200(n+1)`
-/

namespace A021174.P11974276481824561249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016201 (n + 1) - A016200 (n + 1)

end

end A021174.P11974276481824561249

namespace A021174

/-- `A016201(n+1)-A016200(n+1)` -/
def P11974276481824561249.Spec : Prop :=
  ∀ n, P11974276481824561249.a n = A021174 n

end A021174

/-! ## A021174.P9346298621189415364

`∑[A016130(n+1)-A016129(n+1)]`
-/

namespace A021174.P9346298621189415364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016130 (n + 1) - A016129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021174.P9346298621189415364

namespace A021174

/-- `∑[A016130(n+1)-A016129(n+1)]` -/
def P9346298621189415364.Spec : Prop :=
  ∀ n, P9346298621189415364.a n = A021174 n

end A021174

/-! ## A021174.P5459674741243781244

`A016304(n)+A016304(n)-A016241(n)`
-/

namespace A021174.P5459674741243781244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016304 n + (A016304 n - A016241 n)

end

end A021174.P5459674741243781244

namespace A021174

/-- `A016304(n)+A016304(n)-A016241(n)` -/
def P5459674741243781244.Spec : Prop :=
  ∀ n, P5459674741243781244.a n = A021174 n

end A021174

/-! ## A021174.P16044475677009385835

`2*A016304(n)-A016241(n)`
-/

namespace A021174.P16044475677009385835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016304 n - A016241 n

end

end A021174.P16044475677009385835

namespace A021174

/-- `2*A016304(n)-A016241(n)` -/
def P16044475677009385835.Spec : Prop :=
  ∀ n, P16044475677009385835.a n = A021174 n

end A021174

/-! ## A021174.P16687965422803047410

`2*A021184(n)-A021224(n)`
-/

namespace A021174.P16687965422803047410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021184 n - A021224 n

end

end A021174.P16687965422803047410

namespace A021174

/-- `2*A021184(n)-A021224(n)` -/
def P16687965422803047410.Spec : Prop :=
  ∀ n, P16687965422803047410.a n = A021174 n

end A021174

/-! ## A021174.P35249858594045991

`2*A021234(n)-A023951(n)`
-/

namespace A021174.P35249858594045991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021234 n - A023951 n

end

end A021174.P35249858594045991

namespace A021174

/-- `2*A021234(n)-A023951(n)` -/
def P35249858594045991.Spec : Prop :=
  ∀ n, P35249858594045991.a n = A021174 n

end A021174

/-!
# A021179: Decimal expansion of 1/175.

The programs for A021179, the canonical program `A021179.P9640181905789644497` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021179 has offset 0).

The definition of A021179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021179.P9640181905789644497

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=7, a(4)=1, a(5)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021179

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P9640181905789644497.Spec : Prop :=
  ∀ n, P9640181905789644497.a n = A021179 n

theorem P9640181905789644497.correct : P9640181905789644497.Spec := by
  intro n
  simp only [A021179]

end A021179

/-!
# A021180: Decimal expansion of 1/176.

The programs for A021180, the canonical program `A021180.P15208185130561396968` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021180 has offset 0).

The definition of A021180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021180.P15208185130561396968

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=6, a(4)=8, a(5)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021180

/-- `a(n-2)` -/
def P15208185130561396968.Spec : Prop :=
  ∀ n, (P15208185130561396968.a n : ℤ) = A021180 n

theorem P15208185130561396968.correct : P15208185130561396968.Spec := by
  intro n
  simp only [A021180]

end A021180

/-!
# A021182: Decimal expansion of 1/178.

The programs for A021182, there is no canonical definition to state claims against.
-/

/-! ## A021182.P15149081282210995836

`A021093(A028310(n)+8)`
-/

namespace A021182.P15149081282210995836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021093 (A028310 n + 8).toNat

end

end A021182.P15149081282210995836

/-!
# A021184: Expansion of 1/((1-x)*(1-2*x)*(1-6*x)*(1-8*x)).

The programs for A021184, the canonical program `A021184.P12059021720679907245` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021184 has offset 0).

The definition of A021184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021184.P12059021720679907245

`(10*8^(n+3)-21*6^(n+3)+35*2^(n+3)-24)/840`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021184

/-- `(10*8^(n+3)-21*6^(n+3)+35*2^(n+3)-24)/840` -/
def P12059021720679907245.Spec : Prop :=
  ∀ n, P12059021720679907245.a n = (A021184 n : ℚ)

end A021184

/-! ## A021184.P15656043087879299913

`∑[A016305(n)]`
-/

namespace A021184.P15656043087879299913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021184.P15656043087879299913

namespace A021184

/-- `∑[A016305(n)]` -/
def P15656043087879299913.Spec : Prop :=
  ∀ n, P15656043087879299913.a n = A021184 n

end A021184

/-! ## A021184.P17510448940782082076

`A016243(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021184.P17510448940782082076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016243 n + 2 * a (n - 1)

end

end A021184.P17510448940782082076

namespace A021184

/-- `A016243(n)+2*a(n-1)` -/
def P17510448940782082076.Spec : Prop :=
  ∀ n, P17510448940782082076.a n = A021184 n

end A021184

/-! ## A021184.P11008304055718014504

`A016200(n)+9*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A021184.P11008304055718014504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016200 n + 9 * a (n - 1) - a (n - 1)

end

end A021184.P11008304055718014504

namespace A021184

/-- `A016200(n)+9*a(n-1)-a(n-1)` -/
def P11008304055718014504.Spec : Prop :=
  ∀ n, P11008304055718014504.a n = A021184 n

end A021184

/-! ## A021184.P11549171157709226468

`∑[A000079(n)*A016208(n)]`
-/

namespace A021184.P11549171157709226468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021184.P11549171157709226468

namespace A021184

/-- `∑[A000079(n)*A016208(n)]` -/
def P11549171157709226468.Spec : Prop :=
  ∀ n, P11549171157709226468.a n = A021184 n

end A021184

/-!
# A021186: Decimal expansion of 1/182.

The programs for A021186, the canonical program `A021186.P7973352669346027` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021186 has offset 0).

The definition of A021186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021186.P7973352669346027

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021186

/-- `9-a(n-3)` -/
def P7973352669346027.Spec : Prop :=
  ∀ n, P7973352669346027.a n = A021186 n

theorem P7973352669346027.correct : P7973352669346027.Spec := by
  intro n
  simp only [A021186]

end A021186

/-!
# A021189: Decimal expansion of 1/185.

The programs for A021189, the canonical program `A021189.P12990513210301284531` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021189 has offset 0).

The definition of A021189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021189.P12990513210301284531

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021189

/-- `a(n-3)` -/
def P12990513210301284531.Spec : Prop :=
  ∀ n, (P12990513210301284531.a n : ℤ) = A021189 n

theorem P12990513210301284531.correct : P12990513210301284531.Spec := by
  intro n
  simp only [A021189]

end A021189

/-!
# A021193: Decimal expansion of 1/189.

The programs for A021193, the canonical program `A021193.P522082127870387411` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021193 has offset 0).

The definition of A021193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021193.P522082127870387411

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=2, a(4)=9, a(5)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021193

/-- `a(n-6)` -/
def P522082127870387411.Spec : Prop :=
  ∀ n, (P522082127870387411.a n : ℤ) = A021193 n

theorem P522082127870387411.correct : P522082127870387411.Spec := by
  intro n
  simp only [A021193]

end A021193

/-!
# A021194: Expansion of 1/((1-x)*(1-2*x)*(1-6*x)*(1-9*x)).

The programs for A021194, the canonical program `A021194.P11212070926629959612` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021194 has offset 0).

The definition of A021194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021194.P11212070926629959612

`(5*9^(n+3)-14*6^(n+3)+30*2^(n+3)-21)/840`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021194

/-- `(5*9^(n+3)-14*6^(n+3)+30*2^(n+3)-21)/840` -/
def P11212070926629959612.Spec : Prop :=
  ∀ n, P11212070926629959612.a n = (A021194 n : ℚ)

end A021194

/-! ## A021194.P1044062209075358400

`∑[A016306(n)]`
-/

namespace A021194.P1044062209075358400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021194.P1044062209075358400

namespace A021194

/-- `∑[A016306(n)]` -/
def P1044062209075358400.Spec : Prop :=
  ∀ n, P1044062209075358400.a n = A021194 n

end A021194

/-! ## A021194.P9133721462169550126

`A016244(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021194.P9133721462169550126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016244 n + 2 * a (n - 1)

end

end A021194.P9133721462169550126

namespace A021194

/-- `A016244(n)+2*a(n-1)` -/
def P9133721462169550126.Spec : Prop :=
  ∀ n, P9133721462169550126.a n = A021194 n

end A021194

/-! ## A021194.P6517859790735520695

`A016200(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A021194.P6517859790735520695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016200 n + 9 * a (n - 1)

end

end A021194.P6517859790735520695

namespace A021194

/-- `A016200(n)+9*a(n-1)` -/
def P6517859790735520695.Spec : Prop :=
  ∀ n, P6517859790735520695.a n = A021194 n

end A021194

/-! ## A021194.P18036394377494911946

`2*A021048(n)-A021029(n)`
-/

namespace A021194.P18036394377494911946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021048 n - A021029 n

end

end A021194.P18036394377494911946

namespace A021194

/-- `2*A021048(n)-A021029(n)` -/
def P18036394377494911946.Spec : Prop :=
  ∀ n, P18036394377494911946.a n = A021194 n

end A021194

/-! ## A021194.P16113047874501443796

`2*A021294(n)-A028000(n)`
-/

namespace A021194.P16113047874501443796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021294 n - A028000 n

end

end A021194.P16113047874501443796

namespace A021194

/-- `2*A021294(n)-A028000(n)` -/
def P16113047874501443796.Spec : Prop :=
  ∀ n, P16113047874501443796.a n = A021194 n

end A021194

/-! ## A021194.P13417756443198937682

`2*A021214(n)-A021304(n)`
-/

namespace A021194.P13417756443198937682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021214 n - A021304 n

end

end A021194.P13417756443198937682

namespace A021194

/-- `2*A021214(n)-A021304(n)` -/
def P13417756443198937682.Spec : Prop :=
  ∀ n, P13417756443198937682.a n = A021194 n

end A021194

/-!
# A021196: Decimal expansion of 1/192.

The programs for A021196, the canonical program `A021196.P830391857349579451` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021196 has offset 0).

The definition of A021196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021196.P830391857349579451

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=2, a(4)=0, a(5)=8, a(6)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021196

/-- `a(n-1)` -/
def P830391857349579451.Spec : Prop :=
  ∀ n, (P830391857349579451.a n : ℤ) = A021196 n

theorem P830391857349579451.correct : P830391857349579451.Spec := by
  intro n
  simp only [A021196]

end A021196

/-!
# A021199: Decimal expansion of 1/195.

The programs for A021199, the canonical program `A021199.P10756791010868104540` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021199 has offset 0).

The definition of A021199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021199.P10756791010868104540

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=5, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021199

/-- `9-(a(n-2)+a(n-4))` -/
def P10756791010868104540.Spec : Prop :=
  ∀ n, P10756791010868104540.a n = A021199 n

theorem P10756791010868104540.correct : P10756791010868104540.Spec := by
  intro n
  simp only [A021199]

end A021199

