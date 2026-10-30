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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A276704: Records in A249859.

The programs for A276704, the canonical program `A276704.P375497386683290899` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276704 has offset 1).

The definition of A276704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276704.P446468405016063745

`record[lcm(n+1, 3-n)]`
-/

namespace A276704.P446468405016063745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (3 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276704.P446468405016063745

namespace A276704

/-- `record[lcm(n+1, 3-n)]` -/
def P446468405016063745.Spec : Prop :=
  ∀ n, (P446468405016063745.a n : ℤ) = A276704 (n + 1)

end A276704

/-! ## A276704.P569873045748803409

`ogf((3-4x+15x^3-5x^4-x^5)/(1-3x+3x^2-x^3))`
-/

namespace A276704.P569873045748803409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 0, 15, -5, -1] [1, -3, 3, -1] n

end

end A276704.P569873045748803409

namespace A276704

/-- `ogf((3-4x+15x^3-5x^4-x^5)/(1-3x+3x^2-x^3))` -/
def P569873045748803409.Spec : Prop :=
  ∀ n, P569873045748803409.a n = A276704 (n + 1)

end A276704

/-! ## A276704.P375497386683290899

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=21, a(4)=45, a(5)=77`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A276704

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P375497386683290899.Spec : Prop :=
  ∀ n, P375497386683290899.a n = A276704 (n + 1)

theorem P375497386683290899.correct : P375497386683290899.Spec := by
  intro n
  simp only [A276704, Nat.add_sub_cancel]

end A276704

/-! ## A276704.P14312494069330257088

`record[abs(3-n)*A000265(n+1)]`
-/

namespace A276704.P14312494069330257088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (n : ℤ)| * A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276704.P14312494069330257088

namespace A276704

/-- `record[abs(3-n)*A000265(n+1)]` -/
def P14312494069330257088.Spec : Prop :=
  ∀ n, P14312494069330257088.a n = A276704 (n + 1)

end A276704

/-! ## A276704.P13901829990288190142

`record[A009005(n+1)*A093178(n)]`
-/

namespace A276704.P13901829990288190142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1) * A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276704.P13901829990288190142

namespace A276704

/-- `record[A009005(n+1)*A093178(n)]` -/
def P13901829990288190142.Spec : Prop :=
  ∀ n, P13901829990288190142.a n = A276704 (n + 1)

end A276704

/-! ## A276704.P2565337970086826540

`record[A249859(n+1)]`
-/

namespace A276704.P2565337970086826540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276704.P2565337970086826540

namespace A276704

/-- `record[A249859(n+1)]` -/
def P2565337970086826540.Spec : Prop :=
  ∀ n, P2565337970086826540.a n = A276704 (n + 1)

end A276704

/-! ## A276704.P11228708367930810851

`record[A277384(2*(n+1))/2]`
-/

namespace A276704.P11228708367930810851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277384 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276704.P11228708367930810851

namespace A276704

/-- `record[A277384(2*(n+1))/2]` -/
def P11228708367930810851.Spec : Prop :=
  ∀ n, P11228708367930810851.a n = (A276704 (n + 1) : ℚ)

end A276704

/-! ## A276704.P17136508043143104142

`record[A051173(A046691(n+2))]`
-/

namespace A276704.P17136508043143104142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (A046691 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276704.P17136508043143104142

namespace A276704

/-- `record[A051173(A046691(n+2))]` -/
def P17136508043143104142.Spec : Prop :=
  ∀ n, P17136508043143104142.a n = A276704 (n + 1)

end A276704

/-! ## A276704.P5379866829712346718

`record[A051173(A167614(n+1)+A005843(n))]`
-/

namespace A276704.P5379866829712346718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (A167614 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276704.P5379866829712346718

namespace A276704

/-- `record[A051173(A167614(n+1)+A005843(n))]` -/
def P5379866829712346718.Spec : Prop :=
  ∀ n, P5379866829712346718.a n = A276704 (n + 1)

end A276704

/-!
# A276705: Records in A249860.

The programs for A276705, the canonical program `A276705.P16587625994173106530` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276705 has offset 1).

The definition of A276705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276705.P16587625994173106530

`record[lcm(2-n, n+4)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A276705

/-- `record[lcm(2-n, n+4)]` -/
def P16587625994173106530.Spec : Prop :=
  ∀ n, (P16587625994173106530.a n : ℤ) = A276705 (n + 1)

theorem P16587625994173106530.correct : P16587625994173106530.Spec := by
  intro n
  simp only [A276705, Nat.add_sub_cancel]

end A276705

/-! ## A276705.P4094387863232938702

`ogf((4+x-6x^2-x^3+x^4+10x^5+35x^6+15x^7+27x^8-x^9-13x^10)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A276705.P4094387863232938702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -6, -1, 1, 10, 35, 15, 27, -1, -13] [1, -1, -2, 2, 1, -1] n

end

end A276705.P4094387863232938702

namespace A276705

/-- `ogf((4+x-6x^2-x^3+x^4+10x^5+35x^6+15x^7+27x^8-x^9-13x^10)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P4094387863232938702.Spec : Prop :=
  ∀ n, P4094387863232938702.a n = A276705 (n + 1)

end A276705

/-! ## A276705.P17227525955935851984

`record[A249860(n+1)]`
-/

namespace A276705.P17227525955935851984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276705.P17227525955935851984

namespace A276705

/-- `record[A249860(n+1)]` -/
def P17227525955935851984.Spec : Prop :=
  ∀ n, P17227525955935851984.a n = A276705 (n + 1)

end A276705

/-! ## A276705.P13806909864686449366

`sqrt(record[lcm(n-2, A020705(n))²])`
-/

namespace A276705.P13806909864686449366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) (A020705 n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A276705.P13806909864686449366

namespace A276705

/-- `sqrt(record[lcm(n-2, A020705(n))²])` -/
def P13806909864686449366.Spec : Prop :=
  ∀ n, P13806909864686449366.a n = (A276705 (n + 1) : ℝ)

end A276705

/-! ## A276705.P12588170104005113563

`A249860(A276706(n+1))`
-/

namespace A276705.P12588170104005113563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (A276706 (n + 1)).toNat

end

end A276705.P12588170104005113563

namespace A276705

/-- `A249860(A276706(n+1))` -/
def P12588170104005113563.Spec : Prop :=
  ∀ n, P12588170104005113563.a n = A276705 (n + 1)

end A276705

/-! ## A276705.P227946368496806441

`record[abs(2-n)*A060789(n+4)]`
-/

namespace A276705.P227946368496806441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| * A060789 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276705.P227946368496806441

namespace A276705

/-- `record[abs(2-n)*A060789(n+4)]` -/
def P227946368496806441.Spec : Prop :=
  ∀ n, P227946368496806441.a n = A276705 (n + 1)

end A276705

/-!
# A276706: Indices of records in A249860.

The programs for A276706, the canonical program `A276706.P1707277188756018080` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276706 has offset 1).

The definition of A276706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276706.P13748364084884033614

`∑[2*a(gcd(2, n))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A276706.P13748364084884033614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1, 1, 1, 1] fun n f1 =>
  2 * f1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276706.P13748364084884033614

namespace A276706

/-- `∑[2*a(gcd(2, n))]` -/
def P13748364084884033614.Spec : Prop :=
  ∀ n, (P13748364084884033614.a n : ℤ) = A276706 (n + 1)

end A276706

/-! ## A276706.P7455873833350675235

`ogf((1+x+x^2-x^4+x^7+3x^8)/(1-x-x^2+x^3))`
-/

namespace A276706.P7455873833350675235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 0, -1, 0, 0, 1, 3] [1, -1, -1, 1] n

end

end A276706.P7455873833350675235

namespace A276706

/-- `ogf((1+x+x^2-x^4+x^7+3x^8)/(1-x-x^2+x^3))` -/
def P7455873833350675235.Spec : Prop :=
  ∀ n, P7455873833350675235.a n = A276706 (n + 1)

end A276706

/-! ## A276706.P1707277188756018080

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=6, a(5)=7, a(6)=8, a(7)=10, a(8)=14`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A276706

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1707277188756018080.Spec : Prop :=
  ∀ n, P1707277188756018080.a n = A276706 (n + 1)

theorem P1707277188756018080.correct : P1707277188756018080.Spec := by
  intro n
  simp only [A276706, Nat.add_sub_cancel]

end A276706

/-! ## A276706.P11065918506750125069

`record[A249860(n+1)+n+1]-A276705(n+1)`
-/

namespace A276706.P11065918506750125069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249860 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A276705 (n + 1)

end

end A276706.P11065918506750125069

namespace A276706

/-- `record[A249860(n+1)+n+1]-A276705(n+1)` -/
def P11065918506750125069.Spec : Prop :=
  ∀ n, P11065918506750125069.a n = A276706 (n + 1)

end A276706

/-! ## A276706.P8555704166956426841

`record[A310102(n)%(n+2)]`
-/

namespace A276706.P8555704166956426841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310102 n) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276706.P8555704166956426841

namespace A276706

/-- `record[A310102(n)%(n+2)]` -/
def P8555704166956426841.Spec : Prop :=
  ∀ n, P8555704166956426841.a n = A276706 (n + 1)

end A276706

/-! ## A276706.P16408304161436354197

`∑[gcd(4, ∑[A280013(n+1)])]`
-/

namespace A276706.P16408304161436354197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280013 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276706.P16408304161436354197

namespace A276706

/-- `∑[gcd(4, ∑[A280013(n+1)])]` -/
def P16408304161436354197.Spec : Prop :=
  ∀ n, (P16408304161436354197.a n : ℤ) = A276706 (n + 1)

end A276706

/-! ## A276706.P5485773628226328621

`∑[gcd(A000124(4*n+2), A345496(2*n+3))]`
-/

namespace A276706.P5485773628226328621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000124 (4 * n + 2)) (A345496 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276706.P5485773628226328621

namespace A276706

/-- `∑[gcd(A000124(4*n+2), A345496(2*n+3))]` -/
def P5485773628226328621.Spec : Prop :=
  ∀ n, (P5485773628226328621.a n : ℤ) = A276706 (n + 1)

end A276706

/-! ## A276706.P3091160985441864439

`record[gcd(A006463(n), A199408(n+1))]`
-/

namespace A276706.P3091160985441864439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006463 n) (A199408 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276706.P3091160985441864439

namespace A276706

/-- `record[gcd(A006463(n), A199408(n+1))]` -/
def P3091160985441864439.Spec : Prop :=
  ∀ n, (P3091160985441864439.a n : ℤ) = A276706 (n + 1)

end A276706

/-!
# A276707: Number of terms of A069090 with exactly n digits.

The programs for A276707, there is no canonical definition to state claims against.
-/

/-! ## A276707.P14995835316924520445

`A187793(A214458(n)+A001710(n+3))`
-/

namespace A276707.P14995835316924520445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A214458 n + A001710 (n + 3)).toNat

end

end A276707.P14995835316924520445

/-!
# A276708: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A276708, there is no canonical definition to state claims against.
-/

/-! ## A276708.P3014061235091640144

`A278343(A093178(n))-n%2`
-/

namespace A276708.P3014061235091640144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278343 (A093178 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A276708.P3014061235091640144

/-! ## A276708.P14689365040076055120

`and(A168330(n+1), A278343(n))`
-/

namespace A276708.P14689365040076055120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A278343 n)

end

end A276708.P14689365040076055120

/-! ## A276708.P13072898371819018301

`and(A278343(n), A327767(n+1))`
-/

namespace A276708.P13072898371819018301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278343 n) (A327767 (n + 1))

end

end A276708.P13072898371819018301

/-! ## A276708.P5084330062651730685

`A278343(A093178(n))-A000035(n)`
-/

namespace A276708.P5084330062651730685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278343 (A093178 n).toNat - A000035 n

end

end A276708.P5084330062651730685

/-! ## A276708.P17431379452285523406

`A278343(A093178(n))-char[A099375(n)]`
-/

namespace A276708.P17431379452285523406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278343 (A093178 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276708.P17431379452285523406

/-! ## A276708.P17251549655733875173

`A278343(A093178(n))-char[A109128(n)]`
-/

namespace A276708.P17251549655733875173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278343 (A093178 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276708.P17251549655733875173

/-! ## A276708.P18094452809552920014

`A278343(n*A000035(n))-A000035(n)`
-/

namespace A276708.P18094452809552920014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278343 ((n : ℤ) * A000035 n).toNat - A000035 n

end

end A276708.P18094452809552920014

/-! ## A276708.P8286571037753779130

`(A278343(A093178(n))+A033999(n))/gcd(2, n)`
-/

namespace A276708.P8286571037753779130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278343 (A093178 n).toNat + A033999 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A276708.P8286571037753779130

/-!
# A276710: Composite numbers m such that Product_{k=0..m} binomial(m,k) is divisible by m^(m-1).

The programs for A276710, there is no canonical definition to state claims against.
-/

/-! ## A276710.P3612010181401923700

`lt[3, A249431(n+1)+3]+2`
-/

namespace A276710.P3612010181401923700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A276710.P3612010181401923700

/-! ## A276710.P15283588459263897520

`eq[n+1, (n+1)%A249151(n+1)]+2`
-/

namespace A276710.P15283588459263897520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A249151 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A276710.P15283588459263897520

/-! ## A276710.P3666873151223331536

`lt[A000007(n), A249431(n)]+1`
-/

namespace A276710.P3666873151223331536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276710.P3666873151223331536

/-! ## A276710.P10122800399987528530

`lt[A028310(n), A249151(n)]+1`
-/

namespace A276710.P10122800399987528530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276710.P10122800399987528530

/-! ## A276710.P5038751116053532305

`A020725(lt[A028310(n), A249151(n)])`
-/

namespace A276710.P5038751116053532305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276710.P5038751116053532305

/-! ## A276710.P10751356270742724399

`A249429(n+2)+1`
-/

namespace A276710.P10751356270742724399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249429 (n + 2) + 1

end

end A276710.P10751356270742724399

/-! ## A276710.P16697971606504361385

`A011760(A249429(n+2))`
-/

namespace A276710.P16697971606504361385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A249429 (n + 2)).toNat

end

end A276710.P16697971606504361385

/-!
# A276711: Number of primes p <= n such that n - p is a perfect power (including 0 and 1).

The programs for A276711, there is no canonical definition to state claims against.
-/

/-! ## A276711.P13385098480053566843

`A196228(n+1)+A010051(n+1)`
-/

namespace A276711.P13385098480053566843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + A010051 (n + 1)

end

end A276711.P13385098480053566843

/-! ## A276711.P10203346419595673969

`A196228(n+1)+char[A006093(n+1)]`
-/

namespace A276711.P10203346419595673969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276711.P10203346419595673969

/-! ## A276711.P6123753906029718939

`A196228(n+1)+char[A267101(n+1)-1]`
-/

namespace A276711.P6123753906029718939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276711.P6123753906029718939

/-! ## A276711.P9152597595177210528

`A196228(n+1)+A033683(A001222(n+1))`
-/

namespace A276711.P9152597595177210528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + A033683 (A001222 (n + 1)).toNat

end

end A276711.P9152597595177210528

/-! ## A276711.P4550531112543682691

`A196228(n+1)+A032741(A061397(n+1))`
-/

namespace A276711.P4550531112543682691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + A032741 (A061397 (n + 1)).toNat

end

end A276711.P4550531112543682691

/-! ## A276711.P10533723554684296178

`A196228(n+1)+A057427(A049084(n+1))`
-/

namespace A276711.P10533723554684296178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + A057427 (A049084 (n + 1)).toNat

end

end A276711.P10533723554684296178

/-! ## A276711.P12073481210839702328

`A196228(n+1)+Δ[A230980(n)]`
-/

namespace A276711.P12073481210839702328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + (f1 (n + 1) - f1 n)

end

end A276711.P12073481210839702328

/-! ## A276711.P3072528813093983931

`A196228(n+1)+A196228(n+2)-A253238(n+2)`
-/

namespace A276711.P3072528813093983931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) + (A196228 (n + 2) - A253238 (n + 2))

end

end A276711.P3072528813093983931

/-!
# A276713: Numbers n such that n and n+3 have the same number of divisors (A000005).

The programs for A276713, the canonical program `A276713.P3108647971272801842` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276713 has offset 1).

The definition of A276713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276713.P101863496655321246

`eq[A032741(n), A325765(n+2)]`
-/

namespace A276713.P101863496655321246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276713.P101863496655321246

namespace A276713

/-- `eq[A032741(n), A325765(n+2)]` -/
def P101863496655321246.Spec : Prop :=
  ∀ n, (P101863496655321246.a n : ℤ) = A276713 (n + 1)

end A276713

/-! ## A276713.P3108647971272801842

`eq[A032741(n+3), A032741(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A276713

/-- `eq[A032741(n+3), A032741(n)]` -/
def P3108647971272801842.Spec : Prop :=
  ∀ n, (P3108647971272801842.a n : ℤ) = A276713 (n + 1)

theorem P3108647971272801842.correct : P3108647971272801842.Spec := by
  intro n
  simp only [A276713, Nat.add_sub_cancel]

end A276713

/-! ## A276713.P4033196683401946716

`eq[A145154(n+3), A145154(n)]`
-/

namespace A276713.P4033196683401946716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276713.P4033196683401946716

namespace A276713

/-- `eq[A145154(n+3), A145154(n)]` -/
def P4033196683401946716.Spec : Prop :=
  ∀ n, (P4033196683401946716.a n : ℤ) = A276713 (n + 1)

end A276713

/-! ## A276713.P11117689931197921613

`eq[A319410(n+3), A319410(n)]`
-/

namespace A276713.P11117689931197921613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276713.P11117689931197921613

namespace A276713

/-- `eq[A319410(n+3), A319410(n)]` -/
def P11117689931197921613.Spec : Prop :=
  ∀ n, (P11117689931197921613.a n : ℤ) = A276713 (n + 1)

end A276713

/-! ## A276713.P16059794096530364068

`eq[A000005(n+1), A000005(n+4)]+1`
-/

namespace A276713.P16059794096530364068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276713.P16059794096530364068

namespace A276713

/-- `eq[A000005(n+1), A000005(n+4)]+1` -/
def P16059794096530364068.Spec : Prop :=
  ∀ n, (P16059794096530364068.a n : ℤ) = A276713 (n + 1)

end A276713

/-! ## A276713.P5557361056464228863

`eq[A100587(n+1), A100587(n+4)]+1`
-/

namespace A276713.P5557361056464228863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276713.P5557361056464228863

namespace A276713

/-- `eq[A100587(n+1), A100587(n+4)]+1` -/
def P5557361056464228863.Spec : Prop :=
  ∀ n, (P5557361056464228863.a n : ℤ) = A276713 (n + 1)

end A276713

/-! ## A276713.P6257656324396254062

`eq[A286605(n+1), A286605(n+4)]+1`
-/

namespace A276713.P6257656324396254062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276713.P6257656324396254062

namespace A276713

/-- `eq[A286605(n+1), A286605(n+4)]+1` -/
def P6257656324396254062.Spec : Prop :=
  ∀ n, (P6257656324396254062.a n : ℤ) = A276713 (n + 1)

end A276713

/-! ## A276713.P7089507687931476329

`eq[A334954(n+3), A334954(A028310(n))]`
-/

namespace A276713.P7089507687931476329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276713.P7089507687931476329

namespace A276713

/-- `eq[A334954(n+3), A334954(A028310(n))]` -/
def P7089507687931476329.Spec : Prop :=
  ∀ n, (P7089507687931476329.a n : ℤ) = A276713 (n + 1)

end A276713

/-!
# A276716: a(n) = A007953(n)*A047726(n).

The programs for A276716, there is no canonical definition to state claims against.
-/

/-! ## A276716.P11100597631156790677

`A007953(n+1)*A047726(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276716.P11100597631156790677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A047726 (n + 1)

end

end A276716.P11100597631156790677

/-! ## A276716.P656380323092411470

`Δ[A037123(n)]*A047726(n+1)`
-/

namespace A276716.P656380323092411470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A047726 (n + 1)

end

end A276716.P656380323092411470

/-! ## A276716.P7193774184061571398

`sqrt(A118881(n+1))*A047726(n+1)`
-/

namespace A276716.P7193774184061571398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n + 1) : ℝ) * (A047726 (n + 1) : ℝ)

end

end A276716.P7193774184061571398

/-! ## A276716.P3772893606182555839

`A047726(n+1)*A062329(A057169(n+1))`
-/

namespace A276716.P3772893606182555839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1) * A062329 (A057169 (n + 1)).toNat

end

end A276716.P3772893606182555839

/-! ## A276716.P11742838235028615873

`∑{e}[A329562(n+1), #*A047726(n+1)]`
-/

namespace A276716.P11742838235028615873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A047726 (n + 1)

end

end A276716.P11742838235028615873

/-! ## A276716.P8283869074372909572

`A217928(n+1)*A276502(n+1)`
-/

namespace A276716.P8283869074372909572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (n + 1) * A276502 (n + 1)

end

end A276716.P8283869074372909572

/-! ## A276716.P12238096981495774624

`A007953(n+1)*A043562(A196222(n+1)²)`
-/

namespace A276716.P12238096981495774624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A043562 (A196222 (n + 1) ^ 2).toNat

end

end A276716.P12238096981495774624

/-! ## A276716.P3121910855055243737

`A007953(n+1)*A043537(A118759(n+1))`
-/

namespace A276716.P3121910855055243737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A043537 (A118759 (n + 1)).toNat

end

end A276716.P3121910855055243737

/-!
# A276718: Numbers n such that Sum_{k=1..n} d(r(k)) is an integer where d(r(k)) is the decimal fraction 0.r(k), where r(k) is the reverse of k (e.g. d(r(123))=0.321).

The programs for A276718, there is no canonical definition to state claims against.
-/

/-! ## A276718.P2442927162669143998

`floor(sqrt(2*A275573(n+1)))`
-/

namespace A276718.P2442927162669143998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A275573 (n + 1))

end

end A276718.P2442927162669143998

/-!
# A276719: Number A(n,k) of set partitions of [n] such that for each block b the smallest integer interval containing b has at most k elements; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A276719, there is no canonical definition to state claims against.
-/

/-! ## A276719.P11935547598770423737

`A285189(A293960(n)+A143841(n))`
-/

namespace A276719.P11935547598770423737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A293960 n + A143841 n).toNat

end

end A276719.P11935547598770423737

/-! ## A276719.P16567633345270922316

`A285189(A293960(n)+A182172(n))`
-/

namespace A276719.P16567633345270922316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A293960 n + A182172 n).toNat

end

end A276719.P16567633345270922316

/-! ## A276719.P15363130064172690770

`A067693(A247506(n)*A276837(n))`
-/

namespace A276719.P15363130064172690770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A247506 n * A276837 n).toNat

end

end A276719.P15363130064172690770

/-! ## A276719.P5156171346885713111

`A285189(or(A143841(n), A293960(n)))`
-/

namespace A276719.P5156171346885713111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (Int.lor (A143841 n) (A293960 n)).toNat

end

end A276719.P5156171346885713111

/-! ## A276719.P13304924771562394300

`A285189(or(A182172(n), A293960(n)))`
-/

namespace A276719.P13304924771562394300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (Int.lor (A182172 n) (A293960 n)).toNat

end

end A276719.P13304924771562394300

/-!
# A276720: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most four elements.

The programs for A276720, the canonical program `A276720.P12571455152901335843` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276720 has offset 0).

The definition of A276720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276720.P12571455152901335843

`ogf((1-x^2)/(1-x-2x^2-x^3-5x^4-5x^5+3x^7+x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A276720

/-- `ogf((1-x^2)/(1-x-2x^2-x^3-5x^4-5x^5+3x^7+x^8))` -/
def P12571455152901335843.Spec : Prop :=
  ∀ n, P12571455152901335843.a n = A276720 n

theorem P12571455152901335843.correct : P12571455152901335843.Spec := by
  intro n
  simp only [A276720]

end A276720

/-! ## A276720.P2024131995598807607

`A276719(A052905(n+2))`
-/

namespace A276720.P2024131995598807607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A052905 (n + 2)).toNat

end

end A276720.P2024131995598807607

namespace A276720

/-- `A276719(A052905(n+2))` -/
def P2024131995598807607.Spec : Prop :=
  ∀ n, P2024131995598807607.a n = A276720 n

end A276720

/-! ## A276720.P16203959257304706242

`A276719(eq[4, A025581(n)])`
-/

namespace A276720.P16203959257304706242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276720.P16203959257304706242

namespace A276720

/-- `A276719(eq[4, A025581(n)])` -/
def P16203959257304706242.Spec : Prop :=
  ∀ n, P16203959257304706242.a n = A276720 n

end A276720

/-! ## A276720.P18342929453332413349

`A276719(Δ[A055831(n+4)])`
-/

namespace A276720.P18342929453332413349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (f1 (n + 1) - f1 n).toNat

end

end A276720.P18342929453332413349

namespace A276720

/-- `A276719(Δ[A055831(n+4)])` -/
def P18342929453332413349.Spec : Prop :=
  ∀ n, P18342929453332413349.a n = A276720 n

end A276720

/-! ## A276720.P12219663760915205859

`A276719(A000217(n+5)-5)`
-/

namespace A276720.P12219663760915205859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000217 (n + 5) - 5).toNat

end

end A276720.P12219663760915205859

namespace A276720

/-- `A276719(A000217(n+5)-5)` -/
def P12219663760915205859.Spec : Prop :=
  ∀ n, P12219663760915205859.a n = A276720 n

end A276720

/-!
# A276721: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most five elements.

The programs for A276721, the canonical program `A276721.P2943110879388901566` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276721 has offset 0).

The definition of A276721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276721.P2943110879388901566

`ogf((1-x^2-2x^3-3x^5-x^6-x^8)/(1-x-2x^2-3x^3-3x^4-21x^5-28x^6-24x^7-4x^8+22x^9+23x^10+29x^11+20x^12+4x^13+2x^14+4x^15+x^16))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A276721

/-- `ogf((1-x^2-2x^3-3x^5-x^6-x^8)/(1-x-2x^2-3x^3-3x^4-21x^5-28x^6-24x^7-4x^8+22x^9+23x^10+29x^11+20x^12+4x^13+2x^14+4x^15+x^16))` -/
def P2943110879388901566.Spec : Prop :=
  ∀ n, P2943110879388901566.a n = A276721 n

theorem P2943110879388901566.correct : P2943110879388901566.Spec := by
  intro n
  simp only [A276721]

end A276721

/-! ## A276721.P14244528050270966208

`A276719(A055999(n+3))`
-/

namespace A276721.P14244528050270966208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A055999 (n + 3)).toNat

end

end A276721.P14244528050270966208

namespace A276721

/-- `A276719(A055999(n+3))` -/
def P14244528050270966208.Spec : Prop :=
  ∀ n, P14244528050270966208.a n = A276721 n

end A276721

/-! ## A276721.P4851155244547074038

`A276719(Δ[Δ[A095667(n)]])`
-/

namespace A276721.P4851155244547074038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (f1 (n + 1) - f1 n).toNat

end

end A276721.P4851155244547074038

namespace A276721

/-- `A276719(Δ[Δ[A095667(n)]])` -/
def P4851155244547074038.Spec : Prop :=
  ∀ n, P4851155244547074038.a n = A276721 n

end A276721

/-! ## A276721.P14848870172218579733

`A276719(Δ[A023551(n+1)])`
-/

namespace A276721.P14848870172218579733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (f1 (n + 1) - f1 n).toNat

end

end A276721.P14848870172218579733

namespace A276721

/-- `A276719(Δ[A023551(n+1)])` -/
def P14848870172218579733.Spec : Prop :=
  ∀ n, P14848870172218579733.a n = A276721 n

end A276721

/-! ## A276721.P16571530276616516691

`A276719(eq[6, A004736(n+1)])`
-/

namespace A276721.P16571530276616516691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276721.P16571530276616516691

namespace A276721

/-- `A276719(eq[6, A004736(n+1)])` -/
def P16571530276616516691.Spec : Prop :=
  ∀ n, P16571530276616516691.a n = A276721 n

end A276721

/-!
# A276722: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most six elements.

The programs for A276722, there is no canonical definition to state claims against.
-/

/-! ## A276722.P10404429352194961761

`A276719(eq[6, A025581(n)])`
-/

namespace A276722.P10404429352194961761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276722.P10404429352194961761

/-! ## A276722.P7977289526707047177

`A276719(A052905(n+4)-2)`
-/

namespace A276722.P7977289526707047177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A052905 (n + 4) - 2).toNat

end

end A276722.P7977289526707047177

/-! ## A276722.P4178029609268723277

`A276719(A000096(n+6)-6)`
-/

namespace A276722.P4178029609268723277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000096 (n + 6) - 6).toNat

end

end A276722.P4178029609268723277

/-! ## A276722.P14267487258290166287

`A276719(A000217(n+7)-7)`
-/

namespace A276722.P14267487258290166287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000217 (n + 7) - 7).toNat

end

end A276722.P14267487258290166287

/-! ## A276722.P2599568418117465913

`A276719(eq[7, A004736(n+1)])`
-/

namespace A276722.P2599568418117465913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276722.P2599568418117465913

/-!
# A276723: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most seven elements.

The programs for A276723, there is no canonical definition to state claims against.
-/

/-! ## A276723.P10606211078402099805

`A276719(eq[7, A025581(n)])`
-/

namespace A276723.P10606211078402099805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276723.P10606211078402099805

/-! ## A276723.P15050510766009844606

`A276719(A034856(n+7)-6)`
-/

namespace A276723.P15050510766009844606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A034856 (n + 7) - 6).toNat

end

end A276723.P15050510766009844606

/-! ## A276723.P14309818254869791891

`A276719(A000217(n+8)-8)`
-/

namespace A276723.P14309818254869791891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000217 (n + 8) - 8).toNat

end

end A276723.P14309818254869791891

/-! ## A276723.P5818682358504798786

`A276719(eq[8, A004736(n+1)])`
-/

namespace A276723.P5818682358504798786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276723.P5818682358504798786

/-! ## A276723.P11443737183601260684

`A276719(A000096(n+6)+n+1)`
-/

namespace A276723.P11443737183601260684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A276723.P11443737183601260684

/-!
# A276724: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most eight elements.

The programs for A276724, there is no canonical definition to state claims against.
-/

/-! ## A276724.P16549780779305198388

`A276719(A134227(n+7)-3)`
-/

namespace A276724.P16549780779305198388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A134227 (n + 7) - 3).toNat

end

end A276724.P16549780779305198388

/-! ## A276724.P16811057355759613894

`A276719(A046691(n+7)-5)`
-/

namespace A276724.P16811057355759613894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A046691 (n + 7) - 5).toNat

end

end A276724.P16811057355759613894

/-! ## A276724.P17449270841959786369

`A276719(A000217(n+9)-9)`
-/

namespace A276724.P17449270841959786369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000217 (n + 9) - 9).toNat

end

end A276724.P17449270841959786369

/-! ## A276724.P17465233417204861682

`A276719(A000096(n+7)+n+1)`
-/

namespace A276724.P17465233417204861682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A276724.P17465233417204861682

/-! ## A276724.P14225021217654792995

`A276719(2*n+A000124(n+7)+7)`
-/

namespace A276724.P14225021217654792995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 ((2 * n : ℤ) + (A000124 (n + 7) + 7)).toNat

end

end A276724.P14225021217654792995

/-!
# A276725: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most nine elements.

The programs for A276725, there is no canonical definition to state claims against.
-/

/-! ## A276725.P12962545721652086697

`A276719(A056000(n+6))`
-/

namespace A276725.P12962545721652086697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A056000 (n + 6)).toNat

end

end A276725.P12962545721652086697

/-! ## A276725.P16914087387272538269

`A276719(A134227(n+8)-4)`
-/

namespace A276725.P16914087387272538269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A134227 (n + 8) - 4).toNat

end

end A276725.P16914087387272538269

/-! ## A276725.P8839336816764673711

`A276719(A000217(n+10)-10)`
-/

namespace A276725.P8839336816764673711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000217 (n + 10) - 10).toNat

end

end A276725.P8839336816764673711

/-! ## A276725.P14703298973012497956

`A276719(A161680(n+11)-10)`
-/

namespace A276725.P14703298973012497956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A161680 (n + 11) - 10).toNat

end

end A276725.P14703298973012497956

/-! ## A276725.P15963726063622803580

`A276719(eq[10, A004736(n+1)])`
-/

namespace A276725.P15963726063622803580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276725.P15963726063622803580

/-!
# A276726: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most ten elements.

The programs for A276726, there is no canonical definition to state claims against.
-/

/-! ## A276726.P8084724223485924592

`A276719(eq[10, A025581(n)])`
-/

namespace A276726.P8084724223485924592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276726.P8084724223485924592

/-! ## A276726.P11568782583218090884

`A276719(A000217(n+11)-11)`
-/

namespace A276726.P11568782583218090884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A000217 (n + 11) - 11).toNat

end

end A276726.P11568782583218090884

/-! ## A276726.P4653205563312510765

`A276719(A161680(n+12)-11)`
-/

namespace A276726.P4653205563312510765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A161680 (n + 12) - 11).toNat

end

end A276726.P4653205563312510765

/-! ## A276726.P16039869445365014662

`A276719(eq[11, A004736(n+1)])`
-/

namespace A276726.P16039869445365014662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276726.P16039869445365014662

/-! ## A276726.P7142376474132213983

`A276719(A008574(n+7)+A000096(n+6))`
-/

namespace A276726.P7142376474132213983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276719 (A008574 (n + 7) + A000096 (n + 6)).toNat

end

end A276726.P7142376474132213983

/-!
# A276727: Number T(n,k) of set partitions of [n] where k is minimal such that for each block b the smallest integer interval containing b has at most k elements; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A276727, there is no canonical definition to state claims against.
-/

/-! ## A276727.P4853531286115659899

`A076620(A270882(n)+1)`
-/

namespace A276727.P4853531286115659899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A270882 n + 1).toNat

end

end A276727.P4853531286115659899

/-! ## A276727.P9221044990943884783

`A000120(A340556(n)+A270882(n))`
-/

namespace A276727.P9221044990943884783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A340556 n + A270882 n).toNat

end

end A276727.P9221044990943884783

/-! ## A276727.P4872985366014163777

`A255270(A162299(n)*A270882(n))`
-/

namespace A276727.P4872985366014163777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A162299 n * A270882 n).toNat

end

end A276727.P4872985366014163777

/-! ## A276727.P12252321990188554904

`A255270(A229223(n)*A261719(n))`
-/

namespace A276727.P12252321990188554904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A229223 n * A261719 n).toNat

end

end A276727.P12252321990188554904

/-! ## A276727.P15580564163787472021

`A178771(A270880(n))`
-/

namespace A276727.P15580564163787472021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178771 (A270880 n).toNat

end

end A276727.P15580564163787472021

/-!
# A276728: Number of set partitions of [2n] where k=n is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A276728, there is no canonical definition to state claims against.
-/

/-! ## A276728.P3266516943259937616

`A276727(C(2*n+1, 2)+n)`
-/

namespace A276728.P3266516943259937616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (Nat.choose (2 * n + 1) 2 + n)

end

end A276728.P3266516943259937616

/-! ## A276728.P12894986384947918738

`A276727(∑[4*n])`
-/

namespace A276728.P12894986384947918738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276728.P12894986384947918738

/-! ## A276728.P15135570611973398745

`A276727(A046092(n))+A067169(n)`
-/

namespace A276728.P15135570611973398745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A046092 n).toNat + A067169 (n + 11)

end

end A276728.P15135570611973398745

/-! ## A276728.P4408113275044121128

`A276727(A046092(n))+A184955(n)`
-/

namespace A276728.P4408113275044121128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A046092 n).toNat + A184955 n

end

end A276728.P4408113275044121128

/-! ## A276728.P4146977329962734329

`A196368(n)*A276727(A046092(n))`
-/

namespace A276728.P4146977329962734329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n * A276727 (A046092 n).toNat

end

end A276728.P4146977329962734329

/-!
# A276729: Number of nonprime digits in the decimal expansion of n.

The programs for A276729, the canonical program `A276729.P16499400846689770455` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276729 has offset 0).

The definition of A276729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276729.P16499400846689770455

`A055642(n)-A193238(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A276729

/-- `A055642(n)-A193238(n)` -/
def P16499400846689770455.Spec : Prop :=
  ∀ n, P16499400846689770455.a n = A276729 n

theorem P16499400846689770455.correct : P16499400846689770455.Spec := by
  intro n
  simp only [A276729]

end A276729

/-! ## A276729.P11457196495247334861

`∑{digits}[n, A341702(#)²]`
-/

namespace A276729.P11457196495247334861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A341702 x ^ 2).sum

end

end A276729.P11457196495247334861

namespace A276729

/-- `∑{digits}[n, A341702(#)²]` -/
def P11457196495247334861.Spec : Prop :=
  ∀ n, P11457196495247334861.a n = A276729 n

end A276729

/-! ## A276729.P10395788178085426561

`∑{digits}[n, A182613(#+1)]`
-/

namespace A276729.P10395788178085426561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A182613 (x + 1)).sum

end

end A276729.P10395788178085426561

namespace A276729

/-- `∑{digits}[n, A182613(#+1)]` -/
def P10395788178085426561.Spec : Prop :=
  ∀ n, P10395788178085426561.a n = A276729 n

end A276729

/-! ## A276729.P11503624965870005392

`∑{digits}[n, A260595(#+1)]`
-/

namespace A276729.P11503624965870005392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A260595 (x + 1)).sum

end

end A276729.P11503624965870005392

namespace A276729

/-- `∑{digits}[n, A260595(#+1)]` -/
def P11503624965870005392.Spec : Prop :=
  ∀ n, P11503624965870005392.a n = A276729 n

end A276729

/-! ## A276729.P6451100907153969204

`∑{digits}[n, A328102(#+1)]`
-/

namespace A276729.P6451100907153969204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A328102 (x + 1)).sum

end

end A276729.P6451100907153969204

namespace A276729

/-- `∑{digits}[n, A328102(#+1)]` -/
def P6451100907153969204.Spec : Prop :=
  ∀ n, P6451100907153969204.a n = A276729 n

end A276729

/-! ## A276729.P7782722730610720319

`∑{digits}[n, 1-A075053(#)]`
-/

namespace A276729.P7782722730610720319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A075053 x).sum

end

end A276729.P7782722730610720319

namespace A276729

/-- `∑{digits}[n, 1-A075053(#)]` -/
def P7782722730610720319.Spec : Prop :=
  ∀ n, P7782722730610720319.a n = A276729 n

end A276729

/-! ## A276729.P905717898909974625

`∑{digits}[n, 1-A090418(#)]`
-/

namespace A276729.P905717898909974625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A090418 x).sum

end

end A276729.P905717898909974625

namespace A276729

/-- `∑{digits}[n, 1-A090418(#)]` -/
def P905717898909974625.Spec : Prop :=
  ∀ n, P905717898909974625.a n = A276729 n

end A276729

/-! ## A276729.P4286902984347825628

`∑{digits}[n, 1-A117814(#)]`
-/

namespace A276729.P4286902984347825628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A117814 x).sum

end

end A276729.P4286902984347825628

namespace A276729

/-- `∑{digits}[n, 1-A117814(#)]` -/
def P4286902984347825628.Spec : Prop :=
  ∀ n, P4286902984347825628.a n = A276729 n

end A276729

/-! ## A276729.P13904678215895699294

`∑{digits}[n, 1-A184172(#)]`
-/

namespace A276729.P13904678215895699294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A184172 x).sum

end

end A276729.P13904678215895699294

namespace A276729

/-- `∑{digits}[n, 1-A184172(#)]` -/
def P13904678215895699294.Spec : Prop :=
  ∀ n, P13904678215895699294.a n = A276729 n

end A276729

/-! ## A276729.P9707054745910212599

`∑{digits}[n, 1-A193238(#)]`
-/

namespace A276729.P9707054745910212599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A193238 x).sum

end

end A276729.P9707054745910212599

namespace A276729

/-- `∑{digits}[n, 1-A193238(#)]` -/
def P9707054745910212599.Spec : Prop :=
  ∀ n, P9707054745910212599.a n = A276729 n

end A276729

/-! ## A276729.P17593386544046508036

`∑{digits}[n, 1-A257000(#)]`
-/

namespace A276729.P17593386544046508036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A257000 x).sum

end

end A276729.P17593386544046508036

namespace A276729

/-- `∑{digits}[n, 1-A257000(#)]` -/
def P17593386544046508036.Spec : Prop :=
  ∀ n, P17593386544046508036.a n = A276729 n

end A276729

/-! ## A276729.P10738302514332675766

`∑{digits}[n, 1-A328515(#)]`
-/

namespace A276729.P10738302514332675766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A328515 x).sum

end

end A276729.P10738302514332675766

namespace A276729

/-- `∑{digits}[n, 1-A328515(#)]` -/
def P10738302514332675766.Spec : Prop :=
  ∀ n, P10738302514332675766.a n = A276729 n

end A276729

/-! ## A276729.P13400291893858340247

`∑{digits}[n, 1-A328516(#)]`
-/

namespace A276729.P13400291893858340247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A328516 x).sum

end

end A276729.P13400291893858340247

namespace A276729

/-- `∑{digits}[n, 1-A328516(#)]` -/
def P13400291893858340247.Spec : Prop :=
  ∀ n, P13400291893858340247.a n = A276729 n

end A276729

/-! ## A276729.P3858507351666283987

`∑{digits}[n, 1-A328517(#)]`
-/

namespace A276729.P3858507351666283987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A328517 x).sum

end

end A276729.P3858507351666283987

namespace A276729

/-- `∑{digits}[n, 1-A328517(#)]` -/
def P3858507351666283987.Spec : Prop :=
  ∀ n, P3858507351666283987.a n = A276729 n

end A276729

/-! ## A276729.P9548397176618070400

`∑{digits}[n, 1-A339433(#)]`
-/

namespace A276729.P9548397176618070400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A339433 x).sum

end

end A276729.P9548397176618070400

namespace A276729

/-- `∑{digits}[n, 1-A339433(#)]` -/
def P9548397176618070400.Spec : Prop :=
  ∀ n, P9548397176618070400.a n = A276729 n

end A276729

/-! ## A276729.P1988734109109586479

`A316867(n)+A117229(n)`
-/

namespace A276729.P1988734109109586479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A117229 n

end

end A276729.P1988734109109586479

namespace A276729

/-- `A316867(n)+A117229(n)` -/
def P1988734109109586479.Spec : Prop :=
  ∀ n, P1988734109109586479.a n = A276729 n

end A276729

/-! ## A276729.P238453275490990374

`(A064692(n)+A064692(A222225(n)))/2`
-/

namespace A276729.P238453275490990374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064692 n + A064692 (A222225 n).toNat : ℚ) / 2

end

end A276729.P238453275490990374

namespace A276729

/-- `(A064692(n)+A064692(A222225(n)))/2` -/
def P238453275490990374.Spec : Prop :=
  ∀ n, P238453275490990374.a n = (A276729 n : ℚ)

end A276729

/-! ## A276729.P6177426350715233006

`A055640(n)+A055641(n)-A193238(n)`
-/

namespace A276729.P6177426350715233006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n + (A055641 n - A193238 n)

end

end A276729.P6177426350715233006

namespace A276729

/-- `A055640(n)+A055641(n)-A193238(n)` -/
def P6177426350715233006.Spec : Prop :=
  ∀ n, P6177426350715233006.a n = A276729 n

theorem P6177426350715233006.correct : P6177426350715233006.Spec := by
  intro n
  simp only [A276729, Nat.add_sub_cancel, A276729.P6177426350715233006.a, A276729.P16499400846689770455.a, A055640, A055640.P11694689918486202378.a, A055641, A055641.P17892567296001753674.f1, A055641.P17892567296001753674.a, A055642, A055642.P2478179801723442865.a, A193238, A193238.P11744037946728214642.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276729

/-! ## A276729.P17630384454854289619

`A196563(n)+A196564(n)-A193238(n)`
-/

namespace A276729.P17630384454854289619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n + (A196564 n - A193238 n)

end

end A276729.P17630384454854289619

namespace A276729

/-- `A196563(n)+A196564(n)-A193238(n)` -/
def P17630384454854289619.Spec : Prop :=
  ∀ n, P17630384454854289619.a n = A276729 n

theorem P17630384454854289619.correct : P17630384454854289619.Spec := by
  intro n
  simp only [A276729, Nat.add_sub_cancel, A276729.P17630384454854289619.a, A276729.P16499400846689770455.a, A055642, A055642.P2478179801723442865.a, A193238, A193238.P11744037946728214642.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276729

/-!
# A276730: Number of solutions to y^2 == x^3 + 4*x (mod p) as p runs through the primes.

The programs for A276730, there is no canonical definition to state claims against.
-/

/-! ## A276730.P8186912468341959511

`Δ[A007504(n)]-A278720(n+1)`
-/

namespace A276730.P8186912468341959511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A278720 (n + 1)

end

end A276730.P8186912468341959511

/-! ## A276730.P10849176681014266818

`A000040(n+1)-A278720(n+1)`
-/

namespace A276730.P10849176681014266818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A278720 (n + 1)

end

end A276730.P10849176681014266818

/-! ## A276730.P16949844951536611008

`abs(Δ[A022837(n)])-A278720(n+1)`
-/

namespace A276730.P16949844951536611008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A278720 (n + 1)

end

end A276730.P16949844951536611008

/-! ## A276730.P11943658339764882556

`abs(A273960(n+1))-A278720(n+1)`
-/

namespace A276730.P11943658339764882556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)| - A278720 (n + 1)

end

end A276730.P11943658339764882556

/-! ## A276730.P12249899400048774707

`∑[A054541(n+1)]-A278720(n+1)`
-/

namespace A276730.P12249899400048774707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A278720 (n + 1)

end

end A276730.P12249899400048774707

/-! ## A276730.P639860730125370016

`A006093(n+1)+1-A278720(n+1)`
-/

namespace A276730.P639860730125370016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A278720 (n + 1))

end

end A276730.P639860730125370016

/-! ## A276730.P11801502151093888193

`A008864(n+1)-(A278720(n+1)+1)`
-/

namespace A276730.P11801502151093888193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A278720 (n + 1) + 1)

end

end A276730.P11801502151093888193

/-! ## A276730.P14552428142572552206

`A113935(n+1)-3-A278720(n+1)`
-/

namespace A276730.P14552428142572552206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 3 - A278720 (n + 1)

end

end A276730.P14552428142572552206

/-! ## A276730.P6706013022464704722

`A007504(n+1)-(A278720(n+1)+A007504(n))`
-/

namespace A276730.P6706013022464704722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (A278720 (n + 1) + A007504 n)

end

end A276730.P6706013022464704722

/-! ## A276730.P12517457855725251574

`A272207(n+1)+A273163(n+1)-A278720(n+1)`
-/

namespace A276730.P12517457855725251574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272207 (n + 1) + (A273163 (n + 1) - A278720 (n + 1))

end

end A276730.P12517457855725251574

/-! ## A276730.P7977677804240204960

`p?[A000961(n+1)]-A278720(n+1)`
-/

namespace A276730.P7977677804240204960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A278720 (n + 1)

end

end A276730.P7977677804240204960

/-! ## A276730.P3218410691199581998

`A399789(A000040(n+1))`
-/

namespace A276730.P3218410691199581998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399789 (A000040 (n + 1)).toNat

end

end A276730.P3218410691199581998

/-! ## A276730.P11695127220333412608

`A399789(A008578(n+2))`
-/

namespace A276730.P11695127220333412608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399789 (A008578 (n + 2)).toNat

end

end A276730.P11695127220333412608

/-! ## A276730.P1508968846757375716

`A399789(A182986(n+2))`
-/

namespace A276730.P1508968846757375716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399789 (A182986 (n + 2)).toNat

end

end A276730.P1508968846757375716

/-!
# A276732: Primes p such that (p + 1)/10 is also prime.

The programs for A276732, the canonical program `A276732.P8742035922757632699` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276732 has offset 1).

The definition of A276732 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276732.P8742035922757632699

`10*A158017(n+1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A276732

/-- `10*A158017(n+1)-1` -/
def P8742035922757632699.Spec : Prop :=
  ∀ n, P8742035922757632699.a n = A276732 (n + 1)

theorem P8742035922757632699.correct : P8742035922757632699.Spec := by
  intro n
  simp only [A276732, Nat.add_sub_cancel]

end A276732

/-! ## A276732.P13234504927958457875

`p?[A142342(n+1)-1]`
-/

namespace A276732.P13234504927958457875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P13234504927958457875

namespace A276732

/-- `p?[A142342(n+1)-1]` -/
def P13234504927958457875.Spec : Prop :=
  ∀ n, P13234504927958457875.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P6131641028499712238

`p?[2*A001750(n+1)-1]`
-/

namespace A276732.P6131641028499712238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001750 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P6131641028499712238

namespace A276732

/-- `p?[2*A001750(n+1)-1]` -/
def P6131641028499712238.Spec : Prop :=
  ∀ n, P6131641028499712238.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P10895131636134505773

`p?[5*A100484(n+1)-1]`
-/

namespace A276732.P10895131636134505773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A100484 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P10895131636134505773

namespace A276732

/-- `p?[5*A100484(n+1)-1]` -/
def P10895131636134505773.Spec : Prop :=
  ∀ n, P10895131636134505773.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P9635876887716998414

`p?[10*A000040(n+1)-1]`
-/

namespace A276732.P9635876887716998414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P9635876887716998414

namespace A276732

/-- `p?[10*A000040(n+1)-1]` -/
def P9635876887716998414.Spec : Prop :=
  ∀ n, P9635876887716998414.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P6522685391924194234

`p?[2*A138636(n+1)-A072055(n+1)]`
-/

namespace A276732.P6522685391924194234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138636 (n + 1) - A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P6522685391924194234

namespace A276732

/-- `p?[2*A138636(n+1)-A072055(n+1)]` -/
def P6522685391924194234.Spec : Prop :=
  ∀ n, P6522685391924194234.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P13669844101232814819

`∩[A030433(n+1), A063639(n+1)]`
-/

namespace A276732.P13669844101232814819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P13669844101232814819

namespace A276732

/-- `∩[A030433(n+1), A063639(n+1)]` -/
def P13669844101232814819.Spec : Prop :=
  ∀ n, (P13669844101232814819.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P11224982474147794920

`∩[A030433(n+1), A079150(n+1)]`
-/

namespace A276732.P11224982474147794920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P11224982474147794920

namespace A276732

/-- `∩[A030433(n+1), A079150(n+1)]` -/
def P11224982474147794920.Spec : Prop :=
  ∀ n, (P11224982474147794920.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P5683924620790688986

`∩[A045457(n+1), A063639(n+1)]`
-/

namespace A276732.P5683924620790688986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P5683924620790688986

namespace A276732

/-- `∩[A045457(n+1), A063639(n+1)]` -/
def P5683924620790688986.Spec : Prop :=
  ∀ n, (P5683924620790688986.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P16986072129427417928

`∩[A063639(n+1), A327753(n+1)]`
-/

namespace A276732.P16986072129427417928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P16986072129427417928

namespace A276732

/-- `∩[A063639(n+1), A327753(n+1)]` -/
def P16986072129427417928.Spec : Prop :=
  ∀ n, (P16986072129427417928.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P12920098210425153699

`∩[A079150(n+1), A327753(n+1)]`
-/

namespace A276732.P12920098210425153699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P12920098210425153699

namespace A276732

/-- `∩[A079150(n+1), A327753(n+1)]` -/
def P12920098210425153699.Spec : Prop :=
  ∀ n, (P12920098210425153699.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P4692862515155004278

`p?[5*A001358(n+1)-1]`
-/

namespace A276732.P4692862515155004278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001358 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P4692862515155004278

namespace A276732

/-- `p?[5*A001358(n+1)-1]` -/
def P4692862515155004278.Spec : Prop :=
  ∀ n, P4692862515155004278.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P13255688755108937307

`∩[A004618(n+1), A063639(n+1)]`
-/

namespace A276732.P13255688755108937307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P13255688755108937307

namespace A276732

/-- `∩[A004618(n+1), A063639(n+1)]` -/
def P13255688755108937307.Spec : Prop :=
  ∀ n, (P13255688755108937307.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P16251404065890090899

`∩[A004618(n+1), A079150(n+1)]`
-/

namespace A276732.P16251404065890090899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P16251404065890090899

namespace A276732

/-- `∩[A004618(n+1), A079150(n+1)]` -/
def P16251404065890090899.Spec : Prop :=
  ∀ n, (P16251404065890090899.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P7232876500934306083

`∩[A030433(n+1), A108815(n+1)]`
-/

namespace A276732.P7232876500934306083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P7232876500934306083

namespace A276732

/-- `∩[A030433(n+1), A108815(n+1)]` -/
def P7232876500934306083.Spec : Prop :=
  ∀ n, (P7232876500934306083.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P4956237071619407398

`∩[A045457(n+1), A108815(n+1)]`
-/

namespace A276732.P4956237071619407398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P4956237071619407398

namespace A276732

/-- `∩[A045457(n+1), A108815(n+1)]` -/
def P4956237071619407398.Spec : Prop :=
  ∀ n, (P4956237071619407398.a n : ℤ) = A276732 (n + 1)

end A276732

/-! ## A276732.P2492765509419754863

`p?[record[A112375(n+1)-2]]`
-/

namespace A276732.P2492765509419754863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112375 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P2492765509419754863

namespace A276732

/-- `p?[record[A112375(n+1)-2]]` -/
def P2492765509419754863.Spec : Prop :=
  ∀ n, P2492765509419754863.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P2116712166141237789

`A122072(A158017(n+1))`
-/

namespace A276732.P2116712166141237789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (A158017 (n + 1)).toNat

end

end A276732.P2116712166141237789

namespace A276732

/-- `A122072(A158017(n+1))` -/
def P2116712166141237789.Spec : Prop :=
  ∀ n, P2116712166141237789.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P16293217476580577745

`p?[A166659(A000040(n+1))]`
-/

namespace A276732.P16293217476580577745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166659 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276732.P16293217476580577745

namespace A276732

/-- `p?[A166659(A000040(n+1))]` -/
def P16293217476580577745.Spec : Prop :=
  ∀ n, P16293217476580577745.a n = A276732 (n + 1)

end A276732

/-! ## A276732.P8384692469985844685

`∩[A063639(n+1), A017377(n)]`
-/

namespace A276732.P8384692469985844685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276732.P8384692469985844685

namespace A276732

/-- `∩[A063639(n+1), A017377(n)]` -/
def P8384692469985844685.Spec : Prop :=
  ∀ n, (P8384692469985844685.a n : ℤ) = A276732 (n + 1)

end A276732

/-!
# A276734: Numbers k such that the number of divisors of k equals the integer part of the geometric mean of the divisors of k.

The programs for A276734, there is no canonical definition to state claims against.
-/

/-! ## A276734.P7249336378551888714

`eq[floor(sqrt(n+1)), A000005(n+1)]+1`
-/

namespace A276734.P7249336378551888714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276734.P7249336378551888714

/-! ## A276734.P14023841628470086499

`eq[A032741(n)+1, A000196(n)]`
-/

namespace A276734.P14023841628470086499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276734.P14023841628470086499

/-! ## A276734.P8319901591351047216

`eq[A000005(A028310(n)), A000196(n)]`
-/

namespace A276734.P8319901591351047216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276734.P8319901591351047216

/-! ## A276734.P10453364152808732835

`eq[A000005(A065033(2*n)), A000196(n)]`
-/

namespace A276734.P10453364152808732835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276734.P10453364152808732835

/-! ## A276734.P16992422856602330707

`eq[A000005(A123108(2*n)), A000196(n)]`
-/

namespace A276734.P16992422856602330707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276734.P16992422856602330707

/-!
# A276735: Number of permutations p of (1..n) such that k+p(k) is a semiprime for 1 <= k <= n.

The programs for A276735, there is no canonical definition to state claims against.
-/

/-! ## A276735.P14786601191132624308

`A008611(A066639(n+1)*A072713(n+1))`
-/

namespace A276735.P14786601191132624308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A066639 (n + 1) * A072713 (n + 1)).toNat

end

end A276735.P14786601191132624308

/-!
# A276736: a(n) = numerator of Sum_{d|n} tau(d)/d.

The programs for A276736, the canonical program `A276736.P6839819516574191289` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276736 has offset 1).

The definition of A276736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276736.P6839819516574191289

`lcm(n+1, A007429(n+1))/(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A276736

/-- `lcm(n+1, A007429(n+1))/(n+1)` -/
def P6839819516574191289.Spec : Prop :=
  ∀ n, P6839819516574191289.a n = (A276736 (n + 1) : ℚ)

end A276736

/-! ## A276736.P16659918601955610708

`A007429(n+1)/(n+1)*A276737(n+1)`
-/

namespace A276736.P16659918601955610708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (n + 1 : ℚ) * (A276737 (n + 1) : ℚ)

end

end A276736.P16659918601955610708

namespace A276736

/-- `A007429(n+1)/(n+1)*A276737(n+1)` -/
def P16659918601955610708.Spec : Prop :=
  ∀ n, P16659918601955610708.a n = (A276736 (n + 1) : ℚ)

end A276736

/-! ## A276736.P8707746873014621495

`A007429(n+1)/gcd(n+1, A211780(n+1))`
-/

namespace A276736.P8707746873014621495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A211780 (n + 1)) : ℚ)

end

end A276736.P8707746873014621495

namespace A276736

/-- `A007429(n+1)/gcd(n+1, A211780(n+1))` -/
def P8707746873014621495.Spec : Prop :=
  ∀ n, P8707746873014621495.a n = (A276736 (n + 1) : ℚ)

end A276736

/-! ## A276736.P7858739388265064782

`A007429(n+1)/gcd(A007429(n+1), A131738(n))`
-/

namespace A276736.P7858739388265064782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / (Int.gcd (A007429 (n + 1)) (A131738 n) : ℚ)

end

end A276736.P7858739388265064782

namespace A276736

/-- `A007429(n+1)/gcd(A007429(n+1), A131738(n))` -/
def P7858739388265064782.Spec : Prop :=
  ∀ n, P7858739388265064782.a n = (A276736 (n + 1) : ℚ)

end A276736

/-!
# A276737: a(n) = denominator of Sum_{d|n} tau(d)/d.

The programs for A276737, the canonical program `A276737.P10584001989765576024` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276737 has offset 1).

The definition of A276737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276737.P10584001989765576024

`(n+1)/gcd(n+1, A007429(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A276737

/-- `(n+1)/gcd(n+1, A007429(n+1))` -/
def P10584001989765576024.Spec : Prop :=
  ∀ n, P10584001989765576024.a n = (A276737 (n + 1) : ℚ)

end A276737

/-! ## A276737.P11620817038335180563

`(n+1)/gcd(A007429(n+1), A131738(n))`
-/

namespace A276737.P11620817038335180563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A007429 (n + 1)) (A131738 n) : ℚ)

end

end A276737.P11620817038335180563

namespace A276737

/-- `(n+1)/gcd(A007429(n+1), A131738(n))` -/
def P11620817038335180563.Spec : Prop :=
  ∀ n, P11620817038335180563.a n = (A276737 (n + 1) : ℚ)

end A276737

/-! ## A276737.P2839997170725274177

`(n+1)/A007429(n+1)*A276736(n+1)`
-/

namespace A276737.P2839997170725274177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007429 (n + 1) : ℚ) * (A276736 (n + 1) : ℚ)

end

end A276737.P2839997170725274177

namespace A276737

/-- `(n+1)/A007429(n+1)*A276736(n+1)` -/
def P2839997170725274177.Spec : Prop :=
  ∀ n, P2839997170725274177.a n = (A276737 (n + 1) : ℚ)

end A276737

/-! ## A276737.P1771631617143526250

`(n+1)/gcd(A005408(n)-n, A211780(n+1))`
-/

namespace A276737.P1771631617143526250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A005408 n - (n : ℤ)) (A211780 (n + 1)) : ℚ)

end

end A276737.P1771631617143526250

namespace A276737

/-- `(n+1)/gcd(A005408(n)-n, A211780(n+1))` -/
def P1771631617143526250.Spec : Prop :=
  ∀ n, P1771631617143526250.a n = (A276737 (n + 1) : ℚ)

end A276737

/-! ## A276737.P2568074437415911342

`lcm(A000027(n+1), A007429(n+1))/A007429(n+1)`
-/

namespace A276737.P2568074437415911342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A007429 (n + 1)) : ℚ) / (A007429 (n + 1) : ℚ)

end

end A276737.P2568074437415911342

namespace A276737

/-- `lcm(A000027(n+1), A007429(n+1))/A007429(n+1)` -/
def P2568074437415911342.Spec : Prop :=
  ∀ n, P2568074437415911342.a n = (A276737 (n + 1) : ℚ)

end A276737

/-!
# A276740: Numbers n such that 3^n == 5 (mod n).

The programs for A276740, there is no canonical definition to state claims against.
-/

/-! ## A276740.P13608684041396166153

`A235686(a(n-1)-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=76`
-/

namespace A276740.P13608684041396166153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 76] fun n a =>
  A235686 (a (n - 1) - 4).toNat

end

end A276740.P13608684041396166153

/-!
# A276742: E.g.f. A(x) satisfies: A( 1/A(x) * Integral A(x) dx ) = 1 + x.

The programs for A276742, there is no canonical definition to state claims against.
-/

/-! ## A276742.P15348369869778410758

`A217657(A270597(n))+1`
-/

namespace A276742.P15348369869778410758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A270597 n).toNat + 1

end

end A276742.P15348369869778410758

/-! ## A276742.P14983707529078845851

`A239494(A088813(n)+3)`
-/

namespace A276742.P14983707529078845851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239494 (A088813 n + 3).toNat

end

end A276742.P14983707529078845851

/-! ## A276742.P12378734224197338245

`A283194(A230620(n+1)+1)`
-/

namespace A276742.P12378734224197338245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283194 (A230620 (n + 1) + 1).toNat

end

end A276742.P12378734224197338245

/-!
# A276743: G.f.: Sum_{n>=0} [ Sum_{k>=1} k^n * x^k ]^n.

The programs for A276743, there is no canonical definition to state claims against.
-/

/-! ## A276743.P14067992715612855140

`A178210(A006288(n!))`
-/

namespace A276743.P14067992715612855140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A006288 (Nat.factorial n)).toNat

end

end A276743.P14067992715612855140

/-! ## A276743.P2973479901607832040

`A343371(A173522(n!))`
-/

namespace A276743.P2973479901607832040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 (A173522 (Nat.factorial n)).toNat

end

end A276743.P2973479901607832040

/-!
# A276746: G.f.: Sum_{n>=0} exp(-n*x) * [ Sum_{k>=1} k^n * x^k/k! ]^n.

The programs for A276746, there is no canonical definition to state claims against.
-/

/-! ## A276746.P7564076402901980108

`A197928(A168243(n))`
-/

namespace A276746.P7564076402901980108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197928 (A168243 n).toNat

end

end A276746.P7564076402901980108

/-! ## A276746.P2838465773529081556

`A081515(A365903(n))`
-/

namespace A276746.P2838465773529081556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081515 (A365903 n).toNat

end

end A276746.P2838465773529081556

/-! ## A276746.P10912033923085536994

`A396402(A193296(n+1))`
-/

namespace A276746.P10912033923085536994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396402 (A193296 (n + 1)).toNat

end

end A276746.P10912033923085536994

/-!
# A276747: G.f.: Sum_{n>=0} (1-x)^(n*(n+1)) * [ Sum_{k>=1} k^n * x^k ]^n.

The programs for A276747, there is no canonical definition to state claims against.
-/

/-! ## A276747.P17341881654427074745

`A325168(n)+A109610(A053983(n))`
-/

namespace A276747.P17341881654427074745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325168 n + A109610 (A053983 n).toNat

end

end A276747.P17341881654427074745

/-! ## A276747.P8680014780033530814

`A003459(A238423(n))-A049843(2*n+3)`
-/

namespace A276747.P8680014780033530814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A238423 n).toNat - A049843 (2 * n + 3)

end

end A276747.P8680014780033530814

/-!
# A276749: G.f.: exp( Sum_{n>=1} [Sum_{k>=1} k^(n^2) * x^k]^n / n ), a power series in x with integer coefficients.

The programs for A276749, there is no canonical definition to state claims against.
-/

/-! ## A276749.P5658532235670465096

`A233182(a(n-1)²+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A276749.P5658532235670465096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A233182 (a (n - 1) ^ 2 + 1).toNat

end

end A276749.P5658532235670465096

/-!
# A276750: L.g.f.: Sum_{n>=1} [ Sum_{k>=1} k^n * x^k ]^n / n.

The programs for A276750, there is no canonical definition to state claims against.
-/

/-! ## A276750.P15650614684854818393

`A003963(A155653(n))+2*n`
-/

namespace A276750.P15650614684854818393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A155653 n).toNat + (2 * n : ℤ)

end

end A276750.P15650614684854818393

/-!
# A276751: G.f.: exp( Sum_{n>=1} [Sum_{k>=1} k^(2*n-1) * x^k]^n / n ), a power series in x with integer coefficients.

The programs for A276751, there is no canonical definition to state claims against.
-/

/-! ## A276751.P11165733636089563961

`or(A049020(n), A258746(A189981(n)))`
-/

namespace A276751.P11165733636089563961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049020 n) (A258746 (A189981 n).toNat)

end

end A276751.P11165733636089563961

/-! ## A276751.P780026246392333570

`or(A108087(n), A258746(A189981(n)))`
-/

namespace A276751.P780026246392333570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108087 n) (A258746 (A189981 n).toNat)

end

end A276751.P780026246392333570

/-!
# A276752: G.f.: exp( Sum_{n>=1} [Sum_{k>=1} k^(2*n) * x^k]^n / n ), a power series in x with integer coefficients.

The programs for A276752, there is no canonical definition to state claims against.
-/

/-! ## A276752.P18327883344185514882

`A267307(A109245(n))`
-/

namespace A276752.P18327883344185514882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267307 (A109245 n).toNat

end

end A276752.P18327883344185514882

/-!
# A276755: a(n) = A275706(n)^2 + A276688(n)^2 = [n]_{1+i}! * [n]_{1-i}!, where [n]_q! is the q-factorial, i = sqrt(-1).

The programs for A276755, there is no canonical definition to state claims against.
-/

/-! ## A276755.P18283725418389422387

`A275706(n)²+A276688(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276755.P18283725418389422387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275706 n ^ 2 + A276688 n ^ 2

end

end A276755.P18283725418389422387

/-! ## A276755.P3700331181168044803

`∏[A016813(A038505(n))]`
-/

namespace A276755.P3700331181168044803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A038505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276755.P3700331181168044803

/-! ## A276755.P2890755996893948533

`∏{d}[A011782(n), A353151(#)]`
-/

namespace A276755.P2890755996893948533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A353151 d

end

end A276755.P2890755996893948533

/-! ## A276755.P7665795980595228749

`∏[A353151(∑[A034008(n)])]`
-/

namespace A276755.P7665795980595228749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353151 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276755.P7665795980595228749

/-! ## A276755.P13021542976101067856

`∏[A016813(Δ[A000749(n)])]`
-/

namespace A276755.P13021542976101067856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276755.P13021542976101067856

/-!
# A276756: Squarefree terms of A276655.

The programs for A276756, there is no canonical definition to state claims against.
-/

/-! ## A276756.P17727064523731237384

`record[A007913(A276655(1+n))]`
-/

namespace A276756.P17727064523731237384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A276655 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276756.P17727064523731237384

/-! ## A276756.P11483857785396036307

`filter[A276655(n+1), A008966(#)]`
-/

namespace A276756.P11483857785396036307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A276756.P11483857785396036307

/-! ## A276756.P14289299005900491673

`filter[A276700(n+1), A008966(#)]`
-/

namespace A276756.P14289299005900491673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A276756.P14289299005900491673

/-! ## A276756.P14017515796070601874

`filter[A276655(n+1), A354819(#)]`
-/

namespace A276756.P14017515796070601874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A276756.P14017515796070601874

/-! ## A276756.P6607894412360009935

`filter[A276700(n+1), A354819(#)]`
-/

namespace A276756.P6607894412360009935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A276756.P6607894412360009935

/-! ## A276756.P15567910042613573273

`filter[A276655(n+1), A323154(#)]`
-/

namespace A276756.P15567910042613573273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A276756.P15567910042613573273

/-! ## A276756.P17167197005184264061

`filter[A276700(n+1), A323154(#)]`
-/

namespace A276756.P17167197005184264061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A276756.P17167197005184264061

/-!
# A276757: Infinite Fibonacci word on the alphabet {1,2,3,4,5}.

The programs for A276757, the canonical program `A276757.P11612559001740181464` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276757 has offset 1).

The definition of A276757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276757.P11612559001740181464

`A080513(record[or(n, floor(n/2))])%6`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A276757

/-- `A080513(record[or(n, floor(n/2))])%6` -/
def P11612559001740181464.Spec : Prop :=
  ∀ n, P11612559001740181464.a n = A276757 (n + 1)

theorem P11612559001740181464.correct : P11612559001740181464.Spec := by
  intro n
  simp only [A276757, Nat.add_sub_cancel]

end A276757

/-! ## A276757.P6672487063733908991

`A115728(and(2^n+7, A003714(n)))`
-/

namespace A276757.P6672487063733908991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115728 (Int.land (2 ^ n + 7 : ℤ) (A003714 n)).toNat

end

end A276757.P6672487063733908991

namespace A276757

/-- `A115728(and(2^n+7, A003714(n)))` -/
def P6672487063733908991.Spec : Prop :=
  ∀ n, P6672487063733908991.a n = A276757 (n + 1)

end A276757

/-!
# A276758: Numbers n such that A045876(n) = A045876(n+1).

The programs for A276758, there is no canonical definition to state claims against.
-/

/-! ## A276758.P18238798621543267148

`eq[0, A282134(A028310(n))]`
-/

namespace A276758.P18238798621543267148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276758.P18238798621543267148

/-! ## A276758.P11609608120613654457

`A020725(eq[0, A282134(n+1)])`
-/

namespace A276758.P11609608120613654457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276758.P11609608120613654457

/-! ## A276758.P4542282267538622467

`A065475(eq[0, A282134(n+1)])`
-/

namespace A276758.P4542282267538622467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276758.P4542282267538622467

/-!
# A276764: 1^2 + 3^2, 2^2 + 4^2, 5^2 + 7^2, 6^2 + 8^2, ...

The programs for A276764, the canonical program `A276764.P2392728042257809463` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276764 has offset 1).

The definition of A276764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276764.P17287385062158129344

`ogf((10+10x+34x^2+6x^3+4x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A276764.P17287385062158129344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 10, 34, 6, 4] [1, -1, -2, 2, 1, -1] n

end

end A276764.P17287385062158129344

namespace A276764

/-- `ogf((10+10x+34x^2+6x^3+4x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P17287385062158129344.Spec : Prop :=
  ∀ n, P17287385062158129344.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P8725684319333314614

`(2*(n+1)-1-(n+2)%2)²+(2*(n+1)+(n+1)%2)²`
-/

namespace A276764.P8725684319333314614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 - (((n + 2) % 2 : ℕ) : ℤ)) ^ 2 + (((2 * (n + 1) + (n + 1) % 2) ^ 2 : ℕ) : ℤ)

end

end A276764.P8725684319333314614

namespace A276764

/-- `(2*(n+1)-1-(n+2)%2)²+(2*(n+1)+(n+1)%2)²` -/
def P8725684319333314614.Spec : Prop :=
  ∀ n, P8725684319333314614.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P2392728042257809463

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=10, a(1)=20, a(2)=74, a(3)=100, a(4)=202`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A276764

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2392728042257809463.Spec : Prop :=
  ∀ n, P2392728042257809463.a n = A276764 (n + 1)

theorem P2392728042257809463.correct : P2392728042257809463.Spec := by
  intro n
  simp only [A276764, Nat.add_sub_cancel]

end A276764

/-! ## A276764.P2344254955903117800

`record[2*(xor(2, n)²+1)]`
-/

namespace A276764.P2344254955903117800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor 2 n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276764.P2344254955903117800

namespace A276764

/-- `record[2*(xor(2, n)²+1)]` -/
def P2344254955903117800.Spec : Prop :=
  ∀ n, (P2344254955903117800.a n : ℤ) = A276764 (n + 1)

end A276764

/-! ## A276764.P8658164569852894545

`record[(n+2)*2*xor(2, n)+2]`
-/

namespace A276764.P8658164569852894545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * Nat.xor 2 n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276764.P8658164569852894545

namespace A276764

/-- `record[(n+2)*2*xor(2, n)+2]` -/
def P8658164569852894545.Spec : Prop :=
  ∀ n, (P8658164569852894545.a n : ℤ) = A276764 (n + 1)

end A276764

/-! ## A276764.P12916447941911510238

`2*(A042964(n+1)²+1)`
-/

namespace A276764.P12916447941911510238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A042964 (n + 1) ^ 2 + 1)

end

end A276764.P12916447941911510238

namespace A276764

/-- `2*(A042964(n+1)²+1)` -/
def P12916447941911510238.Spec : Prop :=
  ∀ n, P12916447941911510238.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P11805641967284846926

`A047406(n+1)²/2+2`
-/

namespace A276764.P11805641967284846926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047406 (n + 1) ^ 2 : ℚ) / 2 + 2

end

end A276764.P11805641967284846926

namespace A276764

/-- `A047406(n+1)²/2+2` -/
def P11805641967284846926.Spec : Prop :=
  ∀ n, P11805641967284846926.a n = (A276764 (n + 1) : ℚ)

end A276764

/-! ## A276764.P13978333099750238645

`2*((A109613(n)+1+n)²+1)`
-/

namespace A276764.P13978333099750238645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A109613 n + 1 + (n : ℤ)) ^ 2 + 1)

end

end A276764.P13978333099750238645

namespace A276764

/-- `2*((A109613(n)+1+n)²+1)` -/
def P13978333099750238645.Spec : Prop :=
  ∀ n, P13978333099750238645.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P10089433958894442278

`A042964(n+1)*A047406(n+1)+2`
-/

namespace A276764.P10089433958894442278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1) * A047406 (n + 1) + 2

end

end A276764.P10089433958894442278

namespace A276764

/-- `A042964(n+1)*A047406(n+1)+2` -/
def P10089433958894442278.Spec : Prop :=
  ∀ n, P10089433958894442278.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P14572453025654059482

`A042963(n+1)²+A092486(A014601(n))²`
-/

namespace A276764.P14572453025654059482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) ^ 2 + A092486 (A014601 n).toNat ^ 2

end

end A276764.P14572453025654059482

namespace A276764

/-- `A042963(n+1)²+A092486(A014601(n))²` -/
def P14572453025654059482.Spec : Prop :=
  ∀ n, P14572453025654059482.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P7341850671633931968

`A005893(record[xor(2, n)])`
-/

namespace A276764.P7341850671633931968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A276764.P7341850671633931968

namespace A276764

/-- `A005893(record[xor(2, n)])` -/
def P7341850671633931968.Spec : Prop :=
  ∀ n, P7341850671633931968.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P4633020049438910237

`2*(2*n+3-A176895(2*n))²+2`
-/

namespace A276764.P4633020049438910237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) + (3 - A176895 (2 * n))) ^ 2 + 2

end

end A276764.P4633020049438910237

namespace A276764

/-- `2*(2*n+3-A176895(2*n))²+2` -/
def P4633020049438910237.Spec : Prop :=
  ∀ n, P4633020049438910237.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P2171478177491763639

`A005893(A042964(n+1))`
-/

namespace A276764.P2171478177491763639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A042964 (n + 1)).toNat

end

end A276764.P2171478177491763639

namespace A276764

/-- `A005893(A042964(n+1))` -/
def P2171478177491763639.Spec : Prop :=
  ∀ n, P2171478177491763639.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P14353243013852737665

`A005893(A053438(n+1))`
-/

namespace A276764.P14353243013852737665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A053438 (n + 1)).toNat

end

end A276764.P14353243013852737665

namespace A276764

/-- `A005893(A053438(n+1))` -/
def P14353243013852737665.Spec : Prop :=
  ∀ n, P14353243013852737665.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P18219035988181155389

`A271624(A014601(n+1))`
-/

namespace A276764.P18219035988181155389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271624 (A014601 (n + 1)).toNat

end

end A276764.P18219035988181155389

namespace A276764

/-- `A271624(A014601(n+1))` -/
def P18219035988181155389.Spec : Prop :=
  ∀ n, P18219035988181155389.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P2067600532107382720

`A271624(A154708(n+1))`
-/

namespace A276764.P2067600532107382720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271624 (A154708 (n + 1)).toNat

end

end A276764.P2067600532107382720

namespace A276764

/-- `A271624(A154708(n+1))` -/
def P2067600532107382720.Spec : Prop :=
  ∀ n, P2067600532107382720.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P16718341013486935557

`A058331(A042948(n)+2)+1`
-/

namespace A276764.P16718341013486935557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A042948 n + 2).toNat + 1

end

end A276764.P16718341013486935557

namespace A276764

/-- `A058331(A042948(n)+2)+1` -/
def P16718341013486935557.Spec : Prop :=
  ∀ n, P16718341013486935557.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P5096785710283655301

`A005893(A109613(n)+1+n)`
-/

namespace A276764.P5096785710283655301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A109613 n + 1 + (n : ℤ)).toNat

end

end A276764.P5096785710283655301

namespace A276764

/-- `A005893(A109613(n)+1+n)` -/
def P5096785710283655301.Spec : Prop :=
  ∀ n, P5096785710283655301.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P10066753006699876239

`A005893(A052928(n+2)+n)`
-/

namespace A276764.P10066753006699876239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A052928 (n + 2) + (n : ℤ)).toNat

end

end A276764.P10066753006699876239

namespace A276764

/-- `A005893(A052928(n+2)+n)` -/
def P10066753006699876239.Spec : Prop :=
  ∀ n, P10066753006699876239.a n = A276764 (n + 1)

end A276764

/-! ## A276764.P10890775170067117865

`A005893(2*A008619(n)+n)`
-/

namespace A276764.P10890775170067117865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * A008619 n + (n : ℤ)).toNat

end

end A276764.P10890775170067117865

namespace A276764

/-- `A005893(2*A008619(n)+n)` -/
def P10890775170067117865.Spec : Prop :=
  ∀ n, P10890775170067117865.a n = A276764 (n + 1)

end A276764

/-!
# A276766: a(n) = smallest nonnegative integer not yet in the sequence with no repeated digits and no digits in common with a(n-1), starting with a(0)=0.

The programs for A276766, there is no canonical definition to state claims against.
-/

/-! ## A276766.P10157039791902702513

`A331215(A028310(n))%A330972(n+1)`
-/

namespace A276766.P10157039791902702513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331215 (A028310 n).toNat) (A330972 (n + 1))

end

end A276766.P10157039791902702513

/-! ## A276766.P12657441138485646677

`∑{e}[2^n, A331215(#)]`
-/

namespace A276766.P12657441138485646677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A331215 (Nat.factorization (f1 n) p)

end

end A276766.P12657441138485646677

/-!
# A276767: Let A_n be the sequence defined in the same way as A159559 but with initial term prime(n), n>=2; a(n) is the smallest m such that for i>=2, A_n(i) - A_2(i) <= A_n(m) - A_2(m).

The programs for A276767, there is no canonical definition to state claims against.
-/

/-! ## A276767.P14321869433047923741

`∑[A033179(n+1)*A352269(2*n+3)]`
-/

namespace A276767.P14321869433047923741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033179 (n + 1) * A352269 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276767.P14321869433047923741

/-! ## A276767.P1162747705794406765

`A214287(a(A023360(n))²)` with `a(0)=2`
-/

namespace A276767.P1162747705794406765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A214287 (a (A023360 n).toNat ^ 2).toNat

end

end A276767.P1162747705794406765

/-! ## A276767.P15326819812546214998

`A082282(A006530(∏[gcd(n, C(2, n))+n]))`
-/

namespace A276767.P15326819812546214998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082282 (A006530 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276767.P15326819812546214998

/-!
# A276768: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A276768, there is no canonical definition to state claims against.
-/

/-! ## A276768.P6902248450309800345

`A007088(A277773(n))`
-/

namespace A276768.P6902248450309800345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277773 n).toNat

end

end A276768.P6902248450309800345

/-! ## A276768.P5197951140517818790

`A007088(and(A051049(n), A278346(n)))`
-/

namespace A276768.P5197951140517818790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A051049 n) (A278346 n)).toNat

end

end A276768.P5197951140517818790

/-! ## A276768.P2789227688764161059

`A007088(and(A265721(n), A278346(n)))`
-/

namespace A276768.P2789227688764161059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A265721 n) (A278346 n)).toNat

end

end A276768.P2789227688764161059

/-! ## A276768.P9811901373722361568

`A007088(and(A266668(n), A278346(n)))`
-/

namespace A276768.P9811901373722361568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266668 n) (A278346 n)).toNat

end

end A276768.P9811901373722361568

/-! ## A276768.P5283162162406244499

`A007088(and(A267351(n), A278346(n)))`
-/

namespace A276768.P5283162162406244499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A267351 n) (A278346 n)).toNat

end

end A276768.P5283162162406244499

/-!
# A276770: a(n) is the number of runs of an algorithm. Set b_0 = n, if prime, stop; else, set c_0 = largest divisor of n (!=n); set b_1 = c_0 + b_0/c_0. Run with b_1.

The programs for A276770, there is no canonical definition to state claims against.
-/

/-! ## A276770.P8508609208830790170

`A063250(gcd(n+1, A273788(n+1)))`
-/

namespace A276770.P8508609208830790170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063250 (Int.gcd (n + 1 : ℤ) (A273788 (n + 1)))

end

end A276770.P8508609208830790170

/-! ## A276770.P988537358152475004

`A060648(A319488(n+1))%A047679(n)`
-/

namespace A276770.P988537358152475004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060648 (A319488 (n + 1)).toNat) (A047679 n)

end

end A276770.P988537358152475004

/-! ## A276770.P5420367811584879114

`A007814(and(A077916(n), A187829(n+1)))`
-/

namespace A276770.P5420367811584879114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.land (A077916 n) (A187829 (n + 1))).toNat

end

end A276770.P5420367811584879114

/-! ## A276770.P7841707369860624370

`A007814(and(-A008620(n), A187829(n+1)))`
-/

namespace A276770.P7841707369860624370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.land (-A008620 n) (A187829 (n + 1))).toNat

end

end A276770.P7841707369860624370

/-! ## A276770.P18172251331185984555

`A331738(A003116(n+4))+A008683(3*n+5)`
-/

namespace A276770.P18172251331185984555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (A003116 (n + 4)).toNat + A008683 (3 * n + 5)

end

end A276770.P18172251331185984555

/-!
# A276771: a(n) is the number of runs of an algorithm. Set b_0 = n, if prime or 1 or 0, stop; else, set c_0 = largest divisor of n (!=n); set b_1 = c_0 - b_0/c_0. Run with b_1.

The programs for A276771, there is no canonical definition to state claims against.
-/

/-! ## A276771.P15259168978753476992

`A066247(n+1)*A167746(A198684(n+1))`
-/

namespace A276771.P15259168978753476992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A167746 (A198684 (n + 1)).toNat

end

end A276771.P15259168978753476992

/-! ## A276771.P497255449225273594

`lcm(A167746(n+1), A167746(A198684(n+1)))`
-/

namespace A276771.P497255449225273594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167746 (n + 1)) (A167746 (A198684 (n + 1)).toNat)

end

end A276771.P497255449225273594

/-! ## A276771.P648523881953448277

`A001030(A080861(n))*A066247(n+1)`
-/

namespace A276771.P648523881953448277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (A080861 n).toNat * A066247 (n + 1)

end

end A276771.P648523881953448277

/-! ## A276771.P1894487613959551766

`A007895(A292033(n+1)%A032742(n+1))`
-/

namespace A276771.P1894487613959551766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.tmod (A292033 (n + 1)) (A032742 (n + 1))).toNat

end

end A276771.P1894487613959551766

/-! ## A276771.P10293879460227487041

`A025435(A000045(A249738(n+1))²)`
-/

namespace A276771.P10293879460227487041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A000045 (A249738 (n + 1)).toNat ^ 2).toNat

end

end A276771.P10293879460227487041

/-!
# A276778: a(n) = floor(log_10(1/error(n))), where error(n) is the error in the n-th iteration of the Salamin-Brent algorithm for computing Pi.

The programs for A276778, there is no canonical definition to state claims against.
-/

/-! ## A276778.P12892961627160070622

`A267444(A032563(n+1))-A030547(n+5)`
-/

namespace A276778.P12892961627160070622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267444 (A032563 (n + 1)).toNat - A030547 (n + 5)

end

end A276778.P12892961627160070622

/-! ## A276778.P9169175058937071500

`floor(e*2^n)-A073467(A333882(n))`
-/

namespace A276778.P9169175058937071500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (2 ^ n : ℝ)⌋ - A073467 (A333882 n).toNat

end

end A276778.P9169175058937071500

/-! ## A276778.P18179198172552500811

`floor(e*2^n)-A267479(A267427(n+4))`
-/

namespace A276778.P18179198172552500811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (2 ^ n : ℝ)⌋ - A267479 (A267427 (n + 4)).toNat

end

end A276778.P18179198172552500811

/-! ## A276778.P442340627655703704

`A027437(n)+A010815(A361704(n))`
-/

namespace A276778.P442340627655703704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027437 n + A010815 (A361704 n).toNat

end

end A276778.P442340627655703704

/-!
# A276779: a(n) = floor(log_10(1/error(n))), where error(n) is the error in the n-th iteration of the cubic Borwein-Borwein algorithm for computing 1/Pi.

The programs for A276779, there is no canonical definition to state claims against.
-/

/-! ## A276779.P17210217350388894796

`∑[A315478(record[A007428(n+1)])]`
-/

namespace A276779.P17210217350388894796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315478 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276779.P17210217350388894796

/-!
# A276780: a(n) = floor(log_10(1/error(n))), where error(n) is the error in the n-th iteration of the quartic Borwein-Borwein algorithm for computing 1/Pi.

The programs for A276780, there is no canonical definition to state claims against.
-/

/-! ## A276780.P9705401650993124799

`A004526(A267444(2*(n+2)))-A119968(n)`
-/

namespace A276780.P9705401650993124799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A267444 (2 * (n + 2))).toNat - A119968 n

end

end A276780.P9705401650993124799

/-!
# A276781: a(n) = 1+n-(nearest power of prime <= n); for n > 1, a(n) = minimal b such that the numbers binomial(n,k) for b <= k <= n-b have a common divisor greater than 1.

The programs for A276781, the canonical program `A276781.P2604158077506703315` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276781 has offset 1).

The definition of A276781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276781.P1192915920882769057

`gcd(1+a(n-1), round(n/∏{e}[n+1, #+n]))` with `a(0)=1`
-/

namespace A276781.P1192915920882769057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (1 + a (n - 1) : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n) : ℕ) : ℚ)))

end

end A276781.P1192915920882769057

namespace A276781

/-- `gcd(1+a(n-1), round(n/∏{e}[n+1, #+n]))` -/
def P1192915920882769057.Spec : Prop :=
  ∀ n, (P1192915920882769057.a n : ℤ) = A276781 (n + 1)

end A276781

/-! ## A276781.P3049699598469218010

`A378457(1+n)+1`
-/

namespace A276781.P3049699598469218010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378457 (1 + n) + 1

end

end A276781.P3049699598469218010

namespace A276781

/-- `A378457(1+n)+1` -/
def P3049699598469218010.Spec : Prop :=
  ∀ n, P3049699598469218010.a n = A276781 (n + 1)

end A276781

/-! ## A276781.P2604158077506703315

`2-A031218(n+1)+n`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A276781

/-- `2-A031218(n+1)+n` -/
def P2604158077506703315.Spec : Prop :=
  ∀ n, P2604158077506703315.a n = A276781 (n + 1)

theorem P2604158077506703315.correct : P2604158077506703315.Spec := by
  intro n
  simp only [A276781, Nat.add_sub_cancel]

end A276781

/-! ## A276781.P5757950741186190642

`1-A181062(A065515(n+1))+n`
-/

namespace A276781.P5757950741186190642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A181062 (A065515 (n + 1)).toNat + (n : ℤ)

end

end A276781.P5757950741186190642

namespace A276781

/-- `1-A181062(A065515(n+1))+n` -/
def P5757950741186190642.Spec : Prop :=
  ∀ n, P5757950741186190642.a n = A276781 (n + 1)

theorem P5757950741186190642.correct : P5757950741186190642.Spec := by
  intro n
  simp only [A276781, Nat.add_sub_cancel, A276781.P5757950741186190642.a, A276781.P2604158077506703315.a, A031218, A031218.P11079871404618641815.a, A065515, A065515.P15129427044826637405.a, A181062, A181062.P6529548857799504333.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A000079, A000079.P10855139691139572931.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276781

/-! ## A276781.P5040993793261259840

`2-A000961(A025528(n+1)+1)+n`
-/

namespace A276781.P5040993793261259840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000961 (A025528 (n + 1) + 1).toNat + (n : ℤ)

end

end A276781.P5040993793261259840

namespace A276781

/-- `2-A000961(A025528(n+1)+1)+n` -/
def P5040993793261259840.Spec : Prop :=
  ∀ n, P5040993793261259840.a n = A276781 (n + 1)

end A276781

/-! ## A276781.P6121087587724890236

`2-A000961(∑[A069513(n+1)]+1)+n`
-/

namespace A276781.P6121087587724890236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000961 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + (n : ℤ)

end

end A276781.P6121087587724890236

namespace A276781

/-- `2-A000961(∑[A069513(n+1)]+1)+n` -/
def P6121087587724890236.Spec : Prop :=
  ∀ n, P6121087587724890236.a n = A276781 (n + 1)

end A276781

/-! ## A276781.P16015719066945170072

`gcd(a(n-1)+1, A001222(A014963(n+1)))` with `a(0)=1`
-/

namespace A276781.P16015719066945170072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A001222 (A014963 (n + 1)).toNat)

end

end A276781.P16015719066945170072

namespace A276781

/-- `gcd(a(n-1)+1, A001222(A014963(n+1)))` -/
def P16015719066945170072.Spec : Prop :=
  ∀ n, (P16015719066945170072.a n : ℤ) = A276781 (n + 1)

end A276781

/-! ## A276781.P765638630797185049

`2-A238898(n+2)/2+n`
-/

namespace A276781.P765638630797185049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A238898 (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A276781.P765638630797185049

namespace A276781

/-- `2-A238898(n+2)/2+n` -/
def P765638630797185049.Spec : Prop :=
  ∀ n, P765638630797185049.a n = (A276781 (n + 1) : ℚ)

end A276781

/-! ## A276781.P4077071166460972209

`n+2-A120636(A000015(n+2))`
-/

namespace A276781.P4077071166460972209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A120636 (A000015 (n + 2)).toNat

end

end A276781.P4077071166460972209

namespace A276781

/-- `n+2-A120636(A000015(n+2))` -/
def P4077071166460972209.Spec : Prop :=
  ∀ n, P4077071166460972209.a n = A276781 (n + 1)

end A276781

/-! ## A276781.P13692605426978968816

`A000005(A001221(n+1)^a(n-1))` with `a(0)=1`
-/

namespace A276781.P13692605426978968816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A276781.P13692605426978968816

namespace A276781

/-- `A000005(A001221(n+1)^a(n-1))` -/
def P13692605426978968816.Spec : Prop :=
  ∀ n, P13692605426978968816.a n = A276781 (n + 1)

end A276781

/-!
# A276783: a(n) = A275901(n) + A275902(n).

The programs for A276783, there is no canonical definition to state claims against.
-/

/-! ## A276783.P7647226788843199263

`A275901(n)+A275902(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276783.P7647226788843199263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + A275902 n

end

end A276783.P7647226788843199263

/-! ## A276783.P14009733667331819970

`comp[A276784(1+n)]`
-/

namespace A276783.P14009733667331819970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276784 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276783.P14009733667331819970

/-! ## A276783.P16958098694643983080

`row(A275897(n+1))`
-/

namespace A276783.P16958098694643983080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A275897 (n + 1)).toNat

end

end A276783.P16958098694643983080

/-! ## A276783.P13167803983859421650

`A276324(1+n)-1`
-/

namespace A276783.P13167803983859421650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (1 + n) - 1

end

end A276783.P13167803983859421650

/-! ## A276783.P11428035849271084031

`abs(1-A276324(-xor(n, -1)))`
-/

namespace A276783.P11428035849271084031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A276324 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A276783.P11428035849271084031

/-! ## A276783.P12234881707772825413

`abs(1-A276324(Δ[n²]-n))`
-/

namespace A276783.P12234881707772825413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A276324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A276783.P12234881707772825413

/-! ## A276783.P11387956291485292516

`A023443(A276324(n+1))`
-/

namespace A276783.P11387956291485292516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276324 (n + 1)).toNat

end

end A276783.P11387956291485292516

/-! ## A276783.P8101449528402147107

`A023444(A276324(n+1)+1)`
-/

namespace A276783.P8101449528402147107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A276324 (n + 1) + 1).toNat

end

end A276783.P8101449528402147107

/-! ## A276783.P12617964017131419406

`A065423(2*A276324(n+1))`
-/

namespace A276783.P12617964017131419406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A276324 (n + 1)).toNat

end

end A276783.P12617964017131419406

/-! ## A276783.P14278921333548099697

`A140106(2*A276324(n+1))`
-/

namespace A276783.P14278921333548099697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A276324 (n + 1)).toNat

end

end A276783.P14278921333548099697

/-!
# A276784: Complement of A276783.

The programs for A276784, there is no canonical definition to state claims against.
-/

/-! ## A276784.P10504181810403372200

`comp[A276324(n+1)-1]`
-/

namespace A276784.P10504181810403372200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P10504181810403372200

/-! ## A276784.P10338539593375313355

`comp[abs(1-A276324(Δ[n²]-n))]`
-/

namespace A276784.P10338539593375313355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A276324 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P10338539593375313355

/-! ## A276784.P14830144672429077357

`comp[round(sqrt(2*A275897(n+1)+1))-1]`
-/

namespace A276784.P14830144672429077357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A275897 (n + 1) + 1 : ℝ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P14830144672429077357

/-! ## A276784.P4170480729376168288

`comp[A275902(n)+A275901(n)]`
-/

namespace A276784.P4170480729376168288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n + A275901 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P4170480729376168288

/-! ## A276784.P6456538286337509958

`comp[2*A275901(n)-A276325(n+1)]`
-/

namespace A276784.P6456538286337509958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275901 n - A276325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P6456538286337509958

/-! ## A276784.P9742248057343397947

`comp[A275895(n)+n]`
-/

namespace A276784.P9742248057343397947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P9742248057343397947

/-! ## A276784.P11881538447889504287

`comp[A065188(n+1)+n-1]`
-/

namespace A276784.P11881538447889504287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P11881538447889504287

/-! ## A276784.P17779263724860702540

`comp[A276783(n)]`
-/

namespace A276784.P17779263724860702540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276783 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276784.P17779263724860702540

/-!
# A276785: Number of binary strings of length n containing the substring 11011.

The programs for A276785, the canonical program `A276785.P5311190698958443462` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276785 has offset 0).

The definition of A276785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276785.P11261075255419834847

`ogf(x^5/(1-4x+4x^2+x^3-3x^4+x^5+2x^6))`
-/

namespace A276785.P11261075255419834847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 1] [1, -4, 4, 1, -3, 1, 2] n

end

end A276785.P11261075255419834847

namespace A276785

/-- `ogf(x^5/(1-4x+4x^2+x^3-3x^4+x^5+2x^6))` -/
def P11261075255419834847.Spec : Prop :=
  ∀ n, P11261075255419834847.a n = A276785 n

end A276785

/-! ## A276785.P5311190698958443462

`2^n-A210021(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A276785

/-- `2^n-A210021(n)` -/
def P5311190698958443462.Spec : Prop :=
  ∀ n, P5311190698958443462.a n = A276785 n

theorem P5311190698958443462.correct : P5311190698958443462.Spec := by
  intro n
  simp only [A276785]

end A276785

/-! ## A276785.P13369956135249521861

`abs(A000079(n)-A210021(n))`
-/

namespace A276785.P13369956135249521861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A210021 n|

end

end A276785.P13369956135249521861

namespace A276785

/-- `abs(A000079(n)-A210021(n))` -/
def P13369956135249521861.Spec : Prop :=
  ∀ n, P13369956135249521861.a n = A276785 n

end A276785

/-! ## A276785.P2259247860225596128

`A000225(n)+1-A210021(n)`
-/

namespace A276785.P2259247860225596128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A210021 n)

end

end A276785.P2259247860225596128

namespace A276785

/-- `A000225(n)+1-A210021(n)` -/
def P2259247860225596128.Spec : Prop :=
  ∀ n, P2259247860225596128.a n = A276785 n

theorem P2259247860225596128.correct : P2259247860225596128.Spec := by
  intro n
  simp only [A276785, Nat.add_sub_cancel, A276785.P2259247860225596128.a, A276785.P5311190698958443462.a, A000225, A000225.P6535533121115206393.a, A210021, A210021.P1607339052362857866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276785

/-! ## A276785.P6797350832242883999

`2^n-A277678(A008750(n)-A000007(n))`
-/

namespace A276785.P6797350832242883999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A277678 (A008750 n - A000007 n).toNat

end

end A276785.P6797350832242883999

namespace A276785

/-- `2^n-A277678(A008750(n)-A000007(n))` -/
def P6797350832242883999.Spec : Prop :=
  ∀ n, P6797350832242883999.a n = A276785 n

end A276785

/-! ## A276785.P4670298940303862417

`2^n-A277678(A008750(n)%A014126(n))`
-/

namespace A276785.P4670298940303862417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A277678 (Int.tmod (A008750 n) (A014126 n)).toNat

end

end A276785.P4670298940303862417

namespace A276785

/-- `2^n-A277678(A008750(n)%A014126(n))` -/
def P4670298940303862417.Spec : Prop :=
  ∀ n, P4670298940303862417.a n = A276785 n

end A276785

/-!
# A276786: a(1) = 1; subsequent terms are defined by the rule that if m is present so are 2m+1 and 3m+1; repeated terms are included; final list is sorted.

The programs for A276786, there is no canonical definition to state claims against.
-/

/-! ## A276786.P8952607644150220251

`A002977(∑[A070950(A052325(n+1))])`
-/

namespace A276786.P8952607644150220251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (A052325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276786.P8952607644150220251

/-! ## A276786.P7723693580812902741

`A002977(A296090(n+1)%A241623(n+1))`
-/

namespace A276786.P7723693580812902741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (Int.tmod (A296090 (n + 1)) (A241623 (n + 1))).toNat

end

end A276786.P7723693580812902741

/-! ## A276786.P2014721147002024878

`A002977(∑[A036987(A282268(n))])`
-/

namespace A276786.P2014721147002024878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A282268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276786.P2014721147002024878

/-! ## A276786.P69614936888832941

`A002977(A296090(n+1))%A053302(n+1)`
-/

namespace A276786.P69614936888832941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002977 (A296090 (n + 1)).toNat) (A053302 (n + 1))

end

end A276786.P69614936888832941

/-! ## A276786.P3505574436298298020

`A002977(A187829(n+1)-A025437(n))`
-/

namespace A276786.P3505574436298298020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (A187829 (n + 1) - A025437 n).toNat

end

end A276786.P3505574436298298020

/-!
# A276787: Repeated numbers in A276786.

The programs for A276787, there is no canonical definition to state claims against.
-/

/-! ## A276787.P2750769179651101144

`or(A003891(3*n+2), A003905(2*n+5))`
-/

namespace A276787.P2750769179651101144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003891 (3 * n + 2)) (A003905 (2 * n + 5))

end

end A276787.P2750769179651101144

/-! ## A276787.P3692798935630459187

`or(A239934(n+1), A276874(A003679(3*n+2)))`
-/

namespace A276787.P3692798935630459187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239934 (n + 1)) (A276874 (A003679 (3 * n + 2)).toNat)

end

end A276787.P3692798935630459187

/-!
# A276788: First differences of A003144.

The programs for A276788, the canonical program `A276788.P8117237613989876869` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276788 has offset 1).

The definition of A276788 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276788.P17357296905024747667

`2-A276791(n+1)`
-/

namespace A276788.P17357296905024747667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A276791 (n + 1)

end

end A276788.P17357296905024747667

namespace A276788

/-- `2-A276791(n+1)` -/
def P17357296905024747667.Spec : Prop :=
  ∀ n, P17357296905024747667.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P8117237613989876869

`A003144(n+2)-A003144(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276788

/-- `A003144(n+2)-A003144(n+1)` -/
def P8117237613989876869.Spec : Prop :=
  ∀ n, P8117237613989876869.a n = A276788 (n + 1)

theorem P8117237613989876869.correct : P8117237613989876869.Spec := by
  intro n
  simp only [A276788, Nat.add_sub_cancel]

end A276788

/-! ## A276788.P15123031126525697118

`Δ[A278039(n)]`
-/

namespace A276788.P15123031126525697118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276788.P15123031126525697118

namespace A276788

/-- `Δ[A278039(n)]` -/
def P15123031126525697118.Spec : Prop :=
  ∀ n, P15123031126525697118.a n = A276788 (n + 1)

theorem P15123031126525697118.correct : P15123031126525697118.Spec := by
  intro n
  simp only [A276788, Nat.add_sub_cancel, A276788.P15123031126525697118.f1, A276788.P15123031126525697118.a, A276788.P8117237613989876869.a, A003144, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A278039, A278039.P16218767788797619260.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276788

/-! ## A276788.P17277515162427673987

`3-A080843(n)!`
-/

namespace A276788.P17277515162427673987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.factorial (A080843 n).toNat : ℤ)

end

end A276788.P17277515162427673987

namespace A276788

/-- `3-A080843(n)!` -/
def P17277515162427673987.Spec : Prop :=
  ∀ n, P17277515162427673987.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P10494646327747123113

`Δ[A003144(n+1)]`
-/

namespace A276788.P10494646327747123113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276788.P10494646327747123113

namespace A276788

/-- `Δ[A003144(n+1)]` -/
def P10494646327747123113.Spec : Prop :=
  ∀ n, P10494646327747123113.a n = A276788 (n + 1)

theorem P10494646327747123113.correct : P10494646327747123113.Spec := by
  intro n
  simp only [A276788, Nat.add_sub_cancel, A276788.P10494646327747123113.f1, A276788.P10494646327747123113.a, A276788.P8117237613989876869.a, SequenceMachineLib.memo_apply]

end A276788

/-! ## A276788.P11521067672592965798

`2-Δ[A276798(n)]`
-/

namespace A276788.P11521067672592965798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A276788.P11521067672592965798

namespace A276788

/-- `2-Δ[A276798(n)]` -/
def P11521067672592965798.Spec : Prop :=
  ∀ n, P11521067672592965798.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P9754234577743304763

`2-char[A278041(n)]`
-/

namespace A276788.P9754234577743304763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276788.P9754234577743304763

namespace A276788

/-- `2-char[A278041(n)]` -/
def P9754234577743304763.Spec : Prop :=
  ∀ n, P9754234577743304763.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P11253740671776464452

`A305374(n+1)-1`
-/

namespace A276788.P11253740671776464452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 (n + 1) - 1

end

end A276788.P11253740671776464452

namespace A276788

/-- `A305374(n+1)-1` -/
def P11253740671776464452.Spec : Prop :=
  ∀ n, P11253740671776464452.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P2948554947418901700

`floor(sqrt(A305394(n+1)))`
-/

namespace A276788.P2948554947418901700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A305394 (n + 1))

end

end A276788.P2948554947418901700

namespace A276788

/-- `floor(sqrt(A305394(n+1)))` -/
def P2948554947418901700.Spec : Prop :=
  ∀ n, P2948554947418901700.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P7594678932888164638

`floor(sqrt(A275925(n+2)))`
-/

namespace A276788.P7594678932888164638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A275925 (n + 2))

end

end A276788.P7594678932888164638

namespace A276788

/-- `floor(sqrt(A275925(n+2)))` -/
def P7594678932888164638.Spec : Prop :=
  ∀ n, P7594678932888164638.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P8699549734726928670

`round(sqrt(A276789(n+1)))`
-/

namespace A276788.P8699549734726928670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A276789 (n + 1) : ℝ))

end

end A276788.P8699549734726928670

namespace A276788

/-- `round(sqrt(A276789(n+1)))` -/
def P8699549734726928670.Spec : Prop :=
  ∀ n, P8699549734726928670.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P101364954667864543

`round(log(A276792(n+1)))`
-/

namespace A276788.P101364954667864543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A276792 (n + 1) : ℝ))

end

end A276788.P101364954667864543

namespace A276788

/-- `round(log(A276792(n+1)))` -/
def P101364954667864543.Spec : Prop :=
  ∀ n, P101364954667864543.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P1201435082351640253

`abs(A317193(n+1))+1`
-/

namespace A276788.P1201435082351640253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317193 (n + 1)| + 1

end

end A276788.P1201435082351640253

namespace A276788

/-- `abs(A317193(n+1))+1` -/
def P1201435082351640253.Spec : Prop :=
  ∀ n, P1201435082351640253.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P16030464281539737458

`Δ[A140101(n+1)]-1`
-/

namespace A276788.P16030464281539737458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A276788.P16030464281539737458

namespace A276788

/-- `Δ[A140101(n+1)]-1` -/
def P16030464281539737458.Spec : Prop :=
  ∀ n, P16030464281539737458.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P6980290382897724794

`round(log(Δ[A003146(n+1)]))`
-/

namespace A276788.P6980290382897724794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (n + 1) - f1 n : ℝ))

end

end A276788.P6980290382897724794

namespace A276788

/-- `round(log(Δ[A003146(n+1)]))` -/
def P6980290382897724794.Spec : Prop :=
  ∀ n, P6980290382897724794.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P8440018008564893149

`runs[A140100(n+2)-n]`
-/

namespace A276788.P8440018008564893149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 2) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A276788.P8440018008564893149

namespace A276788

/-- `runs[A140100(n+2)-n]` -/
def P8440018008564893149.Spec : Prop :=
  ∀ n, (P8440018008564893149.a n : ℤ) = A276788 (n + 1)

end A276788

/-! ## A276788.P11145584696280790030

`2/round(sqrt(A092782(n+1)))`
-/

namespace A276788.P11145584696280790030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (SequenceMachineLib.roundAway (Real.sqrt (A092782 (n + 1) : ℝ)) : ℚ)

end

end A276788.P11145584696280790030

namespace A276788

/-- `2/round(sqrt(A092782(n+1)))` -/
def P11145584696280790030.Spec : Prop :=
  ∀ n, P11145584696280790030.a n = (A276788 (n + 1) : ℚ)

end A276788

/-! ## A276788.P7890522278163249582

`Δ[A317192(n+1)]²+1`
-/

namespace A276788.P7890522278163249582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A276788.P7890522278163249582

namespace A276788

/-- `Δ[A317192(n+1)]²+1` -/
def P7890522278163249582.Spec : Prop :=
  ∀ n, P7890522278163249582.a n = A276788 (n + 1)

end A276788

/-! ## A276788.P2751479047102822485

`and(1, A317193(2*n-n+1))+1`
-/

namespace A276788.P2751479047102822485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317193 ((2 * n : ℤ) - (n : ℤ) + 1).toNat) + 1

end

end A276788.P2751479047102822485

namespace A276788

/-- `and(1, A317193(2*n-n+1))+1` -/
def P2751479047102822485.Spec : Prop :=
  ∀ n, P2751479047102822485.a n = A276788 (n + 1)

end A276788

/-!
# A276789: First differences of A003145.

The programs for A276789, the canonical program `A276789.P3535134119243695297` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276789 has offset 1).

The definition of A276789 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276789.P13700973200894060338

`4-A080843(n)`
-/

namespace A276789.P13700973200894060338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A080843 n

end

end A276789.P13700973200894060338

namespace A276789

/-- `4-A080843(n)` -/
def P13700973200894060338.Spec : Prop :=
  ∀ n, P13700973200894060338.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P11481715772768578306

`A278040(n+1)-A278040(n)`
-/

namespace A276789.P11481715772768578306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (n + 1) - A278040 n

end

end A276789.P11481715772768578306

namespace A276789

/-- `A278040(n+1)-A278040(n)` -/
def P11481715772768578306.Spec : Prop :=
  ∀ n, P11481715772768578306.a n = A276789 (n + 1)

theorem P11481715772768578306.correct : P11481715772768578306.Spec := by
  intro n
  simp only [A276789, Nat.add_sub_cancel, A276789.P11481715772768578306.a, A276789.P3535134119243695297.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A278040, A278040.P10650196326427599491.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276789

/-! ## A276789.P3535134119243695297

`A003145(n+2)-A003145(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A276789

/-- `A003145(n+2)-A003145(n+1)` -/
def P3535134119243695297.Spec : Prop :=
  ∀ n, P3535134119243695297.a n = A276789 (n + 1)

theorem P3535134119243695297.correct : P3535134119243695297.Spec := by
  intro n
  simp only [A276789, Nat.add_sub_cancel]

end A276789

/-! ## A276789.P14909022786952022515

`4-val(eq[0, and(n, 2*and(n, 2*n))]+1, 2)`
-/

namespace A276789.P14909022786952022515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) 2 : ℤ)

end

end A276789.P14909022786952022515

namespace A276789

/-- `4-val(eq[0, and(n, 2*and(n, 2*n))]+1, 2)` -/
def P14909022786952022515.Spec : Prop :=
  ∀ n, P14909022786952022515.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P12969355558375296865

`Δ[A278040(n)]`
-/

namespace A276789.P12969355558375296865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276789.P12969355558375296865

namespace A276789

/-- `Δ[A278040(n)]` -/
def P12969355558375296865.Spec : Prop :=
  ∀ n, P12969355558375296865.a n = A276789 (n + 1)

theorem P12969355558375296865.correct : P12969355558375296865.Spec := by
  intro n
  simp only [A276789, Nat.add_sub_cancel, A276789.P12969355558375296865.f1, A276789.P12969355558375296865.a, A276789.P3535134119243695297.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A278040, A278040.P10650196326427599491.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276789

/-! ## A276789.P6148784353477030106

`A317198(n)+3`
-/

namespace A276789.P6148784353477030106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317198 n + 3

end

end A276789.P6148784353477030106

namespace A276789

/-- `A317198(n)+3` -/
def P6148784353477030106.Spec : Prop :=
  ∀ n, P6148784353477030106.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P11070970297691573549

`Δ[A003145(n+1)]`
-/

namespace A276789.P11070970297691573549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276789.P11070970297691573549

namespace A276789

/-- `Δ[A003145(n+1)]` -/
def P11070970297691573549.Spec : Prop :=
  ∀ n, P11070970297691573549.a n = A276789 (n + 1)

theorem P11070970297691573549.correct : P11070970297691573549.Spec := by
  intro n
  simp only [A276789, Nat.add_sub_cancel, A276789.P11070970297691573549.f1, A276789.P11070970297691573549.a, A276789.P3535134119243695297.a, SequenceMachineLib.memo_apply]

end A276789

/-! ## A276789.P18032966423944492833

`A305394(n+1)-1`
-/

namespace A276789.P18032966423944492833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 1) - 1

end

end A276789.P18032966423944492833

namespace A276789

/-- `A305394(n+1)-1` -/
def P18032966423944492833.Spec : Prop :=
  ∀ n, P18032966423944492833.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P14324646143449012718

`5-A092782(n+1)`
-/

namespace A276789.P14324646143449012718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A092782 (n + 1)

end

end A276789.P14324646143449012718

namespace A276789

/-- `5-A092782(n+1)` -/
def P14324646143449012718.Spec : Prop :=
  ∀ n, P14324646143449012718.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P13485781167973407367

`round(Δ[A278041(n)/2])`
-/

namespace A276789.P13485781167973407367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278041 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A276789.P13485781167973407367

namespace A276789

/-- `round(Δ[A278041(n)/2])` -/
def P13485781167973407367.Spec : Prop :=
  ∀ n, P13485781167973407367.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P4259801708585871795

`round(A276792(n+1)/2)`
-/

namespace A276789.P4259801708585871795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A276792 (n + 1) : ℚ) / 2)

end

end A276789.P4259801708585871795

namespace A276789

/-- `round(A276792(n+1)/2)` -/
def P4259801708585871795.Spec : Prop :=
  ∀ n, P4259801708585871795.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P16220304608029233064

`Δ[A140103(n+1)]-1`
-/

namespace A276789.P16220304608029233064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A276789.P16220304608029233064

namespace A276789

/-- `Δ[A140103(n+1)]-1` -/
def P16220304608029233064.Spec : Prop :=
  ∀ n, P16220304608029233064.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P296994087571734416

`ceil(log(A275925(n+2))²)`
-/

namespace A276789.P296994087571734416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A275925 (n + 2) : ℝ) ^ 2⌉

end

end A276789.P296994087571734416

namespace A276789

/-- `ceil(log(A275925(n+2))²)` -/
def P296994087571734416.Spec : Prop :=
  ∀ n, P296994087571734416.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P9364327510465217201

`round(Δ[A003146(n+1)/2])`
-/

namespace A276789.P9364327510465217201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003146 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A276789.P9364327510465217201

namespace A276789

/-- `round(Δ[A003146(n+1)/2])` -/
def P9364327510465217201.Spec : Prop :=
  ∀ n, P9364327510465217201.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P11745816625620366602

`A276796(Δ[A278041(n)])`
-/

namespace A276789.P11745816625620366602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (f1 (n + 1) - f1 n).toNat

end

end A276789.P11745816625620366602

namespace A276789

/-- `A276796(Δ[A278041(n)])` -/
def P11745816625620366602.Spec : Prop :=
  ∀ n, P11745816625620366602.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P2582514521203475899

`Δ[A278039(A278039(n))]`
-/

namespace A276789.P2582514521203475899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276789.P2582514521203475899

namespace A276789

/-- `Δ[A278039(A278039(n))]` -/
def P2582514521203475899.Spec : Prop :=
  ∀ n, P2582514521203475899.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P12195569964317895707

`A164360(A356898(n))-1`
-/

namespace A276789.P12195569964317895707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164360 (A356898 n).toNat - 1

end

end A276789.P12195569964317895707

namespace A276789

/-- `A164360(A356898(n))-1` -/
def P12195569964317895707.Spec : Prop :=
  ∀ n, P12195569964317895707.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P8410790024096809811

`A001221(Δ[A278041(n)]!)`
-/

namespace A276789.P8410790024096809811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A276789.P8410790024096809811

namespace A276789

/-- `A001221(Δ[A278041(n)]!)` -/
def P8410790024096809811.Spec : Prop :=
  ∀ n, P8410790024096809811.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P16382150607553875374

`A164360(A278045(n+1))-1`
-/

namespace A276789.P16382150607553875374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164360 (A278045 (n + 1)).toNat - 1

end

end A276789.P16382150607553875374

namespace A276789

/-- `A164360(A278045(n+1))-1` -/
def P16382150607553875374.Spec : Prop :=
  ∀ n, P16382150607553875374.a n = A276789 (n + 1)

end A276789

/-! ## A276789.P11068603145363680178

`A001221(Δ[A003146(n+1)]!)`
-/

namespace A276789.P11068603145363680178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A276789.P11068603145363680178

namespace A276789

/-- `A001221(Δ[A003146(n+1)]!)` -/
def P11068603145363680178.Spec : Prop :=
  ∀ n, P11068603145363680178.a n = A276789 (n + 1)

end A276789

/-!
# A276790: Trajectory of 0 under repeated applications of the map psi: 0 -> 0121, 1 -> 0121121, 2 -> 012121.

The programs for A276790, the canonical program `A276790.P4936470582022821873` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276790 has offset 0).

The definition of A276790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276790.P4936470582022821873

`A277745(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A276790

/-- `A277745(n+1)-1` -/
def P4936470582022821873.Spec : Prop :=
  ∀ n, P4936470582022821873.a n = A276790 n

theorem P4936470582022821873.correct : P4936470582022821873.Spec := by
  intro n
  simp only [A276790]

end A276790

/-! ## A276790.P315664554242268810

`gcd(4, A352103(n))%4`
-/

namespace A276790.P315664554242268810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A352103 n) % 4

end

end A276790.P315664554242268810

namespace A276790

/-- `gcd(4, A352103(n))%4` -/
def P315664554242268810.Spec : Prop :=
  ∀ n, (P315664554242268810.a n : ℤ) = A276790 n

end A276790

/-! ## A276790.P16697592614517867158

`ceil(acot(cos(A275925(n+1))))`
-/

namespace A276790.P16697592614517867158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (Real.cos (A275925 (n + 1) : ℝ))⌉

end

end A276790.P16697592614517867158

namespace A276790

/-- `ceil(acot(cos(A275925(n+1))))` -/
def P16697592614517867158.Spec : Prop :=
  ∀ n, P16697592614517867158.a n = A276790 n

end A276790

/-! ## A276790.P12934750003905514522

`11%A277745(Δ[n²]-n)`
-/

namespace A276790.P12934750003905514522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A277745 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A276790.P12934750003905514522

namespace A276790

/-- `11%A277745(Δ[n²]-n)` -/
def P12934750003905514522.Spec : Prop :=
  ∀ n, P12934750003905514522.a n = A276790 n

end A276790

/-! ## A276790.P3925516511565257852

`A080843(A140101(n)-n)`
-/

namespace A276790.P3925516511565257852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A140101 n - (n : ℤ)).toNat

end

end A276790.P3925516511565257852

namespace A276790

/-- `A080843(A140101(n)-n)` -/
def P3925516511565257852.Spec : Prop :=
  ∀ n, P3925516511565257852.a n = A276790 n

end A276790

/-! ## A276790.P277604475740726821

`Δ[A140102(n)]-A276791(n)`
-/

namespace A276790.P277604475740726821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A276791 n

end

end A276790.P277604475740726821

namespace A276790

/-- `Δ[A140102(n)]-A276791(n)` -/
def P277604475740726821.Spec : Prop :=
  ∀ n, P277604475740726821.a n = A276790 n

end A276790

/-! ## A276790.P6438016524055613394

`and(Δ[A140102(n)], A305374(n))`
-/

namespace A276790.P6438016524055613394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A305374 n)

end

end A276790.P6438016524055613394

namespace A276790

/-- `and(Δ[A140102(n)], A305374(n))` -/
def P6438016524055613394.Spec : Prop :=
  ∀ n, P6438016524055613394.a n = A276790 n

end A276790

/-! ## A276790.P15262397457386685719

`a(A080843(A003144(n)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A276790.P15262397457386685719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A080843 (A003144 n).toNat).toNat

end

end A276790.P15262397457386685719

namespace A276790

/-- `a(A080843(A003144(n)))` -/
def P15262397457386685719.Spec : Prop :=
  ∀ n, (P15262397457386685719.a n : ℤ) = A276790 n

end A276790

/-! ## A276790.P1112624220348351731

`A276794(n)+1-A276791(n)`
-/

namespace A276790.P1112624220348351731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 n + (1 - A276791 n)

end

end A276790.P1112624220348351731

namespace A276790

/-- `A276794(n)+1-A276791(n)` -/
def P1112624220348351731.Spec : Prop :=
  ∀ n, P1112624220348351731.a n = A276790 n

end A276790

/-! ## A276790.P8987170990210101820

`log2(A277745(n+1)+A276794(n))`
-/

namespace A276790.P8987170990210101820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A277745 (n + 1) + A276794 n : ℝ)

end

end A276790.P8987170990210101820

namespace A276790

/-- `log2(A277745(n+1)+A276794(n))` -/
def P8987170990210101820.Spec : Prop :=
  ∀ n, P8987170990210101820.a n = (A276790 n : ℝ)

end A276790

/-! ## A276790.P15308455945082720970

`and(Δ[A140102(n)], A003796(n+1))`
-/

namespace A276790.P15308455945082720970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A003796 (n + 1))

end

end A276790.P15308455945082720970

namespace A276790

/-- `and(Δ[A140102(n)], A003796(n+1))` -/
def P15308455945082720970.Spec : Prop :=
  ∀ n, P15308455945082720970.a n = A276790 n

end A276790

/-! ## A276790.P15810568473980464333

`(and(3, -A275925(n+1))-1)^A317193(n+1)`
-/

namespace A276790.P15810568473980464333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 3 (-A275925 (n + 1)) - 1 : ℚ) ^ (A317193 (n + 1) : ℤ)

end

end A276790.P15810568473980464333

namespace A276790

/-- `(and(3, -A275925(n+1))-1)^A317193(n+1)` -/
def P15810568473980464333.Spec : Prop :=
  ∀ n, P15810568473980464333.a n = (A276790 n : ℚ)

end A276790

/-! ## A276790.P1427531698577811546

`A059835(Δ[A305373(n)])`
-/

namespace A276790.P1427531698577811546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 (f1 (n + 1) - f1 n).toNat

end

end A276790.P1427531698577811546

namespace A276790

/-- `A059835(Δ[A305373(n)])` -/
def P1427531698577811546.Spec : Prop :=
  ∀ n, P1427531698577811546.a n = A276790 n

end A276790

/-! ## A276790.P874638492856217669

`A007877(A003796(n+1))`
-/

namespace A276790.P874638492856217669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A003796 (n + 1)).toNat

end

end A276790.P874638492856217669

namespace A276790

/-- `A007877(A003796(n+1))` -/
def P874638492856217669.Spec : Prop :=
  ∀ n, P874638492856217669.a n = A276790 n

end A276790

/-! ## A276790.P17957704068058886814

`8%runs[A276798(n)]`
-/

namespace A276790.P17957704068058886814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 % (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A276790.P17957704068058886814

namespace A276790

/-- `8%runs[A276798(n)]` -/
def P17957704068058886814.Spec : Prop :=
  ∀ n, (P17957704068058886814.a n : ℤ) = A276790 n

end A276790

/-!
# A276791: Indicator function of (A003146 prefixed with 0).

The programs for A276791, the canonical program `A276791.P3840458042607645209` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276791 has offset 0).

The definition of A276791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276791.P13844408404183601855

`3-A305374(n)`
-/

namespace A276791.P13844408404183601855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A305374 n

end

end A276791.P13844408404183601855

namespace A276791

/-- `3-A305374(n)` -/
def P13844408404183601855.Spec : Prop :=
  ∀ n, P13844408404183601855.a n = A276791 n

end A276791

/-! ## A276791.P16544980174665154169

`3-Δ[A140101(n)]`
-/

namespace A276791.P16544980174665154169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A276791.P16544980174665154169

namespace A276791

/-- `3-Δ[A140101(n)]` -/
def P16544980174665154169.Spec : Prop :=
  ∀ n, P16544980174665154169.a n = A276791 n

end A276791

/-! ## A276791.P12092677168733262115

`char[A305373(n)+n]`
-/

namespace A276791.P12092677168733262115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276791.P12092677168733262115

namespace A276791

/-- `char[A305373(n)+n]` -/
def P12092677168733262115.Spec : Prop :=
  ∀ n, (P12092677168733262115.a n : ℤ) = A276791 n

end A276791

/-! ## A276791.P6835246922645556928

`1-row(A276790(n))`
-/

namespace A276791.P6835246922645556928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.triRow (A276790 n).toNat : ℤ)

end

end A276791.P6835246922645556928

namespace A276791

/-- `1-row(A276790(n))` -/
def P6835246922645556928.Spec : Prop :=
  ∀ n, P6835246922645556928.a n = A276791 n

end A276791

/-! ## A276791.P3840458042607645209

`C(3, A275925(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A276791

/-- `C(3, A275925(n+1))` -/
def P3840458042607645209.Spec : Prop :=
  ∀ n, (P3840458042607645209.a n : ℤ) = A276791 n

theorem P3840458042607645209.correct : P3840458042607645209.Spec := by
  intro n
  simp only [A276791]

end A276791

/-! ## A276791.P9034519148442164697

`floor(1/A277745(n+1))`
-/

namespace A276791.P9034519148442164697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A277745 (n + 1) : ℚ)⌋

end

end A276791.P9034519148442164697

namespace A276791

/-- `floor(1/A277745(n+1))` -/
def P9034519148442164697.Spec : Prop :=
  ∀ n, P9034519148442164697.a n = A276791 n

end A276791

/-! ## A276791.P6682890903679767081

`A035363(Δ[A140101(n)])`
-/

namespace A276791.P6682890903679767081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (f1 (n + 1) - f1 n).toNat

end

end A276791.P6682890903679767081

namespace A276791

/-- `A035363(Δ[A140101(n)])` -/
def P6682890903679767081.Spec : Prop :=
  ∀ n, P6682890903679767081.a n = A276791 n

end A276791

/-! ## A276791.P14963945890603333049

`A305386(Δ[A140101(n)])`
-/

namespace A276791.P14963945890603333049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305386 (f1 (n + 1) - f1 n).toNat

end

end A276791.P14963945890603333049

namespace A276791

/-- `A305386(Δ[A140101(n)])` -/
def P14963945890603333049.Spec : Prop :=
  ∀ n, P14963945890603333049.a n = A276791 n

end A276791

/-! ## A276791.P11549958939810163156

`A305387(Δ[A140101(n)])`
-/

namespace A276791.P11549958939810163156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305387 (f1 (n + 1) - f1 n).toNat

end

end A276791.P11549958939810163156

namespace A276791

/-- `A305387(Δ[A140101(n)])` -/
def P11549958939810163156.Spec : Prop :=
  ∀ n, P11549958939810163156.a n = A276791 n

end A276791

/-! ## A276791.P5739425546283209524

`A121262(A003796(n+1))`
-/

namespace A276791.P5739425546283209524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A003796 (n + 1)).toNat

end

end A276791.P5739425546283209524

namespace A276791

/-- `A121262(A003796(n+1))` -/
def P5739425546283209524.Spec : Prop :=
  ∀ n, P5739425546283209524.a n = A276791 n

end A276791

/-! ## A276791.P11785477230557967424

`A001520(n)%A305374(n)`
-/

namespace A276791.P11785477230557967424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A305374 n)

end

end A276791.P11785477230557967424

namespace A276791

/-- `A001520(n)%A305374(n)` -/
def P11785477230557967424.Spec : Prop :=
  ∀ n, P11785477230557967424.a n = A276791 n

end A276791

/-! ## A276791.P16869995023565716510

`A001546(n)%A305374(n)`
-/

namespace A276791.P16869995023565716510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001546 n) (A305374 n)

end

end A276791.P16869995023565716510

namespace A276791

/-- `A001546(n)%A305374(n)` -/
def P16869995023565716510.Spec : Prop :=
  ∀ n, P16869995023565716510.a n = A276791 n

end A276791

/-! ## A276791.P15702595426547818242

`A010707(n)%A305374(n)`
-/

namespace A276791.P15702595426547818242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010707 n) (A305374 n)

end

end A276791.P15702595426547818242

namespace A276791

/-- `A010707(n)%A305374(n)` -/
def P15702595426547818242.Spec : Prop :=
  ∀ n, P15702595426547818242.a n = A276791 n

end A276791

/-! ## A276791.P6012320300013888197

`A016945(n)%A305374(n)`
-/

namespace A276791.P6012320300013888197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016945 n) (A305374 n)

end

end A276791.P6012320300013888197

namespace A276791

/-- `A016945(n)%A305374(n)` -/
def P6012320300013888197.Spec : Prop :=
  ∀ n, P6012320300013888197.a n = A276791 n

end A276791

/-! ## A276791.P9739991835237047862

`A016946(n)%A305374(n)`
-/

namespace A276791.P9739991835237047862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016946 n) (A305374 n)

end

end A276791.P9739991835237047862

namespace A276791

/-- `A016946(n)%A305374(n)` -/
def P9739991835237047862.Spec : Prop :=
  ∀ n, P9739991835237047862.a n = A276791 n

end A276791

/-! ## A276791.P460902533982967330

`A016947(n)%A305374(n)`
-/

namespace A276791.P460902533982967330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016947 n) (A305374 n)

end

end A276791.P460902533982967330

namespace A276791

/-- `A016947(n)%A305374(n)` -/
def P460902533982967330.Spec : Prop :=
  ∀ n, P460902533982967330.a n = A276791 n

end A276791

/-! ## A276791.P1690315360238558367

`A016948(n)%A305374(n)`
-/

namespace A276791.P1690315360238558367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016948 n) (A305374 n)

end

end A276791.P1690315360238558367

namespace A276791

/-- `A016948(n)%A305374(n)` -/
def P1690315360238558367.Spec : Prop :=
  ∀ n, P1690315360238558367.a n = A276791 n

end A276791

/-! ## A276791.P8533101202873824013

`A016949(n)%A305374(n)`
-/

namespace A276791.P8533101202873824013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016949 n) (A305374 n)

end

end A276791.P8533101202873824013

namespace A276791

/-- `A016949(n)%A305374(n)` -/
def P8533101202873824013.Spec : Prop :=
  ∀ n, P8533101202873824013.a n = A276791 n

end A276791

/-! ## A276791.P12046356480601545420

`A016950(n)%A305374(n)`
-/

namespace A276791.P12046356480601545420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016950 n) (A305374 n)

end

end A276791.P12046356480601545420

namespace A276791

/-- `A016950(n)%A305374(n)` -/
def P12046356480601545420.Spec : Prop :=
  ∀ n, P12046356480601545420.a n = A276791 n

end A276791

/-! ## A276791.P7505443760931186703

`A016951(n)%A305374(n)`
-/

namespace A276791.P7505443760931186703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016951 n) (A305374 n)

end

end A276791.P7505443760931186703

namespace A276791

/-- `A016951(n)%A305374(n)` -/
def P7505443760931186703.Spec : Prop :=
  ∀ n, P7505443760931186703.a n = A276791 n

end A276791

/-!
# A276792: First differences of A003146.

The programs for A276792, the canonical program `A276792.P14653190003130318019` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276792 has offset 1).

The definition of A276792 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276792.P2824283627984624995

`A003146(n+2)-A003146(n+1)`
-/

namespace A276792.P2824283627984624995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 2) - A003146 (n + 1)

end

end A276792.P2824283627984624995

namespace A276792

/-- `A003146(n+2)-A003146(n+1)` -/
def P2824283627984624995.Spec : Prop :=
  ∀ n, P2824283627984624995.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P14653190003130318019

`A276788(n+1)+A276789(n+1)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276792

/-- `A276788(n+1)+A276789(n+1)+1` -/
def P14653190003130318019.Spec : Prop :=
  ∀ n, P14653190003130318019.a n = A276792 (n + 1)

theorem P14653190003130318019.correct : P14653190003130318019.Spec := by
  intro n
  simp only [A276792, Nat.add_sub_cancel]

end A276792

/-! ## A276792.P6698281751083115828

`Δ[A278041(n)]`
-/

namespace A276792.P6698281751083115828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276792.P6698281751083115828

namespace A276792

/-- `Δ[A278041(n)]` -/
def P6698281751083115828.Spec : Prop :=
  ∀ n, P6698281751083115828.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P6453120025524421916

`Δ[A003146(1+n)]`
-/

namespace A276792.P6453120025524421916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276792.P6453120025524421916

namespace A276792

/-- `Δ[A003146(1+n)]` -/
def P6453120025524421916.Spec : Prop :=
  ∀ n, P6453120025524421916.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P11733811760731560340

`A275925(n+2)+1`
-/

namespace A276792.P11733811760731560340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 2) + 1

end

end A276792.P11733811760731560340

namespace A276792

/-- `A275925(n+2)+1` -/
def P11733811760731560340.Spec : Prop :=
  ∀ n, P11733811760731560340.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P2863709294422274505

`round(A305394(n+1)/log(2))`
-/

namespace A276792.P2863709294422274505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305394 (n + 1) : ℝ) / Real.log (2 : ℝ))

end

end A276792.P2863709294422274505

namespace A276792

/-- `round(A305394(n+1)/log(2))` -/
def P2863709294422274505.Spec : Prop :=
  ∀ n, P2863709294422274505.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P11484712814085136302

`A079000(Δ[A278040(n)])`
-/

namespace A276792.P11484712814085136302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (f1 (n + 1) - f1 n).toNat

end

end A276792.P11484712814085136302

namespace A276792

/-- `A079000(Δ[A278040(n)])` -/
def P11484712814085136302.Spec : Prop :=
  ∀ n, P11484712814085136302.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P2343506497245717289

`Δ[A278040(A278039(n))]`
-/

namespace A276792.P2343506497245717289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276792.P2343506497245717289

namespace A276792

/-- `Δ[A278040(A278039(n))]` -/
def P2343506497245717289.Spec : Prop :=
  ∀ n, P2343506497245717289.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P3974077744734857201

`A130233(Δ[A278040(n)]²)`
-/

namespace A276792.P3974077744734857201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A276792.P3974077744734857201

namespace A276792

/-- `A130233(Δ[A278040(n)]²)` -/
def P3974077744734857201.Spec : Prop :=
  ∀ n, P3974077744734857201.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P3700394683779996576

`A015932(Δ[A140103(n+1)])`
-/

namespace A276792.P3700394683779996576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015932 (f1 (n + 1) - f1 n).toNat

end

end A276792.P3700394683779996576

namespace A276792

/-- `A015932(Δ[A140103(n+1)])` -/
def P3700394683779996576.Spec : Prop :=
  ∀ n, P3700394683779996576.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P2767491325632172231

`A140100(Δ[A140103(n+1)])`
-/

namespace A276792.P2767491325632172231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (f1 (n + 1) - f1 n).toNat

end

end A276792.P2767491325632172231

namespace A276792

/-- `A140100(Δ[A140103(n+1)])` -/
def P2767491325632172231.Spec : Prop :=
  ∀ n, P2767491325632172231.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P4907906693845527052

`A278040(Δ[A278040(n)])/2`
-/

namespace A276792.P4907906693845527052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278040 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A276792.P4907906693845527052

namespace A276792

/-- `A278040(Δ[A278040(n)])/2` -/
def P4907906693845527052.Spec : Prop :=
  ∀ n, P4907906693845527052.a n = (A276792 (n + 1) : ℚ)

end A276792

/-! ## A276792.P14856027244539126207

`A278041(n+1)-A278041(n)`
-/

namespace A276792.P14856027244539126207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 (n + 1) - A278041 n

end

end A276792.P14856027244539126207

namespace A276792

/-- `A278041(n+1)-A278041(n)` -/
def P14856027244539126207.Spec : Prop :=
  ∀ n, P14856027244539126207.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P2881750034310176771

`A018252(Δ[A140103(n+1)])-2`
-/

namespace A276792.P2881750034310176771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n).toNat - 2

end

end A276792.P2881750034310176771

namespace A276792

/-- `A018252(Δ[A140103(n+1)])-2` -/
def P2881750034310176771.Spec : Prop :=
  ∀ n, P2881750034310176771.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P12295623718218535925

`A305394(n+1)+A276788(n+1)`
-/

namespace A276792.P12295623718218535925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 1) + A276788 (n + 1)

end

end A276792.P12295623718218535925

namespace A276792

/-- `A305394(n+1)+A276788(n+1)` -/
def P12295623718218535925.Spec : Prop :=
  ∀ n, P12295623718218535925.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P9034690467968356071

`A018252(Δ[A003145(n+1)]+1)-2`
-/

namespace A276792.P9034690467968356071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n + 1).toNat - 2

end

end A276792.P9034690467968356071

namespace A276792

/-- `A018252(Δ[A003145(n+1)]+1)-2` -/
def P9034690467968356071.Spec : Prop :=
  ∀ n, P9034690467968356071.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P10872568964422378428

`9-A000040(5-Δ[A003145(n+1)])`
-/

namespace A276792.P10872568964422378428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A000040 (5 - (f1 (n + 1) - f1 n)).toNat

end

end A276792.P10872568964422378428

namespace A276792

/-- `9-A000040(5-Δ[A003145(n+1)])` -/
def P10872568964422378428.Spec : Prop :=
  ∀ n, P10872568964422378428.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P8355584619885679637

`A278039(A278040(n+1)-A278040(n))`
-/

namespace A276792.P8355584619885679637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278040 (n + 1) - A278040 n).toNat

end

end A276792.P8355584619885679637

namespace A276792

/-- `A278039(A278040(n+1)-A278040(n))` -/
def P8355584619885679637.Spec : Prop :=
  ∀ n, P8355584619885679637.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P8206582243736242549

`A140100(A003145(n+2)-A278040(n))`
-/

namespace A276792.P8206582243736242549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A003145 (n + 2) - A278040 n).toNat

end

end A276792.P8206582243736242549

namespace A276792

/-- `A140100(A003145(n+2)-A278040(n))` -/
def P8206582243736242549.Spec : Prop :=
  ∀ n, P8206582243736242549.a n = A276792 (n + 1)

end A276792

/-! ## A276792.P12999691585562046181

`Δ[A308200(n)]`
-/

namespace A276792.P12999691585562046181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276792.P12999691585562046181

namespace A276792

/-- `Δ[A308200(n)]` -/
def P12999691585562046181.Spec : Prop :=
  ∀ n, P12999691585562046181.a n = A276792 (n + 1)

end A276792

/-!
# A276793: Indicator function for A003144.

The programs for A276793, the canonical program `A276793.P6692856727762475709` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276793 has offset 1).

The definition of A276793 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080843, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276793.P6692856727762475709

`(A080843(n)-1)*(A080843(n)-2)/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A276793

/-- `(A080843(n)-1)*(A080843(n)-2)/2` -/
def P6692856727762475709.Spec : Prop :=
  ∀ n, P6692856727762475709.a n = (A276793 (n + 1) : ℚ)

end A276793

/-! ## A276793.P4972514720602222585

`(eq[0, and(n, 2*and(n, 2*n))]+1)%2`
-/

namespace A276793.P4972514720602222585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) % 2

end

end A276793.P4972514720602222585

namespace A276793

/-- `(eq[0, and(n, 2*and(n, 2*n))]+1)%2` -/
def P4972514720602222585.Spec : Prop :=
  ∀ n, (P4972514720602222585.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P11629616232360136764

`gcd(2, eq[0, and(n, 2*and(n, 2*n))])-1`
-/

namespace A276793.P11629616232360136764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℤ) - 1

end

end A276793.P11629616232360136764

namespace A276793

/-- `gcd(2, eq[0, and(n, 2*and(n, 2*n))])-1` -/
def P11629616232360136764.Spec : Prop :=
  ∀ n, P11629616232360136764.a n = A276793 (n + 1)

end A276793

/-! ## A276793.P8307100207338152208

`Δ[A276796(n)]`
-/

namespace A276793.P8307100207338152208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276793.P8307100207338152208

namespace A276793

/-- `Δ[A276796(n)]` -/
def P8307100207338152208.Spec : Prop :=
  ∀ n, P8307100207338152208.a n = A276793 (n + 1)

end A276793

/-! ## A276793.P13467317498137612376

`char[A278039(n)]`
-/

namespace A276793.P13467317498137612376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276793.P13467317498137612376

namespace A276793

/-- `char[A278039(n)]` -/
def P13467317498137612376.Spec : Prop :=
  ∀ n, (P13467317498137612376.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P11531090854457492850

`log2(A305392(n+1))`
-/

namespace A276793.P11531090854457492850
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A305392 (n + 1) : ℝ)

end

end A276793.P11531090854457492850

namespace A276793

/-- `log2(A305392(n+1))` -/
def P11531090854457492850.Spec : Prop :=
  ∀ n, P11531090854457492850.a n = (A276793 (n + 1) : ℝ)

end A276793

/-! ## A276793.P5236802366341791576

`log2(gcd(2, A278038(n)))`
-/

namespace A276793.P5236802366341791576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A278038 n) : ℝ)

end

end A276793.P5236802366341791576

namespace A276793

/-- `log2(gcd(2, A278038(n)))` -/
def P5236802366341791576.Spec : Prop :=
  ∀ n, P5236802366341791576.a n = (A276793 (n + 1) : ℝ)

end A276793

/-! ## A276793.P10460900145091093957

`Δ[A278041(n)]%2`
-/

namespace A276793.P10460900145091093957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A276793.P10460900145091093957

namespace A276793

/-- `Δ[A278041(n)]%2` -/
def P10460900145091093957.Spec : Prop :=
  ∀ n, P10460900145091093957.a n = A276793 (n + 1)

end A276793

/-! ## A276793.P6420194857663811884

`val(Δ[A278040(n)], 4)`
-/

namespace A276793.P6420194857663811884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 4

end

end A276793.P6420194857663811884

namespace A276793

/-- `val(Δ[A278040(n)], 4)` -/
def P6420194857663811884.Spec : Prop :=
  ∀ n, (P6420194857663811884.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P13689833917146547530

`floor(sqrt(sqrt(A278045(n))))`
-/

namespace A276793.P13689833917146547530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A278045 n : ℝ))⌋

end

end A276793.P13689833917146547530

namespace A276793

/-- `floor(sqrt(sqrt(A278045(n))))` -/
def P13689833917146547530.Spec : Prop :=
  ∀ n, P13689833917146547530.a n = A276793 (n + 1)

end A276793

/-! ## A276793.P4608022317997806144

`A276792(n+1)%2`
-/

namespace A276793.P4608022317997806144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276792 (n + 1)) 2

end

end A276793.P4608022317997806144

namespace A276793

/-- `A276792(n+1)%2` -/
def P4608022317997806144.Spec : Prop :=
  ∀ n, P4608022317997806144.a n = A276793 (n + 1)

end A276793

/-! ## A276793.P6984803523758339232

`A352103(n+1)%2`
-/

namespace A276793.P6984803523758339232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352103 (n + 1)) 2

end

end A276793.P6984803523758339232

namespace A276793

/-- `A352103(n+1)%2` -/
def P6984803523758339232.Spec : Prop :=
  ∀ n, P6984803523758339232.a n = A276793 (n + 1)

end A276793

/-! ## A276793.P15123838473774106849

`val(A319431(n+1), 2)`
-/

namespace A276793.P15123838473774106849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319431 (n + 1)).toNat 2

end

end A276793.P15123838473774106849

namespace A276793

/-- `val(A319431(n+1), 2)` -/
def P15123838473774106849.Spec : Prop :=
  ∀ n, (P15123838473774106849.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P6002977811264530407

`val(A275925(n+2), 2)`
-/

namespace A276793.P6002977811264530407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275925 (n + 2)).toNat 2

end

end A276793.P6002977811264530407

namespace A276793

/-- `val(A275925(n+2), 2)` -/
def P6002977811264530407.Spec : Prop :=
  ∀ n, (P6002977811264530407.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P15756652990190114625

`val(A276789(n+1), 4)`
-/

namespace A276793.P15756652990190114625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276789 (n + 1)).toNat 4

end

end A276793.P15756652990190114625

namespace A276793

/-- `val(A276789(n+1), 4)` -/
def P15756652990190114625.Spec : Prop :=
  ∀ n, (P15756652990190114625.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P5149082775853125695

`C(2, A080843(n)+2)`
-/

namespace A276793.P5149082775853125695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A080843 n + 2).toNat

end

end A276793.P5149082775853125695

namespace A276793

/-- `C(2, A080843(n)+2)` -/
def P5149082775853125695.Spec : Prop :=
  ∀ n, (P5149082775853125695.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P16248730191917071353

`val(A305394(n+1), 5)`
-/

namespace A276793.P16248730191917071353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305394 (n + 1)).toNat 5

end

end A276793.P16248730191917071353

namespace A276793

/-- `val(A305394(n+1), 5)` -/
def P16248730191917071353.Spec : Prop :=
  ∀ n, (P16248730191917071353.a n : ℤ) = A276793 (n + 1)

end A276793

/-! ## A276793.P7887294926042179932

`log2(Δ[A140100(n+1)])`
-/

namespace A276793.P7887294926042179932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A276793.P7887294926042179932

namespace A276793

/-- `log2(Δ[A140100(n+1)])` -/
def P7887294926042179932.Spec : Prop :=
  ∀ n, P7887294926042179932.a n = (A276793 (n + 1) : ℝ)

end A276793

/-! ## A276793.P2874050411955733170

`log2(runs[A385532(n+2)])`
-/

namespace A276793.P2874050411955733170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385532 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℝ)

end

end A276793.P2874050411955733170

namespace A276793

/-- `log2(runs[A385532(n+2)])` -/
def P2874050411955733170.Spec : Prop :=
  ∀ n, P2874050411955733170.a n = (A276793 (n + 1) : ℝ)

end A276793

/-!
# A276794: Indicator function for A003145.

The programs for A276794, the canonical program `A276794.P12228498748025440138` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276794 has offset 0).

The definition of A276794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276794.P10190284674158372591

`col(A276790(n))`
-/

namespace A276794.P10190284674158372591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A276790 n).toNat

end

end A276794.P10190284674158372591

namespace A276794

/-- `col(A276790(n))` -/
def P10190284674158372591.Spec : Prop :=
  ∀ n, (P10190284674158372591.a n : ℤ) = A276794 n

end A276794

/-! ## A276794.P15169253056713599303

`log2(Δ[A140102(n)])`
-/

namespace A276794.P15169253056713599303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A276794.P15169253056713599303

namespace A276794

/-- `log2(Δ[A140102(n)])` -/
def P15169253056713599303.Spec : Prop :=
  ∀ n, P15169253056713599303.a n = (A276794 n : ℝ)

end A276794

/-! ## A276794.P1296379999829422819

`char[A003145(1+n)]`
-/

namespace A276794.P1296379999829422819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276794.P1296379999829422819

namespace A276794

/-- `char[A003145(1+n)]` -/
def P1296379999829422819.Spec : Prop :=
  ∀ n, (P1296379999829422819.a n : ℤ) = A276794 n

end A276794

/-! ## A276794.P5879486442645290828

`char[A278040(n)+1]`
-/

namespace A276794.P5879486442645290828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276794.P5879486442645290828

namespace A276794

/-- `char[A278040(n)+1]` -/
def P5879486442645290828.Spec : Prop :=
  ∀ n, (P5879486442645290828.a n : ℤ) = A276794 n

end A276794

/-! ## A276794.P9106633145148312906

`char[A308199(n)+2]`
-/

namespace A276794.P9106633145148312906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276794.P9106633145148312906

namespace A276794

/-- `char[A308199(n)+2]` -/
def P9106633145148312906.Spec : Prop :=
  ∀ n, (P9106633145148312906.a n : ℤ) = A276794 n

end A276794

/-! ## A276794.P7121421774926436871

`4%A277745(n+1)`
-/

namespace A276794.P7121421774926436871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A277745 (n + 1))

end

end A276794.P7121421774926436871

namespace A276794

/-- `4%A277745(n+1)` -/
def P7121421774926436871.Spec : Prop :=
  ∀ n, P7121421774926436871.a n = A276794 n

end A276794

/-! ## A276794.P12228498748025440138

`6%A275925(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A276794

/-- `6%A275925(n+1)` -/
def P12228498748025440138.Spec : Prop :=
  ∀ n, P12228498748025440138.a n = A276794 n

theorem P12228498748025440138.correct : P12228498748025440138.Spec := by
  intro n
  simp only [A276794]

end A276794

/-! ## A276794.P720897866914486525

`Δ[A276797(abs(1-n))]`
-/

namespace A276794.P720897866914486525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276794.P720897866914486525

namespace A276794

/-- `Δ[A276797(abs(1-n))]` -/
def P720897866914486525.Spec : Prop :=
  ∀ n, P720897866914486525.a n = A276794 n

end A276794

/-! ## A276794.P17587769873822978676

`A001221(Δ[A140102(n)])`
-/

namespace A276794.P17587769873822978676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A276794.P17587769873822978676

namespace A276794

/-- `A001221(Δ[A140102(n)])` -/
def P17587769873822978676.Spec : Prop :=
  ∀ n, P17587769873822978676.a n = A276794 n

end A276794

/-! ## A276794.P2779555008982901691

`A001222(Δ[A140102(n)])`
-/

namespace A276794.P2779555008982901691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A276794.P2779555008982901691

namespace A276794

/-- `A001222(Δ[A140102(n)])` -/
def P2779555008982901691.Spec : Prop :=
  ∀ n, P2779555008982901691.a n = A276794 n

end A276794

/-! ## A276794.P1715109151724654784

`A003796(Δ[A140102(n)])`
-/

namespace A276794.P1715109151724654784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (f1 (n + 1) - f1 n).toNat

end

end A276794.P1715109151724654784

namespace A276794

/-- `A003796(Δ[A140102(n)])` -/
def P1715109151724654784.Spec : Prop :=
  ∀ n, P1715109151724654784.a n = A276794 n

end A276794

/-! ## A276794.P9329927442634373465

`A004777(Δ[A140102(n)])`
-/

namespace A276794.P9329927442634373465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (f1 (n + 1) - f1 n).toNat

end

end A276794.P9329927442634373465

namespace A276794

/-- `A004777(Δ[A140102(n)])` -/
def P9329927442634373465.Spec : Prop :=
  ∀ n, P9329927442634373465.a n = A276794 n

end A276794

/-! ## A276794.P8001813058301035948

`A049310(Δ[A140102(n)])`
-/

namespace A276794.P8001813058301035948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (f1 (n + 1) - f1 n).toNat

end

end A276794.P8001813058301035948

namespace A276794

/-- `A049310(Δ[A140102(n)])` -/
def P8001813058301035948.Spec : Prop :=
  ∀ n, P8001813058301035948.a n = A276794 n

end A276794

/-! ## A276794.P18133036197133882004

`A305386(Δ[A140102(n)])`
-/

namespace A276794.P18133036197133882004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305386 (f1 (n + 1) - f1 n).toNat

end

end A276794.P18133036197133882004

namespace A276794

/-- `A305386(Δ[A140102(n)])` -/
def P18133036197133882004.Spec : Prop :=
  ∀ n, P18133036197133882004.a n = A276794 n

end A276794

/-! ## A276794.P5649483358244338658

`val(A092782(A028310(n)), 2)`
-/

namespace A276794.P5649483358244338658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A092782 (A028310 n).toNat).toNat 2

end

end A276794.P5649483358244338658

namespace A276794

/-- `val(A092782(A028310(n)), 2)` -/
def P5649483358244338658.Spec : Prop :=
  ∀ n, (P5649483358244338658.a n : ℤ) = A276794 n

end A276794

/-! ## A276794.P17138524120030063931

`A276791(Δ[A140102(n)]²)`
-/

namespace A276794.P17138524120030063931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A276794.P17138524120030063931

namespace A276794

/-- `A276791(Δ[A140102(n)]²)` -/
def P17138524120030063931.Spec : Prop :=
  ∀ n, P17138524120030063931.a n = A276794 n

end A276794

/-! ## A276794.P6604270169901118340

`A276791(Δ[A140102(n)]+2)`
-/

namespace A276794.P6604270169901118340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 (f1 (n + 1) - f1 n + 2).toNat

end

end A276794.P6604270169901118340

namespace A276794

/-- `A276791(Δ[A140102(n)]+2)` -/
def P6604270169901118340.Spec : Prop :=
  ∀ n, P6604270169901118340.a n = A276794 n

end A276794

/-! ## A276794.P5421806163436027081

`A276791(Δ[2*A140102(n)])`
-/

namespace A276794.P5421806163436027081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 (f1 (n + 1) - f1 n).toNat

end

end A276794.P5421806163436027081

namespace A276794

/-- `A276791(Δ[2*A140102(n)])` -/
def P5421806163436027081.Spec : Prop :=
  ∀ n, P5421806163436027081.a n = A276794 n

end A276794

/-! ## A276794.P11641711882275729871

`char[A278039(A278039(n)+1)]`
-/

namespace A276794.P11641711882275729871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276794.P11641711882275729871

namespace A276794

/-- `char[A278039(A278039(n)+1)]` -/
def P11641711882275729871.Spec : Prop :=
  ∀ n, (P11641711882275729871.a n : ℤ) = A276794 n

end A276794

/-!
# A276795: Folding numbers with an odd number of bits (see A277238 for definition).

The programs for A276795, the canonical program `A276795.P13771667999126884967` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276795 has offset 1).

The definition of A276795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276795.P10358737673274062361

`xor(∑[char[2^n]*n], A264619(n))`
-/

namespace A276795.P10358737673274062361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A264619 n)

end

end A276795.P10358737673274062361

namespace A276795

/-- `xor(∑[char[2^n]*n], A264619(n))` -/
def P10358737673274062361.Spec : Prop :=
  ∀ n, P10358737673274062361.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P13771667999126884967

`xor(A000203(A062383(n)), A264618(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276795

/-- `xor(A000203(A062383(n)), A264618(n))` -/
def P13771667999126884967.Spec : Prop :=
  ∀ n, P13771667999126884967.a n = A276795 (n + 1)

theorem P13771667999126884967.correct : P13771667999126884967.Spec := by
  intro n
  simp only [A276795, Nat.add_sub_cancel]

end A276795

/-! ## A276795.P199804778250040008

`A036044(2*n)+n*A062383(A062383(n))`
-/

namespace A276795.P199804778250040008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (2 * n) + (n : ℤ) * A062383 (A062383 n).toNat

end

end A276795.P199804778250040008

namespace A276795

/-- `A036044(2*n)+n*A062383(A062383(n))` -/
def P199804778250040008.Spec : Prop :=
  ∀ n, P199804778250040008.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P4109534123381574199

`xor(A003817(2*n+1), A264618(n))`
-/

namespace A276795.P4109534123381574199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (2 * n + 1)) (A264618 n)

end

end A276795.P4109534123381574199

namespace A276795

/-- `xor(A003817(2*n+1), A264618(n))` -/
def P4109534123381574199.Spec : Prop :=
  ∀ n, P4109534123381574199.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P6236623173278635793

`(A036044(2*n+1)+A035928(2*n+1))/2`
-/

namespace A276795.P6236623173278635793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036044 (2 * n + 1) + A035928 (2 * n + 1) : ℚ) / 2

end

end A276795.P6236623173278635793

namespace A276795

/-- `(A036044(2*n+1)+A035928(2*n+1))/2` -/
def P6236623173278635793.Spec : Prop :=
  ∀ n, P6236623173278635793.a n = (A276795 (n + 1) : ℚ)

end A276795

/-! ## A276795.P2213053457628953217

`A036044(2*n+1)+A053644(2*n+1)*A109613(2*n)`
-/

namespace A276795.P2213053457628953217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (2 * n + 1) + A053644 (2 * n + 1) * A109613 (2 * n)

end

end A276795.P2213053457628953217

namespace A276795

/-- `A036044(2*n+1)+A053644(2*n+1)*A109613(2*n)` -/
def P2213053457628953217.Spec : Prop :=
  ∀ n, P2213053457628953217.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P2974139948379368506

`A277238(A004760(n+2))`
-/

namespace A276795.P2974139948379368506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A004760 (n + 2)).toNat

end

end A276795.P2974139948379368506

namespace A276795

/-- `A277238(A004760(n+2))` -/
def P2974139948379368506.Spec : Prop :=
  ∀ n, P2974139948379368506.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P17788078326452329608

`A277238(A062383(n)+n)`
-/

namespace A276795.P17788078326452329608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A062383 n + (n : ℤ)).toNat

end

end A276795.P17788078326452329608

namespace A276795

/-- `A277238(A062383(n)+n)` -/
def P17788078326452329608.Spec : Prop :=
  ∀ n, P17788078326452329608.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P8431765056457803588

`A277238(or(n, A062383(n)))`
-/

namespace A276795.P8431765056457803588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (Int.lor (n : ℤ) (A062383 n)).toNat

end

end A276795.P8431765056457803588

namespace A276795

/-- `A277238(or(n, A062383(n)))` -/
def P8431765056457803588.Spec : Prop :=
  ∀ n, P8431765056457803588.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P5570939162455486373

`A277238(A053644(2*n+1)+n)`
-/

namespace A276795.P5570939162455486373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A053644 (2 * n + 1) + (n : ℤ)).toNat

end

end A276795.P5570939162455486373

namespace A276795

/-- `A277238(A053644(2*n+1)+n)` -/
def P5570939162455486373.Spec : Prop :=
  ∀ n, P5570939162455486373.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P15676631358624686115

`A277238(A092754(2*n+1)-n)`
-/

namespace A276795.P15676631358624686115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (A092754 (2 * n + 1) - (n : ℤ)).toNat

end

end A276795.P15676631358624686115

namespace A276795

/-- `A277238(A092754(2*n+1)-n)` -/
def P15676631358624686115.Spec : Prop :=
  ∀ n, P15676631358624686115.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P2290489792120612470

`∩[A031448(n+1), A277238(n+1)]`
-/

namespace A276795.P2290489792120612470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276795.P2290489792120612470

namespace A276795

/-- `∩[A031448(n+1), A277238(n+1)]` -/
def P2290489792120612470.Spec : Prop :=
  ∀ n, (P2290489792120612470.a n : ℤ) = A276795 (n + 1)

end A276795

/-! ## A276795.P16113031027594972106

`filter[A031448(n+1), A280910(#)]`
-/

namespace A276795.P16113031027594972106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A276795.P16113031027594972106

namespace A276795

/-- `filter[A031448(n+1), A280910(#)]` -/
def P16113031027594972106.Spec : Prop :=
  ∀ n, P16113031027594972106.a n = A276795 (n + 1)

end A276795

/-! ## A276795.P2193003237782233148

`filter[A324400(2*n+1), A280910(#)]`
-/

namespace A276795.P2193003237782233148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A276795.P2193003237782233148

namespace A276795

/-- `filter[A324400(2*n+1), A280910(#)]` -/
def P2193003237782233148.Spec : Prop :=
  ∀ n, P2193003237782233148.a n = A276795 (n + 1)

end A276795

/-!
# A276796: Partial sums of A276793.

The programs for A276796, the canonical program `A276796.P11090687289804672237` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276796 has offset 0).

The definition of A276796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276796.P1156151337724343445

`n+1-(A276797(n)+A276798(n))`
-/

namespace A276796.P1156151337724343445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A276797 n + A276798 n)

end

end A276796.P1156151337724343445

namespace A276796

/-- `n+1-(A276797(n)+A276798(n))` -/
def P1156151337724343445.Spec : Prop :=
  ∀ n, P1156151337724343445.a n = A276796 n

theorem P1156151337724343445.correct : P1156151337724343445.Spec := by
  intro n
  simp only [A276796, Nat.add_sub_cancel, A276796.P1156151337724343445.a, A276796.P11090687289804672237.a, A276797, A276797.P12745730792277044953.f1, A276797.P12745730792277044953.a, A276798, A276798.P14613649406688299812.a, A276794, A276794.P12228498748025440138.a, A275925, A275925.P1014596103965212206.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276796

/-! ## A276796.P11090687289804672237

`n-(a(a(a(n-1)-1))+a(a(n-1)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A276796

/-- `n-(a(a(a(n-1)-1))+a(a(n-1)))` -/
def P11090687289804672237.Spec : Prop :=
  ∀ n, P11090687289804672237.a n = A276796 n

theorem P11090687289804672237.correct : P11090687289804672237.Spec := by
  intro n
  simp only [A276796]

end A276796

/-! ## A276796.P791515596891149326

`n-a(a(a(n-1)-1))-a(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A276796.P791515596891149326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a (a (a (n - 1) - 1).toNat).toNat - a (a (n - 1)).toNat

end

end A276796.P791515596891149326

namespace A276796

/-- `n-a(a(a(n-1)-1))-a(a(n-1))` -/
def P791515596891149326.Spec : Prop :=
  ∀ n, P791515596891149326.a n = A276796 n

theorem P791515596891149326.correct : P791515596891149326.Spec := by
  intro n
  simp only [A276796, Nat.add_sub_cancel, A276796.P791515596891149326.a, A276796.P11090687289804672237.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A276796

/-! ## A276796.P15112461129249238627

`∑[A276790(n)%2]`
-/

namespace A276796.P15112461129249238627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276790 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276796.P15112461129249238627

namespace A276796

/-- `∑[A276790(n)%2]` -/
def P15112461129249238627.Spec : Prop :=
  ∀ n, P15112461129249238627.a n = A276796 n

end A276796

/-! ## A276796.P8917653892768747157

`∑[A352103(n)%2]`
-/

namespace A276796.P8917653892768747157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352103 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276796.P8917653892768747157

namespace A276796

/-- `∑[A352103(n)%2]` -/
def P8917653892768747157.Spec : Prop :=
  ∀ n, P8917653892768747157.a n = A276796 n

end A276796

/-! ## A276796.P3195876496099292486

`∑[char[A003144(n+1)]]`
-/

namespace A276796.P3195876496099292486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276796.P3195876496099292486

namespace A276796

/-- `∑[char[A003144(n+1)]]` -/
def P3195876496099292486.Spec : Prop :=
  ∀ n, (P3195876496099292486.a n : ℤ) = A276796 n

end A276796

/-! ## A276796.P5938910058602906363

`∑[p?[A059832(n)]-2]`
-/

namespace A276796.P5938910058602906363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276796.P5938910058602906363

namespace A276796

/-- `∑[p?[A059832(n)]-2]` -/
def P5938910058602906363.Spec : Prop :=
  ∀ n, P5938910058602906363.a n = A276796 n

end A276796

/-! ## A276796.P7937856179580227371

`∑[A003796(n+1)%2]`
-/

namespace A276796.P7937856179580227371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003796 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276796.P7937856179580227371

namespace A276796

/-- `∑[A003796(n+1)%2]` -/
def P7937856179580227371.Spec : Prop :=
  ∀ n, P7937856179580227371.a n = A276796 n

end A276796

/-! ## A276796.P10917989069660056126

`∑[val(A275925(n+1), 2)]`
-/

namespace A276796.P10917989069660056126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275925 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276796.P10917989069660056126

namespace A276796

/-- `∑[val(A275925(n+1), 2)]` -/
def P10917989069660056126.Spec : Prop :=
  ∀ n, (P10917989069660056126.a n : ℤ) = A276796 n

end A276796

/-! ## A276796.P13751740593965615094

`comp[A140101(n)]-(n+1)`
-/

namespace A276796.P13751740593965615094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A276796.P13751740593965615094

namespace A276796

/-- `comp[A140101(n)]-(n+1)` -/
def P13751740593965615094.Spec : Prop :=
  ∀ n, P13751740593965615094.a n = A276796 n

end A276796

/-! ## A276796.P6064345740946336945

`A140100(n+1)-(n+1)`
-/

namespace A276796.P6064345740946336945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - (n + 1 : ℤ)

end

end A276796.P6064345740946336945

namespace A276796

/-- `A140100(n+1)-(n+1)` -/
def P6064345740946336945.Spec : Prop :=
  ∀ n, P6064345740946336945.a n = A276796 n

end A276796

/-! ## A276796.P6523648957241641134

`A276793(n)+a(n-1)` with `a(0)=0`
-/

namespace A276796.P6523648957241641134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276793 n + a (n - 1)

end

end A276796.P6523648957241641134

namespace A276796

/-- `A276793(n)+a(n-1)` -/
def P6523648957241641134.Spec : Prop :=
  ∀ n, P6523648957241641134.a n = A276796 n

end A276796

/-! ## A276796.P12286401917055682469

`∑[(A277745(n+1)+1)%2]`
-/

namespace A276796.P12286401917055682469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277745 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276796.P12286401917055682469

namespace A276796

/-- `∑[(A277745(n+1)+1)%2]` -/
def P12286401917055682469.Spec : Prop :=
  ∀ n, P12286401917055682469.a n = A276796 n

end A276796

/-! ## A276796.P9559170752716147964

`a(n-1)-A278039(a(n-1))+n` with `a(0)=0`
-/

namespace A276796.P9559170752716147964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A278039 (a (n - 1)).toNat + (n : ℤ)

end

end A276796.P9559170752716147964

namespace A276796

/-- `a(n-1)-A278039(a(n-1))+n` -/
def P9559170752716147964.Spec : Prop :=
  ∀ n, P9559170752716147964.a n = A276796 n

end A276796

/-! ## A276796.P13322940266673222403

`A317192(n+1)+A276797(n)`
-/

namespace A276796.P13322940266673222403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317192 (n + 1) + A276797 n

end

end A276796.P13322940266673222403

namespace A276796

/-- `A317192(n+1)+A276797(n)` -/
def P13322940266673222403.Spec : Prop :=
  ∀ n, P13322940266673222403.a n = A276796 n

end A276796

/-! ## A276796.P2388579384919498521

`A140103(n+1)-A322408(n)`
-/

namespace A276796.P2388579384919498521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - A322408 n

end

end A276796.P2388579384919498521

namespace A276796

/-- `A140103(n+1)-A322408(n)` -/
def P2388579384919498521.Spec : Prop :=
  ∀ n, P2388579384919498521.a n = A276796 n

end A276796

/-! ## A276796.P13406024271093471377

`2*A308199(n)-A308200(n)`
-/

namespace A276796.P13406024271093471377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308199 n - A308200 n

end

end A276796.P13406024271093471377

namespace A276796

/-- `2*A308199(n)-A308200(n)` -/
def P13406024271093471377.Spec : Prop :=
  ∀ n, P13406024271093471377.a n = A276796 n

end A276796

/-! ## A276796.P8868568816918175023

`A308199(n)-(A278039(n)+n)`
-/

namespace A276796.P8868568816918175023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 n - (A278039 n + (n : ℤ))

end

end A276796.P8868568816918175023

namespace A276796

/-- `A308199(n)-(A278039(n)+n)` -/
def P8868568816918175023.Spec : Prop :=
  ∀ n, P8868568816918175023.a n = A276796 n

end A276796

/-! ## A276796.P8011900493664370600

`A278039(n)-n-A276797(n)`
-/

namespace A276796.P8011900493664370600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n - (n : ℤ) - A276797 n

end

end A276796.P8011900493664370600

namespace A276796

/-- `A278039(n)-n-A276797(n)` -/
def P8011900493664370600.Spec : Prop :=
  ∀ n, P8011900493664370600.a n = A276796 n

end A276796

/-!
# A276797: Partial sums of A276794.

The programs for A276797, the canonical program `A276797.P12745730792277044953` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276797 has offset 0).

The definition of A276797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276797.P12424745849677497494

`n+1-(A276796(n)+A276798(n))`
-/

namespace A276797.P12424745849677497494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A276796 n + A276798 n)

end

end A276797.P12424745849677497494

namespace A276797

/-- `n+1-(A276796(n)+A276798(n))` -/
def P12424745849677497494.Spec : Prop :=
  ∀ n, P12424745849677497494.a n = A276797 n

theorem P12424745849677497494.correct : P12424745849677497494.Spec := by
  intro n
  simp only [A276797, Nat.add_sub_cancel, A276797.P12424745849677497494.a, A276797.P12745730792277044953.f1, A276797.P12745730792277044953.a, A276794, A276794.P12228498748025440138.a, A276796, A276796.P11090687289804672237.a, A276798, A276798.P14613649406688299812.a, A275925, A275925.P1014596103965212206.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A056974, A056974.P14269005406388105579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276797

/-! ## A276797.P12745730792277044953

`∑[A276794(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A276797

/-- `∑[A276794(n)]` -/
def P12745730792277044953.Spec : Prop :=
  ∀ n, P12745730792277044953.a n = A276797 n

theorem P12745730792277044953.correct : P12745730792277044953.Spec := by
  intro n
  simp only [A276797]

end A276797

/-! ## A276797.P9415607244251328704

`∑[col(A276790(n))]`
-/

namespace A276797.P9415607244251328704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A276790 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P9415607244251328704

namespace A276797

/-- `∑[col(A276790(n))]` -/
def P9415607244251328704.Spec : Prop :=
  ∀ n, (P9415607244251328704.a n : ℤ) = A276797 n

end A276797

/-! ## A276797.P620670190952420782

`∑[Δ[A140102(n)]-1]`
-/

namespace A276797.P620670190952420782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P620670190952420782

namespace A276797

/-- `∑[Δ[A140102(n)]-1]` -/
def P620670190952420782.Spec : Prop :=
  ∀ n, P620670190952420782.a n = A276797 n

end A276797

/-! ## A276797.P17683802685058849673

`∑[char[A003145(n+1)]]`
-/

namespace A276797.P17683802685058849673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P17683802685058849673

namespace A276797

/-- `∑[char[A003145(n+1)]]` -/
def P17683802685058849673.Spec : Prop :=
  ∀ n, (P17683802685058849673.a n : ℤ) = A276797 n

end A276797

/-! ## A276797.P2926045189099082514

`∑[6%A275925(n+1)]`
-/

namespace A276797.P2926045189099082514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A275925 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P2926045189099082514

namespace A276797

/-- `∑[6%A275925(n+1)]` -/
def P2926045189099082514.Spec : Prop :=
  ∀ n, P2926045189099082514.a n = A276797 n

end A276797

/-! ## A276797.P5541392322322594277

`A140102(n+1)-(n+1)`
-/

namespace A276797.P5541392322322594277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (n + 1) - (n + 1 : ℤ)

end

end A276797.P5541392322322594277

namespace A276797

/-- `A140102(n+1)-(n+1)` -/
def P5541392322322594277.Spec : Prop :=
  ∀ n, P5541392322322594277.a n = A276797 n

end A276797

/-! ## A276797.P15871895115764426522

`comp[A140103(n+1)-1]-n`
-/

namespace A276797.P15871895115764426522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A276797.P15871895115764426522

namespace A276797

/-- `comp[A140103(n+1)-1]-n` -/
def P15871895115764426522.Spec : Prop :=
  ∀ n, P15871895115764426522.a n = A276797 n

end A276797

/-! ## A276797.P10067788561012647610

`∑[A001221(Δ[A140102(n)])]`
-/

namespace A276797.P10067788561012647610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P10067788561012647610

namespace A276797

/-- `∑[A001221(Δ[A140102(n)])]` -/
def P10067788561012647610.Spec : Prop :=
  ∀ n, P10067788561012647610.a n = A276797 n

end A276797

/-! ## A276797.P18420003197475716914

`∑[A001222(Δ[A140102(n)])]`
-/

namespace A276797.P18420003197475716914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P18420003197475716914

namespace A276797

/-- `∑[A001222(Δ[A140102(n)])]` -/
def P18420003197475716914.Spec : Prop :=
  ∀ n, P18420003197475716914.a n = A276797 n

end A276797

/-! ## A276797.P7379854190186707933

`∑[A004777(Δ[A140102(n)])]`
-/

namespace A276797.P7379854190186707933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P7379854190186707933

namespace A276797

/-- `∑[A004777(Δ[A140102(n)])]` -/
def P7379854190186707933.Spec : Prop :=
  ∀ n, P7379854190186707933.a n = A276797 n

end A276797

/-! ## A276797.P12876220895118304043

`∑[A049310(Δ[A140102(n)])]`
-/

namespace A276797.P12876220895118304043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P12876220895118304043

namespace A276797

/-- `∑[A049310(Δ[A140102(n)])]` -/
def P12876220895118304043.Spec : Prop :=
  ∀ n, P12876220895118304043.a n = A276797 n

end A276797

/-! ## A276797.P15358870348858877576

`∑[A305386(Δ[A140102(n)])]`
-/

namespace A276797.P15358870348858877576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305386 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P15358870348858877576

namespace A276797

/-- `∑[A305386(Δ[A140102(n)])]` -/
def P15358870348858877576.Spec : Prop :=
  ∀ n, P15358870348858877576.a n = A276797 n

end A276797

/-! ## A276797.P5572968594433257435

`A276796(A276796(n+1)-1)`
-/

namespace A276797.P5572968594433257435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A276796 (n + 1) - 1).toNat

end

end A276797.P5572968594433257435

namespace A276797

/-- `A276796(A276796(n+1)-1)` -/
def P5572968594433257435.Spec : Prop :=
  ∀ n, P5572968594433257435.a n = A276797 n

end A276797

/-! ## A276797.P12914888920767366317

`2*A278039(n)-A308199(n)`
-/

namespace A276797.P12914888920767366317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278039 n - A308199 n

end

end A276797.P12914888920767366317

namespace A276797

/-- `2*A278039(n)-A308199(n)` -/
def P12914888920767366317.Spec : Prop :=
  ∀ n, P12914888920767366317.a n = A276797 n

end A276797

/-! ## A276797.P15968108110588990905

`∑[A080843(record[A080843(n)+n])]`
-/

namespace A276797.P15968108110588990905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276797.P15968108110588990905

namespace A276797

/-- `∑[A080843(record[A080843(n)+n])]` -/
def P15968108110588990905.Spec : Prop :=
  ∀ n, P15968108110588990905.a n = A276797 n

end A276797

/-! ## A276797.P8102226798719687231

`A003144(n+1)-A140100(n+1)`
-/

namespace A276797.P8102226798719687231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) - A140100 (n + 1)

end

end A276797.P8102226798719687231

namespace A276797

/-- `A003144(n+1)-A140100(n+1)` -/
def P8102226798719687231.Spec : Prop :=
  ∀ n, P8102226798719687231.a n = A276797 n

end A276797

/-! ## A276797.P15656428116365856377

`A278039(n)+1-A140100(n+1)`
-/

namespace A276797.P15656428116365856377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + (1 - A140100 (n + 1))

end

end A276797.P15656428116365856377

namespace A276797

/-- `A278039(n)+1-A140100(n+1)` -/
def P15656428116365856377.Spec : Prop :=
  ∀ n, P15656428116365856377.a n = A276797 n

end A276797

/-! ## A276797.P6640870142165773816

`A003145(n+1)%A140100(n+1)`
-/

namespace A276797.P6640870142165773816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003145 (n + 1)) (A140100 (n + 1))

end

end A276797.P6640870142165773816

namespace A276797

/-- `A003145(n+1)%A140100(n+1)` -/
def P6640870142165773816.Spec : Prop :=
  ∀ n, P6640870142165773816.a n = A276797 n

end A276797

/-!
# A276798: Partial sums of A276791.

The programs for A276798, the canonical program `A276798.P14613649406688299812` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276798 has offset 0).

The definition of A276798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276796, A276797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276798.P14613649406688299812

`n+1-(A276796(n)+A276797(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A276798

/-- `n+1-(A276796(n)+A276797(n))` -/
def P14613649406688299812.Spec : Prop :=
  ∀ n, P14613649406688299812.a n = A276798 n

theorem P14613649406688299812.correct : P14613649406688299812.Spec := by
  intro n
  simp only [A276798]

end A276798

/-! ## A276798.P2289603363562980569

`∑[A276791(n)]`
-/

namespace A276798.P2289603363562980569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276798.P2289603363562980569

namespace A276798

/-- `∑[A276791(n)]` -/
def P2289603363562980569.Spec : Prop :=
  ∀ n, P2289603363562980569.a n = A276798 n

end A276798

/-! ## A276798.P11715948591105870394

`∑[3-A305374(n)]`
-/

namespace A276798.P11715948591105870394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A305374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276798.P11715948591105870394

namespace A276798

/-- `∑[3-A305374(n)]` -/
def P11715948591105870394.Spec : Prop :=
  ∀ n, P11715948591105870394.a n = A276798 n

end A276798

/-! ## A276798.P12222160168919213591

`∑[3-Δ[A140101(n)]]`
-/

namespace A276798.P12222160168919213591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276798.P12222160168919213591

namespace A276798

/-- `∑[3-Δ[A140101(n)]]` -/
def P12222160168919213591.Spec : Prop :=
  ∀ n, P12222160168919213591.a n = A276798 n

end A276798

/-! ## A276798.P12846572296863128323

`Δ[n²]-A278039(n)`
-/

namespace A276798.P12846572296863128323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A278039 n

end

end A276798.P12846572296863128323

namespace A276798

/-- `Δ[n²]-A278039(n)` -/
def P12846572296863128323.Spec : Prop :=
  ∀ n, P12846572296863128323.a n = A276798 n

end A276798

/-! ## A276798.P16549117153702926803

`∑[C(3, A275925(n+1))]`
-/

namespace A276798.P16549117153702926803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A275925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276798.P16549117153702926803

namespace A276798

/-- `∑[C(3, A275925(n+1))]` -/
def P16549117153702926803.Spec : Prop :=
  ∀ n, (P16549117153702926803.a n : ℤ) = A276798 n

end A276798

/-! ## A276798.P2810057918987421318

`∑[char[A003146(n+1)]]+1`
-/

namespace A276798.P2810057918987421318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A276798.P2810057918987421318

namespace A276798

/-- `∑[char[A003146(n+1)]]+1` -/
def P2810057918987421318.Spec : Prop :=
  ∀ n, (P2810057918987421318.a n : ℤ) = A276798 n

end A276798

/-! ## A276798.P17714975192267981796

`2*(n+1)-A003144(n+1)`
-/

namespace A276798.P17714975192267981796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A003144 (n + 1)

end

end A276798.P17714975192267981796

namespace A276798

/-- `2*(n+1)-A003144(n+1)` -/
def P17714975192267981796.Spec : Prop :=
  ∀ n, P17714975192267981796.a n = A276798 n

end A276798

/-! ## A276798.P14013129598515913384

`3*(n+1)-A140101(n+1)`
-/

namespace A276798.P14013129598515913384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A140101 (n + 1)

end

end A276798.P14013129598515913384

namespace A276798

/-- `3*(n+1)-A140101(n+1)` -/
def P14013129598515913384.Spec : Prop :=
  ∀ n, P14013129598515913384.a n = A276798 n

end A276798

/-! ## A276798.P15539783748553645708

`a(n-1)+2-A276788(n)` with `a(0)=1`
-/

namespace A276798.P15539783748553645708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 - A276788 n)

end

end A276798.P15539783748553645708

namespace A276798

/-- `a(n-1)+2-A276788(n)` -/
def P15539783748553645708.Spec : Prop :=
  ∀ n, P15539783748553645708.a n = A276798 n

end A276798

/-! ## A276798.P4344538163879818139

`2*n-eq[1, A092782(n+1)]+1`
-/

namespace A276798.P4344538163879818139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + 1

end

end A276798.P4344538163879818139

namespace A276798

/-- `2*n-eq[1, A092782(n+1)]+1` -/
def P4344538163879818139.Spec : Prop :=
  ∀ n, P4344538163879818139.a n = A276798 n

end A276798

/-! ## A276798.P12474242436616093501

`2*n-(eq[1, A317193(n+1)]-1)`
-/

namespace A276798.P12474242436616093501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1)

end

end A276798.P12474242436616093501

namespace A276798

/-- `2*n-(eq[1, A317193(n+1)]-1)` -/
def P12474242436616093501.Spec : Prop :=
  ∀ n, P12474242436616093501.a n = A276798 n

end A276798

/-! ## A276798.P3008948106521625151

`∑[A305386(Δ[A140101(n)])]`
-/

namespace A276798.P3008948106521625151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305386 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276798.P3008948106521625151

namespace A276798

/-- `∑[A305386(Δ[A140101(n)])]` -/
def P3008948106521625151.Spec : Prop :=
  ∀ n, P3008948106521625151.a n = A276798 n

end A276798

/-! ## A276798.P12860943093656655112

`∑[A305387(Δ[A140101(n)])]`
-/

namespace A276798.P12860943093656655112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305387 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276798.P12860943093656655112

namespace A276798

/-- `∑[A305387(Δ[A140101(n)])]` -/
def P12860943093656655112.Spec : Prop :=
  ∀ n, P12860943093656655112.a n = A276798 n

end A276798

/-! ## A276798.P3930507318544336460

`n+1-A317192(A278040(n))`
-/

namespace A276798.P3930507318544336460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A317192 (A278040 n).toNat

end

end A276798.P3930507318544336460

namespace A276798

/-- `n+1-A317192(A278040(n))` -/
def P3930507318544336460.Spec : Prop :=
  ∀ n, P3930507318544336460.a n = A276798 n

end A276798

/-! ## A276798.P9068106692191412233

`∑[1-A276794(n)]-A276796(n)`
-/

namespace A276798.P9068106692191412233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A276794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276796 n

end

end A276798.P9068106692191412233

namespace A276798

/-- `∑[1-A276794(n)]-A276796(n)` -/
def P9068106692191412233.Spec : Prop :=
  ∀ n, P9068106692191412233.a n = A276798 n

end A276798

/-! ## A276798.P1351138514107489584

`2-A317192(A003145(n+1))+n`
-/

namespace A276798.P1351138514107489584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317192 (A003145 (n + 1)).toNat + (n : ℤ)

end

end A276798.P1351138514107489584

namespace A276798

/-- `2-A317192(A003145(n+1))+n` -/
def P1351138514107489584.Spec : Prop :=
  ∀ n, P1351138514107489584.a n = A276798 n

end A276798

/-! ## A276798.P9409432740134745735

`A144396(n+1)-(A278039(n)+2)`
-/

namespace A276798.P9409432740134745735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - (A278039 n + 2)

end

end A276798.P9409432740134745735

namespace A276798

/-- `A144396(n+1)-(A278039(n)+2)` -/
def P9409432740134745735.Spec : Prop :=
  ∀ n, P9409432740134745735.a n = A276798 n

end A276798

/-! ## A276798.P2784567558402609903

`∑[2-A276794(n)]-A140100(n+1)`
-/

namespace A276798.P2784567558402609903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A276794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A140100 (n + 1)

end

end A276798.P2784567558402609903

namespace A276798

/-- `∑[2-A276794(n)]-A140100(n+1)` -/
def P2784567558402609903.Spec : Prop :=
  ∀ n, P2784567558402609903.a n = A276798 n

end A276798

/-! ## A276798.P13206761501014373234

`A144396(n+1)-(A003144(n+1)+1)`
-/

namespace A276798.P13206761501014373234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - (A003144 (n + 1) + 1)

end

end A276798.P13206761501014373234

namespace A276798

/-- `A144396(n+1)-(A003144(n+1)+1)` -/
def P13206761501014373234.Spec : Prop :=
  ∀ n, P13206761501014373234.a n = A276798 n

end A276798

/-!
# A276799: a(n) = floor(n*t^2) - A003145(n), where t = 1.8392867... is the tribonacci constant A058265.

The programs for A276799, the canonical program `A276799.P8873014292681214512` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276799 has offset 1).

The definition of A276799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276799.P8873014292681214512

`A277722(n+1)-A003145(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A276799

/-- `A277722(n+1)-A003145(n+1)` -/
def P8873014292681214512.Spec : Prop :=
  ∀ n, P8873014292681214512.a n = A276799 (n + 1)

theorem P8873014292681214512.correct : P8873014292681214512.Spec := by
  intro n
  simp only [A276799, Nat.add_sub_cancel]

end A276799

/-! ## A276799.P3271279073209895768

`A108165(n+1)-A278040(n)`
-/

namespace A276799.P3271279073209895768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108165 (n + 1) - A278040 n

end

end A276799.P3271279073209895768

namespace A276799

/-- `A108165(n+1)-A278040(n)` -/
def P3271279073209895768.Spec : Prop :=
  ∀ n, P3271279073209895768.a n = A276799 (n + 1)

end A276799

/-! ## A276799.P10786292192356282242

`A277722(n+1)+n+1-A140103(n+1)`
-/

namespace A276799.P10786292192356282242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) + ((n + 1 : ℤ) - A140103 (n + 1))

end

end A276799.P10786292192356282242

namespace A276799

/-- `A277722(n+1)+n+1-A140103(n+1)` -/
def P10786292192356282242.Spec : Prop :=
  ∀ n, P10786292192356282242.a n = A276799 (n + 1)

end A276799

/-! ## A276799.P15638087037267667132

`A140101(n+1)+A277722(n+1)-A003146(n+1)`
-/

namespace A276799.P15638087037267667132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) + (A277722 (n + 1) - A003146 (n + 1))

end

end A276799.P15638087037267667132

namespace A276799

/-- `A140101(n+1)+A277722(n+1)-A003146(n+1)` -/
def P15638087037267667132.Spec : Prop :=
  ∀ n, P15638087037267667132.a n = A276799 (n + 1)

end A276799

/-! ## A276799.P16696282707512800870

`A277722(n+1)+n+1-(A140101(n+1)+A140100(n+1))`
-/

namespace A276799.P16696282707512800870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) + ((n + 1 : ℤ) - (A140101 (n + 1) + A140100 (n + 1)))

end

end A276799.P16696282707512800870

namespace A276799

/-- `A277722(n+1)+n+1-(A140101(n+1)+A140100(n+1))` -/
def P16696282707512800870.Spec : Prop :=
  ∀ n, P16696282707512800870.a n = A276799 (n + 1)

end A276799

/-! ## A276799.P8102546920847116065

`A108165(n+1)-A003144(A003144(n+1))`
-/

namespace A276799.P8102546920847116065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108165 (n + 1) - A003144 (A003144 (n + 1)).toNat

end

end A276799.P8102546920847116065

namespace A276799

/-- `A108165(n+1)-A003144(A003144(n+1))` -/
def P8102546920847116065.Spec : Prop :=
  ∀ n, P8102546920847116065.a n = A276799 (n + 1)

end A276799

/-! ## A276799.P1472784285580707215

`A277722(n+1)-(A003144(A003144(n+1))+1)`
-/

namespace A276799.P1472784285580707215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) - (A003144 (A003144 (n + 1)).toNat + 1)

end

end A276799.P1472784285580707215

namespace A276799

/-- `A277722(n+1)-(A003144(A003144(n+1))+1)` -/
def P1472784285580707215.Spec : Prop :=
  ∀ n, P1472784285580707215.a n = A276799 (n + 1)

end A276799

