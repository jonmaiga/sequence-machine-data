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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A078100: 1/6 of the number of ways of 3-coloring a 4 X n grid.

The programs for A078100, there is no canonical definition to state claims against.
-/

/-! ## A078100.P15534455622706845423

`A223198(n+1)/A000302(n+1)²`
-/

namespace A078100.P15534455622706845423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223198 (n + 1) : ℚ) / (A000302 (n + 1) ^ 2 : ℚ)

end

end A078100.P15534455622706845423

/-! ## A078100.P2862164133102918870

`A223198(n+1)/A000302(2*(n+1))`
-/

namespace A078100.P2862164133102918870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223198 (n + 1) : ℚ) / (A000302 (2 * (n + 1)) : ℚ)

end

end A078100.P2862164133102918870

/-! ## A078100.P4599684283183107846

`A207997(A374004(n+1))`
-/

namespace A078100.P4599684283183107846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A374004 (n + 1)).toNat

end

end A078100.P4599684283183107846

/-! ## A078100.P819342040968808183

`A207997(A167614(n+2)+1)`
-/

namespace A078100.P819342040968808183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A167614 (n + 2) + 1).toNat

end

end A078100.P819342040968808183

/-! ## A078100.P5713220769598165406

`A207997(A179865(n+4)+4)`
-/

namespace A078100.P5713220769598165406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A179865 (n + 4) + 4).toNat

end

end A078100.P5713220769598165406

/-!
# A078101: 1/6 of the number of ways of 3-coloring an (n-1) X n grid.

The programs for A078101, there is no canonical definition to state claims against.
-/

/-! ## A078101.P13164324727464813063

`A078099(∑[A016825(n)])/2`
-/

namespace A078101.P13164324727464813063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078099 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A078101.P13164324727464813063

/-! ## A078101.P7894162697625235805

`A207997(2*(n+1)²)`
-/

namespace A078101.P7894162697625235805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (2 * (n + 1) ^ 2)

end

end A078101.P7894162697625235805

/-! ## A078101.P3074708948787142850

`record[A207997(A168281(n+1))]`
-/

namespace A078101.P3074708948787142850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A168281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078101.P3074708948787142850

/-! ## A078101.P16542034184059589489

`record[A207997(A176889(n+1))]`
-/

namespace A078101.P16542034184059589489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A176889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078101.P16542034184059589489

/-! ## A078101.P6187191554192920035

`record[A207997(∑[A014682(n+1)])]`
-/

namespace A078101.P6187191554192920035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078101.P6187191554192920035

/-!
# A078102: 1/6 of the number of ways of 3-coloring an (n-2) X n grid.

The programs for A078102, there is no canonical definition to state claims against.
-/

/-! ## A078102.P16414943890706188667

`A207997(∑[4*(n+1)])`
-/

namespace A078102.P16414943890706188667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078102.P16414943890706188667

/-! ## A078102.P6159692240221058404

`A078099(∑[4*(n+1)])/2`
-/

namespace A078102.P6159692240221058404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078099 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A078102.P6159692240221058404

/-! ## A078102.P15689295142771821468

`record[A207997(A088510(n+1))]`
-/

namespace A078102.P15689295142771821468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A088510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078102.P15689295142771821468

/-! ## A078102.P7606659074078568449

`record[A207997(A120097(n+1))]`
-/

namespace A078102.P7606659074078568449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A120097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078102.P7606659074078568449

/-! ## A078102.P5228601272499277706

`floor(A078099(A046092(n+1))/2)`
-/

namespace A078102.P5228601272499277706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078099 (A046092 (n + 1)).toNat : ℚ) / 2⌋

end

end A078102.P5228601272499277706

/-!
# A078103: Number of maximal independent generating sets for S_n.

The programs for A078103, there is no canonical definition to state claims against.
-/

/-! ## A078103.P6152100259813377043

`∏{p}[A243751(∑[8*n-7]+8), #]`
-/

namespace A078103.P6152100259813377043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243751 (∑ j ∈ Finset.range (n + 1), f2 j + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078103.P6152100259813377043

/-!
# A078105: Number of nonisomorphic ways a loop can cross three roads meeting in a Y n times (orbits under symmetry group of order 6).

The programs for A078105, there is no canonical definition to state claims against.
-/

/-! ## A078105.P9634820243316573815

`A008624(n)*A304382(A127403(n))`
-/

namespace A078105.P9634820243316573815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n * A304382 (A127403 n).toNat

end

end A078105.P9634820243316573815

/-! ## A078105.P3421493244146119712

`A354665(2*n*A096901(n+2))`
-/

namespace A078105.P3421493244146119712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354665 ((2 * n : ℤ) * A096901 (n + 2)).toNat

end

end A078105.P3421493244146119712

/-! ## A078105.P17448146815502473631

`A307629(A324513(n+1))+ceil(xor(1, n)/4)`
-/

namespace A078105.P17448146815502473631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (A324513 (n + 1)).toNat + ⌈(Nat.xor 1 n : ℚ) / 4⌉

end

end A078105.P17448146815502473631

/-! ## A078105.P3379086876123195886

`A307629(A324513(n+1))+A008624(n)`
-/

namespace A078105.P3379086876123195886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (A324513 (n + 1)).toNat + A008624 n

end

end A078105.P3379086876123195886

/-! ## A078105.P76106252910074044

`A086194(n+1)-A126309(A360783(n))`
-/

namespace A078105.P76106252910074044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086194 (n + 1) - A126309 (A360783 n).toNat

end

end A078105.P76106252910074044

/-!
# A078106: a(n) = A003022(n) - A000217(n-1).

The programs for A078106, there is no canonical definition to state claims against.
-/

/-! ## A078106.P5179939867855299185

`A003022(n+2)-A000217(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078106.P5179939867855299185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (n + 2) - A000217 (n + 1)

end

end A078106.P5179939867855299185

/-! ## A078106.P16216057268498163762

`A227590(n+2)-1-∑[n+1]`
-/

namespace A078106.P16216057268498163762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 2) - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A078106.P16216057268498163762

/-! ## A078106.P3595967298632162918

`A106683(C(n+3, 2))-∑[n+1]`
-/

namespace A078106.P3595967298632162918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (Nat.choose (n + 3) 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A078106.P3595967298632162918

/-! ## A078106.P2741010893632670978

`A106683(∑[n+2]+1)-∑[n+1]`
-/

namespace A078106.P2741010893632670978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A078106.P2741010893632670978

/-! ## A078106.P10334954299151128544

`A003022(n+2)%Δ[A000292(n)]`
-/

namespace A078106.P10334954299151128544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003022 (n + 2)) (f1 (n + 1) - f1 n)

end

end A078106.P10334954299151128544

/-!
# A078111: a(n) = floor((n+2)^(n+2)/n^n).

The programs for A078111, the canonical program `A078111.P1633430201199269105` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078111 has offset 0).

The definition of A078111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)^(n+2)/n^n)` (program `A078111.P1633430201199269105`, by `A078111.P1633430201199269105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078111.P1633430201199269105

`floor((n+2)^(n+2)/n^n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078111

/-- `floor((n+2)^(n+2)/n^n)` -/
def P1633430201199269105.Spec : Prop :=
  ∀ n, P1633430201199269105.a n = A078111 n

theorem P1633430201199269105.correct : P1633430201199269105.Spec := by
  intro n
  simp only [A078111]

end A078111

/-! ## A078111.P11410188845899251491

`A000027(floor(A000312(n+2)/A000312(n)))`
-/

namespace A078111.P11410188845899251491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A000312 (n + 2) : ℚ) / (A000312 n : ℚ)⌋.toNat

end

end A078111.P11410188845899251491

namespace A078111

/-- `A000027(floor(A000312(n+2)/A000312(n)))` -/
def P11410188845899251491.Spec : Prop :=
  ∀ n, P11410188845899251491.a n = A078111 n

end A078111

/-! ## A078111.P168432127414691954

`(A000312(n+2)-A225190(n))/A000312(n)`
-/

namespace A078111.P168432127414691954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 2) - A225190 n : ℚ) / (A000312 n : ℚ)

end

end A078111.P168432127414691954

namespace A078111

/-- `(A000312(n+2)-A225190(n))/A000312(n)` -/
def P168432127414691954.Spec : Prop :=
  ∀ n, P168432127414691954.a n = (A078111 n : ℚ)

end A078111

/-! ## A078111.P4077191746144291219

`floor(A000312(n+2)/A000312(n))*A131713(3*n²)`
-/

namespace A078111.P4077191746144291219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000312 (n + 2) : ℚ) / (A000312 n : ℚ)⌋ * A131713 (3 * n ^ 2)

end

end A078111.P4077191746144291219

namespace A078111

/-- `floor(A000312(n+2)/A000312(n))*A131713(3*n²)` -/
def P4077191746144291219.Spec : Prop :=
  ∀ n, P4077191746144291219.a n = A078111 n

end A078111

/-!
# A078112: Coefficients a(n) in the unique expansion sin(1) = Sum[a(n)/n!, n>=1], where a(n) satisfies 0<=a(n)<n.

The programs for A078112, the canonical program `A078112.P6430707256158536323` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078112 has offset 1).

The definition of A078112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078112.P6430707256158536323

`n*∑[n]%2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078112

/-- `n*∑[n]%2` -/
def P6430707256158536323.Spec : Prop :=
  ∀ n, (P6430707256158536323.a n : ℤ) = A078112 (n + 1)

theorem P6430707256158536323.correct : P6430707256158536323.Spec := by
  intro n
  simp only [A078112, Nat.add_sub_cancel]

end A078112

/-! ## A078112.P15372682221085123620

`n*and(1, ∑[n])`
-/

namespace A078112.P15372682221085123620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078112.P15372682221085123620

namespace A078112

/-- `n*and(1, ∑[n])` -/
def P15372682221085123620.Spec : Prop :=
  ∀ n, (P15372682221085123620.a n : ℤ) = A078112 (n + 1)

theorem P15372682221085123620.correct : P15372682221085123620.Spec := by
  intro n
  simp only [A078112, Nat.add_sub_cancel, A078112.P15372682221085123620.f1, A078112.P15372682221085123620.a, A078112.P6430707256158536323.f1, A078112.P6430707256158536323.a, SequenceMachineLib.memo_apply]
  try simp

end A078112

/-! ## A078112.P6361330556159042244

`lcm(n, and(1, ∑[n]))`
-/

namespace A078112.P6361330556159042244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A078112.P6361330556159042244

namespace A078112

/-- `lcm(n, and(1, ∑[n]))` -/
def P6361330556159042244.Spec : Prop :=
  ∀ n, (P6361330556159042244.a n : ℤ) = A078112 (n + 1)

end A078112

/-! ## A078112.P132927528881570564

`C(n, xor(2, n+1))`
-/

namespace A078112.P132927528881570564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 2 (n + 1))

end

end A078112.P132927528881570564

namespace A078112

/-- `C(n, xor(2, n+1))` -/
def P132927528881570564.Spec : Prop :=
  ∀ n, (P132927528881570564.a n : ℤ) = A078112 (n + 1)

end A078112

/-! ## A078112.P12046252787883509839

`and(n, ∑[-n]%2)`
-/

namespace A078112.P12046252787883509839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A078112.P12046252787883509839

namespace A078112

/-- `and(n, ∑[-n]%2)` -/
def P12046252787883509839.Spec : Prop :=
  ∀ n, P12046252787883509839.a n = A078112 (n + 1)

end A078112

/-! ## A078112.P16012808454368138127

`and(n, -and(1, ∑[n]))`
-/

namespace A078112.P16012808454368138127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A078112.P16012808454368138127

namespace A078112

/-- `and(n, -and(1, ∑[n]))` -/
def P16012808454368138127.Spec : Prop :=
  ∀ n, P16012808454368138127.a n = A078112 (n + 1)

end A078112

/-! ## A078112.P7370637859371047803

`n*round(sin(n%4))`
-/

namespace A078112.P7370637859371047803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.sin ((n % 4 : ℕ) : ℝ))

end

end A078112.P7370637859371047803

namespace A078112

/-- `n*round(sin(n%4))` -/
def P7370637859371047803.Spec : Prop :=
  ∀ n, P7370637859371047803.a n = A078112 (n + 1)

end A078112

/-! ## A078112.P9240373324854628272

`n*and(2, -n)/2`
-/

namespace A078112.P9240373324854628272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Int.land 2 (-(n : ℤ)) : ℚ) / 2)

end

end A078112.P9240373324854628272

namespace A078112

/-- `n*and(2, -n)/2` -/
def P9240373324854628272.Spec : Prop :=
  ∀ n, P9240373324854628272.a n = (A078112 (n + 1) : ℚ)

end A078112

/-! ## A078112.P6520645719527712032

`n*C(and(2, -n), 2)`
-/

namespace A078112.P6520645719527712032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (Int.land 2 (-(n : ℤ))).toNat 2

end

end A078112.P6520645719527712032

namespace A078112

/-- `n*C(and(2, -n), 2)` -/
def P6520645719527712032.Spec : Prop :=
  ∀ n, (P6520645719527712032.a n : ℤ) = A078112 (n + 1)

end A078112

/-! ## A078112.P7117038742816088542

`n*(2-gcd(2, ∑[n]))`
-/

namespace A078112.P7117038742816088542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A078112.P7117038742816088542

namespace A078112

/-- `n*(2-gcd(2, ∑[n]))` -/
def P7117038742816088542.Spec : Prop :=
  ∀ n, P7117038742816088542.a n = A078112 (n + 1)

end A078112

/-! ## A078112.P10506346158709690534

`n*char[or(2, n)-1]`
-/

namespace A078112.P10506346158709690534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A078112.P10506346158709690534

namespace A078112

/-- `n*char[or(2, n)-1]` -/
def P10506346158709690534.Spec : Prop :=
  ∀ n, (P10506346158709690534.a n : ℤ) = A078112 (n + 1)

end A078112

/-! ## A078112.P80564303441776267

`n*log2(and(2, -n)!)`
-/

namespace A078112.P80564303441776267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℝ)

end

end A078112.P80564303441776267

namespace A078112

/-- `n*log2(and(2, -n)!)` -/
def P80564303441776267.Spec : Prop :=
  ∀ n, P80564303441776267.a n = (A078112 (n + 1) : ℝ)

end A078112

/-! ## A078112.P6046254840111477869

`∑{e}[and(2, -n), n*#]`
-/

namespace A078112.P6046254840111477869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, n * Nat.factorization (f1 n).natAbs p

end

end A078112.P6046254840111477869

namespace A078112

/-- `∑{e}[and(2, -n), n*#]` -/
def P6046254840111477869.Spec : Prop :=
  ∀ n, (P6046254840111477869.a n : ℤ) = A078112 (n + 1)

end A078112

/-! ## A078112.P3855280289565573394

`n*and(2, n+1)/2`
-/

namespace A078112.P3855280289565573394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 2 (n + 1) : ℚ) / 2

end

end A078112.P3855280289565573394

namespace A078112

/-- `n*and(2, n+1)/2` -/
def P3855280289565573394.Spec : Prop :=
  ∀ n, P3855280289565573394.a n = (A078112 (n + 1) : ℚ)

end A078112

/-! ## A078112.P71518611119203424

`C(n, or(2, n+1)-2)`
-/

namespace A078112.P71518611119203424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((Nat.lor 2 (n + 1) : ℤ) - 2).toNat

end

end A078112.P71518611119203424

namespace A078112

/-- `C(n, or(2, n+1)-2)` -/
def P71518611119203424.Spec : Prop :=
  ∀ n, (P71518611119203424.a n : ℤ) = A078112 (n + 1)

end A078112

/-! ## A078112.P9073830544450590778

`n*(and(2, -n)!-1)`
-/

namespace A078112.P9073830544450590778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℤ) - 1)

end

end A078112.P9073830544450590778

namespace A078112

/-- `n*(and(2, -n)!-1)` -/
def P9073830544450590778.Spec : Prop :=
  ∀ n, P9073830544450590778.a n = A078112 (n + 1)

end A078112

/-! ## A078112.P12828114724046828029

`n*∑{e}[and(2, n-3), #]`
-/

namespace A078112.P12828114724046828029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A078112.P12828114724046828029

namespace A078112

/-- `n*∑{e}[and(2, n-3), #]` -/
def P12828114724046828029.Spec : Prop :=
  ∀ n, (P12828114724046828029.a n : ℤ) = A078112 (n + 1)

end A078112

/-! ## A078112.P2362386735968457020

`n*ceil(cos((n-1)%4))`
-/

namespace A078112.P2362386735968457020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (Int.tmod ((n : ℤ) - 1) 4 : ℝ)⌉

end

end A078112.P2362386735968457020

namespace A078112

/-- `n*ceil(cos((n-1)%4))` -/
def P2362386735968457020.Spec : Prop :=
  ∀ n, P2362386735968457020.a n = A078112 (n + 1)

end A078112

/-! ## A078112.P12512743273733719110

`n*floor(atan((n+1)%4))`
-/

namespace A078112.P12512743273733719110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊Real.arctan (((n + 1) % 4 : ℕ) : ℝ)⌋

end

end A078112.P12512743273733719110

namespace A078112

/-- `n*floor(atan((n+1)%4))` -/
def P12512743273733719110.Spec : Prop :=
  ∀ n, P12512743273733719110.a n = A078112 (n + 1)

end A078112

/-! ## A078112.P6796144795939557699

`n*(C(n+1, 2)%2)²`
-/

namespace A078112.P6796144795939557699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (n + 1) 2 % 2) ^ 2

end

end A078112.P6796144795939557699

namespace A078112

/-- `n*(C(n+1, 2)%2)²` -/
def P6796144795939557699.Spec : Prop :=
  ∀ n, (P6796144795939557699.a n : ℤ) = A078112 (n + 1)

end A078112

/-!
# A078113: Let u(1)=u(2)=1, u(3)=n, u(k) = (1/2)*abs(2*u(k-1) -u(k-2)-u(k-3)); sequence gives values of n such that Sum_{k>=1} u(k) is an integer.

The programs for A078113, there is no canonical definition to state claims against.
-/

/-! ## A078113.P16423557121916755133

`∑[ogf((2+4x-3x^2)/(1-2x^2))]`
-/

namespace A078113.P16423557121916755133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -3] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078113.P16423557121916755133

/-! ## A078113.P12872812108994033056

`ogf((2+4x-3x^2)/(1-x-2x^2+2x^3))`
-/

namespace A078113.P12872812108994033056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -3] [1, -1, -2, 2] n

end

end A078113.P12872812108994033056

/-! ## A078113.P4627261783357721155

`2*a(n-2)+3` with `a(0)=2, a(1)=6`
-/

namespace A078113.P4627261783357721155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  2 * a (n - 2) + 3

end

end A078113.P4627261783357721155

/-! ## A078113.P12886347908167394379

`∑[2*a(n-2)]` with `a(0)=2, a(1)=4, a(2)=1`
-/

namespace A078113.P12886347908167394379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078113.P12886347908167394379

/-! ## A078113.P2389775526752334559

`∑[2^n/a(n-1)]` with `a(0)=2, a(1)=4`
-/

namespace A078113.P2389775526752334559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  (2 ^ n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078113.P2389775526752334559

/-! ## A078113.P13090589466534608003

`5-2*(1-a(n-2))` with `a(0)=2, a(1)=6`
-/

namespace A078113.P13090589466534608003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  5 - 2 * (1 - a (n - 2))

end

end A078113.P13090589466534608003

/-! ## A078113.P12048125568378913339

`a(n-2)+a(n-2)+3` with `a(0)=2, a(1)=6`
-/

namespace A078113.P12048125568378913339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 2) + (a (n - 2) + 3)

end

end A078113.P12048125568378913339

/-! ## A078113.P1795525025237168478

`∑[2^A267182(n)]`
-/

namespace A078113.P1795525025237168478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A267182 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078113.P1795525025237168478

/-! ## A078113.P1016205658884898569

`A246347(n+3)-2`
-/

namespace A078113.P1016205658884898569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246347 (n + 3) - 2

end

end A078113.P1016205658884898569

/-! ## A078113.P8974875415090645656

`A133257(n)-A135530(n)`
-/

namespace A078113.P8974875415090645656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133257 n - A135530 n

end

end A078113.P8974875415090645656

/-!
# A078116: Primes of the form x^2 + 2y^2 where y<=x. Terms are listed in increasing order of x; for fixed x they're in increasing order of y.

The programs for A078116, the canonical program `A078116.P8980979661433350053` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078116 has offset 1).

The definition of A078116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078116.P13125744943818552523

`p?[A133819(n+1)+A070216(n+1)]`
-/

namespace A078116.P13125744943818552523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + A070216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078116.P13125744943818552523

namespace A078116

/-- `p?[A133819(n+1)+A070216(n+1)]` -/
def P13125744943818552523.Spec : Prop :=
  ∀ n, P13125744943818552523.a n = A078116 (n + 1)

end A078116

/-! ## A078116.P8980979661433350053

`p?[A070216(n+1)+A002260(n+1)²]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078116

/-- `p?[A070216(n+1)+A002260(n+1)²]` -/
def P8980979661433350053.Spec : Prop :=
  ∀ n, P8980979661433350053.a n = A078116 (n + 1)

theorem P8980979661433350053.correct : P8980979661433350053.Spec := by
  intro n
  simp only [A078116, Nat.add_sub_cancel]

end A078116

/-! ## A078116.P2081882382058352890

`p?[A093995(n+1)+2*A133819(n+1)]`
-/

namespace A078116.P2081882382058352890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 2 * A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078116.P2081882382058352890

namespace A078116

/-- `p?[A093995(n+1)+2*A133819(n+1)]` -/
def P2081882382058352890.Spec : Prop :=
  ∀ n, P2081882382058352890.a n = A078116 (n + 1)

end A078116

/-! ## A078116.P17590559604365598862

`p?[A093995(n+1)+A001105(A002260(n+1))]`
-/

namespace A078116.P17590559604365598862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A001105 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078116.P17590559604365598862

namespace A078116

/-- `p?[A093995(n+1)+A001105(A002260(n+1))]` -/
def P17590559604365598862.Spec : Prop :=
  ∀ n, P17590559604365598862.a n = A078116 (n + 1)

end A078116

/-! ## A078116.P11483140777090695650

`p?[A069011(n)+A002262(n)²]`
-/

namespace A078116.P11483140777090695650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A002262 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078116.P11483140777090695650

namespace A078116

/-- `p?[A069011(n)+A002262(n)²]` -/
def P11483140777090695650.Spec : Prop :=
  ∀ n, P11483140777090695650.a n = A078116 (n + 1)

end A078116

/-! ## A078116.P12240574977094167510

`p?[A093995(n+1)+A005843(A133819(n+1))]`
-/

namespace A078116.P12240574977094167510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A005843 (A133819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078116.P12240574977094167510

namespace A078116

/-- `p?[A093995(n+1)+A005843(A133819(n+1))]` -/
def P12240574977094167510.Spec : Prop :=
  ∀ n, P12240574977094167510.a n = A078116 (n + 1)

end A078116

/-!
# A078118: n+1 does not divide sigma(n!).

The programs for A078118, there is no canonical definition to state claims against.
-/

/-! ## A078118.P1763750631655732841

`eq[A000005(2*(n+1)), A304036(A328671(n+1))]`
-/

namespace A078118.P1763750631655732841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 (A328671 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078118.P1763750631655732841

/-!
# A078119: a(n) = sigma(n) - phi(n+2), where sigma = sum of divisors (A000203) and phi = Euler totient function (A000010).

The programs for A078119, the canonical program `A078119.P5996308189816255006` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078119 has offset 1).

The definition of A078119 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078119.P5996308189816255006

`A000203(n+1)-A000010(n+3)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078119

/-- `A000203(n+1)-A000010(n+3)` -/
def P5996308189816255006.Spec : Prop :=
  ∀ n, P5996308189816255006.a n = A078119 (n + 1)

theorem P5996308189816255006.correct : P5996308189816255006.Spec := by
  intro n
  simp only [A078119, Nat.add_sub_cancel]

end A078119

/-! ## A078119.P12651664978520180236

`∑{d}[n+1, #]-Δ[A005728(n+2)]`
-/

namespace A078119.P12651664978520180236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A078119.P12651664978520180236

namespace A078119

/-- `∑{d}[n+1, #]-Δ[A005728(n+2)]` -/
def P12651664978520180236.Spec : Prop :=
  ∀ n, P12651664978520180236.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P17213823974521790905

`Δ[A160664(n)-A005728(n+2)]`
-/

namespace A078119.P17213823974521790905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A005728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078119.P17213823974521790905

namespace A078119

/-- `Δ[A160664(n)-A005728(n+2)]` -/
def P17213823974521790905.Spec : Prop :=
  ∀ n, P17213823974521790905.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P10242394322537224233

`A065387(n+1)-A362334(n+1)`
-/

namespace A078119.P10242394322537224233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A362334 (n + 1)

end

end A078119.P10242394322537224233

namespace A078119

/-- `A065387(n+1)-A362334(n+1)` -/
def P10242394322537224233.Spec : Prop :=
  ∀ n, P10242394322537224233.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P14446911015744347060

`A000203(n+1)-Δ[A002088(n+2)]`
-/

namespace A078119.P14446911015744347060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A078119.P14446911015744347060

namespace A078119

/-- `A000203(n+1)-Δ[A002088(n+2)]` -/
def P14446911015744347060.Spec : Prop :=
  ∀ n, P14446911015744347060.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P2670874235235984056

`A245092(Δ[n²])-Δ[A005728(n+2)]`
-/

namespace A078119.P2670874235235984056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (f2 (n + 1) - f2 n)

end

end A078119.P2670874235235984056

namespace A078119

/-- `A245092(Δ[n²])-Δ[A005728(n+2)]` -/
def P2670874235235984056.Spec : Prop :=
  ∀ n, P2670874235235984056.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P5088388192150996930

`A245092(2*n+1)-A000010(n+3)`
-/

namespace A078119.P5088388192150996930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A000010 (n + 3)

end

end A078119.P5088388192150996930

namespace A078119

/-- `A245092(2*n+1)-A000010(n+3)` -/
def P5088388192150996930.Spec : Prop :=
  ∀ n, P5088388192150996930.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P14029227275303899473

`A000203(n+1)-(A023022(n+3)+A023022(n+3))`
-/

namespace A078119.P14029227275303899473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A023022 (n + 3) + A023022 (n + 3))

end

end A078119.P14029227275303899473

namespace A078119

/-- `A000203(n+1)-(A023022(n+3)+A023022(n+3))` -/
def P14029227275303899473.Spec : Prop :=
  ∀ n, P14029227275303899473.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P3636069506088111902

`A088580(n+1)-A039649(n+3)`
-/

namespace A078119.P3636069506088111902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A039649 (n + 3)

end

end A078119.P3636069506088111902

namespace A078119

/-- `A088580(n+1)-A039649(n+3)` -/
def P3636069506088111902.Spec : Prop :=
  ∀ n, P3636069506088111902.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P18022343611618457227

`A000203(n+1)-A349137(2*n+5)`
-/

namespace A078119.P18022343611618457227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A349137 (2 * n + 5)

end

end A078119.P18022343611618457227

namespace A078119

/-- `A000203(n+1)-A349137(2*n+5)` -/
def P18022343611618457227.Spec : Prop :=
  ∀ n, P18022343611618457227.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P14462458390261916496

`∑{d}[n+1, #]-Δ[A049643(n+2)]`
-/

namespace A078119.P14462458390261916496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A078119.P14462458390261916496

namespace A078119

/-- `∑{d}[n+1, #]-Δ[A049643(n+2)]` -/
def P14462458390261916496.Spec : Prop :=
  ∀ n, P14462458390261916496.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P17625317243716907694

`A245092(2*n+1)-Δ[A049643(n+2)]`
-/

namespace A078119.P17625317243716907694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A078119.P17625317243716907694

namespace A078119

/-- `A245092(2*n+1)-Δ[A049643(n+2)]` -/
def P17625317243716907694.Spec : Prop :=
  ∀ n, P17625317243716907694.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P1967866127620737048

`A064987(n+1)/(n+1)-Δ[A049643(n+2)]`
-/

namespace A078119.P1967866127620737048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (f1 (n + 1) - f1 n : ℚ)

end

end A078119.P1967866127620737048

namespace A078119

/-- `A064987(n+1)/(n+1)-Δ[A049643(n+2)]` -/
def P1967866127620737048.Spec : Prop :=
  ∀ n, P1967866127620737048.a n = (A078119 (n + 1) : ℚ)

end A078119

/-! ## A078119.P2166520245685191255

`A326065(2*(n+1))-A000010(n+3)`
-/

namespace A078119.P2166520245685191255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1)) - A000010 (n + 3)

end

end A078119.P2166520245685191255

namespace A078119

/-- `A326065(2*(n+1))-A000010(n+3)` -/
def P2166520245685191255.Spec : Prop :=
  ∀ n, P2166520245685191255.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P9344957939174553479

`A319700(2*(n+3))+A001065(n+1)-2`
-/

namespace A078119.P9344957939174553479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * (n + 3)) + (A001065 (n + 1) - 2)

end

end A078119.P9344957939174553479

namespace A078119

/-- `A319700(2*(n+3))+A001065(n+1)-2` -/
def P9344957939174553479.Spec : Prop :=
  ∀ n, P9344957939174553479.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P17547678232397752792

`A000203(n+1)-A225530(n+3)`
-/

namespace A078119.P17547678232397752792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A225530 (n + 3)

end

end A078119.P17547678232397752792

namespace A078119

/-- `A000203(n+1)-A225530(n+3)` -/
def P17547678232397752792.Spec : Prop :=
  ∀ n, P17547678232397752792.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P11046541578651783300

`A245093(∑[n+1])-Δ[A049643(n+2)]`
-/

namespace A078119.P11046541578651783300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (∑ j ∈ Finset.range (n + 1), f1 j) - (f2 (n + 1) - f2 n)

end

end A078119.P11046541578651783300

namespace A078119

/-- `A245093(∑[n+1])-Δ[A049643(n+2)]` -/
def P11046541578651783300.Spec : Prop :=
  ∀ n, P11046541578651783300.a n = A078119 (n + 1)

end A078119

/-! ## A078119.P4444731391963666532

`A069290((n+1)²)-A000010(n+3)`
-/

namespace A078119.P4444731391963666532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 ((n + 1) ^ 2) - A000010 (n + 3)

end

end A078119.P4444731391963666532

namespace A078119

/-- `A069290((n+1)²)-A000010(n+3)` -/
def P4444731391963666532.Spec : Prop :=
  ∀ n, P4444731391963666532.a n = A078119 (n + 1)

end A078119

/-!
# A078120: Number of distinct prime divisors of n-th balanced number.

The programs for A078120, there is no canonical definition to state claims against.
-/

/-! ## A078120.P2005508473012864950

`A001221(A020492(n+1))`
-/

namespace A078120.P2005508473012864950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020492 (n + 1)).toNat

end

end A078120.P2005508473012864950

/-! ## A078120.P7397666720134522804

`∑{p}[A020492(n+1), A070010(#)]`
-/

namespace A078120.P7397666720134522804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A070010 p

end

end A078120.P7397666720134522804

/-! ## A078120.P17690653501462147935

`∑{p}[A020492(n+1), #-A000010(#)]`
-/

namespace A078120.P17690653501462147935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A000010 p)

end

end A078120.P17690653501462147935

/-! ## A078120.P15306625621824601111

`∑{p}[A020492(n+1), A000203(#)-#]`
-/

namespace A078120.P15306625621824601111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000203 p - (p : ℤ))

end

end A078120.P15306625621824601111

/-! ## A078120.P8441761877078950614

`∑{p}[A020492(n+1), #-A047994(#)]`
-/

namespace A078120.P8441761877078950614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A047994 p)

end

end A078120.P8441761877078950614

/-! ## A078120.P15413246198128244970

`A001222(∏{e}[A020492(n+1), A064874(#)+2])`
-/

namespace A078120.P15413246198128244970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A064874 (Nat.factorization (f1 n).natAbs p) + 2)).toNat

end

end A078120.P15413246198128244970

/-! ## A078120.P13615614002244077062

`A001222(∏{e}[A020492(n+1), A046080(#+1)+2])`
-/

namespace A078120.P13615614002244077062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A046080 (Nat.factorization (f1 n).natAbs p + 1) + 2)).toNat

end

end A078120.P13615614002244077062

/-! ## A078120.P6401534823387015742

`A001222(∏{p}[A020492(n+1), A001222(#²)])`
-/

namespace A078120.P6401534823387015742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (p ^ 2)).toNat

end

end A078120.P6401534823387015742

/-! ## A078120.P923991644004073313

`A001222(∏{p}[A020492(n+1), #])`
-/

namespace A078120.P923991644004073313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A078120.P923991644004073313

/-! ## A078120.P12092419027972718387

`A001221(∩[A015763(n+1), A015765(n+1)])`
-/

namespace A078120.P12092419027972718387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A078120.P12092419027972718387

/-!
# A078121: Infinite lower triangular matrix, M, that satisfies [M^2](i,j) = M(i+1,j+1) for all i,j>=0 where [M^n](i,j) denotes the element at row i, column j, of the n-th power of matrix M, with M(0,k)=1 and M(k,k)=1 for all k>=0.

The programs for A078121, there is no canonical definition to state claims against.
-/

/-! ## A078121.P6441726874323550775

`A307139(n)+A089311(A089456(n+1))`
-/

namespace A078121.P6441726874323550775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307139 n + A089311 (A089456 (n + 1)).toNat

end

end A078121.P6441726874323550775

/-! ## A078121.P17109257558132511061

`A307139(n)-A178780(A124067(n+1))`
-/

namespace A078121.P17109257558132511061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307139 n - A178780 (A124067 (n + 1)).toNat

end

end A078121.P17109257558132511061

/-! ## A078121.P17264165887412856407

`A072088(A307139(n))`
-/

namespace A078121.P17264165887412856407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A307139 n).toNat

end

end A078121.P17264165887412856407

/-! ## A078121.P9223875124263950465

`A103634(A307139(n)+2)`
-/

namespace A078121.P9223875124263950465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A307139 n + 2).toNat

end

end A078121.P9223875124263950465

/-!
# A078122: Infinite lower triangular matrix, M, that satisfies [M^3](i,j) = M(i+1,j+1) for all i,j>=0 where [M^n](i,j) denotes the element at row i, column j, of the n-th power of matrix M, with M(0,k)=1 and M(k,k)=1 for all k>=0.

The programs for A078122, there is no canonical definition to state claims against.
-/

/-! ## A078122.P15896753460896318534

`floor(A141214(floor(A294950(n+1)/2))/2)`
-/

namespace A078122.P15896753460896318534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141214 ⌊(A294950 (n + 1) : ℚ) / 2⌋.toNat : ℚ) / 2⌋

end

end A078122.P15896753460896318534

/-! ## A078122.P12623472353372256736

`A136218(A355427(n)+A143007(n))`
-/

namespace A078122.P12623472353372256736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136218 (A355427 n + A143007 n).toNat

end

end A078122.P12623472353372256736

/-! ## A078122.P4742736131916750802

`A136218(A331188(n+1)+A154983(n))`
-/

namespace A078122.P4742736131916750802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136218 (A331188 (n + 1) + A154983 n).toNat

end

end A078122.P4742736131916750802

/-! ## A078122.P8432572976027456966

`A201162(A166344(n+1)-A306209(n))`
-/

namespace A078122.P8432572976027456966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201162 (A166344 (n + 1) - A306209 n).toNat

end

end A078122.P8432572976027456966

/-!
# A078124: Second column, M(n+1,1) for n>=0, of infinite lower triangular matrix M defined in A078122.

The programs for A078124, there is no canonical definition to state claims against.
-/

/-! ## A078124.P11829074471414134469

`record[ratio[A078122(n)]]`
-/

namespace A078124.P11829074471414134469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078122 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078124.P11829074471414134469

/-! ## A078124.P16385650864503994618

`A078122(∑[n+1]+1)`
-/

namespace A078124.P16385650864503994618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078122 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078124.P16385650864503994618

/-! ## A078124.P8002770600087346389

`record[A078122(∑[A057979(n)])]`
-/

namespace A078124.P8002770600087346389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078122 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078124.P8002770600087346389

/-! ## A078124.P10686324197564323967

`record[A078122(A056536(n+1))]`
-/

namespace A078124.P10686324197564323967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078122 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078124.P10686324197564323967

/-! ## A078124.P16618315855296781844

`record[A078122(n+1)/A078121(n)]`
-/

namespace A078124.P16618315855296781844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078122 (n + 1) : ℚ) / (A078121 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078124.P16618315855296781844

/-!
# A078125: Number of partitions of 3^n into powers of 3.

The programs for A078125, there is no canonical definition to state claims against.
-/

/-! ## A078125.P16261891110245530843

`A078123(∑[n])`
-/

namespace A078125.P16261891110245530843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078123 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078125.P16261891110245530843

/-! ## A078125.P3053775939079715580

`∑[A111841(n)]`
-/

namespace A078125.P3053775939079715580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078125.P3053775939079715580

/-! ## A078125.P4906105865029624607

`record[A125800(n)]`
-/

namespace A078125.P4906105865029624607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078125.P4906105865029624607

/-! ## A078125.P661390219503414858

`A125800(∑[n+1]+1)`
-/

namespace A078125.P661390219503414858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125800 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078125.P661390219503414858

/-! ## A078125.P11301684838018747739

`record[A078123(n)/A078121(n)]`
-/

namespace A078125.P11301684838018747739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078123 n : ℚ) / (A078121 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078125.P11301684838018747739

/-!
# A078126: Negative determinant of n X n matrix M_{i,j}=1 if i=j or i+j=1 (mod 2).

The programs for A078126, the canonical program `A078126.P5228567538962635910` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078126 has offset 0).

The definition of A078126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078126.P5228567538962635910

`floor((n+2)*(n-2)/4)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078126

/-- `floor((n+2)*(n-2)/4)` -/
def P5228567538962635910.Spec : Prop :=
  ∀ n, P5228567538962635910.a n = A078126 n

theorem P5228567538962635910.correct : P5228567538962635910.Spec := by
  intro n
  simp only [A078126]

end A078126

/-! ## A078126.P10877266975669561730

`A002620(n)-1`
-/

namespace A078126.P10877266975669561730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - 1

end

end A078126.P10877266975669561730

namespace A078126

/-- `A002620(n)-1` -/
def P10877266975669561730.Spec : Prop :=
  ∀ n, P10877266975669561730.a n = A078126 n

end A078126

/-! ## A078126.P16644897611448214076

`(or(1, n²)-5)/4`
-/

namespace A078126.P16644897611448214076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n ^ 2) : ℤ) - 5 : ℚ) / 4

end

end A078126.P16644897611448214076

namespace A078126

/-- `(or(1, n²)-5)/4` -/
def P16644897611448214076.Spec : Prop :=
  ∀ n, P16644897611448214076.a n = (A078126 n : ℚ)

end A078126

/-! ## A078126.P10889385894458123313

`round(cos(3)+(n/2)²)`
-/

namespace A078126.P10889385894458123313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (3 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ))

end

end A078126.P10889385894458123313

namespace A078126

/-- `round(cos(3)+(n/2)²)` -/
def P10889385894458123313.Spec : Prop :=
  ∀ n, P10889385894458123313.a n = A078126 n

end A078126

/-! ## A078126.P15739320628271250406

`round((n/2)²-sin(1))`
-/

namespace A078126.P15739320628271250406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - Real.sin (1 : ℝ))

end

end A078126.P15739320628271250406

namespace A078126

/-- `round((n/2)²-sin(1))` -/
def P15739320628271250406.Spec : Prop :=
  ∀ n, P15739320628271250406.a n = A078126 n

end A078126

/-! ## A078126.P15486643573096227306

`ceil((n/2)²-tan(1))`
-/

namespace A078126.P15486643573096227306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 2) ^ 2 : ℝ) - Real.tan (1 : ℝ)⌉

end

end A078126.P15486643573096227306

namespace A078126

/-- `ceil((n/2)²-tan(1))` -/
def P15486643573096227306.Spec : Prop :=
  ∀ n, P15486643573096227306.a n = A078126 n

end A078126

/-! ## A078126.P5017234936926713662

`ceil((n/2)²-asin(1))`
-/

namespace A078126.P5017234936926713662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 2) ^ 2 : ℝ) - Real.arcsin (1 : ℝ)⌉

end

end A078126.P5017234936926713662

namespace A078126

/-- `ceil((n/2)²-asin(1))` -/
def P5017234936926713662.Spec : Prop :=
  ∀ n, P5017234936926713662.a n = A078126 n

end A078126

/-! ## A078126.P5984623669132721039

`round((n/2)²-atan(1))`
-/

namespace A078126.P5984623669132721039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - Real.arctan (1 : ℝ))

end

end A078126.P5984623669132721039

namespace A078126

/-- `round((n/2)²-atan(1))` -/
def P5984623669132721039.Spec : Prop :=
  ∀ n, P5984623669132721039.a n = A078126 n

end A078126

/-! ## A078126.P1678063286169470334

`ceil((n/2)²-cosh(1))`
-/

namespace A078126.P1678063286169470334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 2) ^ 2 : ℝ) - Real.cosh (1 : ℝ)⌉

end

end A078126.P1678063286169470334

namespace A078126

/-- `ceil((n/2)²-cosh(1))` -/
def P1678063286169470334.Spec : Prop :=
  ∀ n, P1678063286169470334.a n = A078126 n

end A078126

/-! ## A078126.P3828504592325147211

`round((n/2)²-sinh(1))`
-/

namespace A078126.P3828504592325147211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - Real.sinh (1 : ℝ))

end

end A078126.P3828504592325147211

namespace A078126

/-- `round((n/2)²-sinh(1))` -/
def P3828504592325147211.Spec : Prop :=
  ∀ n, P3828504592325147211.a n = A078126 n

end A078126

/-! ## A078126.P18191862720634171362

`round((n/2)²-tanh(1))`
-/

namespace A078126.P18191862720634171362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - Real.tanh (1 : ℝ))

end

end A078126.P18191862720634171362

namespace A078126

/-- `round((n/2)²-tanh(1))` -/
def P18191862720634171362.Spec : Prop :=
  ∀ n, P18191862720634171362.a n = A078126 n

end A078126

/-! ## A078126.P15782527451592783363

`round((n²-cosh(2))/4)`
-/

namespace A078126.P15782527451592783363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) - Real.cosh (2 : ℝ)) / 4)

end

end A078126.P15782527451592783363

namespace A078126

/-- `round((n²-cosh(2))/4)` -/
def P15782527451592783363.Spec : Prop :=
  ∀ n, P15782527451592783363.a n = A078126 n

end A078126

/-! ## A078126.P15670404822727427774

`round((n/2)²-acot(1))`
-/

namespace A078126.P15670404822727427774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - SequenceMachineLib.acot (1 : ℝ))

end

end A078126.P15670404822727427774

namespace A078126

/-- `round((n/2)²-acot(1))` -/
def P15670404822727427774.Spec : Prop :=
  ∀ n, P15670404822727427774.a n = A078126 n

end A078126

/-! ## A078126.P3674685051872198980

`∑[floor(cot(2/(n+1)))]`
-/

namespace A078126.P3674685051872198980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078126.P3674685051872198980

namespace A078126

/-- `∑[floor(cot(2/(n+1)))]` -/
def P3674685051872198980.Spec : Prop :=
  ∀ n, P3674685051872198980.a n = A078126 n

end A078126

/-! ## A078126.P4802681679777513700

`∑[round((n-acot(n))/2)]`
-/

namespace A078126.P4802681679777513700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - SequenceMachineLib.acot (n : ℝ)) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078126.P4802681679777513700

namespace A078126

/-- `∑[round((n-acot(n))/2)]` -/
def P4802681679777513700.Spec : Prop :=
  ∀ n, P4802681679777513700.a n = A078126 n

end A078126

/-! ## A078126.P7391575111363390255

`(n²-(n%2+4))/4`
-/

namespace A078126.P7391575111363390255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n % 2 + 4 : ℕ) : ℤ) : ℚ) / 4

end

end A078126.P7391575111363390255

namespace A078126

/-- `(n²-(n%2+4))/4` -/
def P7391575111363390255.Spec : Prop :=
  ∀ n, P7391575111363390255.a n = (A078126 n : ℚ)

end A078126

/-! ## A078126.P8104489242881132792

`(∑[or(1, n)]-(n+3))/2`
-/

namespace A078126.P8104489242881132792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 3 : ℤ) : ℚ) / 2

end

end A078126.P8104489242881132792

namespace A078126

/-- `(∑[or(1, n)]-(n+3))/2` -/
def P8104489242881132792.Spec : Prop :=
  ∀ n, P8104489242881132792.a n = (A078126 n : ℚ)

end A078126

/-! ## A078126.P8306233508131695575

`(∑[or(1, n)]-n-3)/2`
-/

namespace A078126.P8306233508131695575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 3 : ℚ) / 2

end

end A078126.P8306233508131695575

namespace A078126

/-- `(∑[or(1, n)]-n-3)/2` -/
def P8306233508131695575.Spec : Prop :=
  ∀ n, P8306233508131695575.a n = (A078126 n : ℚ)

end A078126

/-! ## A078126.P7696741634256966983

`∑[floor(1/tan(2/(n+1)))]`
-/

namespace A078126.P7696741634256966983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tan (2 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078126.P7696741634256966983

namespace A078126

/-- `∑[floor(1/tan(2/(n+1)))]` -/
def P7696741634256966983.Spec : Prop :=
  ∀ n, P7696741634256966983.a n = A078126 n

end A078126

/-! ## A078126.P4362122167711044411

`∑[ceil(cot(2/(n+1)))-1]`
-/

namespace A078126.P4362122167711044411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078126.P4362122167711044411

namespace A078126

/-- `∑[ceil(cot(2/(n+1)))-1]` -/
def P4362122167711044411.Spec : Prop :=
  ∀ n, P4362122167711044411.a n = A078126 n

end A078126

/-!
# A078128: Number of ways to write n as sum of cubes > 1.

The programs for A078128, there is no canonical definition to state claims against.
-/

/-! ## A078128.P1420549234793611909

`A003108(n+1)-A003108(n)`
-/

namespace A078128.P1420549234793611909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n + 1) - A003108 n

end

end A078128.P1420549234793611909

/-! ## A078128.P16513576538853744408

`Δ[A003108(n)]`
-/

namespace A078128.P16513576538853744408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078128.P16513576538853744408

/-! ## A078128.P5711211850883806242

`Δ[A292560(n)+2*A339369(n)]`
-/

namespace A078128.P5711211850883806242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292560 n + 2 * A339369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078128.P5711211850883806242

/-! ## A078128.P10485244126097602041

`Δ[A339369(n)+A339368(n)]`
-/

namespace A078128.P10485244126097602041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 n + A339368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078128.P10485244126097602041

/-! ## A078128.P1900467112762799326

`Δ[2*A339368(n)-A292560(n)]`
-/

namespace A078128.P1900467112762799326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339368 n - A292560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078128.P1900467112762799326

/-!
# A078129: Numbers which cannot be written as sum of cubes > 1.

The programs for A078129, there is no canonical definition to state claims against.
-/

/-! ## A078129.P18026116134396164618

`eq[0, A278929(n)]`
-/

namespace A078129.P18026116134396164618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078129.P18026116134396164618

/-! ## A078129.P7502612810672936969

`eq[0, A279760(n)]`
-/

namespace A078129.P7502612810672936969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078129.P7502612810672936969

/-! ## A078129.P12441152099975745956

`eq[0, A363738(n)]`
-/

namespace A078129.P12441152099975745956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363738 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078129.P12441152099975745956

/-! ## A078129.P8494271069784373564

`eq[0, A078128(n+1)]+1`
-/

namespace A078129.P8494271069784373564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078129.P8494271069784373564

/-! ## A078129.P7062765646091643457

`lt[A278929(n+1), 1]+1`
-/

namespace A078129.P7062765646091643457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078129.P7062765646091643457

/-! ## A078129.P8255464644018101234

`lt[A279760(n+1), 1]+1`
-/

namespace A078129.P8255464644018101234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078129.P8255464644018101234

/-! ## A078129.P8216917448801806349

`lt[A000045(A279760(n)²), 1]`
-/

namespace A078129.P8216917448801806349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A279760 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078129.P8216917448801806349

/-! ## A078129.P11225077326927700301

`lt[A001222(A278929(n)+1), 1]`
-/

namespace A078129.P11225077326927700301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278929 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078129.P11225077326927700301

/-! ## A078129.P2703801299374109327

`lt[A001222(A279760(n)+1), 1]`
-/

namespace A078129.P2703801299374109327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A279760 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078129.P2703801299374109327

/-! ## A078129.P15497118988683903787

`lt[A000203(A279760(n)+1), 2]`
-/

namespace A078129.P15497118988683903787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A279760 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078129.P15497118988683903787

/-!
# A078130: Numbers having exactly one representation as sum of cubes > 1.

The programs for A078130, there is no canonical definition to state claims against.
-/

/-! ## A078130.P11162679668063307464

`eq[1, A078128(n+1)]+1`
-/

namespace A078130.P11162679668063307464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078130.P11162679668063307464

/-! ## A078130.P9266320124011838497

`eq[1, A078128(gcd(n, C(2, n)))]`
-/

namespace A078130.P9266320124011838497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078130.P9266320124011838497

/-! ## A078130.P821606557402781439

`eq[1, A078128(A028310(n))]`
-/

namespace A078130.P821606557402781439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078130.P821606557402781439

/-! ## A078130.P7761122293875553415

`A020725(eq[1, A078128(n+1)])`
-/

namespace A078130.P7761122293875553415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078130.P7761122293875553415

/-! ## A078130.P5143500041645190259

`A065475(eq[1, A078128(n+1)])`
-/

namespace A078130.P5143500041645190259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078130.P5143500041645190259

/-! ## A078130.P808135584664925679

`eq[1, A078128(A233583(n+1))]`
-/

namespace A078130.P808135584664925679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078130.P808135584664925679

/-! ## A078130.P1220937048044780437

`A326178(eq[1, A078128(n+1)])`
-/

namespace A078130.P1220937048044780437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078130.P1220937048044780437

/-! ## A078130.P11792716496340563323

`eq[1, A078128(A123108(2*n))]`
-/

namespace A078130.P11792716496340563323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078130.P11792716496340563323

/-! ## A078130.P10132705273027744546

`eq[1, A078128(A000007(n)+n)]`
-/

namespace A078130.P10132705273027744546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078130.P10132705273027744546

/-! ## A078130.P11079952336127354270

`A000720(p?[A000040(n+1)*A078128(n+1)])`
-/

namespace A078130.P11079952336127354270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A078128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078130.P11079952336127354270

/-!
# A078132: Primes which can be written as sum of cubes > 1.

The programs for A078132, there is no canonical definition to state claims against.
-/

/-! ## A078132.P15718989766375354083

`lt[A003108(n), A003108(A020639(n+1))]+1`
-/

namespace A078132.P15718989766375354083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A078132.P15718989766375354083

/-! ## A078132.P11688219020137479665

`record[A014963(A078131(n+8))]`
-/

namespace A078132.P11688219020137479665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A078131 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078132.P11688219020137479665

/-! ## A078132.P3206393231702505271

`lt[A000607(A003415(n)), A279760(n)]`
-/

namespace A078132.P3206393231702505271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078132.P3206393231702505271

/-! ## A078132.P10390177146639266370

`∩[A000040(n+1), comp[A078129(n+1)]]`
-/

namespace A078132.P10390177146639266370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A078132.P10390177146639266370

/-! ## A078132.P4387732364275441961

`eq[A240235(n+1), A279760(n)]`
-/

namespace A078132.P4387732364275441961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078132.P4387732364275441961

/-!
# A078133: Primes which cannot be written as sum of cubes>1.

The programs for A078133, there is no canonical definition to state claims against.
-/

/-! ## A078133.P11256771721483523480

`p?[A078129(n+1)]`
-/

namespace A078133.P11256771721483523480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078133.P11256771721483523480

/-! ## A078133.P9606404538639230806

`p?[gcd(n, A279760(n))]`
-/

namespace A078133.P9606404538639230806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A279760 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078133.P9606404538639230806

/-! ## A078133.P4110690191313069514

`filter[A078129(n+1), A010051(#)]`
-/

namespace A078133.P4110690191313069514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A078133.P4110690191313069514

/-! ## A078133.P13710273160732751242

`filter[A078129(n+1), A353817(#)]`
-/

namespace A078133.P13710273160732751242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A078133.P13710273160732751242

/-! ## A078133.P7510313604205418495

`filter[A078129(n+1), A358751(#)]`
-/

namespace A078133.P7510313604205418495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A078133.P7510313604205418495

/-!
# A078134: Number of ways to write n as sum of squares > 1.

The programs for A078134, there is no canonical definition to state claims against.
-/

/-! ## A078134.P14664448348504158716

`Δ[A001156(n)]`
-/

namespace A078134.P14664448348504158716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078134.P14664448348504158716

/-! ## A078134.P13967183816822209543

`A001156(n+1)-A001156(n)`
-/

namespace A078134.P13967183816822209543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (n + 1) - A001156 n

end

end A078134.P13967183816822209543

/-! ## A078134.P11280247240679782847

`Δ[A219610(A028310(n))+A010052(n)]`
-/

namespace A078134.P11280247240679782847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (A028310 n).toNat + A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078134.P11280247240679782847

/-! ## A078134.P1973223764127698139

`Δ[A339365(n)+A339364(n)]`
-/

namespace A078134.P1973223764127698139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A339364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078134.P1973223764127698139

/-! ## A078134.P1299349171198904152

`Δ[A292520(n)+2*A339365(n)]`
-/

namespace A078134.P1299349171198904152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 n + 2 * A339365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078134.P1299349171198904152

/-! ## A078134.P14426121395069005882

`Δ[A339364(n)-A057428(n)*A339365(n)]`
-/

namespace A078134.P14426121395069005882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 n - A057428 n * A339365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078134.P14426121395069005882

/-! ## A078134.P10128204947132400801

`Δ[A265260(4*n)]`
-/

namespace A078134.P10128204947132400801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078134.P10128204947132400801

/-! ## A078134.P18295475610340743569

`abs(Δ[A265260(A008586(n))])`
-/

namespace A078134.P18295475610340743569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A078134.P18295475610340743569

/-! ## A078134.P1022692810349739900

`Δ[A265260(A008586(n))]%A000041(n)`
-/

namespace A078134.P1022692810349739900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 n)

end

end A078134.P1022692810349739900

/-! ## A078134.P17010968500463174290

`A001156(A008619(2*n))-A000027(A001156(n))`
-/

namespace A078134.P17010968500463174290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A008619 (2 * n)).toNat - A000027 (A001156 n).toNat

end

end A078134.P17010968500463174290

/-!
# A078136: Numbers having exactly one representation as sum of squares>1.

The programs for A078136, there is no canonical definition to state claims against.
-/

/-! ## A078136.P2669825936792997404

`eq[1, Δ[A001156(n)]]+1`
-/

namespace A078136.P2669825936792997404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078136.P2669825936792997404

/-! ## A078136.P16613608662989552892

`eq[1, A078134(n+1)]+1`
-/

namespace A078136.P16613608662989552892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078136.P16613608662989552892

/-! ## A078136.P5351081098112449561

`round(A099591(3*n+5)/18)`
-/

namespace A078136.P5351081098112449561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A099591 (3 * n + 5) : ℚ) / 18)

end

end A078136.P5351081098112449561

/-! ## A078136.P3275332287487938821

`eq[1, Δ[A265260(4*n)]]+1`
-/

namespace A078136.P3275332287487938821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078136.P3275332287487938821

/-! ## A078136.P14834371956438367585

`A214672(A194399(n+2))`
-/

namespace A078136.P14834371956438367585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214672 (A194399 (n + 2)).toNat

end

end A078136.P14834371956438367585

/-!
# A078138: Primes which can be written as sum of squares > 1.

The programs for A078138, the canonical program `A078138.P5792035250394588303` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078138 has offset 1).

The definition of A078138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078138.P5792035250394588303

`p?[xor(n+1, C(12, n+1))+n]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078138

/-- `p?[xor(n+1, C(12, n+1))+n]` -/
def P5792035250394588303.Spec : Prop :=
  ∀ n, (P5792035250394588303.a n : ℤ) = A078138 (n + 1)

theorem P5792035250394588303.correct : P5792035250394588303.Spec := by
  intro n
  simp only [A078138, Nat.add_sub_cancel]

end A078138

/-! ## A078138.P13776310367515253627

`A083249(A107820(n+1)+2)`
-/

namespace A078138.P13776310367515253627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (A107820 (n + 1) + 2).toNat

end

end A078138.P13776310367515253627

namespace A078138

/-- `A083249(A107820(n+1)+2)` -/
def P13776310367515253627.Spec : Prop :=
  ∀ n, P13776310367515253627.a n = A078138 (n + 1)

end A078138

/-! ## A078138.P7752895590849781124

`A000040(A057544(n+1)+5)`
-/

namespace A078138.P7752895590849781124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057544 (n + 1) + 5).toNat

end

end A078138.P7752895590849781124

namespace A078138

/-- `A000040(A057544(n+1)+5)` -/
def P7752895590849781124.Spec : Prop :=
  ∀ n, P7752895590849781124.a n = A078138 (n + 1)

end A078138

/-! ## A078138.P12922758700712967219

`A000040(A253472(n+3)-2)`
-/

namespace A078138.P12922758700712967219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A253472 (n + 3) - 2).toNat

end

end A078138.P12922758700712967219

namespace A078138

/-- `A000040(A253472(n+3)-2)` -/
def P12922758700712967219.Spec : Prop :=
  ∀ n, P12922758700712967219.a n = A078138 (n + 1)

end A078138

/-! ## A078138.P8851326992638308548

`A000040(A000005(A138636(n+1))+n)`
-/

namespace A078138.P8851326992638308548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (A138636 (n + 1)).toNat + (n : ℤ)).toNat

end

end A078138.P8851326992638308548

namespace A078138

/-- `A000040(A000005(A138636(n+1))+n)` -/
def P8851326992638308548.Spec : Prop :=
  ∀ n, P8851326992638308548.a n = A078138 (n + 1)

end A078138

/-! ## A078138.P4222449226940964714

`A000040(A000005(6*A000040(n+1))+n)`
-/

namespace A078138.P4222449226940964714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (6 * A000040 (n + 1)).toNat + (n : ℤ)).toNat

end

end A078138.P4222449226940964714

namespace A078138

/-- `A000040(A000005(6*A000040(n+1))+n)` -/
def P4222449226940964714.Spec : Prop :=
  ∀ n, P4222449226940964714.a n = A078138 (n + 1)

end A078138

/-! ## A078138.P712787899520771000

`p?[lt[A018252(A006530(n+3)), n-2]]`
-/

namespace A078138.P712787899520771000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006530 (n + 3)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078138.P712787899520771000

namespace A078138

/-- `p?[lt[A018252(A006530(n+3)), n-2]]` -/
def P712787899520771000.Spec : Prop :=
  ∀ n, (P712787899520771000.a n : ℤ) = A078138 (n + 1)

end A078138

/-! ## A078138.P5967894582213873126

`p?[lt[31, A347130(n+3)]]`
-/

namespace A078138.P5967894582213873126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347130 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078138.P5967894582213873126

namespace A078138

/-- `p?[lt[31, A347130(n+3)]]` -/
def P5967894582213873126.Spec : Prop :=
  ∀ n, (P5967894582213873126.a n : ℤ) = A078138 (n + 1)

end A078138

/-! ## A078138.P2341261263750996993

`p?[A078137(2*n+1)]`
-/

namespace A078138.P2341261263750996993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078138.P2341261263750996993

namespace A078138

/-- `p?[A078137(2*n+1)]` -/
def P2341261263750996993.Spec : Prop :=
  ∀ n, P2341261263750996993.a n = A078138 (n + 1)

end A078138

/-! ## A078138.P8210082101793626557

`lt[A001156(n), A001156(A020639(n+1))]+1`
-/

namespace A078138.P8210082101793626557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A078138.P8210082101793626557

namespace A078138

/-- `lt[A001156(n), A001156(A020639(n+1))]+1` -/
def P8210082101793626557.Spec : Prop :=
  ∀ n, (P8210082101793626557.a n : ℤ) = A078138 (n + 1)

end A078138

/-! ## A078138.P9447985467883671820

`p?[lt[2, A247303(A247303(2*n+1))]]`
-/

namespace A078138.P9447985467883671820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 (A247303 (2 * n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078138.P9447985467883671820

namespace A078138

/-- `p?[lt[2, A247303(A247303(2*n+1))]]` -/
def P9447985467883671820.Spec : Prop :=
  ∀ n, (P9447985467883671820.a n : ℤ) = A078138 (n + 1)

end A078138

/-! ## A078138.P12859338955298520432

`A137669(A055495(n+2)-2)`
-/

namespace A078138.P12859338955298520432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137669 (A055495 (n + 2) - 2).toNat

end

end A078138.P12859338955298520432

namespace A078138

/-- `A137669(A055495(n+2)-2)` -/
def P12859338955298520432.Spec : Prop :=
  ∀ n, P12859338955298520432.a n = A078138 (n + 1)

end A078138

/-! ## A078138.P15329191043793408738

`p?[lt[16, A028658(n)]]`
-/

namespace A078138.P15329191043793408738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028658 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078138.P15329191043793408738

namespace A078138

/-- `p?[lt[16, A028658(n)]]` -/
def P15329191043793408738.Spec : Prop :=
  ∀ n, (P15329191043793408738.a n : ℤ) = A078138 (n + 1)

end A078138

/-! ## A078138.P4655112956929266744

`p?[lt[A312590(n+1), A312554(n)]]`
-/

namespace A078138.P4655112956929266744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312590 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312554 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078138.P4655112956929266744

namespace A078138

/-- `p?[lt[A312590(n+1), A312554(n)]]` -/
def P4655112956929266744.Spec : Prop :=
  ∀ n, (P4655112956929266744.a n : ℤ) = A078138 (n + 1)

end A078138

/-! ## A078138.P1583911327038082145

`p?[lt[A315917(n+3), A315916(n)]]`
-/

namespace A078138.P1583911327038082145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315917 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315916 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078138.P1583911327038082145

namespace A078138

/-- `p?[lt[A315917(n+3), A315916(n)]]` -/
def P1583911327038082145.Spec : Prop :=
  ∀ n, (P1583911327038082145.a n : ℤ) = A078138 (n + 1)

end A078138

/-! ## A078138.P229172417570196691

`p?[lt[A315917(n+3), A315914(n)]]`
-/

namespace A078138.P229172417570196691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315917 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315914 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078138.P229172417570196691

namespace A078138

/-- `p?[lt[A315917(n+3), A315914(n)]]` -/
def P229172417570196691.Spec : Prop :=
  ∀ n, (P229172417570196691.a n : ℤ) = A078138 (n + 1)

end A078138

/-!
# A078140: Convolutory inverse of signed lower Wythoff sequence.

The programs for A078140, there is no canonical definition to state claims against.
-/

/-! ## A078140.P4953718776116650842

`A289260(n)-A056170(A279666(n+1))`
-/

namespace A078140.P4953718776116650842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 n - A056170 (A279666 (n + 1)).toNat

end

end A078140.P4953718776116650842

/-! ## A078140.P5061388308566646124

`A289260(n)-A248805(A279600(n+1))`
-/

namespace A078140.P5061388308566646124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 n - A248805 (A279600 (n + 1)).toNat

end

end A078140.P5061388308566646124

/-! ## A078140.P16186925270474170518

`A289260(n)-A340988(A151705(2*n+3))`
-/

namespace A078140.P16186925270474170518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 n - A340988 ((A151705 (2 * n + 3)).toNat + 91)

end

end A078140.P16186925270474170518

/-! ## A078140.P15894856570334099129

`A255408(A289260(n))`
-/

namespace A078140.P15894856570334099129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A289260 n).toNat

end

end A078140.P15894856570334099129

/-! ## A078140.P8940356309470618947

`A255408(abs(A279780(n)))`
-/

namespace A078140.P8940356309470618947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 |A279780 n|.toNat

end

end A078140.P8940356309470618947

/-!
# A078141: a(n) = floor(exp(n - gamma)), where gamma is Euler's constant.

The programs for A078141, the canonical program `A078141.P18052495897651933936` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078141 has offset 0).

The definition of A078141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078141.P18052495897651933936

`floor(exp(n-γ))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078141

/-- `floor(exp(n-γ))` -/
def P18052495897651933936.Spec : Prop :=
  ∀ n, P18052495897651933936.a n = A078141 n

theorem P18052495897651933936.correct : P18052495897651933936.Spec := by
  intro n
  simp only [A078141]

end A078141

/-! ## A078141.P12255637213198961504

`ceil(exp(n-γ)-A001222(A256454(n)))`
-/

namespace A078141.P12255637213198961504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n : ℝ) - Real.eulerMascheroniConstant) - (A001222 (A256454 n).toNat : ℝ)⌉

end

end A078141.P12255637213198961504

namespace A078141

/-- `ceil(exp(n-γ)-A001222(A256454(n)))` -/
def P12255637213198961504.Spec : Prop :=
  ∀ n, P12255637213198961504.a n = A078141 n

end A078141

/-! ## A078141.P3895399605429123035

`A002387(n)-A054521(A075207(n+1))`
-/

namespace A078141.P3895399605429123035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 n - A054521 (A075207 (n + 1)).toNat

end

end A078141.P3895399605429123035

namespace A078141

/-- `A002387(n)-A054521(A075207(n+1))` -/
def P3895399605429123035.Spec : Prop :=
  ∀ n, P3895399605429123035.a n = A078141 n

end A078141

/-! ## A078141.P15887846754471156451

`A004080(n)-A124761(A053263(3*n))`
-/

namespace A078141.P15887846754471156451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 n - A124761 (A053263 (3 * n)).toNat

end

end A078141.P15887846754471156451

namespace A078141

/-- `A004080(n)-A124761(A053263(3*n))` -/
def P15887846754471156451.Spec : Prop :=
  ∀ n, P15887846754471156451.a n = A078141 n

end A078141

/-! ## A078141.P16635054582165691304

`A002387(n)-A005171(A002355(n))`
-/

namespace A078141.P16635054582165691304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 n - A005171 (A002355 n).toNat

end

end A078141.P16635054582165691304

namespace A078141

/-- `A002387(n)-A005171(A002355(n))` -/
def P16635054582165691304.Spec : Prop :=
  ∀ n, P16635054582165691304.a n = A078141 n

end A078141

/-!
# A078142: a(n) is the sum of the differences of the distinct prime factors p of n and the next square larger than p.

The programs for A078142, the canonical program `A078142.P14573931116684188311` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078142 has offset 1).

The definition of A078142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078142.P14573931116684188311

`∑{p}[n+1, ceil(sqrt(#))²-#]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078142

/-- `∑{p}[n+1, ceil(sqrt(#))²-#]` -/
def P14573931116684188311.Spec : Prop :=
  ∀ n, P14573931116684188311.a n = A078142 (n + 1)

theorem P14573931116684188311.correct : P14573931116684188311.Spec := by
  intro n
  simp only [A078142, Nat.add_sub_cancel]

end A078142

/-! ## A078142.P8983779734886612046

`A068527(∏{p}[n+1, #]%A084295(n+1))`
-/

namespace A078142.P8983779734886612046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A084295 (n + 1))).toNat

end

end A078142.P8983779734886612046

namespace A078142

/-- `A068527(∏{p}[n+1, #]%A084295(n+1))` -/
def P8983779734886612046.Spec : Prop :=
  ∀ n, P8983779734886612046.a n = A078142 (n + 1)

end A078142

/-! ## A078142.P16580994191767931477

`A068527(∏{p}[n+1, #])%A134702(n+1)`
-/

namespace A078142.P16580994191767931477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068527 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A134702 (n + 1))

end

end A078142.P16580994191767931477

namespace A078142

/-- `A068527(∏{p}[n+1, #])%A134702(n+1)` -/
def P16580994191767931477.Spec : Prop :=
  ∀ n, P16580994191767931477.a n = A078142 (n + 1)

end A078142

/-! ## A078142.P15430938783562251389

`A080883(∏{p}[n+1, #])%A306621(n+1)`
-/

namespace A078142.P15430938783562251389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080883 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A306621 (n + 1))

end

end A078142.P15430938783562251389

namespace A078142

/-- `A080883(∏{p}[n+1, #])%A306621(n+1)` -/
def P15430938783562251389.Spec : Prop :=
  ∀ n, P15430938783562251389.a n = A078142 (n + 1)

end A078142

/-! ## A078142.P12373526946921005103

`A092488(∏{p}[n+1, #])%A234018(2*(n+2))`
-/

namespace A078142.P12373526946921005103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092488 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A234018 (2 * (n + 2)))

end

end A078142.P12373526946921005103

namespace A078142

/-- `A092488(∏{p}[n+1, #])%A234018(2*(n+2))` -/
def P12373526946921005103.Spec : Prop :=
  ∀ n, P12373526946921005103.a n = A078142 (n + 1)

end A078142

/-!
# A078143: Smallest term of a run of at least 9 consecutive integers which are not squarefree.

The programs for A078143, there is no canonical definition to state claims against.
-/

/-! ## A078143.P4270376922041705358

`A077647(lt[Δ[A077647(n+1)], 2]+1)`
-/

namespace A078143.P4270376922041705358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077647 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A078143.P4270376922041705358

/-! ## A078143.P10179495572803875842

`A077647(eq[1, A077647(n+2)-A077647(n+1)]+1)`
-/

namespace A078143.P10179495572803875842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077647 (n + 2) - A077647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078143.P10179495572803875842

/-!
# A078144: Starts for strings of at least five consecutive nonsquarefree numbers.

The programs for A078144, there is no canonical definition to state claims against.
-/

/-! ## A078144.P13397944625648595896

`A188296(n+1)-2`
-/

namespace A078144.P13397944625648595896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188296 (n + 1) - 2

end

end A078144.P13397944625648595896

/-! ## A078144.P15545659995444626378

`A188296(n+1)+A001478(n+2)+n`
-/

namespace A078144.P15545659995444626378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188296 (n + 1) + A001478 (n + 2) + (n : ℤ)

end

end A078144.P15545659995444626378

/-! ## A078144.P2834103661652516277

`abs(2-A188296(A008619(2*n)))`
-/

namespace A078144.P2834103661652516277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A188296 (A008619 (2 * n)).toNat|

end

end A078144.P2834103661652516277

/-! ## A078144.P14374560396151717127

`∩[A070284(n+1)-1, A070284(n+1)]`
-/

namespace A078144.P14374560396151717127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078144.P14374560396151717127

/-! ## A078144.P12823375774080493490

`A070284(eq[1, A070284(n+2)-A070284(n+1)]+1)`
-/

namespace A078144.P12823375774080493490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (n + 2) - A070284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078144.P12823375774080493490

/-! ## A078144.P1368013076730102212

`A228826(A016825(n))+A188296(n+1)`
-/

namespace A078144.P1368013076730102212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A016825 n).toNat + A188296 (n + 1)

end

end A078144.P1368013076730102212

/-! ## A078144.P5908893287421561127

`A226177(A154579(n+1))+A188296(n+1)`
-/

namespace A078144.P5908893287421561127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (A154579 (n + 1)).toNat + A188296 (n + 1)

end

end A078144.P5908893287421561127

/-!
# A078147: First differences of sequence of nonsquarefree numbers, A013929.

The programs for A078147, the canonical program `A078147.P6737435720449306481` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078147 has offset 1).

The definition of A078147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078147.P6737435720449306481

`A013929(n+2)-A013929(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078147

/-- `A013929(n+2)-A013929(n+1)` -/
def P6737435720449306481.Spec : Prop :=
  ∀ n, P6737435720449306481.a n = A078147 (n + 1)

theorem P6737435720449306481.correct : P6737435720449306481.Spec := by
  intro n
  simp only [A078147, Nat.add_sub_cancel]

end A078147

/-! ## A078147.P11066946436953684769

`Δ[A013929(n+1)]`
-/

namespace A078147.P11066946436953684769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078147.P11066946436953684769

namespace A078147

/-- `Δ[A013929(n+1)]` -/
def P11066946436953684769.Spec : Prop :=
  ∀ n, P11066946436953684769.a n = A078147 (n + 1)

theorem P11066946436953684769.correct : P11066946436953684769.Spec := by
  intro n
  simp only [A078147, Nat.add_sub_cancel, A078147.P11066946436953684769.f1, A078147.P11066946436953684769.a, A078147.P6737435720449306481.a, SequenceMachineLib.memo_apply]

end A078147

/-! ## A078147.P3344499007993008121

`A375707(n+1)+1`
-/

namespace A078147.P3344499007993008121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1) + 1

end

end A078147.P3344499007993008121

namespace A078147

/-- `A375707(n+1)+1` -/
def P3344499007993008121.Spec : Prop :=
  ∀ n, P3344499007993008121.a n = A078147 (n + 1)

theorem P3344499007993008121.correct : P3344499007993008121.Spec := by
  intro n
  simp only [A078147, Nat.add_sub_cancel, A078147.P3344499007993008121.a, A078147.P6737435720449306481.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A375707, A375707.P16340562935949203801.a, A005361, A005361.P7238185687981551187.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078147

/-! ## A078147.P8100371569139965339

`A376593(n)+a(n-1)` with `a(0)=4`
-/

namespace A078147.P8100371569139965339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A376593 n + a (n - 1)

end

end A078147.P8100371569139965339

namespace A078147

/-- `A376593(n)+a(n-1)` -/
def P8100371569139965339.Spec : Prop :=
  ∀ n, P8100371569139965339.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P1840793206589937221

`A378036(A013929(n+2)-1)`
-/

namespace A078147.P1840793206589937221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (A013929 (n + 2) - 1).toNat

end

end A078147.P1840793206589937221

namespace A078147

/-- `A378036(A013929(n+2)-1)` -/
def P1840793206589937221.Spec : Prop :=
  ∀ n, P1840793206589937221.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P498752110871561119

`Δ[sqrt(A062320(n+1))]`
-/

namespace A078147.P498752110871561119
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062320 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078147.P498752110871561119

namespace A078147

/-- `Δ[sqrt(A062320(n+1))]` -/
def P498752110871561119.Spec : Prop :=
  ∀ n, P498752110871561119.a n = (A078147 (n + 1) : ℝ)

end A078147

/-! ## A078147.P5880764986061715718

`Δ[comp[n-A105570(n)]]`
-/

namespace A078147.P5880764986061715718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P5880764986061715718

namespace A078147

/-- `Δ[comp[n-A105570(n)]]` -/
def P5880764986061715718.Spec : Prop :=
  ∀ n, P5880764986061715718.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P4096269111207635760

`Δ[eq[0, A008683(n+1)]]`
-/

namespace A078147.P4096269111207635760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P4096269111207635760

namespace A078147

/-- `Δ[eq[0, A008683(n+1)]]` -/
def P4096269111207635760.Spec : Prop :=
  ∀ n, P4096269111207635760.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P16672923683450490583

`Δ[lt[1, A005361(n+1)]]`
-/

namespace A078147.P16672923683450490583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P16672923683450490583

namespace A078147

/-- `Δ[lt[1, A005361(n+1)]]` -/
def P16672923683450490583.Spec : Prop :=
  ∀ n, P16672923683450490583.a n = A078147 (n + 1)

theorem P16672923683450490583.correct : P16672923683450490583.Spec := by
  intro n
  simp only [A078147, Nat.add_sub_cancel, A078147.P16672923683450490583.f2, A078147.P16672923683450490583.f3, A078147.P16672923683450490583.f1, A078147.P16672923683450490583.a, A078147.P6737435720449306481.a, A005361, A005361.P7238185687981551187.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078147

/-! ## A078147.P9582012243208047763

`Δ[lt[1, A008833(n+1)]]`
-/

namespace A078147.P9582012243208047763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P9582012243208047763

namespace A078147

/-- `Δ[lt[1, A008833(n+1)]]` -/
def P9582012243208047763.Spec : Prop :=
  ∀ n, P9582012243208047763.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P5550843688436627836

`Δ[lt[A008966(n+1), 1]]`
-/

namespace A078147.P5550843688436627836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P5550843688436627836

namespace A078147

/-- `Δ[lt[A008966(n+1), 1]]` -/
def P5550843688436627836.Spec : Prop :=
  ∀ n, P5550843688436627836.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P5404452583051114790

`Δ[lt[1, A051903(n+1)]]`
-/

namespace A078147.P5404452583051114790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P5404452583051114790

namespace A078147

/-- `Δ[lt[1, A051903(n+1)]]` -/
def P5404452583051114790.Spec : Prop :=
  ∀ n, P5404452583051114790.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P10457932069588938618

`Δ[lt[A007913(n+1), n]]`
-/

namespace A078147.P10457932069588938618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P10457932069588938618

namespace A078147

/-- `Δ[lt[A007913(n+1), n]]` -/
def P10457932069588938618.Spec : Prop :=
  ∀ n, P10457932069588938618.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P1215313449740705913

`Δ[lt[A007947(n+1), n]]`
-/

namespace A078147.P1215313449740705913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P1215313449740705913

namespace A078147

/-- `Δ[lt[A007947(n+1), n]]` -/
def P1215313449740705913.Spec : Prop :=
  ∀ n, P1215313449740705913.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P9031892138924099704

`Δ[comp[A005117(n+1)-1]]`
-/

namespace A078147.P9031892138924099704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P9031892138924099704

namespace A078147

/-- `Δ[comp[A005117(n+1)-1]]` -/
def P9031892138924099704.Spec : Prop :=
  ∀ n, P9031892138924099704.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P6205929463983518837

`Δ[lt[abs(A008683(n+2)), 1]]`
-/

namespace A078147.P6205929463983518837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 2)|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P6205929463983518837

namespace A078147

/-- `Δ[lt[abs(A008683(n+2)), 1]]` -/
def P6205929463983518837.Spec : Prop :=
  ∀ n, P6205929463983518837.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P3588702210599660164

`Δ[lt[A008683(n+3)², 1]]`
-/

namespace A078147.P3588702210599660164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P3588702210599660164

namespace A078147

/-- `Δ[lt[A008683(n+3)², 1]]` -/
def P3588702210599660164.Spec : Prop :=
  ∀ n, P3588702210599660164.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P2213898327649640588

`Δ[eq[0, A008683(2*n-(n-1))²]]`
-/

namespace A078147.P2213898327649640588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P2213898327649640588

namespace A078147

/-- `Δ[eq[0, A008683(2*n-(n-1))²]]` -/
def P2213898327649640588.Spec : Prop :=
  ∀ n, P2213898327649640588.a n = A078147 (n + 1)

end A078147

/-! ## A078147.P17755161779855229834

`Δ[lt[A001221(n+1), A001222(n+1)]]`
-/

namespace A078147.P17755161779855229834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078147.P17755161779855229834

namespace A078147

/-- `Δ[lt[A001221(n+1), A001222(n+1)]]` -/
def P17755161779855229834.Spec : Prop :=
  ∀ n, P17755161779855229834.a n = A078147 (n + 1)

end A078147

/-!
# A078148: Numbers k such that d(phi(k)) = phi(d(k)), where d=A000005 and phi=A000010.

The programs for A078148, there is no canonical definition to state claims against.
-/

/-! ## A078148.P5365597123915788706

`eq[0, A385122(n+1)]+1`
-/

namespace A078148.P5365597123915788706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078148.P5365597123915788706

/-! ## A078148.P16579832494704981355

`eq[A062821(n+1), A163109(n+1)]+1`
-/

namespace A078148.P16579832494704981355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078148.P16579832494704981355

/-! ## A078148.P868441385099715788

`eq[A000005(A002618(n+1)/(n+1)), A163109(n+1)]+1`
-/

namespace A078148.P868441385099715788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078148.P868441385099715788

/-! ## A078148.P13217738439008870635

`record[A286363(A340364(n+1))]`
-/

namespace A078148.P13217738439008870635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (A340364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078148.P13217738439008870635

/-! ## A078148.P4258762307995956500

`record[A286363(A172292(n+1)+1)]`
-/

namespace A078148.P4258762307995956500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (A172292 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078148.P4258762307995956500

/-!
# A078152: a(n) = A055086(n) - A000005(n).

The programs for A078152, the canonical program `A078152.P14082949690020267377` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078152 has offset 1).

The definition of A078152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078152.P14082949690020267377

`A055086(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A078152

/-- `A055086(n+1)-A000005(n+1)` -/
def P14082949690020267377.Spec : Prop :=
  ∀ n, P14082949690020267377.a n = A078152 (n + 1)

theorem P14082949690020267377.correct : P14082949690020267377.Spec := by
  intro n
  simp only [A078152, Nat.add_sub_cancel]

end A078152

/-! ## A078152.P2199012503371759573

`∑[char[floor((n/2)²)-1]]-∏{e}[n+1, #+1]`
-/

namespace A078152.P2199012503371759573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ)

end

end A078152.P2199012503371759573

namespace A078152

/-- `∑[char[floor((n/2)²)-1]]-∏{e}[n+1, #+1]` -/
def P2199012503371759573.Spec : Prop :=
  ∀ n, P2199012503371759573.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P18424284887558459808

`floor(sqrt(4*n+5)+n)-(∑{d}[n+1, ceil(2/#)]+n)`
-/

namespace A078152.P18424284887558459808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (4 * n + 5 : ℝ) + (n : ℝ)⌋ - (∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ + (n : ℤ))

end

end A078152.P18424284887558459808

namespace A078152

/-- `floor(sqrt(4*n+5)+n)-(∑{d}[n+1, ceil(2/#)]+n)` -/
def P18424284887558459808.Spec : Prop :=
  ∀ n, P18424284887558459808.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P7983874696306964828

`floor(sqrt(4*n+5)+n)%(∑{d}[n+1, ceil(2/#)]+n)`
-/

namespace A078152.P7983874696306964828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (4 * n + 5 : ℝ) + (n : ℝ)⌋ (∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ + (n : ℤ))

end

end A078152.P7983874696306964828

namespace A078152

/-- `floor(sqrt(4*n+5)+n)%(∑{d}[n+1, ceil(2/#)]+n)` -/
def P7983874696306964828.Spec : Prop :=
  ∀ n, P7983874696306964828.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P1878195341906731695

`A183869(n)-A062249(n+1)`
-/

namespace A078152.P1878195341906731695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n - A062249 (n + 1)

end

end A078152.P1878195341906731695

namespace A078152

/-- `A183869(n)-A062249(n+1)` -/
def P1878195341906731695.Spec : Prop :=
  ∀ n, P1878195341906731695.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P6936383983548041801

`∑[A240025(n+1)]-A000005(n+1)`
-/

namespace A078152.P6936383983548041801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (n + 1)

end

end A078152.P6936383983548041801

namespace A078152

/-- `∑[A240025(n+1)]-A000005(n+1)` -/
def P6936383983548041801.Spec : Prop :=
  ∀ n, P6936383983548041801.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P18030627401825454849

`A000267(n+1)-(A000005(n+1)+1)`
-/

namespace A078152.P18030627401825454849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (n + 1) - (A000005 (n + 1) + 1)

end

end A078152.P18030627401825454849

namespace A078152

/-- `A000267(n+1)-(A000005(n+1)+1)` -/
def P18030627401825454849.Spec : Prop :=
  ∀ n, P18030627401825454849.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P11389944761367893634

`A000267(n+1)-(A032741(n+1)+2)`
-/

namespace A078152.P11389944761367893634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (n + 1) - (A032741 (n + 1) + 2)

end

end A078152.P11389944761367893634

namespace A078152

/-- `A000267(n+1)-(A032741(n+1)+2)` -/
def P11389944761367893634.Spec : Prop :=
  ∀ n, P11389944761367893634.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P15101091227709239192

`A183869(n)-(A000005(n+1)+n+1)`
-/

namespace A078152.P15101091227709239192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n - (A000005 (n + 1) + (n + 1 : ℤ))

end

end A078152.P15101091227709239192

namespace A078152

/-- `A183869(n)-(A000005(n+1)+n+1)` -/
def P15101091227709239192.Spec : Prop :=
  ∀ n, P15101091227709239192.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P2482953905078910623

`∑[(A028297(n)%2)²]-A000005(n+1)`
-/

namespace A078152.P2482953905078910623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028297 n) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (n + 1)

end

end A078152.P2482953905078910623

namespace A078152

/-- `∑[(A028297(n)%2)²]-A000005(n+1)` -/
def P2482953905078910623.Spec : Prop :=
  ∀ n, P2482953905078910623.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P9224042559219522583

`Δ[A342711(n)]-(A000005(n+1)+1)`
-/

namespace A078152.P9224042559219522583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A000005 (n + 1) + 1)

end

end A078152.P9224042559219522583

namespace A078152

/-- `Δ[A342711(n)]-(A000005(n+1)+1)` -/
def P9224042559219522583.Spec : Prop :=
  ∀ n, P9224042559219522583.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P11204551161235579512

`A055086(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A078152.P11204551161235579512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A078152.P11204551161235579512

namespace A078152

/-- `A055086(n+1)+A006218(n)-A006218(n+1)` -/
def P11204551161235579512.Spec : Prop :=
  ∀ n, P11204551161235579512.a n = A078152 (n + 1)

end A078152

/-! ## A078152.P6706184454327533167

`A055086(n+1)-(A134156(n+1)+A049820(n+1))`
-/

namespace A078152.P6706184454327533167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (n + 1) - (A134156 (n + 1) + A049820 (n + 1))

end

end A078152.P6706184454327533167

namespace A078152

/-- `A055086(n+1)-(A134156(n+1)+A049820(n+1))` -/
def P6706184454327533167.Spec : Prop :=
  ∀ n, P6706184454327533167.a n = A078152 (n + 1)

theorem P6706184454327533167.correct : P6706184454327533167.Spec := by
  intro n
  simp only [A078152, Nat.add_sub_cancel, A078152.P6706184454327533167.a, A078152.P14082949690020267377.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A055086, A055086.P18168198331367643999.a, A134156, A134156.P11875869690967924309.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078152

/-!
# A078153: a(n) = A051201(n) - A000203(n).

The programs for A078153, the canonical program `A078153.P11915035993394285373` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078153 has offset 1).

The definition of A078153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078153.P11915035993394285373

`A051201(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078153

/-- `A051201(n+1)-A000203(n+1)` -/
def P11915035993394285373.Spec : Prop :=
  ∀ n, P11915035993394285373.a n = A078153 (n + 1)

theorem P11915035993394285373.correct : P11915035993394285373.Spec := by
  intro n
  simp only [A078153, Nat.add_sub_cancel]

end A078153

/-! ## A078153.P12214624871980958824

`A051201(n+1)-Δ[A160664(n)]`
-/

namespace A078153.P12214624871980958824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - (f1 (n + 1) - f1 n)

end

end A078153.P12214624871980958824

namespace A078153

/-- `A051201(n+1)-Δ[A160664(n)]` -/
def P12214624871980958824.Spec : Prop :=
  ∀ n, P12214624871980958824.a n = A078153 (n + 1)

end A078153

/-! ## A078153.P9972058767444002787

`A051201(n+1)-sqrt(A072861(n+1))`
-/

namespace A078153.P9972058767444002787
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051201 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

end

end A078153.P9972058767444002787

namespace A078153

/-- `A051201(n+1)-sqrt(A072861(n+1))` -/
def P9972058767444002787.Spec : Prop :=
  ∀ n, P9972058767444002787.a n = (A078153 (n + 1) : ℝ)

end A078153

/-! ## A078153.P10430302492634323475

`A051201(n+1)-A245092(2*n+1)`
-/

namespace A078153.P10430302492634323475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - A245092 (2 * n + 1)

end

end A078153.P10430302492634323475

namespace A078153

/-- `A051201(n+1)-A245092(2*n+1)` -/
def P10430302492634323475.Spec : Prop :=
  ∀ n, P10430302492634323475.a n = A078153 (n + 1)

end A078153

/-! ## A078153.P4043692072394843620

`A051201(n+1)-A074400(n+1)/2`
-/

namespace A078153.P4043692072394843620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051201 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A078153.P4043692072394843620

namespace A078153

/-- `A051201(n+1)-A074400(n+1)/2` -/
def P4043692072394843620.Spec : Prop :=
  ∀ n, P4043692072394843620.a n = (A078153 (n + 1) : ℚ)

theorem P4043692072394843620.correct : P4043692072394843620.Spec := by
  intro n
  simp only [A078153, Nat.add_sub_cancel, A078153.P4043692072394843620.a, A078153.P11915035993394285373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051201, A051201.P10278196116176951271.a, A074400, A074400.P16312391460013478761.a, A000267, A000267.P8737011026442136894.a, A006218, A006218.P9218434490128439557.a, A055086, A055086.P18168198331367643999.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078153

/-! ## A078153.P2281592619856684391

`A051201(n+1)-(A155085(n+1)-(n+1))`
-/

namespace A078153.P2281592619856684391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - (A155085 (n + 1) - (n + 1 : ℤ))

end

end A078153.P2281592619856684391

namespace A078153

/-- `A051201(n+1)-(A155085(n+1)-(n+1))` -/
def P2281592619856684391.Spec : Prop :=
  ∀ n, P2281592619856684391.a n = A078153 (n + 1)

theorem P2281592619856684391.correct : P2281592619856684391.Spec := by
  intro n
  simp only [A078153, Nat.add_sub_cancel, A078153.P2281592619856684391.a, A078153.P11915035993394285373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051201, A051201.P10278196116176951271.a, A155085, A155085.P2440965829929837208.a, A000267, A000267.P8737011026442136894.a, A006218, A006218.P9218434490128439557.a, A055086, A055086.P18168198331367643999.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078153

/-! ## A078153.P14860643267906600780

`A051201(n+1)-A064987(n+1)/(n+1)`
-/

namespace A078153.P14860643267906600780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051201 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078153.P14860643267906600780

namespace A078153

/-- `A051201(n+1)-A064987(n+1)/(n+1)` -/
def P14860643267906600780.Spec : Prop :=
  ∀ n, P14860643267906600780.a n = (A078153 (n + 1) : ℚ)

end A078153

/-! ## A078153.P8773808184660258037

`∑[A210256(A028310(n))]-A088580(n+1)`
-/

namespace A078153.P8773808184660258037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088580 (n + 1)

end

end A078153.P8773808184660258037

namespace A078153

/-- `∑[A210256(A028310(n))]-A088580(n+1)` -/
def P8773808184660258037.Spec : Prop :=
  ∀ n, P8773808184660258037.a n = A078153 (n + 1)

end A078153

/-! ## A078153.P8741044932628138710

`A051201(n+1)-A326065(A103517(n))`
-/

namespace A078153.P8741044932628138710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - A326065 (A103517 n).toNat

end

end A078153.P8741044932628138710

namespace A078153

/-- `A051201(n+1)-A326065(A103517(n))` -/
def P8741044932628138710.Spec : Prop :=
  ∀ n, P8741044932628138710.a n = A078153 (n + 1)

end A078153

/-! ## A078153.P1207035290701895243

`A051201(n+1)+A001057(A074400(n+1))`
-/

namespace A078153.P1207035290701895243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) + A001057 (A074400 (n + 1)).toNat

end

end A078153.P1207035290701895243

namespace A078153

/-- `A051201(n+1)+A001057(A074400(n+1))` -/
def P1207035290701895243.Spec : Prop :=
  ∀ n, P1207035290701895243.a n = A078153 (n + 1)

end A078153

/-! ## A078153.P6927619786431048688

`A051201(n+1)-A065033(A002659(n+1))`
-/

namespace A078153.P6927619786431048688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - A065033 (A002659 (n + 1)).toNat

end

end A078153.P6927619786431048688

namespace A078153

/-- `A051201(n+1)-A065033(A002659(n+1))` -/
def P6927619786431048688.Spec : Prop :=
  ∀ n, P6927619786431048688.a n = A078153 (n + 1)

end A078153

/-! ## A078153.P17714997197098673744

`A051201(n+1)-A245093(∑[n+1])`
-/

namespace A078153.P17714997197098673744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (n + 1) - A245093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078153.P17714997197098673744

namespace A078153

/-- `A051201(n+1)-A245093(∑[n+1])` -/
def P17714997197098673744.Spec : Prop :=
  ∀ n, P17714997197098673744.a n = A078153 (n + 1)

end A078153

/-!
# A078154: Primes of the form A004154(k) + 1.

The programs for A078154, there is no canonical definition to state claims against.
-/

/-! ## A078154.P8564550551987807769

`A004154(A078203(n+1))+1`
-/

namespace A078154.P8564550551987807769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 (A078203 (n + 1)).toNat + 1

end

end A078154.P8564550551987807769

/-!
# A078155: A078152(n!).

The programs for A078155, the canonical program `A078155.P2137450689880317301` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078155 has offset 1).

The definition of A078155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078155.P2137450689880317301

`A078160(n+1)-A027423(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078155

/-- `A078160(n+1)-A027423(n+1)` -/
def P2137450689880317301.Spec : Prop :=
  ∀ n, P2137450689880317301.a n = A078155 (n + 1)

theorem P2137450689880317301.correct : P2137450689880317301.Spec := by
  intro n
  simp only [A078155, Nat.add_sub_cancel]

end A078155

/-! ## A078155.P10631794985473753575

`A309078(A309058(n+2))%ceil(∑[3^(n-2)])`
-/

namespace A078155.P10631794985473753575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309078 (A309058 (n + 2)).toNat) ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A078155.P10631794985473753575

namespace A078155

/-- `A309078(A309058(n+2))%ceil(∑[3^(n-2)])` -/
def P10631794985473753575.Spec : Prop :=
  ∀ n, P10631794985473753575.a n = A078155 (n + 1)

end A078155

/-! ## A078155.P5962352987426653272

`and(A000203(A121926(n+1)), A002494(n))`
-/

namespace A078155.P5962352987426653272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A121926 (n + 1)).toNat) (A002494 n)

end

end A078155.P5962352987426653272

namespace A078155

/-- `and(A000203(A121926(n+1)), A002494(n))` -/
def P5962352987426653272.Spec : Prop :=
  ∀ n, P5962352987426653272.a n = A078155 (n + 1)

end A078155

/-!
# A078156: A078153(n!).

The programs for A078156, the canonical program `A078156.P15055870167675829401` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078156 has offset 1).

The definition of A078156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078156.P4809799503877434498

`A078162(n+1)-A062569(n+1)`
-/

namespace A078156.P4809799503877434498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078162 (n + 1) - A062569 (n + 1)

end

end A078156.P4809799503877434498

namespace A078156

/-- `A078162(n+1)-A062569(n+1)` -/
def P4809799503877434498.Spec : Prop :=
  ∀ n, P4809799503877434498.a n = A078156 (n + 1)

end A078156

/-! ## A078156.P15055870167675829401

`A078153((n+1)!)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A078156

/-- `A078153((n+1)!)` -/
def P15055870167675829401.Spec : Prop :=
  ∀ n, P15055870167675829401.a n = A078156 (n + 1)

theorem P15055870167675829401.correct : P15055870167675829401.Spec := by
  intro n
  simp only [A078156, Nat.add_sub_cancel]

end A078156

/-! ## A078156.P5709268231652636514

`A078162(n+1)-A000203(A000142(n+1))`
-/

namespace A078156.P5709268231652636514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078162 (n + 1) - A000203 (A000142 (n + 1)).toNat

end

end A078156.P5709268231652636514

namespace A078156

/-- `A078162(n+1)-A000203(A000142(n+1))` -/
def P5709268231652636514.Spec : Prop :=
  ∀ n, P5709268231652636514.a n = A078156 (n + 1)

end A078156

/-!
# A078157: a(n) = A078152(2^n).

The programs for A078157, the canonical program `A078157.P9337233492814694395` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078157 has offset 1).

The definition of A078157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078157.P9337233492814694395

`A078152(2^(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078157

/-- `A078152(2^(n+1))` -/
def P9337233492814694395.Spec : Prop :=
  ∀ n, P9337233492814694395.a n = A078157 (n + 1)

theorem P9337233492814694395.correct : P9337233492814694395.Spec := by
  intro n
  simp only [A078157, Nat.add_sub_cancel]

end A078157

/-! ## A078157.P583497876205170662

`A078159(n+1)-(n+2)`
-/

namespace A078157.P583497876205170662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078159 (n + 1) - (n + 2 : ℤ)

end

end A078157.P583497876205170662

namespace A078157

/-- `A078159(n+1)-(n+2)` -/
def P583497876205170662.Spec : Prop :=
  ∀ n, P583497876205170662.a n = A078157 (n + 1)

end A078157

/-! ## A078157.P12162963235771276577

`record[A260196(n)+A017910(n)]-(n+2)`
-/

namespace A078157.P12162963235771276577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A017910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 2 : ℤ)

end

end A078157.P12162963235771276577

namespace A078157

/-- `record[A260196(n)+A017910(n)]-(n+2)` -/
def P12162963235771276577.Spec : Prop :=
  ∀ n, P12162963235771276577.a n = A078157 (n + 1)

end A078157

/-! ## A078157.P10492823674454171850

`floor(sqrt(2^(n+3)+1)-(n+3))`
-/

namespace A078157.P10492823674454171850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 ^ (n + 3) + 1 : ℝ) - (n + 3 : ℝ)⌋

end

end A078157.P10492823674454171850

namespace A078157

/-- `floor(sqrt(2^(n+3)+1)-(n+3))` -/
def P10492823674454171850.Spec : Prop :=
  ∀ n, P10492823674454171850.a n = A078157 (n + 1)

end A078157

/-! ## A078157.P5515120333708700905

`floor(sqrt(A000051(n+3)))-(n+3)`
-/

namespace A078157.P5515120333708700905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000051 (n + 3)) - (n + 3 : ℤ)

end

end A078157.P5515120333708700905

namespace A078157

/-- `floor(sqrt(A000051(n+3)))-(n+3)` -/
def P5515120333708700905.Spec : Prop :=
  ∀ n, P5515120333708700905.a n = A078157 (n + 1)

end A078157

/-! ## A078157.P2901758019732302114

`floor(sqrt(A011782(n+4)+3))-3-n`
-/

namespace A078157.P2901758019732302114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A011782 (n + 4) + 3) - 3 - (n : ℤ)

end

end A078157.P2901758019732302114

namespace A078157

/-- `floor(sqrt(A011782(n+4)+3))-3-n` -/
def P2901758019732302114.Spec : Prop :=
  ∀ n, P2901758019732302114.a n = A078157 (n + 1)

end A078157

/-!
# A078158: a(n) = A078153(2^n).

The programs for A078158, the canonical program `A078158.P4884813077665942233` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078158 has offset 1).

The definition of A078158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078158.P4884813077665942233

`A078153(2^(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A078158

/-- `A078153(2^(n+1))` -/
def P4884813077665942233.Spec : Prop :=
  ∀ n, P4884813077665942233.a n = A078158 (n + 1)

theorem P4884813077665942233.correct : P4884813077665942233.Spec := by
  intro n
  simp only [A078158, Nat.add_sub_cancel]

end A078158

/-! ## A078158.P8607973911776782721

`A078161(n+1)-A126646(n+1)`
-/

namespace A078158.P8607973911776782721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078161 (n + 1) - A126646 (n + 1)

end

end A078158.P8607973911776782721

namespace A078158

/-- `A078161(n+1)-A126646(n+1)` -/
def P8607973911776782721.Spec : Prop :=
  ∀ n, P8607973911776782721.a n = A078158 (n + 1)

end A078158

/-! ## A078158.P17479468216651611504

`A078161(n+1)-A078159(2*(n+1))`
-/

namespace A078158.P17479468216651611504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078161 (n + 1) - A078159 (2 * (n + 1))

end

end A078158.P17479468216651611504

namespace A078158

/-- `A078161(n+1)-A078159(2*(n+1))` -/
def P17479468216651611504.Spec : Prop :=
  ∀ n, P17479468216651611504.a n = A078158 (n + 1)

end A078158

/-! ## A078158.P11649374457837659127

`A078161(n+1)-A000203(A000079(n+1))`
-/

namespace A078158.P11649374457837659127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078161 (n + 1) - A000203 (A000079 (n + 1)).toNat

end

end A078158.P11649374457837659127

namespace A078158

/-- `A078161(n+1)-A000203(A000079(n+1))` -/
def P11649374457837659127.Spec : Prop :=
  ∀ n, P11649374457837659127.a n = A078158 (n + 1)

end A078158

/-! ## A078158.P13420353674115265348

`A078161(n+1)-A000203(A011782(n+2))`
-/

namespace A078158.P13420353674115265348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078161 (n + 1) - A000203 (A011782 (n + 2)).toNat

end

end A078158.P13420353674115265348

namespace A078158

/-- `A078161(n+1)-A000203(A011782(n+2))` -/
def P13420353674115265348.Spec : Prop :=
  ∀ n, P13420353674115265348.a n = A078158 (n + 1)

end A078158

/-!
# A078159: a(n) = A055086(2^n).

The programs for A078159, the canonical program `A078159.P2969682460774047245` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078159 has offset 1).

The definition of A078159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078159.P2969682460774047245

`A055086(2^(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078159

/-- `A055086(2^(n+1))` -/
def P2969682460774047245.Spec : Prop :=
  ∀ n, P2969682460774047245.a n = A078159 (n + 1)

theorem P2969682460774047245.correct : P2969682460774047245.Spec := by
  intro n
  simp only [A078159, Nat.add_sub_cancel]

end A078159

/-! ## A078159.P17893089449609305502

`record[floor(2^(n/2))-(ceil(atan(n))-1)]`
-/

namespace A078159.P17893089449609305502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ - (⌈Real.arctan (n : ℝ)⌉ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078159.P17893089449609305502

namespace A078159

/-- `record[floor(2^(n/2))-(ceil(atan(n))-1)]` -/
def P17893089449609305502.Spec : Prop :=
  ∀ n, P17893089449609305502.a n = A078159 (n + 1)

end A078159

/-! ## A078159.P14647254946546547362

`record[floor(2^(n/2))+abs(1-n)-n]`
-/

namespace A078159.P14647254946546547362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + (|1 - (n : ℤ)| - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078159.P14647254946546547362

namespace A078159

/-- `record[floor(2^(n/2))+abs(1-n)-n]` -/
def P14647254946546547362.Spec : Prop :=
  ∀ n, P14647254946546547362.a n = A078159 (n + 1)

end A078159

/-! ## A078159.P9261485697348442342

`A078157(n+1)+2+n`
-/

namespace A078159.P9261485697348442342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078157 (n + 1) + 2 + (n : ℤ)

end

end A078159.P9261485697348442342

namespace A078159

/-- `A078157(n+1)+2+n` -/
def P9261485697348442342.Spec : Prop :=
  ∀ n, P9261485697348442342.a n = A078159 (n + 1)

end A078159

/-! ## A078159.P766016306282557847

`floor(sqrt(2^(n+3)+1))-1`
-/

namespace A078159.P766016306282557847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 ^ (n + 3) + 1) : ℤ) - 1

end

end A078159.P766016306282557847

namespace A078159

/-- `floor(sqrt(2^(n+3)+1))-1` -/
def P766016306282557847.Spec : Prop :=
  ∀ n, P766016306282557847.a n = A078159 (n + 1)

end A078159

/-! ## A078159.P15765330130865906245

`floor(sqrt(A065732(n+3)-n))`
-/

namespace A078159.P15765330130865906245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A065732 (n + 3) - (n : ℤ))

end

end A078159.P15765330130865906245

namespace A078159

/-- `floor(sqrt(A065732(n+3)-n))` -/
def P15765330130865906245.Spec : Prop :=
  ∀ n, P15765330130865906245.a n = A078159 (n + 1)

end A078159

/-! ## A078159.P8137556978926101022

`abs(floor(sqrt(A000051(n+3)))-1)`
-/

namespace A078159.P8137556978926101022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.sqrt (A000051 (n + 3)) - 1|

end

end A078159.P8137556978926101022

namespace A078159

/-- `abs(floor(sqrt(A000051(n+3)))-1)` -/
def P8137556978926101022.Spec : Prop :=
  ∀ n, P8137556978926101022.a n = A078159 (n + 1)

end A078159

/-!
# A078160: a(n) = A055086(n!).

The programs for A078160, the canonical program `A078160.P11759729529031580797` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078160 has offset 1).

The definition of A078160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078160.P9648175653959185402

`A027423(n+1)+A078155(n+1)`
-/

namespace A078160.P9648175653959185402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) + A078155 (n + 1)

end

end A078160.P9648175653959185402

namespace A078160

/-- `A027423(n+1)+A078155(n+1)` -/
def P9648175653959185402.Spec : Prop :=
  ∀ n, P9648175653959185402.a n = A078160 (n + 1)

theorem P9648175653959185402.correct : P9648175653959185402.Spec := by
  intro n
  simp only [A078160, Nat.add_sub_cancel, A078160.P9648175653959185402.a, A078160.P11759729529031580797.a, A027423, A027423.P14066705804803784298.a, A055086, A055086.P18168198331367643999.a, A078155, A078155.P2137450689880317301.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078160

/-! ## A078160.P6713615203798670433

`floor(sqrt(4*(n+1)!+1))-1`
-/

namespace A078160.P6713615203798670433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (4 * Nat.factorial (n + 1) + 1) : ℤ) - 1

end

end A078160.P6713615203798670433

namespace A078160

/-- `floor(sqrt(4*(n+1)!+1))-1` -/
def P6713615203798670433.Spec : Prop :=
  ∀ n, P6713615203798670433.a n = A078160 (n + 1)

end A078160

/-! ## A078160.P11759729529031580797

`A055086((n+1)!)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078160

/-- `A055086((n+1)!)` -/
def P11759729529031580797.Spec : Prop :=
  ∀ n, P11759729529031580797.a n = A078160 (n + 1)

theorem P11759729529031580797.correct : P11759729529031580797.Spec := by
  intro n
  simp only [A078160, Nat.add_sub_cancel]

end A078160

/-! ## A078160.P5849330520302937068

`A109497(A303882(n+1))`
-/

namespace A078160.P5849330520302937068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A303882 (n + 1)).toNat

end

end A078160.P5849330520302937068

namespace A078160

/-- `A109497(A303882(n+1))` -/
def P5849330520302937068.Spec : Prop :=
  ∀ n, P5849330520302937068.a n = A078160 (n + 1)

end A078160

/-!
# A078161: a(n) = A051201(2^n).

The programs for A078161, the canonical program `A078161.P15379382876916595624` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078161 has offset 0).

The definition of A078161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078161.P15379382876916595624

`A051201(2^n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078161

/-- `A051201(2^n)` -/
def P15379382876916595624.Spec : Prop :=
  ∀ n, P15379382876916595624.a n = A078161 n

theorem P15379382876916595624.correct : P15379382876916595624.Spec := by
  intro n
  simp only [A078161]

end A078161

/-! ## A078161.P11984481009256321568

`record[A051201(A376033(n))]`
-/

namespace A078161.P11984481009256321568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A376033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078161.P11984481009256321568

namespace A078161

/-- `record[A051201(A376033(n))]` -/
def P11984481009256321568.Spec : Prop :=
  ∀ n, P11984481009256321568.a n = A078161 n

end A078161

/-! ## A078161.P8663248843998360096

`record[A051201(A122111(n+1))]`
-/

namespace A078161.P8663248843998360096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078161.P8663248843998360096

namespace A078161

/-- `record[A051201(A122111(n+1))]` -/
def P8663248843998360096.Spec : Prop :=
  ∀ n, P8663248843998360096.a n = A078161 n

end A078161

/-! ## A078161.P5777492656841938341

`A355478(n)+A051201(A000079(n))`
-/

namespace A078161.P5777492656841938341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355478 n + A051201 (A000079 n).toNat

end

end A078161.P5777492656841938341

namespace A078161

/-- `A355478(n)+A051201(A000079(n))` -/
def P5777492656841938341.Spec : Prop :=
  ∀ n, P5777492656841938341.a n = A078161 n

end A078161

/-! ## A078161.P9309915501558346419

`A051201(A000079(n))%A001395(n)`
-/

namespace A078161.P9309915501558346419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051201 (A000079 n).toNat) (A001395 n)

end

end A078161.P9309915501558346419

namespace A078161

/-- `A051201(A000079(n))%A001395(n)` -/
def P9309915501558346419.Spec : Prop :=
  ∀ n, P9309915501558346419.a n = A078161 n

end A078161

/-!
# A078162: a(n) = A051201(n!).

The programs for A078162, the canonical program `A078162.P2737128330194667250` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078162 has offset 0).

The definition of A078162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078162.P2737128330194667250

`A051201(n!)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078162

/-- `A051201(n!)` -/
def P2737128330194667250.Spec : Prop :=
  ∀ n, P2737128330194667250.a n = A078162 n

theorem P2737128330194667250.correct : P2737128330194667250.Spec := by
  intro n
  simp only [A078162]

end A078162

/-! ## A078162.P9520922987698969528

`A051201(A000142(n))`
-/

namespace A078162.P9520922987698969528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A000142 n).toNat

end

end A078162.P9520922987698969528

namespace A078162

/-- `A051201(A000142(n))` -/
def P9520922987698969528.Spec : Prop :=
  ∀ n, P9520922987698969528.a n = A078162 n

end A078162

/-! ## A078162.P11961773473949566932

`A051201(A033646(n))`
-/

namespace A078162.P11961773473949566932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A033646 n).toNat

end

end A078162.P11961773473949566932

namespace A078162

/-- `A051201(A033646(n))` -/
def P11961773473949566932.Spec : Prop :=
  ∀ n, P11961773473949566932.a n = A078162 n

end A078162

/-! ## A078162.P2988091187716138177

`A051201(A033647(n))`
-/

namespace A078162.P2988091187716138177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A033647 n).toNat

end

end A078162.P2988091187716138177

namespace A078162

/-- `A051201(A033647(n))` -/
def P2988091187716138177.Spec : Prop :=
  ∀ n, P2988091187716138177.a n = A078162 n

end A078162

/-!
# A078163: a(n) = A051201(n^2).

The programs for A078163, the canonical program `A078163.P10734314273824272191` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078163 has offset 1).

The definition of A078163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078163.P10734314273824272191

`A051201((n+1)²)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078163

/-- `A051201((n+1)²)` -/
def P10734314273824272191.Spec : Prop :=
  ∀ n, P10734314273824272191.a n = A078163 (n + 1)

theorem P10734314273824272191.correct : P10734314273824272191.Spec := by
  intro n
  simp only [A078163, Nat.add_sub_cancel]

end A078163

/-! ## A078163.P3671977933804509762

`∑[Δ[A118014(n)]+n]`
-/

namespace A078163.P3671977933804509762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078163.P3671977933804509762

namespace A078163

/-- `∑[Δ[A118014(n)]+n]` -/
def P3671977933804509762.Spec : Prop :=
  ∀ n, P3671977933804509762.a n = A078163 (n + 1)

end A078163

/-! ## A078163.P6775383583760875339

`A118014(n+1)+∑[n]`
-/

namespace A078163.P6775383583760875339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118014 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A078163.P6775383583760875339

namespace A078163

/-- `A118014(n+1)+∑[n]` -/
def P6775383583760875339.Spec : Prop :=
  ∀ n, P6775383583760875339.a n = A078163 (n + 1)

end A078163

/-! ## A078163.P16270453669391960035

`A002620(n+1)+A118014(n+1)+A002620(n)`
-/

namespace A078163.P16270453669391960035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A118014 (n + 1) + A002620 n)

end

end A078163.P16270453669391960035

namespace A078163

/-- `A002620(n+1)+A118014(n+1)+A002620(n)` -/
def P16270453669391960035.Spec : Prop :=
  ∀ n, P16270453669391960035.a n = A078163 (n + 1)

end A078163

/-! ## A078163.P1048645995082108658

`A299251(2*n+1)+A000217(2*n+1)`
-/

namespace A078163.P1048645995082108658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299251 (2 * n + 1) + A000217 (2 * n + 1)

end

end A078163.P1048645995082108658

namespace A078163

/-- `A299251(2*n+1)+A000217(2*n+1)` -/
def P1048645995082108658.Spec : Prop :=
  ∀ n, P1048645995082108658.a n = A078163 (n + 1)

end A078163

/-! ## A078163.P10109640482794885614

`A211264((n+1)²)+(n+1)²`
-/

namespace A078163.P10109640482794885614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A078163.P10109640482794885614

namespace A078163

/-- `A211264((n+1)²)+(n+1)²` -/
def P10109640482794885614.Spec : Prop :=
  ∀ n, P10109640482794885614.a n = A078163 (n + 1)

end A078163

/-! ## A078163.P16713779906772638396

`A091626((n+1)²)-(n+1)`
-/

namespace A078163.P16713779906772638396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091626 ((n + 1) ^ 2) - (n + 1 : ℤ)

end

end A078163.P16713779906772638396

namespace A078163

/-- `A091626((n+1)²)-(n+1)` -/
def P16713779906772638396.Spec : Prop :=
  ∀ n, P16713779906772638396.a n = A078163 (n + 1)

end A078163

/-!
# A078165: Numbers k such that phi(k) is a perfect 5th power.

The programs for A078165, there is no canonical definition to state claims against.
-/

/-! ## A078165.P1654879902161665178

`eq[A006530(A000010(n+1)), A049107(n+1)]+1`
-/

namespace A078165.P1654879902161665178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078165.P1654879902161665178

/-! ## A078165.P6941020927014088181

`eq[A053575(n+1), A130638(A000010(n+1)+1)]+1`
-/

namespace A078165.P6941020927014088181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078165.P6941020927014088181

/-!
# A078166: Numbers k such that phi(k) is a perfect sixth power.

The programs for A078166, the canonical program `A078166.P6438144693366126053` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078166 has offset 1).

The definition of A078166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078166.P6438144693366126053

`∩[A039770(n+1), A039771(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078166

/-- `∩[A039770(n+1), A039771(n+1)]` -/
def P6438144693366126053.Spec : Prop :=
  ∀ n, (P6438144693366126053.a n : ℤ) = A078166 (n + 1)

theorem P6438144693366126053.correct : P6438144693366126053.Spec := by
  intro n
  simp only [A078166, Nat.add_sub_cancel]

end A078166

/-! ## A078166.P11106082508435862646

`eq[gcd(7, C(2, n)), A062821(n+1)]+1`
-/

namespace A078166.P11106082508435862646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 (Nat.choose 2 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078166.P11106082508435862646

namespace A078166

/-- `eq[gcd(7, C(2, n)), A062821(n+1)]+1` -/
def P11106082508435862646.Spec : Prop :=
  ∀ n, (P11106082508435862646.a n : ℤ) = A078166 (n + 1)

end A078166

/-! ## A078166.P14856662106786778179

`lt[7%A000005(A000010(n+1)), 1]+1`
-/

namespace A078166.P14856662106786778179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A000005 (A000010 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078166.P14856662106786778179

namespace A078166

/-- `lt[7%A000005(A000010(n+1)), 1]+1` -/
def P14856662106786778179.Spec : Prop :=
  ∀ n, (P14856662106786778179.a n : ℤ) = A078166 (n + 1)

end A078166

/-! ## A078166.P1087324481777519621

`eq[A049100(n+1)², A000010(n+1)]+1`
-/

namespace A078166.P1087324481777519621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078166.P1087324481777519621

namespace A078166

/-- `eq[A049100(n+1)², A000010(n+1)]+1` -/
def P1087324481777519621.Spec : Prop :=
  ∀ n, (P1087324481777519621.a n : ℤ) = A078166 (n + 1)

end A078166

/-!
# A078167: Numbers k such that phi(k) is a perfect 7th power.

The programs for A078167, there is no canonical definition to state claims against.
-/

/-! ## A078167.P51816697851881495

`A020639(A103939(n))*A078166(n+1)`
-/

namespace A078167.P51816697851881495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103939 n).toNat * A078166 (n + 1)

end

end A078167.P51816697851881495

/-! ## A078167.P965026512897515140

`A020639(A320350(n))*A078166(n+1)`
-/

namespace A078167.P965026512897515140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A320350 n).toNat * A078166 (n + 1)

end

end A078167.P965026512897515140

/-! ## A078167.P4338884893350157726

`A020639(A006472(n+1))*A078166(n+1)`
-/

namespace A078167.P4338884893350157726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006472 (n + 1)).toNat * A078166 (n + 1)

end

end A078167.P4338884893350157726

/-!
# A078168: Numbers k such that phi(k) is a perfect 8th power.

The programs for A078168, there is no canonical definition to state claims against.
-/

/-! ## A078168.P11250337838498583159

`A078169(n+1)/A020639(A320350(n))`
-/

namespace A078168.P11250337838498583159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078169 (n + 1) : ℚ) / (A020639 (A320350 n).toNat : ℚ)

end

end A078168.P11250337838498583159

/-! ## A078168.P14967091997171960325

`A078169(n+1)/A020639(A006472(n+1))`
-/

namespace A078168.P14967091997171960325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078169 (n + 1) : ℚ) / (A020639 (A006472 (n + 1)).toNat : ℚ)

end

end A078168.P14967091997171960325

/-! ## A078168.P15923570698358787464

`A078169(n+1)/A001221(A078140(3*n+2))`
-/

namespace A078168.P15923570698358787464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078169 (n + 1) : ℚ) / (A001221 (A078140 (3 * n + 2)).toNat : ℚ)

end

end A078168.P15923570698358787464

/-!
# A078169: Numbers k such that phi(k) is a perfect 9th power.

The programs for A078169, there is no canonical definition to state claims against.
-/

/-! ## A078169.P16582350155766940404

`A020639(A320350(n))*A078168(n+1)`
-/

namespace A078169.P16582350155766940404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A320350 n).toNat * A078168 (n + 1)

end

end A078169.P16582350155766940404

/-! ## A078169.P266889159159874185

`A020639(A005119(n+1))*A078168(n+1)`
-/

namespace A078169.P266889159159874185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005119 (n + 1)).toNat * A078168 (n + 1)

end

end A078169.P266889159159874185

/-! ## A078169.P8629452180325186978

`A020639(A006472(n+1))*A078168(n+1)`
-/

namespace A078169.P8629452180325186978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006472 (n + 1)).toNat * A078168 (n + 1)

end

end A078169.P8629452180325186978

/-!
# A078170: Numbers k such that phi(k) is a perfect tenth power.

The programs for A078170, there is no canonical definition to state claims against.
-/

/-! ## A078170.P6225086253073708717

`∩[A039770(n+1), A078165(n+1)]`
-/

namespace A078170.P6225086253073708717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078170.P6225086253073708717

/-! ## A078170.P13232237035192636632

`A114573(n+1)/A334337(A078168(n+1))`
-/

namespace A078170.P13232237035192636632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114573 (n + 1) : ℚ) / (A334337 (A078168 (n + 1)).toNat : ℚ)

end

end A078170.P13232237035192636632

/-! ## A078170.P12354728342147318325

`A114573(n+1)/A020639(A103939(n))`
-/

namespace A078170.P12354728342147318325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114573 (n + 1) : ℚ) / (A020639 (A103939 n).toNat : ℚ)

end

end A078170.P12354728342147318325

/-!
# A078171: a(n) = A055086(A000040(n)).

The programs for A078171, the canonical program `A078171.P15097859120339114672` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078171 has offset 1).

The definition of A078171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078171.P15097859120339114672

`A055086(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078171

/-- `A055086(A000040(n+1))` -/
def P15097859120339114672.Spec : Prop :=
  ∀ n, P15097859120339114672.a n = A078171 (n + 1)

theorem P15097859120339114672.correct : P15097859120339114672.Spec := by
  intro n
  simp only [A078171, Nat.add_sub_cancel]

end A078171

/-! ## A078171.P5862013174035196446

`ceil(sqrt(4*p?[round(8*n/7)]+3))-2`
-/

namespace A078171.P5862013174035196446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℝ)⌉ - 2

end

end A078171.P5862013174035196446

namespace A078171

/-- `ceil(sqrt(4*p?[round(8*n/7)]+3))-2` -/
def P5862013174035196446.Spec : Prop :=
  ∀ n, P5862013174035196446.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P9623281463930029571

`floor(sqrt(A001749(n+1)+1))-1`
-/

namespace A078171.P9623281463930029571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001749 (n + 1) + 1) - 1

end

end A078171.P9623281463930029571

namespace A078171

/-- `floor(sqrt(A001749(n+1)+1))-1` -/
def P9623281463930029571.Spec : Prop :=
  ∀ n, P9623281463930029571.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P3612075454054528897

`floor(sqrt(4*A008578(n+2)+1))-1`
-/

namespace A078171.P3612075454054528897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (4 * A008578 (n + 2) + 1) - 1

end

end A078171.P3612075454054528897

namespace A078171

/-- `floor(sqrt(4*A008578(n+2)+1))-1` -/
def P3612075454054528897.Spec : Prop :=
  ∀ n, P3612075454054528897.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P2881445479308094586

`ceil(2*sqrt(p?[xor(1, n)]+1))-2`
-/

namespace A078171.P2881445479308094586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℝ)⌉ - 2

end

end A078171.P2881445479308094586

namespace A078171

/-- `ceil(2*sqrt(p?[xor(1, n)]+1))-2` -/
def P2881445479308094586.Spec : Prop :=
  ∀ n, P2881445479308094586.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P4961216721778891095

`ceil(2*sqrt(record[A006530(n+2)]+1))-2`
-/

namespace A078171.P4961216721778891095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℝ)⌉ - 2

end

end A078171.P4961216721778891095

namespace A078171

/-- `ceil(2*sqrt(record[A006530(n+2)]+1))-2` -/
def P4961216721778891095.Spec : Prop :=
  ∀ n, P4961216721778891095.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P196395790791104777

`ceil(sqrt(4*(record[A020639(n+2)]+1)))-2`
-/

namespace A078171.P196395790791104777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) : ℝ)⌉ - 2

end

end A078171.P196395790791104777

namespace A078171

/-- `ceil(sqrt(4*(record[A020639(n+2)]+1)))-2` -/
def P196395790791104777.Spec : Prop :=
  ∀ n, P196395790791104777.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P5760218360690151073

`ceil(record[sqrt(4*A000010(n+1)+8)])-2`
-/

namespace A078171.P5760218360690151073
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (4 * A000010 (n + 1) + 8 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ - 2

end

end A078171.P5760218360690151073

namespace A078171

/-- `ceil(record[sqrt(4*A000010(n+1)+8)])-2` -/
def P5760218360690151073.Spec : Prop :=
  ∀ n, P5760218360690151073.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P7457626402117391449

`A000040(n+1)-A028391(A112045(n+1))`
-/

namespace A078171.P7457626402117391449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A028391 (A112045 (n + 1)).toNat

end

end A078171.P7457626402117391449

namespace A078171

/-- `A000040(n+1)-A028391(A112045(n+1))` -/
def P7457626402117391449.Spec : Prop :=
  ∀ n, P7457626402117391449.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P17510898621356455057

`A055086(p?[xor(1, n)])`
-/

namespace A078171.P17510898621356455057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A078171.P17510898621356455057

namespace A078171

/-- `A055086(p?[xor(1, n)])` -/
def P17510898621356455057.Spec : Prop :=
  ∀ n, P17510898621356455057.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P4289437467344229464

`A027434(p?[round(8*n/7)]+1)-2`
-/

namespace A078171.P4289437467344229464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat - 2

end

end A078171.P4289437467344229464

namespace A078171

/-- `A027434(p?[round(8*n/7)]+1)-2` -/
def P4289437467344229464.Spec : Prop :=
  ∀ n, P4289437467344229464.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P16548044079506849923

`A055086(A039915(n+1))`
-/

namespace A078171.P16548044079506849923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A039915 (n + 1)).toNat

end

end A078171.P16548044079506849923

namespace A078171

/-- `A055086(A039915(n+1))` -/
def P16548044079506849923.Spec : Prop :=
  ∀ n, P16548044079506849923.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P13562531111771430570

`A293137(A350171(n+1))`
-/

namespace A078171.P13562531111771430570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A350171 (n + 1)).toNat

end

end A078171.P13562531111771430570

namespace A078171

/-- `A293137(A350171(n+1))` -/
def P13562531111771430570.Spec : Prop :=
  ∀ n, P13562531111771430570.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P5607105951692231658

`A055086(A008578(n+2))`
-/

namespace A078171.P5607105951692231658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A008578 (n + 2)).toNat

end

end A078171.P5607105951692231658

namespace A078171

/-- `A055086(A008578(n+2))` -/
def P5607105951692231658.Spec : Prop :=
  ∀ n, P5607105951692231658.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P17527429639105334764

`A055086(A068499(n+2))`
-/

namespace A078171.P17527429639105334764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A068499 (n + 2)).toNat

end

end A078171.P17527429639105334764

namespace A078171

/-- `A055086(A068499(n+2))` -/
def P17527429639105334764.Spec : Prop :=
  ∀ n, P17527429639105334764.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P2785479775638498666

`A055086(A182986(n+2))`
-/

namespace A078171.P2785479775638498666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A182986 (n + 2)).toNat

end

end A078171.P2785479775638498666

namespace A078171

/-- `A055086(A182986(n+2))` -/
def P2785479775638498666.Spec : Prop :=
  ∀ n, P2785479775638498666.a n = A078171 (n + 1)

end A078171

/-! ## A078171.P7943487472290894464

`A052146(A229067(n+1))`
-/

namespace A078171.P7943487472290894464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A229067 (n + 1)).toNat

end

end A078171.P7943487472290894464

namespace A078171

/-- `A052146(A229067(n+1))` -/
def P7943487472290894464.Spec : Prop :=
  ∀ n, P7943487472290894464.a n = A078171 (n + 1)

end A078171

/-!
# A078172: a(n) = A051201(A000040(n)).

The programs for A078172, the canonical program `A078172.P693633647040685283` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078172 has offset 1).

The definition of A078172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078172.P693633647040685283

`A051201(A000040(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078172

/-- `A051201(A000040(n+1))` -/
def P693633647040685283.Spec : Prop :=
  ∀ n, P693633647040685283.a n = A078172 (n + 1)

theorem P693633647040685283.correct : P693633647040685283.Spec := by
  intro n
  simp only [A078172, Nat.add_sub_cancel]

end A078172

/-! ## A078172.P4093431171449899052

`A051201(p?[comp[n²]])`
-/

namespace A078172.P4093431171449899052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A078172.P4093431171449899052

namespace A078172

/-- `A051201(p?[comp[n²]])` -/
def P4093431171449899052.Spec : Prop :=
  ∀ n, P4093431171449899052.a n = A078172 (n + 1)

end A078172

/-! ## A078172.P6930027184178089867

`A051201(abs(p?[round(8*n/7)]-n)+n)`
-/

namespace A078172.P6930027184178089867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)).toNat

end

end A078172.P6930027184178089867

namespace A078172

/-- `A051201(abs(p?[round(8*n/7)]-n)+n)` -/
def P6930027184178089867.Spec : Prop :=
  ∀ n, P6930027184178089867.a n = A078172 (n + 1)

end A078172

/-! ## A078172.P15307665866109615509

`A051201(Δ[A007504(n)])`
-/

namespace A078172.P15307665866109615509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (f1 (n + 1) - f1 n).toNat

end

end A078172.P15307665866109615509

namespace A078172

/-- `A051201(Δ[A007504(n)])` -/
def P15307665866109615509.Spec : Prop :=
  ∀ n, P15307665866109615509.a n = A078172 (n + 1)

end A078172

/-! ## A078172.P2207739059184048012

`A051201(A008578(n+2))`
-/

namespace A078172.P2207739059184048012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A008578 (n + 2)).toNat

end

end A078172.P2207739059184048012

namespace A078172

/-- `A051201(A008578(n+2))` -/
def P2207739059184048012.Spec : Prop :=
  ∀ n, P2207739059184048012.a n = A078172 (n + 1)

end A078172

/-! ## A078172.P7418031799434712109

`A051201(A182986(n+2))`
-/

namespace A078172.P7418031799434712109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A182986 (n + 2)).toNat

end

end A078172.P7418031799434712109

namespace A078172

/-- `A051201(A182986(n+2))` -/
def P7418031799434712109.Spec : Prop :=
  ∀ n, P7418031799434712109.a n = A078172 (n + 1)

end A078172

/-!
# A078174: Numbers with an integer arithmetic mean of distinct prime factors.

The programs for A078174, the canonical program `A078174.P17368214536566437184` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078174 has offset 1).

The definition of A078174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078174.P17368214536566437184

`eq[1, A323172(n+2)]+2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078174

/-- `eq[1, A323172(n+2)]+2` -/
def P17368214536566437184.Spec : Prop :=
  ∀ n, (P17368214536566437184.a n : ℤ) = A078174 (n + 1)

theorem P17368214536566437184.correct : P17368214536566437184.Spec := by
  intro n
  simp only [A078174, Nat.add_sub_cancel]

end A078174

/-! ## A078174.P15561317438419835310

`∪[A059046(n+1), A070005(n+1)]`
-/

namespace A078174.P15561317438419835310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078174.P15561317438419835310

namespace A078174

/-- `∪[A059046(n+1), A070005(n+1)]` -/
def P15561317438419835310.Spec : Prop :=
  ∀ n, (P15561317438419835310.a n : ℤ) = A078174 (n + 1)

end A078174

/-! ## A078174.P2405544737431624781

`∪[A070005(n+1), A246655(n+1)]`
-/

namespace A078174.P2405544737431624781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078174.P2405544737431624781

namespace A078174

/-- `∪[A070005(n+1), A246655(n+1)]` -/
def P2405544737431624781.Spec : Prop :=
  ∀ n, (P2405544737431624781.a n : ℤ) = A078174 (n + 1)

end A078174

/-! ## A078174.P14258266741884656174

`record[A014682(2*(n+2))/A323172(n+2)]`
-/

namespace A078174.P14258266741884656174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (2 * (n + 2)) : ℚ) / (A323172 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078174.P14258266741884656174

namespace A078174

/-- `record[A014682(2*(n+2))/A323172(n+2)]` -/
def P14258266741884656174.Spec : Prop :=
  ∀ n, P14258266741884656174.a n = (A078174 (n + 1) : ℚ)

end A078174

/-! ## A078174.P11913485082363892503

`eq[1, A247462(n+1)]+2`
-/

namespace A078174.P11913485082363892503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A078174.P11913485082363892503

namespace A078174

/-- `eq[1, A247462(n+1)]+2` -/
def P11913485082363892503.Spec : Prop :=
  ∀ n, (P11913485082363892503.a n : ℤ) = A078174 (n + 1)

end A078174

/-! ## A078174.P10226330263058211454

`record[A008611(3*(n+1))/A323172(n+2)]`
-/

namespace A078174.P10226330263058211454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * (n + 1)) : ℚ) / (A323172 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078174.P10226330263058211454

namespace A078174

/-- `record[A008611(3*(n+1))/A323172(n+2)]` -/
def P10226330263058211454.Spec : Prop :=
  ∀ n, P10226330263058211454.a n = (A078174 (n + 1) : ℚ)

end A078174

/-! ## A078174.P10245607290319683961

`∪[A070005(n+1), A174894(n+1)]`
-/

namespace A078174.P10245607290319683961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078174.P10245607290319683961

namespace A078174

/-- `∪[A070005(n+1), A174894(n+1)]` -/
def P10245607290319683961.Spec : Prop :=
  ∀ n, (P10245607290319683961.a n : ℤ) = A078174 (n + 1)

end A078174

/-! ## A078174.P11280210390251018674

`record[A269225(n)/A323172(A269225(n))]`
-/

namespace A078174.P11280210390251018674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269225 n : ℚ) / (A323172 (A269225 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078174.P11280210390251018674

namespace A078174

/-- `record[A269225(n)/A323172(A269225(n))]` -/
def P11280210390251018674.Spec : Prop :=
  ∀ n, P11280210390251018674.a n = (A078174 (n + 1) : ℚ)

end A078174

/-! ## A078174.P1018368280897506356

`∪[A070005(n+1), A371445(n+1)]`
-/

namespace A078174.P1018368280897506356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078174.P1018368280897506356

namespace A078174

/-- `∪[A070005(n+1), A371445(n+1)]` -/
def P1018368280897506356.Spec : Prop :=
  ∀ n, (P1018368280897506356.a n : ℤ) = A078174 (n + 1)

end A078174

/-! ## A078174.P8537965828854480009

`∪[A070005(n+1), A273200(n+1)]`
-/

namespace A078174.P8537965828854480009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078174.P8537965828854480009

namespace A078174

/-- `∪[A070005(n+1), A273200(n+1)]` -/
def P8537965828854480009.Spec : Prop :=
  ∀ n, (P8537965828854480009.a n : ℤ) = A078174 (n + 1)

end A078174

/-!
# A078175: Numbers with an integer arithmetic mean of all prime factors.

The programs for A078175, there is no canonical definition to state claims against.
-/

/-! ## A078175.P1995888793434762533

`∪[A000040(n+1), A078177(n+1)]`
-/

namespace A078175.P1995888793434762533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078175.P1995888793434762533

/-! ## A078175.P9339011159757215928

`∪[A000430(n+1), A078177(n+1)]`
-/

namespace A078175.P9339011159757215928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078175.P9339011159757215928

/-! ## A078175.P3795646498437909872

`∪[A009087(n+1), A078177(n+1)]`
-/

namespace A078175.P3795646498437909872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078175.P3795646498437909872

/-! ## A078175.P18106483150058846534

`∪[A050376(n+1), A078177(n+1)]`
-/

namespace A078175.P18106483150058846534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078175.P18106483150058846534

/-! ## A078175.P13530548188952142035

`∪[A072697(n+1), A078177(n+1)]`
-/

namespace A078175.P13530548188952142035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078175.P13530548188952142035

/-! ## A078175.P18355817571815293301

`∪[A246655(n+1), A078177(n+1)]`
-/

namespace A078175.P18355817571815293301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078175.P18355817571815293301

/-! ## A078175.P373721932060349746

`eq[1, A123529(n+2)]+2`
-/

namespace A078175.P373721932060349746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A078175.P373721932060349746

/-! ## A078175.P11493321110120273832

`record[root(A020725(n+1), A123529(n+2))]`
-/

namespace A078175.P11493321110120273832
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℝ) ^ (1 / (A123529 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078175.P11493321110120273832

/-! ## A078175.P9850351422598286744

`record[A008619(2*(n+1))/A123529(n+2)]`
-/

namespace A078175.P9850351422598286744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * (n + 1)) : ℚ) / (A123529 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078175.P9850351422598286744

/-! ## A078175.P15709586437140262378

`record[A052938(2*(n+1))/A123529(n+2)]`
-/

namespace A078175.P15709586437140262378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * (n + 1)) : ℚ) / (A123529 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078175.P15709586437140262378

/-! ## A078175.P7115118686548035319

`record[A233583(n+3)/A123529(n+2)]`
-/

namespace A078175.P7115118686548035319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 3) : ℚ) / (A123529 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078175.P7115118686548035319

/-!
# A078176: Numbers given by the Rule 225 Cellular Automaton.

The programs for A078176, the canonical program `A078176.P4331140993005809459` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078176 has offset 1).

The definition of A078176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078176.P4331140993005809459

`xor(2*and(2*a(n-1), a(n-1)), a(n-1))` with `a(0)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078176

/-- `xor(2*and(2*a(n-1), a(n-1)), a(n-1))` -/
def P4331140993005809459.Spec : Prop :=
  ∀ n, (P4331140993005809459.a n : ℤ) = A078176 (n + 1)

theorem P4331140993005809459.correct : P4331140993005809459.Spec := by
  intro n
  simp only [A078176, Nat.add_sub_cancel]

end A078176

/-! ## A078176.P8584619413718256657

`A000225(A005408(n+1))-A267843(n+1)`
-/

namespace A078176.P8584619413718256657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A005408 (n + 1)).toNat - A267843 (n + 1)

end

end A078176.P8584619413718256657

namespace A078176

/-- `A000225(A005408(n+1))-A267843(n+1)` -/
def P8584619413718256657.Spec : Prop :=
  ∀ n, P8584619413718256657.a n = A078176 (n + 1)

end A078176

/-! ## A078176.P13839426144442827689

`A126001(2*n+5)-A046951(A081091(n+1))`
-/

namespace A078176.P13839426144442827689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126001 (2 * n + 5) - A046951 (A081091 (n + 1)).toNat

end

end A078176.P13839426144442827689

namespace A078176

/-- `A126001(2*n+5)-A046951(A081091(n+1))` -/
def P13839426144442827689.Spec : Prop :=
  ∀ n, P13839426144442827689.a n = A078176 (n + 1)

end A078176

/-! ## A078176.P4266926477609941194

`A126001(2*n+5)-A267084(A000070(n+3))`
-/

namespace A078176.P4266926477609941194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126001 (2 * n + 5) - A267084 (A000070 (n + 3)).toNat

end

end A078176.P4266926477609941194

namespace A078176

/-- `A126001(2*n+5)-A267084(A000070(n+3))` -/
def P4266926477609941194.Spec : Prop :=
  ∀ n, P4266926477609941194.a n = A078176 (n + 1)

end A078176

/-! ## A078176.P3238157392003077891

`A126001(2*n+5)-A381440(A167677(3*n+1))`
-/

namespace A078176.P3238157392003077891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126001 (2 * n + 5) - A381440 (A167677 (3 * n + 1)).toNat

end

end A078176.P3238157392003077891

namespace A078176

/-- `A126001(2*n+5)-A381440(A167677(3*n+1))` -/
def P3238157392003077891.Spec : Prop :=
  ∀ n, P3238157392003077891.a n = A078176 (n + 1)

end A078176

/-!
# A078177: Composite numbers with an integer arithmetic mean of all prime factors.

The programs for A078177, there is no canonical definition to state claims against.
-/

/-! ## A078177.P10130327094445977983

`∪[A134335(n+1), A134344(n+1)]`
-/

namespace A078177.P10130327094445977983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078177.P10130327094445977983

/-! ## A078177.P2615406675744553969

`filter[A078175(n+1), A005171(#)]`
-/

namespace A078177.P2615406675744553969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A078177.P2615406675744553969

/-! ## A078177.P3060316990318261917

`filter[A078175(n+1), A066247(#)]`
-/

namespace A078177.P3060316990318261917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A078177.P3060316990318261917

/-! ## A078177.P3167289552299750397

`∩[A002808(n+1), A078175(n+1)]`
-/

namespace A078177.P3167289552299750397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078177.P3167289552299750397

/-! ## A078177.P12547722397407758140

`∩[A018252(n+1), A078175(n+1)]`
-/

namespace A078177.P12547722397407758140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078177.P12547722397407758140

/-! ## A078177.P4836699437270657726

`∩[A078175(n+1), A141468(n+1)]`
-/

namespace A078177.P4836699437270657726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078177.P4836699437270657726

/-! ## A078177.P6281820378794571569

`∩[A078175(n+1), A134376(n+1)]`
-/

namespace A078177.P6281820378794571569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078177.P6281820378794571569

/-!
# A078179: a(n) is the smallest prime of the form n^k + n - 1 with k >= 2.

The programs for A078179, there is no canonical definition to state claims against.
-/

/-! ## A078179.P9039563961988984564

`(n+2)^A078178(n+2)+n+2-1`
-/

namespace A078179.P9039563961988984564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A078178 (n + 2) : ℤ) + (n + 2 : ℚ) - 1

end

end A078179.P9039563961988984564

/-! ## A078179.P10482504401863675359

`(n+2)^A078178(n+2)+n+1`
-/

namespace A078179.P10482504401863675359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A078178 (n + 2) : ℤ) + (n + 1 : ℚ)

end

end A078179.P10482504401863675359

/-!
# A078181: a(n) = Sum_{d|n, d == 1 (mod 3)} d.

The programs for A078181, the canonical program `A078181.P9139865131225983786` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078181 has offset 1).

The definition of A078181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078181.P9139865131225983786

`∑{d}[n+1, #*A079978(#-1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078181

/-- `∑{d}[n+1, #*A079978(#-1)]` -/
def P9139865131225983786.Spec : Prop :=
  ∀ n, P9139865131225983786.a n = A078181 (n + 1)

theorem P9139865131225983786.correct : P9139865131225983786.Spec := by
  intro n
  simp only [A078181, Nat.add_sub_cancel]

end A078181

/-! ## A078181.P16482033844195410783

`A082051(A038502(n+1))`
-/

namespace A078181.P16482033844195410783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082051 (A038502 (n + 1)).toNat

end

end A078181.P16482033844195410783

namespace A078181

/-- `A082051(A038502(n+1))` -/
def P16482033844195410783.Spec : Prop :=
  ∀ n, P16482033844195410783.a n = A078181 (n + 1)

end A078181

/-! ## A078181.P15311774243386713629

`A326503(n+1)+A078182(n+1)`
-/

namespace A078181.P15311774243386713629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326503 (n + 1) + A078182 (n + 1)

end

end A078181.P15311774243386713629

namespace A078181

/-- `A326503(n+1)+A078182(n+1)` -/
def P15311774243386713629.Spec : Prop :=
  ∀ n, P15311774243386713629.a n = A078181 (n + 1)

theorem P15311774243386713629.correct : P15311774243386713629.Spec := by
  intro n
  simp only [A078181, Nat.add_sub_cancel, A078181.P15311774243386713629.a, A078181.P9139865131225983786.f1, A078181.P9139865131225983786.a, A078182, A078182.P257615860530487597.a, A079978, A079978.P10382542118278163374.a, A326503, A326503.P13743079522954983078.a, A046913, A046913.P8155784351199006177.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078181

/-! ## A078181.P15431215316309070599

`A000203(n+1)-A082050(n+1)`
-/

namespace A078181.P15431215316309070599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A082050 (n + 1)

end

end A078181.P15431215316309070599

namespace A078181

/-- `A000203(n+1)-A082050(n+1)` -/
def P15431215316309070599.Spec : Prop :=
  ∀ n, P15431215316309070599.a n = A078181 (n + 1)

end A078181

/-! ## A078181.P6040651118767520879

`A046913(n+1)-A078182(n+1)`
-/

namespace A078181.P6040651118767520879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) - A078182 (n + 1)

end

end A078181.P6040651118767520879

namespace A078181

/-- `A046913(n+1)-A078182(n+1)` -/
def P6040651118767520879.Spec : Prop :=
  ∀ n, P6040651118767520879.a n = A078181 (n + 1)

theorem P6040651118767520879.correct : P6040651118767520879.Spec := by
  intro n
  simp only [A078181, Nat.add_sub_cancel, A078181.P6040651118767520879.a, A078181.P9139865131225983786.f1, A078181.P9139865131225983786.a, A046913, A046913.P8155784351199006177.a, A078182, A078182.P257615860530487597.a, A079978, A079978.P10382542118278163374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078181

/-! ## A078181.P9445439087273442633

`A046913(n+1)+A082051(n+1)-A000203(n+1)`
-/

namespace A078181.P9445439087273442633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) + (A082051 (n + 1) - A000203 (n + 1))

end

end A078181.P9445439087273442633

namespace A078181

/-- `A046913(n+1)+A082051(n+1)-A000203(n+1)` -/
def P9445439087273442633.Spec : Prop :=
  ∀ n, P9445439087273442633.a n = A078181 (n + 1)

end A078181

/-! ## A078181.P17790363562099065110

`A050449(n+1)+A082052(n+1)-A082050(n+1)`
-/

namespace A078181.P17790363562099065110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A082050 (n + 1))

end

end A078181.P17790363562099065110

namespace A078181

/-- `A050449(n+1)+A082052(n+1)-A082050(n+1)` -/
def P17790363562099065110.Spec : Prop :=
  ∀ n, P17790363562099065110.a n = A078181 (n + 1)

end A078181

/-! ## A078181.P6720594893494019764

`A078182(n+1)+A082051(n+1)-A082050(n+1)`
-/

namespace A078181.P6720594893494019764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (n + 1) + (A082051 (n + 1) - A082050 (n + 1))

end

end A078181.P6720594893494019764

namespace A078181

/-- `A078182(n+1)+A082051(n+1)-A082050(n+1)` -/
def P6720594893494019764.Spec : Prop :=
  ∀ n, P6720594893494019764.a n = A078181 (n + 1)

end A078181

/-! ## A078181.P10560037169434830864

`A293897(3*(n+1))`
-/

namespace A078181.P10560037169434830864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293897 (3 * (n + 1))

end

end A078181.P10560037169434830864

namespace A078181

/-- `A293897(3*(n+1))` -/
def P10560037169434830864.Spec : Prop :=
  ∀ n, P10560037169434830864.a n = A078181 (n + 1)

end A078181

/-!
# A078182: a(n) = Sum_{d|n, d == 2 (mod 3)} d.

The programs for A078182, the canonical program `A078182.P257615860530487597` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078182 has offset 1).

The definition of A078182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078182.P11337663327562911218

`A082050((n+1)/3^val(n+1, 3))`
-/

namespace A078182.P11337663327562911218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A078182.P11337663327562911218

namespace A078182

/-- `A082050((n+1)/3^val(n+1, 3))` -/
def P11337663327562911218.Spec : Prop :=
  ∀ n, P11337663327562911218.a n = A078182 (n + 1)

end A078182

/-! ## A078182.P11541570674329352144

`A082050(A038502(n+1))`
-/

namespace A078182.P11541570674329352144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082050 (A038502 (n + 1)).toNat

end

end A078182.P11541570674329352144

namespace A078182

/-- `A082050(A038502(n+1))` -/
def P11541570674329352144.Spec : Prop :=
  ∀ n, P11541570674329352144.a n = A078182 (n + 1)

end A078182

/-! ## A078182.P1094329597503317069

`A000203(n+1)-A082051(n+1)`
-/

namespace A078182.P1094329597503317069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A082051 (n + 1)

end

end A078182.P1094329597503317069

namespace A078182

/-- `A000203(n+1)-A082051(n+1)` -/
def P1094329597503317069.Spec : Prop :=
  ∀ n, P1094329597503317069.a n = A078182 (n + 1)

end A078182

/-! ## A078182.P257615860530487597

`A046913(n+1)-A078181(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A078182

/-- `A046913(n+1)-A078181(n+1)` -/
def P257615860530487597.Spec : Prop :=
  ∀ n, P257615860530487597.a n = A078182 (n + 1)

theorem P257615860530487597.correct : P257615860530487597.Spec := by
  intro n
  simp only [A078182, Nat.add_sub_cancel]

end A078182

/-! ## A078182.P856919744882206974

`A078181(n+1)-A326503(n+1)`
-/

namespace A078182.P856919744882206974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) - A326503 (n + 1)

end

end A078182.P856919744882206974

namespace A078182

/-- `A078181(n+1)-A326503(n+1)` -/
def P856919744882206974.Spec : Prop :=
  ∀ n, P856919744882206974.a n = A078182 (n + 1)

theorem P856919744882206974.correct : P856919744882206974.Spec := by
  intro n
  simp only [A078182, Nat.add_sub_cancel, A078182.P856919744882206974.a, A078182.P257615860530487597.a, A046913, A046913.P8155784351199006177.a, A078181, A078181.P9139865131225983786.f1, A078181.P9139865131225983786.a, A326503, A326503.P13743079522954983078.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078182

/-! ## A078182.P17958493475738231044

`A082050(n+1)%A046913(n+1)`
-/

namespace A078182.P17958493475738231044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082050 (n + 1)) (A046913 (n + 1))

end

end A078182.P17958493475738231044

namespace A078182

/-- `A082050(n+1)%A046913(n+1)` -/
def P17958493475738231044.Spec : Prop :=
  ∀ n, P17958493475738231044.a n = A078182 (n + 1)

end A078182

/-! ## A078182.P1012097135561799520

`A046913(n+1)+A082050(n+1)-A000203(n+1)`
-/

namespace A078182.P1012097135561799520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) + (A082050 (n + 1) - A000203 (n + 1))

end

end A078182.P1012097135561799520

namespace A078182

/-- `A046913(n+1)+A082050(n+1)-A000203(n+1)` -/
def P1012097135561799520.Spec : Prop :=
  ∀ n, P1012097135561799520.a n = A078182 (n + 1)

end A078182

/-! ## A078182.P3849011898133238854

`A050449(n+1)+A082052(n+1)-A082051(n+1)`
-/

namespace A078182.P3849011898133238854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A082051 (n + 1))

end

end A078182.P3849011898133238854

namespace A078182

/-- `A050449(n+1)+A082052(n+1)-A082051(n+1)` -/
def P3849011898133238854.Spec : Prop :=
  ∀ n, P3849011898133238854.a n = A078182 (n + 1)

end A078182

/-! ## A078182.P8335813305825040998

`A078181(n+1)+A082050(n+1)-A082051(n+1)`
-/

namespace A078182.P8335813305825040998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) + (A082050 (n + 1) - A082051 (n + 1))

end

end A078182.P8335813305825040998

namespace A078182

/-- `A078181(n+1)+A082050(n+1)-A082051(n+1)` -/
def P8335813305825040998.Spec : Prop :=
  ∀ n, P8335813305825040998.a n = A078182 (n + 1)

end A078182

/-! ## A078182.P8220347028338856217

`A293898(3*(n+1))`
-/

namespace A078182.P8220347028338856217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293898 (3 * (n + 1))

end

end A078182.P8220347028338856217

namespace A078182

/-- `A293898(3*(n+1))` -/
def P8220347028338856217.Spec : Prop :=
  ∀ n, P8220347028338856217.a n = A078182 (n + 1)

end A078182

/-!
# A078183: Number of solutions to x^2 + y^2 + z^2 < n^2; number of lattice points inside a sphere of radius n.

The programs for A078183, there is no canonical definition to state claims against.
-/

/-! ## A078183.P13060651323535481151

`A000605(n)-A016725(n)`
-/

namespace A078183.P13060651323535481151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - A016725 n

end

end A078183.P13060651323535481151

/-! ## A078183.P2685444491687936568

`A053592(2*n)`
-/

namespace A078183.P2685444491687936568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n)

end

end A078183.P2685444491687936568

/-! ## A078183.P8249425645430703088

`record[A053592(and(n, n+1))]`
-/

namespace A078183.P8249425645430703088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P8249425645430703088

/-! ## A078183.P12604602364098311543

`record[A053592(n)/(-1)^n]`
-/

namespace A078183.P12604602364098311543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053592 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P12604602364098311543

/-! ## A078183.P17633863329952254818

`record[A053592(gcd(n, xor(1, n+1)))]`
-/

namespace A078183.P17633863329952254818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (Nat.gcd n (Nat.xor 1 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P17633863329952254818

/-! ## A078183.P11170381701187484876

`record[A053592(floor(n/(n%2+1)))]`
-/

namespace A078183.P11170381701187484876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P11170381701187484876

/-! ## A078183.P12815666719557093503

`record[A053592(A014681(n))]`
-/

namespace A078183.P12815666719557093503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P12815666719557093503

/-! ## A078183.P11619111232311382625

`record[A053592(A153733(n))]`
-/

namespace A078183.P11619111232311382625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P11619111232311382625

/-! ## A078183.P954126017327948070

`record[A053592(n)%A053591(n)]`
-/

namespace A078183.P954126017327948070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053592 n) (A053591 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P954126017327948070

/-! ## A078183.P13251925225233204237

`record[A053592(A006257(n+1)-1)]`
-/

namespace A078183.P13251925225233204237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A006257 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P13251925225233204237

/-! ## A078183.P7590827699731098967

`record[A053592(A006369(n+1)-1)]`
-/

namespace A078183.P7590827699731098967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A006369 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P7590827699731098967

/-! ## A078183.P3475996664880170082

`record[A053592(A026741(n+1)-1)]`
-/

namespace A078183.P3475996664880170082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A026741 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P3475996664880170082

/-! ## A078183.P11279630321167603689

`record[A053592(A106609(n+1)-1)]`
-/

namespace A078183.P11279630321167603689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A106609 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P11279630321167603689

/-! ## A078183.P12282510004709094984

`record[A053592(n-A007814(n+1))]`
-/

namespace A078183.P12282510004709094984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P12282510004709094984

/-! ## A078183.P4927821046796544585

`record[gcd(A007814(n+1), A053592(n))]`
-/

namespace A078183.P4927821046796544585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A053592 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078183.P4927821046796544585

/-! ## A078183.P15999777614504982596

`A053592(A004277(n))-C(2, n+2)`
-/

namespace A078183.P15999777614504982596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (A004277 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A078183.P15999777614504982596

/-! ## A078183.P8701269253035488280

`lcm(A008836(n+1), A053592(A005843(n)))`
-/

namespace A078183.P8701269253035488280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A053592 (A005843 n).toNat)

end

end A078183.P8701269253035488280

/-! ## A078183.P17296987736305377868

`A000605(n)-A005875(n²)`
-/

namespace A078183.P17296987736305377868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - A005875 (n ^ 2)

end

end A078183.P17296987736305377868

/-!
# A078184: Number of solutions to n^2 < x^2 + y^2 + z^2 < (n+1)^2; number of lattice points between spheres of radii n and n+1.

The programs for A078184, there is no canonical definition to state claims against.
-/

/-! ## A078184.P17814209542817003942

`A078183(n+1)-A000605(n)`
-/

namespace A078184.P17814209542817003942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 (n + 1) - A000605 n

end

end A078184.P17814209542817003942

/-! ## A078184.P15518965539845577512

`Δ[A078183(n)]-A016725(n)`
-/

namespace A078184.P15518965539845577512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016725 n

end

end A078184.P15518965539845577512

/-! ## A078184.P8048972698091897211

`Δ[A000605(n)]-A016725(n+1)`
-/

namespace A078184.P8048972698091897211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016725 (n + 1)

end

end A078184.P8048972698091897211

/-! ## A078184.P12355425448465372507

`A078183(n+1)-(A078183(n)+A016725(n))`
-/

namespace A078184.P12355425448465372507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 (n + 1) - (A078183 n + A016725 n)

end

end A078184.P12355425448465372507

/-! ## A078184.P17187601353900915386

`A000605(n+1)-(A016725(n+1)+A000605(n))`
-/

namespace A078184.P17187601353900915386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 (n + 1) - (A016725 (n + 1) + A000605 n)

end

end A078184.P17187601353900915386

/-! ## A078184.P9494997064289909707

`Δ[A000605(n)-∑[A016725(n)]]`
-/

namespace A078184.P9494997064289909707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078184.P9494997064289909707

/-! ## A078184.P18438125378976237713

`A078183(n+1)-A053591(2*n)`
-/

namespace A078184.P18438125378976237713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078183 (n + 1) - A053591 (2 * n)

end

end A078184.P18438125378976237713

/-! ## A078184.P14226607576025023087

`Δ[A053592(2*n)]-A016725(n)`
-/

namespace A078184.P14226607576025023087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016725 n

end

end A078184.P14226607576025023087

/-! ## A078184.P2292774827212334213

`A053592(2*(n+1))-A000605(n)`
-/

namespace A078184.P2292774827212334213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * (n + 1)) - A000605 n

end

end A078184.P2292774827212334213

/-! ## A078184.P8478533403925005530

`A053592(2*(n+1))-A053591(2*n)`
-/

namespace A078184.P8478533403925005530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * (n + 1)) - A053591 (2 * n)

end

end A078184.P8478533403925005530

/-! ## A078184.P16831060266002463486

`Δ[A053592(2*n)]-(A000605(n)-A053592(2*n))`
-/

namespace A078184.P16831060266002463486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A000605 n - A053592 (2 * n))

end

end A078184.P16831060266002463486

/-! ## A078184.P15865702650734673973

`Δ[A053592(2*n)]-(A053591(2*n)-A053592(2*n))`
-/

namespace A078184.P15865702650734673973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A053591 (2 * n) - A053592 (2 * n))

end

end A078184.P15865702650734673973

/-!
# A078185: 

The programs for A078185, there is no canonical definition to state claims against.
-/

/-! ## A078185.P14443140521134723846

`15^n²`
-/

namespace A078185.P14443140521134723846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ n ^ 2

end

end A078185.P14443140521134723846

/-!
# A078186: 

The programs for A078186, there is no canonical definition to state claims against.
-/

/-! ## A078186.P4859264166080902953

`16^n²`
-/

namespace A078186.P4859264166080902953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ n ^ 2

end

end A078186.P4859264166080902953

/-!
# A078187: Smaller of the two successive squares which differ in the use of only one digit.

The programs for A078187, there is no canonical definition to state claims against.
-/

/-! ## A078187.P12552924363078213165

`∑[A002376(A159596(n))]²`
-/

namespace A078187.P12552924363078213165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A159596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A078187.P12552924363078213165

/-! ## A078187.P3170980371936020328

`(∑[A002376(A263778(n+1))]-n)²`
-/

namespace A078187.P3170980371936020328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A263778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ 2

end

end A078187.P3170980371936020328

/-!
# A078188: a(1) = 1; for n > 1 take the digits of a(n-1) one after the other and remove one occurrence of this digit from the digits of m = k*n (k > 0) if possible; a(n) is the smallest multiple m of n which has the least number of remaining digits (counted with multiplicity).

The programs for A078188, there is no canonical definition to state claims against.
-/

/-! ## A078188.P8755598137322344981

`A122425(lcm(n+1, A001104(n+1)))`
-/

namespace A078188.P8755598137322344981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (Int.lcm (n + 1 : ℤ) (A001104 (n + 1)))

end

end A078188.P8755598137322344981

/-! ## A078188.P17403332553150528863

`A122425(lcm(A001104(n+1), A077168(n)))`
-/

namespace A078188.P17403332553150528863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (Int.lcm (A001104 (n + 1)) (A077168 n))

end

end A078188.P17403332553150528863

/-! ## A078188.P11854893972468009899

`(n+1)*dr(C(n, 8)!)`
-/

namespace A078188.P11854893972468009899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.digitalRoot (Nat.factorial (Nat.choose n 8) : ℤ)

end

end A078188.P11854893972468009899

/-! ## A078188.P2605440253597528534

`lt[A055120(n+1), 12]+1`
-/

namespace A078188.P2605440253597528534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078188.P2605440253597528534

/-! ## A078188.P3803803806891757689

`∑[A131107(∑[A002988(n)])]`
-/

namespace A078188.P3803803806891757689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131107 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078188.P3803803806891757689

/-!
# A078189: Array read by rows in which the n-th row contains the multiples of n in increasing order using all the digits of first n numbers.

The programs for A078189, there is no canonical definition to state claims against.
-/

/-! ## A078189.P6452541498210001951

`∩[A030299(n+1), A071204(n+1)]`
-/

namespace A078189.P6452541498210001951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078189.P6452541498210001951

/-! ## A078189.P296279694350205392

`∩[A030299(n+1), A098952(n+1)]`
-/

namespace A078189.P296279694350205392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078189.P296279694350205392

/-! ## A078189.P6458394094674361915

`∩[A030299(n+1), A240163(n+1)]`
-/

namespace A078189.P6458394094674361915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078189.P6458394094674361915

/-! ## A078189.P9233059133099923373

`filter[A030299(n+1), A316343(#)]`
-/

namespace A078189.P9233059133099923373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316343 (f1 j).toNat = 1) n)

end

end A078189.P9233059133099923373

/-!
# A078190: Primes of the form A004154(n) - 1.

The programs for A078190, there is no canonical definition to state claims against.
-/

/-! ## A078190.P17625889990688617210

`A004154(A078305(n+1))-1`
-/

namespace A078190.P17625889990688617210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 (A078305 (n + 1)).toNat - 1

end

end A078190.P17625889990688617210

/-! ## A078190.P16557414050566571539

`A260196(2*n+3)+A004154(A078305(n+1))`
-/

namespace A078190.P16557414050566571539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * n + 3) + A004154 (A078305 (n + 1)).toNat

end

end A078190.P16557414050566571539

/-!
# A078191: a(n) = concatenation of n n times divided by n.

The programs for A078191, there is no canonical definition to state claims against.
-/

/-! ## A078191.P16994070180709717859

`A000461(n+1)/(n+1)`
-/

namespace A078191.P16994070180709717859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000461 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078191.P16994070180709717859

/-! ## A078191.P3770459269572373457

`A083452(n+1)+(n+1)^n`
-/

namespace A078191.P3770459269572373457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083452 (n + 1) + ((n + 1) ^ n : ℤ)

end

end A078191.P3770459269572373457

/-! ## A078191.P6041569612705777640

`(A083451(n+1)+A000312(n+1))/(n+1)`
-/

namespace A078191.P6041569612705777640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083451 (n + 1) + A000312 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078191.P6041569612705777640

/-!
# A078192: a(n) = floor(concatenation of n down to 1 divided by n).

The programs for A078192, there is no canonical definition to state claims against.
-/

/-! ## A078192.P16445094205956096679

`floor(A000422(n+1)/(n+1))`
-/

namespace A078192.P16445094205956096679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000422 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A078192.P16445094205956096679

/-! ## A078192.P3029767459412632160

`floor((A083453(n+1)+(n+1)^(n+1))/(n+1))`
-/

namespace A078192.P3029767459412632160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083453 (n + 1) + ((n + 1) ^ (n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A078192.P3029767459412632160

/-! ## A078192.P9534949945921577234

`floor((A019566(n+1)+A007908(n+1))/(n+1))`
-/

namespace A078192.P9534949945921577234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019566 (n + 1) + A007908 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A078192.P9534949945921577234

/-! ## A078192.P514289647921781326

`floor((A252043(A058183(n+1))+A019566(n+1))/(n+1))`
-/

namespace A078192.P514289647921781326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A252043 (A058183 (n + 1)).toNat + A019566 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A078192.P514289647921781326

/-! ## A078192.P7347218526820049786

`floor((A019566(n+1)+record[A322762(n+1)])/(n+1))`
-/

namespace A078192.P7347218526820049786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019566 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A078192.P7347218526820049786

/-!
# A078193: In the following triangle the n-th row contains n n-digit (or (n-1)-digit) numbers whose concatenation (with a 0 prefixed for (n-1)-digit numbers) gives a substring of the cyclic concatenation of 1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,...: 1; 12 34; 123 456 789; 1234 5678 9012 3456; 12345 67890 12345 67890 12345; ... Sequence contains the final terms of rows.

The programs for A078193, there is no canonical definition to state claims against.
-/

/-! ## A078193.P14934857228982545576

`A078194(∑[n+1])`
-/

namespace A078193.P14934857228982545576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078194 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078193.P14934857228982545576

/-! ## A078193.P6660075949511813616

`record[A078194(A286158(n+1))]`
-/

namespace A078193.P6660075949511813616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078194 (A286158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078193.P6660075949511813616

/-! ## A078193.P14118470135872739262

`record[gcd(A055830(n), A078194(n+1))]`
-/

namespace A078193.P14118470135872739262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055830 n) (A078194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078193.P14118470135872739262

/-! ## A078193.P14442935600999635936

`record[A078194(n+1)*A132013(n)]`
-/

namespace A078193.P14442935600999635936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078194 (n + 1) * A132013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078193.P14442935600999635936

/-! ## A078193.P4229541481964552369

`record[A078194(n+1)*A112295(n)]`
-/

namespace A078193.P4229541481964552369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078194 (n + 1) * A112295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078193.P4229541481964552369

/-!
# A078194: In the following triangle the n-th row contains n n-digit (or (n-1)-digit) numbers whose concatenation (with a 0 prefixed for (n-1)-digit numbers) gives a substring of the cyclic concatenation of 1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,...: 1; 12 34; 123 456 789; 1234 5678 9012 3456; 12345 67890 12345 67890 12345; ... Sequence contains the triangle by rows.

The programs for A078194, there is no canonical definition to state claims against.
-/

/-! ## A078194.P871328625386378678

`eq[A193592(A059717(n)), A229186(n)]`
-/

namespace A078194.P871328625386378678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A059717 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078194.P871328625386378678

/-!
# A078197: Position of the start of the first occurrence of n after the decimal point in e = 2.71828182845904523536...

The programs for A078197, there is no canonical definition to state claims against.
-/

/-! ## A078197.P2001175234148549340

`A281092(n)+A175362(A020701(n))`
-/

namespace A078197.P2001175234148549340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281092 n + A175362 (A020701 n).toNat

end

end A078197.P2001175234148549340

/-! ## A078197.P14142277875858468858

`A175362(A020701(n))+A088576(n)-1`
-/

namespace A078197.P14142277875858468858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 (A020701 n).toNat + (A088576 n - 1)

end

end A078197.P14142277875858468858

/-! ## A078197.P12975696710864031380

`A175362(A020701(n))+A023443(A088576(n))`
-/

namespace A078197.P12975696710864031380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 (A020701 n).toNat + A023443 (A088576 n).toNat

end

end A078197.P12975696710864031380

/-! ## A078197.P215207208173237389

`A175362(A020701(n))+A023444(A088576(n)+1)`
-/

namespace A078197.P215207208173237389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 (A020701 n).toNat + A023444 (A088576 n + 1).toNat

end

end A078197.P215207208173237389

/-! ## A078197.P16728554642554318923

`A289207(A088576(n)+1)+A175362(A020701(n))`
-/

namespace A078197.P16728554642554318923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A088576 n + 1).toNat + A175362 (A020701 n).toNat

end

end A078197.P16728554642554318923

/-!
# A078198: Numbers that cannot be partitioned into distinct powers of 3, 5 and 7, all with positive exponents.

The programs for A078198, there is no canonical definition to state claims against.
-/

/-! ## A078198.P17595791197020268233

`eq[0, A174656(n+1)]+1`
-/

namespace A078198.P17595791197020268233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078198.P17595791197020268233

/-! ## A078198.P6409264076860442259

`record[gcd(A000027(n+1), A174656(n+1))]`
-/

namespace A078198.P6409264076860442259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A174656 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P6409264076860442259

/-! ## A078198.P13463347447699287220

`record[gcd(n, A174656(A028310(n)+1))+1]`
-/

namespace A078198.P13463347447699287220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A174656 (A028310 n + 1).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P13463347447699287220

/-! ## A078198.P14258687216668302535

`record[n+1-A000040(n+1)*A174656(n+1)]`
-/

namespace A078198.P14258687216668302535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A174656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P14258687216668302535

/-! ## A078198.P6074090723772675701

`record[1-A000203(n+1)*A174656(n+1)+n]`
-/

namespace A078198.P6074090723772675701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (n + 1) * A174656 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P6074090723772675701

/-! ## A078198.P11594577409155301542

`record[n+1-A002384(n+1)*A174656(n+1)]`
-/

namespace A078198.P11594577409155301542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002384 (n + 1) * A174656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P11594577409155301542

/-! ## A078198.P13836394403119886518

`record[n+1-A068811(n+1)*A174656(n+1)]`
-/

namespace A078198.P13836394403119886518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A068811 (n + 1) * A174656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P13836394403119886518

/-! ## A078198.P641803622510121974

`record[n+1-(A001222(n+1)+n)*A174656(n+1)]`
-/

namespace A078198.P641803622510121974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A001222 (n + 1) + (n : ℤ)) * A174656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P641803622510121974

/-! ## A078198.P1006791492206140617

`record[n+1-n*A001221(n+2)*A174656(n+1)]`
-/

namespace A078198.P1006791492206140617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (n : ℤ) * A001221 (n + 2) * A174656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078198.P1006791492206140617

/-! ## A078198.P16256353731780945888

`eq[A000007(n), A174656(A028310(n))]`
-/

namespace A078198.P16256353731780945888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174656 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078198.P16256353731780945888

/-!
# A078199: Smallest multiple of n (for n >= 100) in which frequency of each occurring digit is the same.

The programs for A078199, there is no canonical definition to state claims against.
-/

/-! ## A078199.P14894409540502659150

`((20/2)²+n)*A078200(n)`
-/

namespace A078199.P14894409540502659150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((20 : ℚ) / 2) ^ 2 + (n : ℚ)) * (A078200 (n + 100) : ℚ)

end

end A078199.P14894409540502659150

/-! ## A078199.P12071157246703850847

`A078200(n)*A184985(1-A001478(n+99))`
-/

namespace A078199.P12071157246703850847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078200 (n + 100) * A184985 (1 - A001478 (n + 99)).toNat

end

end A078199.P12071157246703850847

