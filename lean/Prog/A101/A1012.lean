import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A101200: Number of partitions of n with rank 3 (the rank of a partition is the largest part minus the number of parts).

The programs for A101200, there is no canonical definition to state claims against.
-/

/-! ## A101200.P12742843929016282686

`A363230(n+1)-A363231(n+1)`
-/

namespace A101200.P12742843929016282686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363230 (n + 1) - A363231 (n + 1)

end

end A101200.P12742843929016282686

/-! ## A101200.P8572226611053218600

`A064173(n+3)-A064174(n+2)`
-/

namespace A101200.P8572226611053218600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 3) - A064174 (n + 2)

end

end A101200.P8572226611053218600

/-! ## A101200.P15628102597387143839

`Δ[A064173(n+2)]-A047993(n+2)`
-/

namespace A101200.P15628102597387143839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047993 (n + 2)

end

end A101200.P15628102597387143839

/-! ## A101200.P424608140589365212

`Δ[A064174(n+2)]-A047993(n+3)`
-/

namespace A101200.P424608140589365212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047993 (n + 3)

end

end A101200.P424608140589365212

/-! ## A101200.P18087344775679929940

`A064173(A000027(n+1)+2)%A064174(n+2)`
-/

namespace A101200.P18087344775679929940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064173 (A000027 (n + 1) + 2).toNat) (A064174 (n + 2))

end

end A101200.P18087344775679929940

/-! ## A101200.P9066507526553775674

`A000041(n+1)-(A363231(n+1)+A064174(n+2))`
-/

namespace A101200.P9066507526553775674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A363231 (n + 1) + A064174 (n + 2))

end

end A101200.P9066507526553775674

/-! ## A101200.P5080192863598435340

`A064173(n+3)-(A064173(n+2)+A047993(n+2))`
-/

namespace A101200.P5080192863598435340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 3) - (A064173 (n + 2) + A047993 (n + 2))

end

end A101200.P5080192863598435340

/-! ## A101200.P4129436731619031913

`A063995(A027689(n))%A000786(n)`
-/

namespace A101200.P4129436731619031913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063995 (A027689 n).toNat) (A000786 n)

end

end A101200.P4129436731619031913

/-! ## A101200.P3061417433523898859

`A105806(A145018(n+1))%A000786(n)`
-/

namespace A101200.P3061417433523898859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105806 (A145018 (n + 1)).toNat) (A000786 n)

end

end A101200.P3061417433523898859

/-!
# A101201: Maximal number of kings in the toroidal king's graph on an n X n board such that each king is attacking no more than four other kings.

The programs for A101201, there is no canonical definition to state claims against.
-/

/-! ## A101201.P15380373429881586135

`∑[A318994(∑[A174124(n)])]`
-/

namespace A101201.P15380373429881586135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101201.P15380373429881586135

/-! ## A101201.P273560705662391487

`∑[A318994(∑[A174345(n+1)])]`
-/

namespace A101201.P273560705662391487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101201.P273560705662391487

/-! ## A101201.P7463802448198250026

`∑[A130371(n)+A038570(n)]+n`
-/

namespace A101201.P7463802448198250026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 n + A038570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A101201.P7463802448198250026

/-! ## A101201.P9029449535332658075

`A327141(n+1)-A337586(n+1)`
-/

namespace A101201.P9029449535332658075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327141 (n + 1) - A337586 (n + 1)

end

end A101201.P9029449535332658075

/-! ## A101201.P12009441719244338024

`A327141(n+1)-A381635(n+1)`
-/

namespace A101201.P12009441719244338024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327141 (n + 1) - A381635 (n + 1)

end

end A101201.P12009441719244338024

/-!
# A101202: Multiples of 142857.

The programs for A101202, there is no canonical definition to state claims against.
-/

/-! ## A101202.P8173775105553516257

`(n+1)*A175694(A007318(floor(root(2, n+1))))`
-/

namespace A101202.P8173775105553516257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175694 (A007318 ⌊(2 : ℝ) ^ (1 / (n + 1 : ℝ))⌋.toNat).toNat

end

end A101202.P8173775105553516257

/-!
# A101203: a(n) = sum of nonprimes <= n.

The programs for A101203, the canonical program `A101203.P14556017355783921895` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101203 has offset 0).

The definition of A101203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101203.P15236496556731831737

`∑[n%A007918(n)]`
-/

namespace A101203.P15236496556731831737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P15236496556731831737

namespace A101203

/-- `∑[n%A007918(n)]` -/
def P15236496556731831737.Spec : Prop :=
  ∀ n, P15236496556731831737.a n = A101203 n

end A101203

/-! ## A101203.P13424971795662574775

`∑[n*char[A103164(n)]]`
-/

namespace A101203.P13424971795662574775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P13424971795662574775

namespace A101203

/-- `∑[n*char[A103164(n)]]` -/
def P13424971795662574775.Spec : Prop :=
  ∀ n, (P13424971795662574775.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P2152853769865049851

`∑[n*char[A282462(n)]]`
-/

namespace A101203.P2152853769865049851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P2152853769865049851

namespace A101203

/-- `∑[n*char[A282462(n)]]` -/
def P2152853769865049851.Spec : Prop :=
  ∀ n, (P2152853769865049851.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P426474658181632231

`∑[C(n, A055671(n)+1)]`
-/

namespace A101203.P426474658181632231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A055671 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P426474658181632231

namespace A101203

/-- `∑[C(n, A055671(n)+1)]` -/
def P426474658181632231.Spec : Prop :=
  ∀ n, (P426474658181632231.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P14556017355783921895

`A191558(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101203

/-- `A191558(n)+a(n-1)` -/
def P14556017355783921895.Spec : Prop :=
  ∀ n, P14556017355783921895.a n = A101203 n

theorem P14556017355783921895.correct : P14556017355783921895.Spec := by
  intro n
  simp only [A101203]

end A101203

/-! ## A101203.P2618742864691687704

`∑[n*char[A018252(n+1)]]`
-/

namespace A101203.P2618742864691687704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P2618742864691687704

namespace A101203

/-- `∑[n*char[A018252(n+1)]]` -/
def P2618742864691687704.Spec : Prop :=
  ∀ n, (P2618742864691687704.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P18295038504293716326

`∑[n*char[A141468(n+1)]]`
-/

namespace A101203.P18295038504293716326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P18295038504293716326

namespace A101203

/-- `∑[n*char[A141468(n+1)]]` -/
def P18295038504293716326.Spec : Prop :=
  ∀ n, (P18295038504293716326.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P305823122557059558

`∑[n*char[A143545(n+1)]]`
-/

namespace A101203.P305823122557059558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P305823122557059558

namespace A101203

/-- `∑[n*char[A143545(n+1)]]` -/
def P305823122557059558.Spec : Prop :=
  ∀ n, (P305823122557059558.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P7785671917902816447

`∑[n*char[A191558(n+1)]]`
-/

namespace A101203.P7785671917902816447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P7785671917902816447

namespace A101203

/-- `∑[n*char[A191558(n+1)]]` -/
def P7785671917902816447.Spec : Prop :=
  ∀ n, (P7785671917902816447.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P4433663494904979948

`∑[n*char[A240024(n+1)]]`
-/

namespace A101203.P4433663494904979948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240024 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P4433663494904979948

namespace A101203

/-- `∑[n*char[A240024(n+1)]]` -/
def P4433663494904979948.Spec : Prop :=
  ∀ n, (P4433663494904979948.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P5348505004782925408

`∑[n*char[A253073(n+1)]]`
-/

namespace A101203.P5348505004782925408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253073 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P5348505004782925408

namespace A101203

/-- `∑[n*char[A253073(n+1)]]` -/
def P5348505004782925408.Spec : Prop :=
  ∀ n, (P5348505004782925408.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P16603253141672266710

`∑[n*char[comp[A000040(n+1)]]]`
-/

namespace A101203.P16603253141672266710
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P16603253141672266710

namespace A101203

/-- `∑[n*char[comp[A000040(n+1)]]]` -/
def P16603253141672266710.Spec : Prop :=
  ∀ n, (P16603253141672266710.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P16871673478021596380

`∑[n*char[comp[A006530(n+2)]]]`
-/

namespace A101203.P16871673478021596380
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P16871673478021596380

namespace A101203

/-- `∑[n*char[comp[A006530(n+2)]]]` -/
def P16871673478021596380.Spec : Prop :=
  ∀ n, (P16871673478021596380.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P7090941313396222748

`a(n-1)+n-A061397(n)` with `a(0)=0`
-/

namespace A101203.P7090941313396222748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A061397 n)

end

end A101203.P7090941313396222748

namespace A101203

/-- `a(n-1)+n-A061397(n)` -/
def P7090941313396222748.Spec : Prop :=
  ∀ n, P7090941313396222748.a n = A101203 n

end A101203

/-! ## A101203.P9880256761673709177

`a(n-1)+n*A005171(n)` with `a(0)=0`
-/

namespace A101203.P9880256761673709177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A005171 n

end

end A101203.P9880256761673709177

namespace A101203

/-- `a(n-1)+n*A005171(n)` -/
def P9880256761673709177.Spec : Prop :=
  ∀ n, P9880256761673709177.a n = A101203 n

end A101203

/-! ## A101203.P11589207744776407369

`∑[n*char[(n+1)*A014963(n+1)]]`
-/

namespace A101203.P11589207744776407369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014963 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P11589207744776407369

namespace A101203

/-- `∑[n*char[(n+1)*A014963(n+1)]]` -/
def P11589207744776407369.Spec : Prop :=
  ∀ n, (P11589207744776407369.a n : ℤ) = A101203 n

end A101203

/-! ## A101203.P17550345302224837685

`∑[n*A005171(A028310(n))]`
-/

namespace A101203.P17550345302224837685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005171 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101203.P17550345302224837685

namespace A101203

/-- `∑[n*A005171(A028310(n))]` -/
def P17550345302224837685.Spec : Prop :=
  ∀ n, P17550345302224837685.a n = A101203 n

end A101203

/-! ## A101203.P18339922256250209795

`(A051352(n)+A000217(n))/2`
-/

namespace A101203.P18339922256250209795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051352 n + A000217 n : ℚ) / 2

end

end A101203.P18339922256250209795

namespace A101203

/-- `(A051352(n)+A000217(n))/2` -/
def P18339922256250209795.Spec : Prop :=
  ∀ n, P18339922256250209795.a n = (A101203 n : ℚ)

end A101203

/-! ## A101203.P11221333341999909947

`A051349(∑[char[A018252(n+1)]])`
-/

namespace A101203.P11221333341999909947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101203.P11221333341999909947

namespace A101203

/-- `A051349(∑[char[A018252(n+1)]])` -/
def P11221333341999909947.Spec : Prop :=
  ∀ n, P11221333341999909947.a n = A101203 n

end A101203

/-! ## A101203.P4330131244212090686

`A051349(∑[char[A141468(n+2)]])`
-/

namespace A101203.P4330131244212090686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101203.P4330131244212090686

namespace A101203

/-- `A051349(∑[char[A141468(n+2)]])` -/
def P4330131244212090686.Spec : Prop :=
  ∀ n, P4330131244212090686.a n = A101203 n

end A101203

/-!
# A101204: Triangle read by rows: T(n,k) = number of planar trivalent (or cubic) loopless multigraphs with 2n nodes and exactly k double bonds, for 0 <= k <= n.

The programs for A101204, there is no canonical definition to state claims against.
-/

/-! ## A101204.P15372020365307742124

`A101080(A000193(n+3)*A035469(n+1))`
-/

namespace A101204.P15372020365307742124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (A000193 (n + 3) * A035469 (n + 1)).toNat

end

end A101204.P15372020365307742124

/-! ## A101204.P9502066410901719661

`abs(1-A023416(A283374(n)))`
-/

namespace A101204.P9502066410901719661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A023416 (A283374 n).toNat|

end

end A101204.P9502066410901719661

/-! ## A101204.P8393383579286576444

`∑[A001221(A104023(3*n+2))]-A190860(n+1)`
-/

namespace A101204.P8393383579286576444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A104023 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A190860 (n + 1)

end

end A101204.P8393383579286576444

/-! ## A101204.P11114376964527633349

`gcd(A000931(n), A121373(A061944(n+1)))`
-/

namespace A101204.P11114376964527633349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000931 n) (A121373 (A061944 (n + 1)).toNat)

end

end A101204.P11114376964527633349

/-!
# A101207: For each prime power n, a(n) is the number of positive integers that have n as their greatest prime power.

The programs for A101207, the canonical program `A101207.P6474118925145984398` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101207 has offset 1).

The definition of A101207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101207.P13022576828805892828

`A010055(n+1)*A305215(A065515(n+1))`
-/

namespace A101207.P13022576828805892828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A305215 (A065515 (n + 1)).toNat

end

end A101207.P13022576828805892828

namespace A101207

/-- `A010055(n+1)*A305215(A065515(n+1))` -/
def P13022576828805892828.Spec : Prop :=
  ∀ n, P13022576828805892828.a n = A101207 (n + 1)

end A101207

/-! ## A101207.P13201489676060398914

`A010055(n+1)*A305215(∑[A010055(n+1)])`
-/

namespace A101207.P13201489676060398914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A305215 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101207.P13201489676060398914

namespace A101207

/-- `A010055(n+1)*A305215(∑[A010055(n+1)])` -/
def P13201489676060398914.Spec : Prop :=
  ∀ n, P13201489676060398914.a n = A101207 (n + 1)

end A101207

/-! ## A101207.P15448893586901417168

`Δ[A336816(A000015(n+1))]`
-/

namespace A101207.P15448893586901417168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (A000015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101207.P15448893586901417168

namespace A101207

/-- `Δ[A336816(A000015(n+1))]` -/
def P15448893586901417168.Spec : Prop :=
  ∀ n, P15448893586901417168.a n = A101207 (n + 1)

end A101207

/-! ## A101207.P6474118925145984398

`Δ[A056793(A028310(n))]^A001221(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101207

/-- `Δ[A056793(A028310(n))]^A001221(n+1)` -/
def P6474118925145984398.Spec : Prop :=
  ∀ n, P6474118925145984398.a n = (A101207 (n + 1) : ℚ)

end A101207

/-! ## A101207.P14666974998779646504

`A010055(n+1)*A190940(n+1)`
-/

namespace A101207.P14666974998779646504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A190940 (n + 1)

end

end A101207.P14666974998779646504

namespace A101207

/-- `A010055(n+1)*A190940(n+1)` -/
def P14666974998779646504.Spec : Prop :=
  ∀ n, P14666974998779646504.a n = A101207 (n + 1)

end A101207

/-!
# A101208: Smallest odd prime p such that n = (p - 1) / ord_p(2).

The programs for A101208, there is no canonical definition to state claims against.
-/

/-! ## A101208.P7745797535452675285

`A347772(∑[n]+2)`
-/

namespace A101208.P7745797535452675285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347772 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A101208.P7745797535452675285

/-! ## A101208.P5863242126575117188

`p?[A010054(n)*A347772(n+2)]`
-/

namespace A101208.P5863242126575117188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A347772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101208.P5863242126575117188

/-! ## A101208.P3536506492289959595

`p?[A059268(n)*A347772(n+2)]`
-/

namespace A101208.P3536506492289959595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A347772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101208.P3536506492289959595

/-! ## A101208.P12403160656404715764

`p?[A193588(n)*A347772(n+2)]`
-/

namespace A101208.P12403160656404715764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n * A347772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101208.P12403160656404715764

/-! ## A101208.P4717877661269037305

`p?[A209435(n)*A347772(n+2)]`
-/

namespace A101208.P4717877661269037305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 n * A347772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101208.P4717877661269037305

/-!
# A101211: Triangle read by rows: n-th row is length of run of leftmost 1's, followed by length of run of 0's, followed by length of run of 1's, etc., in the binary representation of n.

The programs for A101211, there is no canonical definition to state claims against.
-/

/-! ## A101211.P17660942775111934553

`A227736(A227741(n+1))`
-/

namespace A101211.P17660942775111934553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227736 (A227741 (n + 1)).toNat

end

end A101211.P17660942775111934553

/-! ## A101211.P9120136440544472014

`gcd(A000120(n), A037861(A179628(n)))`
-/

namespace A101211.P9120136440544472014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 n) (A037861 (A179628 n).toNat)

end

end A101211.P9120136440544472014

/-!
# A101212: a(1) = 1; for n>=2, a(n) = A001222(n)th positive integer not yet in the sequence.

The programs for A101212, there is no canonical definition to state claims against.
-/

/-! ## A101212.P13846964864298141806

`A102453(A102454(n+1))`
-/

namespace A101212.P13846964864298141806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102453 (A102454 (n + 1)).toNat

end

end A101212.P13846964864298141806

/-! ## A101212.P11009670715884825773

`xor(n+1, (A276625(n+1)+A030051(2*n+3))%A122805(n+1))`
-/

namespace A101212.P11009670715884825773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (Int.tmod (A276625 (n + 1) + A030051 (2 * n + 3)) (A122805 (n + 1)))

end

end A101212.P11009670715884825773

/-! ## A101212.P8606268109977244265

`A332294(n+1)+A062153(A242840(n+6))`
-/

namespace A101212.P8606268109977244265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (n + 1) + A062153 (A242840 (n + 6)).toNat

end

end A101212.P8606268109977244265

/-! ## A101212.P350300416183884231

`A233275(A276442(n+1)%A324707(n+1))`
-/

namespace A101212.P350300416183884231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (Int.tmod (A276442 (n + 1)) (A324707 (n + 1))).toNat

end

end A101212.P350300416183884231

/-! ## A101212.P6350614261718822621

`A233275(A276442(n+1))%A270613(3*n+4)`
-/

namespace A101212.P6350614261718822621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233275 (A276442 (n + 1)).toNat) (A270613 (3 * n + 4))

end

end A101212.P6350614261718822621

/-!
# A101213: a(n) = n * (n+1)^2 * (n+2)^3.

The programs for A101213, the canonical program `A101213.P3554903692529130162` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101213 has offset 0).

The definition of A101213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)²*(n+2)^3` (program `A101213.P3554903692529130162`, by `A101213.P3554903692529130162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101213.P3554903692529130162

`n*(n+1)²*(n+2)^3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101213

/-- `n*(n+1)²*(n+2)^3` -/
def P3554903692529130162.Spec : Prop :=
  ∀ n, (P3554903692529130162.a n : ℤ) = A101213 n

theorem P3554903692529130162.correct : P3554903692529130162.Spec := by
  intro n
  simp only [A101213]

end A101213

/-! ## A101213.P8418255086109912425

`lcm(n*(n+2)^3, ∑[2*n+1])`
-/

namespace A101213.P8418255086109912425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n * (n + 2) ^ 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101213.P8418255086109912425

namespace A101213

/-- `lcm(n*(n+2)^3, ∑[2*n+1])` -/
def P8418255086109912425.Spec : Prop :=
  ∀ n, (P8418255086109912425.a n : ℤ) = A101213 n

end A101213

/-! ## A101213.P5697234221935057928

`n*lcm(n+1, (n+2)²)²/(n+2)`
-/

namespace A101213.P5697234221935057928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.lcm (n + 1) ((n + 2) ^ 2) ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A101213.P5697234221935057928

namespace A101213

/-- `n*lcm(n+1, (n+2)²)²/(n+2)` -/
def P5697234221935057928.Spec : Prop :=
  ∀ n, P5697234221935057928.a n = (A101213 n : ℚ)

end A101213

/-! ## A101213.P4101720756578256135

`A101214(n)/(n+3)²²`
-/

namespace A101213.P4101720756578256135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101214 n : ℚ) / (((n + 3) ^ 2) ^ 2 : ℚ)

end

end A101213.P4101720756578256135

namespace A101213

/-- `A101214(n)/(n+3)²²` -/
def P4101720756578256135.Spec : Prop :=
  ∀ n, P4101720756578256135.a n = (A101213 n : ℚ)

end A101213

/-! ## A101213.P13337840373169057344

`A047929(n+2)²/floor((n+2)/acot(n))`
-/

namespace A101213.P13337840373169057344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047929 (n + 2) ^ 2 : ℚ) / (⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)

end

end A101213.P13337840373169057344

namespace A101213

/-- `A047929(n+2)²/floor((n+2)/acot(n))` -/
def P13337840373169057344.Spec : Prop :=
  ∀ n, P13337840373169057344.a n = (A101213 n : ℚ)

end A101213

/-! ## A101213.P4927793053953333671

`A011379(n+1)²-A035287(n+2)`
-/

namespace A101213.P4927793053953333671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (n + 1) ^ 2 - A035287 (n + 2)

end

end A101213.P4927793053953333671

namespace A101213

/-- `A011379(n+1)²-A035287(n+2)` -/
def P4927793053953333671.Spec : Prop :=
  ∀ n, P4927793053953333671.a n = A101213 n

end A101213

/-! ## A101213.P4598787993767096568

`2*A163274(n+1)-A035287(n+2)`
-/

namespace A101213.P4598787993767096568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163274 (n + 1) - A035287 (n + 2)

end

end A101213.P4598787993767096568

namespace A101213

/-- `2*A163274(n+1)-A035287(n+2)` -/
def P4598787993767096568.Spec : Prop :=
  ∀ n, P4598787993767096568.a n = A101213 n

end A101213

/-! ## A101213.P3549396820242421582

`A011379(n+1)²-A002378(n+1)²`
-/

namespace A101213.P3549396820242421582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (n + 1) ^ 2 - A002378 (n + 1) ^ 2

end

end A101213.P3549396820242421582

namespace A101213

/-- `A011379(n+1)²-A002378(n+1)²` -/
def P3549396820242421582.Spec : Prop :=
  ∀ n, P3549396820242421582.a n = A101213 n

end A101213

/-! ## A101213.P7353454719685040634

`(n+1)*A099762(n+1)-A099762(n+1)`
-/

namespace A101213.P7353454719685040634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099762 (n + 1) - A099762 (n + 1)

end

end A101213.P7353454719685040634

namespace A101213

/-- `(n+1)*A099762(n+1)-A099762(n+1)` -/
def P7353454719685040634.Spec : Prop :=
  ∀ n, P7353454719685040634.a n = A101213 n

end A101213

/-! ## A101213.P16981232085601073355

`A001844(n)*A092364(n+2)-A092364(n+2)`
-/

namespace A101213.P16981232085601073355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n * A092364 (n + 2) - A092364 (n + 2)

end

end A101213.P16981232085601073355

namespace A101213

/-- `A001844(n)*A092364(n+2)-A092364(n+2)` -/
def P16981232085601073355.Spec : Prop :=
  ∀ n, P16981232085601073355.a n = A101213 n

end A101213

/-! ## A101213.P591329708800894073

`A000290(n+1)*A035287(n+2)-A035287(n+2)`
-/

namespace A101213.P591329708800894073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A035287 (n + 2) - A035287 (n + 2)

end

end A101213.P591329708800894073

namespace A101213

/-- `A000290(n+1)*A035287(n+2)-A035287(n+2)` -/
def P591329708800894073.Spec : Prop :=
  ∀ n, P591329708800894073.a n = A101213 n

end A101213

/-! ## A101213.P15593453440762660867

`A064321(n+3)/((n+1)*(n+3))`
-/

namespace A101213.P15593453440762660867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064321 (n + 3) : ℚ) / ((n + 1) * (n + 3) : ℚ)

end

end A101213.P15593453440762660867

namespace A101213

/-- `A064321(n+3)/((n+1)*(n+3))` -/
def P15593453440762660867.Spec : Prop :=
  ∀ n, P15593453440762660867.a n = (A101213 n : ℚ)

end A101213

/-! ## A101213.P14003314086232235665

`abs(A131723(2*n+1)²*A131723(2*n))`
-/

namespace A101213.P14003314086232235665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131723 (2 * n + 1) ^ 2 * A131723 (2 * n)|

end

end A101213.P14003314086232235665

namespace A101213

/-- `abs(A131723(2*n+1)²*A131723(2*n))` -/
def P14003314086232235665.Spec : Prop :=
  ∀ n, P14003314086232235665.a n = A101213 n

end A101213

/-!
# A101214: a(n) = n * (n+1)^2 * (n+2)^3 * (n+3)^4.

The programs for A101214, the canonical program `A101214.P8343880758956369705` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101214 has offset 0).

The definition of A101214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)²*(n+2)^3*(n+3)^4` (program `A101214.P8343880758956369705`, by `A101214.P8343880758956369705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101214.P8343880758956369705

`n*(n+1)²*(n+2)^3*(n+3)^4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101214

/-- `n*(n+1)²*(n+2)^3*(n+3)^4` -/
def P8343880758956369705.Spec : Prop :=
  ∀ n, (P8343880758956369705.a n : ℤ) = A101214 n

theorem P8343880758956369705.correct : P8343880758956369705.Spec := by
  intro n
  simp only [A101214]

end A101214

/-!
# A101216: Number of n-digit base-2 deletable digit-sum multiple (DSM) integers.

The programs for A101216, there is no canonical definition to state claims against.
-/

/-! ## A101216.P13748949888938569078

`A100719(A363565(3*n+4)+A269176(n+1))`
-/

namespace A101216.P13748949888938569078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A363565 (3 * n + 4) + A269176 (n + 1)).toNat

end

end A101216.P13748949888938569078

/-!
# A101218: Primes that are a concatenation of 2, 3 and a prime.

The programs for A101218, there is no canonical definition to state claims against.
-/

/-! ## A101218.P4442427152883497261

`p?[A037276(2*A001748(n+2))]`
-/

namespace A101218.P4442427152883497261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (2 * A001748 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101218.P4442427152883497261

/-! ## A101218.P14115114046352788248

`p?[A037276(3*A074845(n+1))]`
-/

namespace A101218.P14115114046352788248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (3 * A074845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101218.P14115114046352788248

/-! ## A101218.P2327858495960319291

`p?[A037276(A008585(A074845(n+1)))]`
-/

namespace A101218.P2327858495960319291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A008585 (A074845 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101218.P2327858495960319291

/-! ## A101218.P12925946675801821132

`p?[A080670(3*A074845(n+1))]`
-/

namespace A101218.P12925946675801821132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (3 * A074845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101218.P12925946675801821132

/-! ## A101218.P1837327904925390767

`p?[A080670(2*A001749(n+1))]`
-/

namespace A101218.P1837327904925390767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (2 * A001749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101218.P1837327904925390767

/-!
# A101220: a(n) = Sum_{k=0..n} Fibonacci(n-k)*n^k.

The programs for A101220, there is no canonical definition to state claims against.
-/

/-! ## A101220.P2813770867816339276

`A004526(A303344(n))`
-/

namespace A101220.P2813770867816339276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A303344 n).toNat

end

end A101220.P2813770867816339276

/-! ## A101220.P2859497405944643272

`A004524(A303344(n)+1)`
-/

namespace A101220.P2859497405944643272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A303344 n + 1).toNat

end

end A101220.P2859497405944643272

/-!
# A101221: Least k such that (10^k)*(P(n)#) - 1 is prime with P(i)= i-th prime and P(i)#= i-th primorial.

The programs for A101221, there is no canonical definition to state claims against.
-/

/-! ## A101221.P1168824309694796212

`A119269(xor(10, A345406(n+1)))`
-/

namespace A101221.P1168824309694796212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (Int.xor 10 (A345406 (n + 1))).toNat

end

end A101221.P1168824309694796212

/-! ## A101221.P17341790977467236207

`gcd(A001318(n), A286056(n*(2^(n-1)+1)+1))`
-/

namespace A101221.P17341790977467236207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001318 n) (A286056 (SequenceMachineLib.roundAway ((n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) + 1)).toNat)

end

end A101221.P17341790977467236207

/-! ## A101221.P15528765718895765166

`gcd(A026371(A005522(n)), A135339(n))`
-/

namespace A101221.P15528765718895765166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026371 (A005522 n).toNat) (A135339 n)

end

end A101221.P15528765718895765166

/-! ## A101221.P3512070103005681032

`gcd(A004186(A186236(n)), A204042(n))`
-/

namespace A101221.P3512070103005681032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004186 (A186236 n).toNat) (A204042 n)

end

end A101221.P3512070103005681032

/-! ## A101221.P10500295016826788940

`gcd(A001318(n), A293635(A121352(n)))`
-/

namespace A101221.P10500295016826788940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001318 n) (A293635 (A121352 n).toNat)

end

end A101221.P10500295016826788940

/-!
# A101222: Slowest increasing sequence where the absolute difference between the last digit of a(n) and the first digit of a(n+1) equals 1.

The programs for A101222, there is no canonical definition to state claims against.
-/

/-! ## A101222.P5647185599119714936

`A004396(n)+A281899(n)-A000035(A001248(n+1))`
-/

namespace A101222.P5647185599119714936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A281899 n - A000035 (A001248 (n + 1)).toNat)

end

end A101222.P5647185599119714936

/-! ## A101222.P2657225080056161212

`A004396(n)+A281899(n)-A341675(A000043(n+1))`
-/

namespace A101222.P2657225080056161212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A281899 n - A341675 (A000043 (n + 1)).toNat)

end

end A101222.P2657225080056161212

/-! ## A101222.P17600757045059102933

`A281899(n)+A004396(n)-∑{p}[2^n, A000010(#)]`
-/

namespace A101222.P17600757045059102933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n + A004396 n - ∑ p ∈ Nat.primeFactors (f1 n), A000010 p

end

end A101222.P17600757045059102933

/-! ## A101222.P14798779512133247711

`eq[n, A327423(n+1)%(n+1)]`
-/

namespace A101222.P14798779512133247711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327423 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101222.P14798779512133247711

/-! ## A101222.P9156107617233461388

`lt[n, A152271(A327423(n+1))]`
-/

namespace A101222.P9156107617233461388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A327423 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101222.P9156107617233461388

/-!
# A101224: Triangle, read by rows, where T(n,1) = n^2-n+1 for n>=1 and T(n,k) = (n-k+1)*floor( (T(n,k-1)-1)/(n-k+1) ) for 1

The programs for A101224, there is no canonical definition to state claims against.
-/

/-! ## A101224.P14830480978148744914

`A102669(A000957(n))+A087468(n)`
-/

namespace A101224.P14830480978148744914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A000957 n).toNat + A087468 n

end

end A101224.P14830480978148744914

/-! ## A101224.P15155797429900048005

`A049777(n+1)+A048881(A055226(n))`
-/

namespace A101224.P15155797429900048005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A048881 (A055226 n).toNat

end

end A101224.P15155797429900048005

/-!
# A101225: Numbers formed by the third nesting of pi(10^n).

The programs for A101225, there is no canonical definition to state claims against.
-/

/-! ## A101225.P13589087293367204895

`A000720(A096359(n+1))`
-/

namespace A101225.P13589087293367204895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096359 (n + 1)).toNat

end

end A101225.P13589087293367204895

/-! ## A101225.P11045481351553719397

`A000720(A000720(A006880(n+1)))`
-/

namespace A101225.P11045481351553719397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A006880 (n + 1)).toNat).toNat

end

end A101225.P11045481351553719397

/-!
# A101226: Numbers formed by the fourth nesting of pi(10^n).

The programs for A101226, there is no canonical definition to state claims against.
-/

/-! ## A101226.P14289836999690369146

`A000720(A101225(n+1))`
-/

namespace A101226.P14289836999690369146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A101225 (n + 1)).toNat

end

end A101226.P14289836999690369146

/-! ## A101226.P17499133816208781884

`A000720(A000720(A096359(n+1)))`
-/

namespace A101226.P17499133816208781884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A096359 (n + 1)).toNat).toNat

end

end A101226.P17499133816208781884

/-! ## A101226.P10617294493255163936

`A036234(A101225(n+1))-A071374(n)`
-/

namespace A101226.P10617294493255163936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A101225 (n + 1)).toNat - A071374 n

end

end A101226.P10617294493255163936

/-!
# A101227: Number of solutions to equation n=x+largest digit of x, n>1.

The programs for A101227, there is no canonical definition to state claims against.
-/

/-! ## A101227.P12277615416936176919

`C(A096972(n+2), A340102(A096988(n+2)))`
-/

namespace A101227.P12277615416936176919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096972 (n + 2)).toNat (A340102 (A096988 (n + 2)).toNat).toNat

end

end A101227.P12277615416936176919

/-! ## A101227.P773019143844311087

`and(A096972(n+2), A210882(A308951(2*n+1)))`
-/

namespace A101227.P773019143844311087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096972 (n + 2)) (A210882 (A308951 (2 * n + 1)).toNat)

end

end A101227.P773019143844311087

/-! ## A101227.P11463098281579393440

`A096972(n+2)%dr(A294920(n+2))`
-/

namespace A101227.P11463098281579393440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096972 (n + 2)) (SequenceMachineLib.digitalRoot (A294920 (n + 2)) : ℤ)

end

end A101227.P11463098281579393440

/-! ## A101227.P3345729592986242384

`A029241(n)%A000079(A186725(n))`
-/

namespace A101227.P3345729592986242384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029241 n) (A000079 (A186725 n).toNat)

end

end A101227.P3345729592986242384

/-! ## A101227.P11199991671596524368

`and(A000196(A051033(n)), A025823(n))`
-/

namespace A101227.P11199991671596524368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000196 (A051033 n).toNat) (A025823 n)

end

end A101227.P11199991671596524368

/-!
# A101228: Number of weakly connected acyclic digraphs on n unlabeled nodes.

The programs for A101228, there is no canonical definition to state claims against.
-/

/-! ## A101228.P12375861563409940901

`A361587(∑[n+2])`
-/

namespace A101228.P12375861563409940901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101228.P12375861563409940901

/-! ## A101228.P15624181724864728317

`A361587(A001602(3*n+1))^A339108(2*n+3)`
-/

namespace A101228.P15624181724864728317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361587 (A001602 (3 * n + 1)).toNat : ℚ) ^ (A339108 (2 * n + 3) : ℤ)

end

end A101228.P15624181724864728317

/-!
# A101230: Number of partitions of 2n in which both odd parts and parts that are multiples of 3 occur with even multiplicities. There is no restriction on the other even parts.

The programs for A101230, there is no canonical definition to state claims against.
-/

/-! ## A101230.P8290754349509794315

`A185238(A045683(n))+A132218(n)`
-/

namespace A101230.P8290754349509794315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A045683 n).toNat + A132218 n

end

end A101230.P8290754349509794315

/-! ## A101230.P14654514038860945826

`A185238(A153176(n))+A132218(n)`
-/

namespace A101230.P14654514038860945826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A153176 n).toNat + A132218 n

end

end A101230.P14654514038860945826

/-! ## A101230.P5838396048513516255

`A185284(A256116(n))+A132218(n)`
-/

namespace A101230.P5838396048513516255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A256116 n).toNat + A132218 n

end

end A101230.P5838396048513516255

/-! ## A101230.P17290437750237486821

`A262689(A132218(n)²)`
-/

namespace A101230.P17290437750237486821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A132218 n ^ 2).toNat

end

end A101230.P17290437750237486821

/-! ## A101230.P9375386662435095105

`lcm(A132218(n), A376604(A023360(2*n+3)))`
-/

namespace A101230.P9375386662435095105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132218 n) (A376604 (A023360 (2 * n + 3)).toNat)

end

end A101230.P9375386662435095105

/-!
# A101231: a(n) = n-th prime of Erdős-Selfridge classification n-.

The programs for A101231, there is no canonical definition to state claims against.
-/

/-! ## A101231.P8074266834298384198

`A260792(A347825(n))`
-/

namespace A101231.P8074266834298384198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260792 (A347825 n).toNat

end

end A101231.P8074266834298384198

/-!
# A101233: Slowest increasing sequence where the absolute difference between the last digit of a(n) and the first digit of a(n+1) equals 0.

The programs for A101233, there is no canonical definition to state claims against.
-/

/-! ## A101233.P2938842191783898927

`comp[A261423(n)-dr(n)]`
-/

namespace A101233.P2938842191783898927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101233.P2938842191783898927

/-! ## A101233.P3197038065834576095

`comp[A261423(n)-A010888(n)]`
-/

namespace A101233.P3197038065834576095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n - A010888 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101233.P3197038065834576095

/-! ## A101233.P5400110319972211447

`comp[A261423(n)-A180594(n)]`
-/

namespace A101233.P5400110319972211447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n - A180594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101233.P5400110319972211447

/-! ## A101233.P10600461333226825108

`eq[A080465(n), A179801(n+1)]`
-/

namespace A101233.P10600461333226825108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080465 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101233.P10600461333226825108

/-! ## A101233.P13732793911622310767

`∑[A010691(n)]%A353991(n+1)`
-/

namespace A101233.P13732793911622310767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A353991 (n + 1))

end

end A101233.P13732793911622310767

/-!
# A101235: Slowest increasing sequence where the absolute difference between the last digit of a(n) and the first digit of a(n+1) equals 2.

The programs for A101235, there is no canonical definition to state claims against.
-/

/-! ## A101235.P14879207977141326534

`lt[A061315(n+2), A053120(A226250(2*(n+2)))]`
-/

namespace A101235.P14879207977141326534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061315 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A226250 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101235.P14879207977141326534

/-!
# A101239: Slowest increasing sequence where the absolute difference between the last digit of a(n) and the first digit of a(n+1) equals 5.

The programs for A101239, there is no canonical definition to state claims against.
-/

/-! ## A101239.P10471501868726151977

`∑[A040029(A040027(n)-A039999(n+1))]`
-/

namespace A101239.P10471501868726151977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 (A040027 n - A039999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101239.P10471501868726151977

/-!
# A101243: Slowest increasing sequence where the absolute difference between the last digit of a(n) and the first digit of a(n+1) equals 9.

The programs for A101243, there is no canonical definition to state claims against.
-/

/-! ## A101243.P5251411660572462936

`A187090(a(n-1)+10)` with `a(0)=0`
-/

namespace A101243.P5251411660572462936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187090 (a (n - 1) + 10).toNat

end

end A101243.P5251411660572462936

/-! ## A101243.P1893787602192496638

`A252002(a(n-1)+10)` with `a(0)=0`
-/

namespace A101243.P1893787602192496638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252002 (a (n - 1) + 10).toNat

end

end A101243.P1893787602192496638

/-! ## A101243.P17687139292002549396

`record[A143473(10*n+5)-5]`
-/

namespace A101243.P17687139292002549396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143473 (10 * n + 5) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101243.P17687139292002549396

/-! ## A101243.P14784285669447801833

`A217402(A017281(n))-9`
-/

namespace A101243.P14784285669447801833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217402 (A017281 n).toNat - 9

end

end A101243.P14784285669447801833

/-! ## A101243.P10806974379727981048

`A217402(sqrt(A017282(n)))-9`
-/

namespace A101243.P10806974379727981048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217402 (SequenceMachineLib.roundAway (Real.sqrt (A017282 n : ℝ))).toNat - 9

end

end A101243.P10806974379727981048

/-!
# A101244: Slowest increasing sequence where the absolute difference between the number formed by the last two digits of a(n) and the number formed by the first two digits of a(n+1) equals 10.

The programs for A101244, there is no canonical definition to state claims against.
-/

/-! ## A101244.P8014859640243732475

`lt[A003132(n), A244853(n+3)%8]`
-/

namespace A101244.P8014859640243732475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244853 (n + 3)) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101244.P8014859640243732475

/-! ## A101244.P11935192617040378248

`A014418(eq[A101048(n), A183134(n)])`
-/

namespace A101244.P11935192617040378248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A101244.P11935192617040378248

/-!
# A101246: When this sequence is interleaved with its first differences and the resulting sequence is divided into blocks of 10 digits, each block contains 10 distinct digits. Each term is chosen to be the smallest that satisfies this property.

The programs for A101246, there is no canonical definition to state claims against.
-/

/-! ## A101246.P1636525452384562752

`or(comp[2*(n+1)], A055266(A110795(n+1)))`
-/

namespace A101246.P1636525452384562752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A055266 (A110795 (n + 1)).toNat)

end

end A101246.P1636525452384562752

/-!
# A101248: Decimal Goedelization of contingent WFFs (well-formed formulas) from propositional calculus, in Richard C. Schroeppel's metatheory of A101273. Truth value depends on truth value of variables, but is neither always true (theorem) nor always false (antitheorem).

The programs for A101248, there is no canonical definition to state claims against.
-/

/-! ## A101248.P15110629326592401796

`record[A004719(A038116(n))]`
-/

namespace A101248.P15110629326592401796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A038116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101248.P15110629326592401796

/-! ## A101248.P4222190704477226377

`∩[A007932(n+1), A239016(n+1)-7]`
-/

namespace A101248.P4222190704477226377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239016 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101248.P4222190704477226377

/-! ## A101248.P2602274032414119954

`A334054(A062279(n)+A008619(n))`
-/

namespace A101248.P2602274032414119954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334054 (A062279 n + A008619 n).toNat

end

end A101248.P2602274032414119954

/-! ## A101248.P16310602028199861113

`A007090(A285502(n+1)%A185128(3*n+1))`
-/

namespace A101248.P16310602028199861113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Int.tmod (A285502 (n + 1)) (A185128 (3 * n + 1))).toNat

end

end A101248.P16310602028199861113

/-! ## A101248.P488302158568814746

`A334054(lt[A326669(3*n+5), A268488(n+1)])`
-/

namespace A101248.P488302158568814746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A101248.P488302158568814746

/-!
# A101251: Primes that are a concatenation of 2, 3, 5 and a prime.

The programs for A101251, there is no canonical definition to state claims against.
-/

/-! ## A101251.P9796538889299551547

`p?[A037276(6*A001750(n+1))+A001223(n+1)]`
-/

namespace A101251.P9796538889299551547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (6 * A001750 (n + 1)).toNat + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101251.P9796538889299551547

/-! ## A101251.P11462807951269626520

`p?[A037276(10*A001748(n+1))+A001223(n+1)]`
-/

namespace A101251.P11462807951269626520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (10 * A001748 (n + 1)).toNat + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101251.P11462807951269626520

/-! ## A101251.P4593795969456604954

`p?[A037276(6*A001750(n+1))]`
-/

namespace A101251.P4593795969456604954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (6 * A001750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101251.P4593795969456604954

/-! ## A101251.P8817317322401993418

`p?[A037276(10*A001748(n+1))]`
-/

namespace A101251.P8817317322401993418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (10 * A001748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101251.P8817317322401993418

/-! ## A101251.P14596859635330904803

`p?[A037276(lcm(6, A001750(n+1)))]`
-/

namespace A101251.P14596859635330904803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (Int.lcm 6 (A001750 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101251.P14596859635330904803

/-!
# A101254: a(n) = sum[i=1,n](i-th prime of Erdős-Selfridge classification i-). Cumulative sums of A101231.

The programs for A101254, there is no canonical definition to state claims against.
-/

/-! ## A101254.P5944210402859278517

`∑[A101231(n+1)]`
-/

namespace A101254.P5944210402859278517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101254.P5944210402859278517

/-! ## A101254.P11835968352961391897

`∑[record[A101231(A000119(n))]]`
-/

namespace A101254.P11835968352961391897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101231 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101254.P11835968352961391897

/-! ## A101254.P18087790009265101963

`∑[record[A101231(A028920(n))]]`
-/

namespace A101254.P18087790009265101963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101231 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101254.P18087790009265101963

/-! ## A101254.P7724371314214935272

`∑[record[A101231(A059126(n))]]`
-/

namespace A101254.P7724371314214935272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101231 (A059126 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101254.P7724371314214935272

/-! ## A101254.P1173855488910528968

`∑[record[A101231(A106466(n))]]`
-/

namespace A101254.P1173855488910528968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101231 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101254.P1173855488910528968

/-!
# A101256: Sum of composites <= n.

The programs for A101256, the canonical program `A101256.P12476303012938185660` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101256 has offset 1).

The definition of A101256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101256.P12476303012938185660

`∑[n+1-∏{p}[n+1, C(#, n)]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101256

/-- `∑[n+1-∏{p}[n+1, C(#, n)]]` -/
def P12476303012938185660.Spec : Prop :=
  ∀ n, P12476303012938185660.a n = A101256 (n + 1)

theorem P12476303012938185660.correct : P12476303012938185660.Spec := by
  intro n
  simp only [A101256, Nat.add_sub_cancel]

end A101256

/-! ## A101256.P15148640537922954842

`∑[(n+1)*floor(atan(∑{e}[n+1, #]))]`
-/

namespace A101256.P15148640537922954842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101256.P15148640537922954842

namespace A101256

/-- `∑[(n+1)*floor(atan(∑{e}[n+1, #]))]` -/
def P15148640537922954842.Spec : Prop :=
  ∀ n, P15148640537922954842.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P775292274239006035

`∑[n-∑{p}[n+1, C(#, n)]]+n`
-/

namespace A101256.P775292274239006035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A101256.P775292274239006035

namespace A101256

/-- `∑[n-∑{p}[n+1, C(#, n)]]+n` -/
def P775292274239006035.Spec : Prop :=
  ∀ n, P775292274239006035.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P5219721556086964072

`a(n-1)+1-∑{p}[n+1, C(#, n)]+n` with `a(0)=0`
-/

namespace A101256.P5219721556086964072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))

end

end A101256.P5219721556086964072

namespace A101256

/-- `a(n-1)+1-∑{p}[n+1, C(#, n)]+n` -/
def P5219721556086964072.Spec : Prop :=
  ∀ n, P5219721556086964072.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P12570556969108048114

`∑[(C(2, ∑{e}[n+1, #])!+n)%∑{d}[n+1, #]]`
-/

namespace A101256.P12570556969108048114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + n) % (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101256.P12570556969108048114

namespace A101256

/-- `∑[(C(2, ∑{e}[n+1, #])!+n)%∑{d}[n+1, #]]` -/
def P12570556969108048114.Spec : Prop :=
  ∀ n, (P12570556969108048114.a n : ℤ) = A101256 (n + 1)

end A101256

/-! ## A101256.P13041666885478276611

`A101203(n+1)-1`
-/

namespace A101256.P13041666885478276611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 1) - 1

end

end A101256.P13041666885478276611

namespace A101256

/-- `A101203(n+1)-1` -/
def P13041666885478276611.Spec : Prop :=
  ∀ n, P13041666885478276611.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P4515104076171813076

`∑[A191558(n+1)]-1`
-/

namespace A101256.P4515104076171813076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A101256.P4515104076171813076

namespace A101256

/-- `∑[A191558(n+1)]-1` -/
def P4515104076171813076.Spec : Prop :=
  ∀ n, P4515104076171813076.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P16439532748323018134

`∑[n+1]-A158662(n+1)`
-/

namespace A101256.P16439532748323018134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A158662 (n + 1)

end

end A101256.P16439532748323018134

namespace A101256

/-- `∑[n+1]-A158662(n+1)` -/
def P16439532748323018134.Spec : Prop :=
  ∀ n, P16439532748323018134.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P1990126648038406713

`∑[(n+1)*A066247(n+1)]`
-/

namespace A101256.P1990126648038406713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101256.P1990126648038406713

namespace A101256

/-- `∑[(n+1)*A066247(n+1)]` -/
def P1990126648038406713.Spec : Prop :=
  ∀ n, P1990126648038406713.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P5685508551605570385

`A053767(A065855(n+1))`
-/

namespace A101256.P5685508551605570385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A065855 (n + 1)).toNat

end

end A101256.P5685508551605570385

namespace A101256

/-- `A053767(A065855(n+1))` -/
def P5685508551605570385.Spec : Prop :=
  ∀ n, P5685508551605570385.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P1955198783002180874

`A053767(A062298(n+1)-1)`
-/

namespace A101256.P1955198783002180874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A062298 (n + 1) - 1).toNat

end

end A101256.P1955198783002180874

namespace A101256

/-- `A053767(A062298(n+1)-1)` -/
def P1955198783002180874.Spec : Prop :=
  ∀ n, P1955198783002180874.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P10798319040857990417

`A000096(n)-A034387(n+1)`
-/

namespace A101256.P10798319040857990417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A034387 (n + 1)

end

end A101256.P10798319040857990417

namespace A101256

/-- `A000096(n)-A034387(n+1)` -/
def P10798319040857990417.Spec : Prop :=
  ∀ n, P10798319040857990417.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P1745606912428428092

`A053767(n-A000720(n+1))`
-/

namespace A101256.P1745606912428428092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 ((n : ℤ) - A000720 (n + 1)).toNat

end

end A101256.P1745606912428428092

namespace A101256

/-- `A053767(n-A000720(n+1))` -/
def P1745606912428428092.Spec : Prop :=
  ∀ n, P1745606912428428092.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P15701545744821998279

`A053767(n-∑[A010051(n+1)])`
-/

namespace A101256.P15701545744821998279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101256.P15701545744821998279

namespace A101256

/-- `A053767(n-∑[A010051(n+1)])` -/
def P15701545744821998279.Spec : Prop :=
  ∀ n, P15701545744821998279.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P7174240452914212856

`A158976(n+1)+A159073(n+1)-A034387(n+1)`
-/

namespace A101256.P7174240452914212856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158976 (n + 1) + (A159073 (n + 1) - A034387 (n + 1))

end

end A101256.P7174240452914212856

namespace A101256

/-- `A158976(n+1)+A159073(n+1)-A034387(n+1)` -/
def P7174240452914212856.Spec : Prop :=
  ∀ n, P7174240452914212856.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P1890984432576490128

`A158975(n+1)+A158976(n+1)-A158662(n+1)`
-/

namespace A101256.P1890984432576490128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158975 (n + 1) + (A158976 (n + 1) - A158662 (n + 1))

end

end A101256.P1890984432576490128

namespace A101256

/-- `A158975(n+1)+A158976(n+1)-A158662(n+1)` -/
def P1890984432576490128.Spec : Prop :=
  ∀ n, P1890984432576490128.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P4689330443427050290

`A159073(n+1)+A159074(n+1)-A158662(n+1)`
-/

namespace A101256.P4689330443427050290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159073 (n + 1) + (A159074 (n + 1) - A158662 (n + 1))

end

end A101256.P4689330443427050290

namespace A101256

/-- `A159073(n+1)+A159074(n+1)-A158662(n+1)` -/
def P4689330443427050290.Spec : Prop :=
  ∀ n, P4689330443427050290.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P6435682037647197925

`Δ[∑[A101203(n)]-n]`
-/

namespace A101256.P6435682037647197925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101256.P6435682037647197925

namespace A101256

/-- `Δ[∑[A101203(n)]-n]` -/
def P6435682037647197925.Spec : Prop :=
  ∀ n, P6435682037647197925.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P3487135527072641343

`A260196(A013920(n+2))+A101203(n+1)`
-/

namespace A101256.P3487135527072641343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A013920 (n + 2)).toNat + A101203 (n + 1)

end

end A101256.P3487135527072641343

namespace A101256

/-- `A260196(A013920(n+2))+A101203(n+1)` -/
def P3487135527072641343.Spec : Prop :=
  ∀ n, P3487135527072641343.a n = A101256 (n + 1)

end A101256

/-! ## A101256.P4812208876312156684

`∑[(n+1)%∏{d}[n+1, #]]`
-/

namespace A101256.P4812208876312156684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101256.P4812208876312156684

namespace A101256

/-- `∑[(n+1)%∏{d}[n+1, #]]` -/
def P4812208876312156684.Spec : Prop :=
  ∀ n, (P4812208876312156684.a n : ℤ) = A101256 (n + 1)

end A101256

/-!
# A101257: Remainder when the least divisor of n greater than or equal to the square root of n (A033677(n)) is divided by the greatest divisor of n less than or equal to the square root of n (A033676(n)).

The programs for A101257, there is no canonical definition to state claims against.
-/

/-! ## A101257.P7198061976436304890

`A033677(n+1)%A033676(n+1)`
-/

namespace A101257.P7198061976436304890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (n + 1)) (A033676 (n + 1))

end

end A101257.P7198061976436304890

/-! ## A101257.P10814503963194487433

`A056737(n+1)%A033676(n+1)`
-/

namespace A101257.P10814503963194487433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (n + 1)) (A033676 (n + 1))

end

end A101257.P10814503963194487433

/-! ## A101257.P8837616346534948705

`A063655(n+1)%A033676(n+1)`
-/

namespace A101257.P8837616346534948705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063655 (n + 1)) (A033676 (n + 1))

end

end A101257.P8837616346534948705

/-! ## A101257.P16528249440484399596

`A134875(n+1)%A033676(n+1)`
-/

namespace A101257.P16528249440484399596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134875 (n + 1)) (A033676 (n + 1))

end

end A101257.P16528249440484399596

/-! ## A101257.P4504125566738537877

`A248835(n+1)%A033676(n+1)`
-/

namespace A101257.P4504125566738537877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248835 (n + 1)) (A033676 (n + 1))

end

end A101257.P4504125566738537877

/-! ## A101257.P11870136651151364958

`(A060775(n+1)+A056737(n+1))%A060775(n+1)`
-/

namespace A101257.P11870136651151364958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060775 (n + 1) + A056737 (n + 1)) (A060775 (n + 1))

end

end A101257.P11870136651151364958

/-! ## A101257.P6969158741714819293

`A207376(n+1)%A033676(n+1)`
-/

namespace A101257.P6969158741714819293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207376 (n + 1)) (A033676 (n + 1))

end

end A101257.P6969158741714819293

/-!
# A101258: Slowest increasing sequence where the product of the last digit of a(n) with the first digit of a(n+1) ends with 0.

The programs for A101258, there is no canonical definition to state claims against.
-/

/-! ## A101258.P15521987156087332471

`lt[A333001(A250120(3*n)), A109419(n+1)]`
-/

namespace A101258.P15521987156087332471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333001 (A250120 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101258.P15521987156087332471

/-!
# A101260: Numbers n whose abundance is 56.

The programs for A101260, there is no canonical definition to state claims against.
-/

/-! ## A101260.P4771624820169688308

`eq[56, A033880(A028310(n))]`
-/

namespace A101260.P4771624820169688308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101260.P4771624820169688308

/-! ## A101260.P11178221116400523024

`A040195(A056371(2*n+3))*A130091(2*n+3)`
-/

namespace A101260.P11178221116400523024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040195 (A056371 (2 * n + 3)).toNat * A130091 (2 * n + 3)

end

end A101260.P11178221116400523024

/-! ## A101260.P2524324513703912052

`∩[A109321(n+1), A254141(n+1)]`
-/

namespace A101260.P2524324513703912052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101260.P2524324513703912052

/-!
# A101261: a(2n-1) = 1; a(2n) = a(n)th smallest positive integer not among the earlier terms of the sequence.

The programs for A101261, there is no canonical definition to state claims against.
-/

/-! ## A101261.P16435175375922141992

`A101905(Δ[A101881(n)])`
-/

namespace A101261.P16435175375922141992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (f1 (n + 1) - f1 n).toNat

end

end A101261.P16435175375922141992

/-! ## A101261.P13547040455718797932

`A101905(Δ[A165157(n)])`
-/

namespace A101261.P13547040455718797932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (f1 (n + 1) - f1 n).toNat

end

end A101261.P13547040455718797932

/-! ## A101261.P3657492095509301675

`A101905(A133622(n+1))`
-/

namespace A101261.P3657492095509301675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (A133622 (n + 1)).toNat

end

end A101261.P3657492095509301675

/-! ## A101261.P7542472742990584900

`A101905(A158416(n+1))`
-/

namespace A101261.P7542472742990584900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (A158416 (n + 1)).toNat

end

end A101261.P7542472742990584900

/-! ## A101261.P183490604888230565

`A101905(A152271(n+2))`
-/

namespace A101261.P183490604888230565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (A152271 (n + 2)).toNat

end

end A101261.P183490604888230565

/-! ## A101261.P4734499637217871058

`A101905(ceil(ratio[A158416(n)]))`
-/

namespace A101261.P4734499637217871058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A101261.P4734499637217871058

/-! ## A101261.P18317322080135410380

`A101905(Δ[A085787(n)]-n)`
-/

namespace A101261.P18317322080135410380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A101261.P18317322080135410380

/-! ## A101261.P14269045732151386493

`A101905(A080512(n+1)-n)`
-/

namespace A101261.P14269045732151386493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (A080512 (n + 1) - (n : ℤ)).toNat

end

end A101261.P14269045732151386493

/-! ## A101261.P5080773714953464055

`A101905(gcd(n+3, A008619(n+1)))`
-/

namespace A101261.P5080773714953464055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (Int.gcd (n + 3 : ℤ) (A008619 (n + 1)))

end

end A101261.P5080773714953464055

/-! ## A101261.P4626645629369908856

`A101905(A008619(Δ[A110660(n)]))`
-/

namespace A101261.P4626645629369908856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A101261.P4626645629369908856

/-!
# A101262: Records in the sequence A024573 defined by [1/{n*e}], {x} := x - [x].

The programs for A101262, there is no canonical definition to state claims against.
-/

/-! ## A101262.P10782935499252778189

`record[A024573(n+1)]`
-/

namespace A101262.P10782935499252778189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101262.P10782935499252778189

/-! ## A101262.P6211879577018116763

`record[floor(A024572(n+1)/(n+1))]`
-/

namespace A101262.P6211879577018116763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024572 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101262.P6211879577018116763

/-! ## A101262.P18316810709995011078

`A024573(A182219(n+1))`
-/

namespace A101262.P18316810709995011078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (A182219 (n + 1)).toNat

end

end A101262.P18316810709995011078

/-! ## A101262.P9859831263761660839

`A024573(record[A182219(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A101262.P9859831263761660839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182219 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101262.P9859831263761660839

/-!
# A101264: a(n) = 1 if 2*n + 1 is prime, otherwise a(n) = 0.

The programs for A101264, the canonical program `A101264.P18132826973570150985` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101264 has offset 0).

The definition of A101264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101264.P18132826973570150985

`A057427(A085090(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101264

/-- `A057427(A085090(n+1))` -/
def P18132826973570150985.Spec : Prop :=
  ∀ n, P18132826973570150985.a n = A101264 n

theorem P18132826973570150985.correct : P18132826973570150985.Spec := by
  intro n
  simp only [A101264]

end A101264

/-! ## A101264.P17597382893321057015

`char[floor(p?[2*n+1]/2)]`
-/

namespace A101264.P17597382893321057015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101264.P17597382893321057015

namespace A101264

/-- `char[floor(p?[2*n+1]/2)]` -/
def P17597382893321057015.Spec : Prop :=
  ∀ n, (P17597382893321057015.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P11661523605967304097

`char[eq[1, ∑{e}[2*n+1, #]]]`
-/

namespace A101264.P11661523605967304097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101264.P11661523605967304097

namespace A101264

/-- `char[eq[1, ∑{e}[2*n+1, #]]]` -/
def P11661523605967304097.Spec : Prop :=
  ∀ n, (P11661523605967304097.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P5940032147274844396

`char[floor(cosh(log(p?[2*n+1])))]`
-/

namespace A101264.P5940032147274844396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101264.P5940032147274844396

namespace A101264

/-- `char[floor(cosh(log(p?[2*n+1])))]` -/
def P5940032147274844396.Spec : Prop :=
  ∀ n, (P5940032147274844396.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P13057343565930526527

`char[floor(sinh(log(p?[2*n+1])))]`
-/

namespace A101264.P13057343565930526527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101264.P13057343565930526527

namespace A101264

/-- `char[floor(sinh(log(p?[2*n+1])))]` -/
def P13057343565930526527.Spec : Prop :=
  ∀ n, (P13057343565930526527.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P12202867251704713816

`char[round(sinh(log(p?[2*n+1])))]`
-/

namespace A101264.P12202867251704713816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101264.P12202867251704713816

namespace A101264

/-- `char[round(sinh(log(p?[2*n+1])))]` -/
def P12202867251704713816.Spec : Prop :=
  ∀ n, (P12202867251704713816.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P13149185923699254169

`C(n, ∏{e}[2*n+1, n*#])`
-/

namespace A101264.P13149185923699254169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p)

end

end A101264.P13149185923699254169

namespace A101264

/-- `C(n, ∏{e}[2*n+1, n*#])` -/
def P13149185923699254169.Spec : Prop :=
  ∀ n, (P13149185923699254169.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P554882502896649747

`C(n, n^∑{e}[2*n+1, #])`
-/

namespace A101264.P554882502896649747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A101264.P554882502896649747

namespace A101264

/-- `C(n, n^∑{e}[2*n+1, #])` -/
def P554882502896649747.Spec : Prop :=
  ∀ n, (P554882502896649747.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P15649345181662404309

`∑{p}[2*n+1, C(n%#, n)]`
-/

namespace A101264.P15649345181662404309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (n % p) n

end

end A101264.P15649345181662404309

namespace A101264

/-- `∑{p}[2*n+1, C(n%#, n)]` -/
def P15649345181662404309.Spec : Prop :=
  ∀ n, (P15649345181662404309.a n : ℤ) = A101264 n

end A101264

/-! ## A101264.P9337026413742474482

`C(2, ∑{e}[2*n+1, #])!-1`
-/

namespace A101264.P9337026413742474482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) - 1

end

end A101264.P9337026413742474482

namespace A101264

/-- `C(2, ∑{e}[2*n+1, #])!-1` -/
def P9337026413742474482.Spec : Prop :=
  ∀ n, P9337026413742474482.a n = A101264 n

end A101264

/-! ## A101264.P5896118784518059167

`∑{p}[2*n+1, floor(#/(n+1))]`
-/

namespace A101264.P5896118784518059167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A101264.P5896118784518059167

namespace A101264

/-- `∑{p}[2*n+1, floor(#/(n+1))]` -/
def P5896118784518059167.Spec : Prop :=
  ∀ n, P5896118784518059167.a n = A101264 n

end A101264

/-! ## A101264.P10387802158875583330

`round(n/(∑{d}[2*n+1, #]-2))`
-/

namespace A101264.P10387802158875583330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 2 : ℚ))

end

end A101264.P10387802158875583330

namespace A101264

/-- `round(n/(∑{d}[2*n+1, #]-2))` -/
def P10387802158875583330.Spec : Prop :=
  ∀ n, P10387802158875583330.a n = A101264 n

end A101264

/-! ## A101264.P15824835239169265607

`floor(3*n/∏{d}[2*n+1, #])`
-/

namespace A101264.P15824835239169265607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ))⌋

end

end A101264.P15824835239169265607

namespace A101264

/-- `floor(3*n/∏{d}[2*n+1, #])` -/
def P15824835239169265607.Spec : Prop :=
  ∀ n, P15824835239169265607.a n = A101264 n

end A101264

/-! ## A101264.P800360685173918264

`round(n/(∏{d}[2*n+1, #]-2))`
-/

namespace A101264.P800360685173918264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 2 : ℚ))

end

end A101264.P800360685173918264

namespace A101264

/-- `round(n/(∏{d}[2*n+1, #]-2))` -/
def P800360685173918264.Spec : Prop :=
  ∀ n, P800360685173918264.a n = A101264 n

end A101264

/-! ## A101264.P13435197374417043409

`round(2*n/∏{d}[2*n+1, #])`
-/

namespace A101264.P13435197374417043409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)))

end

end A101264.P13435197374417043409

namespace A101264

/-- `round(2*n/∏{d}[2*n+1, #])` -/
def P13435197374417043409.Spec : Prop :=
  ∀ n, P13435197374417043409.a n = A101264 n

end A101264

/-! ## A101264.P9704951628384784415

`floor(∏{p}[2*n+1, #/n]/2)`
-/

namespace A101264.P9704951628384784415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n : ℚ)) / 2⌋

end

end A101264.P9704951628384784415

namespace A101264

/-- `floor(∏{p}[2*n+1, #/n]/2)` -/
def P9704951628384784415.Spec : Prop :=
  ∀ n, P9704951628384784415.a n = A101264 n

end A101264

/-! ## A101264.P11943042692533527684

`round(∑{p}[2*n+1, #/(3*n)])`
-/

namespace A101264.P11943042692533527684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (3 * n : ℚ))

end

end A101264.P11943042692533527684

namespace A101264

/-- `round(∑{p}[2*n+1, #/(3*n)])` -/
def P11943042692533527684.Spec : Prop :=
  ∀ n, P11943042692533527684.a n = A101264 n

end A101264

/-! ## A101264.P839774441854007179

`abs(A112448(n))`
-/

namespace A101264.P839774441854007179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112448 n|

end

end A101264.P839774441854007179

namespace A101264

/-- `abs(A112448(n))` -/
def P839774441854007179.Spec : Prop :=
  ∀ n, P839774441854007179.a n = A101264 n

end A101264

/-! ## A101264.P2995383925907780085

`A010051(Δ[n²])`
-/

namespace A101264.P2995383925907780085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101264.P2995383925907780085

namespace A101264

/-- `A010051(Δ[n²])` -/
def P2995383925907780085.Spec : Prop :=
  ∀ n, P2995383925907780085.a n = A101264 n

end A101264

/-! ## A101264.P14256467539456441402

`A304438(Δ[n²])`
-/

namespace A101264.P14256467539456441402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101264.P14256467539456441402

namespace A101264

/-- `A304438(Δ[n²])` -/
def P14256467539456441402.Spec : Prop :=
  ∀ n, P14256467539456441402.a n = A101264 n

end A101264

/-!
# A101265: a(1) = 1, a(2) = 2, a(3) = 6; a(n) = 5*a(n-1) - 5*a(n-2) + a(n-3) for n > 3.

The programs for A101265, the canonical program `A101265.P12774612235421744555` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101265 has offset 1).

The definition of A101265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101265.P12774612235421744555

`4*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101265

/-- `4*a(n-1)-a(n-2)-1` -/
def P12774612235421744555.Spec : Prop :=
  ∀ n, P12774612235421744555.a n = A101265 (n + 1)

theorem P12774612235421744555.correct : P12774612235421744555.Spec := by
  intro n
  simp only [A101265, Nat.add_sub_cancel]

end A101265

/-! ## A101265.P3474678116728635784

`1+A061278(n)`
-/

namespace A101265.P3474678116728635784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A061278 n

end

end A101265.P3474678116728635784

namespace A101265

/-- `1+A061278(n)` -/
def P3474678116728635784.Spec : Prop :=
  ∀ n, P3474678116728635784.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P6298405840144112799

`floor((sqrt(3)+2)*a(n-1))-1` with `a(0)=1`
-/

namespace A101265.P6298405840144112799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 1

end

end A101265.P6298405840144112799

namespace A101265

/-- `floor((sqrt(3)+2)*a(n-1))-1` -/
def P6298405840144112799.Spec : Prop :=
  ∀ n, P6298405840144112799.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P8112936509407875262

`ceil((sqrt(3)+2)*a(n-1))-2` with `a(0)=1`
-/

namespace A101265.P8112936509407875262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 2

end

end A101265.P8112936509407875262

namespace A101265

/-- `ceil((sqrt(3)+2)*a(n-1))-2` -/
def P8112936509407875262.Spec : Prop :=
  ∀ n, P8112936509407875262.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P11621472345407361035

`∑[round((sqrt(3)+2)*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A101265.P11621472345407361035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101265.P11621472345407361035

namespace A101265

/-- `∑[round((sqrt(3)+2)*a(n-1))]` -/
def P11621472345407361035.Spec : Prop :=
  ∀ n, P11621472345407361035.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P7159893593771499407

`∑[-round(a(n-1)/(sqrt(3)-2))]` with `a(0)=1, a(1)=1`
-/

namespace A101265.P7159893593771499407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101265.P7159893593771499407

namespace A101265

/-- `∑[-round(a(n-1)/(sqrt(3)-2))]` -/
def P7159893593771499407.Spec : Prop :=
  ∀ n, P7159893593771499407.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P7861478855959541019

`a(n-1)/(1/2)²-a(n-2)-1` with `a(0)=1, a(1)=2`
-/

namespace A101265.P7861478855959541019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2) - 1

end

end A101265.P7861478855959541019

namespace A101265

/-- `a(n-1)/(1/2)²-a(n-2)-1` -/
def P7861478855959541019.Spec : Prop :=
  ∀ n, P7861478855959541019.a n = (A101265 (n + 1) : ℚ)

end A101265

/-! ## A101265.P15104824188673664046

`A101879(n+1)`
-/

namespace A101265.P15104824188673664046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (n + 1)

end

end A101265.P15104824188673664046

namespace A101265

/-- `A101879(n+1)` -/
def P15104824188673664046.Spec : Prop :=
  ∀ n, P15104824188673664046.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P17584086238538862052

`∑[A001353(n)]+1`
-/

namespace A101265.P17584086238538862052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101265.P17584086238538862052

namespace A101265

/-- `∑[A001353(n)]+1` -/
def P17584086238538862052.Spec : Prop :=
  ∀ n, P17584086238538862052.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P14394467192153332077

`1-∑[A106707(n)]`
-/

namespace A101265.P14394467192153332077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101265.P14394467192153332077

namespace A101265

/-- `1-∑[A106707(n)]` -/
def P14394467192153332077.Spec : Prop :=
  ∀ n, P14394467192153332077.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P16044439768974959839

`∑[A072110(n)]-n`
-/

namespace A101265.P16044439768974959839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A101265.P16044439768974959839

namespace A101265

/-- `∑[A072110(n)]-n` -/
def P16044439768974959839.Spec : Prop :=
  ∀ n, P16044439768974959839.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P16407373266306892676

`∑[∑[A001835(n)]]-n`
-/

namespace A101265.P16407373266306892676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A101265.P16407373266306892676

namespace A101265

/-- `∑[∑[A001835(n)]]-n` -/
def P16407373266306892676.Spec : Prop :=
  ∀ n, P16407373266306892676.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P17598382354845804946

`ceil(A001835(n+1)/2)`
-/

namespace A101265.P17598382354845804946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001835 (n + 1) : ℚ) / 2⌉

end

end A101265.P17598382354845804946

namespace A101265

/-- `ceil(A001835(n+1)/2)` -/
def P17598382354845804946.Spec : Prop :=
  ∀ n, P17598382354845804946.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P6009549138223920337

`ceil(A079935(n+1)/2)`
-/

namespace A101265.P6009549138223920337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079935 (n + 1) : ℚ) / 2⌉

end

end A101265.P6009549138223920337

namespace A101265

/-- `ceil(A079935(n+1)/2)` -/
def P6009549138223920337.Spec : Prop :=
  ∀ n, P6009549138223920337.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P77840998635434586

`∑[A002530(2*n)]+1`
-/

namespace A101265.P77840998635434586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101265.P77840998635434586

namespace A101265

/-- `∑[A002530(2*n)]+1` -/
def P77840998635434586.Spec : Prop :=
  ∀ n, P77840998635434586.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P5836285086274800590

`∑[A052530(n)/2]+1`
-/

namespace A101265.P5836285086274800590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052530 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101265.P5836285086274800590

namespace A101265

/-- `∑[A052530(n)/2]+1` -/
def P5836285086274800590.Spec : Prop :=
  ∀ n, P5836285086274800590.a n = (A101265 (n + 1) : ℚ)

end A101265

/-! ## A101265.P39427676965385686

`∑[A249578(3*n)]+1`
-/

namespace A101265.P39427676965385686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101265.P39427676965385686

namespace A101265

/-- `∑[A249578(3*n)]+1` -/
def P39427676965385686.Spec : Prop :=
  ∀ n, P39427676965385686.a n = A101265 (n + 1)

end A101265

/-! ## A101265.P10987137450973137153

`A121401(n)-a(n-1)` with `a(0)=1`
-/

namespace A101265.P10987137450973137153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121401 n - a (n - 1)

end

end A101265.P10987137450973137153

namespace A101265

/-- `A121401(n)-a(n-1)` -/
def P10987137450973137153.Spec : Prop :=
  ∀ n, P10987137450973137153.a n = A101265 (n + 1)

end A101265

/-!
# A101266: First differences of A101402.

The programs for A101266, the canonical program `A101266.P11296860737574456655` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101266 has offset 0).

The definition of A101266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101266.P11296860737574456655

`A101402(n+1)-A101402(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101266

/-- `A101402(n+1)-A101402(n)` -/
def P11296860737574456655.Spec : Prop :=
  ∀ n, P11296860737574456655.a n = A101266 n

theorem P11296860737574456655.correct : P11296860737574456655.Spec := by
  intro n
  simp only [A101266]

end A101266

/-! ## A101266.P13140262051333079858

`Δ[A101402(n)]`
-/

namespace A101266.P13140262051333079858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101266.P13140262051333079858

namespace A101266

/-- `Δ[A101402(n)]` -/
def P13140262051333079858.Spec : Prop :=
  ∀ n, P13140262051333079858.a n = A101266 n

theorem P13140262051333079858.correct : P13140262051333079858.Spec := by
  intro n
  simp only [A101266, Nat.add_sub_cancel, A101266.P13140262051333079858.f1, A101266.P13140262051333079858.a, A101266.P11296860737574456655.a, SequenceMachineLib.memo_apply]

end A101266

/-! ## A101266.P14708757814284025891

`A164349(n+1)`
-/

namespace A101266.P14708757814284025891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (n + 1)

end

end A101266.P14708757814284025891

namespace A101266

/-- `A164349(n+1)` -/
def P14708757814284025891.Spec : Prop :=
  ∀ n, P14708757814284025891.a n = A101266 n

end A101266

/-! ## A101266.P11023822868853554853

`ceil(sin(Δ[A164349(n)]))`
-/

namespace A101266.P11023822868853554853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A101266.P11023822868853554853

namespace A101266

/-- `ceil(sin(Δ[A164349(n)]))` -/
def P11023822868853554853.Spec : Prop :=
  ∀ n, P11023822868853554853.a n = A101266 n

end A101266

/-! ## A101266.P17578142807467753981

`char[∑[A101403(n)]-1]`
-/

namespace A101266.P17578142807467753981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101266.P17578142807467753981

namespace A101266

/-- `char[∑[A101403(n)]-1]` -/
def P17578142807467753981.Spec : Prop :=
  ∀ n, (P17578142807467753981.a n : ℤ) = A101266 n

end A101266

/-! ## A101266.P2557383912761675961

`char[A246439(n+1)-1]`
-/

namespace A101266.P2557383912761675961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A101266.P2557383912761675961

namespace A101266

/-- `char[A246439(n+1)-1]` -/
def P2557383912761675961.Spec : Prop :=
  ∀ n, (P2557383912761675961.a n : ℤ) = A101266 n

end A101266

/-! ## A101266.P16728348642815976651

`a(abs(1-A053645(n)))` with `a(0)=1, a(1)=0`
-/

namespace A101266.P16728348642815976651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a |1 - A053645 n|.toNat

end

end A101266.P16728348642815976651

namespace A101266

/-- `a(abs(1-A053645(n)))` -/
def P16728348642815976651.Spec : Prop :=
  ∀ n, (P16728348642815976651.a n : ℤ) = A101266 n

end A101266

/-! ## A101266.P11692254047088814159

`char[comp[A246438(n+1)-1]]`
-/

namespace A101266.P11692254047088814159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246438 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A101266.P11692254047088814159

namespace A101266

/-- `char[comp[A246438(n+1)-1]]` -/
def P11692254047088814159.Spec : Prop :=
  ∀ n, (P11692254047088814159.a n : ℤ) = A101266 n

end A101266

/-! ## A101266.P16809792534368049933

`A000007(1-Δ[A164349(n)])`
-/

namespace A101266.P16809792534368049933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A101266.P16809792534368049933

namespace A101266

/-- `A000007(1-Δ[A164349(n)])` -/
def P16809792534368049933.Spec : Prop :=
  ∀ n, P16809792534368049933.a n = A101266 n

end A101266

/-! ## A101266.P12541625417277705491

`A029390(1-Δ[A164349(n)])`
-/

namespace A101266.P12541625417277705491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029390 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A101266.P12541625417277705491

namespace A101266

/-- `A029390(1-Δ[A164349(n)])` -/
def P12541625417277705491.Spec : Prop :=
  ∀ n, P12541625417277705491.a n = A101266 n

end A101266

/-! ## A101266.P13224350588286651421

`A010054(4-Δ[A164349(n)])`
-/

namespace A101266.P13224350588286651421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (4 - (f1 (n + 1) - f1 n)).toNat

end

end A101266.P13224350588286651421

namespace A101266

/-- `A010054(4-Δ[A164349(n)])` -/
def P13224350588286651421.Spec : Prop :=
  ∀ n, P13224350588286651421.a n = A101266 n

end A101266

/-! ## A101266.P10775947700978936085

`1-A123108(2-Δ[A164349(n)])`
-/

namespace A101266.P10775947700978936085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A123108 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A101266.P10775947700978936085

namespace A101266

/-- `1-A123108(2-Δ[A164349(n)])` -/
def P10775947700978936085.Spec : Prop :=
  ∀ n, P10775947700978936085.a n = A101266 n

end A101266

/-! ## A101266.P13125328374552715721

`A001221(ratio[A000079(A101402(n))])`
-/

namespace A101266.P13125328374552715721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A101402 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A101266.P13125328374552715721

namespace A101266

/-- `A001221(ratio[A000079(A101402(n))])` -/
def P13125328374552715721.Spec : Prop :=
  ∀ n, P13125328374552715721.a n = A101266 n

end A101266

/-! ## A101266.P4435472314081695157

`A001222(ratio[A000079(A101402(n))])`
-/

namespace A101266.P4435472314081695157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A101402 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A101266.P4435472314081695157

namespace A101266

/-- `A001222(ratio[A000079(A101402(n))])` -/
def P4435472314081695157.Spec : Prop :=
  ∀ n, P4435472314081695157.a n = A101266 n

end A101266

/-!
# A101268: Number of compositions of n into pairwise relatively prime parts.

The programs for A101268, there is no canonical definition to state claims against.
-/

/-! ## A101268.P13569690164913302273

`A337462(n)+A157928(n)`
-/

namespace A101268.P13569690164913302273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + A157928 n

end

end A101268.P13569690164913302273

/-! ## A101268.P8553120138134514388

`A337462(n)+A151800(n)%2`
-/

namespace A101268.P8553120138134514388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + Int.tmod (A151800 n) 2

end

end A101268.P8553120138134514388

/-! ## A101268.P6717533748789829733

`A337462(n)+char[A297996(n+1)]`
-/

namespace A101268.P6717533748789829733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297996 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101268.P6717533748789829733

/-! ## A101268.P10309296406706533841

`A337462(n)+A057427(A057355(n))`
-/

namespace A101268.P10309296406706533841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + A057427 (A057355 n).toNat

end

end A101268.P10309296406706533841

/-! ## A101268.P15397376542677669191

`A337462(n)+A001221(A060594(n+1))`
-/

namespace A101268.P15397376542677669191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + A001221 (A060594 (n + 1)).toNat

end

end A101268.P15397376542677669191

/-! ## A101268.P14532775111972658718

`A337462(n)+A057427(n-A057427(n))`
-/

namespace A101268.P14532775111972658718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + A057427 ((n : ℤ) - A057427 n).toNat

end

end A101268.P14532775111972658718

/-! ## A101268.P9670838966103940328

`A337462(n)+A337562(n)-A337561(n)`
-/

namespace A101268.P9670838966103940328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + (A337562 n - A337561 n)

end

end A101268.P9670838966103940328

/-! ## A101268.P15753406787627789689

`A337462(n)%A337462(n+1)+1`
-/

namespace A101268.P15753406787627789689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337462 n) (A337462 (n + 1)) + 1

end

end A101268.P15753406787627789689

/-! ## A101268.P15298183761835562390

`A337462(n)%A011782(n)+1`
-/

namespace A101268.P15298183761835562390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337462 n) (A011782 n) + 1

end

end A101268.P15298183761835562390

/-! ## A101268.P7280385575270319395

`A337462(n)+A043545(A267260(n))`
-/

namespace A101268.P7280385575270319395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + A043545 (A267260 n).toNat

end

end A101268.P7280385575270319395

/-! ## A101268.P17431995615478438907

`A337462(n)+A043545(n²)`
-/

namespace A101268.P17431995615478438907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + A043545 (n ^ 2)

end

end A101268.P17431995615478438907

/-!
# A101269: a(1)=0, a(2)=1, a(n+2) = (8*n^2+2*n+1)*a(n+1) - 2*n*(2*n-1)^3*a(n).

The programs for A101269, there is no canonical definition to state claims against.
-/

/-! ## A101269.P8644254328659554198

`A000027(A279181(n))-A247303(n)`
-/

namespace A101269.P8644254328659554198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A279181 n).toNat - A247303 n

end

end A101269.P8644254328659554198

/-!
# A101270: T(n, k) is the coefficient of z^k in the numerator of the polynomial part of z^n*exp(-n*s), where s = hypergeom([1, 1, 3/2], [2, 5/2], 1/z^2)/(6z^2); related to Chebyshev's quadrature. Triangle read by rows, T(n,k) for 0 <= k <= n.

The programs for A101270, there is no canonical definition to state claims against.
-/

/-! ## A101270.P9657408629810592964

`A083531(n+1)-A323308(A239686(n+1))`
-/

namespace A101270.P9657408629810592964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083531 (n + 1) - A323308 (A239686 (n + 1)).toNat

end

end A101270.P9657408629810592964

/-! ## A101270.P17048301034382606689

`A037912(A022372(n+3))-Δ[A033183(n+4)]`
-/

namespace A101270.P17048301034382606689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A022372 (n + 3)).toNat - (f1 (n + 1) - f1 n)

end

end A101270.P17048301034382606689

/-!
# A101271: Number of partitions of n into 3 distinct and relatively prime parts.

The programs for A101271, the canonical program `A101271.P143729997817666203` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101271 has offset 6).

The definition of A101271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101271.P143729997817666203

`A023023(n+6)-A023022(n+6)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A101271

/-- `A023023(n+6)-A023022(n+6)` -/
def P143729997817666203.Spec : Prop :=
  ∀ n, P143729997817666203.a n = A101271 (n + 6)

theorem P143729997817666203.correct : P143729997817666203.Spec := by
  intro n
  simp only [A101271, Nat.add_sub_cancel]

end A101271

/-!
# A101272: a(n) = n, n <= 6; a(n) = 6, n > 6.

The programs for A101272, the canonical program `A101272.P8949475834710049890` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101272 has offset 1).

The definition of A101272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101272.P8949475834710049890

`floor(e*sqrt(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101272

/-- `floor(e*sqrt(a(n-1)))` -/
def P8949475834710049890.Spec : Prop :=
  ∀ n, P8949475834710049890.a n = A101272 (n + 1)

theorem P8949475834710049890.correct : P8949475834710049890.Spec := by
  intro n
  simp only [A101272, Nat.add_sub_cancel]

end A101272

/-!
# A101274: a(1)=1; for n>1, a(n) is the smallest positive integer such that the set of all sums of adjacent elements up to and including a(n) contains no number more than once.

The programs for A101274, there is no canonical definition to state claims against.
-/

/-! ## A101274.P5313085442229977990

`Δ[A005282(n+1)]`
-/

namespace A101274.P5313085442229977990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101274.P5313085442229977990

/-! ## A101274.P16566593458981067014

`Δ[A025582(n+1)]`
-/

namespace A101274.P16566593458981067014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101274.P16566593458981067014

/-! ## A101274.P6724533070382367593

`A287178(n+2)/2`
-/

namespace A101274.P6724533070382367593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287178 (n + 2) : ℚ) / 2

end

end A101274.P6724533070382367593

/-! ## A101274.P6935842389468987345

`Δ[A284917(n+1)]+1`
-/

namespace A101274.P6935842389468987345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A101274.P6935842389468987345

/-! ## A101274.P11230939278915502771

`Δ[A034757(n+1)/2]`
-/

namespace A101274.P11230939278915502771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034757 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101274.P11230939278915502771

/-! ## A101274.P2718633988604984325

`A005282(n+2)-A005282(n+1)`
-/

namespace A101274.P2718633988604984325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 2) - A005282 (n + 1)

end

end A101274.P2718633988604984325

/-! ## A101274.P15960174808462855661

`A025582(n+2)-A025582(n+1)`
-/

namespace A101274.P15960174808462855661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 2) - A025582 (n + 1)

end

end A101274.P15960174808462855661

/-! ## A101274.P3690471835177325877

`A001281(A287178(n+2))`
-/

namespace A101274.P3690471835177325877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A287178 (n + 2)).toNat

end

end A101274.P3690471835177325877

/-! ## A101274.P7738638539342350284

`A394212(∑[n+1])`
-/

namespace A101274.P7738638539342350284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101274.P7738638539342350284

/-! ## A101274.P6856251686248069400

`abs(A394213(∑[n+2]))`
-/

namespace A101274.P6856251686248069400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A394213 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A101274.P6856251686248069400

/-!
# A101275: Triangle read by rows: T(n,k) is the number of Schroeder paths of length 2n having exactly k down steps hitting the x-axis.

The programs for A101275, there is no canonical definition to state claims against.
-/

/-! ## A101275.P14705337013240686061

`A110107(n)/A059268(n)`
-/

namespace A101275.P14705337013240686061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A059268 n : ℚ)

end

end A101275.P14705337013240686061

/-! ## A101275.P10756959456996359085

`A110107(n)/A000079(A002262(n))`
-/

namespace A101275.P10756959456996359085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A101275.P10756959456996359085

/-! ## A101275.P8799191401825349691

`A110107(n)/A130321(A061579(n))`
-/

namespace A101275.P8799191401825349691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A101275.P8799191401825349691

/-! ## A101275.P15006621440965238309

`A110107(n)/A011782(A002260(n+1))`
-/

namespace A101275.P15006621440965238309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A101275.P15006621440965238309

/-! ## A101275.P14665883425278633831

`A110107(n)/A016116(A158405(n+1))`
-/

namespace A101275.P14665883425278633831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A016116 (A158405 (n + 1)).toNat : ℚ)

end

end A101275.P14665883425278633831

/-! ## A101275.P3006179272085021039

`A110107(n)/A156552(A037126(n+1))`
-/

namespace A101275.P3006179272085021039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A156552 (A037126 (n + 1)).toNat : ℚ)

end

end A101275.P3006179272085021039

/-! ## A101275.P5397587755880900121

`A027465(n)/A038220(n)*A110107(n)`
-/

namespace A101275.P5397587755880900121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A038220 n : ℚ) * (A110107 n : ℚ)

end

end A101275.P5397587755880900121

/-! ## A101275.P14668457751056859452

`A110107(n)/A062050(A099627(n))`
-/

namespace A101275.P14668457751056859452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A062050 (A099627 n).toNat : ℚ)

end

end A101275.P14668457751056859452

/-! ## A101275.P13265709469234431863

`A110107(n)/A006519(A135764(n+1))`
-/

namespace A101275.P13265709469234431863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110107 n : ℚ) / (A006519 (A135764 (n + 1)).toNat : ℚ)

end

end A101275.P13265709469234431863

/-!
# A101276: Triangle read by rows: T(n,k) is the number of ordered trees having n edges and k branches of length 1.

The programs for A101276, there is no canonical definition to state claims against.
-/

/-! ## A101276.P9860825946021918439

`A300705(n+2)*A331128(A193387(n+1))`
-/

namespace A101276.P9860825946021918439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (n + 2) * A331128 (A193387 (n + 1)).toNat

end

end A101276.P9860825946021918439

/-! ## A101276.P15848828384292415448

`floor(sqrt(A187784(n)%A223763(n+1)))`
-/

namespace A101276.P15848828384292415448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A187784 n) (A223763 (n + 1)))

end

end A101276.P15848828384292415448

/-! ## A101276.P2775989507805149206

`lcm(A144874(A036645(n)), A162986(n))`
-/

namespace A101276.P2775989507805149206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144874 (A036645 n).toNat) (A162986 n)

end

end A101276.P2775989507805149206

/-! ## A101276.P42934688159440676

`A116598(n)*A281118(A183421(n+1))`
-/

namespace A101276.P42934688159440676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n * A281118 (A183421 (n + 1)).toNat

end

end A101276.P42934688159440676

/-! ## A101276.P15420024674382485057

`A087963(A260040(n+2))`
-/

namespace A101276.P15420024674382485057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087963 (A260040 (n + 2)).toNat

end

end A101276.P15420024674382485057

/-!
# A101277: Number of partitions of 2n in which all odd parts occur with multiplicity 2. There is no restriction on the even parts.

The programs for A101277, there is no canonical definition to state claims against.
-/

/-! ## A101277.P7985303928393475855

`A185284(A308952(n))+A146163(n)`
-/

namespace A101277.P7985303928393475855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A308952 n).toNat + A146163 n

end

end A101277.P7985303928393475855

/-! ## A101277.P12339373417482893977

`A146163(n)+A025466(A110186(n+1))`
-/

namespace A101277.P12339373417482893977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146163 n + A025466 (A110186 (n + 1)).toNat

end

end A101277.P12339373417482893977

/-! ## A101277.P15863941538233521510

`A146163(n)-(A185284(n)-A185284(A308952(n)))`
-/

namespace A101277.P15863941538233521510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146163 n - (A185284 n - A185284 (A308952 n).toNat)

end

end A101277.P15863941538233521510

/-! ## A101277.P17357663410076395044

`A154470(A146163(n))`
-/

namespace A101277.P17357663410076395044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A146163 n).toNat

end

end A101277.P17357663410076395044

/-!
# A101278: Write n in base 3 as n = b_0 + b_1*3 + b_2*3^2 + b_3*3^3 + ...; then a(n) = Product_{i >= 0} prime(i+1)^b_i.

The programs for A101278, there is no canonical definition to state claims against.
-/

/-! ## A101278.P17619782838887680499

`A019565(A289814(n))²*A019565(A289813(n))`
-/

namespace A101278.P17619782838887680499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A289814 n).toNat ^ 2 * A019565 (A289813 n).toNat

end

end A101278.P17619782838887680499

/-! ## A101278.P6168780205436527918

`A054842(A007089(n))`
-/

namespace A101278.P6168780205436527918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A007089 n).toNat

end

end A101278.P6168780205436527918

/-! ## A101278.P11515691183847089072

`A054842(A343810(n)/4)`
-/

namespace A101278.P11515691183847089072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (SequenceMachineLib.roundAway ((A343810 n : ℚ) / 4)).toNat

end

end A101278.P11515691183847089072

/-! ## A101278.P9660868424128533019

`A054842(eq[0, A176407(n)])`
-/

namespace A101278.P9660868424128533019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101278.P9660868424128533019

/-! ## A101278.P6156457530238240205

`A054842(lt[A054055(n), 3])`
-/

namespace A101278.P6156457530238240205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A101278.P6156457530238240205

/-! ## A101278.P13040085673009417501

`A332815(A305878(n))`
-/

namespace A101278.P13040085673009417501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (A305878 n).toNat

end

end A101278.P13040085673009417501

/-! ## A101278.P722259181528868200

`A005940(A305878(n)+1)`
-/

namespace A101278.P722259181528868200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A305878 n + 1).toNat

end

end A101278.P722259181528868200

/-!
# A101279: a(1) = 1; a(2k) = a(k), a(2k+1) = k.

The programs for A101279, the canonical program `A101279.P13195292340329059168` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101279 has offset 1).

The definition of A101279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101279.P13195292340329059168

`A025480(n)+A036987(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101279

/-- `A025480(n)+A036987(n)` -/
def P13195292340329059168.Spec : Prop :=
  ∀ n, P13195292340329059168.a n = A101279 (n + 1)

theorem P13195292340329059168.correct : P13195292340329059168.Spec := by
  intro n
  simp only [A101279, Nat.add_sub_cancel]

end A101279

/-! ## A101279.P15313216849269434215

`char[2^n-1]+floor(n/(xor(n, n+1)+1))`
-/

namespace A101279.P15313216849269434215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A101279.P15313216849269434215

namespace A101279

/-- `char[2^n-1]+floor(n/(xor(n, n+1)+1))` -/
def P15313216849269434215.Spec : Prop :=
  ∀ n, P15313216849269434215.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P11543263733037301703

`floor(n*a(floor((n-1)/2))/a(n-1))/2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A101279.P11543263733037301703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (⌊(n : ℚ) * (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat / a (n - 1))⌋ : ℚ) / 2

end

end A101279.P11543263733037301703

namespace A101279

/-- `floor(n*a(floor((n-1)/2))/a(n-1))/2` -/
def P11543263733037301703.Spec : Prop :=
  ∀ n, P11543263733037301703.a n = (A101279 (n + 1) : ℚ)

end A101279

/-! ## A101279.P3200255100740005313

`floor((A322250(n+1)+1)/2)`
-/

namespace A101279.P3200255100740005313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322250 (n + 1) + 1 : ℚ) / 2⌋

end

end A101279.P3200255100740005313

namespace A101279

/-- `floor((A322250(n+1)+1)/2)` -/
def P3200255100740005313.Spec : Prop :=
  ∀ n, P3200255100740005313.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P6086405602447267245

`ceil(abs(2-A000265(n+1))/2)`
-/

namespace A101279.P6086405602447267245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|2 - A000265 (n + 1)| : ℚ) / 2⌉

end

end A101279.P6086405602447267245

namespace A101279

/-- `ceil(abs(2-A000265(n+1))/2)` -/
def P6086405602447267245.Spec : Prop :=
  ∀ n, P6086405602447267245.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P4745921011655409228

`ceil(abs(1-A166466(n+1)/6))`
-/

namespace A101279.P4745921011655409228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|1 - (A166466 (n + 1) : ℚ) / 6|⌉

end

end A101279.P4745921011655409228

namespace A101279

/-- `ceil(abs(1-A166466(n+1)/6))` -/
def P4745921011655409228.Spec : Prop :=
  ∀ n, P4745921011655409228.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P9248206334444130827

`A028310(floor(n/2^val(n+1, 2))/2)`
-/

namespace A101279.P9248206334444130827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A101279.P9248206334444130827

namespace A101279

/-- `A028310(floor(n/2^val(n+1, 2))/2)` -/
def P9248206334444130827.Spec : Prop :=
  ∀ n, P9248206334444130827.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P9310544081289821583

`A028310(floor(n/(or(n, n+1)-n))/2)`
-/

namespace A101279.P9310544081289821583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋ : ℚ) / 2)).toNat

end

end A101279.P9310544081289821583

namespace A101279

/-- `A028310(floor(n/(or(n, n+1)-n))/2)` -/
def P9310544081289821583.Spec : Prop :=
  ∀ n, P9310544081289821583.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P4229615473196765737

`A028310(floor(n/and(n+1, -(n+1)))/2)`
-/

namespace A101279.P4229615473196765737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2)).toNat

end

end A101279.P4229615473196765737

namespace A101279

/-- `A028310(floor(n/and(n+1, -(n+1)))/2)` -/
def P4229615473196765737.Spec : Prop :=
  ∀ n, P4229615473196765737.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P8238574956366168544

`A028310(floor(n/(1-and(n, n+1)+n))/2)`
-/

namespace A101279.P8238574956366168544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ)⌋ : ℚ) / 2)).toNat

end

end A101279.P8238574956366168544

namespace A101279

/-- `A028310(floor(n/(1-and(n, n+1)+n))/2)` -/
def P8238574956366168544.Spec : Prop :=
  ∀ n, P8238574956366168544.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P15564508494193742140

`A028310(floor(n/abs(or(n+1, -(n+1))))/2)`
-/

namespace A101279.P15564508494193742140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (|Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| : ℚ)⌋ : ℚ) / 2)).toNat

end

end A101279.P15564508494193742140

namespace A101279

/-- `A028310(floor(n/abs(or(n+1, -(n+1))))/2)` -/
def P15564508494193742140.Spec : Prop :=
  ∀ n, P15564508494193742140.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P17649703787283422869

`A028310(floor(n/xor(n+1, and(n, n+1)))/2)`
-/

namespace A101279.P17649703787283422869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ)⌋ : ℚ) / 2)).toNat

end

end A101279.P17649703787283422869

namespace A101279

/-- `A028310(floor(n/xor(n+1, and(n, n+1)))/2)` -/
def P17649703787283422869.Spec : Prop :=
  ∀ n, P17649703787283422869.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P7572278977404607401

`A028310(((n+1)/and(n+1, -(n+1))-1)/2)`
-/

namespace A101279.P7572278977404607401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) - 1) / 2)).toNat

end

end A101279.P7572278977404607401

namespace A101279

/-- `A028310(((n+1)/and(n+1, -(n+1))-1)/2)` -/
def P7572278977404607401.Spec : Prop :=
  ∀ n, P7572278977404607401.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P16410896350634681043

`A025480(lcm(2, (n-1)%((n+1)/and(n+1, -(n+1)))+1))`
-/

namespace A101279.P16410896350634681043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm 2 (Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) + 1))

end

end A101279.P16410896350634681043

namespace A101279

/-- `A025480(lcm(2, (n-1)%((n+1)/and(n+1, -(n+1)))+1))` -/
def P16410896350634681043.Spec : Prop :=
  ∀ n, P16410896350634681043.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P12170112827000437744

`A028310(A025480(n))`
-/

namespace A101279.P12170112827000437744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A025480 n).toNat

end

end A101279.P12170112827000437744

namespace A101279

/-- `A028310(A025480(n))` -/
def P12170112827000437744.Spec : Prop :=
  ∀ n, P12170112827000437744.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P441228764680247413

`A065033(A153733(n))`
-/

namespace A101279.P441228764680247413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A153733 n).toNat

end

end A101279.P441228764680247413

namespace A101279

/-- `A065033(A153733(n))` -/
def P441228764680247413.Spec : Prop :=
  ∀ n, P441228764680247413.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P7866880284698691231

`A165818(A000265(n+1))`
-/

namespace A101279.P7866880284698691231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165818 (A000265 (n + 1)).toNat

end

end A101279.P7866880284698691231

namespace A101279

/-- `A165818(A000265(n+1))` -/
def P7866880284698691231.Spec : Prop :=
  ∀ n, P7866880284698691231.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P14069179183326892282

`A004525(A322250(n+1))`
-/

namespace A101279.P14069179183326892282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A322250 (n + 1)).toNat

end

end A101279.P14069179183326892282

namespace A101279

/-- `A004525(A322250(n+1))` -/
def P14069179183326892282.Spec : Prop :=
  ∀ n, P14069179183326892282.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P8753535086602126268

`A065033(2*A025480(n))`
-/

namespace A101279.P8753535086602126268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A025480 n).toNat

end

end A101279.P8753535086602126268

namespace A101279

/-- `A065033(2*A025480(n))` -/
def P8753535086602126268.Spec : Prop :=
  ∀ n, P8753535086602126268.a n = A101279 (n + 1)

end A101279

/-! ## A101279.P2140767649383892681

`A028310(A153733(n)/2)`
-/

namespace A101279.P2140767649383892681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A101279.P2140767649383892681

namespace A101279

/-- `A028310(A153733(n)/2)` -/
def P2140767649383892681.Spec : Prop :=
  ∀ n, P2140767649383892681.a n = A101279 (n + 1)

end A101279

/-!
# A101280: Triangle T(n,k) (n >= 1, 0 <= k <= floor((n-1)/2)) read by rows, where T(n,k) = (k+1)T(n-1,k) + (2n-4k)T(n-1,k-1).

The programs for A101280, there is no canonical definition to state claims against.
-/

/-! ## A101280.P9101267845419934088

`A059268(A091018(n))*A094503(n+1)`
-/

namespace A101280.P9101267845419934088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A094503 (n + 1)

end

end A101280.P9101267845419934088

/-!
# A101281: Triangle read by rows: T(n,k) is the number of Schroeder paths of length 2n and having k low humps.

The programs for A101281, there is no canonical definition to state claims against.
-/

/-! ## A101281.P17941275463882163985

`A019554(A008619(n)^A199011(n))`
-/

namespace A101281.P17941275463882163985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A199011 n : ℤ))).toNat

end

end A101281.P17941275463882163985

/-! ## A101281.P18029215602208235483

`A067595(A134484(n)+A121314(3*n))`
-/

namespace A101281.P18029215602208235483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A134484 n + A121314 (3 * n)).toNat

end

end A101281.P18029215602208235483

/-! ## A101281.P15109507054422351938

`A000188(A008619(n)^A325002(n+1))`
-/

namespace A101281.P15109507054422351938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A325002 (n + 1) : ℤ))).toNat

end

end A101281.P15109507054422351938

/-! ## A101281.P9933555830690498254

`A033677(A005206(n)^A347277(n+1))`
-/

namespace A101281.P9933555830690498254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((A005206 n : ℚ) ^ (A347277 (n + 1) : ℤ))).toNat

end

end A101281.P9933555830690498254

/-! ## A101281.P1871779551561098423

`A033677(A008619(n)^A347277(n+1))`
-/

namespace A101281.P1871779551561098423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A347277 (n + 1) : ℤ))).toNat

end

end A101281.P1871779551561098423

/-!
# A101284: Numbers n such that a type-8 Gaussian normal basis exists for GF(2^n) over GF(2).

The programs for A101284, there is no canonical definition to state claims against.
-/

/-! ## A101284.P3277629869208759080

`eq[n, A003560(lcm(2, n))]`
-/

namespace A101284.P3277629869208759080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 (Nat.lcm 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101284.P3277629869208759080

/-! ## A101284.P2079441066232314895

`eq[n, A003560(A109043(n))]`
-/

namespace A101284.P2079441066232314895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 (A109043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101284.P2079441066232314895

/-! ## A101284.P8321820859703391670

`eq[n, A000265(A003573(2*n))]`
-/

namespace A101284.P8321820859703391670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003573 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101284.P8321820859703391670

/-! ## A101284.P12496715203410413295

`eq[A003560(2*n), A129527(n)]`
-/

namespace A101284.P12496715203410413295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101284.P12496715203410413295

/-! ## A101284.P3407416054413090281

`eq[n, A026741(A302141(4*n))]`
-/

namespace A101284.P3407416054413090281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A302141 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101284.P3407416054413090281

/-! ## A101284.P14117751844751770209

`eq[A195312(n), A302141(4*n)]`
-/

namespace A101284.P14117751844751770209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101284.P14117751844751770209

/-! ## A101284.P17093439578196710344

`eq[n, A003560(A129527(n)+n)]`
-/

namespace A101284.P17093439578196710344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 (A129527 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101284.P17093439578196710344

/-! ## A101284.P3872061032326698296

`eq[A283971(2*n), A302141(4*n)]`
-/

namespace A101284.P3872061032326698296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101284.P3872061032326698296

/-! ## A101284.P12777642736686663499

`A003560(eq[n, A129527(n)-A003560(n)])`
-/

namespace A101284.P12777642736686663499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 n - A003560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101284.P12777642736686663499

/-!
# A101285: Rounded frequencies in Hertz of the notes of the C major music scale beginning at A (A Minor equal-tempered).

The programs for A101285, there is no canonical definition to state claims against.
-/

/-! ## A101285.P16138344855074776157

`A320304(A060107(n+1)+33)`
-/

namespace A101285.P16138344855074776157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320304 (A060107 (n + 1) + 33).toNat

end

end A101285.P16138344855074776157

/-! ## A101285.P4750386057596686090

`A101286(comp[round(n*log(11))])`
-/

namespace A101285.P4750386057596686090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.log (11 : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101286 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A101285.P4750386057596686090

/-! ## A101285.P6106242054222564101

`record[or(-A059620(n), A101286(n+1))]`
-/

namespace A101285.P6106242054222564101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A059620 n) (A101286 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101285.P6106242054222564101

/-! ## A101285.P49635268184373922

`A028310(A101286(ceil((12*n+3)/7)))`
-/

namespace A101285.P49635268184373922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A101286 ⌈(12 * n + 3 : ℚ) / 7⌉.toNat).toNat

end

end A101285.P49635268184373922

/-! ## A101285.P11842905428457616018

`∩[A101286(A081031(n+1)), A101286(n+1)]`
-/

namespace A101285.P11842905428457616018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101286 (A081031 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101285.P11842905428457616018

/-!
# A101286: Rounded frequencies in Hz of the notes of the chromatic music scale beginning at A.

The programs for A101286, the canonical program `A101286.P12330094753289700158` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101286 has offset 1).

The definition of A101286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101286.P12330094753289700158

`round(55*2^(n/12))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101286

/-- `round(55*2^(n/12))` -/
def P12330094753289700158.Spec : Prop :=
  ∀ n, P12330094753289700158.a n = A101286 (n + 1)

theorem P12330094753289700158.correct : P12330094753289700158.Spec := by
  intro n
  simp only [A101286, Nat.add_sub_cancel]

end A101286

/-! ## A101286.P4952630422828673753

`A320304(n+33)`
-/

namespace A101286.P4952630422828673753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320304 (n + 33)

end

end A101286.P4952630422828673753

namespace A101286

/-- `A320304(n+33)` -/
def P4952630422828673753.Spec : Prop :=
  ∀ n, P4952630422828673753.a n = A101286 (n + 1)

end A101286

/-!
# A101287: Rounded frequencies in Hz of the notes of the pentatonic music scale beginning at F#.

The programs for A101287, there is no canonical definition to state claims against.
-/

/-! ## A101287.P13717898875276285370

`A101286(A081032(n+4))`
-/

namespace A101287.P13717898875276285370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101286 (A081032 (n + 4)).toNat

end

end A101287.P13717898875276285370

/-! ## A101287.P11197169851829758000

`A349057(A359908(3*n+5)+A283435(n+3))`
-/

namespace A101287.P11197169851829758000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349057 (A359908 (3 * n + 5) + A283435 (n + 3)).toNat

end

end A101287.P11197169851829758000

/-!
# A101289: Inverse Moebius transform of 5-simplex numbers A000389.

The programs for A101289, the canonical program `A101289.P13654200819194439081` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101289 has offset 1).

The definition of A101289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101289.P13654200819194439081

`∑{d}[n+1, C(#+4, 5)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101289

/-- `∑{d}[n+1, C(#+4, 5)]` -/
def P13654200819194439081.Spec : Prop :=
  ∀ n, (P13654200819194439081.a n : ℤ) = A101289 (n + 1)

theorem P13654200819194439081.correct : P13654200819194439081.Spec := by
  intro n
  simp only [A101289, Nat.add_sub_cancel]

end A101289

/-! ## A101289.P14073349812251571662

`∑{d}[n+1, A051745(#)-#]`
-/

namespace A101289.P14073349812251571662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A051745 d - (d : ℤ))

end

end A101289.P14073349812251571662

namespace A101289

/-- `∑{d}[n+1, A051745(#)-#]` -/
def P14073349812251571662.Spec : Prop :=
  ∀ n, P14073349812251571662.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P9932977900206402672

`A363606(n+1)+A073570(n+1)`
-/

namespace A101289.P9932977900206402672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363606 (n + 1) + A073570 (n + 1)

end

end A101289.P9932977900206402672

namespace A101289

/-- `A363606(n+1)+A073570(n+1)` -/
def P9932977900206402672.Spec : Prop :=
  ∀ n, P9932977900206402672.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P9810540877938996176

`A363696(n+1)-A363695(n+1)`
-/

namespace A101289.P9810540877938996176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363696 (n + 1) - A363695 (n + 1)

end

end A101289.P9810540877938996176

namespace A101289

/-- `A363696(n+1)-A363695(n+1)` -/
def P9810540877938996176.Spec : Prop :=
  ∀ n, P9810540877938996176.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P17938447655301693553

`∑{d}[n+1, A023900(#)*A343546((n+1)/#)]`
-/

namespace A101289.P17938447655301693553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A343546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101289.P17938447655301693553

namespace A101289

/-- `∑{d}[n+1, A023900(#)*A343546((n+1)/#)]` -/
def P17938447655301693553.Spec : Prop :=
  ∀ n, P17938447655301693553.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P6906570213342803285

`∑{d}[n+1, A130054(#)*A343519((n+1)/#)]`
-/

namespace A101289.P6906570213342803285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A343519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101289.P6906570213342803285

namespace A101289

/-- `∑{d}[n+1, A130054(#)*A343519((n+1)/#)]` -/
def P6906570213342803285.Spec : Prop :=
  ∀ n, P6906570213342803285.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P17072721617605111146

`A363606(n+1)+A363695(n+1)-A116963(n+1)`
-/

namespace A101289.P17072721617605111146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363606 (n + 1) + (A363695 (n + 1) - A116963 (n + 1))

end

end A101289.P17072721617605111146

namespace A101289

/-- `A363606(n+1)+A363695(n+1)-A116963(n+1)` -/
def P17072721617605111146.Spec : Prop :=
  ∀ n, P17072721617605111146.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P11500088103205859333

`∑{d}[n+1, A145127(#)-(#+1)]`
-/

namespace A101289.P11500088103205859333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A145127 d - (d + 1 : ℤ))

end

end A101289.P11500088103205859333

namespace A101289

/-- `∑{d}[n+1, A145127(#)-(#+1)]` -/
def P11500088103205859333.Spec : Prop :=
  ∀ n, P11500088103205859333.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P9203994731138903822

`∑{d}[n+1, A000389(#+4)]`
-/

namespace A101289.P9203994731138903822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000389 (d + 4)

end

end A101289.P9203994731138903822

namespace A101289

/-- `∑{d}[n+1, A000389(#+4)]` -/
def P9203994731138903822.Spec : Prop :=
  ∀ n, P9203994731138903822.a n = A101289 (n + 1)

end A101289

/-! ## A101289.P17485926968681708472

`∑{d}[n+1, A104712(A167499(#)+#+2)]`
-/

namespace A101289.P17485926968681708472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104712 (A167499 d + (d : ℤ) + 2).toNat

end

end A101289.P17485926968681708472

namespace A101289

/-- `∑{d}[n+1, A104712(A167499(#)+#+2)]` -/
def P17485926968681708472.Spec : Prop :=
  ∀ n, P17485926968681708472.a n = A101289 (n + 1)

end A101289

/-!
# A101291: Sum of all numbers with n digits.

The programs for A101291, there is no canonical definition to state claims against.
-/

/-! ## A101291.P12951843860906447540

`Δ[(10^n+(1-10^n)²)/2]`
-/

namespace A101291.P12951843860906447540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) + (1 - (10 ^ n : ℤ)) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101291.P12951843860906447540

/-! ## A101291.P409194020542611379

`Δ[A168624(n)]/2`
-/

namespace A101291.P409194020542611379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168624 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A101291.P409194020542611379

/-! ## A101291.P10617455648957768051

`Δ[A276352(n)]/2`
-/

namespace A101291.P10617455648957768051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276352 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A101291.P10617455648957768051

/-! ## A101291.P405071303360859687

`A232730(2*(n+1))`
-/

namespace A101291.P405071303360859687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232730 (2 * (n + 1))

end

end A101291.P405071303360859687

/-! ## A101291.P9382713379314674592

`A037182(n+1)-A037182(n)`
-/

namespace A101291.P9382713379314674592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037182 (n + 1) - A037182 n

end

end A101291.P9382713379314674592

/-! ## A101291.P16619768945727781192

`Δ[A011557(n)+A002283(n)²]/2`
-/

namespace A101291.P16619768945727781192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A002283 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A101291.P16619768945727781192

/-! ## A101291.P3326671905201471197

`Δ[A011557(2*n)-A002283(n)]/2`
-/

namespace A101291.P3326671905201471197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (2 * n) - A002283 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A101291.P3326671905201471197

/-!
# A101292: a(n) = n! + Sum_{i=1..n} i.

The programs for A101292, the canonical program `A101292.P8814452170744388183` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101292 has offset 0).

The definition of A101292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101292.P8814452170744388183

`n!+n*(n+1)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A101292

/-- `n!+n*(n+1)/2` -/
def P8814452170744388183.Spec : Prop :=
  ∀ n, P8814452170744388183.a n = (A101292 n : ℚ)

end A101292

/-! ## A101292.P16496227945849669180

`∑[n]+n!`
-/

namespace A101292.P16496227945849669180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n

end

end A101292.P16496227945849669180

namespace A101292

/-- `∑[n]+n!` -/
def P16496227945849669180.Spec : Prop :=
  ∀ n, (P16496227945849669180.a n : ℤ) = A101292 n

end A101292

/-! ## A101292.P13590591279337197817

`C(n, 2)+n!+n`
-/

namespace A101292.P13590591279337197817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (Nat.factorial n + n)

end

end A101292.P13590591279337197817

namespace A101292

/-- `C(n, 2)+n!+n` -/
def P13590591279337197817.Spec : Prop :=
  ∀ n, (P13590591279337197817.a n : ℤ) = A101292 n

end A101292

/-! ## A101292.P5639143749725211957

`n²-(C(n, 2)-n!)`
-/

namespace A101292.P5639143749725211957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - (Nat.factorial n : ℤ))

end

end A101292.P5639143749725211957

namespace A101292

/-- `n²-(C(n, 2)-n!)` -/
def P5639143749725211957.Spec : Prop :=
  ∀ n, P5639143749725211957.a n = A101292 n

end A101292

/-! ## A101292.P10788989040635638934

`∏[round(1/acot(n))]+∑[n]`
-/

namespace A101292.P10788989040635638934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A101292.P10788989040635638934

namespace A101292

/-- `∏[round(1/acot(n))]+∑[n]` -/
def P10788989040635638934.Spec : Prop :=
  ∀ n, P10788989040635638934.a n = A101292 n

end A101292

/-! ## A101292.P3930910314139884372

`∑[2*n]-(∑[n]-n!)`
-/

namespace A101292.P3930910314139884372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.factorial n : ℤ))

end

end A101292.P3930910314139884372

namespace A101292

/-- `∑[2*n]-(∑[n]-n!)` -/
def P3930910314139884372.Spec : Prop :=
  ∀ n, P3930910314139884372.a n = A101292 n

end A101292

/-! ## A101292.P11575476482645554935

`∑[Δ[(n-1)*a(n-1)]+n]` with `a(0)=0, a(1)=1`
-/

namespace A101292.P11575476482645554935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  ((n : ℤ) - 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101292.P11575476482645554935

namespace A101292

/-- `∑[Δ[(n-1)*a(n-1)]+n]` -/
def P11575476482645554935.Spec : Prop :=
  ∀ n, P11575476482645554935.a n = A101292 n

end A101292

/-! ## A101292.P10967067103754222964

`A114311(n)+n²`
-/

namespace A101292.P10967067103754222964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114311 n + (n ^ 2 : ℤ)

end

end A101292.P10967067103754222964

namespace A101292

/-- `A114311(n)+n²` -/
def P10967067103754222964.Spec : Prop :=
  ∀ n, P10967067103754222964.a n = A101292 n

end A101292

/-! ## A101292.P6279156517280401971

`A000142(n)+∑[n]`
-/

namespace A101292.P6279156517280401971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101292.P6279156517280401971

namespace A101292

/-- `A000142(n)+∑[n]` -/
def P6279156517280401971.Spec : Prop :=
  ∀ n, P6279156517280401971.a n = A101292 n

end A101292

/-!
# A101293: a(n) = Lucas(n!).

The programs for A101293, the canonical program `A101293.P7887106159499828766` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101293 has offset 0).

The definition of A101293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101293.P7887106159499828766

`A000032(A000142(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101293

/-- `A000032(A000142(n))` -/
def P7887106159499828766.Spec : Prop :=
  ∀ n, P7887106159499828766.a n = A101293 n

theorem P7887106159499828766.correct : P7887106159499828766.Spec := by
  intro n
  simp only [A101293]

end A101293

/-!
# A101294: Numbers n such that omega(n-2) = omega(n-1) = omega(n) = omega(n+1) = omega(n+2).

The programs for A101294, the canonical program `A101294.P5526318434462091228` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101294 has offset 1).

The definition of A101294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101294.P5526318434462091228

`A045933(n+1)+2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A101294

/-- `A045933(n+1)+2` -/
def P5526318434462091228.Spec : Prop :=
  ∀ n, P5526318434462091228.a n = A101294 (n + 1)

theorem P5526318434462091228.correct : P5526318434462091228.Spec := by
  intro n
  simp only [A101294, Nat.add_sub_cancel]

end A101294

/-! ## A101294.P3966138365837376669

`∩[A045932(n+1)+1, A045932(n+1)]+1`
-/

namespace A101294.P3966138365837376669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A101294.P3966138365837376669

namespace A101294

/-- `∩[A045932(n+1)+1, A045932(n+1)]+1` -/
def P3966138365837376669.Spec : Prop :=
  ∀ n, (P3966138365837376669.a n : ℤ) = A101294 (n + 1)

end A101294

/-! ## A101294.P11469632554965072219

`A045932(eq[1, A045932(n+2)-A045932(n+1)]+1)+2`
-/

namespace A101294.P11469632554965072219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (n + 2) - A045932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 2

end

end A101294.P11469632554965072219

namespace A101294

/-- `A045932(eq[1, A045932(n+2)-A045932(n+1)]+1)+2` -/
def P11469632554965072219.Spec : Prop :=
  ∀ n, P11469632554965072219.a n = A101294 (n + 1)

end A101294

/-! ## A101294.P8989492588221296164

`∩[A006073(n+1)+2, A006073(n+1)]`
-/

namespace A101294.P8989492588221296164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101294.P8989492588221296164

namespace A101294

/-- `∩[A006073(n+1)+2, A006073(n+1)]` -/
def P8989492588221296164.Spec : Prop :=
  ∀ n, (P8989492588221296164.a n : ℤ) = A101294 (n + 1)

end A101294

/-! ## A101294.P18216394310785181468

`A009056(A045933(n+1))`
-/

namespace A101294.P18216394310785181468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A045933 (n + 1)).toNat

end

end A101294.P18216394310785181468

namespace A101294

/-- `A009056(A045933(n+1))` -/
def P18216394310785181468.Spec : Prop :=
  ∀ n, P18216394310785181468.a n = A101294 (n + 1)

end A101294

/-! ## A101294.P16768711022271556148

`A023443(∩[A101932(n+1)+2, A101932(n+1)])`
-/

namespace A101294.P16768711022271556148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A101294.P16768711022271556148

namespace A101294

/-- `A023443(∩[A101932(n+1)+2, A101932(n+1)])` -/
def P16768711022271556148.Spec : Prop :=
  ∀ n, P16768711022271556148.a n = A101294 (n + 1)

end A101294

/-!
# A101295: Number of partitions of n!.

The programs for A101295, there is no canonical definition to state claims against.
-/

/-! ## A101295.P6345601809016835044

`A000041(A000142(n))`
-/

namespace A101295.P6345601809016835044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000142 n).toNat

end

end A101295.P6345601809016835044

/-! ## A101295.P11356654522711570350

`A000041(n!)`
-/

namespace A101295.P11356654522711570350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.factorial n)

end

end A101295.P11356654522711570350

/-! ## A101295.P13789087899361129379

`A000065(n!)+1`
-/

namespace A101295.P13789087899361129379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (Nat.factorial n) + 1

end

end A101295.P13789087899361129379

/-! ## A101295.P10853536193992607746

`A000041(∏[round(1/acot(n))])`
-/

namespace A101295.P10853536193992607746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101295.P10853536193992607746

/-!
# A101296: n has the a(n)-th distinct prime signature.

The programs for A101296, there is no canonical definition to state claims against.
-/

/-! ## A101296.P3911532869532029091

`A320110(2*(n+1))-1`
-/

namespace A101296.P3911532869532029091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320110 (2 * (n + 1)) - 1

end

end A101296.P3911532869532029091

/-! ## A101296.P6771049458212238707

`A085089(A046523(n+1))`
-/

namespace A101296.P6771049458212238707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A046523 (n + 1)).toNat

end

end A101296.P6771049458212238707

/-! ## A101296.P13490278865113495494

`A361808(A181819(n+1))`
-/

namespace A101296.P13490278865113495494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A181819 (n + 1)).toNat

end

end A101296.P13490278865113495494

/-! ## A101296.P7759285520541344004

`A002260(A286566(n+1))`
-/

namespace A101296.P7759285520541344004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286566 (n + 1)).toNat

end

end A101296.P7759285520541344004

/-! ## A101296.P4285687814866163966

`A002260(A286467(n+1))`
-/

namespace A101296.P4285687814866163966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286467 (n + 1)).toNat

end

end A101296.P4285687814866163966

/-! ## A101296.P5432968408531976596

`A002260(A286454(n+1))`
-/

namespace A101296.P5432968408531976596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286454 (n + 1)).toNat

end

end A101296.P5432968408531976596

/-! ## A101296.P15794313519449696456

`A004736(A289628(n+1))`
-/

namespace A101296.P15794313519449696456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A289628 (n + 1)).toNat

end

end A101296.P15794313519449696456

/-! ## A101296.P7683387144903912409

`A144328(A286454(n+1)+1)`
-/

namespace A101296.P7683387144903912409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A286454 (n + 1) + 1).toNat

end

end A101296.P7683387144903912409

/-! ## A101296.P12025489225468562924

`A002260(A291752(n+1))`
-/

namespace A101296.P12025489225468562924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A291752 (n + 1)).toNat

end

end A101296.P12025489225468562924

/-! ## A101296.P7201573014391075941

`A144328(A291752(n+1)+1)`
-/

namespace A101296.P7201573014391075941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A291752 (n + 1) + 1).toNat

end

end A101296.P7201573014391075941

/-! ## A101296.P17022062362194401670

`A329901(A238745(n+1))`
-/

namespace A101296.P17022062362194401670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A238745 (n + 1)).toNat

end

end A101296.P17022062362194401670

/-!
# A101297: Bisection of A001622 (decimal expansion of the golden ratio).

The programs for A101297, there is no canonical definition to state claims against.
-/

/-! ## A101297.P17593421495956097866

`A001622(2*n)`
-/

namespace A101297.P17593421495956097866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (2 * n + 1)

end

end A101297.P17593421495956097866

/-! ## A101297.P15617703233032571

`dr(A001622(n+n))`
-/

namespace A101297.P15617703233032571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001622 (n + n + 1))

end

end A101297.P15617703233032571

/-! ## A101297.P2028011401056839484

`A094214(abs(1-2*n))`
-/

namespace A101297.P2028011401056839484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 |1 - (2 * n : ℤ)|.toNat

end

end A101297.P2028011401056839484

/-! ## A101297.P7112971455176867302

`A001622(eq[n, lcm(2, n)])%10`
-/

namespace A101297.P7112971455176867302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001622 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)) 10

end

end A101297.P7112971455176867302

/-! ## A101297.P2816543226795815558

`A001622(A005843(n))%10`
-/

namespace A101297.P2816543226795815558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001622 ((A005843 n).toNat + 1)) 10

end

end A101297.P2816543226795815558

/-! ## A101297.P7761478196560298124

`A001622(A004277(n))^floor(atan(n))`
-/

namespace A101297.P7761478196560298124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001622 ((A004277 n).toNat + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A101297.P7761478196560298124

/-! ## A101297.P10717485848741769491

`A005926(A005926(n))+A001622(n+n)`
-/

namespace A101297.P10717485848741769491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 (A005926 n).toNat + A001622 (n + n + 1)

end

end A101297.P10717485848741769491

/-! ## A101297.P16896657146978240169

`A020837(2*n)`
-/

namespace A101297.P16896657146978240169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 (2 * n)

end

end A101297.P16896657146978240169

/-! ## A101297.P15914827934326539857

`9-A109866(2*n+1)`
-/

namespace A101297.P15914827934326539857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A109866 (2 * n + 1)

end

end A101297.P15914827934326539857

/-! ## A101297.P8178359399725736107

`A104457(2*n)-floor(acot(n))`
-/

namespace A101297.P8178359399725736107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (2 * n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A101297.P8178359399725736107

/-! ## A101297.P7482395467134534415

`A104457(abs(1-n)+n+1)`
-/

namespace A101297.P7482395467134534415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat + 1)

end

end A101297.P7482395467134534415

/-! ## A101297.P5580074761372180092

`A296184(A289207(2*n)+2)`
-/

namespace A101297.P5580074761372180092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 ((A289207 (2 * n) + 2).toNat + 1)

end

end A101297.P5580074761372180092

/-! ## A101297.P11657178772418659338

`A104457(2*n)-A000007(n)`
-/

namespace A101297.P11657178772418659338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (2 * n + 1) - A000007 n

end

end A101297.P11657178772418659338

/-! ## A101297.P11328893969985192523

`A296184(2*n)-A000038(n)`
-/

namespace A101297.P11328893969985192523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 (2 * n + 1) - A000038 n

end

end A101297.P11328893969985192523

/-! ## A101297.P13160852646019644026

`A104457(2*n)/A054977(n)`
-/

namespace A101297.P13160852646019644026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104457 (2 * n + 1) : ℚ) / (A054977 n : ℚ)

end

end A101297.P13160852646019644026

/-! ## A101297.P5279186598679553743

`A104457(2*n)-A084099(2*n)`
-/

namespace A101297.P5279186598679553743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (2 * n + 1) - A084099 (2 * n)

end

end A101297.P5279186598679553743

/-! ## A101297.P3869179566286889747

`2*A104457(2*n)-A296184(2*n)`
-/

namespace A101297.P3869179566286889747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104457 (2 * n + 1) - A296184 (2 * n + 1)

end

end A101297.P3869179566286889747

/-! ## A101297.P16825035981389291044

`A104457(2*n)-A341629(A161705(n))`
-/

namespace A101297.P16825035981389291044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (2 * n + 1) - A341629 (A161705 n).toNat

end

end A101297.P16825035981389291044

/-! ## A101297.P16872924447973662713

`A020837(A005843(n))+A007949(A016777(n))`
-/

namespace A101297.P16872924447973662713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 (A005843 n).toNat + A007949 (A016777 n).toNat

end

end A101297.P16872924447973662713

/-! ## A101297.P9968107284752719673

`A001622(A029578(A008586(n)))%70`
-/

namespace A101297.P9968107284752719673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001622 ((A029578 (A008586 n).toNat).toNat + 1)) 70

end

end A101297.P9968107284752719673

/-!
# A101298: Bisection of A098801 (decimal expansion of Pi + 1/Pi).

The programs for A101298, there is no canonical definition to state claims against.
-/

/-! ## A101298.P3031346135313452856

`A098801(2*n)`
-/

namespace A101298.P3031346135313452856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098801 (2 * n + 1)

end

end A101298.P3031346135313452856

/-! ## A101298.P6507104857535229532

`dr(A098801(record[A014681(n)]))`
-/

namespace A101298.P6507104857535229532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098801 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1))

end

end A101298.P6507104857535229532

/-! ## A101298.P15883784609697944752

`dr(A098801(A014681(A004273(n))))`
-/

namespace A101298.P15883784609697944752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098801 ((A014681 (A004273 n).toNat).toNat + 1))

end

end A101298.P15883784609697944752

/-! ## A101298.P10761956621815101253

`dr(A098801(A052928(A005408(n))))`
-/

namespace A101298.P10761956621815101253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098801 ((A052928 (A005408 n).toNat).toNat + 1))

end

end A101298.P10761956621815101253

/-! ## A101298.P11903913139427835349

`A098801(A005843(n))/A286852(A000040(n+1))`
-/

namespace A101298.P11903913139427835349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098801 ((A005843 n).toNat + 1) : ℚ) / (A286852 (A000040 (n + 1)).toNat : ℚ)

end

end A101298.P11903913139427835349

/-!
# A101299: Numbers n such that -1 + Sum_{x=1..n} phi(x) is a prime number.

The programs for A101299, there is no canonical definition to state claims against.
-/

/-! ## A101299.P9237929821882750791

`eq[2, ∑{e}[4-A049632(n), #]]`
-/

namespace A101299.P9237929821882750791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A049632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101299.P9237929821882750791

/-! ## A101299.P15913035385023711376

`A038567(A085918(n+1))`
-/

namespace A101299.P15913035385023711376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A085918 (n + 1)).toNat

end

end A101299.P15913035385023711376

/-! ## A101299.P643336810877302024

`eq[3, A077982(A002088(n))]`
-/

namespace A101299.P643336810877302024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A002088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101299.P643336810877302024

/-! ## A101299.P5290398782319661835

`A038567(p?[A015614(n+1)])`
-/

namespace A101299.P5290398782319661835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A101299.P5290398782319661835

/-! ## A101299.P8830395055546187235

`A038567(p?[A002088(n)-1])`
-/

namespace A101299.P8830395055546187235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A101299.P8830395055546187235

/-! ## A101299.P7594466023865641304

`A038567(p?[A005728(n)-2])`
-/

namespace A101299.P7594466023865641304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A101299.P7594466023865641304

/-! ## A101299.P8686584539263748001

`A020653(p?[A015614(n+1)]+1)`
-/

namespace A101299.P8686584539263748001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A101299.P8686584539263748001

/-! ## A101299.P13078818863947639293

`eq[2, A000005(A015614(n+2))]+2`
-/

namespace A101299.P13078818863947639293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A015614 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A101299.P13078818863947639293

/-! ## A101299.P207280931851589651

`eq[2, A000005(∑[A000010(n+2)])]+2`
-/

namespace A101299.P207280931851589651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A101299.P207280931851589651

/-! ## A101299.P17334680646595504973

`eq[1, A001222(A049643(n+2)-2)]+2`
-/

namespace A101299.P17334680646595504973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049643 (n + 2) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A101299.P17334680646595504973

