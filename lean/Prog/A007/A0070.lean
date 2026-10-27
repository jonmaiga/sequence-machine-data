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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A007000: Number of partitions of n into Fibonacci parts (with 2 types of 1).

The programs for A007000, there is no canonical definition to state claims against.
-/

/-! ## A007000.P524349130849403121

`∑[A003107(n)]`
-/

namespace A007000.P524349130849403121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007000.P524349130849403121

/-! ## A007000.P7942379702411922771

`∑[∑[A238999(n)]]`
-/

namespace A007000.P7942379702411922771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007000.P7942379702411922771

/-! ## A007000.P18101471112801045033

`∑[∑[A239000(n)]+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A007000.P18101471112801045033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239000 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007000.P18101471112801045033

/-! ## A007000.P9190514476173696252

`A003107(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A007000.P9190514476173696252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003107 n + a (A023443 n).toNat

end

end A007000.P9190514476173696252

/-! ## A007000.P4476203743982763832

`a(n-1)+A003107(n)+A000007(n)` with `a(0)=1`
-/

namespace A007000.P4476203743982763832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A003107 n + A000007 n)

end

end A007000.P4476203743982763832

/-! ## A007000.P5892264295442282840

`∑[2*A339371(n)-A298949(n)]`
-/

namespace A007000.P5892264295442282840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339371 n - A298949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007000.P5892264295442282840

/-! ## A007000.P17970912231142763319

`∑[A339372(n)+A339371(n)]`
-/

namespace A007000.P17970912231142763319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339372 n + A339371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007000.P17970912231142763319

/-!
# A007001: Trajectory of 1 under the morphism 1 -> 12, 2 -> 123, 3 -> 1234, etc.

The programs for A007001, there is no canonical definition to state claims against.
-/

/-! ## A007001.P1799919916936062832

`∑[A133912(n+1)]`
-/

namespace A007001.P1799919916936062832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007001.P1799919916936062832

/-! ## A007001.P17100876407245433817

`A076050(n+1)-1`
-/

namespace A007001.P17100876407245433817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076050 (n + 1) - 1

end

end A007001.P17100876407245433817

/-! ## A007001.P3351154774295750250

`Δ[A085197(n+1)]-1`
-/

namespace A007001.P3351154774295750250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A007001.P3351154774295750250

/-! ## A007001.P13577203582538653822

`n+2-A085197(A085182(n+1))`
-/

namespace A007001.P13577203582538653822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A085197 (A085182 (n + 1)).toNat

end

end A007001.P13577203582538653822

/-! ## A007001.P527495037826150742

`A166931(n+1)%A076050(n+1)`
-/

namespace A007001.P527495037826150742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A076050 (n + 1))

end

end A007001.P527495037826150742

/-! ## A007001.P8819016617260685596

`A127229(n+5)%A076050(n+1)`
-/

namespace A007001.P8819016617260685596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A076050 (n + 1))

end

end A007001.P8819016617260685596

/-! ## A007001.P12693699457702926692

`Δ[A080336(n)]`
-/

namespace A007001.P12693699457702926692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007001.P12693699457702926692

/-! ## A007001.P7843785539453836868

`A080237(A081291(n+1)-1)`
-/

namespace A007001.P7843785539453836868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A081291 (n + 1) - 1).toNat

end

end A007001.P7843785539453836868

/-! ## A007001.P12064661917147731453

`A080336(n+1)-A080336(n)`
-/

namespace A007001.P12064661917147731453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (n + 1) - A080336 n

end

end A007001.P12064661917147731453

/-! ## A007001.P7673488923217373278

`A080237(A244216(n+1))`
-/

namespace A007001.P7673488923217373278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A244216 (n + 1)).toNat

end

end A007001.P7673488923217373278

/-! ## A007001.P17986210171957139589

`A080237(A072795(A081291(n)))`
-/

namespace A007001.P17986210171957139589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A072795 (A081291 n).toNat).toNat

end

end A007001.P17986210171957139589

/-! ## A007001.P4320210833978201892

`Δ[record[A085196(n)]]`
-/

namespace A007001.P4320210833978201892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007001.P4320210833978201892

/-! ## A007001.P13295859390102932993

`A133913(∑[n+1])`
-/

namespace A007001.P13295859390102932993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007001.P13295859390102932993

/-! ## A007001.P1545918517323547604

`A136480(A081292(n+1))`
-/

namespace A007001.P1545918517323547604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A081292 (n + 1)).toNat

end

end A007001.P1545918517323547604

/-! ## A007001.P14699183966500117423

`A072828(n+1)%A076050(n+1)`
-/

namespace A007001.P14699183966500117423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A076050 (n + 1))

end

end A007001.P14699183966500117423

/-!
# A007002: Sum of degrees of irreducible representations of alternating group A_n.

The programs for A007002, there is no canonical definition to state claims against.
-/

/-! ## A007002.P18096251706864087791

`record[A182222(n)]-A067142(n+1)`
-/

namespace A007002.P18096251706864087791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A067142 (n + 1)

end

end A007002.P18096251706864087791

/-! ## A007002.P9603198086999854017

`A067142(n+1)+A067136(n+1)`
-/

namespace A007002.P9603198086999854017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067142 (n + 1) + A067136 (n + 1)

end

end A007002.P9603198086999854017

/-! ## A007002.P1103133363395731672

`A000085(n+1)-A067142(n+1)`
-/

namespace A007002.P1103133363395731672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) - A067142 (n + 1)

end

end A007002.P1103133363395731672

/-! ## A007002.P8656815663359757388

`(A067136(n+1)+A000085(n+1))/2`
-/

namespace A007002.P8656815663359757388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067136 (n + 1) + A000085 (n + 1) : ℚ) / 2

end

end A007002.P8656815663359757388

/-! ## A007002.P4351108406909372781

`A067136(n+1)+A330645(n+1)/2`
-/

namespace A007002.P4351108406909372781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067136 (n + 1) : ℚ) + (A330645 (n + 1) : ℚ) / 2

end

end A007002.P4351108406909372781

/-!
# A007003: Euler transform of numbers of preferential arrangements.

The programs for A007003, there is no canonical definition to state claims against.
-/

/-! ## A007003.P11450422880454789115

`A255072(∏[A273670(n)])`
-/

namespace A007003.P11450422880454789115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007003.P11450422880454789115

/-! ## A007003.P7387543714950767054

`A109497(A127127(n+1))`
-/

namespace A007003.P7387543714950767054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A127127 (n + 1)).toNat

end

end A007003.P7387543714950767054

/-!
# A007004: a(n) = (3*n)! / ((n+1)*(n!)^3).

The programs for A007004, the canonical program `A007004.P7395155304073833987` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007004 has offset 0).

The definition of A007004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007004.P7395155304073833987

`A000108(n)*C(3*n, n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007004

/-- `A000108(n)*C(3*n, n)` -/
def P7395155304073833987.Spec : Prop :=
  ∀ n, P7395155304073833987.a n = A007004 n

theorem P7395155304073833987.correct : P7395155304073833987.Spec := by
  intro n
  simp only [A007004]

end A007004

/-! ## A007004.P5337709945717009096

`C(2*n, n)*C(3*n, n)/(n+1)`
-/

namespace A007004.P5337709945717009096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)

end

end A007004.P5337709945717009096

namespace A007004

/-- `C(2*n, n)*C(3*n, n)/(n+1)` -/
def P5337709945717009096.Spec : Prop :=
  ∀ n, P5337709945717009096.a n = (A007004 n : ℚ)

end A007004

/-! ## A007004.P14506806251952703239

`3*(3*n-1)*(3*n-2)*a(n-1)/(n*(n+1))` with `a(0)=1`
-/

namespace A007004.P14506806251952703239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 * ((3 * n : ℤ) - 1) * ((3 * n : ℤ) - 2) : ℚ) * a (n - 1) / (n * (n + 1) : ℚ)

end

end A007004.P14506806251952703239

namespace A007004

/-- `3*(3*n-1)*(3*n-2)*a(n-1)/(n*(n+1))` -/
def P14506806251952703239.Spec : Prop :=
  ∀ n, P14506806251952703239.a n = (A007004 n : ℚ)

end A007004

/-! ## A007004.P7839289511533944699

`(3*n)!/((n+1)*n!^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007004.P7839289511533944699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / ((n + 1) * Nat.factorial n ^ 3 : ℚ)

end

end A007004.P7839289511533944699

namespace A007004

/-- `(3*n)!/((n+1)*n!^3)` -/
def P7839289511533944699.Spec : Prop :=
  ∀ n, P7839289511533944699.a n = (A007004 n : ℚ)

end A007004

/-! ## A007004.P14522859944520036197

`∑[n+1]*A005789(n)`
-/

namespace A007004.P14522859944520036197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005789 n

end

end A007004.P14522859944520036197

namespace A007004

/-- `∑[n+1]*A005789(n)` -/
def P14522859944520036197.Spec : Prop :=
  ∀ n, P14522859944520036197.a n = A007004 n

end A007004

/-! ## A007004.P16993056530499882950

`(2*n+1)*A218441(n)`
-/

namespace A007004.P16993056530499882950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A218441 n

end

end A007004.P16993056530499882950

namespace A007004

/-- `(2*n+1)*A218441(n)` -/
def P16993056530499882950.Spec : Prop :=
  ∀ n, P16993056530499882950.a n = A007004 n

end A007004

/-! ## A007004.P5475405114760049748

`A215287(comp[2*(n+1)]+1)`
-/

namespace A007004.P5475405114760049748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215287 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A007004.P5475405114760049748

namespace A007004

/-- `A215287(comp[2*(n+1)]+1)` -/
def P5475405114760049748.Spec : Prop :=
  ∀ n, P5475405114760049748.a n = A007004 n

end A007004

/-! ## A007004.P17032339982335855510

`C(3*n, n)*A028364(∑[n])`
-/

namespace A007004.P17032339982335855510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * A028364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007004.P17032339982335855510

namespace A007004

/-- `C(3*n, n)*A028364(∑[n])` -/
def P17032339982335855510.Spec : Prop :=
  ∀ n, P17032339982335855510.a n = A007004 n

end A007004

/-! ## A007004.P16252749761904241731

`A001700(n)*A001764(n)`
-/

namespace A007004.P16252749761904241731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A001764 n

end

end A007004.P16252749761904241731

namespace A007004

/-- `A001700(n)*A001764(n)` -/
def P16252749761904241731.Spec : Prop :=
  ∀ n, P16252749761904241731.a n = A007004 n

end A007004

/-! ## A007004.P6780343297489784986

`A000108(n)*A005809(n)`
-/

namespace A007004.P6780343297489784986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005809 n

end

end A007004.P6780343297489784986

namespace A007004

/-- `A000108(n)*A005809(n)` -/
def P6780343297489784986.Spec : Prop :=
  ∀ n, P6780343297489784986.a n = A007004 n

end A007004

/-!
# A007006: Number of edges in graph of maximal intersecting families of sets.

The programs for A007006, there is no canonical definition to state claims against.
-/

/-! ## A007006.P17366418824521882204

`Δ[A238568(n^n)]`
-/

namespace A007006.P17366418824521882204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238568 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007006.P17366418824521882204

/-!
# A007007: Valence of graph of maximal intersecting families of sets.

The programs for A007007, the canonical program `A007007.P15679075897862241062` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007007 has offset 1).

The definition of A007007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007007.P15679075897862241062

`A037952((n+1)%(2*n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007007

/-- `A037952((n+1)%(2*n+1))` -/
def P15679075897862241062.Spec : Prop :=
  ∀ n, P15679075897862241062.a n = A007007 (n + 1)

theorem P15679075897862241062.correct : P15679075897862241062.Spec := by
  intro n
  simp only [A007007, Nat.add_sub_cancel]

end A007007

/-! ## A007007.P1730416986672238160

`A037952(A087156(n+1))`
-/

namespace A007007.P1730416986672238160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A087156 (n + 1)).toNat

end

end A007007.P1730416986672238160

namespace A007007

/-- `A037952(A087156(n+1))` -/
def P1730416986672238160.Spec : Prop :=
  ∀ n, P1730416986672238160.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P15953729490629794664

`A037952(A184985(n+1))`
-/

namespace A007007.P15953729490629794664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A184985 (n + 1)).toNat

end

end A007007.P15953729490629794664

namespace A007007

/-- `A037952(A184985(n+1))` -/
def P15953729490629794664.Spec : Prop :=
  ∀ n, P15953729490629794664.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P2638738949162407169

`A037952(A199969(n+2))`
-/

namespace A007007.P2638738949162407169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A199969 (n + 2)).toNat

end

end A007007.P2638738949162407169

namespace A007007

/-- `A037952(A199969(n+2))` -/
def P2638738949162407169.Spec : Prop :=
  ∀ n, P2638738949162407169.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P749847639790414548

`A037952(A057427(n)+n)`
-/

namespace A007007.P749847639790414548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A057427 n + (n : ℤ)).toNat

end

end A007007.P749847639790414548

namespace A007007

/-- `A037952(A057427(n)+n)` -/
def P749847639790414548.Spec : Prop :=
  ∀ n, P749847639790414548.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P18213075209738312338

`A037952(n-A057428(n))`
-/

namespace A007007.P18213075209738312338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 ((n : ℤ) - A057428 n).toNat

end

end A007007.P18213075209738312338

namespace A007007

/-- `A037952(n-A057428(n))` -/
def P18213075209738312338.Spec : Prop :=
  ∀ n, P18213075209738312338.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P3391928153596346362

`A037952(A057428(n)²+n)`
-/

namespace A007007.P3391928153596346362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A057428 n ^ 2 + (n : ℤ)).toNat

end

end A007007.P3391928153596346362

namespace A007007

/-- `A037952(A057428(n)²+n)` -/
def P3391928153596346362.Spec : Prop :=
  ∀ n, P3391928153596346362.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P5739825894703987660

`A037952(A060576(n+1)+n)`
-/

namespace A007007.P5739825894703987660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A060576 (n + 1) + (n : ℤ)).toNat

end

end A007007.P5739825894703987660

namespace A007007

/-- `A037952(A060576(n+1)+n)` -/
def P5739825894703987660.Spec : Prop :=
  ∀ n, P5739825894703987660.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P10145442181864106572

`A057427(n)+A047171(n+1)`
-/

namespace A007007.P10145442181864106572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A047171 (n + 1)

end

end A007007.P10145442181864106572

namespace A007007

/-- `A057427(n)+A047171(n+1)` -/
def P10145442181864106572.Spec : Prop :=
  ∀ n, P10145442181864106572.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P10940999620026443830

`A037952(1-A000007(n)+n)`
-/

namespace A007007.P10940999620026443830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (1 - A000007 n + (n : ℤ)).toNat

end

end A007007.P10940999620026443830

namespace A007007

/-- `A037952(1-A000007(n)+n)` -/
def P10940999620026443830.Spec : Prop :=
  ∀ n, P10940999620026443830.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P14077170158606272326

`A026010(n)-(A047171(n)+1)`
-/

namespace A007007.P14077170158606272326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n - (A047171 n + 1)

end

end A007007.P14077170158606272326

namespace A007007

/-- `A026010(n)-(A047171(n)+1)` -/
def P14077170158606272326.Spec : Prop :=
  ∀ n, P14077170158606272326.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P6884641895737318148

`A047171(n+1)-A057428(n)`
-/

namespace A007007.P6884641895737318148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (n + 1) - A057428 n

end

end A007007.P6884641895737318148

namespace A007007

/-- `A047171(n+1)-A057428(n)` -/
def P6884641895737318148.Spec : Prop :=
  ∀ n, P6884641895737318148.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P15804707980445343213

`A037952(A103517(n)-(n+1))`
-/

namespace A007007.P15804707980445343213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A103517 n - (n + 1 : ℤ)).toNat

end

end A007007.P15804707980445343213

namespace A007007

/-- `A037952(A103517(n)-(n+1))` -/
def P15804707980445343213.Spec : Prop :=
  ∀ n, P15804707980445343213.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P17965543873425478024

`A037952(1-(A000007(n)-n))`
-/

namespace A007007.P17965543873425478024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (1 - (A000007 n - (n : ℤ))).toNat

end

end A007007.P17965543873425478024

namespace A007007

/-- `A037952(1-(A000007(n)-n))` -/
def P17965543873425478024.Spec : Prop :=
  ∀ n, P17965543873425478024.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P15308464681837125297

`A037952(A103517(n)-1-n)`
-/

namespace A007007.P15308464681837125297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A103517 n - 1 - (n : ℤ)).toNat

end

end A007007.P15308464681837125297

namespace A007007

/-- `A037952(A103517(n)-1-n)` -/
def P15308464681837125297.Spec : Prop :=
  ∀ n, P15308464681837125297.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P15358503578276542425

`A037952(A131738(2*n)-n)`
-/

namespace A007007.P15358503578276542425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A131738 (2 * n) - (n : ℤ)).toNat

end

end A007007.P15358503578276542425

namespace A007007

/-- `A037952(A131738(2*n)-n)` -/
def P15358503578276542425.Spec : Prop :=
  ∀ n, P15358503578276542425.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P18081295488449117929

`A037952(gcd(n, A131738(n))+n)`
-/

namespace A007007.P18081295488449117929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (Int.gcd (n : ℤ) (A131738 n) + n)

end

end A007007.P18081295488449117929

namespace A007007

/-- `A037952(gcd(n, A131738(n))+n)` -/
def P18081295488449117929.Spec : Prop :=
  ∀ n, P18081295488449117929.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P1619830764672569064

`A037952(A157532(n+1)-2+n)`
-/

namespace A007007.P1619830764672569064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A157532 (n + 1) - 2 + (n : ℤ)).toNat

end

end A007007.P1619830764672569064

namespace A007007

/-- `A037952(A157532(n+1)-2+n)` -/
def P1619830764672569064.Spec : Prop :=
  ∀ n, P1619830764672569064.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P5848755333991647247

`A037952(A368684(2*n+1)+n)`
-/

namespace A007007.P5848755333991647247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A368684 (2 * n + 1) + (n : ℤ)).toNat

end

end A007007.P5848755333991647247

namespace A007007

/-- `A037952(A368684(2*n+1)+n)` -/
def P5848755333991647247.Spec : Prop :=
  ∀ n, P5848755333991647247.a n = A007007 (n + 1)

end A007007

/-! ## A007007.P472048100166752990

`A037952(n+1-A036987(2*n))`
-/

namespace A007007.P472048100166752990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 ((n + 1 : ℤ) - A036987 (2 * n)).toNat

end

end A007007.P472048100166752990

namespace A007007

/-- `A037952(n+1-A036987(2*n))` -/
def P472048100166752990.Spec : Prop :=
  ∀ n, P472048100166752990.a n = A007007 (n + 1)

end A007007

/-!
# A007008: Chvatal conjecture for radius of graph of maximal intersecting sets.

The programs for A007008, the canonical program `A007008.P8779820539916102968` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007008 has offset 1).

The definition of A007008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007008.P8779820539916102968

`round(2^(n-1)-C(n, floor(n/2))/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007008

/-- `round(2^(n-1)-C(n, floor(n/2))/2)` -/
def P8779820539916102968.Spec : Prop :=
  ∀ n, P8779820539916102968.a n = A007008 (n + 1)

theorem P8779820539916102968.correct : P8779820539916102968.Spec := by
  intro n
  simp only [A007008, Nat.add_sub_cancel]

end A007008

/-! ## A007008.P9929642294075141343

`ceil(A045621(n)/2)`
-/

namespace A007008.P9929642294075141343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045621 n : ℚ) / 2⌉

end

end A007008.P9929642294075141343

namespace A007008

/-- `ceil(A045621(n)/2)` -/
def P9929642294075141343.Spec : Prop :=
  ∀ n, P9929642294075141343.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P1786817545793004959

`floor((A000079(n)-A014495(n))/2)`
-/

namespace A007008.P1786817545793004959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n - A014495 n : ℚ) / 2⌋

end

end A007008.P1786817545793004959

namespace A007008

/-- `floor((A000079(n)-A014495(n))/2)` -/
def P1786817545793004959.Spec : Prop :=
  ∀ n, P1786817545793004959.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P16110884473871167156

`round(A045621(n)/2)%A000079(n)`
-/

namespace A007008.P16110884473871167156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A045621 n : ℚ) / 2)) (A000079 n)

end

end A007008.P16110884473871167156

namespace A007008

/-- `round(A045621(n)/2)%A000079(n)` -/
def P16110884473871167156.Spec : Prop :=
  ∀ n, P16110884473871167156.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P9890543393612650591

`round(n/A027379(n)+A045621(n)/2)`
-/

namespace A007008.P9890543393612650591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A027379 n : ℚ) + (A045621 n : ℚ) / 2)

end

end A007008.P9890543393612650591

namespace A007008

/-- `round(n/A027379(n)+A045621(n)/2)` -/
def P9890543393612650591.Spec : Prop :=
  ∀ n, P9890543393612650591.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P2407509860467097316

`round(1/A040001(A005843(n))*A045621(n))`
-/

namespace A007008.P2407509860467097316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A040001 (A005843 n).toNat : ℚ) * (A045621 n : ℚ))

end

end A007008.P2407509860467097316

namespace A007008

/-- `round(1/A040001(A005843(n))*A045621(n))` -/
def P2407509860467097316.Spec : Prop :=
  ∀ n, P2407509860467097316.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P14298924592930527716

`ceil(A307768(n+1)/4)`
-/

namespace A007008.P14298924592930527716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307768 (n + 1) : ℚ) / 4⌉

end

end A007008.P14298924592930527716

namespace A007008

/-- `ceil(A307768(n+1)/4)` -/
def P14298924592930527716.Spec : Prop :=
  ∀ n, P14298924592930527716.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P10570476953693971844

`ceil(A130783(n)/(n+1))`
-/

namespace A007008.P10570476953693971844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130783 n : ℚ) / (n + 1 : ℚ)⌉

end

end A007008.P10570476953693971844

namespace A007008

/-- `ceil(A130783(n)/(n+1))` -/
def P10570476953693971844.Spec : Prop :=
  ∀ n, P10570476953693971844.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P15471047999334567714

`round(A130783(n)/(1-A001489(n)))`
-/

namespace A007008.P15471047999334567714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130783 n : ℚ) / (1 - A001489 n : ℚ))

end

end A007008.P15471047999334567714

namespace A007008

/-- `round(A130783(n)/(1-A001489(n)))` -/
def P15471047999334567714.Spec : Prop :=
  ∀ n, P15471047999334567714.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P13880279677676450688

`round(A130783(n)/(n+1))%A000079(n)`
-/

namespace A007008.P13880279677676450688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A130783 n : ℚ) / (n + 1 : ℚ))) (A000079 n)

end

end A007008.P13880279677676450688

namespace A007008

/-- `round(A130783(n)/(n+1))%A000079(n)` -/
def P13880279677676450688.Spec : Prop :=
  ∀ n, P13880279677676450688.a n = A007008 (n + 1)

end A007008

/-! ## A007008.P6959163020541492799

`round((A000051(n)-C(n, floor(n/2))-1)/2)`
-/

namespace A007008.P6959163020541492799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000051 n - (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - 1 : ℚ) / 2)

end

end A007008.P6959163020541492799

namespace A007008

/-- `round((A000051(n)-C(n, floor(n/2))-1)/2)` -/
def P6959163020541492799.Spec : Prop :=
  ∀ n, P6959163020541492799.a n = A007008 (n + 1)

end A007008

/-!
# A007009: Number of 3-voter voting schemes with n linearly ranked choices.

The programs for A007009, the canonical program `A007009.P4506649749187619571` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007009 has offset 1).

The definition of A007009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007009.P4506649749187619571

`A006009(n+1)/4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007009

/-- `A006009(n+1)/4` -/
def P4506649749187619571.Spec : Prop :=
  ∀ n, P4506649749187619571.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P11352944605660420214

`A007590(n+3)*A007590(n+2)/8`
-/

namespace A007009.P11352944605660420214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (n + 3) * A007590 (n + 2) : ℚ) / 8

end

end A007009.P11352944605660420214

namespace A007009

/-- `A007590(n+3)*A007590(n+2)/8` -/
def P11352944605660420214.Spec : Prop :=
  ∀ n, P11352944605660420214.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P17333840121024739167

`∑[∑[∑[gcd(n+1, ∑[n])]]]`
-/

namespace A007009.P17333840121024739167
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007009.P17333840121024739167

namespace A007009

/-- `∑[∑[∑[gcd(n+1, ∑[n])]]]` -/
def P17333840121024739167.Spec : Prop :=
  ∀ n, (P17333840121024739167.a n : ℤ) = A007009 (n + 1)

end A007009

/-! ## A007009.P16300628187220272923

`∑[∑[∑[lcm(2, n+1)/2]]]`
-/

namespace A007009.P16300628187220272923
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007009.P16300628187220272923

namespace A007009

/-- `∑[∑[∑[lcm(2, n+1)/2]]]` -/
def P16300628187220272923.Spec : Prop :=
  ∀ n, P16300628187220272923.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P9232692187410667976

`∑[∑[∑[∑[n]/a(n-1)]]]` with `a(0)=1`
-/

namespace A007009.P9232692187410667976
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ) / f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007009.P9232692187410667976

namespace A007009

/-- `∑[∑[∑[∑[n]/a(n-1)]]]` -/
def P9232692187410667976.Spec : Prop :=
  ∀ n, P9232692187410667976.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P17058849754695508540

`∑[∑[∑[(n+1)/(n%2+1)]]]`
-/

namespace A007009.P17058849754695508540
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007009.P17058849754695508540

namespace A007009

/-- `∑[∑[∑[(n+1)/(n%2+1)]]]` -/
def P17058849754695508540.Spec : Prop :=
  ∀ n, P17058849754695508540.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P10158092259967092799

`∑[∑[∑[∑[gcd(2, n)-a(n-1)]]]]` with `a(0)=1`
-/

namespace A007009.P10158092259967092799
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  (Nat.gcd 2 n : ℤ) - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007009.P10158092259967092799

namespace A007009

/-- `∑[∑[∑[∑[gcd(2, n)-a(n-1)]]]]` -/
def P10158092259967092799.Spec : Prop :=
  ∀ n, P10158092259967092799.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P9329132628811131397

`∑[∑[∑[n+1-∑[n]%(n+1)]]]`
-/

namespace A007009.P9329132628811131397
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007009.P9329132628811131397

namespace A007009

/-- `∑[∑[∑[n+1-∑[n]%(n+1)]]]` -/
def P9329132628811131397.Spec : Prop :=
  ∀ n, P9329132628811131397.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P7936688065807191316

`∑[∑[∑[(n+1)/(2-∑[(-1)^n])]]]`
-/

namespace A007009.P7936688065807191316
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((2 - ∑ j ∈ Finset.range (n + 1), f4 j : ℤ) : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007009.P7936688065807191316

namespace A007009

/-- `∑[∑[∑[(n+1)/(2-∑[(-1)^n])]]]` -/
def P7936688065807191316.Spec : Prop :=
  ∀ n, P7936688065807191316.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P11555262913030846271

`floor(((n+2)/2)²²-a(n-1))` with `a(0)=1`
-/

namespace A007009.P11555262913030846271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((n + 2 : ℚ) / 2) ^ 2) ^ 2 - (a (n - 1) : ℚ)⌋

end

end A007009.P11555262913030846271

namespace A007009

/-- `floor(((n+2)/2)²²-a(n-1))` -/
def P11555262913030846271.Spec : Prop :=
  ∀ n, P11555262913030846271.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P14642088698595891684

`A175006(n+1)+∑[n]`
-/

namespace A007009.P14642088698595891684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175006 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A007009.P14642088698595891684

namespace A007009

/-- `A175006(n+1)+∑[n]` -/
def P14642088698595891684.Spec : Prop :=
  ∀ n, P14642088698595891684.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P5134231382496261294

`∑[(n+2)*∑[A008619(n)]]/2`
-/

namespace A007009.P5134231382496261294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A007009.P5134231382496261294

namespace A007009

/-- `∑[(n+2)*∑[A008619(n)]]/2` -/
def P5134231382496261294.Spec : Prop :=
  ∀ n, P5134231382496261294.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P9327630345742504648

`A008619(n+1)²*A008805(n)`
-/

namespace A007009.P9327630345742504648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) ^ 2 * A008805 n

end

end A007009.P9327630345742504648

namespace A007009

/-- `A008619(n+1)²*A008805(n)` -/
def P9327630345742504648.Spec : Prop :=
  ∀ n, P9327630345742504648.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P9161099661939179985

`(A110654(n)+1)²*A008805(n)`
-/

namespace A007009.P9161099661939179985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n + 1) ^ 2 * A008805 n

end

end A007009.P9161099661939179985

namespace A007009

/-- `(A110654(n)+1)²*A008805(n)` -/
def P9161099661939179985.Spec : Prop :=
  ∀ n, P9161099661939179985.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P14139082388726851217

`(A005993(n)+∑[A199771(n+1)])/2`
-/

namespace A007009.P14139082388726851217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005993 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A007009.P14139082388726851217

namespace A007009

/-- `(A005993(n)+∑[A199771(n+1)])/2` -/
def P14139082388726851217.Spec : Prop :=
  ∀ n, P14139082388726851217.a n = (A007009 (n + 1) : ℚ)

end A007009

/-! ## A007009.P3316057002713300020

`A080513(n)²*A000217(A008619(n))`
-/

namespace A007009.P3316057002713300020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n ^ 2 * A000217 (A008619 n).toNat

end

end A007009.P3316057002713300020

namespace A007009

/-- `A080513(n)²*A000217(A008619(n))` -/
def P3316057002713300020.Spec : Prop :=
  ∀ n, P3316057002713300020.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P13822698322430581050

`A001752(n)+A002624(n)-A002623(n)`
-/

namespace A007009.P13822698322430581050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + (A002624 n - A002623 n)

end

end A007009.P13822698322430581050

namespace A007009

/-- `A001752(n)+A002624(n)-A002623(n)` -/
def P13822698322430581050.Spec : Prop :=
  ∀ n, P13822698322430581050.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P16544081676306822045

`(A008805(n)+A008795(n+1))*A008805(n)`
-/

namespace A007009.P16544081676306822045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008805 n + A008795 (n + 1)) * A008805 n

end

end A007009.P16544081676306822045

namespace A007009

/-- `(A008805(n)+A008795(n+1))*A008805(n)` -/
def P16544081676306822045.Spec : Prop :=
  ∀ n, P16544081676306822045.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P13110124236311865857

`A008619(n+1)²*A000217(A110654(n+1))`
-/

namespace A007009.P13110124236311865857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) ^ 2 * A000217 (A110654 (n + 1)).toNat

end

end A007009.P13110124236311865857

namespace A007009

/-- `A008619(n+1)²*A000217(A110654(n+1))` -/
def P13110124236311865857.Spec : Prop :=
  ∀ n, P13110124236311865857.a n = A007009 (n + 1)

end A007009

/-! ## A007009.P13380212324973925948

`A008805(n)+A008805(n+1)*A135276(n)`
-/

namespace A007009.P13380212324973925948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + A008805 (n + 1) * A135276 n

end

end A007009.P13380212324973925948

namespace A007009

/-- `A008805(n)+A008805(n+1)*A135276(n)` -/
def P13380212324973925948.Spec : Prop :=
  ∀ n, P13380212324973925948.a n = A007009 (n + 1)

end A007009

/-!
# A007010: Number of 4-voter voting schemes with n linearly ranked choices.

The programs for A007010, there is no canonical definition to state claims against.
-/

/-! ## A007010.P18392646741766147889

`A316945(A000041(2*n+3))+A161858(n)`
-/

namespace A007010.P18392646741766147889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316945 (A000041 (2 * n + 3)).toNat + A161858 n

end

end A007010.P18392646741766147889

/-!
# A007011: a(n) = smallest pseudoprime to base 2 with n prime factors.

The programs for A007011, there is no canonical definition to state claims against.
-/

/-! ## A007011.P2366104663937263338

`A271873(∑[n]+2)`
-/

namespace A007011.P2366104663937263338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271873 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A007011.P2366104663937263338

/-! ## A007011.P15241642487273805068

`record[A271873(n+2)]`
-/

namespace A007011.P15241642487273805068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271873 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007011.P15241642487273805068

/-!
# A007012: a(n) is number of k for which C(n,k) is not divisible by n.

The programs for A007012, there is no canonical definition to state claims against.
-/

/-! ## A007012.P4175965350603989419

`n+1-A020475(n)`
-/

namespace A007012.P4175965350603989419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A020475 n

end

end A007012.P4175965350603989419

/-! ## A007012.P2978664017146521810

`n-A023443(A020475(n))`
-/

namespace A007012.P2978664017146521810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A020475 n).toNat

end

end A007012.P2978664017146521810

/-! ## A007012.P15381954385228686028

`1-(A028310(A020475(n))-A028310(n))`
-/

namespace A007012.P15381954385228686028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A028310 (A020475 n).toNat - A028310 n)

end

end A007012.P15381954385228686028

/-! ## A007012.P9661596133000088128

`n-(A020475(n)-A007318(∑[n]))`
-/

namespace A007012.P9661596133000088128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A020475 n - A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A007012.P9661596133000088128

/-! ## A007012.P2671531844900426419

`n-(A020475(n)-A009766(∑[n]))`
-/

namespace A007012.P2671531844900426419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A020475 n - A009766 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A007012.P2671531844900426419

/-!
# A007013: 

The programs for A007013, there is no canonical definition to state claims against.
-/

/-! ## A007013.P11534079599991726183

`2^a(n-1)-1` with `a(0)=2`
-/

namespace A007013.P11534079599991726183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (2 : ℝ) ^ (a (n - 1)) - 1

end

end A007013.P11534079599991726183

/-!
# A007014: Largest prime <= Product prime(k).

The programs for A007014, the canonical program `A007014.P11143855519005822718` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007014 has offset 1).

The definition of A007014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007014.P11143855519005822718

`A000040(A000849(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007014

/-- `A000040(A000849(n+1))` -/
def P11143855519005822718.Spec : Prop :=
  ∀ n, P11143855519005822718.a n = A007014 (n + 1)

theorem P11143855519005822718.correct : P11143855519005822718.Spec := by
  intro n
  simp only [A007014, Nat.add_sub_cancel]

end A007014

/-! ## A007014.P8433205030683446826

`A000040(∑[A072236(n)])`
-/

namespace A007014.P8433205030683446826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007014.P8433205030683446826

namespace A007014

/-- `A000040(∑[A072236(n)])` -/
def P8433205030683446826.Spec : Prop :=
  ∀ n, P8433205030683446826.a n = A007014 (n + 1)

end A007014

/-!
# A007016: Number of permutations of length n with 1 fixed and 1 reflected point.

The programs for A007016, there is no canonical definition to state claims against.
-/

/-! ## A007016.P5023635592488171146

`and(A321723(n)+A086825(n), A321723(n))`
-/

namespace A007016.P5023635592488171146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321723 n + A086825 n) (A321723 n)

end

end A007016.P5023635592488171146

/-! ## A007016.P6119427138384952382

`and(-A094838(3*(n+1)), A321723(n))`
-/

namespace A007016.P6119427138384952382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A094838 (3 * (n + 1))) (A321723 n)

end

end A007016.P6119427138384952382

/-! ## A007016.P9138197997266876281

`A321723(n)+A010815(A261386(n))`
-/

namespace A007016.P9138197997266876281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321723 n + A010815 (A261386 n).toNat

end

end A007016.P9138197997266876281

/-! ## A007016.P17577014177352435122

`A321723(n)-A000161(A002184(n))`
-/

namespace A007016.P17577014177352435122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321723 n - A000161 (A002184 n).toNat

end

end A007016.P17577014177352435122

/-!
# A007017: Number of motifs in triangular window of side n.

The programs for A007017, there is no canonical definition to state claims against.
-/

/-! ## A007017.P13853939350508566371

`A277211(n+1)/2`
-/

namespace A007017.P13853939350508566371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277211 (n + 1) : ℚ) / 2

end

end A007017.P13853939350508566371

/-! ## A007017.P6802993238387950195

`Δ[∑[A277211(n)]/2]`
-/

namespace A007017.P6802993238387950195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277211 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007017.P6802993238387950195

/-!
# A007018: a(n) = a(n-1)^2 + a(n-1), a(0)=1.

The programs for A007018, the canonical program `A007018.P7622823044548074693` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007018 has offset 0).

The definition of A007018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+a(n-1)` (program `A007018.P7622823044548074693`, by `A007018.P7622823044548074693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007018.P4088349408937928805

`a(n-1)+a(n-1)²` with `a(0)=1`
-/

namespace A007018.P4088349408937928805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) ^ 2

end

end A007018.P4088349408937928805

namespace A007018

/-- `a(n-1)+a(n-1)²` -/
def P4088349408937928805.Spec : Prop :=
  ∀ n, (P4088349408937928805.a n : ℤ) = A007018 n

theorem P4088349408937928805.correct : P4088349408937928805.Spec := by
  intro n
  simp only [A007018, Nat.add_sub_cancel, A007018.P4088349408937928805.a, A007018.P7622823044548074693.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007018

/-! ## A007018.P7622823044548074693

`a(n-1)²+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007018

/-- `a(n-1)²+a(n-1)` -/
def P7622823044548074693.Spec : Prop :=
  ∀ n, (P7622823044548074693.a n : ℤ) = A007018 n

theorem P7622823044548074693.correct : P7622823044548074693.Spec := by
  intro n
  simp only [A007018]

end A007018

/-! ## A007018.P7899401149000772760

`A000058(n)-1`
-/

namespace A007018.P7899401149000772760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000058 n - 1

end

end A007018.P7899401149000772760

namespace A007018

/-- `A000058(n)-1` -/
def P7899401149000772760.Spec : Prop :=
  ∀ n, P7899401149000772760.a n = A007018 n

end A007018

/-! ## A007018.P15365954525831465974

`A053631(n+1)/2`
-/

namespace A007018.P15365954525831465974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053631 (n + 1) : ℚ) / 2

end

end A007018.P15365954525831465974

namespace A007018

/-- `A053631(n+1)/2` -/
def P15365954525831465974.Spec : Prop :=
  ∀ n, P15365954525831465974.a n = (A007018 n : ℚ)

theorem P15365954525831465974.correct : P15365954525831465974.Spec := by
  intro n
  simp only [A007018, Nat.add_sub_cancel, A007018.P15365954525831465974.a, A007018.P7622823044548074693.a, A053631, A053631.P7343869401058660275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007018

/-! ## A007018.P6849428225155894372

`(A053630(n+1)-1)/2`
-/

namespace A007018.P6849428225155894372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053630 (n + 1) - 1 : ℚ) / 2

end

end A007018.P6849428225155894372

namespace A007018

/-- `(A053630(n+1)-1)/2` -/
def P6849428225155894372.Spec : Prop :=
  ∀ n, P6849428225155894372.a n = (A007018 n : ℚ)

end A007018

/-!
# A007019: a(n) = (2n+1)! / 2^n.

The programs for A007019, the canonical program `A007019.P15829499275879639654` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007019 has offset 0).

The definition of A007019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007019.P15829499275879639654

`(2*n+1)!/2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007019

/-- `(2*n+1)!/2^n` -/
def P15829499275879639654.Spec : Prop :=
  ∀ n, P15829499275879639654.a n = (A007019 n : ℚ)

end A007019

/-! ## A007019.P6522468737633478419

`n!*∏[Δ[n²]]`
-/

namespace A007019.P6522468737633478419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A007019.P6522468737633478419

namespace A007019

/-- `n!*∏[Δ[n²]]` -/
def P6522468737633478419.Spec : Prop :=
  ∀ n, P6522468737633478419.a n = A007019 n

end A007019

/-! ## A007019.P4743535213731020160

`record[a(n-2)*∑[n]]` with `a(0)=1, a(1)=0`
-/

namespace A007019.P4743535213731020160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007019.P4743535213731020160

namespace A007019

/-- `record[a(n-2)*∑[n]]` -/
def P4743535213731020160.Spec : Prop :=
  ∀ n, (P4743535213731020160.a n : ℤ) = A007019 n

end A007019

/-! ## A007019.P9503891473018631048

`∏[C(floor(2/acot(n))+1, 2)]`
-/

namespace A007019.P9503891473018631048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007019.P9503891473018631048

namespace A007019

/-- `∏[C(floor(2/acot(n))+1, 2)]` -/
def P9503891473018631048.Spec : Prop :=
  ∀ n, (P9503891473018631048.a n : ℤ) = A007019 n

end A007019

/-!
# A007021: Number of 4-connected simplicial polyhedra with n nodes.

The programs for A007021, there is no canonical definition to state claims against.
-/

/-! ## A007021.P7371794744062587638

`A191918(A002989(n)+1)`
-/

namespace A007021.P7371794744062587638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191918 (A002989 n + 1).toNat

end

end A007021.P7371794744062587638

/-! ## A007021.P7787770760114691713

`A191917(A023421(n)+1)`
-/

namespace A007021.P7787770760114691713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191917 (A023421 n + 1).toNat

end

end A007021.P7787770760114691713

/-! ## A007021.P12583072959176949727

`ceil(A325391(A006355(n))/2)`
-/

namespace A007021.P12583072959176949727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325391 (A006355 n).toNat : ℚ) / 2⌉

end

end A007021.P12583072959176949727

/-! ## A007021.P10786916393072461817

`A191917(A023422(n+1)+1)`
-/

namespace A007021.P10786916393072461817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191917 (A023422 (n + 1) + 1).toNat

end

end A007021.P10786916393072461817

/-! ## A007021.P8562110661140816399

`A291761(∏[∏[A046640(n+1)]])`
-/

namespace A007021.P8562110661140816399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291761 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007021.P8562110661140816399

/-!
# A007025: Number of polyhedral graphs with n nodes and minimal degree 4.

The programs for A007025, there is no canonical definition to state claims against.
-/

/-! ## A007025.P15766658272200503606

`A033270(or(n, A088791(n)))`
-/

namespace A007025.P15766658272200503606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.lor (n : ℤ) (A088791 n)).toNat

end

end A007025.P15766658272200503606

/-! ## A007025.P13023322885709124111

`round(A006870(n+2)/A000712(n+3))`
-/

namespace A007025.P13023322885709124111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006870 (n + 2) : ℚ) / (A000712 (n + 3) : ℚ))

end

end A007025.P13023322885709124111

/-! ## A007025.P16500398913491506221

`A033270(A088791(n)+A028242(n))`
-/

namespace A007025.P16500398913491506221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A088791 n + A028242 n).toNat

end

end A007025.P16500398913491506221

/-! ## A007025.P17259291982869548516

`A033270(A088791(n)+A000010(n+1))`
-/

namespace A007025.P17259291982869548516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A088791 n + A000010 (n + 1)).toNat

end

end A007025.P17259291982869548516

/-!
# A007029: Number of bipartite polyhedral graphs with n faces.

The programs for A007029, there is no canonical definition to state claims against.
-/

/-! ## A007029.P17525219138334457547

`A277486(or(1, A102736(n+1)))`
-/

namespace A007029.P17525219138334457547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277486 (Int.lor 1 (A102736 (n + 1))).toNat

end

end A007029.P17525219138334457547

/-! ## A007029.P13099716945441081885

`A002494(n)+A001221(A177379(n))`
-/

namespace A007029.P13099716945441081885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n + A001221 (A177379 n).toNat

end

end A007029.P13099716945441081885

/-! ## A007029.P18233644761438845691

`A346749(n)+A001222(A235322(n))`
-/

namespace A007029.P18233644761438845691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346749 n + A001222 (A235322 n).toNat

end

end A007029.P18233644761438845691

/-!
# A007031: Non-Hamiltonian 1-tough simplicial polyhedra with n nodes.

The programs for A007031, there is no canonical definition to state claims against.
-/

/-! ## A007031.P17316526596441917421

`A007030(n+1)%A342971(A347470(n))`
-/

namespace A007031.P17316526596441917421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007030 (n + 1)) (A342971 ((A347470 n).toNat + 11))

end

end A007031.P17316526596441917421

/-! ## A007031.P15637503876574020919

`floor(A227725(n)/54)`
-/

namespace A007031.P15637503876574020919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227725 n : ℚ) / 54⌋

end

end A007031.P15637503876574020919

/-! ## A007031.P15390160194492520152

`A351977(∑{digits}[n, 10^#]%9+2^∑{digits}[n, #%C(n, #)])`
-/

namespace A007031.P15390160194492520152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351977 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 + 2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A007031.P15390160194492520152

/-! ## A007031.P6160222459966431040

`A265533(A036427(n))`
-/

namespace A007031.P6160222459966431040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265533 (A036427 n).toNat

end

end A007031.P6160222459966431040

/-! ## A007031.P15177798498153237604

`A305428(A326589(n)!)`
-/

namespace A007031.P15177798498153237604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305428 (Nat.factorial (A326589 n).toNat)

end

end A007031.P15177798498153237604

/-!
# A007032: Number of non-Hamiltonian polyhedra with n faces.

The programs for A007032, there is no canonical definition to state claims against.
-/

/-! ## A007032.P16413409451212965316

`A280586(∑[A321412(n)])`
-/

namespace A007032.P16413409451212965316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007032.P16413409451212965316

/-! ## A007032.P214138412967330542

`A290878(A122055(n+1))`
-/

namespace A007032.P214138412967330542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290878 (A122055 (n + 1)).toNat

end

end A007032.P214138412967330542

/-! ## A007032.P17111586811180919164

`A350893(A369345(n+1))`
-/

namespace A007032.P17111586811180919164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350893 (A369345 (n + 1)).toNat

end

end A007032.P17111586811180919164

/-! ## A007032.P10235380324599306681

`A324843(A006723(n))-1`
-/

namespace A007032.P10235380324599306681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324843 (A006723 n).toNat - 1

end

end A007032.P10235380324599306681

/-! ## A007032.P17633691517104072460

`A054896(C(A276531(n), 2))`
-/

namespace A007032.P17633691517104072460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (Nat.choose (A276531 n).toNat 2)

end

end A007032.P17633691517104072460

/-!
# A007033: Number of non-Hamiltonian polyhedra with n nodes.

The programs for A007033, there is no canonical definition to state claims against.
-/

/-! ## A007033.P5570914466624271982

`A309689(A253535(n+1)^A326530(n))`
-/

namespace A007033.P5570914466624271982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309689 (SequenceMachineLib.roundAway ((A253535 (n + 1) : ℚ) ^ (A326530 n : ℤ))).toNat

end

end A007033.P5570914466624271982

/-!
# A007034: Noncircumscribable simplicial polyhedra with n nodes.

The programs for A007034, there is no canonical definition to state claims against.
-/

/-! ## A007034.P9163839588145686010

`round(A326336(n)/A186238(2*n+3))`
-/

namespace A007034.P9163839588145686010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326336 n : ℚ) / (A186238 (2 * n + 3) : ℚ))

end

end A007034.P9163839588145686010

/-! ## A007034.P12360140681785728475

`A309715(A114299(n+2))%A114299(n)`
-/

namespace A007034.P12360140681785728475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309715 (A114299 (n + 2)).toNat) (A114299 n)

end

end A007034.P12360140681785728475

/-! ## A007034.P2484003195883408382

`A045882(A316721(n))%A316721(A037026(n))`
-/

namespace A007034.P2484003195883408382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045882 (A316721 n).toNat) (A316721 (A037026 n).toNat)

end

end A007034.P2484003195883408382

/-! ## A007034.P625961128172016266

`round(A268571(n+1)/25)`
-/

namespace A007034.P625961128172016266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A268571 (n + 1) : ℚ) / 25)

end

end A007034.P625961128172016266

/-! ## A007034.P5330663175533811957

`A078079(A332870(n))`
-/

namespace A007034.P5330663175533811957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078079 (A332870 n).toNat

end

end A007034.P5330663175533811957

/-!
# A007035: Number of non-1-Hamiltonian simplicial polyhedra with n nodes.

The programs for A007035, there is no canonical definition to state claims against.
-/

/-! ## A007035.P4272853612726330219

`A007037(n+1)+A007036(n+1)`
-/

namespace A007035.P4272853612726330219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007037 (n + 1) + A007036 (n + 1)

end

end A007035.P4272853612726330219

/-! ## A007035.P4925756700808188254

`A180121(∑[floor(n/8)]!)+A007037(n+1)`
-/

namespace A007035.P4925756700808188254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180121 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat) + A007037 (n + 1)

end

end A007035.P4925756700808188254

/-! ## A007035.P1882277437208239542

`A007037(n+1)+A240116(2*(n+3))%A051287(A365951(n+1))`
-/

namespace A007035.P1882277437208239542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007037 (n + 1) + Int.tmod (A240116 (2 * (n + 3))) (A051287 (A365951 (n + 1)).toNat)

end

end A007035.P1882277437208239542

/-! ## A007035.P16117979859210289145

`A239118(n)+A230224(A239138(n+1))`
-/

namespace A007035.P16117979859210289145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239118 n + A230224 (A239138 (n + 1)).toNat

end

end A007035.P16117979859210289145

/-! ## A007035.P14039605162012327453

`A325106(A325096(A006218(A325099(A325108(n)))))`
-/

namespace A007035.P14039605162012327453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A325096 (A006218 (A325099 (A325108 n).toNat).toNat).toNat).toNat

end

end A007035.P14039605162012327453

/-!
# A007036: Number of 1-supertough but non-1-Hamiltonian simplicial polyhedra with n nodes.

The programs for A007036, there is no canonical definition to state claims against.
-/

/-! ## A007036.P8742984712651945556

`A007035(n+1)-A007037(n+1)`
-/

namespace A007036.P8742984712651945556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007035 (n + 1) - A007037 (n + 1)

end

end A007036.P8742984712651945556

/-! ## A007036.P13811103272954127005

`A180121(∑[floor(n/8)]!)`
-/

namespace A007036.P13811103272954127005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180121 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A007036.P13811103272954127005

/-! ## A007036.P8333671205127486466

`A122325(C(floor(n-atan(n)), 7))`
-/

namespace A007036.P8333671205127486466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122325 (Nat.choose ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat 7)

end

end A007036.P8333671205127486466

/-! ## A007036.P2567845100936696666

`A122329(C(floor(n-atan(n)), 7))`
-/

namespace A007036.P2567845100936696666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122329 (Nat.choose ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat 7)

end

end A007036.P2567845100936696666

/-! ## A007036.P6443027693666563931

`A089860(A036598(n))`
-/

namespace A007036.P6443027693666563931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (A036598 n).toNat

end

end A007036.P6443027693666563931

/-!
# A007037: Noninscribable simplicial polyhedra with n nodes.

The programs for A007037, there is no canonical definition to state claims against.
-/

/-! ## A007037.P12866032072276920023

`A007035(n+1)-A007036(n+1)`
-/

namespace A007037.P12866032072276920023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007035 (n + 1) - A007036 (n + 1)

end

end A007037.P12866032072276920023

/-! ## A007037.P18135260333303997525

`A007035(n+1)-A180121(∑[floor(n/8)]!)`
-/

namespace A007037.P18135260333303997525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007035 (n + 1) - A180121 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A007037.P18135260333303997525

/-! ## A007037.P11180371878792834822

`A094265(A184943(n)+1)`
-/

namespace A007037.P11180371878792834822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094265 (A184943 n + 1).toNat

end

end A007037.P11180371878792834822

/-! ## A007037.P2284522968340211056

`A240541(A056511(n+1))`
-/

namespace A007037.P2284522968340211056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240541 (A056511 (n + 1)).toNat

end

end A007037.P2284522968340211056

/-! ## A007037.P865910472208384747

`A240541(A056522(n+1))`
-/

namespace A007037.P865910472208384747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240541 (A056522 (n + 1)).toNat

end

end A007037.P865910472208384747

/-!
# A007039: Number of cyclic binary n-bit strings with no alternating substring of length > 2.

The programs for A007039, the canonical program `A007039.P410524086066766333` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007039 has offset 1).

The definition of A007039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007039.P410524086066766333

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007039

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P410524086066766333.Spec : Prop :=
  ∀ n, P410524086066766333.a n = A007039 (n + 1)

theorem P410524086066766333.correct : P410524086066766333.Spec := by
  intro n
  simp only [A007039, Nat.add_sub_cancel]

end A007039

/-! ## A007039.P10523192044364499483

`A000032(n+1)+A057079(n+2)`
-/

namespace A007039.P10523192044364499483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + A057079 (n + 2)

end

end A007039.P10523192044364499483

namespace A007039

/-- `A000032(n+1)+A057079(n+2)` -/
def P10523192044364499483.Spec : Prop :=
  ∀ n, P10523192044364499483.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P7462542943994472404

`ogf((2-2x+4x^3)/(1-2x+x^2-x^4))`
-/

namespace A007039.P7462542943994472404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 0, 4] [1, -2, 1, 0, -1] n

end

end A007039.P7462542943994472404

namespace A007039

/-- `ogf((2-2x+4x^3)/(1-2x+x^2-x^4))` -/
def P7462542943994472404.Spec : Prop :=
  ∀ n, P7462542943994472404.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P17845814707897909629

`abs(2*A111734(n+1))`
-/

namespace A007039.P17845814707897909629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A111734 (n + 1)|

end

end A007039.P17845814707897909629

namespace A007039

/-- `abs(2*A111734(n+1))` -/
def P17845814707897909629.Spec : Prop :=
  ∀ n, P17845814707897909629.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P43465495702313842

`A297661(n+1)-(n+1)`
-/

namespace A007039.P43465495702313842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 1) - (n + 1 : ℤ)

end

end A007039.P43465495702313842

namespace A007039

/-- `A297661(n+1)-(n+1)` -/
def P43465495702313842.Spec : Prop :=
  ∀ n, P43465495702313842.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P1677525480188110316

`2*A000032(n)-a(n-3)` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A007039.P1677525480188110316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  2 * A000032 n - a (n - 3)

end

end A007039.P1677525480188110316

namespace A007039

/-- `2*A000032(n)-a(n-3)` -/
def P1677525480188110316.Spec : Prop :=
  ∀ n, P1677525480188110316.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P977542100239648706

`A131290(n+2)+A001610(n)`
-/

namespace A007039.P977542100239648706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131290 (n + 2) + A001610 n

end

end A007039.P977542100239648706

namespace A007039

/-- `A131290(n+2)+A001610(n)` -/
def P977542100239648706.Spec : Prop :=
  ∀ n, P977542100239648706.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P17050023661588259582

`A395933(n+1)-A010673(n)`
-/

namespace A007039.P17050023661588259582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395933 (n + 1) - A010673 n

end

end A007039.P17050023661588259582

namespace A007039

/-- `A395933(n+1)-A010673(n)` -/
def P17050023661588259582.Spec : Prop :=
  ∀ n, P17050023661588259582.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P456341429032041961

`A087204(n+1)+A000032(n+1)`
-/

namespace A007039.P456341429032041961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (n + 1) + A000032 (n + 1)

end

end A007039.P456341429032041961

namespace A007039

/-- `A087204(n+1)+A000032(n+1)` -/
def P456341429032041961.Spec : Prop :=
  ∀ n, P456341429032041961.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P14720174682697213539

`A087204(n+1)+A000204(n+1)`
-/

namespace A007039.P14720174682697213539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (n + 1) + A000204 (n + 1)

end

end A007039.P14720174682697213539

namespace A007039

/-- `A087204(n+1)+A000204(n+1)` -/
def P14720174682697213539.Spec : Prop :=
  ∀ n, P14720174682697213539.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P7273253527683833455

`A100051(n+1)+A000032(n+1)`
-/

namespace A007039.P7273253527683833455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) + A000032 (n + 1)

end

end A007039.P7273253527683833455

namespace A007039

/-- `A100051(n+1)+A000032(n+1)` -/
def P7273253527683833455.Spec : Prop :=
  ∀ n, P7273253527683833455.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P15804089290731171339

`A100051(n+1)+A000204(n+1)`
-/

namespace A007039.P15804089290731171339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) + A000204 (n + 1)

end

end A007039.P15804089290731171339

namespace A007039

/-- `A100051(n+1)+A000204(n+1)` -/
def P15804089290731171339.Spec : Prop :=
  ∀ n, P15804089290731171339.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P16214196497522285823

`A087204(n+1)+A366043(n+1)+A100886(n)`
-/

namespace A007039.P16214196497522285823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (n + 1) + (A366043 (n + 1) + A100886 n)

end

end A007039.P16214196497522285823

namespace A007039

/-- `A087204(n+1)+A366043(n+1)+A100886(n)` -/
def P16214196497522285823.Spec : Prop :=
  ∀ n, P16214196497522285823.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P8468254588582470412

`A000032(n+1)+A061347(n+1)*A062157(n+1)`
-/

namespace A007039.P8468254588582470412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + A061347 (n + 1) * A062157 (n + 1)

end

end A007039.P8468254588582470412

namespace A007039

/-- `A000032(n+1)+A061347(n+1)*A062157(n+1)` -/
def P8468254588582470412.Spec : Prop :=
  ∀ n, P8468254588582470412.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P17629440640002840115

`2*Δ[A108014(n+1)]`
-/

namespace A007039.P17629440640002840115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A007039.P17629440640002840115

namespace A007039

/-- `2*Δ[A108014(n+1)]` -/
def P17629440640002840115.Spec : Prop :=
  ∀ n, P17629440640002840115.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P15997171982570952213

`Δ[ogf((4-2x)/(1-2x+x^2-x^4))]`
-/

namespace A007039.P15997171982570952213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2] [1, -2, 1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007039.P15997171982570952213

namespace A007039

/-- `Δ[ogf((4-2x)/(1-2x+x^2-x^4))]` -/
def P15997171982570952213.Spec : Prop :=
  ∀ n, P15997171982570952213.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P7744876842212416055

`Δ[A297667(n+2)]-1`
-/

namespace A007039.P7744876842212416055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A007039.P7744876842212416055

namespace A007039

/-- `Δ[A297667(n+2)]-1` -/
def P7744876842212416055.Spec : Prop :=
  ∀ n, P7744876842212416055.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P9371484668647153176

`Δ[2*Δ[A199935(n+3)]]`
-/

namespace A007039.P9371484668647153176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007039.P9371484668647153176

namespace A007039

/-- `Δ[2*Δ[A199935(n+3)]]` -/
def P9371484668647153176.Spec : Prop :=
  ∀ n, P9371484668647153176.a n = A007039 (n + 1)

end A007039

/-! ## A007039.P14670147387631173676

`Δ[Δ[A297661(n+3)]]`
-/

namespace A007039.P14670147387631173676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007039.P14670147387631173676

namespace A007039

/-- `Δ[Δ[A297661(n+3)]]` -/
def P14670147387631173676.Spec : Prop :=
  ∀ n, P14670147387631173676.a n = A007039 (n + 1)

end A007039

/-!
# A007040: Number of (marked) cyclic n-bit binary strings containing no runs of length > 2.

The programs for A007040, the canonical program `A007040.P8325823664482931972` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007040 has offset 1).

The definition of A007040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007040.P8325823664482931972

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=6, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007040

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P8325823664482931972.Spec : Prop :=
  ∀ n, (P8325823664482931972.a n : ℤ) = A007040 (n + 1)

theorem P8325823664482931972.correct : P8325823664482931972.Spec := by
  intro n
  simp only [A007040, Nat.add_sub_cancel]

end A007040

/-! ## A007040.P3978394569114874602

`abs(A000204(n+1)-A130508(n+1))+n+1`
-/

namespace A007040.P3978394569114874602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000204 (n + 1) - A130508 (n + 1)| + (n + 1 : ℤ)

end

end A007040.P3978394569114874602

namespace A007040

/-- `abs(A000204(n+1)-A130508(n+1))+n+1` -/
def P3978394569114874602.Spec : Prop :=
  ∀ n, P3978394569114874602.a n = A007040 (n + 1)

end A007040

/-! ## A007040.P14349560691133150683

`A146076(A000040(n+1))+2*A100886(n)`
-/

namespace A007040.P14349560691133150683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A000040 (n + 1)).toNat + 2 * A100886 n

end

end A007040.P14349560691133150683

namespace A007040

/-- `A146076(A000040(n+1))+2*A100886(n)` -/
def P14349560691133150683.Spec : Prop :=
  ∀ n, P14349560691133150683.a n = A007040 (n + 1)

end A007040

/-! ## A007040.P3507182674976476610

`A000032(n+1)+A188670(A283878(n+2))-4`
-/

namespace A007040.P3507182674976476610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (A188670 (A283878 (n + 2)).toNat - 4)

end

end A007040.P3507182674976476610

namespace A007040

/-- `A000032(n+1)+A188670(A283878(n+2))-4` -/
def P3507182674976476610.Spec : Prop :=
  ∀ n, P3507182674976476610.a n = A007040 (n + 1)

end A007040

/-! ## A007040.P17328506182522677334

`A290608(n+2)-a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A007040.P17328506182522677334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A290608 (n + 2) - a (n - 1)

end

end A007040.P17328506182522677334

namespace A007040

/-- `A290608(n+2)-a(n-1)` -/
def P17328506182522677334.Spec : Prop :=
  ∀ n, P17328506182522677334.a n = A007040 (n + 1)

end A007040

/-! ## A007040.P18227079879741718391

`Δ[record[A000032(n)-(n+1)%3]]`
-/

namespace A007040.P18227079879741718391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (((n + 1) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007040.P18227079879741718391

namespace A007040

/-- `Δ[record[A000032(n)-(n+1)%3]]` -/
def P18227079879741718391.Spec : Prop :=
  ∀ n, P18227079879741718391.a n = A007040 (n + 1)

end A007040

/-!
# A007041: State assignments for n-state machine.

The programs for A007041, there is no canonical definition to state claims against.
-/

/-! ## A007041.P3848025676026723690

`A092427(A139237(n+2)%A092407(2*n+1))`
-/

namespace A007041.P3848025676026723690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092427 (Int.tmod (A139237 (n + 2)) (A092407 (2 * n + 1))).toNat

end

end A007041.P3848025676026723690

/-!
# A007042: Left diagonal of partition triangle A047812.

The programs for A007042, there is no canonical definition to state claims against.
-/

/-! ## A007042.P12791782844374312888

`A000041(n+2)-2`
-/

namespace A007042.P12791782844374312888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2) - 2

end

end A007042.P12791782844374312888

/-! ## A007042.P18197713742319309075

`A000065(n+2)-1`
-/

namespace A007042.P18197713742319309075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 2) - 1

end

end A007042.P18197713742319309075

/-! ## A007042.P8898104763212791410

`A052810(n+2)-3`
-/

namespace A007042.P8898104763212791410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (n + 2) - 3

end

end A007042.P8898104763212791410

/-! ## A007042.P4002778705718574853

`A000094(n+3)+n`
-/

namespace A007042.P4002778705718574853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 3) + (n : ℤ)

end

end A007042.P4002778705718574853

/-! ## A007042.P12226442321756806629

`∑[∑[A053445(n)]]-1`
-/

namespace A007042.P12226442321756806629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007042.P12226442321756806629

/-! ## A007042.P8158316022035310419

`∑[A002865(n+2)]-1`
-/

namespace A007042.P8158316022035310419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007042.P8158316022035310419

/-! ## A007042.P13109698610971436050

`∑[A187219(n+2)]-1`
-/

namespace A007042.P13109698610971436050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007042.P13109698610971436050

/-! ## A007042.P4398567413322106483

`∑[A085811(n+5)]-1`
-/

namespace A007042.P4398567413322106483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007042.P4398567413322106483

/-! ## A007042.P7686195383920438889

`∑[A083751(n+2)]+n`
-/

namespace A007042.P7686195383920438889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007042.P7686195383920438889

/-! ## A007042.P1678797417738736871

`record[A000041(abs(2-n))-2]`
-/

namespace A007042.P1678797417738736871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |2 - (n : ℤ)|.toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007042.P1678797417738736871

/-! ## A007042.P16905310634561673323

`abs(2-A000041(2*n-(n-2)))`
-/

namespace A007042.P16905310634561673323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000041 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat|

end

end A007042.P16905310634561673323

/-! ## A007042.P3986986645065738744

`∑[A002865(ceil(sqrt((n+1)²+n+n)))]`
-/

namespace A007042.P3986986645065738744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ⌈Real.sqrt ((n + 1) ^ 2 + n + n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007042.P3986986645065738744

/-! ## A007042.P9283064112378527588

`A004526(n)+A004250(n+2)`
-/

namespace A007042.P9283064112378527588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A004250 (n + 2)

end

end A007042.P9283064112378527588

/-! ## A007042.P15589150774817249417

`A083751(n+2)+A000065(n+1)`
-/

namespace A007042.P15589150774817249417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 2) + A000065 (n + 1)

end

end A007042.P15589150774817249417

/-! ## A007042.P205770994349178013

`∑[A000041(n+2)%A000041(n+1)]`
-/

namespace A007042.P205770994349178013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 2)) (A000041 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007042.P205770994349178013

/-! ## A007042.P5820740269316371782

`A026804(n+2)+A026805(n+2)-2`
-/

namespace A007042.P5820740269316371782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 2) + (A026805 (n + 2) - 2)

end

end A007042.P5820740269316371782

/-! ## A007042.P1034354004413417429

`A118824(2*n+1)+A000041(n+2)`
-/

namespace A007042.P1034354004413417429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * n + 1) + A000041 (n + 2)

end

end A007042.P1034354004413417429

/-! ## A007042.P7031473520638556172

`A047968(n+2)-(A168111(n+2)+2)`
-/

namespace A007042.P7031473520638556172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 2) - (A168111 (n + 2) + 2)

end

end A007042.P7031473520638556172

/-! ## A007042.P1613753332473829515

`A002620(n+1)+A362548(n+1)+A083751(n+2)`
-/

namespace A007042.P1613753332473829515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A362548 (n + 1) + A083751 (n + 2))

end

end A007042.P1613753332473829515

/-! ## A007042.P413804808691370974

`A299473(n+2)-A211026(n+2)`
-/

namespace A007042.P413804808691370974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 (n + 2) - A211026 (n + 2)

end

end A007042.P413804808691370974

/-!
# A007043: Number of noncommutative SL(2,C)-invariants of degree n in 5 variables.

The programs for A007043, there is no canonical definition to state claims against.
-/

/-! ## A007043.P15252458979787162357

`A005191(n)-A104631(n)`
-/

namespace A007043.P15252458979787162357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n - A104631 n

end

end A007043.P15252458979787162357

/-! ## A007043.P17033647825815898723

`A005191(n)+A057428(n)*A104631(n)`
-/

namespace A007043.P17033647825815898723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n + A057428 n * A104631 n

end

end A007043.P17033647825815898723

/-! ## A007043.P1100010738085457486

`A005191(n)%(A104631(n)+A000038(n))`
-/

namespace A007043.P1100010738085457486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005191 n) (A104631 n + A000038 n)

end

end A007043.P1100010738085457486

/-! ## A007043.P8293586067229902126

`A201552(A347553(n+3))-A104631(n)`
-/

namespace A007043.P8293586067229902126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A347553 (n + 3)).toNat - A104631 n

end

end A007043.P8293586067229902126

/-! ## A007043.P12799468204863314162

`A201552(A027379(n)-n)-A104631(n)`
-/

namespace A007043.P12799468204863314162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A027379 n - (n : ℤ)).toNat - A104631 n

end

end A007043.P12799468204863314162

/-! ## A007043.P8144617705190607490

`A201552(A179865(n+1)+n)-A104631(n)`
-/

namespace A007043.P8144617705190607490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A179865 (n + 1) + (n : ℤ)).toNat - A104631 n

end

end A007043.P8144617705190607490

/-! ## A007043.P4938523026786800276

`A035343(A014105(n))-A104631(n)`
-/

namespace A007043.P4938523026786800276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 (A014105 n).toNat - A104631 n

end

end A007043.P4938523026786800276

/-!
# A007044: Left diagonal of partition triangle A047812.

The programs for A007044, there is no canonical definition to state claims against.
-/

/-! ## A007044.P11923213741210235774

`A000065(2*(n+2))-∑[A139582(n+2)]`
-/

namespace A007044.P11923213741210235774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * (n + 2)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007044.P11923213741210235774

/-! ## A007044.P10456206026159988874

`A047812(A152950(n+1))%A024015(n)`
-/

namespace A007044.P10456206026159988874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047812 (A152950 (n + 1)).toNat) (A024015 n)

end

end A007044.P10456206026159988874

/-! ## A007044.P5959131166130564593

`A047812(A152950(n+1))-A010051(∑[n+2])`
-/

namespace A007044.P5959131166130564593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A152950 (n + 1)).toNat - A010051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007044.P5959131166130564593

/-! ## A007044.P14604561812384324239

`A004197(A000124(n))*A047812(A152950(n+1))`
-/

namespace A007044.P14604561812384324239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A000124 n).toNat * A047812 (A152950 (n + 1)).toNat

end

end A007044.P14604561812384324239

/-! ## A007044.P2675270102915168061

`A151763(∑[n+3])+A047812(A152950(n+1))`
-/

namespace A007044.P2675270102915168061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (∑ j ∈ Finset.range (n + 1), f1 j) + A047812 (A152950 (n + 1)).toNat

end

end A007044.P2675270102915168061

/-!
# A007045: Second (lower) diagonal of partition triangle A047812.

The programs for A007045, there is no canonical definition to state claims against.
-/

/-! ## A007045.P2834211085979971309

`A047812(A034856(n+1))-floor(acot(n))`
-/

namespace A007045.P2834211085979971309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A034856 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A007045.P2834211085979971309

/-! ## A007045.P10411500611263684377

`A047812(A034856(n+1))-A000007(n)`
-/

namespace A007045.P10411500611263684377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A034856 (n + 1)).toNat - A000007 n

end

end A007045.P10411500611263684377

/-! ## A007045.P7442790837178874707

`A047812(A034856(n+1))*A057427(n)`
-/

namespace A007045.P7442790837178874707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A034856 (n + 1)).toNat * A057427 n

end

end A007045.P7442790837178874707

/-! ## A007045.P4394411496919150429

`A047812(A034856(n+1))%A001939(n)`
-/

namespace A007045.P4394411496919150429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047812 (A034856 (n + 1)).toNat) (A001939 n)

end

end A007045.P4394411496919150429

/-! ## A007045.P10004848906222545800

`and(A047812(A034856(n+1)), A057428(n))`
-/

namespace A007045.P10004848906222545800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047812 (A034856 (n + 1)).toNat) (A057428 n)

end

end A007045.P10004848906222545800

/-! ## A007045.P6593482742748953082

`char[A052938(n)]*A047812(A034856(n+1))`
-/

namespace A007045.P6593482742748953082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A047812 (A034856 (n + 1)).toNat

end

end A007045.P6593482742748953082

/-! ## A007045.P4983739257795690730

`A047812(A034856(n+1))*A048766(A048766(n))`
-/

namespace A007045.P4983739257795690730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A034856 (n + 1)).toNat * A048766 (A048766 n).toNat

end

end A007045.P4983739257795690730

/-!
# A007046: Number of irreducible positions of size n in Montreal solitaire.

The programs for A007046, there is no canonical definition to state claims against.
-/

/-! ## A007046.P4260149024590820371

`A007075(n+3)%A007075(n+2)`
-/

namespace A007046.P4260149024590820371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007075 (n + 3)) (A007075 (n + 2))

end

end A007046.P4260149024590820371

/-! ## A007046.P17434577966255497629

`Δ[Δ[A007075(n+1)]]-A007075(n+1)`
-/

namespace A007046.P17434577966255497629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007075 (n + 1)

end

end A007046.P17434577966255497629

/-! ## A007046.P4819935198409794669

`record[A191539(record[A349465(n)])]`
-/

namespace A007046.P4819935198409794669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349465 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191539 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007046.P4819935198409794669

/-! ## A007046.P2742305462636501845

`record[A191539(A007953(n+1))]`
-/

namespace A007046.P2742305462636501845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191539 (A007953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007046.P2742305462636501845

/-!
# A007047: Number of chains in power set of n-set.

The programs for A007047, there is no canonical definition to state claims against.
-/

/-! ## A007047.P10928361844698354370

`2*A000629(n)-1`
-/

namespace A007047.P10928361844698354370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000629 n - 1

end

end A007047.P10928361844698354370

/-! ## A007047.P11864582606781931461

`2*A002050(n)+1`
-/

namespace A007047.P11864582606781931461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002050 n + 1

end

end A007047.P11864582606781931461

/-! ## A007047.P1517223924814782208

`∑[2*A162509(n)]-1`
-/

namespace A007047.P1517223924814782208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007047.P1517223924814782208

/-! ## A007047.P6332525050421152159

`2*A054255(∑[n+1])-1`
-/

namespace A007047.P6332525050421152159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054255 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A007047.P6332525050421152159

/-! ## A007047.P17266183376306395206

`record[2*A090665(n+1)-1]`
-/

namespace A007047.P17266183376306395206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090665 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007047.P17266183376306395206

/-! ## A007047.P1031316386926666698

`2*A129062(∑[n+1]+1)-1`
-/

namespace A007047.P1031316386926666698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129062 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A007047.P1031316386926666698

/-! ## A007047.P16142770265804753158

`2*(A076726(n)-C(2, n+2))-1`
-/

namespace A007047.P16142770265804753158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A076726 n - (Nat.choose 2 (n + 2) : ℤ)) - 1

end

end A007047.P16142770265804753158

/-! ## A007047.P6719052085844556256

`2*lcm(ceil(sin(n)²)+1, A052875(n)+1)-1`
-/

namespace A007047.P6719052085844556256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.lcm (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) (A052875 n + 1) : ℤ) - 1

end

end A007047.P6719052085844556256

/-! ## A007047.P12867479130009926982

`A002050(n)+A000629(n)`
-/

namespace A007047.P12867479130009926982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 n + A000629 n

end

end A007047.P12867479130009926982

/-! ## A007047.P16196731480887298464

`A002050(n)+∑[A162509(n)]`
-/

namespace A007047.P16196731480887298464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007047.P16196731480887298464

/-!
# A007048: Number of irreducible positions of size n in Montreal solitaire.

The programs for A007048, there is no canonical definition to state claims against.
-/

/-! ## A007048.P16252859227900498884

`A110656(A021010(n)+A021006(n))`
-/

namespace A007048.P16252859227900498884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A021010 n + A021006 n).toNat

end

end A007048.P16252859227900498884

/-! ## A007048.P3064874415385863166

`A110656(A021006(n)+A204065(n+1)²)`
-/

namespace A007048.P3064874415385863166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A021006 n + A204065 (n + 1) ^ 2).toNat

end

end A007048.P3064874415385863166

/-! ## A007048.P238117228386444694

`A309237(n)+A076622(A346734(2*(n+1)))`
-/

namespace A007048.P238117228386444694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309237 n + A076622 (A346734 (2 * (n + 1))).toNat

end

end A007048.P238117228386444694

/-! ## A007048.P17941215458958279048

`A110656(A204065(3*n+5)+A021006(n))`
-/

namespace A007048.P17941215458958279048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A204065 (3 * n + 5) + A021006 n).toNat

end

end A007048.P17941215458958279048

/-!
# A007049: Number of irreducible positions of size n in Montreal solitaire.

The programs for A007049, there is no canonical definition to state claims against.
-/

/-! ## A007049.P8136447759549109860

`Δ[A195174(A206727(n+1))]`
-/

namespace A007049.P8136447759549109860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A206727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007049.P8136447759549109860

/-! ## A007049.P1240943703535601627

`A134478(A103433(n))+A103446(n)`
-/

namespace A007049.P1240943703535601627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A103433 n).toNat + A103446 n

end

end A007049.P1240943703535601627

/-! ## A007049.P2123509014712857789

`A327469(A000079(n))+A002605(n+1)`
-/

namespace A007049.P2123509014712857789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327469 (A000079 n).toNat + A002605 (n + 1)

end

end A007049.P2123509014712857789

/-!
# A007050: Number of irreducible positions of size n in Montreal solitaire.

The programs for A007050, there is no canonical definition to state claims against.
-/

/-! ## A007050.P5949478414085787480

`A213658(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A007050.P5949478414085787480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213658 (a (n - 1)).toNat + a (n - 1)

end

end A007050.P5949478414085787480

/-! ## A007050.P3612265412107676554

`A186708(A094981(n))`
-/

namespace A007050.P3612265412107676554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186708 (A094981 n).toNat

end

end A007050.P3612265412107676554

/-!
# A007051: a(n) = (3^n + 1)/2.

The programs for A007051, the canonical program `A007051.P7538091996316338365` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007051 has offset 0).

The definition of A007051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n+1)/2` (program `A007051.P4331382372942809537`, by `A007051.P4331382372942809537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007051.P7538091996316338365

`3*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007051

/-- `3*a(n-1)-1` -/
def P7538091996316338365.Spec : Prop :=
  ∀ n, P7538091996316338365.a n = A007051 n

theorem P7538091996316338365.correct : P7538091996316338365.Spec := by
  intro n
  simp only [A007051]

end A007051

/-! ## A007051.P4331382372942809537

`(3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007051.P4331382372942809537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℚ) / 2

end

end A007051.P4331382372942809537

namespace A007051

/-- `(3^n+1)/2` -/
def P4331382372942809537.Spec : Prop :=
  ∀ n, P4331382372942809537.a n = (A007051 n : ℚ)

theorem P4331382372942809537.correct : P4331382372942809537.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A007051, Nat.add_sub_cancel, A007051.P4331382372942809537.a, A007051.P7538091996316338365.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A007051, Nat.add_sub_cancel, A007051.P4331382372942809537.a, A007051.P7538091996316338365.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007051

/-! ## A007051.P1277487153098473380

`ogf((1-2x)/(1-4x+3x^2))`
-/

namespace A007051.P1277487153098473380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 3] n

end

end A007051.P1277487153098473380

namespace A007051

/-- `ogf((1-2x)/(1-4x+3x^2))` -/
def P1277487153098473380.Spec : Prop :=
  ∀ n, P1277487153098473380.a n = A007051 n

end A007051

/-! ## A007051.P13792174435400240913

`lcm(3, a(n-1))-1` with `a(0)=1`
-/

namespace A007051.P13792174435400240913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 1

end

end A007051.P13792174435400240913

namespace A007051

/-- `lcm(3, a(n-1))-1` -/
def P13792174435400240913.Spec : Prop :=
  ∀ n, P13792174435400240913.a n = A007051 n

end A007051

/-! ## A007051.P15406846655211678063

`∑[3^((n-1)%(n+1))]`
-/

namespace A007051.P15406846655211678063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007051.P15406846655211678063

namespace A007051

/-- `∑[3^((n-1)%(n+1))]` -/
def P15406846655211678063.Spec : Prop :=
  ∀ n, P15406846655211678063.a n = (A007051 n : ℚ)

end A007051

/-! ## A007051.P17641071140661555950

`abs(xor(∑[floor(3^(n-1))], -1))`
-/

namespace A007051.P17641071140661555950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)|

end

end A007051.P17641071140661555950

namespace A007051

/-- `abs(xor(∑[floor(3^(n-1))], -1))` -/
def P17641071140661555950.Spec : Prop :=
  ∀ n, P17641071140661555950.a n = A007051 n

end A007051

/-! ## A007051.P1286512383772581601

`3^(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A007051.P1286512383772581601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A007051.P1286512383772581601

namespace A007051

/-- `3^(n-1)+a(n-1)` -/
def P1286512383772581601.Spec : Prop :=
  ∀ n, P1286512383772581601.a n = (A007051 n : ℚ)

end A007051

/-! ## A007051.P18050279713559729087

`or(2, ∑[floor(3^(n-1))])-1`
-/

namespace A007051.P18050279713559729087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A007051.P18050279713559729087

namespace A007051

/-- `or(2, ∑[floor(3^(n-1))])-1` -/
def P18050279713559729087.Spec : Prop :=
  ∀ n, P18050279713559729087.a n = A007051 n

end A007051

/-! ## A007051.P5615637687209621543

`xor(2, ∑[floor(3^(n-1))])-1`
-/

namespace A007051.P5615637687209621543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A007051.P5615637687209621543

namespace A007051

/-- `xor(2, ∑[floor(3^(n-1))])-1` -/
def P5615637687209621543.Spec : Prop :=
  ∀ n, P5615637687209621543.a n = A007051 n

end A007051

/-! ## A007051.P17796002525997335758

`a(n-1)/cot(atan(3))-1` with `a(0)=1`
-/

namespace A007051.P17796002525997335758
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - 1

end

end A007051.P17796002525997335758

namespace A007051

/-- `a(n-1)/cot(atan(3))-1` -/
def P17796002525997335758.Spec : Prop :=
  ∀ n, P17796002525997335758.a n = (A007051 n : ℝ)

end A007051

/-! ## A007051.P2037027030292620459

`a(n-1)/sqrt(1/9)-1` with `a(0)=1`
-/

namespace A007051.P2037027030292620459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) - 1

end

end A007051.P2037027030292620459

namespace A007051

/-- `a(n-1)/sqrt(1/9)-1` -/
def P2037027030292620459.Spec : Prop :=
  ∀ n, P2037027030292620459.a n = (A007051 n : ℝ)

end A007051

/-! ## A007051.P16431478368971388195

`∑[a(n-2)/(1/3)²]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A007051.P16431478368971388195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007051.P16431478368971388195

namespace A007051

/-- `∑[a(n-2)/(1/3)²]` -/
def P16431478368971388195.Spec : Prop :=
  ∀ n, P16431478368971388195.a n = (A007051 n : ℚ)

end A007051

/-! ## A007051.P12952819102590474178

`3^(n-1)-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007051.P12952819102590474178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A007051.P12952819102590474178

namespace A007051

/-- `3^(n-1)-floor(-a(n-1))` -/
def P12952819102590474178.Spec : Prop :=
  ∀ n, P12952819102590474178.a n = (A007051 n : ℚ)

end A007051

/-! ## A007051.P10302067945323061541

`3^(n-1)-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A007051.P10302067945323061541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ)

end

end A007051.P10302067945323061541

namespace A007051

/-- `3^(n-1)-ceil(-a(n-1))` -/
def P10302067945323061541.Spec : Prop :=
  ∀ n, P10302067945323061541.a n = (A007051 n : ℚ)

end A007051

/-! ## A007051.P3781207596286637807

`3^(n-1)-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A007051.P3781207596286637807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ)

end

end A007051.P3781207596286637807

namespace A007051

/-- `3^(n-1)-round(-a(n-1))` -/
def P3781207596286637807.Spec : Prop :=
  ∀ n, P3781207596286637807.a n = (A007051 n : ℚ)

end A007051

/-! ## A007051.P1675372695430272216

`∑[3^(n-a(n-1)/floor(a(n-1)))]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007051.P1675372695430272216
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 : ℝ) ^ ((n : ℝ) - f1 (n - 1) / (⌊f1 (n - 1)⌋ : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007051.P1675372695430272216

namespace A007051

/-- `∑[3^(n-a(n-1)/floor(a(n-1)))]` -/
def P1675372695430272216.Spec : Prop :=
  ∀ n, P1675372695430272216.a n = (A007051 n : ℝ)

end A007051

/-! ## A007051.P17102009351110107070

`a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=1`
-/

namespace A007051.P17102009351110107070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - 1))

end

end A007051.P17102009351110107070

namespace A007051

/-- `a(n-1)+a(n-1)+a(n-1)-1` -/
def P17102009351110107070.Spec : Prop :=
  ∀ n, P17102009351110107070.a n = A007051 n

theorem P17102009351110107070.correct : P17102009351110107070.Spec := by
  intro n
  simp only [A007051, Nat.add_sub_cancel, A007051.P17102009351110107070.a, A007051.P7538091996316338365.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007051

/-! ## A007051.P18424451682443160948

`a(n-1)-(1-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A007051.P18424451682443160948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1))

end

end A007051.P18424451682443160948

namespace A007051

/-- `a(n-1)-(1-a(n-1)-a(n-1))` -/
def P18424451682443160948.Spec : Prop :=
  ∀ n, P18424451682443160948.a n = A007051 n

theorem P18424451682443160948.correct : P18424451682443160948.Spec := by
  intro n
  simp only [A007051, Nat.add_sub_cancel, A007051.P18424451682443160948.a, A007051.P7538091996316338365.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007051

/-! ## A007051.P13851782235328881222

`abs(A341463(n))`
-/

namespace A007051.P13851782235328881222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341463 n|

end

end A007051.P13851782235328881222

namespace A007051

/-- `abs(A341463(n))` -/
def P13851782235328881222.Spec : Prop :=
  ∀ n, P13851782235328881222.a n = A007051 n

end A007051

/-! ## A007051.P12957847831552907834

`∑[A133494(n)]`
-/

namespace A007051.P12957847831552907834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007051.P12957847831552907834

namespace A007051

/-- `∑[A133494(n)]` -/
def P12957847831552907834.Spec : Prop :=
  ∀ n, P12957847831552907834.a n = A007051 n

end A007051

/-!
# A007052: Number of order-consecutive partitions of n.

The programs for A007052, the canonical program `A007052.P1028179172353174515` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007052 has offset 0).

The definition of A007052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007052.P1028179172353174515

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007052

/-- `4*a(n-1)-2*a(n-2)` -/
def P1028179172353174515.Spec : Prop :=
  ∀ n, P1028179172353174515.a n = A007052 n

theorem P1028179172353174515.correct : P1028179172353174515.Spec := by
  intro n
  simp only [A007052]

end A007052

/-! ## A007052.P4859524956137623124

`A006012(n+1)/2`
-/

namespace A007052.P4859524956137623124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 (n + 1) : ℚ) / 2

end

end A007052.P4859524956137623124

namespace A007052

/-- `A006012(n+1)/2` -/
def P4859524956137623124.Spec : Prop :=
  ∀ n, P4859524956137623124.a n = (A007052 n : ℚ)

end A007052

/-! ## A007052.P7053972388734580518

`(A035344(n)+1)/2`
-/

namespace A007052.P7053972388734580518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035344 n + 1 : ℚ) / 2

end

end A007052.P7053972388734580518

namespace A007052

/-- `(A035344(n)+1)/2` -/
def P7053972388734580518.Spec : Prop :=
  ∀ n, P7053972388734580518.a n = (A007052 n : ℚ)

end A007052

/-! ## A007052.P1451030123679730933

`((2+sqrt(2))^(n+1)+(2-sqrt(2))^(n+1))/4`
-/

namespace A007052.P1451030123679730933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) ^ (n + 1) + (2 - Real.sqrt (2 : ℝ)) ^ (n + 1)) / 4

end

end A007052.P1451030123679730933

namespace A007052

/-- `((2+sqrt(2))^(n+1)+(2-sqrt(2))^(n+1))/4` -/
def P1451030123679730933.Spec : Prop :=
  ∀ n, P1451030123679730933.a n = (A007052 n : ℝ)

theorem P1451030123679730933.correct : P1451030123679730933.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A007052, Nat.add_sub_cancel, A007052.P1451030123679730933.a, A007052.P1028179172353174515.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A007052, Nat.add_sub_cancel, A007052.P1451030123679730933.a, A007052.P1028179172353174515.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A007052

/-! ## A007052.P10302061087686710439

`ogf((1-x)/(1-4x+2x^2))`
-/

namespace A007052.P10302061087686710439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, 2] n

end

end A007052.P10302061087686710439

namespace A007052

/-- `ogf((1-x)/(1-4x+2x^2))` -/
def P10302061087686710439.Spec : Prop :=
  ∀ n, P10302061087686710439.a n = A007052 n

end A007052

/-! ## A007052.P755609938265085151

`floor((sqrt(2)+2)*a(n-1))` with `a(0)=1`
-/

namespace A007052.P755609938265085151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A007052.P755609938265085151

namespace A007052

/-- `floor((sqrt(2)+2)*a(n-1))` -/
def P755609938265085151.Spec : Prop :=
  ∀ n, P755609938265085151.a n = A007052 n

end A007052

/-! ## A007052.P5609833248685473068

`round((sqrt(2)+2)*a(n-1))` with `a(0)=1`
-/

namespace A007052.P5609833248685473068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A007052.P5609833248685473068

namespace A007052

/-- `round((sqrt(2)+2)*a(n-1))` -/
def P5609833248685473068.Spec : Prop :=
  ∀ n, P5609833248685473068.a n = A007052 n

end A007052

/-! ## A007052.P15213080216834558060

`floor(2*a(n-1)/(2-sqrt(2)))` with `a(0)=1`
-/

namespace A007052.P15213080216834558060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

end

end A007052.P15213080216834558060

namespace A007052

/-- `floor(2*a(n-1)/(2-sqrt(2)))` -/
def P15213080216834558060.Spec : Prop :=
  ∀ n, P15213080216834558060.a n = A007052 n

end A007052

/-! ## A007052.P15538030210745542580

`Δ[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A007052.P15538030210745542580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007052.P15538030210745542580

namespace A007052

/-- `Δ[ceil((sqrt(2)+2)*a(n-1))]` -/
def P15538030210745542580.Spec : Prop :=
  ∀ n, P15538030210745542580.a n = A007052 n

end A007052

/-! ## A007052.P6314262975204411476

`∑[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A007052.P6314262975204411476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007052.P6314262975204411476

namespace A007052

/-- `∑[ceil((sqrt(2)+2)*a(n-1))]` -/
def P6314262975204411476.Spec : Prop :=
  ∀ n, P6314262975204411476.a n = A007052 n

end A007052

/-! ## A007052.P11323900364637192643

`∑[A003480(n)]`
-/

namespace A007052.P11323900364637192643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007052.P11323900364637192643

namespace A007052

/-- `∑[A003480(n)]` -/
def P11323900364637192643.Spec : Prop :=
  ∀ n, P11323900364637192643.a n = A007052 n

end A007052

/-! ## A007052.P9155954145185824935

`A062113(2*n)`
-/

namespace A007052.P9155954145185824935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n)

end

end A007052.P9155954145185824935

namespace A007052

/-- `A062113(2*n)` -/
def P9155954145185824935.Spec : Prop :=
  ∀ n, P9155954145185824935.a n = A007052 n

end A007052

/-! ## A007052.P6028064817387811565

`A030436(Δ[n²])`
-/

namespace A007052.P6028064817387811565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007052.P6028064817387811565

namespace A007052

/-- `A030436(Δ[n²])` -/
def P6028064817387811565.Spec : Prop :=
  ∀ n, P6028064817387811565.a n = A007052 n

end A007052

/-! ## A007052.P6210135456852889641

`round(A035344(n)/2)`
-/

namespace A007052.P6210135456852889641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A035344 n : ℚ) / 2)

end

end A007052.P6210135456852889641

namespace A007052

/-- `round(A035344(n)/2)` -/
def P6210135456852889641.Spec : Prop :=
  ∀ n, P6210135456852889641.a n = A007052 n

end A007052

/-! ## A007052.P14741969040024583289

`Δ[A062112(2*n)]`
-/

namespace A007052.P14741969040024583289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007052.P14741969040024583289

namespace A007052

/-- `Δ[A062112(2*n)]` -/
def P14741969040024583289.Spec : Prop :=
  ∀ n, P14741969040024583289.a n = A007052 n

end A007052

/-! ## A007052.P15533452332524835324

`Δ[A121720(Δ[n²])]`
-/

namespace A007052.P15533452332524835324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007052.P15533452332524835324

namespace A007052

/-- `Δ[A121720(Δ[n²])]` -/
def P15533452332524835324.Spec : Prop :=
  ∀ n, P15533452332524835324.a n = A007052 n

end A007052

/-! ## A007052.P10949890499687909755

`A121720(2*(n+1))`
-/

namespace A007052.P10949890499687909755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (2 * (n + 1))

end

end A007052.P10949890499687909755

namespace A007052

/-- `A121720(2*(n+1))` -/
def P10949890499687909755.Spec : Prop :=
  ∀ n, P10949890499687909755.a n = A007052 n

end A007052

/-! ## A007052.P12431870613535380535

`round(A007070(n)/root(2, 2))`
-/

namespace A007052.P12431870613535380535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007070 n : ℝ) / (2 : ℝ) ^ (1 / (2 : ℝ)))

end

end A007052.P12431870613535380535

namespace A007052

/-- `round(A007070(n)/root(2, 2))` -/
def P12431870613535380535.Spec : Prop :=
  ∀ n, P12431870613535380535.a n = A007052 n

end A007052

/-! ## A007052.P8372584348010157997

`A024175(n+2)-2^n`
-/

namespace A007052.P8372584348010157997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 2) - (2 ^ n : ℤ)

end

end A007052.P8372584348010157997

namespace A007052

/-- `A024175(n+2)-2^n` -/
def P8372584348010157997.Spec : Prop :=
  ∀ n, P8372584348010157997.a n = A007052 n

end A007052

/-! ## A007052.P12135058079829481150

`A007068(A004277(n))`
-/

namespace A007052.P12135058079829481150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (A004277 n).toNat

end

end A007052.P12135058079829481150

namespace A007052

/-- `A007068(A004277(n))` -/
def P12135058079829481150.Spec : Prop :=
  ∀ n, P12135058079829481150.a n = A007052 n

end A007052

/-!
# A007053: Number of primes <= 2^n.

The programs for A007053, the canonical program `A007053.P11937930420977623127` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007053 has offset 0).

The definition of A007053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007053.P11937930420977623127

`A060967(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007053

/-- `A060967(2*n)` -/
def P11937930420977623127.Spec : Prop :=
  ∀ n, P11937930420977623127.a n = A007053 n

theorem P11937930420977623127.correct : P11937930420977623127.Spec := by
  intro n
  simp only [A007053]

end A007053

/-! ## A007053.P14181227477648373099

`A000720(2^n)`
-/

namespace A007053.P14181227477648373099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 ^ n)

end

end A007053.P14181227477648373099

namespace A007053

/-- `A000720(2^n)` -/
def P14181227477648373099.Spec : Prop :=
  ∀ n, P14181227477648373099.a n = A007053 n

end A007053

/-! ## A007053.P17359916877743291058

`∑[A036378(round(acot(n)+n)-1)]-1`
-/

namespace A007053.P17359916877743291058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007053.P17359916877743291058

namespace A007053

/-- `∑[A036378(round(acot(n)+n)-1)]-1` -/
def P17359916877743291058.Spec : Prop :=
  ∀ n, P17359916877743291058.a n = A007053 n

end A007053

/-! ## A007053.P17549562793764717856

`∑[A036378(n)]-A036378(n)`
-/

namespace A007053.P17549562793764717856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036378 n

end

end A007053.P17549562793764717856

namespace A007053

/-- `∑[A036378(n)]-A036378(n)` -/
def P17549562793764717856.Spec : Prop :=
  ∀ n, P17549562793764717856.a n = A007053 n

end A007053

/-! ## A007053.P7328928755329059118

`A182908(n+1)-(A036386(n+1)+A036378(n))`
-/

namespace A007053.P7328928755329059118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) - (A036386 (n + 1) + A036378 n)

end

end A007053.P7328928755329059118

namespace A007053

/-- `A182908(n+1)-(A036386(n+1)+A036378(n))` -/
def P7328928755329059118.Spec : Prop :=
  ∀ n, P7328928755329059118.a n = A007053 n

end A007053

/-! ## A007053.P4524149786957668302

`A185192(n+2)-(A036378(n+1)+A036378(n))`
-/

namespace A007053.P4524149786957668302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 2) - (A036378 (n + 1) + A036378 n)

end

end A007053.P4524149786957668302

namespace A007053

/-- `A185192(n+2)-(A036378(n+1)+A036378(n))` -/
def P4524149786957668302.Spec : Prop :=
  ∀ n, P4524149786957668302.a n = A007053 n

end A007053

/-! ## A007053.P6612338811606666043

`A060971(5*n)`
-/

namespace A007053.P6612338811606666043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060971 (5 * n)

end

end A007053.P6612338811606666043

namespace A007053

/-- `A060971(5*n)` -/
def P6612338811606666043.Spec : Prop :=
  ∀ n, P6612338811606666043.a n = A007053 n

end A007053

/-! ## A007053.P10143053216388625327

`record[A060967(A014681(n))]`
-/

namespace A007053.P10143053216388625327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007053.P10143053216388625327

namespace A007053

/-- `record[A060967(A014681(n))]` -/
def P10143053216388625327.Spec : Prop :=
  ∀ n, P10143053216388625327.a n = A007053 n

end A007053

/-! ## A007053.P664604847986705865

`record[A060967(A220080(n))]`
-/

namespace A007053.P664604847986705865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A220080 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007053.P664604847986705865

namespace A007053

/-- `record[A060967(A220080(n))]` -/
def P664604847986705865.Spec : Prop :=
  ∀ n, P664604847986705865.a n = A007053 n

end A007053

/-! ## A007053.P12356290836683193760

`record[A060967(A185048(n+1))]`
-/

namespace A007053.P12356290836683193760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A185048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007053.P12356290836683193760

namespace A007053

/-- `record[A060967(A185048(n+1))]` -/
def P12356290836683193760.Spec : Prop :=
  ∀ n, P12356290836683193760.a n = A007053 n

end A007053

/-!
# A007054: Super ballot numbers: 6(2n)!/(n!(n+2)!).

The programs for A007054, the canonical program `A007054.P7178060541691833380` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007054 has offset 0).

The definition of A007054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007054.P7178060541691833380

`4*A000108(n)-A000108(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007054

/-- `4*A000108(n)-A000108(n+1)` -/
def P7178060541691833380.Spec : Prop :=
  ∀ n, P7178060541691833380.a n = A007054 n

theorem P7178060541691833380.correct : P7178060541691833380.Spec := by
  intro n
  simp only [A007054]

end A007054

/-! ## A007054.P13702227480673761209

`A000108(n)*6/(n+2)`
-/

namespace A007054.P13702227480673761209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * 6 : ℚ) / (n + 2 : ℚ)

end

end A007054.P13702227480673761209

namespace A007054

/-- `A000108(n)*6/(n+2)` -/
def P13702227480673761209.Spec : Prop :=
  ∀ n, P13702227480673761209.a n = (A007054 n : ℚ)

end A007054

/-! ## A007054.P15703130465135666856

`6*(2*n)!/(n!*(n+2)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007054.P15703130465135666856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 2) : ℚ)

end

end A007054.P15703130465135666856

namespace A007054

/-- `6*(2*n)!/(n!*(n+2)!)` -/
def P15703130465135666856.Spec : Prop :=
  ∀ n, P15703130465135666856.a n = (A007054 n : ℚ)

end A007054

/-! ## A007054.P5855757315382376688

`abs(A184881(n+1))`
-/

namespace A007054.P5855757315382376688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184881 (n + 1)|

end

end A007054.P5855757315382376688

namespace A007054

/-- `abs(A184881(n+1))` -/
def P5855757315382376688.Spec : Prop :=
  ∀ n, P5855757315382376688.a n = A007054 n

end A007054

/-! ## A007054.P15173438251749766476

`A002421(n+2)/2`
-/

namespace A007054.P15173438251749766476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 (n + 2) : ℚ) / 2

end

end A007054.P15173438251749766476

namespace A007054

/-- `A002421(n+2)/2` -/
def P15173438251749766476.Spec : Prop :=
  ∀ n, P15173438251749766476.a n = (A007054 n : ℚ)

end A007054

/-! ## A007054.P622786392734033300

`A033999(n+1)*A184881(n+1)`
-/

namespace A007054.P622786392734033300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A184881 (n + 1)

end

end A007054.P622786392734033300

namespace A007054

/-- `A033999(n+1)*A184881(n+1)` -/
def P622786392734033300.Spec : Prop :=
  ∀ n, P622786392734033300.a n = A007054 n

end A007054

/-! ## A007054.P2394418228168203326

`A101488(n+1)+A101488(n)+A000007(n)`
-/

namespace A007054.P2394418228168203326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101488 (n + 1) + (A101488 n + A000007 n)

end

end A007054.P2394418228168203326

namespace A007054

/-- `A101488(n+1)+A101488(n)+A000007(n)` -/
def P2394418228168203326.Spec : Prop :=
  ∀ n, P2394418228168203326.a n = A007054 n

end A007054

/-! ## A007054.P10132165911362031621

`A056594(2*n+1)-A056594(2*n)*A184881(n+1)`
-/

namespace A007054.P10132165911362031621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A056594 (2 * n) * A184881 (n + 1)

end

end A007054.P10132165911362031621

namespace A007054

/-- `A056594(2*n+1)-A056594(2*n)*A184881(n+1)` -/
def P10132165911362031621.Spec : Prop :=
  ∀ n, P10132165911362031621.a n = A007054 n

end A007054

/-! ## A007054.P11596363855974913247

`6/(n+2)*abs(A168491(n))`
-/

namespace A007054.P11596363855974913247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (n + 2 : ℚ) * (|A168491 n| : ℚ)

end

end A007054.P11596363855974913247

namespace A007054

/-- `6/(n+2)*abs(A168491(n))` -/
def P11596363855974913247.Spec : Prop :=
  ∀ n, P11596363855974913247.a n = (A007054 n : ℚ)

end A007054

/-! ## A007054.P15823067193072063620

`A115143(n+2)+A068875(n)`
-/

namespace A007054.P15823067193072063620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 (n + 2) + A068875 n

end

end A007054.P15823067193072063620

namespace A007054

/-- `A115143(n+2)+A068875(n)` -/
def P15823067193072063620.Spec : Prop :=
  ∀ n, P15823067193072063620.a n = A007054 n

end A007054

/-! ## A007054.P6369242733080267690

`A126079(n+2)+A000108(n+1)`
-/

namespace A007054.P6369242733080267690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126079 (n + 2) + A000108 (n + 1)

end

end A007054.P6369242733080267690

namespace A007054

/-- `A126079(n+2)+A000108(n+1)` -/
def P6369242733080267690.Spec : Prop :=
  ∀ n, P6369242733080267690.a n = A007054 n

end A007054

/-! ## A007054.P15481350229586541233

`A126079(n+2)-A246432(n+2)`
-/

namespace A007054.P15481350229586541233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126079 (n + 2) - A246432 (n + 2)

end

end A007054.P15481350229586541233

namespace A007054

/-- `A126079(n+2)-A246432(n+2)` -/
def P15481350229586541233.Spec : Prop :=
  ∀ n, P15481350229586541233.a n = A007054 n

end A007054

/-! ## A007054.P3867644180528958201

`A126324(2*n+1)-Δ[A126324(2*n)]`
-/

namespace A007054.P3867644180528958201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A007054.P3867644180528958201

namespace A007054

/-- `A126324(2*n+1)-Δ[A126324(2*n)]` -/
def P3867644180528958201.Spec : Prop :=
  ∀ n, P3867644180528958201.a n = A007054 n

end A007054

/-! ## A007054.P6266854411382646125

`A038629(n)/(n+1)`
-/

namespace A007054.P6266854411382646125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038629 n : ℚ) / (n + 1 : ℚ)

end

end A007054.P6266854411382646125

namespace A007054

/-- `A038629(n)/(n+1)` -/
def P6266854411382646125.Spec : Prop :=
  ∀ n, P6266854411382646125.a n = (A007054 n : ℚ)

end A007054

/-! ## A007054.P17495600820926088296

`A120589(n+2)/Δ[n²]`
-/

namespace A007054.P17495600820926088296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120589 (n + 2) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A007054.P17495600820926088296

namespace A007054

/-- `A120589(n+2)/Δ[n²]` -/
def P17495600820926088296.Spec : Prop :=
  ∀ n, P17495600820926088296.a n = (A007054 n : ℚ)

end A007054

/-! ## A007054.P10207644550093377993

`A038629(n)-2*A000245(n)`
-/

namespace A007054.P10207644550093377993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038629 n - 2 * A000245 n

end

end A007054.P10207644550093377993

namespace A007054

/-- `A038629(n)-2*A000245(n)` -/
def P10207644550093377993.Spec : Prop :=
  ∀ n, P10207644550093377993.a n = A007054 n

end A007054

/-! ## A007054.P5684744594518644161

`2/A016789(n)*A376161(n)`
-/

namespace A007054.P5684744594518644161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A016789 n : ℚ) * (A376161 n : ℚ)

end

end A007054.P5684744594518644161

namespace A007054

/-- `2/A016789(n)*A376161(n)` -/
def P5684744594518644161.Spec : Prop :=
  ∀ n, P5684744594518644161.a n = (A007054 n : ℚ)

end A007054

/-! ## A007054.P8592579017654111443

`record[A126324(A093178(n))]/(2*n+1)`
-/

namespace A007054.P8592579017654111443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (A093178 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 * n + 1 : ℚ)

end

end A007054.P8592579017654111443

namespace A007054

/-- `record[A126324(A093178(n))]/(2*n+1)` -/
def P8592579017654111443.Spec : Prop :=
  ∀ n, P8592579017654111443.a n = (A007054 n : ℚ)

end A007054

/-!
# A007055: Let S denote the palindromes in the language {0,1}*; a(n) = number of words of length n in the language SS.

The programs for A007055, the canonical program `A007055.P13796273063229323987` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007055 has offset 0).

The definition of A007055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007055.P13796273063229323987

`(A057427(n)+1)*A180249(A028310(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A007055

/-- `(A057427(n)+1)*A180249(A028310(n))` -/
def P13796273063229323987.Spec : Prop :=
  ∀ n, P13796273063229323987.a n = A007055 n

theorem P13796273063229323987.correct : P13796273063229323987.Spec := by
  intro n
  simp only [A007055]

end A007055

/-! ## A007055.P13611151029010020823

`A000005(A006005(n+1))*A180249(A028310(n))`
-/

namespace A007055.P13611151029010020823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006005 (n + 1)).toNat * A180249 (A028310 n).toNat

end

end A007055.P13611151029010020823

namespace A007055

/-- `A000005(A006005(n+1))*A180249(A028310(n))` -/
def P13611151029010020823.Spec : Prop :=
  ∀ n, P13611151029010020823.a n = A007055 n

end A007055

/-! ## A007055.P9198621660827421706

`A000124(A019426(2*n))*A180249(A028310(n))`
-/

namespace A007055.P9198621660827421706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A019426 (2 * n)).toNat * A180249 (A028310 n).toNat

end

end A007055.P9198621660827421706

namespace A007055

/-- `A000124(A019426(2*n))*A180249(A028310(n))` -/
def P9198621660827421706.Spec : Prop :=
  ∀ n, P9198621660827421706.a n = A007055 n

end A007055

/-! ## A007055.P5257534535869301652

`A020639(A000010(2*(n+1)))*A180249(A028310(n))`
-/

namespace A007055.P5257534535869301652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (2 * (n + 1))).toNat * A180249 (A028310 n).toNat

end

end A007055.P5257534535869301652

namespace A007055

/-- `A020639(A000010(2*(n+1)))*A180249(A028310(n))` -/
def P5257534535869301652.Spec : Prop :=
  ∀ n, P5257534535869301652.a n = A007055 n

end A007055

/-! ## A007055.P8990776124882230317

`A284873(A212342(n+1))`
-/

namespace A007055.P8990776124882230317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (A212342 (n + 1)).toNat

end

end A007055.P8990776124882230317

namespace A007055

/-- `A284873(A212342(n+1))` -/
def P8990776124882230317.Spec : Prop :=
  ∀ n, P8990776124882230317.a n = A007055 n

end A007055

/-! ## A007055.P16138853160822946079

`A284873(A027379(n)-n)`
-/

namespace A007055.P16138853160822946079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (A027379 n - (n : ℤ)).toNat

end

end A007055.P16138853160822946079

namespace A007055

/-- `A284873(A027379(n)-n)` -/
def P16138853160822946079.Spec : Prop :=
  ∀ n, P16138853160822946079.a n = A007055 n

end A007055

/-! ## A007055.P14040304389592316776

`A284873(record[abs(A080956(n))])`
-/

namespace A007055.P14040304389592316776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080956 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007055.P14040304389592316776

namespace A007055

/-- `A284873(record[abs(A080956(n))])` -/
def P14040304389592316776.Spec : Prop :=
  ∀ n, P14040304389592316776.a n = A007055 n

end A007055

/-! ## A007055.P5269450735018278273

`A284873(A134479(n)-n²)`
-/

namespace A007055.P5269450735018278273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (A134479 n - (n ^ 2 : ℤ)).toNat

end

end A007055.P5269450735018278273

namespace A007055

/-- `A284873(A134479(n)-n²)` -/
def P5269450735018278273.Spec : Prop :=
  ∀ n, P5269450735018278273.a n = A007055 n

end A007055

/-!
# A007056: Let S denote the palindromes in the language {0,1,2}*; a(n) = number of words of length n in the language SS.

The programs for A007056, there is no canonical definition to state claims against.
-/

/-! ## A007056.P14302279011575621973

`A284873(∑[n+2]-1)`
-/

namespace A007056.P14302279011575621973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007056.P14302279011575621973

/-! ## A007056.P17127220924524951758

`or(1, A284873(A034856(n+1)))`
-/

namespace A007056.P17127220924524951758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284873 (A034856 (n + 1)).toNat)

end

end A007056.P17127220924524951758

/-! ## A007056.P4219577446440575140

`record[A284873(n+1)/A284855(n+3)]`
-/

namespace A007056.P4219577446440575140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284873 (n + 1) : ℚ) / (A284855 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007056.P4219577446440575140

/-! ## A007056.P15884075438491105678

`record[A284873(n+1)/A284873(n+3)]`
-/

namespace A007056.P15884075438491105678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284873 (n + 1) : ℚ) / (A284873 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007056.P15884075438491105678

/-! ## A007056.P3158101346288758772

`A284873(A034856(n+1))%A020727(n+1)`
-/

namespace A007056.P3158101346288758772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284873 (A034856 (n + 1)).toNat) (A020727 (n + 1))

end

end A007056.P3158101346288758772

/-!
# A007057: Let S denote the palindromes in the language {0,1,2,3}*; a(n) = number of words of length n in the language SS.

The programs for A007057, there is no canonical definition to state claims against.
-/

/-! ## A007057.P16433182561102115223

`A284873(∑[n+3])`
-/

namespace A007057.P16433182561102115223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007057.P16433182561102115223

/-! ## A007057.P1114680041091017244

`A284873(A027379(n+1))+C(n, n+1)`
-/

namespace A007057.P1114680041091017244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (A027379 (n + 1)).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A007057.P1114680041091017244

/-! ## A007057.P16136138928873518667

`record[A284873(A027379(A008611(n)))]`
-/

namespace A007057.P16136138928873518667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007057.P16136138928873518667

/-! ## A007057.P4577336332005441007

`record[A284873(A027379(A008612(n)))]`
-/

namespace A007057.P4577336332005441007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (A027379 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007057.P4577336332005441007

/-! ## A007057.P14441615108315869477

`A033999(n)²*A284873(A027379(n+1))`
-/

namespace A007057.P14441615108315869477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A284873 (A027379 (n + 1)).toNat

end

end A007057.P14441615108315869477

/-!
# A007058: Let S denote the palindromes in the language {0,1,2,3,4}*; a(n) = number of words of length n in the language SS.

The programs for A007058, there is no canonical definition to state claims against.
-/

/-! ## A007058.P8178175892007993325

`A284873(∑[n+3]+n+3)`
-/

namespace A007058.P8178175892007993325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284873 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A007058.P8178175892007993325

/-! ## A007058.P10084868220816544209

`A008996(A026677(n))+A002939(n)`
-/

namespace A007058.P10084868220816544209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008996 (A026677 n).toNat + A002939 n

end

end A007058.P10084868220816544209

/-!
# A007059: Number of balanced ordered trees with n nodes.

The programs for A007059, there is no canonical definition to state claims against.
-/

/-! ## A007059.P12014674767469403116

`∑[A368279(abs(1-n))]`
-/

namespace A007059.P12014674767469403116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007059.P12014674767469403116

/-! ## A007059.P15421602460631815209

`A079500(A004273(n)-n)-A000007(n)`
-/

namespace A007059.P15421602460631815209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (A004273 n - (n : ℤ)).toNat - A000007 n

end

end A007059.P15421602460631815209

/-! ## A007059.P7705924126291853681

`A079500(n)-A368279(n)`
-/

namespace A007059.P7705924126291853681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - A368279 n

end

end A007059.P7705924126291853681

/-! ## A007059.P9753912722750485095

`Δ[A186537(A004273(n)-n)]`
-/

namespace A007059.P9753912722750485095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007059.P9753912722750485095

/-! ## A007059.P16225998824289804089

`Δ[A186537(A008486(n)-A005408(n))]`
-/

namespace A007059.P16225998824289804089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (A008486 n - A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007059.P16225998824289804089

/-! ## A007059.P17455741062617425850

`A186537(n)-A186537(A004273(n)-n)`
-/

namespace A007059.P17455741062617425850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 n - A186537 (A004273 n - (n : ℤ)).toNat

end

end A007059.P17455741062617425850

/-! ## A007059.P8096929933249048631

`A368279(n+1)+A188541(n)-A368279(n)`
-/

namespace A007059.P8096929933249048631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 (n + 1) + (A188541 n - A368279 n)

end

end A007059.P8096929933249048631

/-! ## A007059.P6669537271348455630

`A186537(n)-A186537(A008486(n)-A005408(n))`
-/

namespace A007059.P6669537271348455630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 n - A186537 (A008486 n - A005408 n).toNat

end

end A007059.P6669537271348455630

/-! ## A007059.P4272768887602330917

`A186537(n+1)-(A368279(n)+A186537(n))`
-/

namespace A007059.P4272768887602330917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (n + 1) - (A368279 n + A186537 n)

end

end A007059.P4272768887602330917

/-! ## A007059.P3786410978213388634

`A186537(n)-A186537(log2(A011782(n)))`
-/

namespace A007059.P3786410978213388634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 n - A186537 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A007059.P3786410978213388634

/-! ## A007059.P13493086072587255187

`Δ[A186537(log2(A011782(n)))]`
-/

namespace A007059.P13493086072587255187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007059.P13493086072587255187

/-! ## A007059.P6747183895944648027

`2*A336482(n)-∑[A336482(n)]`
-/

namespace A007059.P6747183895944648027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336482 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007059.P6747183895944648027

/-!
# A007060: Number of ways n married couples can sit in a row without any spouses next to each other.

The programs for A007060, the canonical program `A007060.P7949521212954175074` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007060 has offset 0).

The definition of A007060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007060.P7949521212954175074

`2*n*((2*n-1)*a(n-1)+(2*n-2)*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007060

/-- `2*n*((2*n-1)*a(n-1)+(2*n-2)*a(n-2))` -/
def P7949521212954175074.Spec : Prop :=
  ∀ n, P7949521212954175074.a n = A007060 n

theorem P7949521212954175074.correct : P7949521212954175074.Spec := by
  intro n
  simp only [A007060]

end A007060

/-! ## A007060.P6834408565715149455

`A173841(2*n)`
-/

namespace A007060.P6834408565715149455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173841 (2 * n)

end

end A007060.P6834408565715149455

namespace A007060

/-- `A173841(2*n)` -/
def P6834408565715149455.Spec : Prop :=
  ∀ n, P6834408565715149455.a n = A007060 n

end A007060

/-! ## A007060.P12353873831485187305

`2^n*A114938(n)`
-/

namespace A007060.P12353873831485187305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A114938 n

end

end A007060.P12353873831485187305

namespace A007060

/-- `2^n*A114938(n)` -/
def P12353873831485187305.Spec : Prop :=
  ∀ n, P12353873831485187305.a n = A007060 n

end A007060

/-! ## A007060.P7238436507350128240

`(-1)^n*2^n*n!*A000806(n)`
-/

namespace A007060.P7238436507350128240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (2 ^ n : ℤ) * (Nat.factorial n : ℤ) * A000806 n

end

end A007060.P7238436507350128240

namespace A007060

/-- `(-1)^n*2^n*n!*A000806(n)` -/
def P7238436507350128240.Spec : Prop :=
  ∀ n, P7238436507350128240.a n = A007060 n

end A007060

/-! ## A007060.P9866355757527201565

`A193639(∑[n])`
-/

namespace A007060.P9866355757527201565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007060.P9866355757527201565

namespace A007060

/-- `A193639(∑[n])` -/
def P9866355757527201565.Spec : Prop :=
  ∀ n, P9866355757527201565.a n = A007060 n

end A007060

/-!
# A007061: The Ehrenfeucht-Mycielski sequence (1,2-version): a maximally unpredictable sequence.

The programs for A007061, there is no canonical definition to state claims against.
-/

/-! ## A007061.P833597020956837794

`A038219(n+1)+1`
-/

namespace A007061.P833597020956837794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (n + 1) + 1

end

end A007061.P833597020956837794

/-! ## A007061.P5490595100593075106

`char[A253061(n+1)-1]+1`
-/

namespace A007061.P5490595100593075106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253061 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A007061.P5490595100593075106

/-! ## A007061.P18117098871471567427

`A000034((2*n+3)*A182310(n))`
-/

namespace A007061.P18117098871471567427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((2 * n + 3 : ℤ) * A182310 n).toNat

end

end A007061.P18117098871471567427

/-! ## A007061.P7743162841601309949

`A000034(A182310(n)^A001468(n))`
-/

namespace A007061.P7743162841601309949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.roundAway ((A182310 n : ℚ) ^ (A001468 n : ℤ))).toNat

end

end A007061.P7743162841601309949

/-! ## A007061.P2197366863372590918

`A000034(and(A182310(n)², A001546(n)))`
-/

namespace A007061.P2197366863372590918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.land (A182310 n ^ 2) (A001546 n)).toNat

end

end A007061.P2197366863372590918

/-!
# A007062: Let P(n) of a sequence s(1),s(2),s(3),... be obtained by leaving s(1),...,s(n) fixed and reversing every n consecutive terms thereafter; apply P(2) to 1,2,3,... to get PS(2), then apply P(3) to PS(2) to get PS(3), then apply P(4) to PS(3), etc. This sequence is the limit of PS(n).

The programs for A007062, there is no canonical definition to state claims against.
-/

/-! ## A007062.P5380065753665943313

`∑[A057031(abs(2-n)+1)]-1`
-/

namespace A007062.P5380065753665943313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057031 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007062.P5380065753665943313

/-! ## A007062.P14336818629149410686

`A057030(n)+a(val(n, n+1))` with `a(0)=1`
-/

namespace A007062.P14336818629149410686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057030 n + a (SequenceMachineLib.valuation n (n + 1))

end

end A007062.P14336818629149410686

/-! ## A007062.P15156458378226568123

`A057031(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A007062.P15156458378226568123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A057031 (n - 1) + a (n - 1)

end

end A007062.P15156458378226568123

/-! ## A007062.P5287312969826315883

`A057427(n)+A057030(A028310(n))`
-/

namespace A007062.P5287312969826315883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A057030 (A028310 n).toNat

end

end A007062.P5287312969826315883

/-! ## A007062.P2418256186148465797

`A057030(A028310(n))-A057428(n)`
-/

namespace A007062.P2418256186148465797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 (A028310 n).toNat - A057428 n

end

end A007062.P2418256186148465797

/-! ## A007062.P18385124034492600727

`A057030(A028310(n))+A000035(ceil(n/(n+1)))`
-/

namespace A007062.P18385124034492600727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 (A028310 n).toNat + A000035 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A007062.P18385124034492600727

/-! ## A007062.P10343377105230012578

`A057030(A028310(n))+A003817(ceil(n/(n+1)))`
-/

namespace A007062.P10343377105230012578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 (A028310 n).toNat + A003817 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A007062.P10343377105230012578

/-! ## A007062.P9830943172953032281

`A171967(ceil(n/(n+1)))+A057030(A028310(n))`
-/

namespace A007062.P9830943172953032281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171967 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat + A057030 (A028310 n).toNat

end

end A007062.P9830943172953032281

/-!
# A007063: Main diagonal of Kimberling's expulsion array (A035486).

The programs for A007063, there is no canonical definition to state claims against.
-/

/-! ## A007063.P7481325897554098072

`A035486(∑[4*n]+1)`
-/

namespace A007063.P7481325897554098072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035486 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007063.P7481325897554098072

/-! ## A007063.P6953184275862700050

`A035486(A001844(n))%178`
-/

namespace A007063.P6953184275862700050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035486 (A001844 n).toNat) 178

end

end A007063.P6953184275862700050

/-! ## A007063.P17085860353447407711

`gcd(A000038(n), A035486(A001844(n)))`
-/

namespace A007063.P17085860353447407711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035486 (A001844 n).toNat)

end

end A007063.P17085860353447407711

/-! ## A007063.P6810281507570417778

`A007318(∑[n])*A035486(A001844(n))`
-/

namespace A007063.P6810281507570417778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A035486 (A001844 n).toNat

end

end A007063.P6810281507570417778

/-! ## A007063.P16840324746590764729

`A000045(A020639(2*(n+1)))*A035486(A001844(n))`
-/

namespace A007063.P16840324746590764729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A035486 (A001844 n).toNat

end

end A007063.P16840324746590764729

/-!
# A007064: Numbers not of form "nearest integer to n*tau", tau = (1+sqrt(5))/2.

The programs for A007064, the canonical program `A007064.P15353569760162023814` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007064 has offset 1).

The definition of A007064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007064.P5551714062944745932

`comp[round(ϕ*n)]`
-/

namespace A007064.P5551714062944745932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007064.P5551714062944745932

namespace A007064

/-- `comp[round(ϕ*n)]` -/
def P5551714062944745932.Spec : Prop :=
  ∀ n, (P5551714062944745932.a n : ℤ) = A007064 (n + 1)

end A007064

/-! ## A007064.P15353569760162023814

`ceil(A001966(n)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007064

/-- `ceil(A001966(n)/2)` -/
def P15353569760162023814.Spec : Prop :=
  ∀ n, P15353569760162023814.a n = A007064 (n + 1)

theorem P15353569760162023814.correct : P15353569760162023814.Spec := by
  intro n
  simp only [A007064, Nat.add_sub_cancel]

end A007064

/-! ## A007064.P11342487018905396471

`floor(A184517(n+1)/2)`
-/

namespace A007064.P11342487018905396471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184517 (n + 1) : ℚ) / 2⌋

end

end A007064.P11342487018905396471

namespace A007064

/-- `floor(A184517(n+1)/2)` -/
def P11342487018905396471.Spec : Prop :=
  ∀ n, P11342487018905396471.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P3201799242570919314

`round(A035487(n+1)/ϕ)`
-/

namespace A007064.P3201799242570919314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A035487 (n + 1) : ℝ) / Real.goldenRatio)

end

end A007064.P3201799242570919314

namespace A007064

/-- `round(A035487(n+1)/ϕ)` -/
def P3201799242570919314.Spec : Prop :=
  ∀ n, P3201799242570919314.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P3041421765166249729

`(A380804(n+1)+n+1)/2`
-/

namespace A007064.P3041421765166249729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380804 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A007064.P3041421765166249729

namespace A007064

/-- `(A380804(n+1)+n+1)/2` -/
def P3041421765166249729.Spec : Prop :=
  ∀ n, P3041421765166249729.a n = (A007064 (n + 1) : ℚ)

theorem P3041421765166249729.correct : P3041421765166249729.Spec := by
  intro n
  simp only [A007064, Nat.add_sub_cancel, A007064.P3041421765166249729.a, A007064.P15353569760162023814.a, A001966, A001966.P7022639990780230216.a, A380804, A380804.P3432496646295256472.a, A001965, A001965.P8161936400494253645.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007064

/-! ## A007064.P15433346691262785788

`round((A184516(n+1)+3*n+1)/ϕ)`
-/

namespace A007064.P15433346691262785788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184516 (n + 1) + (3 * n + 1 : ℤ) : ℝ) / Real.goldenRatio)

end

end A007064.P15433346691262785788

namespace A007064

/-- `round((A184516(n+1)+3*n+1)/ϕ)` -/
def P15433346691262785788.Spec : Prop :=
  ∀ n, P15433346691262785788.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P11706121672576969503

`A035488(n)-A035487(n+1)`
-/

namespace A007064.P11706121672576969503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 n - A035487 (n + 1)

end

end A007064.P11706121672576969503

namespace A007064

/-- `A035488(n)-A035487(n+1)` -/
def P11706121672576969503.Spec : Prop :=
  ∀ n, P11706121672576969503.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P8358455927188725277

`∪[A140399(n+1), A035510(n)]`
-/

namespace A007064.P8358455927188725277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035510 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007064.P8358455927188725277

namespace A007064

/-- `∪[A140399(n+1), A035510(n)]` -/
def P8358455927188725277.Spec : Prop :=
  ∀ n, (P8358455927188725277.a n : ℤ) = A007064 (n + 1)

end A007064

/-! ## A007064.P1705761485521968395

`A035488(n)+n-A001966(n)`
-/

namespace A007064.P1705761485521968395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 n + ((n : ℤ) - A001966 n)

end

end A007064.P1705761485521968395

namespace A007064

/-- `A035488(n)+n-A001966(n)` -/
def P1705761485521968395.Spec : Prop :=
  ∀ n, P1705761485521968395.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P4251040401414097905

`A035488(n)-(A184516(n+1)+3*n+1)`
-/

namespace A007064.P4251040401414097905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 n - (A184516 (n + 1) + (3 * n + 1 : ℤ))

end

end A007064.P4251040401414097905

namespace A007064

/-- `A035488(n)-(A184516(n+1)+3*n+1)` -/
def P4251040401414097905.Spec : Prop :=
  ∀ n, P4251040401414097905.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P17981691521533739765

`A035488(n)%A035487(A000027(n+1))`
-/

namespace A007064.P17981691521533739765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035488 n) (A035487 (A000027 (n + 1)).toNat)

end

end A007064.P17981691521533739765

namespace A007064

/-- `A035488(n)%A035487(A000027(n+1))` -/
def P17981691521533739765.Spec : Prop :=
  ∀ n, P17981691521533739765.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P13350863387103239871

`A035488(n)-(A000027(A184516(n+1)+Δ[n²])+n)`
-/

namespace A007064.P13350863387103239871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 n - (A000027 (A184516 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + (n : ℤ))

end

end A007064.P13350863387103239871

namespace A007064

/-- `A035488(n)-(A000027(A184516(n+1)+Δ[n²])+n)` -/
def P13350863387103239871.Spec : Prop :=
  ∀ n, P13350863387103239871.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P8602935006664796163

`∩[A190429(n+1), A387349(n+1)]`
-/

namespace A007064.P8602935006664796163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007064.P8602935006664796163

namespace A007064

/-- `∩[A190429(n+1), A387349(n+1)]` -/
def P8602935006664796163.Spec : Prop :=
  ∀ n, (P8602935006664796163.a n : ℤ) = A007064 (n + 1)

end A007064

/-! ## A007064.P5858724918609559701

`A214990(a(n-1)-(n-2))` with `a(0)=1`
-/

namespace A007064.P5858724918609559701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214990 (a (n - 1) - ((n : ℤ) - 2)).toNat

end

end A007064.P5858724918609559701

namespace A007064

/-- `A214990(a(n-1)-(n-2))` -/
def P5858724918609559701.Spec : Prop :=
  ∀ n, P5858724918609559701.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P1766041887437567629

`A214990(A026351(n))`
-/

namespace A007064.P1766041887437567629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A026351 n).toNat

end

end A007064.P1766041887437567629

namespace A007064

/-- `A214990(A026351(n))` -/
def P1766041887437567629.Spec : Prop :=
  ∀ n, P1766041887437567629.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P8493982730476562942

`A214990(A007067(n)+1)`
-/

namespace A007064.P8493982730476562942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A007067 n + 1).toNat

end

end A007064.P8493982730476562942

namespace A007064

/-- `A214990(A007067(n)+1)` -/
def P8493982730476562942.Spec : Prop :=
  ∀ n, P8493982730476562942.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P7106951453861876578

`A214990(A026273(n+1))`
-/

namespace A007064.P7106951453861876578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A026273 (n + 1)).toNat

end

end A007064.P7106951453861876578

namespace A007064

/-- `A214990(A026273(n+1))` -/
def P7106951453861876578.Spec : Prop :=
  ∀ n, P7106951453861876578.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P3117600895072629704

`A214990(A066096(n)+1)`
-/

namespace A007064.P3117600895072629704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A066096 n + 1).toNat

end

end A007064.P3117600895072629704

namespace A007064

/-- `A214990(A066096(n)+1)` -/
def P3117600895072629704.Spec : Prop :=
  ∀ n, P3117600895072629704.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P3382910480482015269

`A214990(A184656(n+1))`
-/

namespace A007064.P3382910480482015269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A184656 (n + 1)).toNat

end

end A007064.P3382910480482015269

namespace A007064

/-- `A214990(A184656(n+1))` -/
def P3382910480482015269.Spec : Prop :=
  ∀ n, P3382910480482015269.a n = A007064 (n + 1)

end A007064

/-! ## A007064.P14519159686806692146

`A214990(A184658(n+1))`
-/

namespace A007064.P14519159686806692146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A184658 (n + 1)).toNat

end

end A007064.P14519159686806692146

namespace A007064

/-- `A214990(A184658(n+1))` -/
def P14519159686806692146.Spec : Prop :=
  ∀ n, P14519159686806692146.a n = A007064 (n + 1)

end A007064

/-!
# A007065: Number of M-sequences from multicomplexes on at most 5 variables with no monomial of degree greater than n.

The programs for A007065, there is no canonical definition to state claims against.
-/

/-! ## A007065.P14431045959266327275

`A007723(A134227(n+4))`
-/

namespace A007065.P14431045959266327275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A134227 (n + 4)).toNat

end

end A007065.P14431045959266327275

/-! ## A007065.P12284049972328291358

`A007723(Δ[A023551(n+1)])`
-/

namespace A007065.P12284049972328291358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (f1 (n + 1) - f1 n).toNat

end

end A007065.P12284049972328291358

/-! ## A007065.P3504253485957457423

`record[A007723(A027379(n)+n)]`
-/

namespace A007065.P3504253485957457423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007065.P3504253485957457423

/-! ## A007065.P432745423674858662

`record[A007723(A055998(n)+n)]`
-/

namespace A007065.P432745423674858662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007065.P432745423674858662

/-! ## A007065.P7244944672006136734

`A007723(A000217(n+6)-6)`
-/

namespace A007065.P7244944672006136734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (A000217 (n + 6) - 6).toNat

end

end A007065.P7244944672006136734

/-!
# A007066: a(n) = 1 + ceiling((n-1)*phi^2), phi = (1+sqrt(5))/2.

The programs for A007066, the canonical program `A007066.P190939442448134009` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007066 has offset 1).

The definition of A007066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+ceil(n*ϕ²)` (program `A007066.P190939442448134009`, by `A007066.P190939442448134009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007066.P190939442448134009

`1+ceil(n*ϕ²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007066

/-- `1+ceil(n*ϕ²)` -/
def P190939442448134009.Spec : Prop :=
  ∀ n, P190939442448134009.a n = A007066 (n + 1)

theorem P190939442448134009.correct : P190939442448134009.Spec := by
  intro n
  simp only [A007066, Nat.add_sub_cancel]

end A007066

/-! ## A007066.P17323054776957463684

`ceil(or(1, 2*n)+n/ϕ)`
-/

namespace A007066.P17323054776957463684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) + (n : ℝ) / Real.goldenRatio⌉

end

end A007066.P17323054776957463684

namespace A007066

/-- `ceil(or(1, 2*n)+n/ϕ)` -/
def P17323054776957463684.Spec : Prop :=
  ∀ n, P17323054776957463684.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P8998495130314471314

`ceil(xor(1, 2*n)+n/ϕ)`
-/

namespace A007066.P8998495130314471314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) + (n : ℝ) / Real.goldenRatio⌉

end

end A007066.P8998495130314471314

namespace A007066

/-- `ceil(xor(1, 2*n)+n/ϕ)` -/
def P8998495130314471314.Spec : Prop :=
  ∀ n, P8998495130314471314.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P2623870295402983325

`ceil(C(n+1, n)+ϕ*n)`
-/

namespace A007066.P2623870295402983325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℝ) + Real.goldenRatio * (n : ℝ)⌉

end

end A007066.P2623870295402983325

namespace A007066

/-- `ceil(C(n+1, n)+ϕ*n)` -/
def P2623870295402983325.Spec : Prop :=
  ∀ n, P2623870295402983325.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P14149104444515629033

`ceil(ϕ*gcd(n, 2*n)+n+1)`
-/

namespace A007066.P14149104444515629033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.gcd n (2 * n) : ℝ) + (n + 1 : ℝ)⌉

end

end A007066.P14149104444515629033

namespace A007066

/-- `ceil(ϕ*gcd(n, 2*n)+n+1)` -/
def P14149104444515629033.Spec : Prop :=
  ∀ n, P14149104444515629033.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P8150702752667308431

`floor((a(n-1)+1)/ϕ+n+2)` with `a(0)=1`
-/

namespace A007066.P8150702752667308431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 1 : ℝ) / Real.goldenRatio + (n + 2 : ℝ)⌋

end

end A007066.P8150702752667308431

namespace A007066

/-- `floor((a(n-1)+1)/ϕ+n+2)` -/
def P8150702752667308431.Spec : Prop :=
  ∀ n, P8150702752667308431.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P11177243518941138346

`C(floor(ϕ*n+n+2), comp[floor(ϕ*n)+1])`
-/

namespace A007066.P11177243518941138346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊Real.goldenRatio * (n : ℝ) + (n + 2 : ℝ)⌋.toNat (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A007066.P11177243518941138346

namespace A007066

/-- `C(floor(ϕ*n+n+2), comp[floor(ϕ*n)+1])` -/
def P11177243518941138346.Spec : Prop :=
  ∀ n, (P11177243518941138346.a n : ℤ) = A007066 (n + 1)

end A007066

/-! ## A007066.P6507236915827125132

`ceil(A288713(n+1)/2)`
-/

namespace A007066.P6507236915827125132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288713 (n + 1) : ℚ) / 2⌉

end

end A007066.P6507236915827125132

namespace A007066

/-- `ceil(A288713(n+1)/2)` -/
def P6507236915827125132.Spec : Prop :=
  ∀ n, P6507236915827125132.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P14992290498267661490

`A319702(A284621(n+1))`
-/

namespace A007066.P14992290498267661490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A284621 (n + 1)).toNat

end

end A007066.P14992290498267661490

namespace A007066

/-- `A319702(A284621(n+1))` -/
def P14992290498267661490.Spec : Prop :=
  ∀ n, P14992290498267661490.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P15000000045637746438

`A026356(n+1)/A054977(n)`
-/

namespace A007066.P15000000045637746438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026356 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A007066.P15000000045637746438

namespace A007066

/-- `A026356(n+1)/A054977(n)` -/
def P15000000045637746438.Spec : Prop :=
  ∀ n, P15000000045637746438.a n = (A007066 (n + 1) : ℚ)

end A007066

/-! ## A007066.P16511559026996613173

`abs(A001950(n+1)-A114986(n))`
-/

namespace A007066.P16511559026996613173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001950 (n + 1) - A114986 n|

end

end A007066.P16511559026996613173

namespace A007066

/-- `abs(A001950(n+1)-A114986(n))` -/
def P16511559026996613173.Spec : Prop :=
  ∀ n, P16511559026996613173.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P17146796672251889662

`A026356(n+1)/(A026355(n+1)-A004956(n))`
-/

namespace A007066.P17146796672251889662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026356 (n + 1) : ℚ) / (A026355 (n + 1) - A004956 n : ℚ)

end

end A007066.P17146796672251889662

namespace A007066

/-- `A026356(n+1)/(A026355(n+1)-A004956(n))` -/
def P17146796672251889662.Spec : Prop :=
  ∀ n, P17146796672251889662.a n = (A007066 (n + 1) : ℚ)

end A007066

/-! ## A007066.P8249581389219271922

`A026351(A004956(n))`
-/

namespace A007066.P8249581389219271922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A004956 n).toNat

end

end A007066.P8249581389219271922

namespace A007066

/-- `A026351(A004956(n))` -/
def P8249581389219271922.Spec : Prop :=
  ∀ n, P8249581389219271922.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P8880058064748577005

`A080746(A026351(n))`
-/

namespace A007066.P8880058064748577005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (A026351 n).toNat

end

end A007066.P8880058064748577005

namespace A007066

/-- `A080746(A026351(n))` -/
def P8880058064748577005.Spec : Prop :=
  ∀ n, P8880058064748577005.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P6478141235927380947

`A026351(A004957(n)-n)`
-/

namespace A007066.P6478141235927380947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A004957 n - (n : ℤ)).toNat

end

end A007066.P6478141235927380947

namespace A007066

/-- `A026351(A004957(n)-n)` -/
def P6478141235927380947.Spec : Prop :=
  ∀ n, P6478141235927380947.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P18410309524958337938

`record[A002251(n)+A001468(n)]`
-/

namespace A007066.P18410309524958337938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007066.P18410309524958337938

namespace A007066

/-- `record[A002251(n)+A001468(n)]` -/
def P18410309524958337938.Spec : Prop :=
  ∀ n, P18410309524958337938.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P10737737852421376312

`A026351(comp[A026351(n)+n])`
-/

namespace A007066.P10737737852421376312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A007066.P10737737852421376312

namespace A007066

/-- `A026351(comp[A026351(n)+n])` -/
def P10737737852421376312.Spec : Prop :=
  ∀ n, P10737737852421376312.a n = A007066 (n + 1)

end A007066

/-! ## A007066.P7663988760202800645

`A026351(comp[A026351(n)]-n)`
-/

namespace A007066.P7663988760202800645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A007066.P7663988760202800645

namespace A007066

/-- `A026351(comp[A026351(n)]-n)` -/
def P7663988760202800645.Spec : Prop :=
  ∀ n, P7663988760202800645.a n = A007066 (n + 1)

end A007066

/-!
# A007067: Nearest integer to n*phi where phi = (1+sqrt(5))/2.

The programs for A007067, the canonical program `A007067.P5177700815103506680` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007067 has offset 0).

The definition of A007067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007067.P5177700815103506680

`round(n*ϕ)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007067

/-- `round(n*ϕ)` -/
def P5177700815103506680.Spec : Prop :=
  ∀ n, P5177700815103506680.a n = A007067 n

theorem P5177700815103506680.correct : P5177700815103506680.Spec := by
  intro n
  simp only [A007067]

end A007067

/-! ## A007067.P4393276597605645217

`floor((A066096(2*n)+1)/2)`
-/

namespace A007067.P4393276597605645217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066096 (2 * n) + 1 : ℚ) / 2⌋

end

end A007067.P4393276597605645217

namespace A007067

/-- `floor((A066096(2*n)+1)/2)` -/
def P4393276597605645217.Spec : Prop :=
  ∀ n, P4393276597605645217.a n = A007067 n

end A007067

/-! ## A007067.P1122930663619157200

`floor(n*(acot(2*n)+ϕ))`
-/

namespace A007067.P1122930663619157200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (2 * n : ℝ) + Real.goldenRatio)⌋

end

end A007067.P1122930663619157200

namespace A007067

/-- `floor(n*(acot(2*n)+ϕ))` -/
def P1122930663619157200.Spec : Prop :=
  ∀ n, P1122930663619157200.a n = A007067 n

end A007067

/-! ## A007067.P6459677686694573683

`ceil(n*(ϕ-acot(2*n)))`
-/

namespace A007067.P6459677686694573683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.goldenRatio - SequenceMachineLib.acot (2 * n : ℝ))⌉

end

end A007067.P6459677686694573683

namespace A007067

/-- `ceil(n*(ϕ-acot(2*n)))` -/
def P6459677686694573683.Spec : Prop :=
  ∀ n, P6459677686694573683.a n = A007067 n

end A007067

/-! ## A007067.P6718247091683563909

`ceil(n*ϕ^3)%comp[ceil(ϕ*n)]`
-/

namespace A007067.P6718247091683563909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A007067.P6718247091683563909

namespace A007067

/-- `ceil(n*ϕ^3)%comp[ceil(ϕ*n)]` -/
def P6718247091683563909.Spec : Prop :=
  ∀ n, P6718247091683563909.a n = A007067 n

end A007067

/-! ## A007067.P11983435402655299554

`A101803(n)+n`
-/

namespace A007067.P11983435402655299554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 n + (n : ℤ)

end

end A007067.P11983435402655299554

namespace A007067

/-- `A101803(n)+n` -/
def P11983435402655299554.Spec : Prop :=
  ∀ n, P11983435402655299554.a n = A007067 n

end A007067

/-! ## A007067.P12821840495860833615

`A004937(n)-n`
-/

namespace A007067.P12821840495860833615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n - (n : ℤ)

end

end A007067.P12821840495860833615

namespace A007067

/-- `A004937(n)-n` -/
def P12821840495860833615.Spec : Prop :=
  ∀ n, P12821840495860833615.a n = A007067 n

end A007067

/-! ## A007067.P10300393387101802662

`ceil(A276854(n)/2)`
-/

namespace A007067.P10300393387101802662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276854 n : ℚ) / 2⌉

end

end A007067.P10300393387101802662

namespace A007067

/-- `ceil(A276854(n)/2)` -/
def P10300393387101802662.Spec : Prop :=
  ∀ n, P10300393387101802662.a n = A007067 n

end A007067

/-! ## A007067.P4727370854126725928

`comp[A007064(n+1)]`
-/

namespace A007067.P4727370854126725928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007067.P4727370854126725928

namespace A007067

/-- `comp[A007064(n+1)]` -/
def P4727370854126725928.Spec : Prop :=
  ∀ n, (P4727370854126725928.a n : ℤ) = A007067 n

end A007067

/-! ## A007067.P7160802244689553003

`comp[A214990(n+1)]`
-/

namespace A007067.P7160802244689553003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007067.P7160802244689553003

namespace A007067

/-- `comp[A214990(n+1)]` -/
def P7160802244689553003.Spec : Prop :=
  ∀ n, (P7160802244689553003.a n : ℤ) = A007067 n

end A007067

/-! ## A007067.P4182516419594476213

`2*n-A334415(n)`
-/

namespace A007067.P4182516419594476213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A334415 n

end

end A007067.P4182516419594476213

namespace A007067

/-- `2*n-A334415(n)` -/
def P4182516419594476213.Spec : Prop :=
  ∀ n, P4182516419594476213.a n = A007067 n

end A007067

/-! ## A007067.P17831662250991123379

`floor(sqrt(2*A088207(n)))`
-/

namespace A007067.P17831662250991123379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A088207 n)

end

end A007067.P17831662250991123379

namespace A007067

/-- `floor(sqrt(2*A088207(n)))` -/
def P17831662250991123379.Spec : Prop :=
  ∀ n, P17831662250991123379.a n = A007067 n

end A007067

/-! ## A007067.P10998270759564357563

`floor((A198082(n)+n)/2)`
-/

namespace A007067.P10998270759564357563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198082 n + (n : ℤ) : ℚ) / 2⌋

end

end A007067.P10998270759564357563

namespace A007067

/-- `floor((A198082(n)+n)/2)` -/
def P10998270759564357563.Spec : Prop :=
  ∀ n, P10998270759564357563.a n = A007067 n

end A007067

/-! ## A007067.P7497544067701591118

`∑[char[A078796(n+1)]]+n`
-/

namespace A007067.P7497544067701591118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007067.P7497544067701591118

namespace A007067

/-- `∑[char[A078796(n+1)]]+n` -/
def P7497544067701591118.Spec : Prop :=
  ∀ n, (P7497544067701591118.a n : ℤ) = A007067 n

end A007067

/-! ## A007067.P13802630310567938866

`A078588(n)+A066096(n)`
-/

namespace A007067.P13802630310567938866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n + A066096 n

end

end A007067.P13802630310567938866

namespace A007067

/-- `A078588(n)+A066096(n)` -/
def P13802630310567938866.Spec : Prop :=
  ∀ n, P13802630310567938866.a n = A007067 n

theorem P13802630310567938866.correct : P13802630310567938866.Spec := by
  intro n
  simp only [A007067, Nat.add_sub_cancel, A007067.P13802630310567938866.a, A007067.P5177700815103506680.a, A066096, A066096.P2651506377198414293.a, A078588, A078588.P12729353000492278480.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007067

/-! ## A007067.P3343658883799701140

`A004958(n)-A004957(n)`
-/

namespace A007067.P3343658883799701140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - A004957 n

end

end A007067.P3343658883799701140

namespace A007067

/-- `A004958(n)-A004957(n)` -/
def P3343658883799701140.Spec : Prop :=
  ∀ n, P3343658883799701140.a n = A007067 n

end A007067

/-! ## A007067.P4765934996240264775

`A276854(n)-A066096(n)`
-/

namespace A007067.P4765934996240264775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n - A066096 n

end

end A007067.P4765934996240264775

namespace A007067

/-- `A276854(n)-A066096(n)` -/
def P4765934996240264775.Spec : Prop :=
  ∀ n, P4765934996240264775.a n = A007067 n

end A007067

/-! ## A007067.P7978278916500352085

`A195170(n)-A195172(n)`
-/

namespace A007067.P7978278916500352085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 n - A195172 n

end

end A007067.P7978278916500352085

namespace A007067

/-- `A195170(n)-A195172(n)` -/
def P7978278916500352085.Spec : Prop :=
  ∀ n, P7978278916500352085.a n = A007067 n

end A007067

/-! ## A007067.P15490063906730413825

`A195171(n)-A195173(n)`
-/

namespace A007067.P15490063906730413825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195171 n - A195173 n

end

end A007067.P15490063906730413825

namespace A007067

/-- `A195171(n)-A195173(n)` -/
def P15490063906730413825.Spec : Prop :=
  ∀ n, P15490063906730413825.a n = A007067 n

end A007067

/-! ## A007067.P4466157216096228122

`A050508(n)/A028310(n)`
-/

namespace A007067.P4466157216096228122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050508 n : ℚ) / (A028310 n : ℚ)

end

end A007067.P4466157216096228122

namespace A007067

/-- `A050508(n)/A028310(n)` -/
def P4466157216096228122.Spec : Prop :=
  ∀ n, P4466157216096228122.a n = (A007067 n : ℚ)

end A007067

/-!
# A007068: a(n) = a(n-1) + (3+(-1)^n)*a(n-2)/2.

The programs for A007068, the canonical program `A007068.P13868158098468142425` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007068 has offset 1).

The definition of A007068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007068.P13868158098468142425

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007068

/-- `4*a(n-2)-2*a(n-4)` -/
def P13868158098468142425.Spec : Prop :=
  ∀ n, P13868158098468142425.a n = A007068 (n + 1)

theorem P13868158098468142425.correct : P13868158098468142425.Spec := by
  intro n
  simp only [A007068, Nat.add_sub_cancel]

end A007068

/-! ## A007068.P15797413173264250707

`a(n-1)+(3+(-1)^(n+1))*a(n-2)/2` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007068.P15797413173264250707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (3 + (-1) ^ (n + 1) : ℚ) * a (n - 2) / 2

end

end A007068.P15797413173264250707

namespace A007068

/-- `a(n-1)+(3+(-1)^(n+1))*a(n-2)/2` -/
def P15797413173264250707.Spec : Prop :=
  ∀ n, P15797413173264250707.a n = (A007068 (n + 1) : ℚ)

end A007068

/-! ## A007068.P5642584818778199296

`a(n-1)+a(n-2)*A000034(n)` with `a(0)=1, a(1)=3`
-/

namespace A007068.P5642584818778199296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a (n - 2) * A000034 n

end

end A007068.P5642584818778199296

namespace A007068

/-- `a(n-1)+a(n-2)*A000034(n)` -/
def P5642584818778199296.Spec : Prop :=
  ∀ n, P5642584818778199296.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P8862470862548660048

`ogf((1+3x-2x^3)/(1-4x^2+2x^4))`
-/

namespace A007068.P8862470862548660048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, -2] [1, 0, -4, 0, 2] n

end

end A007068.P8862470862548660048

namespace A007068

/-- `ogf((1+3x-2x^3)/(1-4x^2+2x^4))` -/
def P8862470862548660048.Spec : Prop :=
  ∀ n, P8862470862548660048.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P17322513569242984789

`A121720(n+3)`
-/

namespace A007068.P17322513569242984789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (n + 3)

end

end A007068.P17322513569242984789

namespace A007068

/-- `A121720(n+3)` -/
def P17322513569242984789.Spec : Prop :=
  ∀ n, P17322513569242984789.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P3380893818043015737

`round(sqrt(2)*A062113(n))`
-/

namespace A007068.P3380893818043015737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A062113 n : ℝ))

end

end A007068.P3380893818043015737

namespace A007068

/-- `round(sqrt(2)*A062113(n))` -/
def P3380893818043015737.Spec : Prop :=
  ∀ n, P3380893818043015737.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P3428776270237141417

`∑[A062112(xor(1, n+1))]+1`
-/

namespace A007068.P3428776270237141417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007068.P3428776270237141417

namespace A007068

/-- `∑[A062112(xor(1, n+1))]+1` -/
def P3428776270237141417.Spec : Prop :=
  ∀ n, P3428776270237141417.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P8322323067841560393

`A062112(n+3)-A062112(n+1)`
-/

namespace A007068.P8322323067841560393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (n + 3) - A062112 (n + 1)

end

end A007068.P8322323067841560393

namespace A007068

/-- `A062112(n+3)-A062112(n+1)` -/
def P8322323067841560393.Spec : Prop :=
  ∀ n, P8322323067841560393.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P7998543321338779469

`A062112(or(1, n+1))+∑[A062112(n)]`
-/

namespace A007068.P7998543321338779469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (Nat.lor 1 (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007068.P7998543321338779469

namespace A007068

/-- `A062112(or(1, n+1))+∑[A062112(n)]` -/
def P7998543321338779469.Spec : Prop :=
  ∀ n, P7998543321338779469.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P5478925990920218801

`A000034(A014681(n))*A062113(A014681(n))`
-/

namespace A007068.P5478925990920218801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A014681 n).toNat * A062113 (A014681 n).toNat

end

end A007068.P5478925990920218801

namespace A007068

/-- `A000034(A014681(n))*A062113(A014681(n))` -/
def P5478925990920218801.Spec : Prop :=
  ∀ n, P5478925990920218801.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P12663347324120400441

`Δ[A030436(n+2)]`
-/

namespace A007068.P12663347324120400441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007068.P12663347324120400441

namespace A007068

/-- `Δ[A030436(n+2)]` -/
def P12663347324120400441.Spec : Prop :=
  ∀ n, P12663347324120400441.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P15090770755418455930

`A217730(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A007068.P15090770755418455930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217730 (n + 1) - a (n - 1)

end

end A007068.P15090770755418455930

namespace A007068

/-- `A217730(n+1)-a(n-1)` -/
def P15090770755418455930.Spec : Prop :=
  ∀ n, P15090770755418455930.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P3597314604280229049

`∪[A007052(n), A007070(n)]`
-/

namespace A007068.P3597314604280229049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007068.P3597314604280229049

namespace A007068

/-- `∪[A007052(n), A007070(n)]` -/
def P3597314604280229049.Spec : Prop :=
  ∀ n, (P3597314604280229049.a n : ℤ) = A007068 (n + 1)

end A007068

/-! ## A007068.P8903419477171102882

`∪[A007070(n), A048580(n)]`
-/

namespace A007068.P8903419477171102882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007068.P8903419477171102882

namespace A007068

/-- `∪[A007070(n), A048580(n)]` -/
def P8903419477171102882.Spec : Prop :=
  ∀ n, (P8903419477171102882.a n : ℤ) = A007068 (n + 1)

end A007068

/-! ## A007068.P5434764043059984102

`A030436(n+3)-A030436(n+2)`
-/

namespace A007068.P5434764043059984102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (n + 3) - A030436 (n + 2)

end

end A007068.P5434764043059984102

namespace A007068

/-- `A030436(n+3)-A030436(n+2)` -/
def P5434764043059984102.Spec : Prop :=
  ∀ n, P5434764043059984102.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P6147893003097209429

`A062113(n+1)-A000035(n+1)*A062113(n)`
-/

namespace A007068.P6147893003097209429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (n + 1) - A000035 (n + 1) * A062113 n

end

end A007068.P6147893003097209429

namespace A007068

/-- `A062113(n+1)-A000035(n+1)*A062113(n)` -/
def P6147893003097209429.Spec : Prop :=
  ∀ n, P6147893003097209429.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P16011584889728430772

`Δ[A030435(n+2)/2]`
-/

namespace A007068.P16011584889728430772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030435 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007068.P16011584889728430772

namespace A007068

/-- `Δ[A030435(n+2)/2]` -/
def P16011584889728430772.Spec : Prop :=
  ∀ n, P16011584889728430772.a n = (A007068 (n + 1) : ℚ)

end A007068

/-! ## A007068.P7398434064499601686

`∪[A007070(n), A020727(n)-A007070(n)]`
-/

namespace A007068.P7398434064499601686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - A007070 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007068.P7398434064499601686

namespace A007068

/-- `∪[A007070(n), A020727(n)-A007070(n)]` -/
def P7398434064499601686.Spec : Prop :=
  ∀ n, (P7398434064499601686.a n : ℤ) = A007068 (n + 1)

end A007068

/-! ## A007068.P4226150341577991666

`record[A216210(2*n+1)]`
-/

namespace A007068.P4226150341577991666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007068.P4226150341577991666

namespace A007068

/-- `record[A216210(2*n+1)]` -/
def P4226150341577991666.Spec : Prop :=
  ∀ n, P4226150341577991666.a n = A007068 (n + 1)

end A007068

/-! ## A007068.P9838335441512300401

`A216210(A178218(n+2))`
-/

namespace A007068.P9838335441512300401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (A178218 (n + 2)).toNat

end

end A007068.P9838335441512300401

namespace A007068

/-- `A216210(A178218(n+2))` -/
def P9838335441512300401.Spec : Prop :=
  ∀ n, P9838335441512300401.a n = A007068 (n + 1)

end A007068

/-!
# A007069: First column of spectral array W(sqrt 2).

The programs for A007069, the canonical program `A007069.P6367508747812777610` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007069 has offset 1).

The definition of A007069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007069.P14214388513270229417

`floor(sqrt(2)*floor(sqrt(2)*(n+1)))`
-/

namespace A007069.P14214388513270229417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (⌊Real.sqrt (2 : ℝ) * (n + 1 : ℝ)⌋ : ℝ)⌋

end

end A007069.P14214388513270229417

namespace A007069

/-- `floor(sqrt(2)*floor(sqrt(2)*(n+1)))` -/
def P14214388513270229417.Spec : Prop :=
  ∀ n, P14214388513270229417.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P16943345036663165866

`2*(n+1)-1-A059648(n+1)`
-/

namespace A007069.P16943345036663165866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A059648 (n + 1)

end

end A007069.P16943345036663165866

namespace A007069

/-- `2*(n+1)-1-A059648(n+1)` -/
def P16943345036663165866.Spec : Prop :=
  ∀ n, P16943345036663165866.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P6367508747812777610

`A001951(A001951(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007069

/-- `A001951(A001951(n+1))` -/
def P6367508747812777610.Spec : Prop :=
  ∀ n, P6367508747812777610.a n = A007069 (n + 1)

theorem P6367508747812777610.correct : P6367508747812777610.Spec := by
  intro n
  simp only [A007069, Nat.add_sub_cancel]

end A007069

/-! ## A007069.P8940098811666055395

`A000196(2*A000196(2*(n+1)²)²)`
-/

namespace A007069.P8940098811666055395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A000196 (2 * (n + 1) ^ 2) ^ 2).toNat

end

end A007069.P8940098811666055395

namespace A007069

/-- `A000196(2*A000196(2*(n+1)²)²)` -/
def P8940098811666055395.Spec : Prop :=
  ∀ n, P8940098811666055395.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P1069764997557321604

`A332789(n)+a(n-1)` with `a(0)=1`
-/

namespace A007069.P1069764997557321604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332789 n + a (n - 1)

end

end A007069.P1069764997557321604

namespace A007069

/-- `A332789(n)+a(n-1)` -/
def P1069764997557321604.Spec : Prop :=
  ∀ n, P1069764997557321604.a n = A007069 (n + 1)

theorem P1069764997557321604.correct : P1069764997557321604.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A007069, Nat.add_sub_cancel, A007069.P1069764997557321604.a, A007069.P6367508747812777610.a, A001951, A001951.P3206377842744091648.a, A332789, A332789.P9919765140023462536.f1, A332789.P9919765140023462536.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A007069, Nat.add_sub_cancel, A007069.P1069764997557321604.a, A007069.P6367508747812777610.a, A001951, A001951.P3206377842744091648.a, A332789, A332789.P9919765140023462536.f1, A332789.P9919765140023462536.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A007069

/-! ## A007069.P7874687841672523589

`Δ[n²]-log2(A138330(n+1))`
-/

namespace A007069.P7874687841672523589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.logb 2 (A138330 (n + 1) : ℝ)

end

end A007069.P7874687841672523589

namespace A007069

/-- `Δ[n²]-log2(A138330(n+1))` -/
def P7874687841672523589.Spec : Prop :=
  ∀ n, P7874687841672523589.a n = (A007069 (n + 1) : ℝ)

end A007069

/-! ## A007069.P11335549677959449462

`A184922(n+1)-A136119(n+1)`
-/

namespace A007069.P11335549677959449462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) - A136119 (n + 1)

end

end A007069.P11335549677959449462

namespace A007069

/-- `A184922(n+1)-A136119(n+1)` -/
def P11335549677959449462.Spec : Prop :=
  ∀ n, P11335549677959449462.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P13136699794386250231

`A286923(n+1)-A080652(n+1)`
-/

namespace A007069.P13136699794386250231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1) - A080652 (n + 1)

end

end A007069.P13136699794386250231

namespace A007069

/-- `A286923(n+1)-A080652(n+1)` -/
def P13136699794386250231.Spec : Prop :=
  ∀ n, P13136699794386250231.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P2315926640315430720

`A286666(n+1)-A189574(n+1)`
-/

namespace A007069.P2315926640315430720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) - A189574 (n + 1)

end

end A007069.P2315926640315430720

namespace A007069

/-- `A286666(n+1)-A189574(n+1)` -/
def P2315926640315430720.Spec : Prop :=
  ∀ n, P2315926640315430720.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P13733224515505824353

`A341249(n+1)-A286909(n+1)`
-/

namespace A007069.P13733224515505824353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1) - A286909 (n + 1)

end

end A007069.P13733224515505824353

namespace A007069

/-- `A341249(n+1)-A286909(n+1)` -/
def P13733224515505824353.Spec : Prop :=
  ∀ n, P13733224515505824353.a n = A007069 (n + 1)

theorem P13733224515505824353.correct : P13733224515505824353.Spec := by
  intro n
  simp only [A007069, Nat.add_sub_cancel, A007069.P13733224515505824353.a, A007069.P6367508747812777610.a, A001951, A001951.P3206377842744091648.a, A286909, A286909.P7521876757351739898.f2, A286909.P7521876757351739898.f1, A286909.P7521876757351739898.a, A341249, A341249.P10730097604345596581.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007069

/-! ## A007069.P5542488001650695356

`A001952(n+1)-(A001953(n)+2)`
-/

namespace A007069.P5542488001650695356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - (A001953 n + 2)

end

end A007069.P5542488001650695356

namespace A007069

/-- `A001952(n+1)-(A001953(n)+2)` -/
def P5542488001650695356.Spec : Prop :=
  ∀ n, P5542488001650695356.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P15097412462634086394

`A286666(n+1)+n-A001953(n)`
-/

namespace A007069.P15097412462634086394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + ((n : ℤ) - A001953 n)

end

end A007069.P15097412462634086394

namespace A007069

/-- `A286666(n+1)+n-A001953(n)` -/
def P15097412462634086394.Spec : Prop :=
  ∀ n, P15097412462634086394.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P15368433008354028952

`2*A341239(n+1)-A341249(n+1)`
-/

namespace A007069.P15368433008354028952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341239 (n + 1) - A341249 (n + 1)

end

end A007069.P15368433008354028952

namespace A007069

/-- `2*A341239(n+1)-A341249(n+1)` -/
def P15368433008354028952.Spec : Prop :=
  ∀ n, P15368433008354028952.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P3604586636414299205

`A083656(n+2)-(A332789(n+1)+A083656(n+1))`
-/

namespace A007069.P3604586636414299205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083656 (n + 2) - (A332789 (n + 1) + A083656 (n + 1))

end

end A007069.P3604586636414299205

namespace A007069

/-- `A083656(n+2)-(A332789(n+1)+A083656(n+1))` -/
def P3604586636414299205.Spec : Prop :=
  ∀ n, P3604586636414299205.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P5818784947024207371

`Δ[n²]-A159684(A001951(n))`
-/

namespace A007069.P5818784947024207371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A159684 (A001951 n).toNat

end

end A007069.P5818784947024207371

namespace A007069

/-- `Δ[n²]-A159684(A001951(n))` -/
def P5818784947024207371.Spec : Prop :=
  ∀ n, P5818784947024207371.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P8143818884514703338

`record[A001952(n+1)%A286687(n+1)]`
-/

namespace A007069.P8143818884514703338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (n + 1)) (A286687 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007069.P8143818884514703338

namespace A007069

/-- `record[A001952(n+1)%A286687(n+1)]` -/
def P8143818884514703338.Spec : Prop :=
  ∀ n, P8143818884514703338.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P12860432547814064638

`sqrt(A087055(sqrt(A087055(n+1))))`
-/

namespace A007069.P12860432547814064638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087055 (SequenceMachineLib.roundAway (Real.sqrt (A087055 (n + 1) : ℝ))).toNat : ℝ)

end

end A007069.P12860432547814064638

namespace A007069

/-- `sqrt(A087055(sqrt(A087055(n+1))))` -/
def P12860432547814064638.Spec : Prop :=
  ∀ n, P12860432547814064638.a n = (A007069 (n + 1) : ℝ)

end A007069

/-! ## A007069.P277659119173288341

`A104521(A395101(n+1))+2*n`
-/

namespace A007069.P277659119173288341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 (A395101 (n + 1)).toNat + (2 * n : ℤ)

end

end A007069.P277659119173288341

namespace A007069

/-- `A104521(A395101(n+1))+2*n` -/
def P277659119173288341.Spec : Prop :=
  ∀ n, P277659119173288341.a n = A007069 (n + 1)

end A007069

/-! ## A007069.P5208689556164727049

`A080764(2*n)+2*n`
-/

namespace A007069.P5208689556164727049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (2 * n) + (2 * n : ℤ)

end

end A007069.P5208689556164727049

namespace A007069

/-- `A080764(2*n)+2*n` -/
def P5208689556164727049.Spec : Prop :=
  ∀ n, P5208689556164727049.a n = A007069 (n + 1)

end A007069

/-!
# A007070: a(n) = 4*a(n-1) - 2*a(n-2) with a(0) = 1, a(1) = 4.

The programs for A007070, the canonical program `A007070.P13442380677436507997` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007070 has offset 0).

The definition of A007070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-2*a(n-2)` (program `A007070.P13442380677436507997`, by `A007070.P13442380677436507997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007070.P1715953769563018162

`ceil((2+sqrt(2))*a(n-1))` with `a(0)=1`
-/

namespace A007070.P1715953769563018162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(2 + Real.sqrt (2 : ℝ)) * (a (n - 1) : ℝ)⌉

end

end A007070.P1715953769563018162

namespace A007070

/-- `ceil((2+sqrt(2))*a(n-1))` -/
def P1715953769563018162.Spec : Prop :=
  ∀ n, P1715953769563018162.a n = A007070 n

end A007070

/-! ## A007070.P13442380677436507997

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007070

/-- `4*a(n-1)-2*a(n-2)` -/
def P13442380677436507997.Spec : Prop :=
  ∀ n, P13442380677436507997.a n = A007070 n

theorem P13442380677436507997.correct : P13442380677436507997.Spec := by
  intro n
  simp only [A007070]

end A007070

/-! ## A007070.P15163287925308534937

`ogf(1/(1-4x+2x^2))`
-/

namespace A007070.P15163287925308534937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 2] n

end

end A007070.P15163287925308534937

namespace A007070

/-- `ogf(1/(1-4x+2x^2))` -/
def P15163287925308534937.Spec : Prop :=
  ∀ n, P15163287925308534937.a n = A007070 n

end A007070

/-! ## A007070.P7277174283177195834

`∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=1`
-/

namespace A007070.P7277174283177195834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007070.P7277174283177195834

namespace A007070

/-- `∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P7277174283177195834.Spec : Prop :=
  ∀ n, P7277174283177195834.a n = A007070 n

end A007070

/-! ## A007070.P16081796661154788103

`∑[round((sqrt(2)+2)*a(n-1))]` with `a(0)=1`
-/

namespace A007070.P16081796661154788103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007070.P16081796661154788103

namespace A007070

/-- `∑[round((sqrt(2)+2)*a(n-1))]` -/
def P16081796661154788103.Spec : Prop :=
  ∀ n, P16081796661154788103.a n = A007070 n

end A007070

/-! ## A007070.P14724613058096199679

`Δ[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A007070.P14724613058096199679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007070.P14724613058096199679

namespace A007070

/-- `Δ[floor((sqrt(2)+2)*a(n-1))]` -/
def P14724613058096199679.Spec : Prop :=
  ∀ n, P14724613058096199679.a n = A007070 n

end A007070

/-! ## A007070.P16360957485515861448

`∑[floor(2*a(n-1)/(2-sqrt(2)))]` with `a(0)=1`
-/

namespace A007070.P16360957485515861448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(2 * f1 (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007070.P16360957485515861448

namespace A007070

/-- `∑[floor(2*a(n-1)/(2-sqrt(2)))]` -/
def P16360957485515861448.Spec : Prop :=
  ∀ n, P16360957485515861448.a n = A007070 n

end A007070

/-! ## A007070.P2065509943718468054

`∑[A007052(n)]`
-/

namespace A007070.P2065509943718468054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007070.P2065509943718468054

namespace A007070

/-- `∑[A007052(n)]` -/
def P2065509943718468054.Spec : Prop :=
  ∀ n, P2065509943718468054.a n = A007070 n

end A007070

/-! ## A007070.P4747876592407051225

`Δ[A006012(n)]`
-/

namespace A007070.P4747876592407051225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007070.P4747876592407051225

namespace A007070

/-- `Δ[A006012(n)]` -/
def P4747876592407051225.Spec : Prop :=
  ∀ n, P4747876592407051225.a n = A007070 n

end A007070

/-! ## A007070.P6377175080469263015

`A204089(n+1)`
-/

namespace A007070.P6377175080469263015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1)

end

end A007070.P6377175080469263015

namespace A007070

/-- `A204089(n+1)` -/
def P6377175080469263015.Spec : Prop :=
  ∀ n, P6377175080469263015.a n = A007070 n

end A007070

/-! ## A007070.P1161246414649058297

`A068912(2*n)`
-/

namespace A007070.P1161246414649058297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n)

end

end A007070.P1161246414649058297

namespace A007070

/-- `A068912(2*n)` -/
def P1161246414649058297.Spec : Prop :=
  ∀ n, P1161246414649058297.a n = A007070 n

end A007070

/-! ## A007070.P13020989946134513347

`A217730(2*n)`
-/

namespace A007070.P13020989946134513347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (2 * n)

end

end A007070.P13020989946134513347

namespace A007070

/-- `A217730(2*n)` -/
def P13020989946134513347.Spec : Prop :=
  ∀ n, P13020989946134513347.a n = A007070 n

end A007070

/-! ## A007070.P15372567738862667682

`A007068(Δ[n²])`
-/

namespace A007070.P15372567738862667682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007070.P15372567738862667682

namespace A007070

/-- `A007068(Δ[n²])` -/
def P15372567738862667682.Spec : Prop :=
  ∀ n, P15372567738862667682.a n = A007070 n

end A007070

/-! ## A007070.P15312730702882861831

`∑[∑[A003480(n)]]`
-/

namespace A007070.P15312730702882861831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007070.P15312730702882861831

namespace A007070

/-- `∑[∑[A003480(n)]]` -/
def P15312730702882861831.Spec : Prop :=
  ∀ n, P15312730702882861831.a n = A007070 n

end A007070

/-! ## A007070.P13413044762440372734

`∑[A062113(2*n)]`
-/

namespace A007070.P13413044762440372734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007070.P13413044762440372734

namespace A007070

/-- `∑[A062113(2*n)]` -/
def P13413044762440372734.Spec : Prop :=
  ∀ n, P13413044762440372734.a n = A007070 n

end A007070

/-! ## A007070.P12352729062023884690

`Δ[A030436(2*n)]`
-/

namespace A007070.P12352729062023884690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007070.P12352729062023884690

namespace A007070

/-- `Δ[A030436(2*n)]` -/
def P12352729062023884690.Spec : Prop :=
  ∀ n, P12352729062023884690.a n = A007070 n

end A007070

/-! ## A007070.P18413890790321602103

`∑[A030436(Δ[n²])]`
-/

namespace A007070.P18413890790321602103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007070.P18413890790321602103

namespace A007070

/-- `∑[A030436(Δ[n²])]` -/
def P18413890790321602103.Spec : Prop :=
  ∀ n, P18413890790321602103.a n = A007070 n

end A007070

/-! ## A007070.P1629611207529424307

`Δ[A062112(Δ[n²])]`
-/

namespace A007070.P1629611207529424307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007070.P1629611207529424307

namespace A007070

/-- `Δ[A062112(Δ[n²])]` -/
def P1629611207529424307.Spec : Prop :=
  ∀ n, P1629611207529424307.a n = A007070 n

end A007070

/-! ## A007070.P10894002664669653216

`A062112(2*(n+1))`
-/

namespace A007070.P10894002664669653216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * (n + 1))

end

end A007070.P10894002664669653216

namespace A007070

/-- `A062112(2*(n+1))` -/
def P10894002664669653216.Spec : Prop :=
  ∀ n, P10894002664669653216.a n = A007070 n

end A007070

/-! ## A007070.P7897822278725131872

`A121720(2*n+3)`
-/

namespace A007070.P7897822278725131872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (2 * n + 3)

end

end A007070.P7897822278725131872

namespace A007070

/-- `A121720(2*n+3)` -/
def P7897822278725131872.Spec : Prop :=
  ∀ n, P7897822278725131872.a n = A007070 n

end A007070

/-!
# A007071: First row of 2-shuffle of spectral array W( sqrt 2 ).

The programs for A007071, the canonical program `A007071.P9583933981391345506` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007071 has offset 1).

The definition of A007071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007071.P9583933981391345506

`∑[A188374(n+1)]+n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007071

/-- `∑[A188374(n+1)]+n` -/
def P9583933981391345506.Spec : Prop :=
  ∀ n, P9583933981391345506.a n = A007071 (n + 1)

theorem P9583933981391345506.correct : P9583933981391345506.Spec := by
  intro n
  simp only [A007071, Nat.add_sub_cancel]

end A007071

/-! ## A007071.P8077538986248574561

`comp[2*(A159684(n)+n)]`
-/

namespace A007071.P8077538986248574561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159684 n + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007071.P8077538986248574561

namespace A007071

/-- `comp[2*(A159684(n)+n)]` -/
def P8077538986248574561.Spec : Prop :=
  ∀ n, (P8077538986248574561.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P12197653562088471528

`comp[2*(n-A144611(n))]`
-/

namespace A007071.P12197653562088471528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A144611 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007071.P12197653562088471528

namespace A007071

/-- `comp[2*(n-A144611(n))]` -/
def P12197653562088471528.Spec : Prop :=
  ∀ n, (P12197653562088471528.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P5799056329801667436

`comp[2*comp[A286666(n+1)]]`
-/

namespace A007071.P5799056329801667436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007071.P5799056329801667436

namespace A007071

/-- `comp[2*comp[A286666(n+1)]]` -/
def P5799056329801667436.Spec : Prop :=
  ∀ n, (P5799056329801667436.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P7703417438547397920

`comp[2*(A003152(n+1)-1)]`
-/

namespace A007071.P7703417438547397920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003152 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007071.P7703417438547397920

namespace A007071

/-- `comp[2*(A003152(n+1)-1)]` -/
def P7703417438547397920.Spec : Prop :=
  ∀ n, (P7703417438547397920.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P18176749632941288001

`comp[A188376(n+1)-1+n]`
-/

namespace A007071.P18176749632941288001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007071.P18176749632941288001

namespace A007071

/-- `comp[A188376(n+1)-1+n]` -/
def P18176749632941288001.Spec : Prop :=
  ∀ n, (P18176749632941288001.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P2233040511639376399

`comp[2*(∑[A188295(n+1)+1]-1)]`
-/

namespace A007071.P2233040511639376399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007071.P2233040511639376399

namespace A007071

/-- `comp[2*(∑[A188295(n+1)+1]-1)]` -/
def P2233040511639376399.Spec : Prop :=
  ∀ n, (P2233040511639376399.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P15156240925711930948

`∪[A007069(n+1), A341249(n+1)]`
-/

namespace A007071.P15156240925711930948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007071.P15156240925711930948

namespace A007071

/-- `∪[A007069(n+1), A341249(n+1)]` -/
def P15156240925711930948.Spec : Prop :=
  ∀ n, (P15156240925711930948.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P3604606223515486639

`∑[val(Δ[A286686(n+1)], 2)]+n`
-/

namespace A007071.P3604606223515486639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007071.P3604606223515486639

namespace A007071

/-- `∑[val(Δ[A286686(n+1)], 2)]+n` -/
def P3604606223515486639.Spec : Prop :=
  ∀ n, (P3604606223515486639.a n : ℤ) = A007071 (n + 1)

end A007071

/-! ## A007071.P14289601101581659280

`A074840(A049474(n+2))+n`
-/

namespace A007071.P14289601101581659280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A049474 (n + 2)).toNat + (n : ℤ)

end

end A007071.P14289601101581659280

namespace A007071

/-- `A074840(A049474(n+2))+n` -/
def P14289601101581659280.Spec : Prop :=
  ∀ n, P14289601101581659280.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P7553290170813442695

`A003152(n+2)-A286924(n+2)+n`
-/

namespace A007071.P7553290170813442695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 2) - A286924 (n + 2) + (n : ℤ)

end

end A007071.P7553290170813442695

namespace A007071

/-- `A003152(n+2)-A286924(n+2)+n` -/
def P7553290170813442695.Spec : Prop :=
  ∀ n, P7553290170813442695.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P7860528242682054621

`A049472(A081477(n+1)-A049472(n))+A049472(n)`
-/

namespace A007071.P7860528242682054621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A081477 (n + 1) - A049472 n).toNat + A049472 n

end

end A007071.P7860528242682054621

namespace A007071

/-- `A049472(A081477(n+1)-A049472(n))+A049472(n)` -/
def P7860528242682054621.Spec : Prop :=
  ∀ n, P7860528242682054621.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P3019305294694827029

`∑[A188297(n+3)]+n`
-/

namespace A007071.P3019305294694827029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007071.P3019305294694827029

namespace A007071

/-- `∑[A188297(n+3)]+n` -/
def P3019305294694827029.Spec : Prop :=
  ∀ n, P3019305294694827029.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P2297989559001997671

`A049472(A286667(n+1)-A049472(n))+A049472(n)`
-/

namespace A007071.P2297989559001997671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A286667 (n + 1) - A049472 n).toNat + A049472 n

end

end A007071.P2297989559001997671

namespace A007071

/-- `A049472(A286667(n+1)-A049472(n))+A049472(n)` -/
def P2297989559001997671.Spec : Prop :=
  ∀ n, P2297989559001997671.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P7627610869862137771

`record[xor(n, A144611(A008619(n)))]`
-/

namespace A007071.P7627610869862137771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A144611 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007071.P7627610869862137771

namespace A007071

/-- `record[xor(n, A144611(A008619(n)))]` -/
def P7627610869862137771.Spec : Prop :=
  ∀ n, P7627610869862137771.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P8056706333750894983

`∑[A159684(A285074(n+2))]+n`
-/

namespace A007071.P8056706333750894983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A285074 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007071.P8056706333750894983

namespace A007071

/-- `∑[A159684(A285074(n+2))]+n` -/
def P8056706333750894983.Spec : Prop :=
  ∀ n, P8056706333750894983.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P14146754609613103267

`∑[A159684(A285077(n+2))]+n`
-/

namespace A007071.P14146754609613103267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A285077 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007071.P14146754609613103267

namespace A007071

/-- `∑[A159684(A285077(n+2))]+n` -/
def P14146754609613103267.Spec : Prop :=
  ∀ n, P14146754609613103267.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P700928358437552256

`∑[A006337(A003152(n+1)+3)]-1`
-/

namespace A007071.P700928358437552256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A003152 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007071.P700928358437552256

namespace A007071

/-- `∑[A006337(A003152(n+1)+3)]-1` -/
def P700928358437552256.Spec : Prop :=
  ∀ n, P700928358437552256.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P8103406231108057867

`∑[(2-A263844(n+1))!]-1`
-/

namespace A007071.P8103406231108057867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - A263844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A007071.P8103406231108057867

namespace A007071

/-- `∑[(2-A263844(n+1))!]-1` -/
def P8103406231108057867.Spec : Prop :=
  ∀ n, P8103406231108057867.a n = A007071 (n + 1)

end A007071

/-! ## A007071.P6190953712397798757

`A188376(n+1)-(A263844(n+1)+n)`
-/

namespace A007071.P6190953712397798757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) - (A263844 (n + 1) + (n : ℤ))

end

end A007071.P6190953712397798757

namespace A007071

/-- `A188376(n+1)-(A263844(n+1)+n)` -/
def P6190953712397798757.Spec : Prop :=
  ∀ n, P6190953712397798757.a n = A007071 (n + 1)

end A007071

/-!
# A007072: First column of array associated with monotonic justified array.

The programs for A007072, there is no canonical definition to state claims against.
-/

/-! ## A007072.P12941841204693893874

`A166486(A034288(3*n+4))+A042968(2*n+1)`
-/

namespace A007072.P12941841204693893874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A034288 (3 * n + 4)).toNat + A042968 (2 * n + 1)

end

end A007072.P12941841204693893874

/-! ## A007072.P6538370175293401671

`A008619(A219529(n)-A008683(A343744(n+1)))`
-/

namespace A007072.P6538370175293401671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A219529 n - A008683 (A343744 (n + 1)).toNat).toNat

end

end A007072.P6538370175293401671

/-! ## A007072.P17815802117705182959

`A337037(2*n+1)+A003849(A157726(n))`
-/

namespace A007072.P17815802117705182959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (2 * n + 1) + A003849 (A157726 n).toNat

end

end A007072.P17815802117705182959

/-! ## A007072.P1861727051679980896

`A001950(n+1)-A285972(A028445(n+4))`
-/

namespace A007072.P1861727051679980896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - A285972 (A028445 (n + 4)).toNat

end

end A007072.P1861727051679980896

/-! ## A007072.P5093169338257420853

`A007064(n+1)-A367512(A231396(2*(n+1)))`
-/

namespace A007072.P5093169338257420853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1) - A367512 (A231396 (2 * (n + 1))).toNat

end

end A007072.P5093169338257420853

/-!
# A007073: First column of array associated with lexicographically justified array.

The programs for A007073, there is no canonical definition to state claims against.
-/

/-! ## A007073.P15977261429978281885

`A025466(A122349(∏{p}[n, #]))+A007064(n+1)`
-/

namespace A007073.P15977261429978281885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A122349 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + A007064 (n + 1)

end

end A007073.P15977261429978281885

/-! ## A007073.P9300306766108719963

`A025466(A122349(n))+A007064(n+1)`
-/

namespace A007073.P9300306766108719963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A122349 n).toNat + A007064 (n + 1)

end

end A007073.P9300306766108719963

/-! ## A007073.P3758804838945643921

`or(A007064(n+1), A322860(A008778(n)))`
-/

namespace A007073.P3758804838945643921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007064 (n + 1)) (A322860 (A008778 n).toNat)

end

end A007073.P3758804838945643921

/-! ## A007073.P17428099510738475224

`A335446(A042964(n+1))+A007064(n+1)`
-/

namespace A007073.P17428099510738475224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A042964 (n + 1)).toNat + A007064 (n + 1)

end

end A007073.P17428099510738475224

/-! ## A007073.P14599387654026728087

`A185229(A091327(n+2))+A007064(n+1)`
-/

namespace A007073.P14599387654026728087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 (A091327 (n + 2)).toNat + A007064 (n + 1)

end

end A007073.P14599387654026728087

/-!
# A007074: First column of array associated with reverse lexicographically justified array.

The programs for A007074, there is no canonical definition to state claims against.
-/

/-! ## A007074.P6395311493336244634

`∑[A000002(A319572(n)+A054352(n))]+n`
-/

namespace A007074.P6395311493336244634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A319572 n + A054352 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007074.P6395311493336244634

/-! ## A007074.P3993059869440663012

`A001950(n+1)-A100810(A020883(n+1))`
-/

namespace A007074.P3993059869440663012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - A100810 (A020883 (n + 1)).toNat

end

end A007074.P3993059869440663012

/-! ## A007074.P9866525996401231363

`A000201(n+1)+A288257(A309813(n+1))+n`
-/

namespace A007074.P9866525996401231363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (A288257 (A309813 (n + 1)).toNat + (n : ℤ))

end

end A007074.P9866525996401231363

/-! ## A007074.P8806376255767511761

`A026351(n+1)-A100810(A020883(n+1))+n`
-/

namespace A007074.P8806376255767511761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) - A100810 (A020883 (n + 1)).toNat + (n : ℤ)

end

end A007074.P8806376255767511761

/-! ## A007074.P4803225265199554490

`A111660(A247783(n+1))`
-/

namespace A007074.P4803225265199554490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A247783 (n + 1)).toNat

end

end A007074.P4803225265199554490

/-!
# A007075: Number of irreducible positions of size n in Montreal solitaire.

The programs for A007075, there is no canonical definition to state claims against.
-/

/-! ## A007075.P5350926934527839249

`A065033(A103780(n+1))`
-/

namespace A007075.P5350926934527839249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A103780 (n + 1)).toNat

end

end A007075.P5350926934527839249

/-! ## A007075.P12545245170761310183

`A004526(A103780(n+1)+1)`
-/

namespace A007075.P12545245170761310183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A103780 (n + 1) + 1).toNat

end

end A007075.P12545245170761310183

/-! ## A007075.P15335994811281877841

`A008619(A103780(n+1)-1)`
-/

namespace A007075.P15335994811281877841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103780 (n + 1) - 1).toNat

end

end A007075.P15335994811281877841

/-! ## A007075.P6067926844811899944

`A065033(record[A103780(n)-char[1]])`
-/

namespace A007075.P6067926844811899944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103780 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007075.P6067926844811899944

/-! ## A007075.P10199034858505219901

`A065033(record[A103780(∑[(-1)^(n%3)])])`
-/

namespace A007075.P10199034858505219901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103780 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007075.P10199034858505219901

/-!
# A007076: Number of irreducible positions of size n in Montreal solitaire.

The programs for A007076, there is no canonical definition to state claims against.
-/

/-! ## A007076.P17377758816267992649

`A007046(n+6)%Δ[A007075(n+3)]`
-/

namespace A007076.P17377758816267992649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007075 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007046 (n + 6)) (f1 (n + 1) - f1 n)

end

end A007076.P17377758816267992649

/-! ## A007076.P16807965367522630507

`A001462(A099622(n+1))`
-/

namespace A007076.P16807965367522630507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A099622 (n + 1)).toNat

end

end A007076.P16807965367522630507

/-!
# A007077: Optimal cost of search tree for searching an ordered array of n elements with cost k of probing element k.

The programs for A007077, there is no canonical definition to state claims against.
-/

/-! ## A007077.P14209973106476500227

`∑[∑[A124767(A077443(n+1))]]`
-/

namespace A007077.P14209973106476500227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A077443 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007077.P14209973106476500227

/-! ## A007077.P10373055758166826048

`∑[∑[A212625((n+1)*∏{p}[n+1, #]+1)]]`
-/

namespace A007077.P10373055758166826048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 ((n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), p) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007077.P10373055758166826048

/-! ## A007077.P4697742128200242285

`∑[∑[A104246(A360293(n))]]`
-/

namespace A007077.P4697742128200242285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A360293 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007077.P4697742128200242285

/-! ## A007077.P5020650167601996246

`∑[∑[A333632(A332446(n+1))]]`
-/

namespace A007077.P5020650167601996246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A332446 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007077.P5020650167601996246

/-! ## A007077.P13049086603584788333

`∑[∑[A043558(A117485(3*n+10))]]`
-/

namespace A007077.P13049086603584788333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A117485 (3 * n + 10)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007077.P13049086603584788333

/-!
# A007078: Optimal cost of search tree.

The programs for A007078, there is no canonical definition to state claims against.
-/

/-! ## A007078.P15900062153605631701

`A276128(2*n+3)/2`
-/

namespace A007078.P15900062153605631701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276128 (2 * n + 3) : ℚ) / 2

end

end A007078.P15900062153605631701

/-! ## A007078.P8473611968720219188

`floor(A276128(n+3+n)/2)`
-/

namespace A007078.P8473611968720219188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276128 (n + 3 + n) : ℚ) / 2⌋

end

end A007078.P8473611968720219188

/-! ## A007078.P15623927811678762389

`ceil(A276128(Δ[(n+1)²])/2)`
-/

namespace A007078.P15623927811678762389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A007078.P15623927811678762389

/-! ## A007078.P10246136934277478667

`A276128(2*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A007078.P10246136934277478667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276128 (2 * (n + 1)) - a (n - 1)

end

end A007078.P10246136934277478667

/-! ## A007078.P4182190393940737377

`A001281(A276128(2*n+3))`
-/

namespace A007078.P4182190393940737377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A276128 (2 * n + 3)).toNat

end

end A007078.P4182190393940737377

/-! ## A007078.P14164145940908677208

`A004525(A276128(Δ[(n+1)²]))`
-/

namespace A007078.P14164145940908677208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A276128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A007078.P14164145940908677208

/-! ## A007078.P17243850214106792654

`A008619(A276128(2*n+3)-1)`
-/

namespace A007078.P17243850214106792654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A276128 (2 * n + 3) - 1).toNat

end

end A007078.P17243850214106792654

/-! ## A007078.P13722538515778006361

`A000027(A276128(n+3+n)/2)`
-/

namespace A007078.P13722538515778006361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A276128 (n + 3 + n) : ℚ) / 2)).toNat

end

end A007078.P13722538515778006361

/-! ## A007078.P5504628329470789342

`∑[A004526(Δ[A276128(2*n+1)])]`
-/

namespace A007078.P5504628329470789342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276128 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007078.P5504628329470789342

/-! ## A007078.P7415428854535826357

`(A276128(n+3+n)/2)%A000040(n+2)`
-/

namespace A007078.P7415428854535826357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A276128 (n + 3 + n) : ℚ) / 2)) (A000040 (n + 2))

end

end A007078.P7415428854535826357

/-!
# A007079: Number of labeled regular tournaments with 2n+1 nodes.

The programs for A007079, there is no canonical definition to state claims against.
-/

/-! ## A007079.P1005353544659828190

`record[A125032(∑[A077003(n+1)])]`
-/

namespace A007079.P1005353544659828190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077003 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125032 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007079.P1005353544659828190

/-!
# A007080: Number of labeled Eulerian digraphs with n nodes.

The programs for A007080, there is no canonical definition to state claims against.
-/

/-! ## A007080.P17249701420226734922

`∏[n+1]+2*A054956(n+1)`
-/

namespace A007080.P17249701420226734922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A054956 (n + 1)

end

end A007080.P17249701420226734922

/-! ## A007080.P5896201398923530029

`A054956(n+1)+A054955(n+1)`
-/

namespace A007080.P5896201398923530029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054956 (n + 1) + A054955 (n + 1)

end

end A007080.P5896201398923530029

/-! ## A007080.P3776493921490333102

`A054955(n+1)+A054955(n+1)-A000142(n+1)`
-/

namespace A007080.P3776493921490333102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054955 (n + 1) + (A054955 (n + 1) - A000142 (n + 1))

end

end A007080.P3776493921490333102

/-! ## A007080.P6431382595681189688

`A054956(A000027(n+1))+A054956(n+1)+(n+1)!`
-/

namespace A007080.P6431382595681189688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054956 (A000027 (n + 1)).toNat + (A054956 (n + 1) + (Nat.factorial (n + 1) : ℤ))

end

end A007080.P6431382595681189688

/-! ## A007080.P2028944909498311531

`A054956(A002377(n+1))+A054956(n+1)+(n+1)!`
-/

namespace A007080.P2028944909498311531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054956 (A002377 (n + 1)).toNat + (A054956 (n + 1) + (Nat.factorial (n + 1) : ℤ))

end

end A007080.P2028944909498311531

/-!
# A007081: Number of labeled Eulerian oriented graphs with n nodes.

The programs for A007081, there is no canonical definition to state claims against.
-/

/-! ## A007081.P6794246391436314240

`A364911((n-1)*10*a(n-1))` with `a(0)=1`
-/

namespace A007081.P6794246391436314240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A364911 (((n : ℤ) - 1) * (10 * a (n - 1))).toNat

end

end A007081.P6794246391436314240

/-! ## A007081.P9782118248809241029

`A347577(A000963(n))`
-/

namespace A007081.P9782118248809241029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347577 ((A000963 n).toNat + 55)

end

end A007081.P9782118248809241029

/-!
# A007083: Number of unlabeled trivalent 3-connected bipartite planar graphs with 2n nodes.

The programs for A007083, there is no canonical definition to state claims against.
-/

/-! ## A007083.P12082673582880875777

`A053644(A000200(n)^gcd(11, n))`
-/

namespace A007083.P12082673582880875777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000200 n ^ Nat.gcd 11 n).toNat

end

end A007083.P12082673582880875777

/-! ## A007083.P4643628486573200310

`A340280(abs(Δ[A096113(n+1)]))`
-/

namespace A007083.P4643628486573200310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 |f1 (n + 1) - f1 n|.toNat

end

end A007083.P4643628486573200310

/-! ## A007083.P5411595238847225001

`A053644(A000200(n*A063065(n)))`
-/

namespace A007083.P5411595238847225001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000200 ((n : ℤ) * A063065 n).toNat).toNat

end

end A007083.P5411595238847225001

/-! ## A007083.P223624804710691712

`A053644(A000200(n)^A063065(n))`
-/

namespace A007083.P223624804710691712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (SequenceMachineLib.roundAway ((A000200 n : ℚ) ^ (A063065 n : ℤ))).toNat

end

end A007083.P223624804710691712

/-! ## A007083.P2980018812145193924

`A053644(A000200(n)%A319765(n))`
-/

namespace A007083.P2980018812145193924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Int.tmod (A000200 n) (A319765 n)).toNat

end

end A007083.P2980018812145193924

/-!
# A007086: Next term is uniquely the sum of 3 earlier terms.

The programs for A007086, there is no canonical definition to state claims against.
-/

/-! ## A007086.P1316168986382318395

`A183534(∑[n+2])`
-/

namespace A007086.P1316168986382318395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007086.P1316168986382318395

/-! ## A007086.P9775743814603702829

`record[A183534(A347633(n+1)+1)]`
-/

namespace A007086.P9775743814603702829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007086.P9775743814603702829

/-! ## A007086.P5363175126612968187

`or(char[2], A183534(A000096(n+1)))`
-/

namespace A007086.P5363175126612968187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183534 (A000096 (n + 1)).toNat)

end

end A007086.P5363175126612968187

/-! ## A007086.P3231315531211757579

`Δ[A183534(A000096(n))+a(n-1)]` with `a(0)=0`
-/

namespace A007086.P3231315531211757579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A183534 (A000096 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007086.P3231315531211757579

/-! ## A007086.P5276127672992713337

`record[A183534(A000096(A020986(n)))]`
-/

namespace A007086.P5276127672992713337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007086.P5276127672992713337

/-! ## A007086.P7424203140579676999

`A183534(A000096(n+1))%A000041(n+2)`
-/

namespace A007086.P7424203140579676999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183534 (A000096 (n + 1)).toNat) (A000041 (n + 2))

end

end A007086.P7424203140579676999

/-! ## A007086.P17463292955083639241

`A007318(C(2, n))*A183534(A000096(n+1))`
-/

namespace A007086.P17463292955083639241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183534 (A000096 (n + 1)).toNat

end

end A007086.P17463292955083639241

/-! ## A007086.P1177112246243395182

`A007318(and(2, -n))*A183534(A000096(n+1))`
-/

namespace A007086.P1177112246243395182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A183534 (A000096 (n + 1)).toNat

end

end A007086.P1177112246243395182

/-! ## A007086.P10358694260105162084

`A183534(A000096(n+1))+A008683(4*(n+1))`
-/

namespace A007086.P10358694260105162084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (A000096 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A007086.P10358694260105162084

/-!
# A007087: Next term is uniquely the sum of 3 earlier terms.

The programs for A007087, there is no canonical definition to state claims against.
-/

/-! ## A007087.P7420440398842357952

`record[and(A029033(n), A282505(n+1))]`
-/

namespace A007087.P7420440398842357952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029033 n) (A282505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007087.P7420440398842357952

/-! ## A007087.P17254287841442205426

`record[and(A049273(n+1), A310459(n))]`
-/

namespace A007087.P17254287841442205426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049273 (n + 1)) (A310459 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007087.P17254287841442205426

/-! ## A007087.P7045858367770783453

`A159072(A080498(n+1)+A008574(n))`
-/

namespace A007087.P7045858367770783453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159072 (A080498 (n + 1) + A008574 n).toNat

end

end A007087.P7045858367770783453

/-! ## A007087.P9037348932470545146

`A016014(A331874(n+1))+A006218(n)`
-/

namespace A007087.P9037348932470545146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A331874 (n + 1)).toNat + A006218 n

end

end A007087.P9037348932470545146

/-! ## A007087.P18116595813374588383

`eq[A054522(A163892(n)), A350957(n+1)]`
-/

namespace A007087.P18116595813374588383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (A163892 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007087.P18116595813374588383

/-!
# A007088: The binary numbers (or binary words, or binary vectors, or binary expansion of n): numbers written in base 2.

The programs for A007088, the canonical program `A007088.P12432121332583687413` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007088 has offset 0).

The definition of A007088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097256, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007088.P12432121332583687413

`A097256(n)/9`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007088

/-- `A097256(n)/9` -/
def P12432121332583687413.Spec : Prop :=
  ∀ n, P12432121332583687413.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P4238018822949270900

`sqrt(A063009(n))`
-/

namespace A007088.P4238018822949270900
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 n : ℝ)

end

end A007088.P4238018822949270900

namespace A007088

/-- `sqrt(A063009(n))` -/
def P4238018822949270900.Spec : Prop :=
  ∀ n, P4238018822949270900.a n = (A007088 n : ℝ)

end A007088

/-! ## A007088.P18256212422889626206

`A204093(n)/6`
-/

namespace A007088.P18256212422889626206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 n : ℚ) / 6

end

end A007088.P18256212422889626206

namespace A007088

/-- `A204093(n)/6` -/
def P18256212422889626206.Spec : Prop :=
  ∀ n, P18256212422889626206.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P13071237243725444033

`A204094(n)/7`
-/

namespace A007088.P13071237243725444033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℚ) / 7

end

end A007088.P13071237243725444033

namespace A007088

/-- `A204094(n)/7` -/
def P13071237243725444033.Spec : Prop :=
  ∀ n, P13071237243725444033.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P3798721179072876863

`A204095(n)/8`
-/

namespace A007088.P3798721179072876863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℚ) / 8

end

end A007088.P3798721179072876863

namespace A007088

/-- `A204095(n)/8` -/
def P3798721179072876863.Spec : Prop :=
  ∀ n, P3798721179072876863.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P12691562052102681189

`A099820(n)/10`
-/

namespace A007088.P12691562052102681189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 n : ℚ) / 10

end

end A007088.P12691562052102681189

namespace A007088

/-- `A099820(n)/10` -/
def P12691562052102681189.Spec : Prop :=
  ∀ n, P12691562052102681189.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P18365581877041179265

`A228071(n)+n`
-/

namespace A007088.P18365581877041179265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 n + (n : ℤ)

end

end A007088.P18365581877041179265

namespace A007088

/-- `A228071(n)+n` -/
def P18365581877041179265.Spec : Prop :=
  ∀ n, P18365581877041179265.a n = A007088 n

end A007088

/-! ## A007088.P11874657425447291193

`A269130(n)-n`
-/

namespace A007088.P11874657425447291193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269130 n - (n : ℤ)

end

end A007088.P11874657425447291193

namespace A007088

/-- `A269130(n)-n` -/
def P11874657425447291193.Spec : Prop :=
  ∀ n, P11874657425447291193.a n = A007088 n

end A007088

/-! ## A007088.P3770965716605259610

`A169965(n+1)/2`
-/

namespace A007088.P3770965716605259610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (n + 1) : ℚ) / 2

end

end A007088.P3770965716605259610

namespace A007088

/-- `A169965(n+1)/2` -/
def P3770965716605259610.Spec : Prop :=
  ∀ n, P3770965716605259610.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P349420159982238985

`A169966(n+1)/3`
-/

namespace A007088.P349420159982238985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (n + 1) : ℚ) / 3

end

end A007088.P349420159982238985

namespace A007088

/-- `A169966(n+1)/3` -/
def P349420159982238985.Spec : Prop :=
  ∀ n, P349420159982238985.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P12787026968623379672

`A169967(n+1)/4`
-/

namespace A007088.P12787026968623379672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) / 4

end

end A007088.P12787026968623379672

namespace A007088

/-- `A169967(n+1)/4` -/
def P12787026968623379672.Spec : Prop :=
  ∀ n, P12787026968623379672.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P877665939650200486

`A169964(n+1)/5`
-/

namespace A007088.P877665939650200486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) : ℚ) / 5

end

end A007088.P877665939650200486

namespace A007088

/-- `A169964(n+1)/5` -/
def P877665939650200486.Spec : Prop :=
  ∀ n, P877665939650200486.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P14504000094996711859

`A303596(A372060(n))`
-/

namespace A007088.P14504000094996711859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 n).toNat

end

end A007088.P14504000094996711859

namespace A007088

/-- `A303596(A372060(n))` -/
def P14504000094996711859.Spec : Prop :=
  ∀ n, P14504000094996711859.a n = A007088 n

end A007088

/-! ## A007088.P13750052416908171801

`A099820(n)-A097256(n)`
-/

namespace A007088.P13750052416908171801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A097256 n

end

end A007088.P13750052416908171801

namespace A007088

/-- `A099820(n)-A097256(n)` -/
def P13750052416908171801.Spec : Prop :=
  ∀ n, P13750052416908171801.a n = A007088 n

end A007088

/-! ## A007088.P9920337870463089382

`A097256(n)-A204095(n)`
-/

namespace A007088.P9920337870463089382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n - A204095 n

end

end A007088.P9920337870463089382

namespace A007088

/-- `A097256(n)-A204095(n)` -/
def P9920337870463089382.Spec : Prop :=
  ∀ n, P9920337870463089382.a n = A007088 n

end A007088

/-! ## A007088.P3037507023502210454

`A204094(n)-A204093(n)`
-/

namespace A007088.P3037507023502210454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n - A204093 n

end

end A007088.P3037507023502210454

namespace A007088

/-- `A204094(n)-A204093(n)` -/
def P3037507023502210454.Spec : Prop :=
  ∀ n, P3037507023502210454.a n = A007088 n

end A007088

/-! ## A007088.P11448521290085113060

`A204095(n)-A204094(n)`
-/

namespace A007088.P11448521290085113060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n - A204094 n

end

end A007088.P11448521290085113060

namespace A007088

/-- `A204095(n)-A204094(n)` -/
def P11448521290085113060.Spec : Prop :=
  ∀ n, P11448521290085113060.a n = A007088 n

end A007088

/-! ## A007088.P4874838237682387117

`A127906(n)/A028310(n)`
-/

namespace A007088.P4874838237682387117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127906 n : ℚ) / (A028310 n : ℚ)

end

end A007088.P4874838237682387117

namespace A007088

/-- `A127906(n)/A028310(n)` -/
def P4874838237682387117.Spec : Prop :=
  ∀ n, P4874838237682387117.a n = (A007088 n : ℚ)

end A007088

/-! ## A007088.P11704408663071285273

`gcd(A097256(n), A204094(n))`
-/

namespace A007088.P11704408663071285273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097256 n) (A204094 n)

end

end A007088.P11704408663071285273

namespace A007088

/-- `gcd(A097256(n), A204094(n))` -/
def P11704408663071285273.Spec : Prop :=
  ∀ n, (P11704408663071285273.a n : ℤ) = A007088 n

end A007088

/-! ## A007088.P11860278142936203154

`∪[A037415(n+1), A104326(n)]`
-/

namespace A007088.P11860278142936203154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007088.P11860278142936203154

namespace A007088

/-- `∪[A037415(n+1), A104326(n)]` -/
def P11860278142936203154.Spec : Prop :=
  ∀ n, (P11860278142936203154.a n : ℤ) = A007088 n

end A007088

/-!
# A007089: Numbers in base 3.

The programs for A007089, the canonical program `A007089.P15426934171605968316` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007089 has offset 0).

The definition of A007089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007089.P15426934171605968316

`10*a(floor(n/3))+n%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007089

/-- `10*a(floor(n/3))+n%3` -/
def P15426934171605968316.Spec : Prop :=
  ∀ n, (P15426934171605968316.a n : ℤ) = A007089 n

theorem P15426934171605968316.correct : P15426934171605968316.Spec := by
  intro n
  simp only [A007089]

end A007089

/-! ## A007089.P4691319833990132328

`A343810(n)/4`
-/

namespace A007089.P4691319833990132328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 n : ℚ) / 4

end

end A007089.P4691319833990132328

namespace A007089

/-- `A343810(n)/4` -/
def P4691319833990132328.Spec : Prop :=
  ∀ n, P4691319833990132328.a n = (A007089 n : ℚ)

end A007089

/-! ## A007089.P9414405971595952370

`∪[A277964(n+1), A007088(n)]`
-/

namespace A007089.P9414405971595952370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P9414405971595952370

namespace A007089

/-- `∪[A277964(n+1), A007088(n)]` -/
def P9414405971595952370.Spec : Prop :=
  ∀ n, (P9414405971595952370.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P11175341515137553523

`∪[A277964(n+1), A105116(n)]`
-/

namespace A007089.P11175341515137553523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P11175341515137553523

namespace A007089

/-- `∪[A277964(n+1), A105116(n)]` -/
def P11175341515137553523.Spec : Prop :=
  ∀ n, (P11175341515137553523.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P2679822698435586778

`∪[A277964(n+1), A109827(n)]`
-/

namespace A007089.P2679822698435586778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P2679822698435586778

namespace A007089

/-- `∪[A277964(n+1), A109827(n)]` -/
def P2679822698435586778.Spec : Prop :=
  ∀ n, (P2679822698435586778.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P2416081835095384385

`∪[A277964(n+1), A169683(n)]`
-/

namespace A007089.P2416081835095384385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P2416081835095384385

namespace A007089

/-- `∪[A277964(n+1), A169683(n)]` -/
def P2416081835095384385.Spec : Prop :=
  ∀ n, (P2416081835095384385.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P843128258022778744

`∪[A277964(n+1), A265747(n)]`
-/

namespace A007089.P843128258022778744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P843128258022778744

namespace A007089

/-- `∪[A277964(n+1), A265747(n)]` -/
def P843128258022778744.Spec : Prop :=
  ∀ n, (P843128258022778744.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P10016302545892381177

`∪[A277964(n+1), A317204(n)]`
-/

namespace A007089.P10016302545892381177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P10016302545892381177

namespace A007089

/-- `∪[A277964(n+1), A317204(n)]` -/
def P10016302545892381177.Spec : Prop :=
  ∀ n, (P10016302545892381177.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P14428775393708417303

`∪[A277964(n+1), A340051(n)]`
-/

namespace A007089.P14428775393708417303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P14428775393708417303

namespace A007089

/-- `∪[A277964(n+1), A340051(n)]` -/
def P14428775393708417303.Spec : Prop :=
  ∀ n, (P14428775393708417303.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P17428743338435319126

`∪[A277964(n+1), A381579(n)]`
-/

namespace A007089.P17428743338435319126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381579 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007089.P17428743338435319126

namespace A007089

/-- `∪[A277964(n+1), A381579(n)]` -/
def P17428743338435319126.Spec : Prop :=
  ∀ n, (P17428743338435319126.a n : ℤ) = A007089 n

end A007089

/-! ## A007089.P18227137348742393054

`A381668(A105529(n))`
-/

namespace A007089.P18227137348742393054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381668 (A105529 n).toNat

end

end A007089.P18227137348742393054

namespace A007089

/-- `A381668(A105529(n))` -/
def P18227137348742393054.Spec : Prop :=
  ∀ n, P18227137348742393054.a n = A007089 n

end A007089

/-! ## A007089.P1807555167867376115

`A024635(2*n)/2`
-/

namespace A007089.P1807555167867376115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024635 (2 * n) : ℚ) / 2

end

end A007089.P1807555167867376115

namespace A007089

/-- `A024635(2*n)/2` -/
def P1807555167867376115.Spec : Prop :=
  ∀ n, P1807555167867376115.a n = (A007089 n : ℚ)

end A007089

/-! ## A007089.P5798686745434455366

`A024651(3*n)/3`
-/

namespace A007089.P5798686745434455366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024651 (3 * n) : ℚ) / 3

end

end A007089.P5798686745434455366

namespace A007089

/-- `A024651(3*n)/3` -/
def P5798686745434455366.Spec : Prop :=
  ∀ n, P5798686745434455366.a n = (A007089 n : ℚ)

end A007089

/-! ## A007089.P13903141130415407565

`A007090(A023717(n))`
-/

namespace A007089.P13903141130415407565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023717 n).toNat

end

end A007089.P13903141130415407565

namespace A007089

/-- `A007090(A023717(n))` -/
def P13903141130415407565.Spec : Prop :=
  ∀ n, P13903141130415407565.a n = A007089 n

end A007089

/-! ## A007089.P3727473128477728418

`A007090(eq[0, A292373(n)])`
-/

namespace A007089.P3727473128477728418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007089.P3727473128477728418

namespace A007089

/-- `A007090(eq[0, A292373(n)])` -/
def P3727473128477728418.Spec : Prop :=
  ∀ n, P3727473128477728418.a n = A007089 n

end A007089

/-! ## A007089.P3144378018210991970

`A007090(lt[A292373(n), 1])`
-/

namespace A007089.P3144378018210991970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A007089.P3144378018210991970

namespace A007089

/-- `A007090(lt[A292373(n), 1])` -/
def P3144378018210991970.Spec : Prop :=
  ∀ n, P3144378018210991970.a n = A007089 n

end A007089

/-! ## A007089.P12987600560400779423

`A007090(record[gcd(n, A292373(n))])`
-/

namespace A007089.P12987600560400779423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292373 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007089.P12987600560400779423

namespace A007089

/-- `A007090(record[gcd(n, A292373(n))])` -/
def P12987600560400779423.Spec : Prop :=
  ∀ n, P12987600560400779423.a n = A007089 n

end A007089

/-! ## A007089.P3983812272152963895

`A007090(record[and(n, A048647(n))])`
-/

namespace A007089.P3983812272152963895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A048647 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007089.P3983812272152963895

namespace A007089

/-- `A007090(record[and(n, A048647(n))])` -/
def P3983812272152963895.Spec : Prop :=
  ∀ n, P3983812272152963895.a n = A007089 n

end A007089

/-! ## A007089.P8428176595634164797

`A007090(eq[A059905(n), A292371(n)])`
-/

namespace A007089.P8428176595634164797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007089.P8428176595634164797

namespace A007089

/-- `A007090(eq[A059905(n), A292371(n)])` -/
def P8428176595634164797.Spec : Prop :=
  ∀ n, P8428176595634164797.a n = A007089 n

end A007089

/-! ## A007089.P9135457867600402818

`A007090(eq[A059906(n), A292372(n)])`
-/

namespace A007089.P9135457867600402818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007089.P9135457867600402818

namespace A007089

/-- `A007090(eq[A059906(n), A292372(n)])` -/
def P9135457867600402818.Spec : Prop :=
  ∀ n, P9135457867600402818.a n = A007089 n

end A007089

/-!
# A007090: Numbers in base 4.

The programs for A007090, the canonical program `A007090.P11600105304047957284` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007090 has offset 0).

The definition of A007090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007090.P346557279555180838

`∪[A277965(n+1), A007089(n)]`
-/

namespace A007090.P346557279555180838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P346557279555180838

namespace A007090

/-- `∪[A277965(n+1), A007089(n)]` -/
def P346557279555180838.Spec : Prop :=
  ∀ n, (P346557279555180838.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P1587073662993521129

`∪[A277965(n+1), A344939(n)]`
-/

namespace A007090.P1587073662993521129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P1587073662993521129

namespace A007090

/-- `∪[A277965(n+1), A344939(n)]` -/
def P1587073662993521129.Spec : Prop :=
  ∀ n, (P1587073662993521129.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P11600105304047957284

`A024644(2*n)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007090

/-- `A024644(2*n)/2` -/
def P11600105304047957284.Spec : Prop :=
  ∀ n, P11600105304047957284.a n = (A007090 n : ℚ)

end A007090

/-! ## A007090.P3784286300543588689

`A007091(A020654(n+1))`
-/

namespace A007090.P3784286300543588689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A020654 (n + 1)).toNat

end

end A007090.P3784286300543588689

namespace A007090

/-- `A007091(A020654(n+1))` -/
def P3784286300543588689.Spec : Prop :=
  ∀ n, P3784286300543588689.a n = A007090 n

end A007090

/-! ## A007090.P6946934068360430429

`A007091(A020655(n+1)-1)`
-/

namespace A007090.P6946934068360430429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A020655 (n + 1) - 1).toNat

end

end A007090.P6946934068360430429

namespace A007090

/-- `A007091(A020655(n+1)-1)` -/
def P6946934068360430429.Spec : Prop :=
  ∀ n, P6946934068360430429.a n = A007090 n

end A007090

/-! ## A007090.P14148113813287045656

`A007092(A037460(n))`
-/

namespace A007090.P14148113813287045656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A037460 n).toNat

end

end A007090.P14148113813287045656

namespace A007090

/-- `A007092(A037460(n))` -/
def P14148113813287045656.Spec : Prop :=
  ∀ n, P14148113813287045656.a n = A007090 n

end A007090

/-! ## A007090.P9892683186952362971

`A202267(A037460(n)+1)`
-/

namespace A007090.P9892683186952362971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (A037460 n + 1).toNat

end

end A007090.P9892683186952362971

namespace A007090

/-- `A202267(A037460(n)+1)` -/
def P9892683186952362971.Spec : Prop :=
  ∀ n, P9892683186952362971.a n = A007090 n

end A007090

/-! ## A007090.P18073118305528540541

`∩[A202267(n+1), A007091(n)]`
-/

namespace A007090.P18073118305528540541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P18073118305528540541

namespace A007090

/-- `∩[A202267(n+1), A007091(n)]` -/
def P18073118305528540541.Spec : Prop :=
  ∀ n, (P18073118305528540541.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P11606590563920886061

`A007094(A037462(n))`
-/

namespace A007090.P11606590563920886061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037462 n).toNat

end

end A007090.P11606590563920886061

namespace A007090

/-- `A007094(A037462(n))` -/
def P11606590563920886061.Spec : Prop :=
  ∀ n, P11606590563920886061.a n = A007090 n

end A007090

/-! ## A007090.P18122708272203293539

`∩[A008541(n+1), A007091(n)]`
-/

namespace A007090.P18122708272203293539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P18122708272203293539

namespace A007090

/-- `∩[A008541(n+1), A007091(n)]` -/
def P18122708272203293539.Spec : Prop :=
  ∀ n, (P18122708272203293539.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P14342851319096279032

`∩[A008541(n+1), A007092(n)]`
-/

namespace A007090.P14342851319096279032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P14342851319096279032

namespace A007090

/-- `∩[A008541(n+1), A007092(n)]` -/
def P14342851319096279032.Spec : Prop :=
  ∀ n, (P14342851319096279032.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P3591158608878497697

`∩[A135210(n+1), A202267(n+1)]`
-/

namespace A007090.P3591158608878497697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P3591158608878497697

namespace A007090

/-- `∩[A135210(n+1), A202267(n+1)]` -/
def P3591158608878497697.Spec : Prop :=
  ∀ n, (P3591158608878497697.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P5472998418479511655

`∩[A039141(n+1), A007091(n)]`
-/

namespace A007090.P5472998418479511655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P5472998418479511655

namespace A007090

/-- `∩[A039141(n+1), A007091(n)]` -/
def P5472998418479511655.Spec : Prop :=
  ∀ n, (P5472998418479511655.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P6588422803879417082

`∩[A039142(n+1), A007091(n)]`
-/

namespace A007090.P6588422803879417082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P6588422803879417082

namespace A007090

/-- `∩[A039142(n+1), A007091(n)]` -/
def P6588422803879417082.Spec : Prop :=
  ∀ n, (P6588422803879417082.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P2948672985173975788

`∩[A039143(n+1), A007091(n)]`
-/

namespace A007090.P2948672985173975788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P2948672985173975788

namespace A007090

/-- `∩[A039143(n+1), A007091(n)]` -/
def P2948672985173975788.Spec : Prop :=
  ∀ n, (P2948672985173975788.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P898998998535691565

`∩[A039144(n+1), A007091(n)]`
-/

namespace A007090.P898998998535691565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P898998998535691565

namespace A007090

/-- `∩[A039144(n+1), A007091(n)]` -/
def P898998998535691565.Spec : Prop :=
  ∀ n, (P898998998535691565.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P8394733647817504356

`∩[A039145(n+1), A007091(n)]`
-/

namespace A007090.P8394733647817504356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P8394733647817504356

namespace A007090

/-- `∩[A039145(n+1), A007091(n)]` -/
def P8394733647817504356.Spec : Prop :=
  ∀ n, (P8394733647817504356.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P6635186978178175828

`A007095(A037463(n))`
-/

namespace A007090.P6635186978178175828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037463 n).toNat

end

end A007090.P6635186978178175828

namespace A007090

/-- `A007095(A037463(n))` -/
def P6635186978178175828.Spec : Prop :=
  ∀ n, P6635186978178175828.a n = A007090 n

end A007090

/-! ## A007090.P16983701927638236777

`∩[A052406(n+1), A007091(n)]`
-/

namespace A007090.P16983701927638236777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007090.P16983701927638236777

namespace A007090

/-- `∩[A052406(n+1), A007091(n)]` -/
def P16983701927638236777.Spec : Prop :=
  ∀ n, (P16983701927638236777.a n : ℤ) = A007090 n

end A007090

/-! ## A007090.P12486425902569230078

`record[A064770(n)]`
-/

namespace A007090.P12486425902569230078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007090.P12486425902569230078

namespace A007090

/-- `record[A064770(n)]` -/
def P12486425902569230078.Spec : Prop :=
  ∀ n, P12486425902569230078.a n = A007090 n

end A007090

/-!
# A007091: Numbers in base 5.

The programs for A007091, the canonical program `A007091.P1217996161546394470` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007091 has offset 0).

The definition of A007091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007091.P3130702021947953635

`A014263(n+1)/2`
-/

namespace A007091.P3130702021947953635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (n + 1) : ℚ) / 2

end

end A007091.P3130702021947953635

namespace A007091

/-- `A014263(n+1)/2` -/
def P3130702021947953635.Spec : Prop :=
  ∀ n, P3130702021947953635.a n = (A007091 n : ℚ)

end A007091

/-! ## A007091.P7503049167625005668

`∪[A277966(n+1), A007090(n)]`
-/

namespace A007091.P7503049167625005668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P7503049167625005668

namespace A007091

/-- `∪[A277966(n+1), A007090(n)]` -/
def P7503049167625005668.Spec : Prop :=
  ∀ n, (P7503049167625005668.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P215376458547549489

`record[A014261(n+1)-A084545(n+1)]`
-/

namespace A007091.P215376458547549489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1) - A084545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007091.P215376458547549489

namespace A007091

/-- `record[A014261(n+1)-A084545(n+1)]` -/
def P215376458547549489.Spec : Prop :=
  ∀ n, P215376458547549489.a n = A007091 n

end A007091

/-! ## A007091.P1217996161546394470

`A024657(2*n)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007091

/-- `A024657(2*n)/2` -/
def P1217996161546394470.Spec : Prop :=
  ∀ n, P1217996161546394470.a n = (A007091 n : ℚ)

end A007091

/-! ## A007091.P6516250208569988383

`A007092(A037465(n))`
-/

namespace A007091.P6516250208569988383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A037465 n).toNat

end

end A007091.P6516250208569988383

namespace A007091

/-- `A007092(A037465(n))` -/
def P6516250208569988383.Spec : Prop :=
  ∀ n, P6516250208569988383.a n = A007091 n

end A007091

/-! ## A007091.P7026966920082812216

`A014682(A014263(n+1))`
-/

namespace A007091.P7026966920082812216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014263 (n + 1)).toNat

end

end A007091.P7026966920082812216

namespace A007091

/-- `A014682(A014263(n+1))` -/
def P7026966920082812216.Spec : Prop :=
  ∀ n, P7026966920082812216.a n = A007091 n

end A007091

/-! ## A007091.P883966935946439647

`A014682(A024657(2*n))`
-/

namespace A007091.P883966935946439647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024657 (2 * n)).toNat

end

end A007091.P883966935946439647

namespace A007091

/-- `A014682(A024657(2*n))` -/
def P883966935946439647.Spec : Prop :=
  ∀ n, P883966935946439647.a n = A007091 n

end A007091

/-! ## A007091.P10497458892522383441

`A007093(A037466(n))`
-/

namespace A007091.P10497458892522383441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A037466 n).toNat

end

end A007091.P10497458892522383441

namespace A007091

/-- `A007093(A037466(n))` -/
def P10497458892522383441.Spec : Prop :=
  ∀ n, P10497458892522383441.a n = A007091 n

end A007091

/-! ## A007091.P16106800664957670306

`A007094(A037467(n))`
-/

namespace A007091.P16106800664957670306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037467 n).toNat

end

end A007091.P16106800664957670306

namespace A007091

/-- `A007094(A037467(n))` -/
def P16106800664957670306.Spec : Prop :=
  ∀ n, P16106800664957670306.a n = A007091 n

end A007091

/-! ## A007091.P2219328911150426423

`A135210(A191610(n+1)+1)`
-/

namespace A007091.P2219328911150426423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (A191610 (n + 1) + 1).toNat

end

end A007091.P2219328911150426423

namespace A007091

/-- `A135210(A191610(n+1)+1)` -/
def P2219328911150426423.Spec : Prop :=
  ∀ n, P2219328911150426423.a n = A007091 n

end A007091

/-! ## A007091.P6491462179316265114

`∩[A135210(n+1), A007092(n)]`
-/

namespace A007091.P6491462179316265114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P6491462179316265114

namespace A007091

/-- `∩[A135210(n+1), A007092(n)]` -/
def P6491462179316265114.Spec : Prop :=
  ∀ n, (P6491462179316265114.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P9197629352547181798

`∩[A007093(n), A135210(n+1)]`
-/

namespace A007091.P9197629352547181798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P9197629352547181798

namespace A007091

/-- `∩[A007093(n), A135210(n+1)]` -/
def P9197629352547181798.Spec : Prop :=
  ∀ n, (P9197629352547181798.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P11736174180201451501

`∩[A007094(n), A135210(n+1)]`
-/

namespace A007091.P11736174180201451501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P11736174180201451501

namespace A007091

/-- `∩[A007094(n), A135210(n+1)]` -/
def P11736174180201451501.Spec : Prop :=
  ∀ n, (P11736174180201451501.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P10767170906705562324

`∩[A039146(n+1), A007092(n)]`
-/

namespace A007091.P10767170906705562324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P10767170906705562324

namespace A007091

/-- `∩[A039146(n+1), A007092(n)]` -/
def P10767170906705562324.Spec : Prop :=
  ∀ n, (P10767170906705562324.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P1324847970448782970

`∩[A039147(n+1), A007092(n)]`
-/

namespace A007091.P1324847970448782970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P1324847970448782970

namespace A007091

/-- `∩[A039147(n+1), A007092(n)]` -/
def P1324847970448782970.Spec : Prop :=
  ∀ n, (P1324847970448782970.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P12707712439209073713

`∩[A039148(n+1), A007092(n)]`
-/

namespace A007091.P12707712439209073713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P12707712439209073713

namespace A007091

/-- `∩[A039148(n+1), A007092(n)]` -/
def P12707712439209073713.Spec : Prop :=
  ∀ n, (P12707712439209073713.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P2204508414041569328

`∩[A039149(n+1), A007092(n)]`
-/

namespace A007091.P2204508414041569328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P2204508414041569328

namespace A007091

/-- `∩[A039149(n+1), A007092(n)]` -/
def P2204508414041569328.Spec : Prop :=
  ∀ n, (P2204508414041569328.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P7223071022035718434

`∩[A039149(n+1), A135210(n+1)]`
-/

namespace A007091.P7223071022035718434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P7223071022035718434

namespace A007091

/-- `∩[A039149(n+1), A135210(n+1)]` -/
def P7223071022035718434.Spec : Prop :=
  ∀ n, (P7223071022035718434.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P4102409542416152418

`∩[A039152(n+1), A135210(n+1)]`
-/

namespace A007091.P4102409542416152418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P4102409542416152418

namespace A007091

/-- `∩[A039152(n+1), A135210(n+1)]` -/
def P4102409542416152418.Spec : Prop :=
  ∀ n, (P4102409542416152418.a n : ℤ) = A007091 n

end A007091

/-! ## A007091.P4767101528444592697

`∩[A039154(n+1), A135210(n+1)]`
-/

namespace A007091.P4767101528444592697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007091.P4767101528444592697

namespace A007091

/-- `∩[A039154(n+1), A135210(n+1)]` -/
def P4767101528444592697.Spec : Prop :=
  ∀ n, (P4767101528444592697.a n : ℤ) = A007091 n

end A007091

/-!
# A007092: Numbers in base 6.

The programs for A007092, there is no canonical definition to state claims against.
-/

/-! ## A007092.P11205611079572935332

`∪[A283608(n+1), A007091(n)]`
-/

namespace A007092.P11205611079572935332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007092.P11205611079572935332

/-! ## A007092.P2341296013918763563

`A007093(A020657(n+1))`
-/

namespace A007092.P2341296013918763563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A020657 (n + 1)).toNat

end

end A007092.P2341296013918763563

/-! ## A007092.P14881559193221505422

`A007094(A037471(n))`
-/

namespace A007092.P14881559193221505422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037471 n).toNat

end

end A007092.P14881559193221505422

/-! ## A007092.P11680030477159767183

`∩[A039150(n+1), A007093(n)]`
-/

namespace A007092.P11680030477159767183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007092.P11680030477159767183

/-! ## A007092.P5979247982078304109

`∩[A039151(n+1), A007093(n)]`
-/

namespace A007092.P5979247982078304109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007092.P5979247982078304109

/-! ## A007092.P8770706374523616149

`∩[A039152(n+1), A007093(n)]`
-/

namespace A007092.P8770706374523616149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007092.P8770706374523616149

/-! ## A007092.P1161380783272209169

`A007095(A037472(n))`
-/

namespace A007092.P1161380783272209169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037472 n).toNat

end

end A007092.P1161380783272209169

/-! ## A007092.P9309953718056340175

`∩[A052414(n+1), A007093(n)]`
-/

namespace A007092.P9309953718056340175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007092.P9309953718056340175

/-! ## A007092.P11131748257973784741

`eq[0, A102677(n)]`
-/

namespace A007092.P11131748257973784741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007092.P11131748257973784741

/-! ## A007092.P502554290287775475

`lt[A054055(n), 6]`
-/

namespace A007092.P502554290287775475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007092.P502554290287775475

/-! ## A007092.P16129091584736683521

`lt[A086066(n), 63]`
-/

namespace A007092.P16129091584736683521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007092.P16129091584736683521

/-! ## A007092.P10770079704846087334

`lt[sqrt(A061602(n)), 25]`
-/

namespace A007092.P10770079704846087334
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061602 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A007092.P10770079704846087334

/-! ## A007092.P13617580304910160807

`record[n-A106747(n)]`
-/

namespace A007092.P13617580304910160807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007092.P13617580304910160807

/-! ## A007092.P17887751987361251905

`lt[A047842(n)%10, log2(46)]`
-/

namespace A007092.P17887751987361251905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (46 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A007092.P17887751987361251905

/-! ## A007092.P109158693379430002

`eq[A007953(n), A280913(n)]`
-/

namespace A007092.P109158693379430002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007092.P109158693379430002

/-! ## A007092.P18386850793434307728

`eq[A102679(n)+A010371(n), A063720(n)]`
-/

namespace A007092.P18386850793434307728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n + A010371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007092.P18386850793434307728

/-! ## A007092.P10084779664874173101

`record[(A103181(n)+n)/2]`
-/

namespace A007092.P10084779664874173101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103181 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007092.P10084779664874173101

/-! ## A007092.P15530101816503266520

`A222248(record[A222248(n)])`
-/

namespace A007092.P15530101816503266520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007092.P15530101816503266520

/-! ## A007092.P11230770495268813689

`eq[A007953(n), A119281(n)]`
-/

namespace A007092.P11230770495268813689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007092.P11230770495268813689

/-! ## A007092.P2581093889821760706

`eq[n, A222254(A222249(n))]`
-/

namespace A007092.P2581093889821760706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007092.P2581093889821760706

/-!
# A007093: Numbers in base 7.

The programs for A007093, the canonical program `A007093.P13371401633146745397` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007093 has offset 0).

The definition of A007093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007093.P226909652084077189

`∪[A283609(n+1), A007092(n)]`
-/

namespace A007093.P226909652084077189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007093.P226909652084077189

namespace A007093

/-- `∪[A283609(n+1), A007092(n)]` -/
def P226909652084077189.Spec : Prop :=
  ∀ n, (P226909652084077189.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P13371401633146745397

`A007094(A037474(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A007093

/-- `A007094(A037474(n))` -/
def P13371401633146745397.Spec : Prop :=
  ∀ n, P13371401633146745397.a n = A007093 n

theorem P13371401633146745397.correct : P13371401633146745397.Spec := by
  intro n
  simp only [A007093]

end A007093

/-! ## A007093.P18102782189190036197

`∩[A039153(n+1), A007094(n)]`
-/

namespace A007093.P18102782189190036197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007093.P18102782189190036197

namespace A007093

/-- `∩[A039153(n+1), A007094(n)]` -/
def P18102782189190036197.Spec : Prop :=
  ∀ n, (P18102782189190036197.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P12229577435096849183

`∩[A039154(n+1), A007094(n)]`
-/

namespace A007093.P12229577435096849183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007093.P12229577435096849183

namespace A007093

/-- `∩[A039154(n+1), A007094(n)]` -/
def P12229577435096849183.Spec : Prop :=
  ∀ n, (P12229577435096849183.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P7238409559294003481

`A007095(A037475(n))`
-/

namespace A007093.P7238409559294003481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037475 n).toNat

end

end A007093.P7238409559294003481

namespace A007093

/-- `A007095(A037475(n))` -/
def P7238409559294003481.Spec : Prop :=
  ∀ n, P7238409559294003481.a n = A007093 n

end A007093

/-! ## A007093.P8590210239453934340

`A052419(A037475(n)+1)`
-/

namespace A007093.P8590210239453934340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A037475 n + 1).toNat

end

end A007093.P8590210239453934340

namespace A007093

/-- `A052419(A037475(n)+1)` -/
def P8590210239453934340.Spec : Prop :=
  ∀ n, P8590210239453934340.a n = A007093 n

end A007093

/-! ## A007093.P3079179729789935927

`∩[A052419(n+1), A007094(n)]`
-/

namespace A007093.P3079179729789935927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007093.P3079179729789935927

namespace A007093

/-- `∩[A052419(n+1), A007094(n)]` -/
def P3079179729789935927.Spec : Prop :=
  ∀ n, (P3079179729789935927.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P15600850440928046954

`eq[0, A102679(n)]`
-/

namespace A007093.P15600850440928046954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007093.P15600850440928046954

namespace A007093

/-- `eq[0, A102679(n)]` -/
def P15600850440928046954.Spec : Prop :=
  ∀ n, (P15600850440928046954.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P11925198859374532400

`lt[A054055(n), 7]`
-/

namespace A007093.P11925198859374532400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007093.P11925198859374532400

namespace A007093

/-- `lt[A054055(n), 7]` -/
def P11925198859374532400.Spec : Prop :=
  ∀ n, (P11925198859374532400.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P15339683888181631671

`lt[sqrt(A086066(n)), 11]`
-/

namespace A007093.P15339683888181631671
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A086066 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A007093.P15339683888181631671

namespace A007093

/-- `lt[sqrt(A086066(n)), 11]` -/
def P15339683888181631671.Spec : Prop :=
  ∀ n, (P15339683888181631671.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P14011174478110025377

`lt[log(A061602(n)), 8]`
-/

namespace A007093.P14011174478110025377
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A061602 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A007093.P14011174478110025377

namespace A007093

/-- `lt[log(A061602(n)), 8]` -/
def P14011174478110025377.Spec : Prop :=
  ∀ n, (P14011174478110025377.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P17323236119218510858

`lt[A047842(n)%10, 7]`
-/

namespace A007093.P17323236119218510858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007093.P17323236119218510858

namespace A007093

/-- `lt[A047842(n)%10, 7]` -/
def P17323236119218510858.Spec : Prop :=
  ∀ n, (P17323236119218510858.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P7222049958166614286

`lt[A102679(A004086(n)), 1]`
-/

namespace A007093.P7222049958166614286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A004086 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007093.P7222049958166614286

namespace A007093

/-- `lt[A102679(A004086(n)), 1]` -/
def P7222049958166614286.Spec : Prop :=
  ∀ n, (P7222049958166614286.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P10332861132920099842

`record[n-A064770(n)]`
-/

namespace A007093.P10332861132920099842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007093.P10332861132920099842

namespace A007093

/-- `record[n-A064770(n)]` -/
def P10332861132920099842.Spec : Prop :=
  ∀ n, P10332861132920099842.a n = A007093 n

end A007093

/-! ## A007093.P4631345448135675922

`A222251(record[A222251(n)])`
-/

namespace A007093.P4631345448135675922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007093.P4631345448135675922

namespace A007093

/-- `A222251(record[A222251(n)])` -/
def P4631345448135675922.Spec : Prop :=
  ∀ n, P4631345448135675922.a n = A007093 n

end A007093

/-! ## A007093.P17161633684039646136

`lt[A102679(A004181(n)), 1]`
-/

namespace A007093.P17161633684039646136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A004181 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007093.P17161633684039646136

namespace A007093

/-- `lt[A102679(A004181(n)), 1]` -/
def P17161633684039646136.Spec : Prop :=
  ∀ n, (P17161633684039646136.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P11086948900740603004

`A004184(lt[A102679(n), 1])`
-/

namespace A007093.P11086948900740603004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A007093.P11086948900740603004

namespace A007093

/-- `A004184(lt[A102679(n), 1])` -/
def P11086948900740603004.Spec : Prop :=
  ∀ n, P11086948900740603004.a n = A007093 n

end A007093

/-! ## A007093.P3165582624931834226

`eq[n, A222254(A004182(n))]`
-/

namespace A007093.P3165582624931834226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A004182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007093.P3165582624931834226

namespace A007093

/-- `eq[n, A222254(A004182(n))]` -/
def P3165582624931834226.Spec : Prop :=
  ∀ n, (P3165582624931834226.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P13646136596408982091

`eq[n, A222253(A004183(n))]`
-/

namespace A007093.P13646136596408982091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007093.P13646136596408982091

namespace A007093

/-- `eq[n, A222253(A004183(n))]` -/
def P13646136596408982091.Spec : Prop :=
  ∀ n, (P13646136596408982091.a n : ℤ) = A007093 n

end A007093

/-! ## A007093.P16214394070227346009

`eq[n, A222252(A004184(n))]`
-/

namespace A007093.P16214394070227346009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007093.P16214394070227346009

namespace A007093

/-- `eq[n, A222252(A004184(n))]` -/
def P16214394070227346009.Spec : Prop :=
  ∀ n, (P16214394070227346009.a n : ℤ) = A007093 n

end A007093

/-!
# A007094: Numbers in base 8.

The programs for A007094, the canonical program `A007094.P10071338308652589409` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007094 has offset 0).

The definition of A007094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007094.P11513304438424057514

`comp[A057104(n+1)]`
-/

namespace A007094.P11513304438424057514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007094.P11513304438424057514

namespace A007094

/-- `comp[A057104(n+1)]` -/
def P11513304438424057514.Spec : Prop :=
  ∀ n, (P11513304438424057514.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P698238138703929177

`A007095(A037477(n))`
-/

namespace A007094.P698238138703929177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037477 n).toNat

end

end A007094.P698238138703929177

namespace A007094

/-- `A007095(A037477(n))` -/
def P698238138703929177.Spec : Prop :=
  ∀ n, P698238138703929177.a n = A007094 n

end A007094

/-! ## A007094.P13182663069299649053

`A052421(A037477(n)+1)`
-/

namespace A007094.P13182663069299649053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A037477 n + 1).toNat

end

end A007094.P13182663069299649053

namespace A007094

/-- `A052421(A037477(n)+1)` -/
def P13182663069299649053.Spec : Prop :=
  ∀ n, P13182663069299649053.a n = A007094 n

end A007094

/-! ## A007094.P16528836950743898241

`∩[A052421(n+1), A007095(n)]`
-/

namespace A007094.P16528836950743898241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007094.P16528836950743898241

namespace A007094

/-- `∩[A052421(n+1), A007095(n)]` -/
def P16528836950743898241.Spec : Prop :=
  ∀ n, (P16528836950743898241.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P12302124598899213866

`A004727(eq[A004727(n), A004728(n)])`
-/

namespace A007094.P12302124598899213866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007094.P12302124598899213866

namespace A007094

/-- `A004727(eq[A004727(n), A004728(n)])` -/
def P12302124598899213866.Spec : Prop :=
  ∀ n, P12302124598899213866.a n = A007094 n

end A007094

/-! ## A007094.P10071338308652589409

`eq[0, A102681(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007094

/-- `eq[0, A102681(n)]` -/
def P10071338308652589409.Spec : Prop :=
  ∀ n, (P10071338308652589409.a n : ℤ) = A007094 n

theorem P10071338308652589409.correct : P10071338308652589409.Spec := by
  intro n
  simp only [A007094]

end A007094

/-! ## A007094.P7621972394244982207

`lt[A054055(n), 8]`
-/

namespace A007094.P7621972394244982207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007094.P7621972394244982207

namespace A007094

/-- `lt[A054055(n), 8]` -/
def P7621972394244982207.Spec : Prop :=
  ∀ n, (P7621972394244982207.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P10853826450354046795

`lt[log(A061602(n)), 10]`
-/

namespace A007094.P10853826450354046795
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A061602 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A007094.P10853826450354046795

namespace A007094

/-- `lt[log(A061602(n)), 10]` -/
def P10853826450354046795.Spec : Prop :=
  ∀ n, (P10853826450354046795.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P13548424379343706915

`lt[sqrt(A086066(n)), 16]`
-/

namespace A007094.P13548424379343706915
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A086066 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A007094.P13548424379343706915

namespace A007094

/-- `lt[sqrt(A086066(n)), 16]` -/
def P13548424379343706915.Spec : Prop :=
  ∀ n, (P13548424379343706915.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P6348338766913196397

`record[n-A106747(A106747(n))]`
-/

namespace A007094.P6348338766913196397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 (A106747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007094.P6348338766913196397

namespace A007094

/-- `record[n-A106747(A106747(n))]` -/
def P6348338766913196397.Spec : Prop :=
  ∀ n, P6348338766913196397.a n = A007094 n

end A007094

/-! ## A007094.P4009095168697805898

`eq[A004176(n), A222254(A004176(n))]`
-/

namespace A007094.P4009095168697805898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007094.P4009095168697805898

namespace A007094

/-- `eq[A004176(n), A222254(A004176(n))]` -/
def P4009095168697805898.Spec : Prop :=
  ∀ n, (P4009095168697805898.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P15188971410411348075

`eq[A004185(n), A222254(A004185(n))]`
-/

namespace A007094.P15188971410411348075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007094.P15188971410411348075

namespace A007094

/-- `eq[A004185(n), A222254(A004185(n))]` -/
def P15188971410411348075.Spec : Prop :=
  ∀ n, (P15188971410411348075.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P14326948550143494245

`eq[n, A222254(n)]`
-/

namespace A007094.P14326948550143494245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007094.P14326948550143494245

namespace A007094

/-- `eq[n, A222254(n)]` -/
def P14326948550143494245.Spec : Prop :=
  ∀ n, (P14326948550143494245.a n : ℤ) = A007094 n

end A007094

/-! ## A007094.P10895874732514265126

`record[n-2*A136400(n)]`
-/

namespace A007094.P10895874732514265126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007094.P10895874732514265126

namespace A007094

/-- `record[n-2*A136400(n)]` -/
def P10895874732514265126.Spec : Prop :=
  ∀ n, P10895874732514265126.a n = A007094 n

end A007094

/-! ## A007094.P13720011408858892218

`record[2*A235049(n)-n]`
-/

namespace A007094.P13720011408858892218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235049 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007094.P13720011408858892218

namespace A007094

/-- `record[2*A235049(n)-n]` -/
def P13720011408858892218.Spec : Prop :=
  ∀ n, P13720011408858892218.a n = A007094 n

end A007094

/-! ## A007094.P11835852951727512404

`record[A004184(A004183(n))]`
-/

namespace A007094.P11835852951727512404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007094.P11835852951727512404

namespace A007094

/-- `record[A004184(A004183(n))]` -/
def P11835852951727512404.Spec : Prop :=
  ∀ n, P11835852951727512404.a n = A007094 n

end A007094

/-! ## A007094.P1412412622887739834

`record[A004183(A007095(n))]`
-/

namespace A007094.P1412412622887739834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A007095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007094.P1412412622887739834

namespace A007094

/-- `record[A004183(A007095(n))]` -/
def P1412412622887739834.Spec : Prop :=
  ∀ n, P1412412622887739834.a n = A007094 n

end A007094

/-! ## A007094.P14178409102950286671

`A222253(record[A222253(n)])`
-/

namespace A007094.P14178409102950286671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007094.P14178409102950286671

namespace A007094

/-- `A222253(record[A222253(n)])` -/
def P14178409102950286671.Spec : Prop :=
  ∀ n, P14178409102950286671.a n = A007094 n

end A007094

/-! ## A007094.P7540772471307447096

`record[A235049(A235049(n))]`
-/

namespace A007094.P7540772471307447096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A235049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007094.P7540772471307447096

namespace A007094

/-- `record[A235049(A235049(n))]` -/
def P7540772471307447096.Spec : Prop :=
  ∀ n, P7540772471307447096.a n = A007094 n

end A007094

/-! ## A007094.P8121154427225240062

`eq[n, A004183(A004184(n))]`
-/

namespace A007094.P8121154427225240062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007094.P8121154427225240062

namespace A007094

/-- `eq[n, A004183(A004184(n))]` -/
def P8121154427225240062.Spec : Prop :=
  ∀ n, (P8121154427225240062.a n : ℤ) = A007094 n

end A007094

/-!
# A007095: Numbers in base 9.

The programs for A007095, the canonical program `A007095.P8694712654280777652` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007095 has offset 0).

The definition of A007095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007095.P5544170939040221636

`comp[A011539(n+1)]`
-/

namespace A007095.P5544170939040221636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007095.P5544170939040221636

namespace A007095

/-- `comp[A011539(n+1)]` -/
def P5544170939040221636.Spec : Prop :=
  ∀ n, (P5544170939040221636.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P14489348320352245817

`comp[record[A011539(A331745(n))]]`
-/

namespace A007095.P14489348320352245817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007095.P14489348320352245817

namespace A007095

/-- `comp[record[A011539(A331745(n))]]` -/
def P14489348320352245817.Spec : Prop :=
  ∀ n, (P14489348320352245817.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P11369231849346153457

`∪[A001095(n), A037479(n+1)]`
-/

namespace A007095.P11369231849346153457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007095.P11369231849346153457

namespace A007095

/-- `∪[A001095(n), A037479(n+1)]` -/
def P11369231849346153457.Spec : Prop :=
  ∀ n, (P11369231849346153457.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P14929650297947246941

`∪[A037479(n+1), A244159(n)]`
-/

namespace A007095.P14929650297947246941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007095.P14929650297947246941

namespace A007095

/-- `∪[A037479(n+1), A244159(n)]` -/
def P14929650297947246941.Spec : Prop :=
  ∀ n, (P14929650297947246941.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P512205475681890535

`record[A004728(n)]`
-/

namespace A007095.P512205475681890535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007095.P512205475681890535

namespace A007095

/-- `record[A004728(n)]` -/
def P512205475681890535.Spec : Prop :=
  ∀ n, P512205475681890535.a n = A007095 n

end A007095

/-! ## A007095.P8694712654280777652

`eq[0, A102683(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007095

/-- `eq[0, A102683(n)]` -/
def P8694712654280777652.Spec : Prop :=
  ∀ n, (P8694712654280777652.a n : ℤ) = A007095 n

theorem P8694712654280777652.correct : P8694712654280777652.Spec := by
  intro n
  simp only [A007095]

end A007095

/-! ## A007095.P13268461334233458350

`lt[A054055(n), 9]`
-/

namespace A007095.P13268461334233458350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007095.P13268461334233458350

namespace A007095

/-- `lt[A054055(n), 9]` -/
def P13268461334233458350.Spec : Prop :=
  ∀ n, (P13268461334233458350.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P2798119305109497775

`eq[A048379(n), A216556(n)]`
-/

namespace A007095.P2798119305109497775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007095.P2798119305109497775

namespace A007095

/-- `eq[A048379(n), A216556(n)]` -/
def P2798119305109497775.Spec : Prop :=
  ∀ n, (P2798119305109497775.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P10514967168321939576

`eq[A006942(n), A277116(n)]`
-/

namespace A007095.P10514967168321939576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007095.P10514967168321939576

namespace A007095

/-- `eq[A006942(n), A277116(n)]` -/
def P10514967168321939576.Spec : Prop :=
  ∀ n, (P10514967168321939576.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P51162240558748258

`eq[A004176(n), A004184(A004176(n))]`
-/

namespace A007095.P51162240558748258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007095.P51162240558748258

namespace A007095

/-- `eq[A004176(n), A004184(A004176(n))]` -/
def P51162240558748258.Spec : Prop :=
  ∀ n, (P51162240558748258.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P11864992599698633124

`record[A004184(n)]`
-/

namespace A007095.P11864992599698633124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007095.P11864992599698633124

namespace A007095

/-- `record[A004184(n)]` -/
def P11864992599698633124.Spec : Prop :=
  ∀ n, P11864992599698633124.a n = A007095 n

end A007095

/-! ## A007095.P16047740462088631781

`record[A235049(n)]`
-/

namespace A007095.P16047740462088631781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007095.P16047740462088631781

namespace A007095

/-- `record[A235049(n)]` -/
def P16047740462088631781.Spec : Prop :=
  ∀ n, P16047740462088631781.a n = A007095 n

end A007095

/-! ## A007095.P2151872095544865835

`record[n-A136400(n)]`
-/

namespace A007095.P2151872095544865835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007095.P2151872095544865835

namespace A007095

/-- `record[n-A136400(n)]` -/
def P2151872095544865835.Spec : Prop :=
  ∀ n, P2151872095544865835.a n = A007095 n

end A007095

/-! ## A007095.P14005435361831898290

`A222254(record[A004183(n)])`
-/

namespace A007095.P14005435361831898290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007095.P14005435361831898290

namespace A007095

/-- `A222254(record[A004183(n)])` -/
def P14005435361831898290.Spec : Prop :=
  ∀ n, P14005435361831898290.a n = A007095 n

end A007095

/-! ## A007095.P12844514998454582967

`A222254(record[A222254(n)])`
-/

namespace A007095.P12844514998454582967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007095.P12844514998454582967

namespace A007095

/-- `A222254(record[A222254(n)])` -/
def P12844514998454582967.Spec : Prop :=
  ∀ n, P12844514998454582967.a n = A007095 n

end A007095

/-! ## A007095.P16772608747036998134

`lt[A102683(A004181(n)), 1]`
-/

namespace A007095.P16772608747036998134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A004181 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007095.P16772608747036998134

namespace A007095

/-- `lt[A102683(A004181(n)), 1]` -/
def P16772608747036998134.Spec : Prop :=
  ∀ n, (P16772608747036998134.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P3658935342874110806

`A004184(eq[n, A004184(n)])`
-/

namespace A007095.P3658935342874110806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007095.P3658935342874110806

namespace A007095

/-- `A004184(eq[n, A004184(n)])` -/
def P3658935342874110806.Spec : Prop :=
  ∀ n, P3658935342874110806.a n = A007095 n

end A007095

/-! ## A007095.P16084759008040438238

`eq[A010371(n), A074458(n)]`
-/

namespace A007095.P16084759008040438238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007095.P16084759008040438238

namespace A007095

/-- `eq[A010371(n), A074458(n)]` -/
def P16084759008040438238.Spec : Prop :=
  ∀ n, (P16084759008040438238.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P12926845017140037061

`eq[A048379(n), A256079(n)]`
-/

namespace A007095.P12926845017140037061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007095.P12926845017140037061

namespace A007095

/-- `eq[A048379(n), A256079(n)]` -/
def P12926845017140037061.Spec : Prop :=
  ∀ n, (P12926845017140037061.a n : ℤ) = A007095 n

end A007095

/-! ## A007095.P6328235669513641803

`record[A382056(n+1)]`
-/

namespace A007095.P6328235669513641803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007095.P6328235669513641803

namespace A007095

/-- `record[A382056(n+1)]` -/
def P6328235669513641803.Spec : Prop :=
  ∀ n, P6328235669513641803.a n = A007095 n

end A007095

/-!
# A007096: Expansion of theta_3 / theta_4.

The programs for A007096, there is no canonical definition to state claims against.
-/

/-! ## A007096.P6329139069619103250

`A212318(n)+A127391(n)`
-/

namespace A007096.P6329139069619103250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212318 n + A127391 n

end

end A007096.P6329139069619103250

/-! ## A007096.P12736555210801724665

`A208933(ceil(n/A208933(n)))*A208933(n)`
-/

namespace A007096.P12736555210801724665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 ⌈(n : ℚ) / (A208933 n : ℚ)⌉.toNat * A208933 n

end

end A007096.P12736555210801724665

/-! ## A007096.P9787621504396906550

`A112128(n)*A280560(n)`
-/

namespace A007096.P9787621504396906550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112128 n * A280560 n

end

end A007096.P9787621504396906550

/-! ## A007096.P3182815999976804080

`(2-A084099(n)²)*A112128(n)`
-/

namespace A007096.P3182815999976804080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A084099 n ^ 2) * A112128 n

end

end A007096.P3182815999976804080

/-! ## A007096.P15220541826406260288

`abs(A189925(n))`
-/

namespace A007096.P15220541826406260288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189925 n|

end

end A007096.P15220541826406260288

/-! ## A007096.P2714648764355271492

`A033999(n)*A189925(n)`
-/

namespace A007096.P2714648764355271492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A189925 n

end

end A007096.P2714648764355271492

/-! ## A007096.P14300810839766808567

`gcd(A000038(n), A189925(n))`
-/

namespace A007096.P14300810839766808567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A189925 n)

end

end A007096.P14300810839766808567

/-! ## A007096.P16848446328294964526

`lcm(A000034(n), A189925(n))`
-/

namespace A007096.P16848446328294964526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A189925 n)

end

end A007096.P16848446328294964526

/-! ## A007096.P6410155487319031198

`A208933(n)*A280560(2*n)`
-/

namespace A007096.P6410155487319031198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 n * A280560 (2 * n)

end

end A007096.P6410155487319031198

/-! ## A007096.P10002855800131651331

`A036453(2*n+1)*A208933(n)`
-/

namespace A007096.P10002855800131651331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A208933 n

end

end A007096.P10002855800131651331

/-! ## A007096.P17044026119193111164

`A117569(2*n+1)*A189925(n)`
-/

namespace A007096.P17044026119193111164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) * A189925 n

end

end A007096.P17044026119193111164

/-! ## A007096.P9204317564012136138

`A014969(n)/A131126(n)*A208933(n)`
-/

namespace A007096.P9204317564012136138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A131126 n : ℚ) * (A208933 n : ℚ)

end

end A007096.P9204317564012136138

/-! ## A007096.P11210065052651741665

`A014969(n)/A210066(n)*A112128(n)`
-/

namespace A007096.P11210065052651741665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A210066 n : ℚ) * (A112128 n : ℚ)

end

end A007096.P11210065052651741665

/-! ## A007096.P11110111562531381822

`A014969(n)/A139820(n)*A189925(n)`
-/

namespace A007096.P11110111562531381822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A139820 n : ℚ) * (A189925 n : ℚ)

end

end A007096.P11110111562531381822

/-! ## A007096.P6029941437256846929

`A208933(n)*A246063(A210067(2*n))`
-/

namespace A007096.P6029941437256846929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 n * A246063 (A210067 (2 * n)).toNat

end

end A007096.P6029941437256846929

/-! ## A007096.P2209490023844532688

`A001936(n)/A079006(n)*A189925(n)`
-/

namespace A007096.P2209490023844532688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n : ℚ) / (A079006 n : ℚ) * (A189925 n : ℚ)

end

end A007096.P2209490023844532688

/-! ## A007096.P5665388660565443967

`A020639(A246037(n))*A208933(n)`
-/

namespace A007096.P5665388660565443967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A246037 n).toNat * A208933 n

end

end A007096.P5665388660565443967

/-! ## A007096.P15940358000254276669

`gcd(2, A208933(A046067(n+1)))*A208933(n)`
-/

namespace A007096.P15940358000254276669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A208933 (A046067 (n + 1)).toNat) : ℤ) * A208933 n

end

end A007096.P15940358000254276669

/-!
# A007097: Primeth recurrence: a(n+1) = a(n)-th prime.

The programs for A007097, the canonical program `A007097.P1281123908551689032` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007097 has offset 0).

The definition of A007097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007097.P1281123908551689032

`A000040(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007097

/-- `A000040(a(n-1))` -/
def P1281123908551689032.Spec : Prop :=
  ∀ n, P1281123908551689032.a n = A007097 n

theorem P1281123908551689032.correct : P1281123908551689032.Spec := by
  intro n
  simp only [A007097]

end A007097

/-! ## A007097.P9326162559672127853

`A095938(n+1)-1`
-/

namespace A007097.P9326162559672127853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095938 (n + 1) - 1

end

end A007097.P9326162559672127853

namespace A007097

/-- `A095938(n+1)-1` -/
def P9326162559672127853.Spec : Prop :=
  ∀ n, P9326162559672127853.a n = A007097 n

end A007097

/-! ## A007097.P7094091987841907600

`record[A095938(A065648(n))-1]`
-/

namespace A007097.P7094091987841907600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095938 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007097.P7094091987841907600

namespace A007097

/-- `record[A095938(A065648(n))-1]` -/
def P7094091987841907600.Spec : Prop :=
  ∀ n, P7094091987841907600.a n = A007097 n

end A007097

/-! ## A007097.P3689655433400655609

`A323202(2*n+1)+A095938(n+1)`
-/

namespace A007097.P3689655433400655609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1) + A095938 (n + 1)

end

end A007097.P3689655433400655609

namespace A007097

/-- `A323202(2*n+1)+A095938(n+1)` -/
def P3689655433400655609.Spec : Prop :=
  ∀ n, P3689655433400655609.a n = A007097 n

end A007097

/-! ## A007097.P9872068013112499554

`A112553(A016933(n))+A095938(n+1)`
-/

namespace A007097.P9872068013112499554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112553 (A016933 n).toNat + A095938 (n + 1)

end

end A007097.P9872068013112499554

namespace A007097

/-- `A112553(A016933(n))+A095938(n+1)` -/
def P9872068013112499554.Spec : Prop :=
  ∀ n, P9872068013112499554.a n = A007097 n

end A007097

/-!
# A007098: Number of unlabeled bisectable trees with 2n+1 nodes.

The programs for A007098, there is no canonical definition to state claims against.
-/

/-! ## A007098.P13844322667769723359

`A003056(∑[A148217(n)²])`
-/

namespace A007098.P13844322667769723359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007098.P13844322667769723359

/-!
# A007099: Number of labeled trivalent (or cubic) 2-connected graphs with 2n nodes.

The programs for A007099, there is no canonical definition to state claims against.
-/

/-! ## A007099.P9268113527976721730

`A004109(n+1)-A122511(n+1)`
-/

namespace A007099.P9268113527976721730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004109 (n + 1) - A122511 (n + 1)

end

end A007099.P9268113527976721730

