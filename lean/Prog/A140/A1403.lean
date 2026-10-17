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
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A140300: a(n) = 1024^n.

The programs for A140300, the canonical program `A140300.P3961732963358043709` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140300 has offset 0).

The definition of A140300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140300.P3961732963358043709

`2^(10*n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140300

/-- `2^(10*n)` -/
def P3961732963358043709.Spec : Prop :=
  ∀ n, (P3961732963358043709.a n : ℤ) = A140300 n

theorem P3961732963358043709.correct : P3961732963358043709.Spec := by
  intro n
  simp only [A140300]

end A140300

/-!
# A140302: b(n)=A000749(n+1)-2*A000749(n)=0, 0, 1, 2, 2, 0, -4, -8, -8, = 0, A009545 and its three differences by columns on line.

The programs for A140302, there is no canonical definition to state claims against.
-/

/-! ## A140302.P6162969193794034531

`A137171(n+4)-A005843(A137171(n))`
-/

namespace A140302.P6162969193794034531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (n + 4) - A005843 (A137171 n).toNat

end

end A140302.P6162969193794034531

/-! ## A140302.P1170099336691496400

`A137171(A020705(n))-2*A137171(n)`
-/

namespace A140302.P1170099336691496400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A020705 n).toNat - 2 * A137171 n

end

end A140302.P1170099336691496400

/-! ## A140302.P16749362953756199419

`Δ[A326194(A217777(n+1))]`
-/

namespace A140302.P16749362953756199419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326194 (A217777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140302.P16749362953756199419

/-! ## A140302.P7166588742732778710

`Δ[A281461(n+4)%A281463(n+1)]`
-/

namespace A140302.P7166588742732778710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281461 (n + 4)) (A281463 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140302.P7166588742732778710

/-! ## A140302.P10059063052850611766

`Δ[A036584(A337632(A037019(n+1)))]`
-/

namespace A140302.P10059063052850611766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A337632 (A037019 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140302.P10059063052850611766

/-!
# A140303: Triangle T(n,k) = 3^(n-k) read by rows.

The programs for A140303, the canonical program `A140303.P5150997837901414989` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140303 has offset 0).

The definition of A140303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140303.P9870434391970819832

`3^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A140303.P9870434391970819832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A140303.P9870434391970819832

namespace A140303

/-- `3^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P9870434391970819832.Spec : Prop :=
  ∀ n, P9870434391970819832.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P3769227632723678696

`3^A025581(n)`
-/

namespace A140303.P3769227632723678696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025581 n : ℤ)

end

end A140303.P3769227632723678696

namespace A140303

/-- `3^A025581(n)` -/
def P3769227632723678696.Spec : Prop :=
  ∀ n, P3769227632723678696.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P586268690428800591

`3^log2(A130321(n))`
-/

namespace A140303.P586268690428800591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A130321 n : ℝ))

end

end A140303.P586268690428800591

namespace A140303

/-- `3^log2(A130321(n))` -/
def P586268690428800591.Spec : Prop :=
  ∀ n, P586268690428800591.a n = (A140303 n : ℝ)

end A140303

/-! ## A140303.P13152498058698778723

`3^sqrt(A095831(n+1))`
-/

namespace A140303.P13152498058698778723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.sqrt (A095831 (n + 1) : ℝ))

end

end A140303.P13152498058698778723

namespace A140303

/-- `3^sqrt(A095831(n+1))` -/
def P13152498058698778723.Spec : Prop :=
  ∀ n, P13152498058698778723.a n = (A140303 n : ℝ)

end A140303

/-! ## A140303.P1728851012569315313

`3^(A004736(n+1)-1)`
-/

namespace A140303.P1728851012569315313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A140303.P1728851012569315313

namespace A140303

/-- `3^(A004736(n+1)-1)` -/
def P1728851012569315313.Spec : Prop :=
  ∀ n, P1728851012569315313.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P1643284468792642482

`3^A057554(2*(n+1))`
-/

namespace A140303.P1643284468792642482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A057554 (2 * (n + 1)) : ℤ)

end

end A140303.P1643284468792642482

namespace A140303

/-- `3^A057554(2*(n+1))` -/
def P1643284468792642482.Spec : Prop :=
  ∀ n, P1643284468792642482.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P13574265302652326858

`3^(A127739(n+1)-(n+1))`
-/

namespace A140303.P13574265302652326858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A127739 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A140303.P13574265302652326858

namespace A140303

/-- `3^(A127739(n+1)-(n+1))` -/
def P13574265302652326858.Spec : Prop :=
  ∀ n, P13574265302652326858.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P2631880009668245489

`3^(A004202(n+1)%(n+1))`
-/

namespace A140303.P2631880009668245489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ) : ℤ)

end

end A140303.P2631880009668245489

namespace A140303

/-- `3^(A004202(n+1)%(n+1))` -/
def P2631880009668245489.Spec : Prop :=
  ∀ n, P2631880009668245489.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P1003671526401085183

`A000244(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A140303.P1003671526401085183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A140303.P1003671526401085183

namespace A140303

/-- `A000244(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P1003671526401085183.Spec : Prop :=
  ∀ n, P1003671526401085183.a n = A140303 n

end A140303

/-! ## A140303.P9892098883237189077

`3^(A000217(round(sqrt(2*n+1)))-(n+1))`
-/

namespace A140303.P9892098883237189077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ) : ℤ)

end

end A140303.P9892098883237189077

namespace A140303

/-- `3^(A000217(round(sqrt(2*n+1)))-(n+1))` -/
def P9892098883237189077.Spec : Prop :=
  ∀ n, P9892098883237189077.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P1266677395115145018

`3^(round(sqrt(2*n+1))-A002260(n+1))`
-/

namespace A140303.P1266677395115145018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1) : ℤ)

end

end A140303.P1266677395115145018

namespace A140303

/-- `3^(round(sqrt(2*n+1))-A002260(n+1))` -/
def P1266677395115145018.Spec : Prop :=
  ∀ n, P1266677395115145018.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P5150997837901414989

`A000244(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140303

/-- `A000244(A025581(n))` -/
def P5150997837901414989.Spec : Prop :=
  ∀ n, P5150997837901414989.a n = A140303 n

theorem P5150997837901414989.correct : P5150997837901414989.Spec := by
  intro n
  simp only [A140303]

end A140303

/-! ## A140303.P5236961633681339647

`A030439(A099375(n))`
-/

namespace A140303.P5236961633681339647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 (A099375 n).toNat

end

end A140303.P5236961633681339647

namespace A140303

/-- `A030439(A099375(n))` -/
def P5236961633681339647.Spec : Prop :=
  ∀ n, P5236961633681339647.a n = A140303 n

end A140303

/-! ## A140303.P99257085753067581

`A133494(A004736(n+1))`
-/

namespace A140303.P99257085753067581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A004736 (n + 1)).toNat

end

end A140303.P99257085753067581

namespace A140303

/-- `A133494(A004736(n+1))` -/
def P99257085753067581.Spec : Prop :=
  ∀ n, P99257085753067581.a n = A140303 n

end A140303

/-! ## A140303.P2679806484994898293

`A108411(A185782(n+1))`
-/

namespace A140303.P2679806484994898293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A185782 (n + 1)).toNat

end

end A140303.P2679806484994898293

namespace A140303

/-- `A108411(A185782(n+1))` -/
def P2679806484994898293.Spec : Prop :=
  ∀ n, P2679806484994898293.a n = A140303 n

end A140303

/-! ## A140303.P11975292136573737251

`A038754(2*A025581(n))`
-/

namespace A140303.P11975292136573737251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * A025581 n).toNat

end

end A140303.P11975292136573737251

namespace A140303

/-- `A038754(2*A025581(n))` -/
def P11975292136573737251.Spec : Prop :=
  ∀ n, P11975292136573737251.a n = A140303 n

end A140303

/-! ## A140303.P11800358635010116031

`A254006(2*A025581(n))`
-/

namespace A140303.P11800358635010116031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (2 * A025581 n).toNat

end

end A140303.P11800358635010116031

namespace A140303

/-- `A254006(2*A025581(n))` -/
def P11800358635010116031.Spec : Prop :=
  ∀ n, P11800358635010116031.a n = A140303 n

end A140303

/-! ## A140303.P11411378495808909271

`A000244(val(A036561(n), 2))`
-/

namespace A140303.P11411378495808909271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A140303.P11411378495808909271

namespace A140303

/-- `A000244(val(A036561(n), 2))` -/
def P11411378495808909271.Spec : Prop :=
  ∀ n, P11411378495808909271.a n = A140303 n

end A140303

/-! ## A140303.P15436220953122467408

`A027465(n)/A007318(n)`
-/

namespace A140303.P15436220953122467408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A007318 n : ℚ)

end

end A140303.P15436220953122467408

namespace A140303

/-- `A027465(n)/A007318(n)` -/
def P15436220953122467408.Spec : Prop :=
  ∀ n, P15436220953122467408.a n = (A140303 n : ℚ)

end A140303

/-! ## A140303.P3084089015977374389

`A038220(n)/A013609(n)`
-/

namespace A140303.P3084089015977374389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A013609 n : ℚ)

end

end A140303.P3084089015977374389

namespace A140303

/-- `A038220(n)/A013609(n)` -/
def P3084089015977374389.Spec : Prop :=
  ∀ n, P3084089015977374389.a n = (A140303 n : ℚ)

end A140303

/-!
# A140304: Number of n X n binary matrices with no more than one 1 in any 3 X 3 sub-block.

The programs for A140304, there is no canonical definition to state claims against.
-/

/-! ## A140304.P2991088594923452223

`∑[A300089(A007716(n))]`
-/

namespace A140304.P2991088594923452223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (A007716 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140304.P2991088594923452223

/-! ## A140304.P10463677498807854566

`A130981(A292809(n+1)+n)`
-/

namespace A140304.P10463677498807854566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A292809 (n + 1) + (n : ℤ)).toNat

end

end A140304.P10463677498807854566

/-!
# A140305: Number of n X n binary matrices containing no more than two 1s in any 3 X 3 sub-block.

The programs for A140305, there is no canonical definition to state claims against.
-/

/-! ## A140305.P10359272023113950400

`A091263(A322894(n+1))+A083007(n)`
-/

namespace A140305.P10359272023113950400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091263 (A322894 (n + 1)).toNat + A083007 n

end

end A140305.P10359272023113950400

/-!
# A140306: Number of n X n binary matrices containing at most three 1's in any 3 X 3 sub-block.

The programs for A140306, there is no canonical definition to state claims against.
-/

/-! ## A140306.P16059043315545480428

`A007310(A201511(n))*A324347(n)`
-/

namespace A140306.P16059043315545480428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A201511 n).toNat * A324347 n

end

end A140306.P16059043315545480428

/-!
# A140307: Number of n X n binary matrices containing at most four 1's in any 3 X 3 sub-block.

The programs for A140307, there is no canonical definition to state claims against.
-/

/-! ## A140307.P677996769309446267

`A006068(A319122(n+1))-A054925(n)`
-/

namespace A140307.P677996769309446267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A319122 (n + 1)).toNat - A054925 n

end

end A140307.P677996769309446267

/-!
# A140312: Number of distinct values of Product_{p is in P} (m(p,P)+1) where m(p,P) is the multiplicity of part p in partition P, when P ranges over all partitions of n.

The programs for A140312, there is no canonical definition to state claims against.
-/

/-! ## A140312.P16623303062441992304

`A337584(2*A154517(n+1))`
-/

namespace A140312.P16623303062441992304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337584 (2 * A154517 (n + 1)).toNat

end

end A140312.P16623303062441992304

/-! ## A140312.P10196012546349273241

`A088887(C(A034837(n+1), n))`
-/

namespace A140312.P10196012546349273241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088887 (Nat.choose (A034837 (n + 1)).toNat n)

end

end A140312.P10196012546349273241

/-! ## A140312.P18057596661035612707

`A088887(C(A135579(n+1), n))`
-/

namespace A140312.P18057596661035612707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088887 (Nat.choose (A135579 (n + 1)).toNat n)

end

end A140312.P18057596661035612707

/-! ## A140312.P548123034154729798

`A088887(n+1)%p?[A198277(n)]`
-/

namespace A140312.P548123034154729798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088887 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140312.P548123034154729798

/-! ## A140312.P2083590633462337787

`A088887(A129947(n+1)+n+1)`
-/

namespace A140312.P2083590633462337787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088887 (A129947 (n + 1) + (n + 1 : ℤ)).toNat

end

end A140312.P2083590633462337787

/-!
# A140313: First differences of A140298.

The programs for A140313, the canonical program `A140313.P14708941762040753786` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140313 has offset 0).

The definition of A140313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140313.P14708941762040753786

`A232801(xor(1, A102899(n)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140313

/-- `A232801(xor(1, A102899(n)))` -/
def P14708941762040753786.Spec : Prop :=
  ∀ n, P14708941762040753786.a n = A140313 n

theorem P14708941762040753786.correct : P14708941762040753786.Spec := by
  intro n
  simp only [A140313]

end A140313

/-! ## A140313.P6393313518040987881

`A232801(abs(1-A102899(n)))`
-/

namespace A140313.P6393313518040987881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 |1 - A102899 n|.toNat

end

end A140313.P6393313518040987881

namespace A140313

/-- `A232801(abs(1-A102899(n)))` -/
def P6393313518040987881.Spec : Prop :=
  ∀ n, P6393313518040987881.a n = A140313 n

end A140313

/-! ## A140313.P14339055674996592297

`A003462(A057979(A004396(n)))`
-/

namespace A140313.P14339055674996592297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A057979 (A004396 n).toNat).toNat

end

end A140313.P14339055674996592297

namespace A140313

/-- `A003462(A057979(A004396(n)))` -/
def P14339055674996592297.Spec : Prop :=
  ∀ n, P14339055674996592297.a n = A140313 n

end A140313

/-! ## A140313.P15603582353880477100

`A003462(A057979(A274616(n)))`
-/

namespace A140313.P15603582353880477100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A057979 (A274616 n).toNat).toNat

end

end A140313.P15603582353880477100

namespace A140313

/-- `A003462(A057979(A274616(n)))` -/
def P15603582353880477100.Spec : Prop :=
  ∀ n, P15603582353880477100.a n = A140313 n

end A140313

/-! ## A140313.P3616205538284490719

`A003462(A002264(n)^Δ[A004523(n)])`
-/

namespace A140313.P3616205538284490719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (SequenceMachineLib.roundAway ((A002264 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A140313.P3616205538284490719

namespace A140313

/-- `A003462(A002264(n)^Δ[A004523(n)])` -/
def P3616205538284490719.Spec : Prop :=
  ∀ n, P3616205538284490719.a n = A140313 n

end A140313

/-! ## A140313.P5214040708903368516

`A007051(A002264(n)^Δ[A004523(n)])-1`
-/

namespace A140313.P5214040708903368516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (SequenceMachineLib.roundAway ((A002264 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat - 1

end

end A140313.P5214040708903368516

namespace A140313

/-- `A007051(A002264(n)^Δ[A004523(n)])-1` -/
def P5214040708903368516.Spec : Prop :=
  ∀ n, P5214040708903368516.a n = A140313 n

end A140313

/-! ## A140313.P170069241014425262

`abs(A048328(A004396(n))-A127975(n))`
-/

namespace A140313.P170069241014425262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048328 (A004396 n).toNat - A127975 n|

end

end A140313.P170069241014425262

namespace A140313

/-- `abs(A048328(A004396(n))-A127975(n))` -/
def P170069241014425262.Spec : Prop :=
  ∀ n, P170069241014425262.a n = A140313 n

end A140313

/-! ## A140313.P13402394281683413988

`∑{d}[A034008(A087508(n)), A003959(#)]`
-/

namespace A140313.P13402394281683413988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A087508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003959 d

end

end A140313.P13402394281683413988

namespace A140313

/-- `∑{d}[A034008(A087508(n)), A003959(#)]` -/
def P13402394281683413988.Spec : Prop :=
  ∀ n, P13402394281683413988.a n = A140313 n

end A140313

/-!
# A140314: Number of n X n binary matrices containing no more than two 1's in any 2 X 2 subblock.

The programs for A140314, there is no canonical definition to state claims against.
-/

/-! ## A140314.P15718047710100667792

`record[A141504(n)]`
-/

namespace A140314.P15718047710100667792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140314.P15718047710100667792

/-! ## A140314.P15935401982965800097

`A141504(A004273(n))`
-/

namespace A140314.P15935401982965800097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141504 (A004273 n).toNat

end

end A140314.P15935401982965800097

/-! ## A140314.P7300362533835791713

`A141504(A253580(n²))`
-/

namespace A140314.P7300362533835791713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141504 (A253580 (n ^ 2)).toNat

end

end A140314.P7300362533835791713

/-! ## A140314.P7732883498238561626

`A141504(A004277(n)-1)`
-/

namespace A140314.P7732883498238561626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141504 (A004277 n - 1).toNat

end

end A140314.P7732883498238561626

/-! ## A140314.P502601655253478346

`A141504(lt[A141459(n), 2])`
-/

namespace A140314.P502601655253478346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141504 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A140314.P502601655253478346

/-!
# A140315: Numbers k such that k!/k#-1 and k!/k#+1 are a twin prime pair.

The programs for A140315, there is no canonical definition to state claims against.
-/

/-! ## A140315.P12324867593691423018

`A140293(∑[A007733(3*n+1)])`
-/

namespace A140315.P12324867593691423018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140293 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140315.P12324867593691423018

/-!
# A140316: Write n in base 3, delete 0's.

The programs for A140316, there is no canonical definition to state claims against.
-/

/-! ## A140316.P15216062252407924526

`A007089(A348706(n+1))`
-/

namespace A140316.P15216062252407924526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A348706 (n + 1)).toNat

end

end A140316.P15216062252407924526

/-! ## A140316.P10939607033216639865

`A004719(A007089(n+1))`
-/

namespace A140316.P10939607033216639865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A007089 (n + 1)).toNat

end

end A140316.P10939607033216639865

/-! ## A140316.P10354213251705022996

`A004719(eq[A054055(n)!, A054055(n)])`
-/

namespace A140316.P10354213251705022996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A054055 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140316.P10354213251705022996

/-! ## A140316.P6484847314255596418

`A004719(eq[A057427(n), A181061(n)])`
-/

namespace A140316.P6484847314255596418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A140316.P6484847314255596418

/-! ## A140316.P16933877856697301706

`A004719(eq[A057428(n)², A181061(n)])`
-/

namespace A140316.P16933877856697301706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A140316.P16933877856697301706

/-! ## A140316.P6015166094654429480

`A004719(eq[A057428(n)+2, A181061(n)])`
-/

namespace A140316.P6015166094654429480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A140316.P6015166094654429480

/-! ## A140316.P9490151821519322518

`A004719(eq[2, A181061(n)-A057428(n)])`
-/

namespace A140316.P9490151821519322518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140316.P9490151821519322518

/-!
# A140317: Smallest n-digit number divisible by n^2.

The programs for A140317, there is no canonical definition to state claims against.
-/

/-! ## A140317.P17500868433810126513

`A335024(or(10, 10^n-1))`
-/

namespace A140317.P17500868433810126513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (Int.lor 10 ((10 ^ n : ℤ) - 1)).toNat

end

end A140317.P17500868433810126513

/-!
# A140318: Period 18: repeat 0, 1, -1, 1, 0, -1, 1, -1, 0, 0, -1, 1, -1, 0, 1, -1, 1, 0.

The programs for A140318, the canonical program `A140318.P14291702275352180720` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140318 has offset 0).

The definition of A140318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140318.P14291702275352180720

`a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=1, a(4)=0, a(5)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140318

/-- `a(n-3)-a(n-6)` -/
def P14291702275352180720.Spec : Prop :=
  ∀ n, P14291702275352180720.a n = A140318 n

theorem P14291702275352180720.correct : P14291702275352180720.Spec := by
  intro n
  simp only [A140318]

end A140318

/-!
# A140320: a(n) = A137576((3^n-1)/2).

The programs for A140320, the canonical program `A140320.P9429960293437043341` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140320 has offset 0).

The definition of A140320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140320.P9429960293437043341

`3*a(n-1)+2*3^(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140320

/-- `3*a(n-1)+2*3^(n-1)-2` -/
def P9429960293437043341.Spec : Prop :=
  ∀ n, P9429960293437043341.a n = (A140320 n : ℚ)

end A140320

/-! ## A140320.P9038751031468231465

`A137576((3^n-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140320.P9038751031468231465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 (SequenceMachineLib.roundAway (((3 ^ n : ℤ) - 1 : ℚ) / 2)).toNat

end

end A140320.P9038751031468231465

namespace A140320

/-- `A137576((3^n-1)/2)` -/
def P9038751031468231465.Spec : Prop :=
  ∀ n, P9038751031468231465.a n = A140320 n

end A140320

/-! ## A140320.P3938582296839503434

`n*Δ[3^(n-1)]+1`
-/

namespace A140320.P3938582296839503434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (f1 (n + 1) - f1 n) + 1

end

end A140320.P3938582296839503434

namespace A140320

/-- `n*Δ[3^(n-1)]+1` -/
def P3938582296839503434.Spec : Prop :=
  ∀ n, P3938582296839503434.a n = (A140320 n : ℚ)

end A140320

/-! ## A140320.P15376243013577667425

`or(1, n*Δ[3^(n-1)])`
-/

namespace A140320.P15376243013577667425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((n : ℚ) * (f1 (n + 1) - f1 n)))

end

end A140320.P15376243013577667425

namespace A140320

/-- `or(1, n*Δ[3^(n-1)])` -/
def P15376243013577667425.Spec : Prop :=
  ∀ n, P15376243013577667425.a n = A140320 n

end A140320

/-! ## A140320.P117318166431773623

`xor(1, n*Δ[3^(n-1)])`
-/

namespace A140320.P117318166431773623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((n : ℚ) * (f1 (n + 1) - f1 n)))

end

end A140320.P117318166431773623

namespace A140320

/-- `xor(1, n*Δ[3^(n-1)])` -/
def P117318166431773623.Spec : Prop :=
  ∀ n, P117318166431773623.a n = A140320 n

end A140320

/-! ## A140320.P16305843844510169775

`(n*lcm(2, 3^n)+3)/3`
-/

namespace A140320.P16305843844510169775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.lcm 2 (3 ^ n) + 3 : ℚ) / 3

end

end A140320.P16305843844510169775

namespace A140320

/-- `(n*lcm(2, 3^n)+3)/3` -/
def P16305843844510169775.Spec : Prop :=
  ∀ n, P16305843844510169775.a n = (A140320 n : ℚ)

end A140320

/-! ## A140320.P11088734723318514330

`(A230540(n)+A000244(n))/A000244(n)`
-/

namespace A140320.P11088734723318514330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230540 n + A000244 n : ℚ) / (A000244 n : ℚ)

end

end A140320.P11088734723318514330

namespace A140320

/-- `(A230540(n)+A000244(n))/A000244(n)` -/
def P11088734723318514330.Spec : Prop :=
  ∀ n, P11088734723318514330.a n = (A140320 n : ℚ)

end A140320

/-!
# A140322: a(n) = -1/6 + (-1)^n/2 + 2*4^n/3.

The programs for A140322, the canonical program `A140322.P13323243155975956851` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140322 has offset 0).

The definition of A140322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140322.P13323243155975956851

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140322

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P13323243155975956851.Spec : Prop :=
  ∀ n, P13323243155975956851.a n = A140322 n

theorem P13323243155975956851.correct : P13323243155975956851.Spec := by
  intro n
  simp only [A140322]

end A140322

/-! ## A140322.P214870251785147788

`∑[ceil(4^n/2)]-n%2`
-/

namespace A140322.P214870251785147788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 2 : ℕ) : ℤ)

end

end A140322.P214870251785147788

namespace A140322

/-- `∑[ceil(4^n/2)]-n%2` -/
def P214870251785147788.Spec : Prop :=
  ∀ n, P214870251785147788.a n = A140322 n

end A140322

/-! ## A140322.P10032955481598409134

`∑[floor(4^n/2)]+log2(gcd(2, n))`
-/

namespace A140322.P10032955481598409134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A140322.P10032955481598409134

namespace A140322

/-- `∑[floor(4^n/2)]+log2(gcd(2, n))` -/
def P10032955481598409134.Spec : Prop :=
  ∀ n, P10032955481598409134.a n = (A140322 n : ℝ)

end A140322

/-! ## A140322.P11743608303953638117

`char[2*n]+∑[floor(4^n/2)]`
-/

namespace A140322.P11743608303953638117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A140322.P11743608303953638117

namespace A140322

/-- `char[2*n]+∑[floor(4^n/2)]` -/
def P11743608303953638117.Spec : Prop :=
  ∀ n, P11743608303953638117.a n = A140322 n

end A140322

/-! ## A140322.P13780429641846468007

`xor(1, a(n-1)+4^n/2)` with `a(0)=1`
-/

namespace A140322.P13780429641846468007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (4 ^ n : ℚ) / 2))

end

end A140322.P13780429641846468007

namespace A140322

/-- `xor(1, a(n-1)+4^n/2)` -/
def P13780429641846468007.Spec : Prop :=
  ∀ n, P13780429641846468007.a n = A140322 n

end A140322

/-! ## A140322.P4189443239285047069

`xor(n%2, A007583(n))`
-/

namespace A140322.P4189443239285047069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A007583 n)

end

end A140322.P4189443239285047069

namespace A140322

/-- `xor(n%2, A007583(n))` -/
def P4189443239285047069.Spec : Prop :=
  ∀ n, P4189443239285047069.a n = A140322 n

end A140322

/-! ## A140322.P4693255757306483971

`ceil(A020988(n)+log2(gcd(2, n)))`
-/

namespace A140322.P4693255757306483971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020988 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)⌉

end

end A140322.P4693255757306483971

namespace A140322

/-- `ceil(A020988(n)+log2(gcd(2, n)))` -/
def P4693255757306483971.Spec : Prop :=
  ∀ n, P4693255757306483971.a n = A140322 n

end A140322

/-! ## A140322.P17742643624860717356

`record[A084247(n)-val(or(4, n+1), 2)]`
-/

namespace A140322.P17742643624860717356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n - (SequenceMachineLib.valuation (Nat.lor 4 (n + 1)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140322.P17742643624860717356

namespace A140322

/-- `record[A084247(n)-val(or(4, n+1), 2)]` -/
def P17742643624860717356.Spec : Prop :=
  ∀ n, P17742643624860717356.a n = A140322 n

end A140322

/-! ## A140322.P10499800248179431650

`A133684(comp[or(2, n)-1]+2*(n+1))`
-/

namespace A140322.P10499800248179431650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * (n + 1))

end

end A140322.P10499800248179431650

namespace A140322

/-- `A133684(comp[or(2, n)-1]+2*(n+1))` -/
def P10499800248179431650.Spec : Prop :=
  ∀ n, P10499800248179431650.a n = A140322 n

end A140322

/-! ## A140322.P12934281248813377760

`A133684(A047524(n+1))`
-/

namespace A140322.P12934281248813377760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047524 (n + 1)).toNat

end

end A140322.P12934281248813377760

namespace A140322

/-- `A133684(A047524(n+1))` -/
def P12934281248813377760.Spec : Prop :=
  ∀ n, P12934281248813377760.a n = A140322 n

end A140322

/-! ## A140322.P15424887581299083332

`A193652(A042963(n+1))`
-/

namespace A140322.P15424887581299083332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 (A042963 (n + 1)).toNat

end

end A140322.P15424887581299083332

namespace A140322

/-- `A193652(A042963(n+1))` -/
def P15424887581299083332.Spec : Prop :=
  ∀ n, P15424887581299083332.a n = A140322 n

end A140322

/-! ## A140322.P4838385322674478020

`and(A007583(n), A126019(n))`
-/

namespace A140322.P4838385322674478020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007583 n) (A126019 n)

end

end A140322.P4838385322674478020

namespace A140322

/-- `and(A007583(n), A126019(n))` -/
def P4838385322674478020.Spec : Prop :=
  ∀ n, P4838385322674478020.a n = A140322 n

end A140322

/-! ## A140322.P11468506429103770866

`xor(A000035(n), A007583(n))`
-/

namespace A140322.P11468506429103770866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A007583 n)

end

end A140322.P11468506429103770866

namespace A140322

/-- `xor(A000035(n), A007583(n))` -/
def P11468506429103770866.Spec : Prop :=
  ∀ n, P11468506429103770866.a n = A140322 n

end A140322

/-! ## A140322.P4476353773544753628

`xor(A020988(n), A059841(n))`
-/

namespace A140322.P4476353773544753628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020988 n) (A059841 n)

end

end A140322.P4476353773544753628

namespace A140322

/-- `xor(A020988(n), A059841(n))` -/
def P4476353773544753628.Spec : Prop :=
  ∀ n, P4476353773544753628.a n = A140322 n

end A140322

/-! ## A140322.P12693481582636897859

`or(A000034(n), A000975(2*n))`
-/

namespace A140322.P12693481582636897859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A000975 (2 * n))

end

end A140322.P12693481582636897859

namespace A140322

/-- `or(A000034(n), A000975(2*n))` -/
def P12693481582636897859.Spec : Prop :=
  ∀ n, P12693481582636897859.a n = A140322 n

end A140322

/-! ## A140322.P17781635474306742283

`or(A000975(2*n), A134187(A020639(n+1)))`
-/

namespace A140322.P17781635474306742283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 (2 * n)) (A134187 (A020639 (n + 1)).toNat)

end

end A140322.P17781635474306742283

namespace A140322

/-- `or(A000975(2*n), A134187(A020639(n+1)))` -/
def P17781635474306742283.Spec : Prop :=
  ∀ n, P17781635474306742283.a n = A140322 n

end A140322

/-! ## A140322.P10167767856661514854

`A139763(Δ[n²])/2`
-/

namespace A140322.P10167767856661514854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139763 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A140322.P10167767856661514854

namespace A140322

/-- `A139763(Δ[n²])/2` -/
def P10167767856661514854.Spec : Prop :=
  ∀ n, P10167767856661514854.a n = (A140322 n : ℚ)

end A140322

/-! ## A140322.P2951384575216680234

`∪[A020988(2*n+1), A007583(2*n)]`
-/

namespace A140322.P2951384575216680234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140322.P2951384575216680234

namespace A140322

/-- `∪[A020988(2*n+1), A007583(2*n)]` -/
def P2951384575216680234.Spec : Prop :=
  ∀ n, (P2951384575216680234.a n : ℤ) = A140322 n

end A140322

/-! ## A140322.P14330534532298346304

`∪[A020988(2*n+1), A020988(2*n)+1]`
-/

namespace A140322.P14330534532298346304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (2 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140322.P14330534532298346304

namespace A140322

/-- `∪[A020988(2*n+1), A020988(2*n)+1]` -/
def P14330534532298346304.Spec : Prop :=
  ∀ n, (P14330534532298346304.a n : ℤ) = A140322 n

end A140322

/-!
# A140323: First differences of A140322.

The programs for A140323, the canonical program `A140323.P1828472889089173478` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140323 has offset 1).

The definition of A140323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140323.P1828472889089173478

`2*4^n-(-1)^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140323

/-- `2*4^n-(-1)^n` -/
def P1828472889089173478.Spec : Prop :=
  ∀ n, P1828472889089173478.a n = A140323 (n + 1)

theorem P1828472889089173478.correct : P1828472889089173478.Spec := by
  intro n
  simp only [A140323, Nat.add_sub_cancel]

end A140323

/-! ## A140323.P7313703126958846146

`Δ[3*a(n-1)+4*a(n-2)+1]` with `a(0)=1, a(1)=2`
-/

namespace A140323.P7313703126958846146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1) + (4 * f1 (n - 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140323.P7313703126958846146

namespace A140323

/-- `Δ[3*a(n-1)+4*a(n-2)+1]` -/
def P7313703126958846146.Spec : Prop :=
  ∀ n, P7313703126958846146.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P4503923052765759323

`Δ[A140322(n)]`
-/

namespace A140323.P4503923052765759323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140323.P4503923052765759323

namespace A140323

/-- `Δ[A140322(n)]` -/
def P4503923052765759323.Spec : Prop :=
  ∀ n, P4503923052765759323.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P10428858217910924816

`A007679(2*(n+1))`
-/

namespace A140323.P10428858217910924816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (2 * (n + 1))

end

end A140323.P10428858217910924816

namespace A140323

/-- `A007679(2*(n+1))` -/
def P10428858217910924816.Spec : Prop :=
  ∀ n, P10428858217910924816.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P13358384557590177792

`record[abs(A321632(2*n))]`
-/

namespace A140323.P13358384557590177792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321632 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140323.P13358384557590177792

namespace A140323

/-- `record[abs(A321632(2*n))]` -/
def P13358384557590177792.Spec : Prop :=
  ∀ n, P13358384557590177792.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P4125343852827028848

`record[A282453(n)+and(2, n)]`
-/

namespace A140323.P4125343852827028848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282453 n + (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140323.P4125343852827028848

namespace A140323

/-- `record[A282453(n)+and(2, n)]` -/
def P4125343852827028848.Spec : Prop :=
  ∀ n, P4125343852827028848.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P15001978418258200830

`record[abs(1-A009545(2*n))]`
-/

namespace A140323.P15001978418258200830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A009545 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140323.P15001978418258200830

namespace A140323

/-- `record[abs(1-A009545(2*n))]` -/
def P15001978418258200830.Spec : Prop :=
  ∀ n, P15001978418258200830.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P364288861516382387

`record[abs(1-A099087(2*n+1))]`
-/

namespace A140323.P364288861516382387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A099087 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140323.P364288861516382387

namespace A140323

/-- `record[abs(1-A099087(2*n+1))]` -/
def P364288861516382387.Spec : Prop :=
  ∀ n, P364288861516382387.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P14349581830083991442

`Δ[A059841(n)+∑[4^n/2]]`
-/

namespace A140323.P14349581830083991442
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059841 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140323.P14349581830083991442

namespace A140323

/-- `Δ[A059841(n)+∑[4^n/2]]` -/
def P14349581830083991442.Spec : Prop :=
  ∀ n, P14349581830083991442.a n = (A140323 (n + 1) : ℚ)

end A140323

/-! ## A140323.P8722370910203840601

`A086341(A047615(n+1))`
-/

namespace A140323.P8722370910203840601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 (A047615 (n + 1)).toNat

end

end A140323.P8722370910203840601

namespace A140323

/-- `A086341(A047615(n+1))` -/
def P8722370910203840601.Spec : Prop :=
  ∀ n, P8722370910203840601.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P9596926754311854082

`A140407(A047521(n+1))`
-/

namespace A140323.P9596926754311854082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (A047521 (n + 1)).toNat

end

end A140323.P9596926754311854082

namespace A140323

/-- `A140407(A047521(n+1))` -/
def P9596926754311854082.Spec : Prop :=
  ∀ n, P9596926754311854082.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P8958071670928156419

`A321632(A047398(n+1))`
-/

namespace A140323.P8958071670928156419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321632 (A047398 (n + 1)).toNat

end

end A140323.P8958071670928156419

namespace A140323

/-- `A321632(A047398(n+1))` -/
def P8958071670928156419.Spec : Prop :=
  ∀ n, P8958071670928156419.a n = A140323 (n + 1)

end A140323

/-! ## A140323.P8891358291078088017

`A086341(A047524(n+1)-2)`
-/

namespace A140323.P8891358291078088017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086341 (A047524 (n + 1) - 2).toNat

end

end A140323.P8891358291078088017

namespace A140323

/-- `A086341(A047524(n+1)-2)` -/
def P8891358291078088017.Spec : Prop :=
  ∀ n, P8891358291078088017.a n = A140323 (n + 1)

end A140323

/-!
# A140325: a(n) = binomial(n+8,8) * 2^n.

The programs for A140325, the canonical program `A140325.P11346817253485623384` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140325 has offset 0).

The definition of A140325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140325.P11346817253485623384

`2^n*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140325

/-- `2^n*C(n+8, 8)` -/
def P11346817253485623384.Spec : Prop :=
  ∀ n, (P11346817253485623384.a n : ℤ) = A140325 n

theorem P11346817253485623384.correct : P11346817253485623384.Spec := by
  intro n
  simp only [A140325]

end A140325

/-! ## A140325.P1587957186258659642

`(16/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A140325.P1587957186258659642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 / (n : ℚ) + 2) * a (n - 1)

end

end A140325.P1587957186258659642

namespace A140325

/-- `(16/n+2)*a(n-1)` -/
def P1587957186258659642.Spec : Prop :=
  ∀ n, P1587957186258659642.a n = (A140325 n : ℚ)

end A140325

/-! ## A140325.P12425619696334995230

`2^n*A000581(n+8)`
-/

namespace A140325.P12425619696334995230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000581 (n + 8)

end

end A140325.P12425619696334995230

namespace A140325

/-- `2^n*A000581(n+8)` -/
def P12425619696334995230.Spec : Prop :=
  ∀ n, P12425619696334995230.a n = A140325 n

end A140325

/-! ## A140325.P14819690204803711566

`2^n*∑[A000580(n+7)]`
-/

namespace A140325.P14819690204803711566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140325.P14819690204803711566

namespace A140325

/-- `2^n*∑[A000580(n+7)]` -/
def P14819690204803711566.Spec : Prop :=
  ∀ n, P14819690204803711566.a n = A140325 n

end A140325

/-! ## A140325.P17951669451683933422

`2*a(n-1)+A054851(n+7)` with `a(0)=1`
-/

namespace A140325.P17951669451683933422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A054851 (n + 7)

end

end A140325.P17951669451683933422

namespace A140325

/-- `2*a(n-1)+A054851(n+7)` -/
def P17951669451683933422.Spec : Prop :=
  ∀ n, P17951669451683933422.a n = A140325 n

end A140325

/-! ## A140325.P8176973346098536139

`∑[A000580(n+7)]*A000079(n)`
-/

namespace A140325.P8176973346098536139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A140325.P8176973346098536139

namespace A140325

/-- `∑[A000580(n+7)]*A000079(n)` -/
def P8176973346098536139.Spec : Prop :=
  ∀ n, P8176973346098536139.a n = A140325 n

end A140325

/-! ## A140325.P9307989639249433566

`A000581(n+8)*A011782(n+1)`
-/

namespace A140325.P9307989639249433566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A011782 (n + 1)

end

end A140325.P9307989639249433566

namespace A140325

/-- `A000581(n+8)*A011782(n+1)` -/
def P9307989639249433566.Spec : Prop :=
  ∀ n, P9307989639249433566.a n = A140325 n

end A140325

/-! ## A140325.P3894456186351227696

`A000581(n+8)*A131577(n+1)`
-/

namespace A140325.P3894456186351227696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A131577 (n + 1)

end

end A140325.P3894456186351227696

namespace A140325

/-- `A000581(n+8)*A131577(n+1)` -/
def P3894456186351227696.Spec : Prop :=
  ∀ n, P3894456186351227696.a n = A140325 n

end A140325

/-! ## A140325.P10407632963847255945

`A056122(n)/A017077(n+1)*A005010(n)`
-/

namespace A140325.P10407632963847255945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056122 n : ℚ) / (A017077 (n + 1) : ℚ) * (A005010 n : ℚ)

end

end A140325.P10407632963847255945

namespace A140325

/-- `A056122(n)/A017077(n+1)*A005010(n)` -/
def P10407632963847255945.Spec : Prop :=
  ∀ n, P10407632963847255945.a n = (A140325 n : ℚ)

end A140325

/-! ## A140325.P10748792179819153818

`A054339(n)/A000079(n)`
-/

namespace A140325.P10748792179819153818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054339 n : ℚ) / (A000079 n : ℚ)

end

end A140325.P10748792179819153818

namespace A140325

/-- `A054339(n)/A000079(n)` -/
def P10748792179819153818.Spec : Prop :=
  ∀ n, P10748792179819153818.a n = (A140325 n : ℚ)

end A140325

/-! ## A140325.P16523565835074083003

`A054339(n)/(A000051(n)-1)`
-/

namespace A140325.P16523565835074083003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054339 n : ℚ) / (A000051 n - 1 : ℚ)

end

end A140325.P16523565835074083003

namespace A140325

/-- `A054339(n)/(A000051(n)-1)` -/
def P16523565835074083003.Spec : Prop :=
  ∀ n, P16523565835074083003.a n = (A140325 n : ℚ)

end A140325

/-! ## A140325.P7982210236619236833

`A172501(n)/3^n`
-/

namespace A140325.P7982210236619236833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172501 n : ℚ) / (3 ^ n : ℚ)

end

end A140325.P7982210236619236833

namespace A140325

/-- `A172501(n)/3^n` -/
def P7982210236619236833.Spec : Prop :=
  ∀ n, P7982210236619236833.a n = (A140325 n : ℚ)

end A140325

/-!
# A140327: a(0)=1. For n >=1, a(n) is the smallest prime that is > a(n-1) and equals n*k -1, for some positive integer k.

The programs for A140327, there is no canonical definition to state claims against.
-/

/-! ## A140327.P7392127694840641665

`record[A039634(n+1)-A114401(n)]`
-/

namespace A140327.P7392127694840641665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (n + 1) - A114401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140327.P7392127694840641665

/-! ## A140327.P9714377934221823752

`eq[gcd(7, A242421(n+1)), A072491(n)]`
-/

namespace A140327.P9714377934221823752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A242421 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140327.P9714377934221823752

/-! ## A140327.P13524127703468935919

`record[A014963(A050969(n+1)%(2*(n+1)+1))]`
-/

namespace A140327.P13524127703468935919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A050969 (n + 1)) (2 * (n + 1) + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140327.P13524127703468935919

/-! ## A140327.P4428299982456370836

`record[A063918(A373272(n+1))]`
-/

namespace A140327.P4428299982456370836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A373272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140327.P4428299982456370836

/-! ## A140327.P3706592217596827912

`∩[A060471(n+1), A316504(n+1)]`
-/

namespace A140327.P3706592217596827912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140327.P3706592217596827912

/-!
# A140328: Sum of two squares of Lucas numbers (A000032).

The programs for A140328, there is no canonical definition to state claims against.
-/

/-! ## A140328.P12762270979330880378

`record[A070216(A255054(n))]`
-/

namespace A140328.P12762270979330880378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (A255054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140328.P12762270979330880378

/-! ## A140328.P4610098061876377670

`lt[A036849(n+1), A037214(n)]`
-/

namespace A140328.P4610098061876377670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140328.P4610098061876377670

/-! ## A140328.P1266295780891263689

`A025284(∑[A000670(C(n, 9)+1)])`
-/

namespace A140328.P1266295780891263689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (Nat.choose n 9 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140328.P1266295780891263689

/-! ## A140328.P3966842811391407679

`∩[∑[A329314(3*n+1)], A000404(n+1)]`
-/

namespace A140328.P3966842811391407679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A140328.P3966842811391407679

/-! ## A140328.P18377550435525936891

`eq[A009204(A079688(n)), A025426(n)]`
-/

namespace A140328.P18377550435525936891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009204 (A079688 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140328.P18377550435525936891

/-!
# A140330: Smallest nonprime with Hamming weight n (i.e., with exactly n 1's when written in binary).

The programs for A140330, there is no canonical definition to state claims against.
-/

/-! ## A140330.P16146791269137102121

`gcd(floor(acot(n)), A089226(n+1))`
-/

namespace A140330.P16146791269137102121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A089226 (n + 1))

end

end A140330.P16146791269137102121

/-! ## A140330.P14102364153799894241

`A089226(n+1)%A000917(n)`
-/

namespace A140330.P14102364153799894241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089226 (n + 1)) (A000917 n)

end

end A140330.P14102364153799894241

/-! ## A140330.P9592931290435573116

`gcd(A088157(n), A089226(n+1))`
-/

namespace A140330.P9592931290435573116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088157 n) (A089226 (n + 1))

end

end A140330.P9592931290435573116

/-! ## A140330.P8167286426577719949

`A089226(n+1)/(A000007(n)+1)²`
-/

namespace A140330.P8167286426577719949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089226 (n + 1) : ℚ) / ((A000007 n + 1) ^ 2 : ℚ)

end

end A140330.P8167286426577719949

/-! ## A140330.P3574148429362591852

`A089226(n+1)^(A023302(n+1)%2)`
-/

namespace A140330.P3574148429362591852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089226 (n + 1) : ℚ) ^ (Int.tmod (A023302 (n + 1)) 2 : ℤ)

end

end A140330.P3574148429362591852

/-!
# A140331: Smallest k such that 3^(3^n) - k is prime.

The programs for A140331, there is no canonical definition to state claims against.
-/

/-! ## A140331.P11516923124650838516

`A013604(3^n)`
-/

namespace A140331.P11516923124650838516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (3 ^ n)

end

end A140331.P11516923124650838516

/-! ## A140331.P8494704706431188976

`and(-1, A013604(A000244(n)))`
-/

namespace A140331.P8494704706431188976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A013604 (A000244 n).toNat)

end

end A140331.P8494704706431188976

/-! ## A140331.P1594075460024300877

`A013604(A000244(n))*A245013(n)`
-/

namespace A140331.P1594075460024300877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (A000244 n).toNat * A245013 n

end

end A140331.P1594075460024300877

/-!
# A140332: Products of two palindromes in base 10.

The programs for A140332, there is no canonical definition to state claims against.
-/

/-! ## A140332.P899584030321746148

`∪[A002113(n+1), A115683(n+1)]`
-/

namespace A140332.P899584030321746148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140332.P899584030321746148

/-! ## A140332.P5670386104925545399

`∪[A002113(n+1), A141322(n+1)]`
-/

namespace A140332.P5670386104925545399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140332.P5670386104925545399

/-! ## A140332.P10394841202218173332

`A118759(A368955(n+1))`
-/

namespace A140332.P10394841202218173332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A368955 (n + 1)).toNat

end

end A140332.P10394841202218173332

/-! ## A140332.P2277757239219423337

`A368955(n+1)%A339992(n+1)`
-/

namespace A140332.P2277757239219423337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368955 (n + 1)) (A339992 (n + 1))

end

end A140332.P2277757239219423337

/-! ## A140332.P10137906548647679282

`and(A368955(n+1), A387410(n+1))`
-/

namespace A140332.P10137906548647679282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368955 (n + 1)) (A387410 (n + 1))

end

end A140332.P10137906548647679282

/-!
# A140335: Smallest number greater than a(n-1) that, when adding the reciprocals of all the terms up to it, the sum is <= 3.

The programs for A140335, there is no canonical definition to state claims against.
-/

/-! ## A140335.P9936364049528728829

`∑[A080632(A309659(n))]`
-/

namespace A140335.P9936364049528728829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080632 (A309659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140335.P9936364049528728829

/-! ## A140335.P6538002764322207160

`∑[A191145(A309864(n))]`
-/

namespace A140335.P6538002764322207160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191145 (A309864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140335.P6538002764322207160

/-! ## A140335.P12336968995264275112

`∑[A001651(A309864(n)²)]`
-/

namespace A140335.P12336968995264275112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A309864 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140335.P12336968995264275112

/-! ## A140335.P471394908263506664

`∑[A003159(A309864(n)²)]`
-/

namespace A140335.P471394908263506664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A309864 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140335.P471394908263506664

/-! ## A140335.P1375109951261077363

`∑[A189633(A309864(n)²)]`
-/

namespace A140335.P1375109951261077363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (A309864 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140335.P1375109951261077363

/-!
# A140336: Half the number of n X n binary matrices differing in at most one position between adjacent rows and at most one position between adjacent columns.

The programs for A140336, there is no canonical definition to state claims against.
-/

/-! ## A140336.P8442379187983079374

`∑[floor(sqrt(A330146((n+3)*(n+1))))+n]`
-/

namespace A140336.P8442379187983079374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A330146 ((n + 3) * (n + 1))) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140336.P8442379187983079374

/-! ## A140336.P1835521289620908885

`A371156(A299589(n+2))`
-/

namespace A140336.P1835521289620908885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371156 (A299589 (n + 2)).toNat

end

end A140336.P1835521289620908885

/-!
# A140340: Square array read by rows: T(n,k) = 19*n^2+10*k^2-(n-1)*(20*(k-1)+10), with 14 columns.

The programs for A140340, there is no canonical definition to state claims against.
-/

/-! ## A140340.P6448281613150538666

`p?[∏{d}[A140754(n+1), #]]`
-/

namespace A140340.P6448281613150538666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140340.P6448281613150538666

/-! ## A140340.P11946186696735464378

`A140754(A077168(n))`
-/

namespace A140340.P11946186696735464378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (A077168 n).toNat

end

end A140340.P11946186696735464378

/-! ## A140340.P5292255634992155832

`A140754(A043319(n+1))`
-/

namespace A140340.P5292255634992155832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (A043319 (n + 1)).toNat

end

end A140340.P5292255634992155832

/-! ## A140340.P14048887765021066926

`A140754(A044916(n+1))`
-/

namespace A140340.P14048887765021066926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (A044916 (n + 1)).toNat

end

end A140340.P14048887765021066926

/-! ## A140340.P7123298852993417783

`A140754(A065672(n+1))`
-/

namespace A140340.P7123298852993417783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (A065672 (n + 1)).toNat

end

end A140340.P7123298852993417783

/-!
# A140341: The number of bits needed to write the universal code for an Elias delta coding, the simplest asymptotically optimal code.

The programs for A140341, the canonical program `A140341.P3573548250837569440` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140341 has offset 1).

The definition of A140341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140341.P6276138083422024531

`∑{digits}[A281150(n+1), #!]`
-/

namespace A140341.P6276138083422024531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A140341.P6276138083422024531

namespace A140341

/-- `∑{digits}[A281150(n+1), #!]` -/
def P6276138083422024531.Spec : Prop :=
  ∀ n, (P6276138083422024531.a n : ℤ) = A140341 (n + 1)

end A140341

/-! ## A140341.P14172744418509608546

`∑{digits}[A281150(n+1), A000041(#)]`
-/

namespace A140341.P14172744418509608546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 x).sum

end

end A140341.P14172744418509608546

namespace A140341

/-- `∑{digits}[A281150(n+1), A000041(#)]` -/
def P14172744418509608546.Spec : Prop :=
  ∀ n, P14172744418509608546.a n = A140341 (n + 1)

end A140341

/-! ## A140341.P6076198893305933939

`∑{digits}[A281150(n+1), A000108(#)]`
-/

namespace A140341.P6076198893305933939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000108 x).sum

end

end A140341.P6076198893305933939

namespace A140341

/-- `∑{digits}[A281150(n+1), A000108(#)]` -/
def P6076198893305933939.Spec : Prop :=
  ∀ n, P6076198893305933939.a n = A140341 (n + 1)

end A140341

/-! ## A140341.P16424138713516068430

`∑{digits}[A281150(n+1), A007318(#)]`
-/

namespace A140341.P16424138713516068430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 x).sum

end

end A140341.P16424138713516068430

namespace A140341

/-- `∑{digits}[A281150(n+1), A007318(#)]` -/
def P16424138713516068430.Spec : Prop :=
  ∀ n, P16424138713516068430.a n = A140341 (n + 1)

end A140341

/-! ## A140341.P10969259547509851242

`∑[or(A209229(n+1), A255309(2*(n+1)))]`
-/

namespace A140341.P10969259547509851242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 (n + 1)) (A255309 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140341.P10969259547509851242

namespace A140341

/-- `∑[or(A209229(n+1), A255309(2*(n+1)))]` -/
def P10969259547509851242.Spec : Prop :=
  ∀ n, P10969259547509851242.a n = A140341 (n + 1)

end A140341

/-! ## A140341.P3573548250837569440

`A005843(A000523(A000523(n+1)+1))+A000523(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140341

/-- `A005843(A000523(A000523(n+1)+1))+A000523(n+1)+1` -/
def P3573548250837569440.Spec : Prop :=
  ∀ n, P3573548250837569440.a n = A140341 (n + 1)

theorem P3573548250837569440.correct : P3573548250837569440.Spec := by
  intro n
  simp only [A140341, Nat.add_sub_cancel]

end A140341

/-!
# A140342: a(n)=5a(n-1)-11a(n-2)+13a(n-3)-9a(n-4)+3a(n-5)-a(n-6).

The programs for A140342, there is no canonical definition to state claims against.
-/

/-! ## A140342.P14649621072394182650

`Δ[A290994(n)]-A290994(n)`
-/

namespace A140342.P14649621072394182650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A290994 n

end

end A140342.P14649621072394182650

/-! ## A140342.P16939313542127240693

`A290994(n+1)-2*A290994(n)`
-/

namespace A140342.P16939313542127240693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290994 (n + 1) - 2 * A290994 n

end

end A140342.P16939313542127240693

/-! ## A140342.P14833060995405850136

`A290994(-xor(n, -1))-A290994(n)-A290994(n)`
-/

namespace A140342.P14833060995405850136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290994 (-Int.xor (n : ℤ) (-1)).toNat - A290994 n - A290994 n

end

end A140342.P14833060995405850136

/-! ## A140342.P17247724430895290226

`A290994(A000027(n+1))-A290994(n)-A290994(n)`
-/

namespace A140342.P17247724430895290226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290994 (A000027 (n + 1)).toNat - A290994 n - A290994 n

end

end A140342.P17247724430895290226

/-! ## A140342.P10467801935781399599

`Δ[Δ[A306852(n)]-A306852(n)]`
-/

namespace A140342.P10467801935781399599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A306852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140342.P10467801935781399599

/-!
# A140343: a(n)=4a(n-1)-7a(n-2)+6a(n-3)-3a(n-4), n>4.

The programs for A140343, the canonical program `A140343.P6829968733307683035` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140343 has offset 0).

The definition of A140343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` (program `A140343.P6829968733307683035`, by `A140343.P6829968733307683035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140343.P6829968733307683035

`4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140343

/-- `4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` -/
def P6829968733307683035.Spec : Prop :=
  ∀ n, P6829968733307683035.a n = A140343 n

theorem P6829968733307683035.correct : P6829968733307683035.Spec := by
  intro n
  simp only [A140343]

end A140343

/-! ## A140343.P11083991061753563134

`(A163806(n)-A057681(n))/2`
-/

namespace A140343.P11083991061753563134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163806 n - A057681 n : ℚ) / 2

end

end A140343.P11083991061753563134

namespace A140343

/-- `(A163806(n)-A057681(n))/2` -/
def P11083991061753563134.Spec : Prop :=
  ∀ n, P11083991061753563134.a n = (A140343 n : ℚ)

end A140343

/-! ## A140343.P7830524890393778867

`A134581(n)-A057682(n)`
-/

namespace A140343.P7830524890393778867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134581 n - A057682 n

end

end A140343.P7830524890393778867

namespace A140343

/-- `A134581(n)-A057682(n)` -/
def P7830524890393778867.Spec : Prop :=
  ∀ n, P7830524890393778867.a n = A140343 n

end A140343

/-! ## A140343.P17952933965571593167

`Δ[A290993(n)]-A290993(n)`
-/

namespace A140343.P17952933965571593167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A290993 n

end

end A140343.P17952933965571593167

namespace A140343

/-- `Δ[A290993(n)]-A290993(n)` -/
def P17952933965571593167.Spec : Prop :=
  ∀ n, P17952933965571593167.a n = A140343 n

end A140343

/-! ## A140343.P7087497136804656499

`A290993(n+1)-2*A290993(n)`
-/

namespace A140343.P7087497136804656499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 (n + 1) - 2 * A290993 n

end

end A140343.P7087497136804656499

namespace A140343

/-- `A290993(n+1)-2*A290993(n)` -/
def P7087497136804656499.Spec : Prop :=
  ∀ n, P7087497136804656499.a n = A140343 n

end A140343

/-! ## A140343.P15842820330804625888

`A024493(log2(A011782(n)))-A306847(n)`
-/

namespace A140343.P15842820330804625888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A306847 n

end

end A140343.P15842820330804625888

namespace A140343

/-- `A024493(log2(A011782(n)))-A306847(n)` -/
def P15842820330804625888.Spec : Prop :=
  ∀ n, P15842820330804625888.a n = A140343 n

end A140343

/-! ## A140343.P531247320503051403

`A227430(n+1)-(A057682(n)+A024495(n))`
-/

namespace A140343.P531247320503051403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1) - (A057682 n + A024495 n)

end

end A140343.P531247320503051403

namespace A140343

/-- `A227430(n+1)-(A057682(n)+A024495(n))` -/
def P531247320503051403.Spec : Prop :=
  ∀ n, P531247320503051403.a n = A140343 n

end A140343

/-! ## A140343.P9109771169369932238

`A119336(n)-(A306847(n+1)+A057682(n))`
-/

namespace A140343.P9109771169369932238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n - (A306847 (n + 1) + A057682 n)

end

end A140343.P9109771169369932238

namespace A140343

/-- `A119336(n)-(A306847(n+1)+A057682(n))` -/
def P9109771169369932238.Spec : Prop :=
  ∀ n, P9109771169369932238.a n = A140343 n

end A140343

/-!
# A140344: Catalan triangle A009766 prepended by n zeros in its n-th row.

The programs for A140344, there is no canonical definition to state claims against.
-/

/-! ## A140344.P172707138401001832

`A053121(A091995(n+1)-1)`
-/

namespace A140344.P172707138401001832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A091995 (n + 1) - 1).toNat

end

end A140344.P172707138401001832

/-! ## A140344.P11548746867028461134

`A130020(A037458(n+1)+A000196(n))`
-/

namespace A140344.P11548746867028461134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A037458 (n + 1) + A000196 n).toNat

end

end A140344.P11548746867028461134

/-! ## A140344.P6158857663105584051

`A053121(A090894(n))`
-/

namespace A140344.P6158857663105584051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A090894 n).toNat

end

end A140344.P6158857663105584051

/-! ## A140344.P13851034727423208678

`A003056(A144331(n)%A103251(n+1))`
-/

namespace A140344.P13851034727423208678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A144331 n) (A103251 (n + 1))).toNat

end

end A140344.P13851034727423208678

/-! ## A140344.P12128064173671494781

`A003056(A144331(n))%A158723(n+1)`
-/

namespace A140344.P12128064173671494781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A144331 n).toNat) (A158723 (n + 1))

end

end A140344.P12128064173671494781

/-!
# A140345: a(n) = a(n-1)^2 - a(n-2) - a(n-3) - a(n-4), a(1) = a(2) = a(3) = a(4) = 1.

The programs for A140345, the canonical program `A140345.P11271392789611923456` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140345 has offset 1).

The definition of A140345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)-a(n-3)-a(n-4)` (program `A140345.P11271392789611923456`, by `A140345.P11271392789611923456.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140345.P11271392789611923456

`a(n-1)²-a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140345

/-- `a(n-1)²-a(n-2)-a(n-3)-a(n-4)` -/
def P11271392789611923456.Spec : Prop :=
  ∀ n, P11271392789611923456.a n = A140345 (n + 1)

theorem P11271392789611923456.correct : P11271392789611923456.Spec := by
  intro n
  simp only [A140345, Nat.add_sub_cancel]

end A140345

/-!
# A140346: a(n) = binomial(n+8, 8)*5^n.

The programs for A140346, the canonical program `A140346.P9166390895011245348` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140346 has offset 0).

The definition of A140346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140346.P9166390895011245348

`5^n*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140346

/-- `5^n*C(n+8, 8)` -/
def P9166390895011245348.Spec : Prop :=
  ∀ n, (P9166390895011245348.a n : ℤ) = A140346 n

theorem P9166390895011245348.correct : P9166390895011245348.Spec := by
  intro n
  simp only [A140346]

end A140346

/-! ## A140346.P15604340162584530511

`(40/n+5)*a(n-1)` with `a(0)=1`
-/

namespace A140346.P15604340162584530511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (40 / (n : ℚ) + 5) * a (n - 1)

end

end A140346.P15604340162584530511

namespace A140346

/-- `(40/n+5)*a(n-1)` -/
def P15604340162584530511.Spec : Prop :=
  ∀ n, P15604340162584530511.a n = (A140346 n : ℚ)

end A140346

/-! ## A140346.P2708184631195664998

`5^n*A000581(n+8)`
-/

namespace A140346.P2708184631195664998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000581 (n + 8)

end

end A140346.P2708184631195664998

namespace A140346

/-- `5^n*A000581(n+8)` -/
def P2708184631195664998.Spec : Prop :=
  ∀ n, P2708184631195664998.a n = A140346 n

end A140346

/-! ## A140346.P10205867896209720546

`C(n+8, 8)*A000351(n)`
-/

namespace A140346.P10205867896209720546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A000351 n

end

end A140346.P10205867896209720546

namespace A140346

/-- `C(n+8, 8)*A000351(n)` -/
def P10205867896209720546.Spec : Prop :=
  ∀ n, P10205867896209720546.a n = A140346 n

end A140346

/-! ## A140346.P3164507129655985254

`5^n*∑[A000580(n+7)]`
-/

namespace A140346.P3164507129655985254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140346.P3164507129655985254

namespace A140346

/-- `5^n*∑[A000580(n+7)]` -/
def P3164507129655985254.Spec : Prop :=
  ∀ n, P3164507129655985254.a n = A140346 n

end A140346

/-! ## A140346.P6339217384308646688

`∑[A000580(n+7)]*A000351(n)`
-/

namespace A140346.P6339217384308646688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000351 n

end

end A140346.P6339217384308646688

namespace A140346

/-- `∑[A000580(n+7)]*A000351(n)` -/
def P6339217384308646688.Spec : Prop :=
  ∀ n, P6339217384308646688.a n = A140346 n

end A140346

/-! ## A140346.P7596628957860507195

`A013612(A167614(n+8)-12)`
-/

namespace A140346.P7596628957860507195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A167614 (n + 8) - 12).toNat

end

end A140346.P7596628957860507195

namespace A140346

/-- `A013612(A167614(n+8)-12)` -/
def P7596628957860507195.Spec : Prop :=
  ∀ n, P7596628957860507195.a n = A140346 n

end A140346

/-!
# A140348: Growth function for the submonoid generated by the generators of the free nil-2 group on three generators.

The programs for A140348, there is no canonical definition to state claims against.
-/

/-! ## A140348.P11062231657338583238

`A139561(A270890(n+1))`
-/

namespace A140348.P11062231657338583238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139561 (A270890 (n + 1)).toNat

end

end A140348.P11062231657338583238

/-! ## A140348.P8225688765483513757

`A139561(lt[A077028(n), 3])`
-/

namespace A140348.P8225688765483513757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139561 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A140348.P8225688765483513757

/-! ## A140348.P2524925140646994367

`A139561(n*A047010(n))`
-/

namespace A140348.P2524925140646994367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139561 ((n : ℤ) * A047010 n).toNat

end

end A140348.P2524925140646994367

/-!
# A140349: A number k is included if both (the largest divisor of k that is <= sqrt(k)) and (the smallest divisor of k that is >= sqrt(k)) are composite.

The programs for A140349, there is no canonical definition to state claims against.
-/

/-! ## A140349.P8943832854898894881

`lt[A006530(n+1), A033676(n+1)]+1`
-/

namespace A140349.P8943832854898894881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140349.P8943832854898894881

/-! ## A140349.P923473614784567563

`lt[A033677(n+1), A052126(n+1)]+1`
-/

namespace A140349.P923473614784567563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140349.P923473614784567563

/-! ## A140349.P835522644325752389

`lt[A033677(n+1), A083716(n+1)]+1`
-/

namespace A140349.P835522644325752389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140349.P835522644325752389

/-! ## A140349.P7534089153039634243

`lt[A066048(n+1), A052126(n+1)]+1`
-/

namespace A140349.P7534089153039634243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140349.P7534089153039634243

/-! ## A140349.P1423104352288398158

`lt[A006530(n+1)², A032742(n+1)]+1`
-/

namespace A140349.P1423104352288398158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A140349.P1423104352288398158

/-! ## A140349.P15176060051253071482

`A020725(lt[A033677(n+1), A052126(n+1)])`
-/

namespace A140349.P15176060051253071482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140349.P15176060051253071482

/-! ## A140349.P17532058709257649336

`A020725(lt[A033677(n+1), A083716(n+1)])`
-/

namespace A140349.P17532058709257649336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140349.P17532058709257649336

/-! ## A140349.P7458025267861846297

`A020725(lt[A066048(n+1), A052126(n+1)])`
-/

namespace A140349.P7458025267861846297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140349.P7458025267861846297

/-! ## A140349.P11696832524420572979

`A061767(lt[A033677(n+1), A052126(n+1)])`
-/

namespace A140349.P11696832524420572979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140349.P11696832524420572979

/-! ## A140349.P14611013794475320053

`A061767(lt[A066048(n+1), A052126(n+1)])`
-/

namespace A140349.P14611013794475320053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140349.P14611013794475320053

/-! ## A140349.P6551744300721045220

`A181569(lt[A033677(n+1), A052126(n+1)])`
-/

namespace A140349.P6551744300721045220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A140349.P6551744300721045220

/-!
# A140351: Numerator of the coefficient [x^1] of the Bernoulli twin number polynomial C(n,x).

The programs for A140351, there is no canonical definition to state claims against.
-/

/-! ## A140351.P4413380339737414628

`Δ[A229979(n)]-char[2]`
-/

namespace A140351.P4413380339737414628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229979 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A140351.P4413380339737414628

/-! ## A140351.P1325308154226091887

`Δ[A229979(n)+A094497(n)]`
-/

namespace A140351.P1325308154226091887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229979 n + A094497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140351.P1325308154226091887

/-! ## A140351.P8631692950987448989

`Δ[A229979(n)-A329683(n)]`
-/

namespace A140351.P8631692950987448989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229979 n - A329683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140351.P8631692950987448989

/-! ## A140351.P11380135820472814072

`A016232(A134735(n+1))+Δ[A229979(n)]`
-/

namespace A140351.P11380135820472814072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 (A134735 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A140351.P11380135820472814072

/-! ## A140351.P10057643848518604318

`A229979(n+1)-A050932(n)*A229979(n)`
-/

namespace A140351.P10057643848518604318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229979 (n + 1) - A050932 n * A229979 n

end

end A140351.P10057643848518604318

/-!
# A140353: a(n) = prime(n) + 9.

The programs for A140353, the canonical program `A140353.P5428652406384691630` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140353 has offset 1).

The definition of A140353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140353.P5428652406384691630

`p?[round(8*n/7)]+9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140353

/-- `p?[round(8*n/7)]+9` -/
def P5428652406384691630.Spec : Prop :=
  ∀ n, P5428652406384691630.a n = A140353 (n + 1)

theorem P5428652406384691630.correct : P5428652406384691630.Spec := by
  intro n
  simp only [A140353, Nat.add_sub_cancel]

end A140353

/-! ## A140353.P8390190161110127225

`Δ[A007504(n)]+9`
-/

namespace A140353.P8390190161110127225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 9

end

end A140353.P8390190161110127225

namespace A140353

/-- `Δ[A007504(n)]+9` -/
def P8390190161110127225.Spec : Prop :=
  ∀ n, P8390190161110127225.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P13968868475348567493

`A175224(n+1)+1`
-/

namespace A140353.P13968868475348567493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + 1

end

end A140353.P13968868475348567493

namespace A140353

/-- `A175224(n+1)+1` -/
def P13968868475348567493.Spec : Prop :=
  ∀ n, P13968868475348567493.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P1829757910084512567

`A175223(n+1)+2`
-/

namespace A140353.P1829757910084512567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) + 2

end

end A140353.P1829757910084512567

namespace A140353

/-- `A175223(n+1)+2` -/
def P1829757910084512567.Spec : Prop :=
  ∀ n, P1829757910084512567.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P7046645535627796670

`A175225(n+1)-1`
-/

namespace A140353.P7046645535627796670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 1

end

end A140353.P7046645535627796670

namespace A140353

/-- `A175225(n+1)-1` -/
def P7046645535627796670.Spec : Prop :=
  ∀ n, P7046645535627796670.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P8052295218750649934

`A139049(n+1)+3`
-/

namespace A140353.P8052295218750649934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) + 3

end

end A140353.P8052295218750649934

namespace A140353

/-- `A139049(n+1)+3` -/
def P8052295218750649934.Spec : Prop :=
  ∀ n, P8052295218750649934.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P6277732930161589682

`A175222(n+1)+4`
-/

namespace A140353.P6277732930161589682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + 4

end

end A140353.P6277732930161589682

namespace A140353

/-- `A175222(n+1)+4` -/
def P6277732930161589682.Spec : Prop :=
  ∀ n, P6277732930161589682.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P16384059385228381342

`A175221(n+1)+5`
-/

namespace A140353.P16384059385228381342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 5

end

end A140353.P16384059385228381342

namespace A140353

/-- `A175221(n+1)+5` -/
def P16384059385228381342.Spec : Prop :=
  ∀ n, P16384059385228381342.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P2527937448917607406

`A113935(n+1)+6`
-/

namespace A140353.P2527937448917607406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 6

end

end A140353.P2527937448917607406

namespace A140353

/-- `A113935(n+1)+6` -/
def P2527937448917607406.Spec : Prop :=
  ∀ n, P2527937448917607406.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P18283588913963266841

`A052147(n+1)+7`
-/

namespace A140353.P18283588913963266841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 7

end

end A140353.P18283588913963266841

namespace A140353

/-- `A052147(n+1)+7` -/
def P18283588913963266841.Spec : Prop :=
  ∀ n, P18283588913963266841.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P8225584844005397613

`A008864(n+1)+8`
-/

namespace A140353.P8225584844005397613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 8

end

end A140353.P8225584844005397613

namespace A140353

/-- `A008864(n+1)+8` -/
def P8225584844005397613.Spec : Prop :=
  ∀ n, P8225584844005397613.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P3022233906809485740

`A028815(n+1)+8`
-/

namespace A140353.P3022233906809485740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 8

end

end A140353.P3022233906809485740

namespace A140353

/-- `A028815(n+1)+8` -/
def P3022233906809485740.Spec : Prop :=
  ∀ n, P3022233906809485740.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P12858110191588032867

`9+A000040(n+1)`
-/

namespace A140353.P12858110191588032867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 + A000040 (n + 1)

end

end A140353.P12858110191588032867

namespace A140353

/-- `9+A000040(n+1)` -/
def P12858110191588032867.Spec : Prop :=
  ∀ n, P12858110191588032867.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P12127043850769630326

`A006093(n+1)+10`
-/

namespace A140353.P12127043850769630326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 10

end

end A140353.P12127043850769630326

namespace A140353

/-- `A006093(n+1)+10` -/
def P12127043850769630326.Spec : Prop :=
  ∀ n, P12127043850769630326.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P14419328188225897471

`A040976(n+1)+11`
-/

namespace A140353.P14419328188225897471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 11

end

end A140353.P14419328188225897471

namespace A140353

/-- `A040976(n+1)+11` -/
def P14419328188225897471.Spec : Prop :=
  ∀ n, P14419328188225897471.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P8879544396401082343

`A014686(n+1)+A010733(n)`
-/

namespace A140353.P8879544396401082343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1) + A010733 n

end

end A140353.P8879544396401082343

namespace A140353

/-- `A014686(n+1)+A010733(n)` -/
def P8879544396401082343.Spec : Prop :=
  ∀ n, P8879544396401082343.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P6437822405486100049

`A020723(n)+A014692(n+1)`
-/

namespace A140353.P6437822405486100049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n + A014692 (n + 1)

end

end A140353.P6437822405486100049

namespace A140353

/-- `A020723(n)+A014692(n+1)` -/
def P6437822405486100049.Spec : Prop :=
  ∀ n, P6437822405486100049.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P13520168046450206182

`A022964(n)+A014688(n+1)`
-/

namespace A140353.P13520168046450206182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022964 n + A014688 (n + 1)

end

end A140353.P13520168046450206182

namespace A140353

/-- `A022964(n)+A014688(n+1)` -/
def P13520168046450206182.Spec : Prop :=
  ∀ n, P13520168046450206182.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P7514503031263542228

`A095116(n+1)+A022965(n)`
-/

namespace A140353.P7514503031263542228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + A022965 n

end

end A140353.P7514503031263542228

namespace A140353

/-- `A095116(n+1)+A022965(n)` -/
def P7514503031263542228.Spec : Prop :=
  ∀ n, P7514503031263542228.a n = A140353 (n + 1)

end A140353

/-! ## A140353.P12739950036598287937

`A107623(n+1)+A010723(n)`
-/

namespace A140353.P12739950036598287937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107623 (n + 1) + A010723 n

end

end A140353.P12739950036598287937

namespace A140353

/-- `A107623(n+1)+A010723(n)` -/
def P12739950036598287937.Spec : Prop :=
  ∀ n, P12739950036598287937.a n = A140353 (n + 1)

end A140353

/-!
# A140354: a(n) = binomial(n+9,9)*2^n.

The programs for A140354, the canonical program `A140354.P14697721720665533389` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140354 has offset 0).

The definition of A140354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140354.P14697721720665533389

`2*a(n-1)+A140325(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140354

/-- `2*a(n-1)+A140325(n)` -/
def P14697721720665533389.Spec : Prop :=
  ∀ n, P14697721720665533389.a n = A140354 n

theorem P14697721720665533389.correct : P14697721720665533389.Spec := by
  intro n
  simp only [A140354]

end A140354

/-! ## A140354.P16539154764294114203

`(18/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A140354.P16539154764294114203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (18 / (n : ℚ) + 2) * a (n - 1)

end

end A140354.P16539154764294114203

namespace A140354

/-- `(18/n+2)*a(n-1)` -/
def P16539154764294114203.Spec : Prop :=
  ∀ n, P16539154764294114203.a n = (A140354 n : ℚ)

end A140354

/-! ## A140354.P9022270099832494669

`2^n*A000582(n+9)`
-/

namespace A140354.P9022270099832494669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000582 (n + 9)

end

end A140354.P9022270099832494669

namespace A140354

/-- `2^n*A000582(n+9)` -/
def P9022270099832494669.Spec : Prop :=
  ∀ n, P9022270099832494669.a n = A140354 n

end A140354

/-! ## A140354.P3064501590316989499

`C(n+9, 9)*A000079(n)`
-/

namespace A140354.P3064501590316989499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A000079 n

end

end A140354.P3064501590316989499

namespace A140354

/-- `C(n+9, 9)*A000079(n)` -/
def P3064501590316989499.Spec : Prop :=
  ∀ n, P3064501590316989499.a n = A140354 n

end A140354

/-! ## A140354.P14516418857483688086

`2^n*∑[A000581(n+8)]`
-/

namespace A140354.P14516418857483688086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140354.P14516418857483688086

namespace A140354

/-- `2^n*∑[A000581(n+8)]` -/
def P14516418857483688086.Spec : Prop :=
  ∀ n, P14516418857483688086.a n = A140354 n

end A140354

/-! ## A140354.P8833469236162939232

`(A035927(n)+1)*A000079(n)`
-/

namespace A140354.P8833469236162939232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035927 n + 1) * A000079 n

end

end A140354.P8833469236162939232

namespace A140354

/-- `(A035927(n)+1)*A000079(n)` -/
def P8833469236162939232.Spec : Prop :=
  ∀ n, P8833469236162939232.a n = A140354 n

end A140354

/-! ## A140354.P13550595853826849798

`∑[A000581(n+8)]*A000079(n)`
-/

namespace A140354.P13550595853826849798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A140354.P13550595853826849798

namespace A140354

/-- `∑[A000581(n+8)]*A000079(n)` -/
def P13550595853826849798.Spec : Prop :=
  ∀ n, P13550595853826849798.a n = A140354 n

end A140354

/-! ## A140354.P11417245933193270293

`∑[∑[A000580(n+7)]]*A000079(n)`
-/

namespace A140354.P11417245933193270293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A140354.P11417245933193270293

namespace A140354

/-- `∑[∑[A000580(n+7)]]*A000079(n)` -/
def P11417245933193270293.Spec : Prop :=
  ∀ n, P11417245933193270293.a n = A140354 n

end A140354

/-! ## A140354.P8869578160653361035

`∑[A000581(n+8)]*∑[A011782(n)]`
-/

namespace A140354.P8869578160653361035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A140354.P8869578160653361035

namespace A140354

/-- `∑[A000581(n+8)]*∑[A011782(n)]` -/
def P8869578160653361035.Spec : Prop :=
  ∀ n, P8869578160653361035.a n = A140354 n

end A140354

/-! ## A140354.P3368854516513997844

`A054340(n)/A000079(n)`
-/

namespace A140354.P3368854516513997844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054340 n : ℚ) / (A000079 n : ℚ)

end

end A140354.P3368854516513997844

namespace A140354

/-- `A054340(n)/A000079(n)` -/
def P3368854516513997844.Spec : Prop :=
  ∀ n, P3368854516513997844.a n = (A140354 n : ℚ)

end A140354

/-! ## A140354.P15532166219583850409

`A054340(n)/(A000051(n)-1)`
-/

namespace A140354.P15532166219583850409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054340 n : ℚ) / (A000051 n - 1 : ℚ)

end

end A140354.P15532166219583850409

namespace A140354

/-- `A054340(n)/(A000051(n)-1)` -/
def P15532166219583850409.Spec : Prop :=
  ∀ n, P15532166219583850409.a n = (A140354 n : ℚ)

end A140354

/-! ## A140354.P8571246062849657345

`A173123(n)/3^n`
-/

namespace A140354.P8571246062849657345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173123 n : ℚ) / (3 ^ n : ℚ)

end

end A140354.P8571246062849657345

namespace A140354

/-- `A173123(n)/3^n` -/
def P8571246062849657345.Spec : Prop :=
  ∀ n, P8571246062849657345.a n = (A140354 n : ℚ)

end A140354

/-!
# A140355: Smallest integer such that the first n multiples of a(n) have a number of divisors that is strictly increasing.

The programs for A140355, there is no canonical definition to state claims against.
-/

/-! ## A140355.P9315006945028391357

`∏{p}[n!, A106037(#)]`
-/

namespace A140355.P9315006945028391357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A106037 p

end

end A140355.P9315006945028391357

/-! ## A140355.P15700476236044990959

`A123258(∏{p}[n!, #])`
-/

namespace A140355.P15700476236044990959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A140355.P15700476236044990959

/-! ## A140355.P3430140895866663695

`A324553(∏{p}[∑{digits}[n, #!], #])`
-/

namespace A140355.P3430140895866663695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324553 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A140355.P3430140895866663695

/-!
# A140356: Triangle T(n,m) read by rows: m! if m <= floor(n/2), and (n-m)! otherwise.

The programs for A140356, there is no canonical definition to state claims against.
-/

/-! ## A140356.P13990573815957517127

`A004197(n)!`
-/

namespace A140356.P13990573815957517127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004197 n).toNat

end

end A140356.P13990573815957517127

/-! ## A140356.P5325492539057879739

`log2(A144464(n))!`
-/

namespace A140356.P5325492539057879739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ))).toNat

end

end A140356.P5325492539057879739

/-! ## A140356.P6207240900012572809

`val(A152714(n), 3)!`
-/

namespace A140356.P6207240900012572809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A152714 n).toNat 3)

end

end A140356.P6207240900012572809

/-! ## A140356.P1327168693889527631

`val(A152717(n), 5)!`
-/

namespace A140356.P1327168693889527631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A152717 n).toNat 5)

end

end A140356.P1327168693889527631

/-! ## A140356.P6976638968905705471

`val(A036561(n), 6)!`
-/

namespace A140356.P6976638968905705471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A036561 n).toNat 6)

end

end A140356.P6976638968905705471

/-! ## A140356.P11034490367604514000

`val(A175840(n), 6)!`
-/

namespace A140356.P11034490367604514000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A175840 n).toNat 6)

end

end A140356.P11034490367604514000

/-! ## A140356.P13769117798608164085

`(A003983(n+1)-1)!`
-/

namespace A140356.P13769117798608164085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A003983 (n + 1) - 1).toNat

end

end A140356.P13769117798608164085

/-! ## A140356.P500095549190763326

`A081123(A157458(n))`
-/

namespace A140356.P500095549190763326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A157458 n).toNat

end

end A140356.P500095549190763326

/-! ## A140356.P6205072652920680264

`A112624(A144464(n))`
-/

namespace A140356.P6205072652920680264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A144464 n).toNat

end

end A140356.P6205072652920680264

/-! ## A140356.P8329720160096567637

`A112624(A152714(n))`
-/

namespace A140356.P8329720160096567637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A152714 n).toNat

end

end A140356.P8329720160096567637

/-!
# A140357: a(1)=1; a(n)=floor(4*a(n-1)*(n-a(n-1)) / n) for n > 1.

The programs for A140357, the canonical program `A140357.P11307208718135635294` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140357 has offset 1).

The definition of A140357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140357.P11307208718135635294

`floor(4*(a(n-1)-a(n-1)²/(n+1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140357

/-- `floor(4*(a(n-1)-a(n-1)²/(n+1)))` -/
def P11307208718135635294.Spec : Prop :=
  ∀ n, P11307208718135635294.a n = A140357 (n + 1)

theorem P11307208718135635294.correct : P11307208718135635294.Spec := by
  intro n
  simp only [A140357, Nat.add_sub_cancel]

end A140357

/-!
# A140358: Smallest nonnegative integer k such that n = +-1+-2+-...+-k for some choice of +'s and -'s.

The programs for A140358, the canonical program `A140358.P7154466592656904482` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140358 has offset 0).

The definition of A140358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140358.P9874635613128018366

`a(∑[(-1)^A173786(n)])+2` with `a(0)=0, a(1)=1`
-/

namespace A140358.P9874635613128018366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A173786 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 2

end

end A140358.P9874635613128018366

namespace A140358

/-- `a(∑[(-1)^A173786(n)])+2` -/
def P9874635613128018366.Spec : Prop :=
  ∀ n, (P9874635613128018366.a n : ℤ) = A140358 n

end A140358

/-! ## A140358.P7154466592656904482

`a(2-A131507(n)+n)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140358

/-- `a(2-A131507(n)+n)+2` -/
def P7154466592656904482.Spec : Prop :=
  ∀ n, (P7154466592656904482.a n : ℤ) = A140358 n

theorem P7154466592656904482.correct : P7154466592656904482.Spec := by
  intro n
  simp only [A140358]

end A140358

/-! ## A140358.P10806344863267163833

`A051162(n)-A014017(A192722(n+1))`
-/

namespace A140358.P10806344863267163833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n - A014017 (A192722 (n + 1)).toNat

end

end A140358.P10806344863267163833

namespace A140358

/-- `A051162(n)-A014017(A192722(n+1))` -/
def P10806344863267163833.Spec : Prop :=
  ∀ n, P10806344863267163833.a n = A140358 n

end A140358

/-! ## A140358.P1986573127165585563

`A297038(A133552(n+2))+A048793(n)`
-/

namespace A140358.P1986573127165585563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A133552 (n + 2)).toNat + A048793 n

end

end A140358.P1986573127165585563

namespace A140358

/-- `A297038(A133552(n+2))+A048793(n)` -/
def P1986573127165585563.Spec : Prop :=
  ∀ n, P1986573127165585563.a n = A140358 n

end A140358

/-! ## A140358.P2707835622425729015

`A297041(A290469(n+2))+A048793(n)`
-/

namespace A140358.P2707835622425729015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297041 (A290469 (n + 2)).toNat + A048793 n

end

end A140358.P2707835622425729015

namespace A140358

/-- `A297041(A290469(n+2))+A048793(n)` -/
def P2707835622425729015.Spec : Prop :=
  ∀ n, P2707835622425729015.a n = A140358 n

end A140358

/-!
# A140359: a(n) = 2*a(n-1) + a(n-2) - 2*a(n-3), with initial terms 1, 1, 6.

The programs for A140359, the canonical program `A140359.P7718415271103767488` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140359 has offset 0).

The definition of A140359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140359.P7718415271103767488

`a(n-1)+2*a(n-2)+3` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140359

/-- `a(n-1)+2*a(n-2)+3` -/
def P7718415271103767488.Spec : Prop :=
  ∀ n, (P7718415271103767488.a n : ℤ) = A140359 n

theorem P7718415271103767488.correct : P7718415271103767488.Spec := by
  intro n
  simp only [A140359]

end A140359

/-! ## A140359.P15441444879756700235

`5*floor(2^n/3)+1`
-/

namespace A140359.P15441444879756700235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(2 ^ n : ℚ) / 3⌋ + 1

end

end A140359.P15441444879756700235

namespace A140359

/-- `5*floor(2^n/3)+1` -/
def P15441444879756700235.Spec : Prop :=
  ∀ n, P15441444879756700235.a n = A140359 n

end A140359

/-! ## A140359.P8831751769979440325

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A140359.P8831751769979440325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140359.P8831751769979440325

namespace A140359

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P8831751769979440325.Spec : Prop :=
  ∀ n, (P8831751769979440325.a n : ℤ) = A140359 n

end A140359

/-! ## A140359.P11889818693672504351

`floor(a(n-1)+a(n-2)+a(n-2)+3)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A140359.P11889818693672504351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 3))

end

end A140359.P11889818693672504351

namespace A140359

/-- `floor(a(n-1)+a(n-2)+a(n-2)+3)` -/
def P11889818693672504351.Spec : Prop :=
  ∀ n, (P11889818693672504351.a n : ℤ) = A140359 n

theorem P11889818693672504351.correct : P11889818693672504351.Spec := by
  intro n
  simp only [A140359, Nat.add_sub_cancel, A140359.P11889818693672504351.a, A140359.P7718415271103767488.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140359

/-! ## A140359.P2901975441875385219

`∑[abs(A140360(n))]`
-/

namespace A140359.P2901975441875385219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140359.P2901975441875385219

namespace A140359

/-- `∑[abs(A140360(n))]` -/
def P2901975441875385219.Spec : Prop :=
  ∀ n, P2901975441875385219.a n = A140359 n

end A140359

/-! ## A140359.P15560682277698326913

`xor(A126646(n), A155944(n))`
-/

namespace A140359.P15560682277698326913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A155944 n)

end

end A140359.P15560682277698326913

namespace A140359

/-- `xor(A126646(n), A155944(n))` -/
def P15560682277698326913.Spec : Prop :=
  ∀ n, P15560682277698326913.a n = A140359 n

end A140359

/-! ## A140359.P17595662866173789231

`abs(A000034(n)-A048573(n))`
-/

namespace A140359.P17595662866173789231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000034 n - A048573 n|

end

end A140359.P17595662866173789231

namespace A140359

/-- `abs(A000034(n)-A048573(n))` -/
def P17595662866173789231.Spec : Prop :=
  ∀ n, P17595662866173789231.a n = A140359 n

end A140359

/-! ## A140359.P8951935609319613379

`abs(A000079(n)-A083944(n))`
-/

namespace A140359.P8951935609319613379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A083944 n|

end

end A140359.P8951935609319613379

namespace A140359

/-- `abs(A000079(n)-A083944(n))` -/
def P8951935609319613379.Spec : Prop :=
  ∀ n, P8951935609319613379.a n = A140359 n

end A140359

/-! ## A140359.P2258629937749323496

`∑[A084214(n)-A062157(n)]`
-/

namespace A140359.P2258629937749323496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n - A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140359.P2258629937749323496

namespace A140359

/-- `∑[A084214(n)-A062157(n)]` -/
def P2258629937749323496.Spec : Prop :=
  ∀ n, P2258629937749323496.a n = A140359 n

end A140359

/-! ## A140359.P6538481453710259449

`A159290(n)%A171231(n)`
-/

namespace A140359.P6538481453710259449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159290 n) (A171231 n)

end

end A140359.P6538481453710259449

namespace A140359

/-- `A159290(n)%A171231(n)` -/
def P6538481453710259449.Spec : Prop :=
  ∀ n, P6538481453710259449.a n = A140359 n

end A140359

/-!
# A140360: Inverse binomial transform of A140359.

The programs for A140360, the canonical program `A140360.P2514951082004527429` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140360 has offset 0).

The definition of A140360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140360.P2514951082004527429

`5-2*a(n-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140360

/-- `5-2*a(n-1)` -/
def P2514951082004527429.Spec : Prop :=
  ∀ n, P2514951082004527429.a n = A140360 n

theorem P2514951082004527429.correct : P2514951082004527429.Spec := by
  intro n
  simp only [A140360]

end A140360

/-! ## A140360.P17198219525316896016

`5-(a(n-1)+a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A140360.P17198219525316896016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  5 - (a (n - 1) + a (n - 1))

end

end A140360.P17198219525316896016

namespace A140360

/-- `5-(a(n-1)+a(n-1))` -/
def P17198219525316896016.Spec : Prop :=
  ∀ n, P17198219525316896016.a n = A140360 n

theorem P17198219525316896016.correct : P17198219525316896016.Spec := by
  intro n
  simp only [A140360, Nat.add_sub_cancel, A140360.P17198219525316896016.a, A140360.P2514951082004527429.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140360

/-! ## A140360.P17245777802498136039

`5-a(n-1)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A140360.P17245777802498136039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  5 - a (n - 1) - a (n - 1)

end

end A140360.P17245777802498136039

namespace A140360

/-- `5-a(n-1)-a(n-1)` -/
def P17245777802498136039.Spec : Prop :=
  ∀ n, P17245777802498136039.a n = A140360 n

theorem P17245777802498136039.correct : P17245777802498136039.Spec := by
  intro n
  simp only [A140360, Nat.add_sub_cancel, A140360.P17245777802498136039.a, A140360.P2514951082004527429.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140360

/-! ## A140360.P14241104183426254763

`A140966(n)-A123344(n)`
-/

namespace A140360.P14241104183426254763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n - A123344 n

end

end A140360.P14241104183426254763

namespace A140360

/-- `A140966(n)-A123344(n)` -/
def P14241104183426254763.Spec : Prop :=
  ∀ n, P14241104183426254763.a n = A140360 n

end A140360

/-! ## A140360.P10966025406059753662

`1-A062157(n)*A084214(n)`
-/

namespace A140360.P10966025406059753662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062157 n * A084214 n

end

end A140360.P10966025406059753662

namespace A140360

/-- `1-A062157(n)*A084214(n)` -/
def P10966025406059753662.Spec : Prop :=
  ∀ n, P10966025406059753662.a n = A140360 n

end A140360

/-! ## A140360.P7555750410151884050

`∑[A123344(n+1)+A123344(n)]-A123344(n)`
-/

namespace A140360.P7555750410151884050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (n + 1) + A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123344 n

end

end A140360.P7555750410151884050

namespace A140360

/-- `∑[A123344(n+1)+A123344(n)]-A123344(n)` -/
def P7555750410151884050.Spec : Prop :=
  ∀ n, P7555750410151884050.a n = A140360 n

end A140360

/-! ## A140360.P16291675163690256275

`∑[xor(A082505(n), A110164(n))]`
-/

namespace A140360.P16291675163690256275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082505 n) (A110164 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140360.P16291675163690256275

namespace A140360

/-- `∑[xor(A082505(n), A110164(n))]` -/
def P16291675163690256275.Spec : Prop :=
  ∀ n, P16291675163690256275.a n = A140360 n

end A140360

/-! ## A140360.P16620457000820472607

`A137208(n)-A255047(A014681(n))`
-/

namespace A140360.P16620457000820472607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137208 n - A255047 (A014681 n).toNat

end

end A140360.P16620457000820472607

namespace A140360

/-- `A137208(n)-A255047(A014681(n))` -/
def P16620457000820472607.Spec : Prop :=
  ∀ n, P16620457000820472607.a n = A140360 n

end A140360

/-!
# A140361: Number of additions, subtractions, or multiplications necessary to reach n starting from 1 and 2.

The programs for A140361, there is no canonical definition to state claims against.
-/

/-! ## A140361.P7226235349446667444

`A173419(round(acot(n)+n))-1`
-/

namespace A140361.P7226235349446667444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A140361.P7226235349446667444

/-! ## A140361.P8059236723370973973

`A173419(A233583(n+1))-1`
-/

namespace A140361.P8059236723370973973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (A233583 (n + 1)).toNat - 1

end

end A140361.P8059236723370973973

/-! ## A140361.P301766016712456307

`floor(A173419(A028310(n))/atan(2))`
-/

namespace A140361.P301766016712456307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173419 (A028310 n).toNat : ℝ) / Real.arctan (2 : ℝ)⌋

end

end A140361.P301766016712456307

/-! ## A140361.P1557737377117380017

`A173419(A028310(n))-A157928(n)`
-/

namespace A140361.P1557737377117380017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (A028310 n).toNat - A157928 n

end

end A140361.P1557737377117380017

/-! ## A140361.P16132329091553361645

`A070198(n)%A173419(A233583(n+1))`
-/

namespace A140361.P16132329091553361645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A173419 (A233583 (n + 1)).toNat)

end

end A140361.P16132329091553361645

/-! ## A140361.P4453256810583958174

`A198277(n)%A173419(A233583(n+1))`
-/

namespace A140361.P4453256810583958174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A173419 (A233583 (n + 1)).toNat)

end

end A140361.P4453256810583958174

/-! ## A140361.P10247034997620845868

`A072828(n+1)%A173419(A233583(n+1))`
-/

namespace A140361.P10247034997620845868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A173419 (A233583 (n + 1)).toNat)

end

end A140361.P10247034997620845868

/-! ## A140361.P1687165222678349948

`A166931(n+1)%A173419(A233583(n+1))`
-/

namespace A140361.P1687165222678349948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A173419 (A233583 (n + 1)).toNat)

end

end A140361.P1687165222678349948

/-! ## A140361.P545456826841987235

`A127229(n+5)%A173419(A233583(n+1))`
-/

namespace A140361.P545456826841987235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A173419 (A233583 (n + 1)).toNat)

end

end A140361.P545456826841987235

/-!
# A140363: Number of n X n symmetric binary matrices with every 1 adjacent horizontally (and vertically) to some other 1.

The programs for A140363, there is no canonical definition to state claims against.
-/

/-! ## A140363.P9486270491142174519

`A002330(C(∑[2*n], n))`
-/

namespace A140363.P9486270491142174519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A140363.P9486270491142174519

/-!
# A140365: a(n) = sum of primes in {6*n-5, 6*n-1}.

The programs for A140365, there is no canonical definition to state claims against.
-/

/-! ## A140365.P10032465017588553899

`Δ[A034387(3*A004277(n))]`
-/

namespace A140365.P10032465017588553899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (3 * A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P10032465017588553899

/-! ## A140365.P17711051328521752276

`Δ[A034387(lcm(3, A008458(n)))]`
-/

namespace A140365.P17711051328521752276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (Int.lcm 3 (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P17711051328521752276

/-! ## A140365.P7394698179725708661

`Δ[A034387(A269369(2*(n+1)))]`
-/

namespace A140365.P7394698179725708661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A269369 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P7394698179725708661

/-! ## A140365.P11836408077031583036

`Δ[A034387(A204502(2*(n+2)))]`
-/

namespace A140365.P11836408077031583036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A204502 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P11836408077031583036

/-! ## A140365.P5906711827519880018

`Δ[A034387(A038179(2*n+1)+1)]`
-/

namespace A140365.P5906711827519880018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A038179 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P5906711827519880018

/-! ## A140365.P12806570630694354205

`A085090(3*n+1)+A085090(3*(n+1))`
-/

namespace A140365.P12806570630694354205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (3 * n + 1) + A085090 (3 * (n + 1))

end

end A140365.P12806570630694354205

/-! ## A140365.P13924426374752927771

`Δ[A034387(A008486(A004277(n)))]`
-/

namespace A140365.P13924426374752927771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A008486 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P13924426374752927771

/-! ## A140365.P6588504320958442536

`Δ[A007504(A100637(A004273(n)))]`
-/

namespace A140365.P6588504320958442536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A100637 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P6588504320958442536

/-! ## A140365.P7719357549582042165

`Δ[A034387(A159966(A008458(n)))]`
-/

namespace A140365.P7719357549582042165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A159966 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P7719357549582042165

/-! ## A140365.P2181134204263743236

`Δ[A063960(A271004(A103517(n)))]`
-/

namespace A140365.P2181134204263743236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (A271004 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140365.P2181134204263743236

/-!
# A140366: a(n) = isprime(6n-1) + 2*isprime(6n-5), where isprime = A010051.

The programs for A140366, there is no canonical definition to state claims against.
-/

/-! ## A140366.P8261536132006370295

`A101264(3*n+2)+2*A101264(3*n)`
-/

namespace A140366.P8261536132006370295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n + 2) + 2 * A101264 (3 * n)

end

end A140366.P8261536132006370295

/-! ## A140366.P2225609843449735241

`A087284(A187829(n+1)-A087295(n))`
-/

namespace A140366.P2225609843449735241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087284 (A187829 (n + 1) - A087295 n).toNat

end

end A140366.P2225609843449735241

/-! ## A140366.P13342944320807094722

`A305389(xor(A259933(n+1), A288368(n)))`
-/

namespace A140366.P13342944320807094722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 (Int.xor (A259933 (n + 1)) (A288368 n)).toNat

end

end A140366.P13342944320807094722

/-! ## A140366.P6998065318638486001

`A106824(n*A106872(3*n+5))`
-/

namespace A140366.P6998065318638486001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106824 ((n : ℤ) * A106872 (3 * n + 5)).toNat

end

end A140366.P6998065318638486001

/-! ## A140366.P11374572330951669214

`A260450(or(A000079(n), A033845(n+1)))`
-/

namespace A140366.P11374572330951669214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (Int.lor (A000079 n) (A033845 (n + 1))).toNat

end

end A140366.P11374572330951669214

/-!
# A140367: Composites of the form 26k + 5.

The programs for A140367, the canonical program `A140367.P5913392187003139529` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140367 has offset 1).

The definition of A140367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1969 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140367.P11526238063216054394

`filter[A154609(2*n), A005171(#)]`
-/

namespace A140367.P11526238063216054394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140367.P11526238063216054394

namespace A140367

/-- `filter[A154609(2*n), A005171(#)]` -/
def P11526238063216054394.Spec : Prop :=
  ∀ n, P11526238063216054394.a n = A140367 (n + 1)

end A140367

/-! ## A140367.P5913392187003139529

`filter[A154609(2*n), A066247(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140367

/-- `filter[A154609(2*n), A066247(#)]` -/
def P5913392187003139529.Spec : Prop :=
  ∀ n, P5913392187003139529.a n = A140367 (n + 1)

theorem P5913392187003139529.correct : P5913392187003139529.Spec := by
  intro n
  simp only [A140367, Nat.add_sub_cancel]

end A140367

/-! ## A140367.P63351478287003044

`filter[A154609(2*n), A202238(#)]`
-/

namespace A140367.P63351478287003044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140367.P63351478287003044

namespace A140367

/-- `filter[A154609(2*n), A202238(#)]` -/
def P63351478287003044.Spec : Prop :=
  ∀ n, P63351478287003044.a n = A140367 (n + 1)

end A140367

/-! ## A140367.P11628789804981715973

`filter[A154609(2*n), A292438(#)]`
-/

namespace A140367.P11628789804981715973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140367.P11628789804981715973

namespace A140367

/-- `filter[A154609(2*n), A292438(#)]` -/
def P11628789804981715973.Spec : Prop :=
  ∀ n, P11628789804981715973.a n = A140367 (n + 1)

end A140367

/-! ## A140367.P9451907099630465640

`filter[A154609(2*n), A323162(#)]`
-/

namespace A140367.P9451907099630465640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140367.P9451907099630465640

namespace A140367

/-- `filter[A154609(2*n), A323162(#)]` -/
def P9451907099630465640.Spec : Prop :=
  ∀ n, P9451907099630465640.a n = A140367 (n + 1)

end A140367

/-! ## A140367.P702484445587782274

`filter[A063219(3*n+1), A202238(#)]`
-/

namespace A140367.P702484445587782274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140367.P702484445587782274

namespace A140367

/-- `filter[A063219(3*n+1), A202238(#)]` -/
def P702484445587782274.Spec : Prop :=
  ∀ n, P702484445587782274.a n = A140367 (n + 1)

end A140367

/-! ## A140367.P719350188285580205

`filter[A063219(3*n+1), A292438(#)]`
-/

namespace A140367.P719350188285580205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140367.P719350188285580205

namespace A140367

/-- `filter[A063219(3*n+1), A292438(#)]` -/
def P719350188285580205.Spec : Prop :=
  ∀ n, P719350188285580205.a n = A140367 (n + 1)

end A140367

/-! ## A140367.P6526832253851435997

`filter[A063219(3*n+1), A323162(#)]`
-/

namespace A140367.P6526832253851435997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063219 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140367.P6526832253851435997

namespace A140367

/-- `filter[A063219(3*n+1), A323162(#)]` -/
def P6526832253851435997.Spec : Prop :=
  ∀ n, P6526832253851435997.a n = A140367 (n + 1)

end A140367

/-! ## A140367.P7793678162239616154

`∩[A103246(n+1), A154609(n)]`
-/

namespace A140367.P7793678162239616154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P7793678162239616154

namespace A140367

/-- `∩[A103246(n+1), A154609(n)]` -/
def P7793678162239616154.Spec : Prop :=
  ∀ n, (P7793678162239616154.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P7453118443216667282

`∩[A103246(n+1), A306285(n+1)+1]`
-/

namespace A140367.P7453118443216667282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P7453118443216667282

namespace A140367

/-- `∩[A103246(n+1), A306285(n+1)+1]` -/
def P7453118443216667282.Spec : Prop :=
  ∀ n, (P7453118443216667282.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P11783220340861982124

`∩[A082686(n+1), A154609(n)]`
-/

namespace A140367.P11783220340861982124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P11783220340861982124

namespace A140367

/-- `∩[A082686(n+1), A154609(n)]` -/
def P11783220340861982124.Spec : Prop :=
  ∀ n, (P11783220340861982124.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P9213879684515629162

`∩[12*n+5+n, A226025(n+2)]`
-/

namespace A140367.P9213879684515629162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P9213879684515629162

namespace A140367

/-- `∩[12*n+5+n, A226025(n+2)]` -/
def P9213879684515629162.Spec : Prop :=
  ∀ n, (P9213879684515629162.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P3967230519173198490

`∩[A226025(n+1), A154609(n)]`
-/

namespace A140367.P3967230519173198490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P3967230519173198490

namespace A140367

/-- `∩[A226025(n+1), A154609(n)]` -/
def P3967230519173198490.Spec : Prop :=
  ∀ n, (P3967230519173198490.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P11830482973855771325

`∩[A226025(n+1), A186113(n)-1]`
-/

namespace A140367.P11830482973855771325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P11830482973855771325

namespace A140367

/-- `∩[A226025(n+1), A186113(n)-1]` -/
def P11830482973855771325.Spec : Prop :=
  ∀ n, (P11830482973855771325.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P13892075818704738912

`∩[A226025(n+1), A306285(n+1)+1]`
-/

namespace A140367.P13892075818704738912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P13892075818704738912

namespace A140367

/-- `∩[A226025(n+1), A306285(n+1)+1]` -/
def P13892075818704738912.Spec : Prop :=
  ∀ n, (P13892075818704738912.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P12102830772938290652

`∩[12*n+5+n, A014076(n+2)]`
-/

namespace A140367.P12102830772938290652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P12102830772938290652

namespace A140367

/-- `∩[12*n+5+n, A014076(n+2)]` -/
def P12102830772938290652.Spec : Prop :=
  ∀ n, (P12102830772938290652.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P12312272662646391957

`∩[12*n+5+n, A071904(n+2)]`
-/

namespace A140367.P12312272662646391957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P12312272662646391957

namespace A140367

/-- `∩[12*n+5+n, A071904(n+2)]` -/
def P12312272662646391957.Spec : Prop :=
  ∀ n, (P12312272662646391957.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P4867724793857751560

`∩[A014076(n+1), A154609(n)]`
-/

namespace A140367.P4867724793857751560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P4867724793857751560

namespace A140367

/-- `∩[A014076(n+1), A154609(n)]` -/
def P4867724793857751560.Spec : Prop :=
  ∀ n, (P4867724793857751560.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P9670752523161260838

`∩[A071904(n+1), A154609(n)]`
-/

namespace A140367.P9670752523161260838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P9670752523161260838

namespace A140367

/-- `∩[A071904(n+1), A154609(n)]` -/
def P9670752523161260838.Spec : Prop :=
  ∀ n, (P9670752523161260838.a n : ℤ) = A140367 (n + 1)

end A140367

/-! ## A140367.P15296824989609913807

`∩[A014076(n+1), A127547(n)+1]`
-/

namespace A140367.P15296824989609913807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140367.P15296824989609913807

namespace A140367

/-- `∩[A014076(n+1), A127547(n)+1]` -/
def P15296824989609913807.Spec : Prop :=
  ∀ n, (P15296824989609913807.a n : ℤ) = A140367 (n + 1)

end A140367

/-!
# A140368: Composites of the form 26k + 17.

The programs for A140368, the canonical program `A140368.P7551118825088624686` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140368 has offset 1).

The definition of A140368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140368.P2450783989444161693

`filter[A127547(2*n+1), A005171(#)]`
-/

namespace A140368.P2450783989444161693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140368.P2450783989444161693

namespace A140368

/-- `filter[A127547(2*n+1), A005171(#)]` -/
def P2450783989444161693.Spec : Prop :=
  ∀ n, P2450783989444161693.a n = A140368 (n + 1)

end A140368

/-! ## A140368.P7551118825088624686

`filter[A127547(2*n+1), A066247(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140368

/-- `filter[A127547(2*n+1), A066247(#)]` -/
def P7551118825088624686.Spec : Prop :=
  ∀ n, P7551118825088624686.a n = A140368 (n + 1)

theorem P7551118825088624686.correct : P7551118825088624686.Spec := by
  intro n
  simp only [A140368, Nat.add_sub_cancel]

end A140368

/-! ## A140368.P5301826268469028450

`filter[A127547(2*n+1), A202238(#)]`
-/

namespace A140368.P5301826268469028450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140368.P5301826268469028450

namespace A140368

/-- `filter[A127547(2*n+1), A202238(#)]` -/
def P5301826268469028450.Spec : Prop :=
  ∀ n, P5301826268469028450.a n = A140368 (n + 1)

end A140368

/-! ## A140368.P4571641056534789533

`filter[A127547(2*n+1), A292438(#)]`
-/

namespace A140368.P4571641056534789533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140368.P4571641056534789533

namespace A140368

/-- `filter[A127547(2*n+1), A292438(#)]` -/
def P4571641056534789533.Spec : Prop :=
  ∀ n, P4571641056534789533.a n = A140368 (n + 1)

end A140368

/-! ## A140368.P16592363063861198996

`filter[A127547(2*n+1), A323162(#)]`
-/

namespace A140368.P16592363063861198996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140368.P16592363063861198996

namespace A140368

/-- `filter[A127547(2*n+1), A323162(#)]` -/
def P16592363063861198996.Spec : Prop :=
  ∀ n, P16592363063861198996.a n = A140368 (n + 1)

end A140368

/-! ## A140368.P5152794733356912419

`∩[A014076(n+1), A127547(n)]`
-/

namespace A140368.P5152794733356912419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P5152794733356912419

namespace A140368

/-- `∩[A014076(n+1), A127547(n)]` -/
def P5152794733356912419.Spec : Prop :=
  ∀ n, (P5152794733356912419.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P9703041276420697687

`∩[A071904(n+1), A127547(n)]`
-/

namespace A140368.P9703041276420697687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P9703041276420697687

namespace A140368

/-- `∩[A071904(n+1), A127547(n)]` -/
def P9703041276420697687.Spec : Prop :=
  ∀ n, (P9703041276420697687.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P2183377755761937008

`∩[A014076(n+1), A154609(n)-1]`
-/

namespace A140368.P2183377755761937008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P2183377755761937008

namespace A140368

/-- `∩[A014076(n+1), A154609(n)-1]` -/
def P2183377755761937008.Spec : Prop :=
  ∀ n, (P2183377755761937008.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P15644879199276224604

`∩[A071904(n+1), A154609(n)-1]`
-/

namespace A140368.P15644879199276224604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P15644879199276224604

namespace A140368

/-- `∩[A071904(n+1), A154609(n)-1]` -/
def P15644879199276224604.Spec : Prop :=
  ∀ n, (P15644879199276224604.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P6873973634222398819

`∩[A014076(n+1), A186113(n)-2]`
-/

namespace A140368.P6873973634222398819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P6873973634222398819

namespace A140368

/-- `∩[A014076(n+1), A186113(n)-2]` -/
def P6873973634222398819.Spec : Prop :=
  ∀ n, (P6873973634222398819.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P9940924075970797282

`∩[A014076(n+1), A190991(n)+3]`
-/

namespace A140368.P9940924075970797282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P9940924075970797282

namespace A140368

/-- `∩[A014076(n+1), A190991(n)+3]` -/
def P9940924075970797282.Spec : Prop :=
  ∀ n, (P9940924075970797282.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P2441328164887629330

`∩[A071904(n+1), A186113(n)-2]`
-/

namespace A140368.P2441328164887629330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P2441328164887629330

namespace A140368

/-- `∩[A071904(n+1), A186113(n)-2]` -/
def P2441328164887629330.Spec : Prop :=
  ∀ n, (P2441328164887629330.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P308592311355790336

`∩[A014076(n+1), A131877(n)+3-n]`
-/

namespace A140368.P308592311355790336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + (3 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P308592311355790336

namespace A140368

/-- `∩[A014076(n+1), A131877(n)+3-n]` -/
def P308592311355790336.Spec : Prop :=
  ∀ n, (P308592311355790336.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P16758710793734433965

`∩[A306285(2*(n+1))-A306285(n+2), A014076(n+2)]`
-/

namespace A140368.P16758710793734433965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1)) - A306285 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P16758710793734433965

namespace A140368

/-- `∩[A306285(2*(n+1))-A306285(n+2), A014076(n+2)]` -/
def P16758710793734433965.Spec : Prop :=
  ∀ n, (P16758710793734433965.a n : ℤ) = A140368 (n + 1)

end A140368

/-! ## A140368.P4548098959430109039

`∩[A306285(2*(n+1))-A306285(n+2), A071904(n+2)]`
-/

namespace A140368.P4548098959430109039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1)) - A306285 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140368.P4548098959430109039

namespace A140368

/-- `∩[A306285(2*(n+1))-A306285(n+2), A071904(n+2)]` -/
def P4548098959430109039.Spec : Prop :=
  ∀ n, (P4548098959430109039.a n : ℤ) = A140368 (n + 1)

end A140368

/-!
# A140369: Composites of the form 26k + 19.

The programs for A140369, the canonical program `A140369.P7518629714154131444` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140369 has offset 1).

The definition of A140369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140369.P570449001790532475

`record[A171435(A186113(2*n+3))]`
-/

namespace A140369.P570449001790532475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A186113 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140369.P570449001790532475

namespace A140369

/-- `record[A171435(A186113(2*n+3))]` -/
def P570449001790532475.Spec : Prop :=
  ∀ n, P570449001790532475.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P7518629714154131444

`filter[A063233(2*(n+1)), A354108(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140369

/-- `filter[A063233(2*(n+1)), A354108(#)]` -/
def P7518629714154131444.Spec : Prop :=
  ∀ n, P7518629714154131444.a n = A140369 (n + 1)

theorem P7518629714154131444.correct : P7518629714154131444.Spec := by
  intro n
  simp only [A140369, Nat.add_sub_cancel]

end A140369

/-! ## A140369.P3131824814471568181

`filter[A186113(2*n+1), A354108(#)]`
-/

namespace A140369.P3131824814471568181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A140369.P3131824814471568181

namespace A140369

/-- `filter[A186113(2*n+1), A354108(#)]` -/
def P3131824814471568181.Spec : Prop :=
  ∀ n, P3131824814471568181.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P3584074313730202654

`filter[A063233(2*(n+1)), A005171(#)]`
-/

namespace A140369.P3584074313730202654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140369.P3584074313730202654

namespace A140369

/-- `filter[A063233(2*(n+1)), A005171(#)]` -/
def P3584074313730202654.Spec : Prop :=
  ∀ n, P3584074313730202654.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P14318801387863549913

`filter[A063233(2*(n+1)), A066247(#)]`
-/

namespace A140369.P14318801387863549913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140369.P14318801387863549913

namespace A140369

/-- `filter[A063233(2*(n+1)), A066247(#)]` -/
def P14318801387863549913.Spec : Prop :=
  ∀ n, P14318801387863549913.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P7147546118600986611

`filter[A186113(2*n+1), A005171(#)]`
-/

namespace A140369.P7147546118600986611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140369.P7147546118600986611

namespace A140369

/-- `filter[A186113(2*n+1), A005171(#)]` -/
def P7147546118600986611.Spec : Prop :=
  ∀ n, P7147546118600986611.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P12697309364484287996

`filter[A186113(2*n+1), A066247(#)]`
-/

namespace A140369.P12697309364484287996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140369.P12697309364484287996

namespace A140369

/-- `filter[A186113(2*n+1), A066247(#)]` -/
def P12697309364484287996.Spec : Prop :=
  ∀ n, P12697309364484287996.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P6713121620601766227

`filter[A063233(2*(n+1)), A202238(#)]`
-/

namespace A140369.P6713121620601766227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140369.P6713121620601766227

namespace A140369

/-- `filter[A063233(2*(n+1)), A202238(#)]` -/
def P6713121620601766227.Spec : Prop :=
  ∀ n, P6713121620601766227.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P1269875288349619323

`filter[A063233(2*(n+1)), A292438(#)]`
-/

namespace A140369.P1269875288349619323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140369.P1269875288349619323

namespace A140369

/-- `filter[A063233(2*(n+1)), A292438(#)]` -/
def P1269875288349619323.Spec : Prop :=
  ∀ n, P1269875288349619323.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P15081902576482288802

`filter[A063233(2*(n+1)), A323162(#)]`
-/

namespace A140369.P15081902576482288802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140369.P15081902576482288802

namespace A140369

/-- `filter[A063233(2*(n+1)), A323162(#)]` -/
def P15081902576482288802.Spec : Prop :=
  ∀ n, P15081902576482288802.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P13715738086219418130

`filter[A186113(2*n+1), A202238(#)]`
-/

namespace A140369.P13715738086219418130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140369.P13715738086219418130

namespace A140369

/-- `filter[A186113(2*n+1), A202238(#)]` -/
def P13715738086219418130.Spec : Prop :=
  ∀ n, P13715738086219418130.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P1008574147697260780

`filter[A186113(2*n+1), A292438(#)]`
-/

namespace A140369.P1008574147697260780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140369.P1008574147697260780

namespace A140369

/-- `filter[A186113(2*n+1), A292438(#)]` -/
def P1008574147697260780.Spec : Prop :=
  ∀ n, P1008574147697260780.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P4610937612787672183

`filter[A186113(2*n+1), A323162(#)]`
-/

namespace A140369.P4610937612787672183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140369.P4610937612787672183

namespace A140369

/-- `filter[A186113(2*n+1), A323162(#)]` -/
def P4610937612787672183.Spec : Prop :=
  ∀ n, P4610937612787672183.a n = A140369 (n + 1)

end A140369

/-! ## A140369.P6878120237691465340

`∩[A082686(n+1), A186113(n)]`
-/

namespace A140369.P6878120237691465340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140369.P6878120237691465340

namespace A140369

/-- `∩[A082686(n+1), A186113(n)]` -/
def P6878120237691465340.Spec : Prop :=
  ∀ n, (P6878120237691465340.a n : ℤ) = A140369 (n + 1)

end A140369

/-! ## A140369.P12084896757319319478

`∩[A061346(n+1), A186113(n)]`
-/

namespace A140369.P12084896757319319478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140369.P12084896757319319478

namespace A140369

/-- `∩[A061346(n+1), A186113(n)]` -/
def P12084896757319319478.Spec : Prop :=
  ∀ n, (P12084896757319319478.a n : ℤ) = A140369 (n + 1)

end A140369

/-! ## A140369.P456853550113215677

`∩[A226025(n+1), A186113(n)]`
-/

namespace A140369.P456853550113215677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140369.P456853550113215677

namespace A140369

/-- `∩[A226025(n+1), A186113(n)]` -/
def P456853550113215677.Spec : Prop :=
  ∀ n, (P456853550113215677.a n : ℤ) = A140369 (n + 1)

end A140369

/-! ## A140369.P11705473024268772667

`∩[A226025(n+1), A154609(n)+1]`
-/

namespace A140369.P11705473024268772667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140369.P11705473024268772667

namespace A140369

/-- `∩[A226025(n+1), A154609(n)+1]` -/
def P11705473024268772667.Spec : Prop :=
  ∀ n, (P11705473024268772667.a n : ℤ) = A140369 (n + 1)

end A140369

/-! ## A140369.P2877252841653953988

`∩[A226025(n+1), A306285(n+1)-2]`
-/

namespace A140369.P2877252841653953988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140369.P2877252841653953988

namespace A140369

/-- `∩[A226025(n+1), A306285(n+1)-2]` -/
def P2877252841653953988.Spec : Prop :=
  ∀ n, (P2877252841653953988.a n : ℤ) = A140369 (n + 1)

end A140369

/-! ## A140369.P16927505735595767038

`∩[A014076(n+1), A186113(n)]`
-/

namespace A140369.P16927505735595767038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140369.P16927505735595767038

namespace A140369

/-- `∩[A014076(n+1), A186113(n)]` -/
def P16927505735595767038.Spec : Prop :=
  ∀ n, (P16927505735595767038.a n : ℤ) = A140369 (n + 1)

end A140369

/-! ## A140369.P17348634406614092746

`∩[A071904(n+1), A186113(n)]`
-/

namespace A140369.P17348634406614092746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140369.P17348634406614092746

namespace A140369

/-- `∩[A071904(n+1), A186113(n)]` -/
def P17348634406614092746.Spec : Prop :=
  ∀ n, (P17348634406614092746.a n : ℤ) = A140369 (n + 1)

end A140369

/-!
# A140370: Composites of the form 26k + 21.

The programs for A140370, the canonical program `A140370.P11945933179841790018` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140370 has offset 1).

The definition of A140370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140370.P11945933179841790018

`record[A171435(A306285(2*(n+1)))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140370

/-- `record[A171435(A306285(2*(n+1)))]` -/
def P11945933179841790018.Spec : Prop :=
  ∀ n, P11945933179841790018.a n = A140370 (n + 1)

theorem P11945933179841790018.correct : P11945933179841790018.Spec := by
  intro n
  simp only [A140370, Nat.add_sub_cancel]

end A140370

/-! ## A140370.P14578988370299576141

`record[A171435(A186113(2*n+1)+2)]`
-/

namespace A140370.P14578988370299576141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A186113 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140370.P14578988370299576141

namespace A140370

/-- `record[A171435(A186113(2*n+1)+2)]` -/
def P14578988370299576141.Spec : Prop :=
  ∀ n, P14578988370299576141.a n = A140370 (n + 1)

end A140370

/-! ## A140370.P4034112424540403276

`filter[A306285(2*(n+1)), A005171(#)]`
-/

namespace A140370.P4034112424540403276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140370.P4034112424540403276

namespace A140370

/-- `filter[A306285(2*(n+1)), A005171(#)]` -/
def P4034112424540403276.Spec : Prop :=
  ∀ n, P4034112424540403276.a n = A140370 (n + 1)

end A140370

/-! ## A140370.P7641917086220613705

`filter[A306285(2*(n+1)), A066247(#)]`
-/

namespace A140370.P7641917086220613705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140370.P7641917086220613705

namespace A140370

/-- `filter[A306285(2*(n+1)), A066247(#)]` -/
def P7641917086220613705.Spec : Prop :=
  ∀ n, P7641917086220613705.a n = A140370 (n + 1)

end A140370

/-! ## A140370.P18279945255429636235

`filter[A306285(2*(n+1)), A202238(#)]`
-/

namespace A140370.P18279945255429636235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140370.P18279945255429636235

namespace A140370

/-- `filter[A306285(2*(n+1)), A202238(#)]` -/
def P18279945255429636235.Spec : Prop :=
  ∀ n, P18279945255429636235.a n = A140370 (n + 1)

end A140370

/-! ## A140370.P14275690862232500092

`filter[A306285(2*(n+1)), A292438(#)]`
-/

namespace A140370.P14275690862232500092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140370.P14275690862232500092

namespace A140370

/-- `filter[A306285(2*(n+1)), A292438(#)]` -/
def P14275690862232500092.Spec : Prop :=
  ∀ n, P14275690862232500092.a n = A140370 (n + 1)

end A140370

/-! ## A140370.P14745746336045845231

`filter[A306285(2*(n+1)), A323162(#)]`
-/

namespace A140370.P14745746336045845231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140370.P14745746336045845231

namespace A140370

/-- `filter[A306285(2*(n+1)), A323162(#)]` -/
def P14745746336045845231.Spec : Prop :=
  ∀ n, P14745746336045845231.a n = A140370 (n + 1)

end A140370

/-! ## A140370.P15123507839703637810

`eq[lcm(13, A323161(n+1)), A322809(n+1)]`
-/

namespace A140370.P15123507839703637810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (A323161 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140370.P15123507839703637810

namespace A140370

/-- `eq[lcm(13, A323161(n+1)), A322809(n+1)]` -/
def P15123507839703637810.Spec : Prop :=
  ∀ n, (P15123507839703637810.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P8261167068412532329

`∩[A103246(n+1), A306285(n+1)]`
-/

namespace A140370.P8261167068412532329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P8261167068412532329

namespace A140370

/-- `∩[A103246(n+1), A306285(n+1)]` -/
def P8261167068412532329.Spec : Prop :=
  ∀ n, (P8261167068412532329.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P8459520719303124848

`∩[A082686(n+1), A306285(n+1)]`
-/

namespace A140370.P8459520719303124848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P8459520719303124848

namespace A140370

/-- `∩[A082686(n+1), A306285(n+1)]` -/
def P8459520719303124848.Spec : Prop :=
  ∀ n, (P8459520719303124848.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P8393660036373241500

`∩[A226025(n+1), A306285(n+1)]`
-/

namespace A140370.P8393660036373241500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P8393660036373241500

namespace A140370

/-- `∩[A226025(n+1), A306285(n+1)]` -/
def P8393660036373241500.Spec : Prop :=
  ∀ n, (P8393660036373241500.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P12818975165395617275

`∩[A226025(n+1), A186113(n)+2]`
-/

namespace A140370.P12818975165395617275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P12818975165395617275

namespace A140370

/-- `∩[A226025(n+1), A186113(n)+2]` -/
def P12818975165395617275.Spec : Prop :=
  ∀ n, (P12818975165395617275.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P6460639784217576557

`∩[A014076(n+1), A306285(n+1)]`
-/

namespace A140370.P6460639784217576557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P6460639784217576557

namespace A140370

/-- `∩[A014076(n+1), A306285(n+1)]` -/
def P6460639784217576557.Spec : Prop :=
  ∀ n, (P6460639784217576557.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P8774656461809357945

`∩[A071904(n+1), A306285(n+1)]`
-/

namespace A140370.P8774656461809357945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P8774656461809357945

namespace A140370

/-- `∩[A071904(n+1), A306285(n+1)]` -/
def P8774656461809357945.Spec : Prop :=
  ∀ n, (P8774656461809357945.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P5668065901094823022

`∩[A014076(n+1), A186113(n)+2]`
-/

namespace A140370.P5668065901094823022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P5668065901094823022

namespace A140370

/-- `∩[A014076(n+1), A186113(n)+2]` -/
def P5668065901094823022.Spec : Prop :=
  ∀ n, (P5668065901094823022.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P13263171569279216178

`∩[A071904(n+1), A186113(n)+2]`
-/

namespace A140370.P13263171569279216178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P13263171569279216178

namespace A140370

/-- `∩[A071904(n+1), A186113(n)+2]` -/
def P13263171569279216178.Spec : Prop :=
  ∀ n, (P13263171569279216178.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P10571859155744469128

`record[A171435(A004273(A269100(n)))]`
-/

namespace A140370.P10571859155744469128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A004273 (A269100 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140370.P10571859155744469128

namespace A140370

/-- `record[A171435(A004273(A269100(n)))]` -/
def P10571859155744469128.Spec : Prop :=
  ∀ n, P10571859155744469128.a n = A140370 (n + 1)

end A140370

/-! ## A140370.P7741610412161887583

`∩[A100764(2*(n+1))+n, A014076(n+2)]`
-/

namespace A140370.P7741610412161887583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P7741610412161887583

namespace A140370

/-- `∩[A100764(2*(n+1))+n, A014076(n+2)]` -/
def P7741610412161887583.Spec : Prop :=
  ∀ n, (P7741610412161887583.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P14159307750473776336

`∩[A016993(2*n+1)-n, A014076(n+2)]`
-/

namespace A140370.P14159307750473776336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P14159307750473776336

namespace A140370

/-- `∩[A016993(2*n+1)-n, A014076(n+2)]` -/
def P14159307750473776336.Spec : Prop :=
  ∀ n, (P14159307750473776336.a n : ℤ) = A140370 (n + 1)

end A140370

/-! ## A140370.P17712240738020198057

`∩[A026476(2*(n+1))-n, A071904(n+2)]`
-/

namespace A140370.P17712240738020198057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140370.P17712240738020198057

namespace A140370

/-- `∩[A026476(2*(n+1))-n, A071904(n+2)]` -/
def P17712240738020198057.Spec : Prop :=
  ∀ n, (P17712240738020198057.a n : ℤ) = A140370 (n + 1)

end A140370

/-!
# A140371: Primes of the form 26k + 7.

The programs for A140371, the canonical program `A140371.P8695306409615514492` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140371 has offset 1).

The definition of A140371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140371.P8695306409615514492

`∪[A142163(n+1), A142171(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140371

/-- `∪[A142163(n+1), A142171(n+1)]` -/
def P8695306409615514492.Spec : Prop :=
  ∀ n, (P8695306409615514492.a n : ℤ) = A140371 (n + 1)

theorem P8695306409615514492.correct : P8695306409615514492.Spec := by
  intro n
  simp only [A140371, Nat.add_sub_cancel]

end A140371

/-! ## A140371.P6995820507034355180

`∪[A142511(n+1), A142523(n+1)]`
-/

namespace A140371.P6995820507034355180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P6995820507034355180

namespace A140371

/-- `∪[A142511(n+1), A142523(n+1)]` -/
def P6995820507034355180.Spec : Prop :=
  ∀ n, (P6995820507034355180.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P5509764702097083159

`p?[13*n-6]`
-/

namespace A140371.P5509764702097083159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140371.P5509764702097083159

namespace A140371

/-- `p?[13*n-6]` -/
def P5509764702097083159.Spec : Prop :=
  ∀ n, P5509764702097083159.a n = A140371 (n + 1)

end A140371

/-! ## A140371.P13670066124678340742

`or(1, p?[26*n+7])`
-/

namespace A140371.P13670066124678340742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140371.P13670066124678340742

namespace A140371

/-- `or(1, p?[26*n+7])` -/
def P13670066124678340742.Spec : Prop :=
  ∀ n, (P13670066124678340742.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P216643179082969564

`∏{d}[p?[a(n-1)+13], #]` with `a(0)=7`
-/

namespace A140371.P216643179082969564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A140371.P216643179082969564

namespace A140371

/-- `∏{d}[p?[a(n-1)+13], #]` -/
def P216643179082969564.Spec : Prop :=
  ∀ n, (P216643179082969564.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P12861341038972782381

`lcm(p?[26*n+7], A010892(A008486(n)))`
-/

namespace A140371.P12861341038972782381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A010892 (A008486 n).toNat)

end

end A140371.P12861341038972782381

namespace A140371

/-- `lcm(p?[26*n+7], A010892(A008486(n)))` -/
def P12861341038972782381.Spec : Prop :=
  ∀ n, (P12861341038972782381.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P15381586748806179829

`∏{d}[p?[A269044(n)], #]`
-/

namespace A140371.P15381586748806179829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A140371.P15381586748806179829

namespace A140371

/-- `∏{d}[p?[A269044(n)], #]` -/
def P15381586748806179829.Spec : Prop :=
  ∀ n, (P15381586748806179829.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P6945257533169729073

`A000027(p?[A269044(n)])`
-/

namespace A140371.P6945257533169729073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A140371.P6945257533169729073

namespace A140371

/-- `A000027(p?[A269044(n)])` -/
def P6945257533169729073.Spec : Prop :=
  ∀ n, P6945257533169729073.a n = A140371 (n + 1)

end A140371

/-! ## A140371.P11336361146904928979

`∩[A038884(n+1), A269044(n)]`
-/

namespace A140371.P11336361146904928979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P11336361146904928979

namespace A140371

/-- `∩[A038884(n+1), A269044(n)]` -/
def P11336361146904928979.Spec : Prop :=
  ∀ n, (P11336361146904928979.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P11419333527272348799

`∩[A040127(n+1), A269044(n)]`
-/

namespace A140371.P11419333527272348799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P11419333527272348799

namespace A140371

/-- `∩[A040127(n+1), A269044(n)]` -/
def P11419333527272348799.Spec : Prop :=
  ∀ n, (P11419333527272348799.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P1650089718776819063

`∩[A120330(n+1), A269044(n)]`
-/

namespace A140371.P1650089718776819063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P1650089718776819063

namespace A140371

/-- `∩[A120330(n+1), A269044(n)]` -/
def P1650089718776819063.Spec : Prop :=
  ∀ n, (P1650089718776819063.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P17991191508000578128

`∩[A167119(n+1), A269044(n)]`
-/

namespace A140371.P17991191508000578128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P17991191508000578128

namespace A140371

/-- `∩[A167119(n+1), A269044(n)]` -/
def P17991191508000578128.Spec : Prop :=
  ∀ n, (P17991191508000578128.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P2890465708193447897

`∩[A215155(n+1), A269044(n)]`
-/

namespace A140371.P2890465708193447897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P2890465708193447897

namespace A140371

/-- `∩[A215155(n+1), A269044(n)]` -/
def P2890465708193447897.Spec : Prop :=
  ∀ n, (P2890465708193447897.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P5026934723309950121

`∩[A215207(n+1), A269044(n)]`
-/

namespace A140371.P5026934723309950121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P5026934723309950121

namespace A140371

/-- `∩[A215207(n+1), A269044(n)]` -/
def P5026934723309950121.Spec : Prop :=
  ∀ n, (P5026934723309950121.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P1194951069519791712

`∩[A215211(n+1), A269044(n)]`
-/

namespace A140371.P1194951069519791712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P1194951069519791712

namespace A140371

/-- `∩[A215211(n+1), A269044(n)]` -/
def P1194951069519791712.Spec : Prop :=
  ∀ n, (P1194951069519791712.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P6211773824216913929

`∩[A038884(n+1), A186113(n)+1]`
-/

namespace A140371.P6211773824216913929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P6211773824216913929

namespace A140371

/-- `∩[A038884(n+1), A186113(n)+1]` -/
def P6211773824216913929.Spec : Prop :=
  ∀ n, (P6211773824216913929.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P6641013027485950272

`∩[A040127(n+1), A186113(n)+1]`
-/

namespace A140371.P6641013027485950272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P6641013027485950272

namespace A140371

/-- `∩[A040127(n+1), A186113(n)+1]` -/
def P6641013027485950272.Spec : Prop :=
  ∀ n, (P6641013027485950272.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P1337006779516472067

`∩[A038884(n+1), A154609(n)+2]`
-/

namespace A140371.P1337006779516472067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P1337006779516472067

namespace A140371

/-- `∩[A038884(n+1), A154609(n)+2]` -/
def P1337006779516472067.Spec : Prop :=
  ∀ n, (P1337006779516472067.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P7136896773221292411

`∩[A040127(n+1), A154609(n)+2]`
-/

namespace A140371.P7136896773221292411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P7136896773221292411

namespace A140371

/-- `∩[A040127(n+1), A154609(n)+2]` -/
def P7136896773221292411.Spec : Prop :=
  ∀ n, (P7136896773221292411.a n : ℤ) = A140371 (n + 1)

end A140371

/-! ## A140371.P10238862351007351702

`∩[A167119(n+1), A154609(n)+2]`
-/

namespace A140371.P10238862351007351702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140371.P10238862351007351702

namespace A140371

/-- `∩[A167119(n+1), A154609(n)+2]` -/
def P10238862351007351702.Spec : Prop :=
  ∀ n, (P10238862351007351702.a n : ℤ) = A140371 (n + 1)

end A140371

/-!
# A140372: Primes of the form 26k + 9.

The programs for A140372, the canonical program `A140372.P4605066223831443741` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140372 has offset 1).

The definition of A140372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140372.P4605066223831443741

`∪[A142172(n+1), A142180(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140372

/-- `∪[A142172(n+1), A142180(n+1)]` -/
def P4605066223831443741.Spec : Prop :=
  ∀ n, (P4605066223831443741.a n : ℤ) = A140372 (n + 1)

theorem P4605066223831443741.correct : P4605066223831443741.Spec := by
  intro n
  simp only [A140372, Nat.add_sub_cancel]

end A140372

/-! ## A140372.P14409552511937944625

`∪[A142512(n+1), A142524(n+1)]`
-/

namespace A140372.P14409552511937944625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P14409552511937944625

namespace A140372

/-- `∪[A142512(n+1), A142524(n+1)]` -/
def P14409552511937944625.Spec : Prop :=
  ∀ n, (P14409552511937944625.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P6189695487027934574

`p?[13*n-4]`
-/

namespace A140372.P6189695487027934574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140372.P6189695487027934574

namespace A140372

/-- `p?[13*n-4]` -/
def P6189695487027934574.Spec : Prop :=
  ∀ n, P6189695487027934574.a n = A140372 (n + 1)

end A140372

/-! ## A140372.P11747551335474840879

`or(1, p?[13*n+9])`
-/

namespace A140372.P11747551335474840879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140372.P11747551335474840879

namespace A140372

/-- `or(1, p?[13*n+9])` -/
def P11747551335474840879.Spec : Prop :=
  ∀ n, (P11747551335474840879.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P14111479954606111935

`A000007(n+1)+p?[A017617(n)+1+n]`
-/

namespace A140372.P14111479954606111935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140372.P14111479954606111935

namespace A140372

/-- `A000007(n+1)+p?[A017617(n)+1+n]` -/
def P14111479954606111935.Spec : Prop :=
  ∀ n, P14111479954606111935.a n = A140372 (n + 1)

end A140372

/-! ## A140372.P9097709642379211941

`∩[A049545(n+1), A269100(n)-2]`
-/

namespace A140372.P9097709642379211941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P9097709642379211941

namespace A140372

/-- `∩[A049545(n+1), A269100(n)-2]` -/
def P9097709642379211941.Spec : Prop :=
  ∀ n, (P9097709642379211941.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P15322256164054951338

`∩[A070957(n+1), A269100(n)-2]`
-/

namespace A140372.P15322256164054951338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P15322256164054951338

namespace A140372

/-- `∩[A070957(n+1), A269100(n)-2]` -/
def P15322256164054951338.Spec : Prop :=
  ∀ n, (P15322256164054951338.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P18165855323098499652

`∩[12*n+9+n, A008578(n+2)]`
-/

namespace A140372.P18165855323098499652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 9 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P18165855323098499652

namespace A140372

/-- `∩[12*n+9+n, A008578(n+2)]` -/
def P18165855323098499652.Spec : Prop :=
  ∀ n, (P18165855323098499652.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P1068385961982859904

`∩[A000040(n+1), A269100(n)-2]`
-/

namespace A140372.P1068385961982859904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P1068385961982859904

namespace A140372

/-- `∩[A000040(n+1), A269100(n)-2]` -/
def P1068385961982859904.Spec : Prop :=
  ∀ n, (P1068385961982859904.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P19893124792170793

`∩[A004139(n+1), A269100(n)-2]`
-/

namespace A140372.P19893124792170793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P19893124792170793

namespace A140372

/-- `∩[A004139(n+1), A269100(n)-2]` -/
def P19893124792170793.Spec : Prop :=
  ∀ n, (P19893124792170793.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P4042108993615651978

`∩[A006005(n+1), A269100(n)-2]`
-/

namespace A140372.P4042108993615651978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P4042108993615651978

namespace A140372

/-- `∩[A006005(n+1), A269100(n)-2]` -/
def P4042108993615651978.Spec : Prop :=
  ∀ n, (P4042108993615651978.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P2593295857887957224

`∩[A008578(n+1), A269100(n)-2]`
-/

namespace A140372.P2593295857887957224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P2593295857887957224

namespace A140372

/-- `∩[A008578(n+1), A269100(n)-2]` -/
def P2593295857887957224.Spec : Prop :=
  ∀ n, (P2593295857887957224.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P8788109298525309945

`∩[A045319(n+1), A269100(n)-2]`
-/

namespace A140372.P8788109298525309945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P8788109298525309945

namespace A140372

/-- `∩[A045319(n+1), A269100(n)-2]` -/
def P8788109298525309945.Spec : Prop :=
  ∀ n, (P8788109298525309945.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P5394309597948384698

`∩[A045344(n+1), A269100(n)-2]`
-/

namespace A140372.P5394309597948384698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P5394309597948384698

namespace A140372

/-- `∩[A045344(n+1), A269100(n)-2]` -/
def P5394309597948384698.Spec : Prop :=
  ∀ n, (P5394309597948384698.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P14381646580602301418

`∩[A269100(n)+11, A033946(n+2)]`
-/

namespace A140372.P14381646580602301418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P14381646580602301418

namespace A140372

/-- `∩[A269100(n)+11, A033946(n+2)]` -/
def P14381646580602301418.Spec : Prop :=
  ∀ n, (P14381646580602301418.a n : ℤ) = A140372 (n + 1)

end A140372

/-! ## A140372.P17284070155436722399

`A000265(p?[26*n+9])`
-/

namespace A140372.P17284070155436722399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140372.P17284070155436722399

namespace A140372

/-- `A000265(p?[26*n+9])` -/
def P17284070155436722399.Spec : Prop :=
  ∀ n, P17284070155436722399.a n = A140372 (n + 1)

end A140372

/-! ## A140372.P781669942350394561

`A000040(A000720(p?[26*n+9]))`
-/

namespace A140372.P781669942350394561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A140372.P781669942350394561

namespace A140372

/-- `A000040(A000720(p?[26*n+9]))` -/
def P781669942350394561.Spec : Prop :=
  ∀ n, P781669942350394561.a n = A140372 (n + 1)

end A140372

/-! ## A140372.P6972185289233414463

`filter[A092464(2*(n+1)), A010051(#)]`
-/

namespace A140372.P6972185289233414463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092464 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A140372.P6972185289233414463

namespace A140372

/-- `filter[A092464(2*(n+1)), A010051(#)]` -/
def P6972185289233414463.Spec : Prop :=
  ∀ n, P6972185289233414463.a n = A140372 (n + 1)

end A140372

/-! ## A140372.P12511930390298650396

`filter[A092464(2*(n+1)), A323153(#)]`
-/

namespace A140372.P12511930390298650396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092464 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A140372.P12511930390298650396

namespace A140372

/-- `filter[A092464(2*(n+1)), A323153(#)]` -/
def P12511930390298650396.Spec : Prop :=
  ∀ n, P12511930390298650396.a n = A140372 (n + 1)

end A140372

/-! ## A140372.P12736731445434223328

`∩[A212160(2*n+1)-1, A038883(n+2)]`
-/

namespace A140372.P12736731445434223328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212160 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140372.P12736731445434223328

namespace A140372

/-- `∩[A212160(2*n+1)-1, A038883(n+2)]` -/
def P12736731445434223328.Spec : Prop :=
  ∀ n, (P12736731445434223328.a n : ℤ) = A140372 (n + 1)

end A140372

/-!
# A140373: Primes of the form 26*n+11.

The programs for A140373, the canonical program `A140373.P1707321820406862748` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140373 has offset 1).

The definition of A140373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140373.P1707321820406862748

`∪[A142166(n+1), A142181(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140373

/-- `∪[A142166(n+1), A142181(n+1)]` -/
def P1707321820406862748.Spec : Prop :=
  ∀ n, (P1707321820406862748.a n : ℤ) = A140373 (n + 1)

theorem P1707321820406862748.correct : P1707321820406862748.Spec := by
  intro n
  simp only [A140373, Nat.add_sub_cancel]

end A140373

/-! ## A140373.P11196182272121338998

`∪[A142513(n+1), A142525(n+1)]`
-/

namespace A140373.P11196182272121338998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P11196182272121338998

namespace A140373

/-- `∪[A142513(n+1), A142525(n+1)]` -/
def P11196182272121338998.Spec : Prop :=
  ∀ n, (P11196182272121338998.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P15997527517604850863

`p?[13*n-2]`
-/

namespace A140373.P15997527517604850863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140373.P15997527517604850863

namespace A140373

/-- `p?[13*n-2]` -/
def P15997527517604850863.Spec : Prop :=
  ∀ n, P15997527517604850863.a n = A140373 (n + 1)

end A140373

/-! ## A140373.P15893543251541873964

`or(1, p?[a(n-1)+13])` with `a(0)=11`
-/

namespace A140373.P15893543251541873964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140373.P15893543251541873964

namespace A140373

/-- `or(1, p?[a(n-1)+13])` -/
def P15893543251541873964.Spec : Prop :=
  ∀ n, (P15893543251541873964.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P15356157965042995116

`∏{d}[p?[a(n-1)+13], #]` with `a(0)=11`
-/

namespace A140373.P15356157965042995116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A140373.P15356157965042995116

namespace A140373

/-- `∏{d}[p?[a(n-1)+13], #]` -/
def P15356157965042995116.Spec : Prop :=
  ∀ n, (P15356157965042995116.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P10814991416113330527

`or(1, p?[A269100(n)])`
-/

namespace A140373.P10814991416113330527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140373.P10814991416113330527

namespace A140373

/-- `or(1, p?[A269100(n)])` -/
def P10814991416113330527.Spec : Prop :=
  ∀ n, P10814991416113330527.a n = A140373 (n + 1)

end A140373

/-! ## A140373.P16248482498215849755

`A269100(A111369(n+1))`
-/

namespace A140373.P16248482498215849755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (A111369 (n + 1)).toNat

end

end A140373.P16248482498215849755

namespace A140373

/-- `A269100(A111369(n+1))` -/
def P16248482498215849755.Spec : Prop :=
  ∀ n, P16248482498215849755.a n = A140373 (n + 1)

end A140373

/-! ## A140373.P16901074520955090334

`∩[A038884(n+1), A269100(n)]`
-/

namespace A140373.P16901074520955090334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P16901074520955090334

namespace A140373

/-- `∩[A038884(n+1), A269100(n)]` -/
def P16901074520955090334.Spec : Prop :=
  ∀ n, (P16901074520955090334.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P14302094466512857423

`∩[A040127(n+1), A269100(n)]`
-/

namespace A140373.P14302094466512857423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P14302094466512857423

namespace A140373

/-- `∩[A040127(n+1), A269100(n)]` -/
def P14302094466512857423.Spec : Prop :=
  ∀ n, (P14302094466512857423.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P6519246431598429540

`∩[A120330(n+1), A269100(n)]`
-/

namespace A140373.P6519246431598429540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P6519246431598429540

namespace A140373

/-- `∩[A120330(n+1), A269100(n)]` -/
def P6519246431598429540.Spec : Prop :=
  ∀ n, (P6519246431598429540.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P631123199747103830

`∩[A140561(n+1), A269100(n)]`
-/

namespace A140373.P631123199747103830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P631123199747103830

namespace A140373

/-- `∩[A140561(n+1), A269100(n)]` -/
def P631123199747103830.Spec : Prop :=
  ∀ n, (P631123199747103830.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P8700141384590897779

`∩[A167119(n+1), A269100(n)]`
-/

namespace A140373.P8700141384590897779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P8700141384590897779

namespace A140373

/-- `∩[A167119(n+1), A269100(n)]` -/
def P8700141384590897779.Spec : Prop :=
  ∀ n, (P8700141384590897779.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P15374375515986915657

`∩[A049545(n+1), A269100(n)]`
-/

namespace A140373.P15374375515986915657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P15374375515986915657

namespace A140373

/-- `∩[A049545(n+1), A269100(n)]` -/
def P15374375515986915657.Spec : Prop :=
  ∀ n, (P15374375515986915657.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P8804382838287608733

`∩[A216285(n+1), A269100(n)]`
-/

namespace A140373.P8804382838287608733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P8804382838287608733

namespace A140373

/-- `∩[A216285(n+1), A269100(n)]` -/
def P8804382838287608733.Spec : Prop :=
  ∀ n, (P8804382838287608733.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P7386733203636652340

`∩[A070957(n+1), A269100(n)]`
-/

namespace A140373.P7386733203636652340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P7386733203636652340

namespace A140373

/-- `∩[A070957(n+1), A269100(n)]` -/
def P7386733203636652340.Spec : Prop :=
  ∀ n, (P7386733203636652340.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P17857131242365106856

`∩[A087490(n+1), A269100(n)]`
-/

namespace A140373.P17857131242365106856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P17857131242365106856

namespace A140373

/-- `∩[A087490(n+1), A269100(n)]` -/
def P17857131242365106856.Spec : Prop :=
  ∀ n, (P17857131242365106856.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P6343720415362349681

`∩[A000040(n+1), A269100(n)]`
-/

namespace A140373.P6343720415362349681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P6343720415362349681

namespace A140373

/-- `∩[A000040(n+1), A269100(n)]` -/
def P6343720415362349681.Spec : Prop :=
  ∀ n, (P6343720415362349681.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P3569927340644079203

`∩[A004139(n+1), A269100(n)]`
-/

namespace A140373.P3569927340644079203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P3569927340644079203

namespace A140373

/-- `∩[A004139(n+1), A269100(n)]` -/
def P3569927340644079203.Spec : Prop :=
  ∀ n, (P3569927340644079203.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P12140084259624815599

`∩[A006005(n+1), A269100(n)]`
-/

namespace A140373.P12140084259624815599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P12140084259624815599

namespace A140373

/-- `∩[A006005(n+1), A269100(n)]` -/
def P12140084259624815599.Spec : Prop :=
  ∀ n, (P12140084259624815599.a n : ℤ) = A140373 (n + 1)

end A140373

/-! ## A140373.P10274221304530204502

`∩[A008578(n+1), A269100(n)]`
-/

namespace A140373.P10274221304530204502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140373.P10274221304530204502

namespace A140373

/-- `∩[A008578(n+1), A269100(n)]` -/
def P10274221304530204502.Spec : Prop :=
  ∀ n, (P10274221304530204502.a n : ℤ) = A140373 (n + 1)

end A140373

/-!
# A140374: Primes of the form 26k + 15.

The programs for A140374, the canonical program `A140374.P8397756464974821000` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140374 has offset 1).

The definition of A140374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140374.P8397756464974821000

`∪[A142514(n+1), A142526(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140374

/-- `∪[A142514(n+1), A142526(n+1)]` -/
def P8397756464974821000.Spec : Prop :=
  ∀ n, (P8397756464974821000.a n : ℤ) = A140374 (n + 1)

theorem P8397756464974821000.correct : P8397756464974821000.Spec := by
  intro n
  simp only [A140374, Nat.add_sub_cancel]

end A140374

/-! ## A140374.P5086780456983766520

`A141858(n+2)`
-/

namespace A140374.P5086780456983766520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 2)

end

end A140374.P5086780456983766520

namespace A140374

/-- `A141858(n+2)` -/
def P5086780456983766520.Spec : Prop :=
  ∀ n, P5086780456983766520.a n = A140374 (n + 1)

end A140374

/-! ## A140374.P13215191309249092769

`p?[13*n+15]`
-/

namespace A140374.P13215191309249092769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140374.P13215191309249092769

namespace A140374

/-- `p?[13*n+15]` -/
def P13215191309249092769.Spec : Prop :=
  ∀ n, (P13215191309249092769.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P17347964066904242096

`or(1, p?[a(n-1)+13])` with `a(0)=15`
-/

namespace A140374.P17347964066904242096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140374.P17347964066904242096

namespace A140374

/-- `or(1, p?[a(n-1)+13])` -/
def P17347964066904242096.Spec : Prop :=
  ∀ n, (P17347964066904242096.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P611629652332085442

`record[p?[a(n-2)+26]]` with `a(0)=41, a(1)=2`
-/

namespace A140374.P611629652332085442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [41, 2] fun n f2 =>
  f2 (n - 2) + 26

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140374.P611629652332085442

namespace A140374

/-- `record[p?[a(n-2)+26]]` -/
def P611629652332085442.Spec : Prop :=
  ∀ n, (P611629652332085442.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P10760469564442337723

`∩[A214889(n+1), A215168(n+2)]`
-/

namespace A140374.P10760469564442337723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P10760469564442337723

namespace A140374

/-- `∩[A214889(n+1), A215168(n+2)]` -/
def P10760469564442337723.Spec : Prop :=
  ∀ n, (P10760469564442337723.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P15394627862877339568

`∩[A214889(n+1), A215391(n+2)]`
-/

namespace A140374.P15394627862877339568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P15394627862877339568

namespace A140374

/-- `∩[A214889(n+1), A215391(n+2)]` -/
def P15394627862877339568.Spec : Prop :=
  ∀ n, (P15394627862877339568.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P9792894078410395623

`∩[A214889(n+1), A215207(n+2)]`
-/

namespace A140374.P9792894078410395623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P9792894078410395623

namespace A140374

/-- `∩[A214889(n+1), A215207(n+2)]` -/
def P9792894078410395623.Spec : Prop :=
  ∀ n, (P9792894078410395623.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P10994060539141550736

`∩[A214889(n+1), A215211(n+2)]`
-/

namespace A140374.P10994060539141550736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P10994060539141550736

namespace A140374

/-- `∩[A214889(n+1), A215211(n+2)]` -/
def P10994060539141550736.Spec : Prop :=
  ∀ n, (P10994060539141550736.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P3143639030066002975

`∩[A215135(n+2), A215168(n+2)]`
-/

namespace A140374.P3143639030066002975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P3143639030066002975

namespace A140374

/-- `∩[A215135(n+2), A215168(n+2)]` -/
def P3143639030066002975.Spec : Prop :=
  ∀ n, (P3143639030066002975.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P16246266539131582476

`∩[A215103(n+1), A215207(n+2)]`
-/

namespace A140374.P16246266539131582476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P16246266539131582476

namespace A140374

/-- `∩[A215103(n+1), A215207(n+2)]` -/
def P16246266539131582476.Spec : Prop :=
  ∀ n, (P16246266539131582476.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P2346725632236686246

`∩[A214889(n+1), A215215(n+2)]`
-/

namespace A140374.P2346725632236686246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P2346725632236686246

namespace A140374

/-- `∩[A214889(n+1), A215215(n+2)]` -/
def P2346725632236686246.Spec : Prop :=
  ∀ n, (P2346725632236686246.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P7457877024193433905

`∩[A214889(n+1), A215276(n+2)]`
-/

namespace A140374.P7457877024193433905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P7457877024193433905

namespace A140374

/-- `∩[A214889(n+1), A215276(n+2)]` -/
def P7457877024193433905.Spec : Prop :=
  ∀ n, (P7457877024193433905.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P3585354064096108523

`∩[A214889(n+1), A215428(n+2)]`
-/

namespace A140374.P3585354064096108523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P3585354064096108523

namespace A140374

/-- `∩[A214889(n+1), A215428(n+2)]` -/
def P3585354064096108523.Spec : Prop :=
  ∀ n, (P3585354064096108523.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P11205882176840561623

`∩[A214889(n+1), A215424(n+2)]`
-/

namespace A140374.P11205882176840561623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215424 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P11205882176840561623

namespace A140374

/-- `∩[A214889(n+1), A215424(n+2)]` -/
def P11205882176840561623.Spec : Prop :=
  ∀ n, (P11205882176840561623.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P2616589034374552357

`∩[A167119(n+1), A215391(n+2)]`
-/

namespace A140374.P2616589034374552357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P2616589034374552357

namespace A140374

/-- `∩[A167119(n+1), A215391(n+2)]` -/
def P2616589034374552357.Spec : Prop :=
  ∀ n, (P2616589034374552357.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P991186027284944050

`∩[A040127(n+1), A153080(n)]`
-/

namespace A140374.P991186027284944050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P991186027284944050

namespace A140374

/-- `∩[A040127(n+1), A153080(n)]` -/
def P991186027284944050.Spec : Prop :=
  ∀ n, (P991186027284944050.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P8011061640234440006

`∩[A190991(n+1)+1, A215135(n+2)]`
-/

namespace A140374.P8011061640234440006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P8011061640234440006

namespace A140374

/-- `∩[A190991(n+1)+1, A215135(n+2)]` -/
def P8011061640234440006.Spec : Prop :=
  ∀ n, (P8011061640234440006.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P2344160168428429918

`∩[A004139(n+1), A153080(n)]`
-/

namespace A140374.P2344160168428429918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P2344160168428429918

namespace A140374

/-- `∩[A004139(n+1), A153080(n)]` -/
def P2344160168428429918.Spec : Prop :=
  ∀ n, (P2344160168428429918.a n : ℤ) = A140374 (n + 1)

end A140374

/-! ## A140374.P136004698373906379

`∩[A065091(n+1), A153080(n)]`
-/

namespace A140374.P136004698373906379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140374.P136004698373906379

namespace A140374

/-- `∩[A065091(n+1), A153080(n)]` -/
def P136004698373906379.Spec : Prop :=
  ∀ n, (P136004698373906379.a n : ℤ) = A140374 (n + 1)

end A140374

/-!
# A140375: Primes of the form 26n+23.

The programs for A140375, the canonical program `A140375.P5255106742283819564` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140375 has offset 1).

The definition of A140375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140375.P5255106742283819564

`∪[A142165(n+1), A142173(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A140375

/-- `∪[A142165(n+1), A142173(n+1)]` -/
def P5255106742283819564.Spec : Prop :=
  ∀ n, (P5255106742283819564.a n : ℤ) = A140375 (n + 1)

theorem P5255106742283819564.correct : P5255106742283819564.Spec := by
  intro n
  simp only [A140375, Nat.add_sub_cancel]

end A140375

/-! ## A140375.P392346730953062596

`∪[A142518(n+1), A142530(n+1)]`
-/

namespace A140375.P392346730953062596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P392346730953062596

namespace A140375

/-- `∪[A142518(n+1), A142530(n+1)]` -/
def P392346730953062596.Spec : Prop :=
  ∀ n, (P392346730953062596.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P15011946213157330011

`or(1, p?[13*n-3])`
-/

namespace A140375.P15011946213157330011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140375.P15011946213157330011

namespace A140375

/-- `or(1, p?[13*n-3])` -/
def P15011946213157330011.Spec : Prop :=
  ∀ n, P15011946213157330011.a n = A140375 (n + 1)

end A140375

/-! ## A140375.P14966842096678004048

`p?[a(n-1)+13]` with `a(0)=10`
-/

namespace A140375.P14966842096678004048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140375.P14966842096678004048

namespace A140375

/-- `p?[a(n-1)+13]` -/
def P14966842096678004048.Spec : Prop :=
  ∀ n, (P14966842096678004048.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P6015384739086829375

`p?[12*n-3+n]`
-/

namespace A140375.P6015384739086829375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140375.P6015384739086829375

namespace A140375

/-- `p?[12*n-3+n]` -/
def P6015384739086829375.Spec : Prop :=
  ∀ n, P6015384739086829375.a n = A140375 (n + 1)

end A140375

/-! ## A140375.P4586427045175344752

`∑{p}[p?[13*n-3], #]`
-/

namespace A140375.P4586427045175344752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140375.P4586427045175344752

namespace A140375

/-- `∑{p}[p?[13*n-3], #]` -/
def P4586427045175344752.Spec : Prop :=
  ∀ n, (P4586427045175344752.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P15324158112986754289

`∏{p}[p?[13*n-3], #]`
-/

namespace A140375.P15324158112986754289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A140375.P15324158112986754289

namespace A140375

/-- `∏{p}[p?[13*n-3], #]` -/
def P15324158112986754289.Spec : Prop :=
  ∀ n, (P15324158112986754289.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P3072337293153377135

`∑{d}[p?[13*n-3], #]-1`
-/

namespace A140375.P3072337293153377135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A140375.P3072337293153377135

namespace A140375

/-- `∑{d}[p?[13*n-3], #]-1` -/
def P3072337293153377135.Spec : Prop :=
  ∀ n, P3072337293153377135.a n = A140375 (n + 1)

end A140375

/-! ## A140375.P6224581959136080453

`∩[A049545(n+1), A269100(n)-1]`
-/

namespace A140375.P6224581959136080453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P6224581959136080453

namespace A140375

/-- `∩[A049545(n+1), A269100(n)-1]` -/
def P6224581959136080453.Spec : Prop :=
  ∀ n, (P6224581959136080453.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P1895359080461734289

`∩[A049545(n+1), A306285(n+1)+2]`
-/

namespace A140375.P1895359080461734289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P1895359080461734289

namespace A140375

/-- `∩[A049545(n+1), A306285(n+1)+2]` -/
def P1895359080461734289.Spec : Prop :=
  ∀ n, (P1895359080461734289.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P15670661897284287928

`∩[A000040(n+1), A269100(n)-1]`
-/

namespace A140375.P15670661897284287928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P15670661897284287928

namespace A140375

/-- `∩[A000040(n+1), A269100(n)-1]` -/
def P15670661897284287928.Spec : Prop :=
  ∀ n, (P15670661897284287928.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P9069848071536483181

`∩[A004139(n+1), A269100(n)-1]`
-/

namespace A140375.P9069848071536483181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P9069848071536483181

namespace A140375

/-- `∩[A004139(n+1), A269100(n)-1]` -/
def P9069848071536483181.Spec : Prop :=
  ∀ n, (P9069848071536483181.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P6154345618542498409

`∩[A006005(n+1), A269100(n)-1]`
-/

namespace A140375.P6154345618542498409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P6154345618542498409

namespace A140375

/-- `∩[A006005(n+1), A269100(n)-1]` -/
def P6154345618542498409.Spec : Prop :=
  ∀ n, (P6154345618542498409.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P14357568525879721739

`∩[A008578(n+1), A269100(n)-1]`
-/

namespace A140375.P14357568525879721739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P14357568525879721739

namespace A140375

/-- `∩[A008578(n+1), A269100(n)-1]` -/
def P14357568525879721739.Spec : Prop :=
  ∀ n, (P14357568525879721739.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P3282264187155029990

`∩[A033946(n+1), A269100(n)-1]`
-/

namespace A140375.P3282264187155029990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P3282264187155029990

namespace A140375

/-- `∩[A033946(n+1), A269100(n)-1]` -/
def P3282264187155029990.Spec : Prop :=
  ∀ n, (P3282264187155029990.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P15480868284359792413

`∩[A045319(n+1), A269100(n)-1]`
-/

namespace A140375.P15480868284359792413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P15480868284359792413

namespace A140375

/-- `∩[A045319(n+1), A269100(n)-1]` -/
def P15480868284359792413.Spec : Prop :=
  ∀ n, (P15480868284359792413.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P7085826798782028824

`∩[A045344(n+1), A269100(n)-1]`
-/

namespace A140375.P7085826798782028824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P7085826798782028824

namespace A140375

/-- `∩[A045344(n+1), A269100(n)-1]` -/
def P7085826798782028824.Spec : Prop :=
  ∀ n, (P7085826798782028824.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P4979888402005185280

`∩[A067126(n+1), A269100(n)-1]`
-/

namespace A140375.P4979888402005185280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P4979888402005185280

namespace A140375

/-- `∩[A067126(n+1), A269100(n)-1]` -/
def P4979888402005185280.Spec : Prop :=
  ∀ n, (P4979888402005185280.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P3581582720947499460

`∩[A000040(n+1), A306285(n+1)+2]`
-/

namespace A140375.P3581582720947499460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P3581582720947499460

namespace A140375

/-- `∩[A000040(n+1), A306285(n+1)+2]` -/
def P3581582720947499460.Spec : Prop :=
  ∀ n, (P3581582720947499460.a n : ℤ) = A140375 (n + 1)

end A140375

/-! ## A140375.P7004363227727082567

`∩[A004139(n+1), A306285(n+1)+2]`
-/

namespace A140375.P7004363227727082567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140375.P7004363227727082567

namespace A140375

/-- `∩[A004139(n+1), A306285(n+1)+2]` -/
def P7004363227727082567.Spec : Prop :=
  ∀ n, (P7004363227727082567.a n : ℤ) = A140375 (n + 1)

end A140375

/-!
# A140376: Nonprimes of the form 26n+1.

The programs for A140376, the canonical program `A140376.P14382105918377167922` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140376 has offset 1).

The definition of A140376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140376.P14382105918377167922

`record[A171435(A190991(2*n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140376

/-- `record[A171435(A190991(2*n))]` -/
def P14382105918377167922.Spec : Prop :=
  ∀ n, P14382105918377167922.a n = A140376 (n + 1)

theorem P14382105918377167922.correct : P14382105918377167922.Spec := by
  intro n
  simp only [A140376, Nat.add_sub_cancel]

end A140376

/-! ## A140376.P278601564767634484

`record[A171435(A008595(2*n)+1)]`
-/

namespace A140376.P278601564767634484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A008595 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P278601564767634484

namespace A140376

/-- `record[A171435(A008595(2*n)+1)]` -/
def P278601564767634484.Spec : Prop :=
  ∀ n, P278601564767634484.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P10427688778394972571

`record[A171435(A139608(n)-A020742(n))]`
-/

namespace A140376.P10427688778394972571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A139608 n - A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P10427688778394972571

namespace A140376

/-- `record[A171435(A139608(n)-A020742(n))]` -/
def P10427688778394972571.Spec : Prop :=
  ∀ n, P10427688778394972571.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P16125546365236197093

`filter[A190991(2*n), A005171(#)]`
-/

namespace A140376.P16125546365236197093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140376.P16125546365236197093

namespace A140376

/-- `filter[A190991(2*n), A005171(#)]` -/
def P16125546365236197093.Spec : Prop :=
  ∀ n, P16125546365236197093.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P9498149423039910241

`filter[A190991(2*n), A292438(#)]`
-/

namespace A140376.P9498149423039910241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140376.P9498149423039910241

namespace A140376

/-- `filter[A190991(2*n), A292438(#)]` -/
def P9498149423039910241.Spec : Prop :=
  ∀ n, P9498149423039910241.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P17452371422611835008

`∩[A014076(n+1), A190991(n)]`
-/

namespace A140376.P17452371422611835008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140376.P17452371422611835008

namespace A140376

/-- `∩[A014076(n+1), A190991(n)]` -/
def P17452371422611835008.Spec : Prop :=
  ∀ n, (P17452371422611835008.a n : ℤ) = A140376 (n + 1)

end A140376

/-! ## A140376.P540385524125111355

`∩[A014076(n+1), A131877(n)-n]`
-/

namespace A140376.P540385524125111355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140376.P540385524125111355

namespace A140376

/-- `∩[A014076(n+1), A131877(n)-n]` -/
def P540385524125111355.Spec : Prop :=
  ∀ n, (P540385524125111355.a n : ℤ) = A140376 (n + 1)

end A140376

/-! ## A140376.P8444657734137065693

`record[A171435(A005408(A008595(n)))]`
-/

namespace A140376.P8444657734137065693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A005408 (A008595 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P8444657734137065693

namespace A140376

/-- `record[A171435(A005408(A008595(n)))]` -/
def P8444657734137065693.Spec : Prop :=
  ∀ n, P8444657734137065693.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P8794362737497320464

`record[A191558(A093178(A190991(n)))]`
-/

namespace A140376.P8794362737497320464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A093178 (A190991 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P8794362737497320464

namespace A140376

/-- `record[A191558(A093178(A190991(n)))]` -/
def P8794362737497320464.Spec : Prop :=
  ∀ n, P8794362737497320464.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P929704286283071843

`record[A191558(A112653(A266662(n)))]`
-/

namespace A140376.P929704286283071843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A112653 (A266662 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P929704286283071843

namespace A140376

/-- `record[A191558(A112653(A266662(n)))]` -/
def P929704286283071843.Spec : Prop :=
  ∀ n, P929704286283071843.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P15327929593390168018

`record[A191558(A139608(n)-A020742(n))]`
-/

namespace A140376.P15327929593390168018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A139608 n - A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P15327929593390168018

namespace A140376

/-- `record[A191558(A139608(n)-A020742(n))]` -/
def P15327929593390168018.Spec : Prop :=
  ∀ n, P15327929593390168018.a n = A140376 (n + 1)

end A140376

/-! ## A140376.P5743464409983810019

`record[A191558(A112653(2*n+1)+A112653(2*n))]`
-/

namespace A140376.P5743464409983810019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A112653 (2 * n + 1) + A112653 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P5743464409983810019

namespace A140376

/-- `record[A191558(A112653(2*n+1)+A112653(2*n))]` -/
def P5743464409983810019.Spec : Prop :=
  ∀ n, P5743464409983810019.a n = A140376 (n + 1)

end A140376

/-!
# A140377: Composites of the form 26k + 3.

The programs for A140377, the canonical program `A140377.P8679194704057854348` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140377 has offset 1).

The definition of A140377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140377.P8679194704057854348

`∩[A014076(n+1), A127547(n)-1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140377

/-- `∩[A014076(n+1), A127547(n)-1]` -/
def P8679194704057854348.Spec : Prop :=
  ∀ n, (P8679194704057854348.a n : ℤ) = A140377 (n + 1)

theorem P8679194704057854348.correct : P8679194704057854348.Spec := by
  intro n
  simp only [A140377, Nat.add_sub_cancel]

end A140377

/-! ## A140377.P72909929296489467

`∩[A071904(n+1), A127547(n)-1]`
-/

namespace A140377.P72909929296489467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P72909929296489467

namespace A140377

/-- `∩[A071904(n+1), A127547(n)-1]` -/
def P72909929296489467.Spec : Prop :=
  ∀ n, (P72909929296489467.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P5231483060022349436

`∩[A014076(n+1), A190991(n)+2]`
-/

namespace A140377.P5231483060022349436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P5231483060022349436

namespace A140377

/-- `∩[A014076(n+1), A190991(n)+2]` -/
def P5231483060022349436.Spec : Prop :=
  ∀ n, (P5231483060022349436.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P11908104649591106916

`∩[A014076(n+1), A154609(n)-2]`
-/

namespace A140377.P11908104649591106916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P11908104649591106916

namespace A140377

/-- `∩[A014076(n+1), A154609(n)-2]` -/
def P11908104649591106916.Spec : Prop :=
  ∀ n, (P11908104649591106916.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P16735605667133818779

`∩[A071904(n+1), A154609(n)-2]`
-/

namespace A140377.P16735605667133818779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P16735605667133818779

namespace A140377

/-- `∩[A071904(n+1), A154609(n)-2]` -/
def P16735605667133818779.Spec : Prop :=
  ∀ n, (P16735605667133818779.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P8648918498620564840

`∩[A186113(n)-3, A014076(n+2)]`
-/

namespace A140377.P8648918498620564840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P8648918498620564840

namespace A140377

/-- `∩[A186113(n)-3, A014076(n+2)]` -/
def P8648918498620564840.Spec : Prop :=
  ∀ n, (P8648918498620564840.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P12893445514322240393

`∩[A186113(n)-3, A071904(n+2)]`
-/

namespace A140377.P12893445514322240393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P12893445514322240393

namespace A140377

/-- `∩[A186113(n)-3, A071904(n+2)]` -/
def P12893445514322240393.Spec : Prop :=
  ∀ n, (P12893445514322240393.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P12141739799873920088

`∩[A014076(n+1), A306285(n+1)-1]`
-/

namespace A140377.P12141739799873920088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P12141739799873920088

namespace A140377

/-- `∩[A014076(n+1), A306285(n+1)-1]` -/
def P12141739799873920088.Spec : Prop :=
  ∀ n, (P12141739799873920088.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P12864597781934936089

`∩[A071904(n+1), A306285(n+1)-1]`
-/

namespace A140377.P12864597781934936089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P12864597781934936089

namespace A140377

/-- `∩[A071904(n+1), A306285(n+1)-1]` -/
def P12864597781934936089.Spec : Prop :=
  ∀ n, (P12864597781934936089.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P9675676963454348278

`∩[A014076(n+1), A131877(n)+2-n]`
-/

namespace A140377.P9675676963454348278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + (2 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P9675676963454348278

namespace A140377

/-- `∩[A014076(n+1), A131877(n)+2-n]` -/
def P9675676963454348278.Spec : Prop :=
  ∀ n, (P9675676963454348278.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P7549721719050519267

`∩[A017017(2*n)-n, A014076(n+2)]`
-/

namespace A140377.P7549721719050519267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P7549721719050519267

namespace A140377

/-- `∩[A017017(2*n)-n, A014076(n+2)]` -/
def P7549721719050519267.Spec : Prop :=
  ∀ n, (P7549721719050519267.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P8489474343837480789

`∩[A017017(2*n)-n, A071904(n+2)]`
-/

namespace A140377.P8489474343837480789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P8489474343837480789

namespace A140377

/-- `∩[A017017(2*n)-n, A071904(n+2)]` -/
def P8489474343837480789.Spec : Prop :=
  ∀ n, (P8489474343837480789.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P5154247190800847222

`∩[A127547(2*n)-1, A270574(n+2)]`
-/

namespace A140377.P5154247190800847222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P5154247190800847222

namespace A140377

/-- `∩[A127547(2*n)-1, A270574(n+2)]` -/
def P5154247190800847222.Spec : Prop :=
  ∀ n, (P5154247190800847222.a n : ℤ) = A140377 (n + 1)

end A140377

/-! ## A140377.P12515867294987730520

`∩[A306285(2*n+1)-1, A270574(n+2)]`
-/

namespace A140377.P12515867294987730520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P12515867294987730520

namespace A140377

/-- `∩[A306285(2*n+1)-1, A270574(n+2)]` -/
def P12515867294987730520.Spec : Prop :=
  ∀ n, (P12515867294987730520.a n : ℤ) = A140377 (n + 1)

end A140377

/-!
# A140379: Nonprimes of the form 14k+1.

The programs for A140379, the canonical program `A140379.P6055374210974957999` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140379 has offset 1).

The definition of A140379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140379.P6055374210974957999

`record[A171435(2*7*n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140379

/-- `record[A171435(2*7*n+1)]` -/
def P6055374210974957999.Spec : Prop :=
  ∀ n, P6055374210974957999.a n = A140379 (n + 1)

theorem P6055374210974957999.correct : P6055374210974957999.Spec := by
  intro n
  simp only [A140379, Nat.add_sub_cancel]

end A140379

/-! ## A140379.P1921072040449730044

`record[A171435(A016993(n))²/A016993(n)]`
-/

namespace A140379.P1921072040449730044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171435 (A016993 n).toNat ^ 2 : ℚ) / (A016993 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140379.P1921072040449730044

namespace A140379

/-- `record[A171435(A016993(n))²/A016993(n)]` -/
def P1921072040449730044.Spec : Prop :=
  ∀ n, P1921072040449730044.a n = (A140379 (n + 1) : ℚ)

end A140379

/-! ## A140379.P7752133171077700441

`filter[A131877(n), A005171(#)]`
-/

namespace A140379.P7752133171077700441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140379.P7752133171077700441

namespace A140379

/-- `filter[A131877(n), A005171(#)]` -/
def P7752133171077700441.Spec : Prop :=
  ∀ n, P7752133171077700441.a n = A140379 (n + 1)

end A140379

/-! ## A140379.P8454679720246760086

`filter[A131877(n), A292438(#)]`
-/

namespace A140379.P8454679720246760086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140379.P8454679720246760086

namespace A140379

/-- `filter[A131877(n), A292438(#)]` -/
def P8454679720246760086.Spec : Prop :=
  ∀ n, P8454679720246760086.a n = A140379 (n + 1)

end A140379

/-! ## A140379.P1854270387226695712

`filter[A016993(2*n), A005171(#)]`
-/

namespace A140379.P1854270387226695712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140379.P1854270387226695712

namespace A140379

/-- `filter[A016993(2*n), A005171(#)]` -/
def P1854270387226695712.Spec : Prop :=
  ∀ n, P1854270387226695712.a n = A140379 (n + 1)

end A140379

/-! ## A140379.P7242185086936554391

`filter[A016993(2*n), A292438(#)]`
-/

namespace A140379.P7242185086936554391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140379.P7242185086936554391

namespace A140379

/-- `filter[A016993(2*n), A292438(#)]` -/
def P7242185086936554391.Spec : Prop :=
  ∀ n, P7242185086936554391.a n = A140379 (n + 1)

end A140379

/-! ## A140379.P9122755861723877864

`filter[A113801(2*n+1), A005171(#)]`
-/

namespace A140379.P9122755861723877864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140379.P9122755861723877864

namespace A140379

/-- `filter[A113801(2*n+1), A005171(#)]` -/
def P9122755861723877864.Spec : Prop :=
  ∀ n, P9122755861723877864.a n = A140379 (n + 1)

end A140379

/-! ## A140379.P7562276139234954131

`filter[A026474(2*n+1), A292438(#)]`
-/

namespace A140379.P7562276139234954131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140379.P7562276139234954131

namespace A140379

/-- `filter[A026474(2*n+1), A292438(#)]` -/
def P7562276139234954131.Spec : Prop :=
  ∀ n, P7562276139234954131.a n = A140379 (n + 1)

end A140379

/-! ## A140379.P8361570517930601649

`filter[A113801(2*n+1), A292438(#)]`
-/

namespace A140379.P8361570517930601649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140379.P8361570517930601649

namespace A140379

/-- `filter[A113801(2*n+1), A292438(#)]` -/
def P8361570517930601649.Spec : Prop :=
  ∀ n, P8361570517930601649.a n = A140379 (n + 1)

end A140379

/-! ## A140379.P11291809995627792572

`∩[A014076(n+1), A016993(n)]`
-/

namespace A140379.P11291809995627792572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P11291809995627792572

namespace A140379

/-- `∩[A014076(n+1), A016993(n)]` -/
def P11291809995627792572.Spec : Prop :=
  ∀ n, (P11291809995627792572.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P1841429244393291905

`∩[A014076(n+1), A131877(n)]`
-/

namespace A140379.P1841429244393291905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P1841429244393291905

namespace A140379

/-- `∩[A014076(n+1), A131877(n)]` -/
def P1841429244393291905.Spec : Prop :=
  ∀ n, (P1841429244393291905.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P16016628792605824495

`∩[A014076(n+1), A026474(n+1)]`
-/

namespace A140379.P16016628792605824495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P16016628792605824495

namespace A140379

/-- `∩[A014076(n+1), A026474(n+1)]` -/
def P16016628792605824495.Spec : Prop :=
  ∀ n, (P16016628792605824495.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P9995043326789992749

`∩[A014076(n+1), A017005(n)-1]`
-/

namespace A140379.P9995043326789992749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P9995043326789992749

namespace A140379

/-- `∩[A014076(n+1), A017005(n)-1]` -/
def P9995043326789992749.Spec : Prop :=
  ∀ n, (P9995043326789992749.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P16573671221895770180

`∩[A014076(n+1), A017017(n)-2]`
-/

namespace A140379.P16573671221895770180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P16573671221895770180

namespace A140379

/-- `∩[A014076(n+1), A017017(n)-2]` -/
def P16573671221895770180.Spec : Prop :=
  ∀ n, (P16573671221895770180.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P13631785344598056362

`∩[A014076(n+1), A016921(n)+n]`
-/

namespace A140379.P13631785344598056362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P13631785344598056362

namespace A140379

/-- `∩[A014076(n+1), A016921(n)+n]` -/
def P13631785344598056362.Spec : Prop :=
  ∀ n, (P13631785344598056362.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P12749779698976384601

`∩[A014076(n+1), A190991(n)+n]`
-/

namespace A140379.P12749779698976384601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P12749779698976384601

namespace A140379

/-- `∩[A014076(n+1), A190991(n)+n]` -/
def P12749779698976384601.Spec : Prop :=
  ∀ n, (P12749779698976384601.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P15724737255412127590

`∩[A014076(n+1), A308196(n)+n]`
-/

namespace A140379.P15724737255412127590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P15724737255412127590

namespace A140379

/-- `∩[A014076(n+1), A308196(n)+n]` -/
def P15724737255412127590.Spec : Prop :=
  ∀ n, (P15724737255412127590.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P4861385009621859853

`∩[A325037(n+1), A131877(n)]`
-/

namespace A140379.P4861385009621859853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P4861385009621859853

namespace A140379

/-- `∩[A325037(n+1), A131877(n)]` -/
def P4861385009621859853.Spec : Prop :=
  ∀ n, (P4861385009621859853.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P2215746152415307012

`∩[A347202(n+1), A131877(n)]`
-/

namespace A140379.P2215746152415307012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P2215746152415307012

namespace A140379

/-- `∩[A347202(n+1), A131877(n)]` -/
def P2215746152415307012.Spec : Prop :=
  ∀ n, (P2215746152415307012.a n : ℤ) = A140379 (n + 1)

end A140379

/-! ## A140379.P6245731528070753381

`∩[A264828(n+1), A131877(n)]`
-/

namespace A140379.P6245731528070753381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140379.P6245731528070753381

namespace A140379

/-- `∩[A264828(n+1), A131877(n)]` -/
def P6245731528070753381.Spec : Prop :=
  ∀ n, (P6245731528070753381.a n : ℤ) = A140379 (n + 1)

end A140379

/-!
# A140380: Composites of the form 14k + 3.

The programs for A140380, the canonical program `A140380.P10488376729537076416` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140380 has offset 1).

The definition of A140380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140380.P10488376729537076416

`record[A171435(A017029(n)+41)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140380

/-- `record[A171435(A017029(n)+41)]` -/
def P10488376729537076416.Spec : Prop :=
  ∀ n, P10488376729537076416.a n = A140380 (n + 1)

theorem P10488376729537076416.correct : P10488376729537076416.Spec := by
  intro n
  simp only [A140380, Nat.add_sub_cancel]

end A140380

/-! ## A140380.P12925450828356482095

`A017017(2*A153307(n+1))`
-/

namespace A140380.P12925450828356482095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * A153307 (n + 1)).toNat

end

end A140380.P12925450828356482095

namespace A140380

/-- `A017017(2*A153307(n+1))` -/
def P12925450828356482095.Spec : Prop :=
  ∀ n, P12925450828356482095.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P491034589017488048

`A017005(2*A153307(n+1))+1`
-/

namespace A140380.P491034589017488048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * A153307 (n + 1)).toNat + 1

end

end A140380.P491034589017488048

namespace A140380

/-- `A017005(2*A153307(n+1))+1` -/
def P491034589017488048.Spec : Prop :=
  ∀ n, P491034589017488048.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P3934118672561576394

`A008589(2*A153307(n+1))+3`
-/

namespace A140380.P3934118672561576394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (2 * A153307 (n + 1)).toNat + 3

end

end A140380.P3934118672561576394

namespace A140380

/-- `A008589(2*A153307(n+1))+3` -/
def P3934118672561576394.Spec : Prop :=
  ∀ n, P3934118672561576394.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P3982285529234797631

`A017041(2*A153307(n+1))-2`
-/

namespace A140380.P3982285529234797631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (2 * A153307 (n + 1)).toNat - 2

end

end A140380.P3982285529234797631

namespace A140380

/-- `A017041(2*A153307(n+1))-2` -/
def P3982285529234797631.Spec : Prop :=
  ∀ n, P3982285529234797631.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P9471556924557896214

`record[A171435(A017017(A020715(n)))]`
-/

namespace A140380.P9471556924557896214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017017 (A020715 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140380.P9471556924557896214

namespace A140380

/-- `record[A171435(A017017(A020715(n)))]` -/
def P9471556924557896214.Spec : Prop :=
  ∀ n, P9471556924557896214.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P8764613635069020762

`filter[A017017(2*n), A005171(#)]`
-/

namespace A140380.P8764613635069020762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140380.P8764613635069020762

namespace A140380

/-- `filter[A017017(2*n), A005171(#)]` -/
def P8764613635069020762.Spec : Prop :=
  ∀ n, P8764613635069020762.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P15514878046249422891

`filter[A017017(2*n), A066247(#)]`
-/

namespace A140380.P15514878046249422891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140380.P15514878046249422891

namespace A140380

/-- `filter[A017017(2*n), A066247(#)]` -/
def P15514878046249422891.Spec : Prop :=
  ∀ n, P15514878046249422891.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P17003752938445707068

`filter[A017017(2*n), A202238(#)]`
-/

namespace A140380.P17003752938445707068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140380.P17003752938445707068

namespace A140380

/-- `filter[A017017(2*n), A202238(#)]` -/
def P17003752938445707068.Spec : Prop :=
  ∀ n, P17003752938445707068.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P9931867005032396332

`filter[A017017(2*n), A292438(#)]`
-/

namespace A140380.P9931867005032396332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140380.P9931867005032396332

namespace A140380

/-- `filter[A017017(2*n), A292438(#)]` -/
def P9931867005032396332.Spec : Prop :=
  ∀ n, P9931867005032396332.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P1533951826820996956

`filter[A017017(2*n), A323162(#)]`
-/

namespace A140380.P1533951826820996956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140380.P1533951826820996956

namespace A140380

/-- `filter[A017017(2*n), A323162(#)]` -/
def P1533951826820996956.Spec : Prop :=
  ∀ n, P1533951826820996956.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P10120659939573671602

`filter[A113803(2*n+1), A005171(#)]`
-/

namespace A140380.P10120659939573671602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140380.P10120659939573671602

namespace A140380

/-- `filter[A113803(2*n+1), A005171(#)]` -/
def P10120659939573671602.Spec : Prop :=
  ∀ n, P10120659939573671602.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P17244342496159379957

`filter[A113803(2*n+1), A066247(#)]`
-/

namespace A140380.P17244342496159379957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140380.P17244342496159379957

namespace A140380

/-- `filter[A113803(2*n+1), A066247(#)]` -/
def P17244342496159379957.Spec : Prop :=
  ∀ n, P17244342496159379957.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P15669909649098132605

`filter[A063237(2*n+1), A202238(#)]`
-/

namespace A140380.P15669909649098132605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140380.P15669909649098132605

namespace A140380

/-- `filter[A063237(2*n+1), A202238(#)]` -/
def P15669909649098132605.Spec : Prop :=
  ∀ n, P15669909649098132605.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P13789824456758099191

`filter[A113803(2*n+1), A202238(#)]`
-/

namespace A140380.P13789824456758099191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140380.P13789824456758099191

namespace A140380

/-- `filter[A113803(2*n+1), A202238(#)]` -/
def P13789824456758099191.Spec : Prop :=
  ∀ n, P13789824456758099191.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P14731378886686894676

`filter[A063237(2*n+1), A292438(#)]`
-/

namespace A140380.P14731378886686894676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140380.P14731378886686894676

namespace A140380

/-- `filter[A063237(2*n+1), A292438(#)]` -/
def P14731378886686894676.Spec : Prop :=
  ∀ n, P14731378886686894676.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P6902317674023599990

`filter[A063237(2*n+1), A323162(#)]`
-/

namespace A140380.P6902317674023599990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140380.P6902317674023599990

namespace A140380

/-- `filter[A063237(2*n+1), A323162(#)]` -/
def P6902317674023599990.Spec : Prop :=
  ∀ n, P6902317674023599990.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P15848971727251214865

`filter[A113803(2*n+1), A292438(#)]`
-/

namespace A140380.P15848971727251214865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140380.P15848971727251214865

namespace A140380

/-- `filter[A113803(2*n+1), A292438(#)]` -/
def P15848971727251214865.Spec : Prop :=
  ∀ n, P15848971727251214865.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P1983022444245233213

`filter[A113803(2*n+1), A323162(#)]`
-/

namespace A140380.P1983022444245233213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140380.P1983022444245233213

namespace A140380

/-- `filter[A113803(2*n+1), A323162(#)]` -/
def P1983022444245233213.Spec : Prop :=
  ∀ n, P1983022444245233213.a n = A140380 (n + 1)

end A140380

/-! ## A140380.P2148688409548904483

`∩[A082686(n+1), A017017(n)]`
-/

namespace A140380.P2148688409548904483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140380.P2148688409548904483

namespace A140380

/-- `∩[A082686(n+1), A017017(n)]` -/
def P2148688409548904483.Spec : Prop :=
  ∀ n, (P2148688409548904483.a n : ℤ) = A140380 (n + 1)

end A140380

/-!
# A140381: Composites of the form 14k + 9.

The programs for A140381, the canonical program `A140381.P12508315804219335173` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140381 has offset 1).

The definition of A140381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140381.P12508315804219335173

`record[A171435(A017005(2*n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140381

/-- `record[A171435(A017005(2*n+1))]` -/
def P12508315804219335173.Spec : Prop :=
  ∀ n, P12508315804219335173.a n = A140381 (n + 1)

theorem P12508315804219335173.correct : P12508315804219335173.Spec := by
  intro n
  simp only [A140381, Nat.add_sub_cancel]

end A140381

/-! ## A140381.P6697249677910903170

`record[A171435(A016993(2*n+1)+1)]`
-/

namespace A140381.P6697249677910903170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A016993 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140381.P6697249677910903170

namespace A140381

/-- `record[A171435(A016993(2*n+1)+1)]` -/
def P6697249677910903170.Spec : Prop :=
  ∀ n, P6697249677910903170.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P8747575313565104057

`record[A171435(A017017(2*n+1)-1)]`
-/

namespace A140381.P8747575313565104057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017017 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140381.P8747575313565104057

namespace A140381

/-- `record[A171435(A017017(2*n+1)-1)]` -/
def P8747575313565104057.Spec : Prop :=
  ∀ n, P8747575313565104057.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P11507473102628065604

`record[A171435(A017029(2*n+1)-2)]`
-/

namespace A140381.P11507473102628065604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017029 (2 * n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140381.P11507473102628065604

namespace A140381

/-- `record[A171435(A017029(2*n+1)-2)]` -/
def P11507473102628065604.Spec : Prop :=
  ∀ n, P11507473102628065604.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P16559275990421564566

`filter[A017005(2*n+1), A005171(#)]`
-/

namespace A140381.P16559275990421564566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140381.P16559275990421564566

namespace A140381

/-- `filter[A017005(2*n+1), A005171(#)]` -/
def P16559275990421564566.Spec : Prop :=
  ∀ n, P16559275990421564566.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P18119508064663867273

`filter[A026476(2*(n+1)), A005171(#)]`
-/

namespace A140381.P18119508064663867273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140381.P18119508064663867273

namespace A140381

/-- `filter[A026476(2*(n+1)), A005171(#)]` -/
def P18119508064663867273.Spec : Prop :=
  ∀ n, P18119508064663867273.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P2603963621454611060

`filter[A063094(2*(n+1)), A005171(#)]`
-/

namespace A140381.P2603963621454611060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140381.P2603963621454611060

namespace A140381

/-- `filter[A063094(2*(n+1)), A005171(#)]` -/
def P2603963621454611060.Spec : Prop :=
  ∀ n, P2603963621454611060.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P17540640270525148042

`filter[A017005(2*n+1), A066247(#)]`
-/

namespace A140381.P17540640270525148042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140381.P17540640270525148042

namespace A140381

/-- `filter[A017005(2*n+1), A066247(#)]` -/
def P17540640270525148042.Spec : Prop :=
  ∀ n, P17540640270525148042.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P10119744772751565046

`filter[A026476(2*(n+1)), A066247(#)]`
-/

namespace A140381.P10119744772751565046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140381.P10119744772751565046

namespace A140381

/-- `filter[A026476(2*(n+1)), A066247(#)]` -/
def P10119744772751565046.Spec : Prop :=
  ∀ n, P10119744772751565046.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P3015393768474747644

`filter[A113805(2*(n+1)), A005171(#)]`
-/

namespace A140381.P3015393768474747644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140381.P3015393768474747644

namespace A140381

/-- `filter[A113805(2*(n+1)), A005171(#)]` -/
def P3015393768474747644.Spec : Prop :=
  ∀ n, P3015393768474747644.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P3322159621351490353

`filter[A063094(2*(n+1)), A066247(#)]`
-/

namespace A140381.P3322159621351490353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140381.P3322159621351490353

namespace A140381

/-- `filter[A063094(2*(n+1)), A066247(#)]` -/
def P3322159621351490353.Spec : Prop :=
  ∀ n, P3322159621351490353.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P8120384759706761891

`filter[A113805(2*(n+1)), A066247(#)]`
-/

namespace A140381.P8120384759706761891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A140381.P8120384759706761891

namespace A140381

/-- `filter[A113805(2*(n+1)), A066247(#)]` -/
def P8120384759706761891.Spec : Prop :=
  ∀ n, P8120384759706761891.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P17667208769224593018

`filter[A017005(2*n+1), A202238(#)]`
-/

namespace A140381.P17667208769224593018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140381.P17667208769224593018

namespace A140381

/-- `filter[A017005(2*n+1), A202238(#)]` -/
def P17667208769224593018.Spec : Prop :=
  ∀ n, P17667208769224593018.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P17891186934037879680

`filter[A026476(2*(n+1)), A202238(#)]`
-/

namespace A140381.P17891186934037879680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140381.P17891186934037879680

namespace A140381

/-- `filter[A026476(2*(n+1)), A202238(#)]` -/
def P17891186934037879680.Spec : Prop :=
  ∀ n, P17891186934037879680.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P4125953321243345715

`filter[A063094(2*(n+1)), A202238(#)]`
-/

namespace A140381.P4125953321243345715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140381.P4125953321243345715

namespace A140381

/-- `filter[A063094(2*(n+1)), A202238(#)]` -/
def P4125953321243345715.Spec : Prop :=
  ∀ n, P4125953321243345715.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P17775194511279868249

`filter[A017005(2*n+1), A292438(#)]`
-/

namespace A140381.P17775194511279868249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140381.P17775194511279868249

namespace A140381

/-- `filter[A017005(2*n+1), A292438(#)]` -/
def P17775194511279868249.Spec : Prop :=
  ∀ n, P17775194511279868249.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P7296087429588999072

`filter[A113805(2*(n+1)), A202238(#)]`
-/

namespace A140381.P7296087429588999072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A140381.P7296087429588999072

namespace A140381

/-- `filter[A113805(2*(n+1)), A202238(#)]` -/
def P7296087429588999072.Spec : Prop :=
  ∀ n, P7296087429588999072.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P7912819921357004308

`filter[A026476(2*(n+1)), A292438(#)]`
-/

namespace A140381.P7912819921357004308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140381.P7912819921357004308

namespace A140381

/-- `filter[A026476(2*(n+1)), A292438(#)]` -/
def P7912819921357004308.Spec : Prop :=
  ∀ n, P7912819921357004308.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P11609436161053831470

`filter[A017005(2*n+1), A323162(#)]`
-/

namespace A140381.P11609436161053831470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140381.P11609436161053831470

namespace A140381

/-- `filter[A017005(2*n+1), A323162(#)]` -/
def P11609436161053831470.Spec : Prop :=
  ∀ n, P11609436161053831470.a n = A140381 (n + 1)

end A140381

/-! ## A140381.P3056673716586669219

`filter[A026476(2*(n+1)), A323162(#)]`
-/

namespace A140381.P3056673716586669219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A140381.P3056673716586669219

namespace A140381

/-- `filter[A026476(2*(n+1)), A323162(#)]` -/
def P3056673716586669219.Spec : Prop :=
  ∀ n, P3056673716586669219.a n = A140381 (n + 1)

end A140381

/-!
# A140383: Prime triples of the form p, 2^p-1, 2^(2^p)+1 derived from a single prime p.

The programs for A140383, there is no canonical definition to state claims against.
-/

/-! ## A140383.P7973457524813904736

`A176994(lcm(2*n, a(n-1)))` with `a(0)=2`
-/

namespace A140383.P7973457524813904736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A176994 (Int.lcm (2 * n : ℤ) (a (n - 1)))

end

end A140383.P7973457524813904736

/-!
# A140388: Composites of the form (3*x*y-y-6)/(3*x+1), where x=composite and y=prime.

The programs for A140388, there is no canonical definition to state claims against.
-/

/-! ## A140388.P9838677745308707298

`A091300(eq[1, A233206(n+1)])`
-/

namespace A140388.P9838677745308707298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140388.P9838677745308707298

/-!
# A140390: Nonprimes of the form 21k+1.

The programs for A140390, the canonical program `A140390.P5860684244642945090` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140390 has offset 1).

The definition of A140390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140390.P5860684244642945090

`filter[A215146(n), A373977(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140390

/-- `filter[A215146(n), A373977(#)]` -/
def P5860684244642945090.Spec : Prop :=
  ∀ n, P5860684244642945090.a n = A140390 (n + 1)

theorem P5860684244642945090.correct : P5860684244642945090.Spec := by
  intro n
  simp only [A140390, Nat.add_sub_cancel]

end A140390

/-! ## A140390.P11870953702083141860

`filter[A016993(n), A373977(#)]`
-/

namespace A140390.P11870953702083141860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P11870953702083141860

namespace A140390

/-- `filter[A016993(n), A373977(#)]` -/
def P11870953702083141860.Spec : Prop :=
  ∀ n, P11870953702083141860.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P1436566627113307359

`filter[A215146(n), A005171(#)]`
-/

namespace A140390.P1436566627113307359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140390.P1436566627113307359

namespace A140390

/-- `filter[A215146(n), A005171(#)]` -/
def P1436566627113307359.Spec : Prop :=
  ∀ n, P1436566627113307359.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P418205247283474232

`filter[A215146(n), A292438(#)]`
-/

namespace A140390.P418205247283474232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140390.P418205247283474232

namespace A140390

/-- `filter[A215146(n), A292438(#)]` -/
def P418205247283474232.Spec : Prop :=
  ∀ n, P418205247283474232.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P3010783349703067633

`filter[A016993(3*n), A005171(#)]`
-/

namespace A140390.P3010783349703067633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A140390.P3010783349703067633

namespace A140390

/-- `filter[A016993(3*n), A005171(#)]` -/
def P3010783349703067633.Spec : Prop :=
  ∀ n, P3010783349703067633.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P9066992144937118586

`filter[A016993(3*n), A292438(#)]`
-/

namespace A140390.P9066992144937118586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A140390.P9066992144937118586

namespace A140390

/-- `filter[A016993(3*n), A292438(#)]` -/
def P9066992144937118586.Spec : Prop :=
  ∀ n, P9066992144937118586.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P13801199568936833601

`filter[A151971(2*(n+1)), A373977(#)]`
-/

namespace A140390.P13801199568936833601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151971 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P13801199568936833601

namespace A140390

/-- `filter[A151971(2*(n+1)), A373977(#)]` -/
def P13801199568936833601.Spec : Prop :=
  ∀ n, P13801199568936833601.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P14718088979881749151

`filter[A047274(2*(n+1)), A373977(#)]`
-/

namespace A140390.P14718088979881749151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P14718088979881749151

namespace A140390

/-- `filter[A047274(2*(n+1)), A373977(#)]` -/
def P14718088979881749151.Spec : Prop :=
  ∀ n, P14718088979881749151.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P723806280376758971

`filter[A047336(2*n+1), A373977(#)]`
-/

namespace A140390.P723806280376758971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P723806280376758971

namespace A140390

/-- `filter[A047336(2*n+1), A373977(#)]` -/
def P723806280376758971.Spec : Prop :=
  ∀ n, P723806280376758971.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P17116119803938792999

`filter[A047346(2*n+1), A373977(#)]`
-/

namespace A140390.P17116119803938792999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P17116119803938792999

namespace A140390

/-- `filter[A047346(2*n+1), A373977(#)]` -/
def P17116119803938792999.Spec : Prop :=
  ∀ n, P17116119803938792999.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P16472404499558337949

`filter[A047353(2*n+1), A373977(#)]`
-/

namespace A140390.P16472404499558337949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P16472404499558337949

namespace A140390

/-- `filter[A047353(2*n+1), A373977(#)]` -/
def P16472404499558337949.Spec : Prop :=
  ∀ n, P16472404499558337949.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P6496192655472633537

`filter[A047356(2*n+1), A373977(#)]`
-/

namespace A140390.P6496192655472633537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P6496192655472633537

namespace A140390

/-- `filter[A047356(2*n+1), A373977(#)]` -/
def P6496192655472633537.Spec : Prop :=
  ∀ n, P6496192655472633537.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P1328671451489778462

`filter[A047383(2*n+1), A373977(#)]`
-/

namespace A140390.P1328671451489778462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P1328671451489778462

namespace A140390

/-- `filter[A047383(2*n+1), A373977(#)]` -/
def P1328671451489778462.Spec : Prop :=
  ∀ n, P1328671451489778462.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P3393283273094232945

`filter[A166522(2*n+1), A373977(#)]`
-/

namespace A140390.P3393283273094232945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P3393283273094232945

namespace A140390

/-- `filter[A166522(2*n+1), A373977(#)]` -/
def P3393283273094232945.Spec : Prop :=
  ∀ n, P3393283273094232945.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P5681130035446542052

`filter[A168337(2*n+1), A373977(#)]`
-/

namespace A140390.P5681130035446542052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P5681130035446542052

namespace A140390

/-- `filter[A168337(2*n+1), A373977(#)]` -/
def P5681130035446542052.Spec : Prop :=
  ∀ n, P5681130035446542052.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P388338040481452165

`filter[A304500(3*n), A373977(#)]`
-/

namespace A140390.P388338040481452165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P388338040481452165

namespace A140390

/-- `filter[A304500(3*n), A373977(#)]` -/
def P388338040481452165.Spec : Prop :=
  ∀ n, P388338040481452165.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P2366736782196471313

`filter[A047278(3*n+1), A373977(#)]`
-/

namespace A140390.P2366736782196471313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047278 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P2366736782196471313

namespace A140390

/-- `filter[A047278(3*n+1), A373977(#)]` -/
def P2366736782196471313.Spec : Prop :=
  ∀ n, P2366736782196471313.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P2951392134095323712

`filter[A047282(3*n+1), A373977(#)]`
-/

namespace A140390.P2951392134095323712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047282 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P2951392134095323712

namespace A140390

/-- `filter[A047282(3*n+1), A373977(#)]` -/
def P2951392134095323712.Spec : Prop :=
  ∀ n, P2951392134095323712.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P2050276168588541130

`filter[A047290(3*n+1), A373977(#)]`
-/

namespace A140390.P2050276168588541130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047290 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P2050276168588541130

namespace A140390

/-- `filter[A047290(3*n+1), A373977(#)]` -/
def P2050276168588541130.Spec : Prop :=
  ∀ n, P2050276168588541130.a n = A140390 (n + 1)

end A140390

/-! ## A140390.P1747990565629267875

`filter[A047321(3*n+1), A373977(#)]`
-/

namespace A140390.P1747990565629267875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047321 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A140390.P1747990565629267875

namespace A140390

/-- `filter[A047321(3*n+1), A373977(#)]` -/
def P1747990565629267875.Spec : Prop :=
  ∀ n, P1747990565629267875.a n = A140390 (n + 1)

end A140390

/-!
# A140392: Triples of height (a prime p), base length x and side length y=z of isosceles triangles.

The programs for A140392, there is no canonical definition to state claims against.
-/

/-! ## A140392.P9196819466520044879

`A022998(A370760(n+2))`
-/

namespace A140392.P9196819466520044879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A370760 (n + 2)).toNat

end

end A140392.P9196819466520044879

/-! ## A140392.P4598862909302360688

`A131534(n)*A370760(n+2)`
-/

namespace A140392.P4598862909302360688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n * A370760 (n + 2)

end

end A140392.P4598862909302360688

/-! ## A140392.P17060864586449847323

`A370760(n+2)*A373126(A370760(n+5))`
-/

namespace A140392.P17060864586449847323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370760 (n + 2) * A373126 (A370760 (n + 5)).toNat

end

end A140392.P17060864586449847323

/-!
# A140397: a(n) = floor(3*phi*n) - 3*floor(phi*n) where phi = (1+sqrt(5))/2.

The programs for A140397, the canonical program `A140397.P17694263115539486606` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140397 has offset 1).

The definition of A140397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140397.P12329157551480743796

`floor(∑[3*(n+ϕ)])%3`
-/

namespace A140397.P12329157551480743796
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℝ) + Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ 3

end

end A140397.P12329157551480743796

namespace A140397

/-- `floor(∑[3*(n+ϕ)])%3` -/
def P12329157551480743796.Spec : Prop :=
  ∀ n, P12329157551480743796.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P17694263115539486606

`dr(A292639(n+1)%3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140397

/-- `dr(A292639(n+1)%3)` -/
def P17694263115539486606.Spec : Prop :=
  ∀ n, (P17694263115539486606.a n : ℤ) = A140397 (n + 1)

theorem P17694263115539486606.correct : P17694263115539486606.Spec := by
  intro n
  simp only [A140397, Nat.add_sub_cancel]

end A140397

/-! ## A140397.P10435390875989988412

`2-A292638(n+1)%3`
-/

namespace A140397.P10435390875989988412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A292638 (n + 1)) 3

end

end A140397.P10435390875989988412

namespace A140397

/-- `2-A292638(n+1)%3` -/
def P10435390875989988412.Spec : Prop :=
  ∀ n, P10435390875989988412.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P11815339930575584003

`floor(3*∑[ϕ-A001468(n)])`
-/

namespace A140397.P11815339930575584003
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A140397.P11815339930575584003

namespace A140397

/-- `floor(3*∑[ϕ-A001468(n)])` -/
def P11815339930575584003.Spec : Prop :=
  ∀ n, P11815339930575584003.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P10865414933913406552

`floor((3*n+1)/A024568(n+1))`
-/

namespace A140397.P10865414933913406552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n + 1 : ℚ) / (A024568 (n + 1) : ℚ)⌋

end

end A140397.P10865414933913406552

namespace A140397

/-- `floor((3*n+1)/A024568(n+1))` -/
def P10865414933913406552.Spec : Prop :=
  ∀ n, P10865414933913406552.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P14721261346986156771

`A010872(A005206(2*n+n+2))`
-/

namespace A140397.P14721261346986156771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A005206 (2 * n + (n + 2))).toNat

end

end A140397.P14721261346986156771

namespace A140397

/-- `A010872(A005206(2*n+n+2))` -/
def P14721261346986156771.Spec : Prop :=
  ∀ n, P14721261346986156771.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P8269553525375790533

`A004919(n+1)-A001950(A001950(n+1))`
-/

namespace A140397.P8269553525375790533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 (n + 1) - A001950 (A001950 (n + 1)).toNat

end

end A140397.P8269553525375790533

namespace A140397

/-- `A004919(n+1)-A001950(A001950(n+1))` -/
def P8269553525375790533.Spec : Prop :=
  ∀ n, P8269553525375790533.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P7523845178447180235

`A393579(3*(n+1))`
-/

namespace A140397.P7523845178447180235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393579 (3 * (n + 1))

end

end A140397.P7523845178447180235

namespace A140397

/-- `A393579(3*(n+1))` -/
def P7523845178447180235.Spec : Prop :=
  ∀ n, P7523845178447180235.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P7103045668167016243

`dr(A000201(3*(n+1))%3)`
-/

namespace A140397.P7103045668167016243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000201 (3 * (n + 1))) 3)

end

end A140397.P7103045668167016243

namespace A140397

/-- `dr(A000201(3*(n+1))%3)` -/
def P7103045668167016243.Spec : Prop :=
  ∀ n, (P7103045668167016243.a n : ℤ) = A140397 (n + 1)

end A140397

/-! ## A140397.P5737904818010495881

`A010872(A005379(2*n+n+2))`
-/

namespace A140397.P5737904818010495881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A005379 (2 * n + (n + 2))).toNat

end

end A140397.P5737904818010495881

namespace A140397

/-- `A010872(A005379(2*n+n+2))` -/
def P5737904818010495881.Spec : Prop :=
  ∀ n, P5737904818010495881.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P6754742488210033647

`A001951(A001950(3*(n+1))%A001950(n+1))`
-/

namespace A140397.P6754742488210033647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.tmod (A001950 (3 * (n + 1))) (A001950 (n + 1))).toNat

end

end A140397.P6754742488210033647

namespace A140397

/-- `A001951(A001950(3*(n+1))%A001950(n+1))` -/
def P6754742488210033647.Spec : Prop :=
  ∀ n, P6754742488210033647.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P13740451375184396920

`A060143(A008585(n+1))-A008585(A060143(n+1))`
-/

namespace A140397.P13740451375184396920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A008585 (n + 1)).toNat - A008585 (A060143 (n + 1)).toNat

end

end A140397.P13740451375184396920

namespace A140397

/-- `A060143(A008585(n+1))-A008585(A060143(n+1))` -/
def P13740451375184396920.Spec : Prop :=
  ∀ n, P13740451375184396920.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P11312356126195153982

`A276855(A008585(n+1))-A008585(A276855(n+1))`
-/

namespace A140397.P11312356126195153982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 (A008585 (n + 1)).toNat - A008585 (A276855 (n + 1)).toNat

end

end A140397.P11312356126195153982

namespace A140397

/-- `A276855(A008585(n+1))-A008585(A276855(n+1))` -/
def P11312356126195153982.Spec : Prop :=
  ∀ n, P11312356126195153982.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P10373871931616922974

`A004919(n+1)-A101864(n+1)`
-/

namespace A140397.P10373871931616922974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 (n + 1) - A101864 (n + 1)

end

end A140397.P10373871931616922974

namespace A140397

/-- `A004919(n+1)-A101864(n+1)` -/
def P10373871931616922974.Spec : Prop :=
  ∀ n, P10373871931616922974.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P15599376748077367672

`A284749(A004956(3*(n+1))+n)`
-/

namespace A140397.P15599376748077367672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A004956 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A140397.P15599376748077367672

namespace A140397

/-- `A284749(A004956(3*(n+1))+n)` -/
def P15599376748077367672.Spec : Prop :=
  ∀ n, P15599376748077367672.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P9453100011884221958

`A189463(A004919(n+1))`
-/

namespace A140397.P9453100011884221958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (A004919 (n + 1)).toNat

end

end A140397.P9453100011884221958

namespace A140397

/-- `A189463(A004919(n+1))` -/
def P9453100011884221958.Spec : Prop :=
  ∀ n, P9453100011884221958.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P9984763743586473615

`A189463(A004939(n+1))`
-/

namespace A140397.P9984763743586473615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (A004939 (n + 1)).toNat

end

end A140397.P9984763743586473615

namespace A140397

/-- `A189463(A004939(n+1))` -/
def P9984763743586473615.Spec : Prop :=
  ∀ n, P9984763743586473615.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P3011027989977848287

`A189463(A004959(n+1)-1)`
-/

namespace A140397.P3011027989977848287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (A004959 (n + 1) - 1).toNat

end

end A140397.P3011027989977848287

namespace A140397

/-- `A189463(A004959(n+1)-1)` -/
def P3011027989977848287.Spec : Prop :=
  ∀ n, P3011027989977848287.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P9773469763495389027

`A189463(A004959(n+1))`
-/

namespace A140397.P9773469763495389027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (A004959 (n + 1)).toNat

end

end A140397.P9773469763495389027

namespace A140397

/-- `A189463(A004959(n+1))` -/
def P9773469763495389027.Spec : Prop :=
  ∀ n, P9773469763495389027.a n = A140397 (n + 1)

end A140397

/-! ## A140397.P16178968865936127196

`A010872(A292639(n+1))`
-/

namespace A140397.P16178968865936127196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A292639 (n + 1)).toNat

end

end A140397.P16178968865936127196

namespace A140397

/-- `A010872(A292639(n+1))` -/
def P16178968865936127196.Spec : Prop :=
  ∀ n, P16178968865936127196.a n = A140397 (n + 1)

end A140397

/-!
# A140398: Numbers n such that A140397(n) = 0.

The programs for A140398, the canonical program `A140398.P5444328004615797917` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140398 has offset 1).

The definition of A140398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140398.P5444328004615797917

`eq[1, ceil(3*n/ϕ)%3]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140398

/-- `eq[1, ceil(3*n/ϕ)%3]` -/
def P5444328004615797917.Spec : Prop :=
  ∀ n, (P5444328004615797917.a n : ℤ) = A140398 (n + 1)

theorem P5444328004615797917.correct : P5444328004615797917.Spec := by
  intro n
  simp only [A140398, Nat.add_sub_cancel]

end A140398

/-! ## A140398.P15539317907951953600

`lt[1, ceil(2*ceil(n*3/ϕ)%3/ϕ)%3]`
-/

namespace A140398.P15539317907951953600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * ((Int.tmod ⌈(n : ℝ) * (3 / Real.goldenRatio)⌉ 3 : ℝ) / Real.goldenRatio)⌉ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140398.P15539317907951953600

namespace A140398

/-- `lt[1, ceil(2*ceil(n*3/ϕ)%3/ϕ)%3]` -/
def P15539317907951953600.Spec : Prop :=
  ∀ n, (P15539317907951953600.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P1571233680184559682

`ceil(A190435(n+1)/ϕ)`
-/

namespace A140398.P1571233680184559682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190435 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A140398.P1571233680184559682

namespace A140398

/-- `ceil(A190435(n+1)/ϕ)` -/
def P1571233680184559682.Spec : Prop :=
  ∀ n, P1571233680184559682.a n = A140398 (n + 1)

end A140398

/-! ## A140398.P10882025105207178547

`A190432(n+1)-A190435(n+1)`
-/

namespace A140398.P10882025105207178547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190432 (n + 1) - A190435 (n + 1)

end

end A140398.P10882025105207178547

namespace A140398

/-- `A190432(n+1)-A190435(n+1)` -/
def P10882025105207178547.Spec : Prop :=
  ∀ n, P10882025105207178547.a n = A140398 (n + 1)

end A140398

/-! ## A140398.P2867227366119015781

`A302253(n+1)%A190435(n+1)`
-/

namespace A140398.P2867227366119015781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302253 (n + 1)) (A190435 (n + 1))

end

end A140398.P2867227366119015781

namespace A140398

/-- `A302253(n+1)%A190435(n+1)` -/
def P2867227366119015781.Spec : Prop :=
  ∀ n, P2867227366119015781.a n = A140398 (n + 1)

end A140398

/-! ## A140398.P2586513417840712496

`2*A190432(n+1)-A302253(n+1)`
-/

namespace A140398.P2586513417840712496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190432 (n + 1) - A302253 (n + 1)

end

end A140398.P2586513417840712496

namespace A140398

/-- `2*A190432(n+1)-A302253(n+1)` -/
def P2586513417840712496.Spec : Prop :=
  ∀ n, P2586513417840712496.a n = A140398 (n + 1)

end A140398

/-! ## A140398.P2160423797333143588

`∩[A001950(n+1), A181713(n+1)]`
-/

namespace A140398.P2160423797333143588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P2160423797333143588

namespace A140398

/-- `∩[A001950(n+1), A181713(n+1)]` -/
def P2160423797333143588.Spec : Prop :=
  ∀ n, (P2160423797333143588.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P12244952794507952936

`∩[A005653(n+1), A181713(n+1)]`
-/

namespace A140398.P12244952794507952936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P12244952794507952936

namespace A140398

/-- `∩[A005653(n+1), A181713(n+1)]` -/
def P12244952794507952936.Spec : Prop :=
  ∀ n, (P12244952794507952936.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P17950030961300099056

`∩[A181713(n+1), A188016(n+1)]`
-/

namespace A140398.P17950030961300099056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P17950030961300099056

namespace A140398

/-- `∩[A181713(n+1), A188016(n+1)]` -/
def P17950030961300099056.Spec : Prop :=
  ∀ n, (P17950030961300099056.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P4427532064607005632

`∩[A181713(n+1), A188036(n+1)]`
-/

namespace A140398.P4427532064607005632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P4427532064607005632

namespace A140398

/-- `∩[A181713(n+1), A188036(n+1)]` -/
def P4427532064607005632.Spec : Prop :=
  ∀ n, (P4427532064607005632.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P7390214526162199194

`∩[A181713(n+1), A188468(n+1)]`
-/

namespace A140398.P7390214526162199194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P7390214526162199194

namespace A140398

/-- `∩[A181713(n+1), A188468(n+1)]` -/
def P7390214526162199194.Spec : Prop :=
  ∀ n, (P7390214526162199194.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P16112308292393866352

`∩[A181713(n+1), A327203(n+1)]`
-/

namespace A140398.P16112308292393866352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P16112308292393866352

namespace A140398

/-- `∩[A181713(n+1), A327203(n+1)]` -/
def P16112308292393866352.Spec : Prop :=
  ∀ n, (P16112308292393866352.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P6967578584035439945

`∩[A003258(n+1), A181713(n+1)]`
-/

namespace A140398.P6967578584035439945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P6967578584035439945

namespace A140398

/-- `∩[A003258(n+1), A181713(n+1)]` -/
def P6967578584035439945.Spec : Prop :=
  ∀ n, (P6967578584035439945.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P3183547940301184979

`∩[A022342(n+1), A181713(n+1)]`
-/

namespace A140398.P3183547940301184979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140398.P3183547940301184979

namespace A140398

/-- `∩[A022342(n+1), A181713(n+1)]` -/
def P3183547940301184979.Spec : Prop :=
  ∀ n, (P3183547940301184979.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P14678930668969052146

`A005206(A190435(n+1))`
-/

namespace A140398.P14678930668969052146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A190435 (n + 1)).toNat

end

end A140398.P14678930668969052146

namespace A140398

/-- `A005206(A190435(n+1))` -/
def P14678930668969052146.Spec : Prop :=
  ∀ n, P14678930668969052146.a n = A140398 (n + 1)

end A140398

/-! ## A140398.P13652623981592991262

`filter[A181713(n+1), A005614(#)]`
-/

namespace A140398.P13652623981592991262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005614 (f1 j).toNat = 1) n)

end

end A140398.P13652623981592991262

namespace A140398

/-- `filter[A181713(n+1), A005614(#)]` -/
def P13652623981592991262.Spec : Prop :=
  ∀ n, P13652623981592991262.a n = A140398 (n + 1)

end A140398

/-! ## A140398.P17557925777355837262

`filter[A181713(n+2), A131309(#)]`
-/

namespace A140398.P17557925777355837262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131309 (f1 j).toNat = 1) n)

end

end A140398.P17557925777355837262

namespace A140398

/-- `filter[A181713(n+2), A131309(#)]` -/
def P17557925777355837262.Spec : Prop :=
  ∀ n, P17557925777355837262.a n = A140398 (n + 1)

end A140398

/-! ## A140398.P10488708603365926499

`eq[0, A140397(n+1)]+1`
-/

namespace A140398.P10488708603365926499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140398.P10488708603365926499

namespace A140398

/-- `eq[0, A140397(n+1)]+1` -/
def P10488708603365926499.Spec : Prop :=
  ∀ n, (P10488708603365926499.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P2900403646536440930

`lt[2, A024569(n+1)]+1`
-/

namespace A140398.P2900403646536440930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A140398.P2900403646536440930

namespace A140398

/-- `lt[2, A024569(n+1)]+1` -/
def P2900403646536440930.Spec : Prop :=
  ∀ n, (P2900403646536440930.a n : ℤ) = A140398 (n + 1)

end A140398

/-! ## A140398.P13309250892165927748

`filter[A181713(n+1), A089809(#)]`
-/

namespace A140398.P13309250892165927748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089809 (f1 j).toNat = 1) n)

end

end A140398.P13309250892165927748

namespace A140398

/-- `filter[A181713(n+1), A089809(#)]` -/
def P13309250892165927748.Spec : Prop :=
  ∀ n, P13309250892165927748.a n = A140398 (n + 1)

end A140398

/-!
# A140399: Numbers n such that A140397(n) = 1.

The programs for A140399, the canonical program `A140399.P12379699031545914695` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140399 has offset 1).

The definition of A140399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140399.P12379699031545914695

`eq[1, floor(3*n/ϕ)%3]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A140399

/-- `eq[1, floor(3*n/ϕ)%3]` -/
def P12379699031545914695.Spec : Prop :=
  ∀ n, (P12379699031545914695.a n : ℤ) = A140399 (n + 1)

theorem P12379699031545914695.correct : P12379699031545914695.Spec := by
  intro n
  simp only [A140399, Nat.add_sub_cancel]

end A140399

/-! ## A140399.P11155345803429229616

`lt[1, ceil(3*n/ϕ)%3]`
-/

namespace A140399.P11155345803429229616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈3 * ((n : ℝ) / Real.goldenRatio)⌉ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140399.P11155345803429229616

namespace A140399

/-- `lt[1, ceil(3*n/ϕ)%3]` -/
def P11155345803429229616.Spec : Prop :=
  ∀ n, (P11155345803429229616.a n : ℤ) = A140399 (n + 1)

end A140399

/-! ## A140399.P6895879485349563686

`eq[1, A140397(n+1)]+1`
-/

namespace A140399.P6895879485349563686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140399.P6895879485349563686

namespace A140399

/-- `eq[1, A140397(n+1)]+1` -/
def P6895879485349563686.Spec : Prop :=
  ∀ n, (P6895879485349563686.a n : ℤ) = A140399 (n + 1)

end A140399

/-! ## A140399.P547734338157559140

`eq[0, abs(a(A140397(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A140399.P547734338157559140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (A140397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140399.P547734338157559140

namespace A140399

/-- `eq[0, abs(a(A140397(n)))]` -/
def P547734338157559140.Spec : Prop :=
  ∀ n, (P547734338157559140.a n : ℤ) = A140399 (n + 1)

end A140399

/-! ## A140399.P16340818636893773723

`eq[1, A000032(a(A140397(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A140399.P16340818636893773723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000032 (f2 (A140397 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140399.P16340818636893773723

namespace A140399

/-- `eq[1, A000032(a(A140397(n)))]` -/
def P16340818636893773723.Spec : Prop :=
  ∀ n, (P16340818636893773723.a n : ℤ) = A140399 (n + 1)

end A140399

/-! ## A140399.P7432716266678356923

`eq[1, A000045(a(A140397(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A140399.P7432716266678356923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000045 (f2 (A140397 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140399.P7432716266678356923

namespace A140399

/-- `eq[1, A000045(a(A140397(n)))]` -/
def P7432716266678356923.Spec : Prop :=
  ∀ n, (P7432716266678356923.a n : ℤ) = A140399 (n + 1)

end A140399

/-! ## A140399.P6064873907327158091

`eq[1, A000203(a(A140397(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A140399.P6064873907327158091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000203 (f2 (A140397 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140399.P6064873907327158091

namespace A140399

/-- `eq[1, A000203(a(A140397(n)))]` -/
def P6064873907327158091.Spec : Prop :=
  ∀ n, (P6064873907327158091.a n : ℤ) = A140399 (n + 1)

end A140399

/-! ## A140399.P1315614835953801071

`eq[1, A018252(a(A140397(n)))]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A140399.P1315614835953801071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f2 =>
  A018252 (f2 (A140397 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140399.P1315614835953801071

namespace A140399

/-- `eq[1, A018252(a(A140397(n)))]` -/
def P1315614835953801071.Spec : Prop :=
  ∀ n, (P1315614835953801071.a n : ℤ) = A140399 (n + 1)

end A140399

/-! ## A140399.P14659497947920412385

`eq[2, A003842(A004919(n))]`
-/

namespace A140399.P14659497947920412385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A004919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140399.P14659497947920412385

namespace A140399

/-- `eq[2, A003842(A004919(n))]` -/
def P14659497947920412385.Spec : Prop :=
  ∀ n, (P14659497947920412385.a n : ℤ) = A140399 (n + 1)

end A140399

