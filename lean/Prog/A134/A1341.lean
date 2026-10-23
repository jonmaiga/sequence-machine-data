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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A134100: Primes p > 3 such that neither p-2 nor p-4 are prime.

The programs for A134100, the canonical program `A134100.P16893923253376579022` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134100 has offset 1).

The definition of A134100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134100.P16893923253376579022

`∩[A025584(n+1), A067833(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A134100

/-- `∩[A025584(n+1), A067833(n+1)]` -/
def P16893923253376579022.Spec : Prop :=
  ∀ n, (P16893923253376579022.a n : ℤ) = A134100 (n + 1)

theorem P16893923253376579022.correct : P16893923253376579022.Spec := by
  intro n
  simp only [A134100, Nat.add_sub_cancel]

end A134100

/-! ## A134100.P12784251914855949467

`∩[A067833(n+1), A156828(n+1)]`
-/

namespace A134100.P12784251914855949467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134100.P12784251914855949467

namespace A134100

/-- `∩[A067833(n+1), A156828(n+1)]` -/
def P12784251914855949467.Spec : Prop :=
  ∀ n, (P12784251914855949467.a n : ℤ) = A134100 (n + 1)

end A134100

/-! ## A134100.P16343659762295536665

`A045319(lt[1, A100820(n+1)]+1)`
-/

namespace A134100.P16343659762295536665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A134100.P16343659762295536665

namespace A134100

/-- `A045319(lt[1, A100820(n+1)]+1)` -/
def P16343659762295536665.Spec : Prop :=
  ∀ n, P16343659762295536665.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P9214103541669019058

`A065091(lt[1, A100820(n+1)]+1)`
-/

namespace A134100.P9214103541669019058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A134100.P9214103541669019058

namespace A134100

/-- `A065091(lt[1, A100820(n+1)]+1)` -/
def P9214103541669019058.Spec : Prop :=
  ∀ n, P9214103541669019058.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P7053220554921934752

`A045319(lt[4, A054541(n+1)])`
-/

namespace A134100.P7053220554921934752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134100.P7053220554921934752

namespace A134100

/-- `A045319(lt[4, A054541(n+1)])` -/
def P7053220554921934752.Spec : Prop :=
  ∀ n, P7053220554921934752.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P2713838790455769754

`A045344(lt[4, A054541(n+1)])`
-/

namespace A134100.P2713838790455769754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134100.P2713838790455769754

namespace A134100

/-- `A045344(lt[4, A054541(n+1)])` -/
def P2713838790455769754.Spec : Prop :=
  ∀ n, P2713838790455769754.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P9461174407157187167

`A065091(lt[4, A054541(n+1)])`
-/

namespace A134100.P9461174407157187167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134100.P9461174407157187167

namespace A134100

/-- `A065091(lt[4, A054541(n+1)])` -/
def P9461174407157187167.Spec : Prop :=
  ∀ n, P9461174407157187167.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P8836491198981086687

`A045344(lt[4, A125266(n+1)])`
-/

namespace A134100.P8836491198981086687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134100.P8836491198981086687

namespace A134100

/-- `A045344(lt[4, A125266(n+1)])` -/
def P8836491198981086687.Spec : Prop :=
  ∀ n, P8836491198981086687.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P1105831214178632547

`A000040(lt[4, A054541(n+1)]+1)`
-/

namespace A134100.P1105831214178632547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A134100.P1105831214178632547

namespace A134100

/-- `A000040(lt[4, A054541(n+1)]+1)` -/
def P1105831214178632547.Spec : Prop :=
  ∀ n, P1105831214178632547.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P16324660452604022079

`A000040(lt[5, A076368(n+1)]+1)`
-/

namespace A134100.P16324660452604022079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A134100.P16324660452604022079

namespace A134100

/-- `A000040(lt[5, A076368(n+1)]+1)` -/
def P16324660452604022079.Spec : Prop :=
  ∀ n, P16324660452604022079.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P1147567992769385795

`A000040(lt[3, A001223(n+1)-1]+2)`
-/

namespace A134100.P1147567992769385795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A134100.P1147567992769385795

namespace A134100

/-- `A000040(lt[3, A001223(n+1)-1]+2)` -/
def P1147567992769385795.Spec : Prop :=
  ∀ n, P1147567992769385795.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P5862512903751064910

`∩[A067833(n+1), A100962(n+1)]`
-/

namespace A134100.P5862512903751064910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134100.P5862512903751064910

namespace A134100

/-- `∩[A067833(n+1), A100962(n+1)]` -/
def P5862512903751064910.Spec : Prop :=
  ∀ n, (P5862512903751064910.a n : ℤ) = A134100 (n + 1)

end A134100

/-! ## A134100.P5859140948174830473

`p?[A025583(n+1)+2]`
-/

namespace A134100.P5859140948174830473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134100.P5859140948174830473

namespace A134100

/-- `p?[A025583(n+1)+2]` -/
def P5859140948174830473.Spec : Prop :=
  ∀ n, P5859140948174830473.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P14333711541163376311

`p?[A298366(n+1)-1]`
-/

namespace A134100.P14333711541163376311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134100.P14333711541163376311

namespace A134100

/-- `p?[A298366(n+1)-1]` -/
def P14333711541163376311.Spec : Prop :=
  ∀ n, P14333711541163376311.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P10058456388703012968

`p?[2*(A104278(n+1)+1)+1]`
-/

namespace A134100.P10058456388703012968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104278 (n + 1) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134100.P10058456388703012968

namespace A134100

/-- `p?[2*(A104278(n+1)+1)+1]` -/
def P10058456388703012968.Spec : Prop :=
  ∀ n, P10058456388703012968.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P9670877810295728949

`record[A006530(A025583(n+1)+2)]`
-/

namespace A134100.P9670877810295728949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025583 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134100.P9670877810295728949

namespace A134100

/-- `record[A006530(A025583(n+1)+2)]` -/
def P9670877810295728949.Spec : Prop :=
  ∀ n, P9670877810295728949.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P17140063465579503379

`record[A020639(A025583(n+1)+2)]`
-/

namespace A134100.P17140063465579503379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025583 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134100.P17140063465579503379

namespace A134100

/-- `record[A020639(A025583(n+1)+2)]` -/
def P17140063465579503379.Spec : Prop :=
  ∀ n, P17140063465579503379.a n = A134100 (n + 1)

end A134100

/-! ## A134100.P14617410272612411402

`∩[A025583(n+1), A040976(n+1)]+2`
-/

namespace A134100.P14617410272612411402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A134100.P14617410272612411402

namespace A134100

/-- `∩[A025583(n+1), A040976(n+1)]+2` -/
def P14617410272612411402.Spec : Prop :=
  ∀ n, (P14617410272612411402.a n : ℤ) = A134100 (n + 1)

end A134100

/-! ## A134100.P5801207732844482910

`∩[A025583(n+1), A179384(n+1)]+2`
-/

namespace A134100.P5801207732844482910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A134100.P5801207732844482910

namespace A134100

/-- `∩[A025583(n+1), A179384(n+1)]+2` -/
def P5801207732844482910.Spec : Prop :=
  ∀ n, (P5801207732844482910.a n : ℤ) = A134100 (n + 1)

end A134100

/-! ## A134100.P15366159400911735187

`∩[A025583(n+1), A238526(n+1)]+2`
-/

namespace A134100.P15366159400911735187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A134100.P15366159400911735187

namespace A134100

/-- `∩[A025583(n+1), A238526(n+1)]+2` -/
def P15366159400911735187.Spec : Prop :=
  ∀ n, (P15366159400911735187.a n : ℤ) = A134100 (n + 1)

end A134100

/-!
# A134101: Odd nonprimes such that the prior odd number is not a prime but the next odd number is a prime.

The programs for A134101, the canonical program `A134101.P17113264373539567206` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134101 has offset 1).

The definition of A134101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134101.P11876949834057101072

`A134100(n+1)-2`
-/

namespace A134101.P11876949834057101072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1) - 2

end

end A134101.P11876949834057101072

namespace A134101

/-- `A134100(n+1)-2` -/
def P11876949834057101072.Spec : Prop :=
  ∀ n, P11876949834057101072.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P12465253406444066859

`p?[A025583(n+1)+2]-2`
-/

namespace A134101.P12465253406444066859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A134101.P12465253406444066859

namespace A134101

/-- `p?[A025583(n+1)+2]-2` -/
def P12465253406444066859.Spec : Prop :=
  ∀ n, P12465253406444066859.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P10406890632785759425

`p?[A109934(n+1)+2]-2`
-/

namespace A134101.P10406890632785759425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A134101.P10406890632785759425

namespace A134101

/-- `p?[A109934(n+1)+2]-2` -/
def P10406890632785759425.Spec : Prop :=
  ∀ n, P10406890632785759425.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P4396373033801961473

`p?[A264721(n+1)+2]-2`
-/

namespace A134101.P4396373033801961473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264721 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A134101.P4396373033801961473

namespace A134101

/-- `p?[A264721(n+1)+2]-2` -/
def P4396373033801961473.Spec : Prop :=
  ∀ n, P4396373033801961473.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P17355734524769659205

`p?[A298366(n+1)-1]-2`
-/

namespace A134101.P17355734524769659205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A134101.P17355734524769659205

namespace A134101

/-- `p?[A298366(n+1)-1]-2` -/
def P17355734524769659205.Spec : Prop :=
  ∀ n, P17355734524769659205.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P10573844562626972000

`p?[A099047(n+1)+3]-2`
-/

namespace A134101.P10573844562626972000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A134101.P10573844562626972000

namespace A134101

/-- `p?[A099047(n+1)+3]-2` -/
def P10573844562626972000.Spec : Prop :=
  ∀ n, P10573844562626972000.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P4021362361557697422

`A119257(A134099(n+1))`
-/

namespace A134101.P4021362361557697422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (A134099 (n + 1)).toNat

end

end A134101.P4021362361557697422

namespace A134101

/-- `A119257(A134099(n+1))` -/
def P4021362361557697422.Spec : Prop :=
  ∀ n, P4021362361557697422.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P13178312091889937544

`A337544(A083370(n+1))`
-/

namespace A134101.P13178312091889937544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A083370 (n + 1)).toNat

end

end A134101.P13178312091889937544

namespace A134101

/-- `A337544(A083370(n+1))` -/
def P13178312091889937544.Spec : Prop :=
  ∀ n, P13178312091889937544.a n = A134101 (n + 1)

end A134101

/-! ## A134101.P17113264373539567206

`A040976(lt[4, A001223(n+1)]+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134101

/-- `A040976(lt[4, A001223(n+1)]+2)` -/
def P17113264373539567206.Spec : Prop :=
  ∀ n, P17113264373539567206.a n = A134101 (n + 1)

theorem P17113264373539567206.correct : P17113264373539567206.Spec := by
  intro n
  simp only [A134101, Nat.add_sub_cancel]

end A134101

/-! ## A134101.P8160556473612311006

`∩[A025583(n+1), A030173(n+1)]`
-/

namespace A134101.P8160556473612311006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P8160556473612311006

namespace A134101

/-- `∩[A025583(n+1), A030173(n+1)]` -/
def P8160556473612311006.Spec : Prop :=
  ∀ n, (P8160556473612311006.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P5242439156420014800

`∩[A025583(n+1), A040976(n+1)]`
-/

namespace A134101.P5242439156420014800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P5242439156420014800

namespace A134101

/-- `∩[A025583(n+1), A040976(n+1)]` -/
def P5242439156420014800.Spec : Prop :=
  ∀ n, (P5242439156420014800.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P5018416466446840476

`∩[A040976(n+1), A072492(n+1)]`
-/

namespace A134101.P5018416466446840476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P5018416466446840476

namespace A134101

/-- `∩[A040976(n+1), A072492(n+1)]` -/
def P5018416466446840476.Spec : Prop :=
  ∀ n, (P5018416466446840476.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P13761067482108365706

`∩[A040976(n+1), A109934(n+1)]`
-/

namespace A134101.P13761067482108365706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P13761067482108365706

namespace A134101

/-- `∩[A040976(n+1), A109934(n+1)]` -/
def P13761067482108365706.Spec : Prop :=
  ∀ n, (P13761067482108365706.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P1575953806370193741

`∩[A014092(n+1), A160666(n+1)]`
-/

namespace A134101.P1575953806370193741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P1575953806370193741

namespace A134101

/-- `∩[A014092(n+1), A160666(n+1)]` -/
def P1575953806370193741.Spec : Prop :=
  ∀ n, (P1575953806370193741.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P11851349255871188051

`∩[A025583(n+1), A160666(n+1)]`
-/

namespace A134101.P11851349255871188051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P11851349255871188051

namespace A134101

/-- `∩[A025583(n+1), A160666(n+1)]` -/
def P11851349255871188051.Spec : Prop :=
  ∀ n, (P11851349255871188051.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P8859040446508148554

`∩[A025583(n+1), A169606(n+1)]`
-/

namespace A134101.P8859040446508148554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P8859040446508148554

namespace A134101

/-- `∩[A025583(n+1), A169606(n+1)]` -/
def P8859040446508148554.Spec : Prop :=
  ∀ n, (P8859040446508148554.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P16470165564288365542

`∩[A025583(n+1), A179384(n+1)]`
-/

namespace A134101.P16470165564288365542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P16470165564288365542

namespace A134101

/-- `∩[A025583(n+1), A179384(n+1)]` -/
def P16470165564288365542.Spec : Prop :=
  ∀ n, (P16470165564288365542.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P12683223158738324493

`∩[A072492(n+1), A179384(n+1)]`
-/

namespace A134101.P12683223158738324493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P12683223158738324493

namespace A134101

/-- `∩[A072492(n+1), A179384(n+1)]` -/
def P12683223158738324493.Spec : Prop :=
  ∀ n, (P12683223158738324493.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P3570824255713925751

`∩[A025583(n+1), A238526(n+1)]`
-/

namespace A134101.P3570824255713925751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P3570824255713925751

namespace A134101

/-- `∩[A025583(n+1), A238526(n+1)]` -/
def P3570824255713925751.Spec : Prop :=
  ∀ n, (P3570824255713925751.a n : ℤ) = A134101 (n + 1)

end A134101

/-! ## A134101.P11141157734809169129

`∩[A109934(n+1), A160666(n+1)]`
-/

namespace A134101.P11141157734809169129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134101.P11141157734809169129

namespace A134101

/-- `∩[A109934(n+1), A160666(n+1)]` -/
def P11141157734809169129.Spec : Prop :=
  ∀ n, (P11141157734809169129.a n : ℤ) = A134101 (n + 1)

end A134101

/-!
# A134107: Complete list of solutions to y^2 = x^3 - 207; sequence gives x values.

The programs for A134107, there is no canonical definition to state claims against.
-/

/-! ## A134107.P502617644057377001

`∑[A344608(A001471(n+1))+6]`
-/

namespace A134107.P502617644057377001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344608 (A001471 (n + 1)).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134107.P502617644057377001

/-!
# A134108: Number of integral solutions with nonnegative y to Mordell's equation y^2 = x^3 + n.

The programs for A134108, there is no canonical definition to state claims against.
-/

/-! ## A134108.P154425604407467928

`ceil(A081119(n+1)/2)`
-/

namespace A134108.P154425604407467928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081119 (n + 1) : ℚ) / 2⌉

end

end A134108.P154425604407467928

/-! ## A134108.P1633214583070771125

`A110654(A081119(n+1))`
-/

namespace A134108.P1633214583070771125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A081119 (n + 1)).toNat

end

end A134108.P1633214583070771125

/-! ## A134108.P4829699691419474563

`A004526(A081119(n+1)+1)`
-/

namespace A134108.P4829699691419474563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081119 (n + 1) + 1).toNat

end

end A134108.P4829699691419474563

/-! ## A134108.P15358125050168741329

`A123108(A081119(n+1)+1)`
-/

namespace A134108.P15358125050168741329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081119 (n + 1) + 1).toNat

end

end A134108.P15358125050168741329

/-! ## A134108.P4595231345117272752

`A110655(2*A081119(n+1))`
-/

namespace A134108.P4595231345117272752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A081119 (n + 1)).toNat

end

end A134108.P4595231345117272752

/-! ## A134108.P18398563341381825398

`A300763(2*A081119(n+1))`
-/

namespace A134108.P18398563341381825398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (2 * A081119 (n + 1)).toNat

end

end A134108.P18398563341381825398

/-! ## A134108.P13650169386052224412

`floor(A109613(2*A081119(n+1)+2)/4)`
-/

namespace A134108.P13650169386052224412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109613 (2 * A081119 (n + 1) + 2).toNat : ℚ) / 4⌋

end

end A134108.P13650169386052224412

/-!
# A134109: Number of integral solutions with nonnegative y to Mordell's equation y^2 = x^3 - n.

The programs for A134109, there is no canonical definition to state claims against.
-/

/-! ## A134109.P2667548307701732081

`ceil(A081120(n+1)/2)`
-/

namespace A134109.P2667548307701732081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081120 (n + 1) : ℚ) / 2⌉

end

end A134109.P2667548307701732081

/-! ## A134109.P7593162045634347945

`A110654(A081120(n+1))`
-/

namespace A134109.P7593162045634347945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A081120 (n + 1)).toNat

end

end A134109.P7593162045634347945

/-! ## A134109.P2085724003502490767

`A004526(A081120(n+1)+1)`
-/

namespace A134109.P2085724003502490767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081120 (n + 1) + 1).toNat

end

end A134109.P2085724003502490767

/-! ## A134109.P1874620046206657483

`A111660(A081120(n+1)+1)`
-/

namespace A134109.P1874620046206657483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A081120 (n + 1) + 1).toNat

end

end A134109.P1874620046206657483

/-! ## A134109.P3492705740014438126

`A123108(A081120(n+1)+1)`
-/

namespace A134109.P3492705740014438126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081120 (n + 1) + 1).toNat

end

end A134109.P3492705740014438126

/-! ## A134109.P14145330195523534487

`A110655(2*A081120(n+1))`
-/

namespace A134109.P14145330195523534487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A081120 (n + 1)).toNat

end

end A134109.P14145330195523534487

/-! ## A134109.P13609614444461016639

`A065033(A081120(n+1)+2)-1`
-/

namespace A134109.P13609614444461016639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A081120 (n + 1) + 2).toNat - 1

end

end A134109.P13609614444461016639

/-! ## A134109.P252179523646057418

`A075355(A081120(n+1)+2)-1`
-/

namespace A134109.P252179523646057418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (A081120 (n + 1) + 2).toNat - 1

end

end A134109.P252179523646057418

/-! ## A134109.P8050982781059021275

`A110655(A081120(n+1)+A081120(n+1))`
-/

namespace A134109.P8050982781059021275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A081120 (n + 1) + A081120 (n + 1)).toNat

end

end A134109.P8050982781059021275

/-! ## A134109.P12122544493164008733

`∑{d}[A081120(n+1), A105234(A000010(#^#))]`
-/

namespace A134109.P12122544493164008733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A105234 (A000010 (d ^ d)).toNat

end

end A134109.P12122544493164008733

/-!
# A134110: Powers of 4 written backwards and sorted.

The programs for A134110, there is no canonical definition to state claims against.
-/

/-! ## A134110.P7047669002927695728

`∩[A034906(n+1), A074896(n+1)]`
-/

namespace A134110.P7047669002927695728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134110.P7047669002927695728

/-! ## A134110.P4657824598502251218

`∩[A034906(n+1), A356417(n+1)]`
-/

namespace A134110.P4657824598502251218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134110.P4657824598502251218

/-! ## A134110.P13899895935997727227

`A004086(4^A035044(n))`
-/

namespace A134110.P13899895935997727227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A035044 n : ℤ))).toNat

end

end A134110.P13899895935997727227

/-! ## A134110.P5069445421255326345

`record[A004086(A006519(n+5)²)]`
-/

namespace A134110.P5069445421255326345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A006519 (n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134110.P5069445421255326345

/-!
# A134111: Powers of 5 written backwards and sorted.

The programs for A134111, there is no canonical definition to state claims against.
-/

/-! ## A134111.P1345768628067107466

`∪[A071583(2*n+1), A071583(2*n)]`
-/

namespace A134111.P1345768628067107466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071583 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071583 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134111.P1345768628067107466

/-! ## A134111.P3422273130980238402

`A071583(C(A107742(n), A337227(n))+n)`
-/

namespace A134111.P3422273130980238402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071583 (Nat.choose (A107742 n).toNat (A337227 n).toNat + n)

end

end A134111.P3422273130980238402

/-!
# A134112: Powers of 6 written backwards and sorted.

The programs for A134112, there is no canonical definition to state claims against.
-/

/-! ## A134112.P5719533493399098547

`A004086(6^A060119(n))`
-/

namespace A134112.P5719533493399098547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A060119 n : ℤ))).toNat

end

end A134112.P5719533493399098547

/-! ## A134112.P9728510997393543329

`A004086(6^A060126(n))`
-/

namespace A134112.P9728510997393543329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A060126 n : ℤ))).toNat

end

end A134112.P9728510997393543329

/-! ## A134112.P10014492857908335413

`A004086(6^A069766(n))`
-/

namespace A134112.P10014492857908335413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A069766 n : ℤ))).toNat

end

end A134112.P10014492857908335413

/-!
# A134113: Powers of 7 written backwards and sorted.

The programs for A134113, there is no canonical definition to state claims against.
-/

/-! ## A134113.P17861980782165491066

`∪[A071584(2*n+1), A071584(2*n)]`
-/

namespace A134113.P17861980782165491066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071584 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071584 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134113.P17861980782165491066

/-! ## A134113.P3501830044498520515

`record[A071584(∑{e}[A144374(3*n+1), #])]`
-/

namespace A134113.P3501830044498520515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071584 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134113.P3501830044498520515

/-! ## A134113.P16545162496843006672

`record[A071584(∑{e}[A025250(n+1), #])]`
-/

namespace A134113.P16545162496843006672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025250 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071584 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134113.P16545162496843006672

/-!
# A134114: Powers of 8 written backwards and sorted.

The programs for A134114, there is no canonical definition to state claims against.
-/

/-! ## A134114.P16102149806696280642

`A071586((A108782(n)+1)*A113218(n))`
-/

namespace A134114.P16102149806696280642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071586 ((A108782 n + 1) * A113218 n).toNat

end

end A134114.P16102149806696280642

/-! ## A134114.P9776518716634154961

`A071586(A113218(n))-A113218(A108782(n)²)`
-/

namespace A134114.P9776518716634154961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071586 (A113218 n).toNat - A113218 (A108782 n ^ 2).toNat

end

end A134114.P9776518716634154961

/-! ## A134114.P10089503907758325263

`A071586(A029731(n+1))`
-/

namespace A134114.P10089503907758325263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071586 (A029731 (n + 1)).toNat

end

end A134114.P10089503907758325263

/-! ## A134114.P9997566402607942852

`A071586(A029969(n+1))`
-/

namespace A134114.P9997566402607942852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071586 (A029969 (n + 1)).toNat

end

end A134114.P9997566402607942852

/-! ## A134114.P12648323078207538484

`A071586(A029970(n+1))`
-/

namespace A134114.P12648323078207538484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071586 (A029970 (n + 1)).toNat

end

end A134114.P12648323078207538484

/-!
# A134116: Primes p such that q-p = 34, where q is the next prime after p.

The programs for A134116, there is no canonical definition to state claims against.
-/

/-! ## A134116.P4154896413791657671

`∩[A252091(n+1), A355485(n+1)]`
-/

namespace A134116.P4154896413791657671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134116.P4154896413791657671

/-! ## A134116.P11733063132026119287

`A055670(A320715(n+1))-1`
-/

namespace A134116.P11733063132026119287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320715 (n + 1)).toNat - 1

end

end A134116.P11733063132026119287

/-! ## A134116.P7928421949714416499

`A153881(n+2)+A055670(A320715(n+1))`
-/

namespace A134116.P7928421949714416499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A055670 (A320715 (n + 1)).toNat

end

end A134116.P7928421949714416499

/-! ## A134116.P1954221578175556018

`A321800(A170824(n+1))+A055670(A320715(n+1))`
-/

namespace A134116.P1954221578175556018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A170824 (n + 1)).toNat + A055670 (A320715 (n + 1)).toNat

end

end A134116.P1954221578175556018

/-! ## A134116.P12430825423839004358

`A000040(A320715(n+1))`
-/

namespace A134116.P12430825423839004358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320715 (n + 1)).toNat

end

end A134116.P12430825423839004358

/-!
# A134117: Primes p such that q-p = 36, where q is the next prime after p.

The programs for A134117, there is no canonical definition to state claims against.
-/

/-! ## A134117.P14786190216099694439

`A055670(A320716(n+1))-1`
-/

namespace A134117.P14786190216099694439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320716 (n + 1)).toNat - 1

end

end A134117.P14786190216099694439

/-! ## A134117.P13325776463398619439

`A153881(n+2)+A055670(A320716(n+1))`
-/

namespace A134117.P13325776463398619439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A055670 (A320716 (n + 1)).toNat

end

end A134117.P13325776463398619439

/-! ## A134117.P3503705005970922559

`A174350(A000217(n+18)-n)`
-/

namespace A134117.P3503705005970922559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A000217 (n + 18) - (n : ℤ)).toNat

end

end A134117.P3503705005970922559

/-! ## A134117.P13437617877803470970

`A000040(A320716(n+1))`
-/

namespace A134117.P13437617877803470970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320716 (n + 1)).toNat

end

end A134117.P13437617877803470970

/-! ## A134117.P4310029778163873704

`A008578(A320716(n+1)+1)`
-/

namespace A134117.P4310029778163873704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320716 (n + 1) + 1).toNat

end

end A134117.P4310029778163873704

/-!
# A134118: Primes p such that q - p = 38, where q is the next prime after p.

The programs for A134118, there is no canonical definition to state claims against.
-/

/-! ## A134118.P8757136538696513689

`A055670(A320717(n+1))-1`
-/

namespace A134118.P8757136538696513689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320717 (n + 1)).toNat - 1

end

end A134118.P8757136538696513689

/-! ## A134118.P16536790131733323706

`A153881(n+2)+A055670(A320717(n+1))`
-/

namespace A134118.P16536790131733323706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A055670 (A320717 (n + 1)).toNat

end

end A134118.P16536790131733323706

/-! ## A134118.P10422197833559181453

`A134824(2*n+3)+A055670(A320717(n+1))`
-/

namespace A134118.P10422197833559181453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * n + 3) + A055670 (A320717 (n + 1)).toNat

end

end A134118.P10422197833559181453

/-! ## A134118.P10006246363275802629

`A000040(A320717(n+1))`
-/

namespace A134118.P10006246363275802629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320717 (n + 1)).toNat

end

end A134118.P10006246363275802629

/-! ## A134118.P15688050072592271870

`A008578(A320717(n+1)+1)`
-/

namespace A134118.P15688050072592271870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320717 (n + 1) + 1).toNat

end

end A134118.P15688050072592271870

/-!
# A134119: a(n) = floor(n^2/10) - floor((n-1)^2/10).

The programs for A134119, the canonical program `A134119.P17979807222071129396` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134119 has offset 0).

The definition of A134119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/10)-floor((n-1)²/10)` (program `A134119.P17979807222071129396`, by `A134119.P17979807222071129396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134119.P17979807222071129396

`floor(n²/10)-floor((n-1)²/10)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134119

/-- `floor(n²/10)-floor((n-1)²/10)` -/
def P17979807222071129396.Spec : Prop :=
  ∀ n, P17979807222071129396.a n = A134119 n

theorem P17979807222071129396.correct : P17979807222071129396.Spec := by
  intro n
  simp only [A134119]

end A134119

/-! ## A134119.P3149564591830467369

`round(and(n, -2)/5)`
-/

namespace A134119.P3149564591830467369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 5)

end

end A134119.P3149564591830467369

namespace A134119

/-- `round(and(n, -2)/5)` -/
def P3149564591830467369.Spec : Prop :=
  ∀ n, P3149564591830467369.a n = A134119 n

end A134119

/-! ## A134119.P17000660078659980102

`floor((or(1, n)+1)/5)`
-/

namespace A134119.P17000660078659980102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n + 1 : ℚ) / 5⌋

end

end A134119.P17000660078659980102

namespace A134119

/-- `floor((or(1, n)+1)/5)` -/
def P17000660078659980102.Spec : Prop :=
  ∀ n, P17000660078659980102.a n = A134119 n

end A134119

/-! ## A134119.P912557776501214955

`round((or(1, n)-1)/5)`
-/

namespace A134119.P912557776501214955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 5)

end

end A134119.P912557776501214955

namespace A134119

/-- `round((or(1, n)-1)/5)` -/
def P912557776501214955.Spec : Prop :=
  ∀ n, P912557776501214955.a n = A134119 n

end A134119

/-! ## A134119.P17578785176458253537

`ceil((or(1, n)-3)/5)`
-/

namespace A134119.P17578785176458253537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 1 n : ℤ) - 3 : ℚ) / 5⌉

end

end A134119.P17578785176458253537

namespace A134119

/-- `ceil((or(1, n)-3)/5)` -/
def P17578785176458253537.Spec : Prop :=
  ∀ n, P17578785176458253537.a n = A134119 n

end A134119

/-! ## A134119.P13988682999696595045

`floor((gcd(2, n)+n)/5)`
-/

namespace A134119.P13988682999696595045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n + n : ℚ) / 5⌋

end

end A134119.P13988682999696595045

namespace A134119

/-- `floor((gcd(2, n)+n)/5)` -/
def P13988682999696595045.Spec : Prop :=
  ∀ n, P13988682999696595045.a n = A134119 n

end A134119

/-! ## A134119.P18024091464863047455

`floor(and(n+2, -2)/5)`
-/

namespace A134119.P18024091464863047455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (n + 2 : ℤ) (-2) : ℚ) / 5⌋

end

end A134119.P18024091464863047455

namespace A134119

/-- `floor(and(n+2, -2)/5)` -/
def P18024091464863047455.Spec : Prop :=
  ∀ n, P18024091464863047455.a n = A134119 n

end A134119

/-! ## A134119.P10436209604566297530

`ceil(and(n-2, -2)/5)`
-/

namespace A134119.P10436209604566297530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land ((n : ℤ) - 2) (-2) : ℚ) / 5⌉

end

end A134119.P10436209604566297530

namespace A134119

/-- `ceil(and(n-2, -2)/5)` -/
def P10436209604566297530.Spec : Prop :=
  ∀ n, P10436209604566297530.a n = A134119 n

end A134119

/-! ## A134119.P8971413450387179919

`∑[val((1-n)²+1, 10)]`
-/

namespace A134119.P8971413450387179919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((1 - (n : ℤ)) ^ 2 + 1).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134119.P8971413450387179919

namespace A134119

/-- `∑[val((1-n)²+1, 10)]` -/
def P8971413450387179919.Spec : Prop :=
  ∀ n, (P8971413450387179919.a n : ℤ) = A134119 n

end A134119

/-! ## A134119.P1855910758674921493

`∑[C((1-n)²%10, 9)]`
-/

namespace A134119.P1855910758674921493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ((1 - (n : ℤ)) ^ 2) 10).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134119.P1855910758674921493

namespace A134119

/-- `∑[C((1-n)²%10, 9)]` -/
def P1855910758674921493.Spec : Prop :=
  ∀ n, (P1855910758674921493.a n : ℤ) = A134119 n

end A134119

/-! ## A134119.P3944895741590977955

`floor((2-and(1, n)+n)/5)`
-/

namespace A134119.P3944895741590977955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - (Nat.land 1 n : ℤ) + (n : ℤ) : ℚ) / 5⌋

end

end A134119.P3944895741590977955

namespace A134119

/-- `floor((2-and(1, n)+n)/5)` -/
def P3944895741590977955.Spec : Prop :=
  ∀ n, P3944895741590977955.a n = A134119 n

end A134119

/-! ## A134119.P1223156750452155531

`ceil((n-2-and(1, n))/5)`
-/

namespace A134119.P1223156750452155531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 - (Nat.land 1 n : ℤ) : ℚ) / 5⌉

end

end A134119.P1223156750452155531

namespace A134119

/-- `ceil((n-2-and(1, n))/5)` -/
def P1223156750452155531.Spec : Prop :=
  ∀ n, P1223156750452155531.a n = A134119 n

end A134119

/-! ## A134119.P4793895536064053474

`floor(∑[2-a(n-1)]/5)` with `a(0)=2`
-/

namespace A134119.P4793895536064053474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A134119.P4793895536064053474

namespace A134119

/-- `floor(∑[2-a(n-1)]/5)` -/
def P4793895536064053474.Spec : Prop :=
  ∀ n, P4793895536064053474.a n = A134119 n

end A134119

/-! ## A134119.P14848544067743670237

`floor((and(1, n+1)+n+1)/5)`
-/

namespace A134119.P14848544067743670237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (n + 1) + (n + 1) : ℚ) / 5⌋

end

end A134119.P14848544067743670237

namespace A134119

/-- `floor((and(1, n+1)+n+1)/5)` -/
def P14848544067743670237.Spec : Prop :=
  ∀ n, P14848544067743670237.a n = A134119 n

end A134119

/-! ## A134119.P10335078512670857715

`∑[(n+1)%(2-∑[n+1]%5)]`
-/

namespace A134119.P10335078512670857715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (2 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 5 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134119.P10335078512670857715

namespace A134119

/-- `∑[(n+1)%(2-∑[n+1]%5)]` -/
def P10335078512670857715.Spec : Prop :=
  ∀ n, P10335078512670857715.a n = A134119 n

end A134119

/-! ## A134119.P9555031409107583227

`∑[char[or(1, 3*n)+2*n+3]]`
-/

namespace A134119.P9555031409107583227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n) + (2 * n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134119.P9555031409107583227

namespace A134119

/-- `∑[char[or(1, 3*n)+2*n+3]]` -/
def P9555031409107583227.Spec : Prop :=
  ∀ n, (P9555031409107583227.a n : ℤ) = A134119 n

end A134119

/-! ## A134119.P3920725100089139889

`round((n+1-gcd(n+1, n-1))/5)`
-/

namespace A134119.P3920725100089139889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ) : ℚ) / 5)

end

end A134119.P3920725100089139889

namespace A134119

/-- `round((n+1-gcd(n+1, n-1))/5)` -/
def P3920725100089139889.Spec : Prop :=
  ∀ n, P3920725100089139889.a n = A134119 n

end A134119

/-! ## A134119.P11869664207495545336

`∑[(n+1)²%(gcd(5, ∑[n+1])%3)]`
-/

namespace A134119.P11869664207495545336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (Nat.gcd 5 (∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134119.P11869664207495545336

namespace A134119

/-- `∑[(n+1)²%(gcd(5, ∑[n+1])%3)]` -/
def P11869664207495545336.Spec : Prop :=
  ∀ n, (P11869664207495545336.a n : ℤ) = A134119 n

end A134119

/-! ## A134119.P14949797024842392708

`Δ[A056865(abs(1-n))]`
-/

namespace A134119.P14949797024842392708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134119.P14949797024842392708

namespace A134119

/-- `Δ[A056865(abs(1-n))]` -/
def P14949797024842392708.Spec : Prop :=
  ∀ n, P14949797024842392708.a n = A134119 n

end A134119

/-! ## A134119.P7304430071125750798

`A057354(∑[char[2*n]])`
-/

namespace A134119.P7304430071125750798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134119.P7304430071125750798

namespace A134119

/-- `A057354(∑[char[2*n]])` -/
def P7304430071125750798.Spec : Prop :=
  ∀ n, P7304430071125750798.a n = A134119 n

end A134119

/-!
# A134120: Primes p such that q-p = 42, where q is the next prime after p.

The programs for A134120, there is no canonical definition to state claims against.
-/

/-! ## A134120.P11435399508369403348

`A000040(A320719(n+1))`
-/

namespace A134120.P11435399508369403348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320719 (n + 1)).toNat

end

end A134120.P11435399508369403348

/-! ## A134120.P11357799976567455728

`A008578(A320719(n+1)+1)`
-/

namespace A134120.P11357799976567455728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320719 (n + 1) + 1).toNat

end

end A134120.P11357799976567455728

/-! ## A134120.P1656582625378266400

`A175787(A320719(n+1)+1)`
-/

namespace A134120.P1656582625378266400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320719 (n + 1) + 1).toNat

end

end A134120.P1656582625378266400

/-! ## A134120.P6533709055456514872

`A045319(A320719(n+1)-1)`
-/

namespace A134120.P6533709055456514872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320719 (n + 1) - 1).toNat

end

end A134120.P6533709055456514872

/-! ## A134120.P11375631475231091878

`A045344(A320719(n+1)-1)`
-/

namespace A134120.P11375631475231091878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A320719 (n + 1) - 1).toNat

end

end A134120.P11375631475231091878

/-!
# A134121: Primes p such that q-p = 44, where q is the next prime after p.

The programs for A134121, there is no canonical definition to state claims against.
-/

/-! ## A134121.P17805636723481791735

`A231609(eq[21, A193592(n)])`
-/

namespace A134121.P17805636723481791735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134121.P17805636723481791735

/-! ## A134121.P17755746931644779773

`A055670(A320720(n+1))-1`
-/

namespace A134121.P17755746931644779773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320720 (n + 1)).toNat - 1

end

end A134121.P17755746931644779773

/-!
# A134125: Integral quotients of partial sums of primes divided by the number of summations.

The programs for A134125, there is no canonical definition to state claims against.
-/

/-! ## A134125.P2704232441949578303

`A134129(n+1)/A134126(n+1)`
-/

namespace A134125.P2704232441949578303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134129 (n + 1) : ℚ) / (A134126 (n + 1) : ℚ)

end

end A134125.P2704232441949578303

/-! ## A134125.P11493349833724427039

`(A134128(n+1)+A134127(n+1))/A134126(n+1)`
-/

namespace A134125.P11493349833724427039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134128 (n + 1) + A134127 (n + 1) : ℚ) / (A134126 (n + 1) : ℚ)

end

end A134125.P11493349833724427039

/-! ## A134125.P16289569825067208441

`A007504(A134126(n+1)+1)/A134126(n+1)`
-/

namespace A134125.P16289569825067208441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A134126 (n + 1) + 1).toNat : ℚ) / (A134126 (n + 1) : ℚ)

end

end A134125.P16289569825067208441

/-! ## A134125.P9852151790539020196

`(A134127(n+1)+A166448(A134126(n+1))+A134127(n+1))/A134126(A187829(n+1))`
-/

namespace A134125.P9852151790539020196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134127 (n + 1) + (A166448 (A134126 (n + 1)).toNat + A134127 (n + 1)) : ℚ) / (A134126 (A187829 (n + 1)).toNat : ℚ)

end

end A134125.P9852151790539020196

/-! ## A134125.P7007291514042717545

`A134129(n+1)/A000720(A134127(n+1)-1)`
-/

namespace A134125.P7007291514042717545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134129 (n + 1) : ℚ) / (A000720 (A134127 (n + 1) - 1).toNat : ℚ)

end

end A134125.P7007291514042717545

/-!
# A134126: Indices k such that the (k+1)-st partial sum of primes divided by k is an integer.

The programs for A134126, there is no canonical definition to state claims against.
-/

/-! ## A134126.P16089257677223262821

`A134129(n+1)/A134125(n+1)`
-/

namespace A134126.P16089257677223262821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134129 (n + 1) : ℚ) / (A134125 (n + 1) : ℚ)

end

end A134126.P16089257677223262821

/-! ## A134126.P17073901659813118695

`(A134128(n+1)+A134127(n+1))/A134125(n+1)`
-/

namespace A134126.P17073901659813118695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134128 (n + 1) + A134127 (n + 1) : ℚ) / (A134125 (n + 1) : ℚ)

end

end A134126.P17073901659813118695

/-! ## A134126.P241433446050162014

`eq[n, gcd(n, A007504(n+1))]`
-/

namespace A134126.P241433446050162014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134126.P241433446050162014

/-! ## A134126.P11462174577504229516

`A000720(A134127(n+1)-1)`
-/

namespace A134126.P11462174577504229516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134127 (n + 1) - 1).toNat

end

end A134126.P11462174577504229516

/-! ## A134126.P6587316217779767660

`A000720(xor(1, A134127(n+1)))`
-/

namespace A134126.P6587316217779767660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A134127 (n + 1))).toNat

end

end A134126.P6587316217779767660

/-!
# A134127: Largest prime in the partials sums of primes in A134125 which have integer averages.

The programs for A134127, there is no canonical definition to state claims against.
-/

/-! ## A134127.P12224429085471135695

`A000040(1+A134126(n+1))`
-/

namespace A134127.P12224429085471135695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A134126 (n + 1)).toNat

end

end A134127.P12224429085471135695

/-! ## A134127.P15855766252485750384

`A134129(n+1)-A134128(n+1)`
-/

namespace A134127.P15855766252485750384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134129 (n + 1) - A134128 (n + 1)

end

end A134127.P15855766252485750384

/-! ## A134127.P12448533300467392109

`A134125(n+1)*A134126(n+1)-A134128(n+1)`
-/

namespace A134127.P12448533300467392109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134125 (n + 1) * A134126 (n + 1) - A134128 (n + 1)

end

end A134127.P12448533300467392109

/-! ## A134127.P10106428590134841130

`A134129(n+1)-A007504(A134126(n+1))`
-/

namespace A134127.P10106428590134841130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134129 (n + 1) - A007504 (A134126 (n + 1)).toNat

end

end A134127.P10106428590134841130

/-! ## A134127.P3839793282268500857

`A065091(A134126(n+1))`
-/

namespace A134127.P3839793282268500857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A134126 (n + 1)).toNat

end

end A134127.P3839793282268500857

/-!
# A134128: a(n) = A007504(A134126(n)).

The programs for A134128, there is no canonical definition to state claims against.
-/

/-! ## A134128.P3257307268478401109

`A007504(A134126(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134128.P3257307268478401109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A134126 (n + 1)).toNat

end

end A134128.P3257307268478401109

/-! ## A134128.P6636960843226668067

`A134129(n+1)-A134127(n+1)`
-/

namespace A134128.P6636960843226668067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134129 (n + 1) - A134127 (n + 1)

end

end A134128.P6636960843226668067

/-! ## A134128.P17149642348214431440

`A134125(n+1)*A134126(n+1)-A134127(n+1)`
-/

namespace A134128.P17149642348214431440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134125 (n + 1) * A134126 (n + 1) - A134127 (n + 1)

end

end A134128.P17149642348214431440

/-! ## A134128.P5737623443998172029

`A007504(A134129(n+1)/A134125(n+1))`
-/

namespace A134128.P5737623443998172029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((A134129 (n + 1) : ℚ) / (A134125 (n + 1) : ℚ))).toNat

end

end A134128.P5737623443998172029

/-! ## A134128.P4596945558152595656

`A166448(A134126(n+1))+A134127(n+1)`
-/

namespace A134128.P4596945558152595656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (A134126 (n + 1)).toNat + A134127 (n + 1)

end

end A134128.P4596945558152595656

/-!
# A134129: Prime partial sums A007504(k+1) such that A007504(k+1)/k is an integer.

The programs for A134129, there is no canonical definition to state claims against.
-/

/-! ## A134129.P5709382246025614787

`A134128(n+1)+A134127(n+1)`
-/

namespace A134129.P5709382246025614787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134128 (n + 1) + A134127 (n + 1)

end

end A134129.P5709382246025614787

/-! ## A134129.P9841091807033812840

`A134125(n+1)*A134126(n+1)`
-/

namespace A134129.P9841091807033812840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134125 (n + 1) * A134126 (n + 1)

end

end A134129.P9841091807033812840

/-! ## A134129.P1679694586756340183

`A007504(A134126(n+1)+1)`
-/

namespace A134129.P1679694586756340183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A134126 (n + 1) + 1).toNat

end

end A134129.P1679694586756340183

/-! ## A134129.P3717353291459489636

`A166448(A134126(n+1))+2*A134127(n+1)`
-/

namespace A134129.P3717353291459489636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (A134126 (n + 1)).toNat + 2 * A134127 (n + 1)

end

end A134129.P3717353291459489636

/-! ## A134129.P5685707284193273898

`A134128(n+1)+A065091(A134126(n+1))`
-/

namespace A134129.P5685707284193273898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134128 (n + 1) + A065091 (A134126 (n + 1)).toNat

end

end A134129.P5685707284193273898

/-!
# A134130: Primes in A134125.

The programs for A134130, there is no canonical definition to state claims against.
-/

/-! ## A134130.P8225547470386802806

`A134125(A351143(n)+A257079(n))`
-/

namespace A134130.P8225547470386802806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134125 (A351143 n + A257079 n).toNat

end

end A134130.P8225547470386802806

/-!
# A134131: Expansion of chi(-x) * chi(-x^9) / chi(-x^3)^2 in power of x where chi() is a Ramanujan theta function.

The programs for A134131, there is no canonical definition to state claims against.
-/

/-! ## A134131.P2496690374408168521

`A112178(3*n)`
-/

namespace A134131.P2496690374408168521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112178 (3 * n)

end

end A134131.P2496690374408168521

/-! ## A134131.P13915264802260459280

`A112178(A008486(n))+A000038(n)`
-/

namespace A134131.P13915264802260459280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112178 (A008486 n).toNat + A000038 n

end

end A134131.P13915264802260459280

/-! ## A134131.P5143223214175184912

`A112178(A008486(n))^A019433(A008586(n))`
-/

namespace A134131.P5143223214175184912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112178 (A008486 n).toNat : ℚ) ^ (A019433 (A008586 n).toNat : ℤ)

end

end A134131.P5143223214175184912

/-! ## A134131.P5614230289745556401

`A112178(A008486(n))^A001221(A074816(n+1))`
-/

namespace A134131.P5614230289745556401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112178 (A008486 n).toNat : ℚ) ^ (A001221 (A074816 (n + 1)).toNat : ℤ)

end

end A134131.P5614230289745556401

/-! ## A134131.P1360052026454268237

`A112178(A008486(n))^A014963(A016825(n))`
-/

namespace A134131.P1360052026454268237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112178 (A008486 n).toNat : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A134131.P1360052026454268237

/-! ## A134131.P1456069494327250755

`A112178(A008486(n))+A000096(A151878(n))`
-/

namespace A134131.P1456069494327250755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112178 (A008486 n).toNat + A000096 (A151878 n).toNat

end

end A134131.P1456069494327250755

/-! ## A134131.P13302552581478434698

`A112178(A008486(n))/A112178(A151878(n)²)`
-/

namespace A134131.P13302552581478434698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112178 (A008486 n).toNat : ℚ) / (A112178 (A151878 n ^ 2).toNat : ℚ)

end

end A134131.P13302552581478434698

/-! ## A134131.P3729213881661038351

`A151878(n)+A112178(A151878(n)+A008486(n))`
-/

namespace A134131.P3729213881661038351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A112178 (A151878 n + A008486 n).toNat

end

end A134131.P3729213881661038351

/-!
# A134132: Expansion of chi(-x^3)^2 / (chi(-x) * chi(-x^9)) in power of x where chi() is a Ramanujan theta function.

The programs for A134132, there is no canonical definition to state claims against.
-/

/-! ## A134132.P14236256612115500826

`-A112178(3*n+1)`
-/

namespace A134132.P14236256612115500826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A112178 (3 * n + 1)

end

end A134132.P14236256612115500826

/-! ## A134132.P10581448731912285455

`A000035(2*n)-A112178(3*n+1)`
-/

namespace A134132.P10581448731912285455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A112178 (3 * n + 1)

end

end A134132.P10581448731912285455

/-! ## A134132.P15115514950430064872

`A036987(2*(n+1))-A112178(3*n+1)`
-/

namespace A134132.P15115514950430064872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (n + 1)) - A112178 (3 * n + 1)

end

end A134132.P15115514950430064872

/-! ## A134132.P8423459401009730815

`A037801(Δ[ceil(ϕ*n)])-A112178(3*n+1)`
-/

namespace A134132.P8423459401009730815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (f1 (n + 1) - f1 n).toNat - A112178 (3 * n + 1)

end

end A134132.P8423459401009730815

/-! ## A134132.P13285472333209449909

`A103673(Δ[ceil(ϕ*n)])-A112178(3*n+1)`
-/

namespace A134132.P13285472333209449909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103673 (f1 (n + 1) - f1 n).toNat - A112178 (3 * n + 1)

end

end A134132.P13285472333209449909

/-! ## A134132.P1850608139907152072

`A278177(Δ[ceil(ϕ*n)])-A112178(3*n+1)`
-/

namespace A134132.P1850608139907152072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278177 (f1 (n + 1) - f1 n).toNat - A112178 (3 * n + 1)

end

end A134132.P1850608139907152072

/-! ## A134132.P12400317746468501001

`lcm(A001222(A002373(n+3)), A112178(3*n+1))`
-/

namespace A134132.P12400317746468501001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A002373 (n + 3)).toNat) (A112178 (3 * n + 1))

end

end A134132.P12400317746468501001

/-! ## A134132.P789809699058171743

`A000196(A112178(3*n+1)²)`
-/

namespace A134132.P789809699058171743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A112178 (3 * n + 1) ^ 2).toNat

end

end A134132.P789809699058171743

/-!
# A134133: Triange T(n,k) read by rows: product of the factorials of the parts of the k-th partition of n listed in Abramowitz and Stegun order, 1 <= k <= A000041(n).

The programs for A134133, there is no canonical definition to state claims against.
-/

/-! ## A134133.P18165566381307310591

`A321898(A185974(n))`
-/

namespace A134133.P18165566381307310591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A185974 n).toNat

end

end A134133.P18165566381307310591

/-! ## A134133.P10226709793553813475

`A112624(A036035(n))`
-/

namespace A134133.P10226709793553813475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A036035 n).toNat

end

end A134133.P10226709793553813475

/-! ## A134133.P6077774763244710950

`A107106(n)*A118851(n)`
-/

namespace A134133.P6077774763244710950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107106 n * A118851 n

end

end A134133.P6077774763244710950

/-! ## A134133.P5485477253100640945

`A130561(n)/A124794(A185974(n))`
-/

namespace A134133.P5485477253100640945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 n : ℚ) / (A124794 (A185974 n).toNat : ℚ)

end

end A134133.P5485477253100640945

/-! ## A134133.P9605148120913774098

`A190015(n)/A355777(n)`
-/

namespace A134133.P9605148120913774098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190015 n : ℚ) / (A355777 n : ℚ)

end

end A134133.P9605148120913774098

/-! ## A134133.P6424638426921988255

`∏{e}[A059901(n), #!]`
-/

namespace A134133.P6424638426921988255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A134133.P6424638426921988255

/-!
# A134134: Triangle of numbers obtained from the partition array A134133.

The programs for A134134, there is no canonical definition to state claims against.
-/

/-! ## A134134.P10123467179623551500

`A321352(n+1)+A064911(A041331(n))`
-/

namespace A134134.P10123467179623551500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (n + 1) + A064911 (A041331 n).toNat

end

end A134134.P10123467179623551500

/-! ## A134134.P10674399662112548680

`A321352(n+1)+A102683(A027219(n))`
-/

namespace A134134.P10674399662112548680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (n + 1) + A102683 (A027219 n).toNat

end

end A134134.P10674399662112548680

/-! ## A134134.P10172771883730611576

`A321352(n+1)+A185238(A019565(n))`
-/

namespace A134134.P10172771883730611576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (n + 1) + A185238 (A019565 n).toNat

end

end A134134.P10172771883730611576

/-! ## A134134.P18411010521782518263

`A321352(n+1)+A109527(A109509(n))`
-/

namespace A134134.P18411010521782518263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (n + 1) + A109527 (A109509 n).toNat

end

end A134134.P18411010521782518263

/-! ## A134134.P1034345752038063438

`A321352(n+1)+A107846(A186236(n))`
-/

namespace A134134.P1034345752038063438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (n + 1) + A107846 (A186236 n).toNat

end

end A134134.P1034345752038063438

/-!
# A134135: Alternating row sums of triangle A134134.

The programs for A134135, there is no canonical definition to state claims against.
-/

/-! ## A134135.P16496711045541635706

`abs(A292279(n+1))`
-/

namespace A134135.P16496711045541635706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292279 (n + 1)|

end

end A134135.P16496711045541635706

/-! ## A134135.P14691327106101036977

`Δ[-∑[A292279(n)]]`
-/

namespace A134135.P14691327106101036977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134135.P14691327106101036977

/-! ## A134135.P16111091500202085012

`-A292279(-xor(n, -1))`
-/

namespace A134135.P16111091500202085012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292279 (-Int.xor (n : ℤ) (-1)).toNat

end

end A134135.P16111091500202085012

/-! ## A134135.P2332470316449624604

`lcm(A007318(∑[n]), A292279(n+1))`
-/

namespace A134135.P2332470316449624604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A292279 (n + 1))

end

end A134135.P2332470316449624604

/-! ## A134135.P12104979065600268284

`A001222((-1)^(2*n))-A292279(n+1)`
-/

namespace A134135.P12104979065600268284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((-1) ^ (2 * n)).toNat - A292279 (n + 1)

end

end A134135.P12104979065600268284

/-!
# A134136: a(n) = 2*a(n-2) + 4*a(n-3), with initial terms 0, 1, 1.

The programs for A134136, the canonical program `A134136.P11117185299753846664` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134136 has offset 0).

The definition of A134136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+4*a(n-3)` (program `A134136.P11117185299753846664`, by `A134136.P11117185299753846664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134136.P11117185299753846664

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134136

/-- `2*a(n-2)+4*a(n-3)` -/
def P11117185299753846664.Spec : Prop :=
  ∀ n, (P11117185299753846664.a n : ℤ) = A134136 n

theorem P11117185299753846664.correct : P11117185299753846664.Spec := by
  intro n
  simp only [A134136]

end A134136

/-! ## A134136.P8622047839158764068

`ogf((x+x^2)/(1-2x^2-4x^3))`
-/

namespace A134136.P8622047839158764068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, -2, -4] n

end

end A134136.P8622047839158764068

namespace A134136

/-- `ogf((x+x^2)/(1-2x^2-4x^3))` -/
def P8622047839158764068.Spec : Prop :=
  ∀ n, P8622047839158764068.a n = A134136 n

end A134136

/-! ## A134136.P5216246151908055286

`A134812(n)+A038521(n)`
-/

namespace A134136.P5216246151908055286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134812 n + A038521 n

end

end A134136.P5216246151908055286

namespace A134136

/-- `A134812(n)+A038521(n)` -/
def P5216246151908055286.Spec : Prop :=
  ∀ n, P5216246151908055286.a n = A134136 n

end A134136

/-! ## A134136.P11612368619977660699

`A176739(n)-A134812(n+1)`
-/

namespace A134136.P11612368619977660699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176739 n - A134812 (n + 1)

end

end A134136.P11612368619977660699

namespace A134136

/-- `A176739(n)-A134812(n+1)` -/
def P11612368619977660699.Spec : Prop :=
  ∀ n, P11612368619977660699.a n = A134136 n

end A134136

/-! ## A134136.P8106891273563160298

`∑[A038519(n)-A134812(n+1)]`
-/

namespace A134136.P8106891273563160298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n - A134812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134136.P8106891273563160298

namespace A134136

/-- `∑[A038519(n)-A134812(n+1)]` -/
def P8106891273563160298.Spec : Prop :=
  ∀ n, P8106891273563160298.a n = A134136 n

end A134136

/-! ## A134136.P3664775614376574881

`A078069(n+1)+3*A134812(n+1)`
-/

namespace A134136.P3664775614376574881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 (n + 1) + 3 * A134812 (n + 1)

end

end A134136.P3664775614376574881

namespace A134136

/-- `A078069(n+1)+3*A134812(n+1)` -/
def P3664775614376574881.Spec : Prop :=
  ∀ n, P3664775614376574881.a n = A134136 n

end A134136

/-! ## A134136.P248272856038125276

`A131577(n)+A134812(n)-A038520(n)`
-/

namespace A134136.P248272856038125276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (A134812 n - A038520 n)

end

end A134136.P248272856038125276

namespace A134136

/-- `A131577(n)+A134812(n)-A038520(n)` -/
def P248272856038125276.Spec : Prop :=
  ∀ n, P248272856038125276.a n = A134136 n

end A134136

/-! ## A134136.P5463851785926527402

`A134068(n)/3`
-/

namespace A134136.P5463851785926527402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134068 n : ℚ) / 3

end

end A134136.P5463851785926527402

namespace A134136

/-- `A134068(n)/3` -/
def P5463851785926527402.Spec : Prop :=
  ∀ n, P5463851785926527402.a n = (A134136 n : ℚ)

end A134136

/-! ## A134136.P4543933985522097832

`(A000079(n)-A176739(n))/2`
-/

namespace A134136.P4543933985522097832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A176739 n : ℚ) / 2

end

end A134136.P4543933985522097832

namespace A134136

/-- `(A000079(n)-A176739(n))/2` -/
def P4543933985522097832.Spec : Prop :=
  ∀ n, P4543933985522097832.a n = (A134136 n : ℚ)

end A134136

/-! ## A134136.P1380529903979746783

`A176739(n+1)-A038519(n+1)`
-/

namespace A134136.P1380529903979746783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176739 (n + 1) - A038519 (n + 1)

end

end A134136.P1380529903979746783

namespace A134136

/-- `A176739(n+1)-A038519(n+1)` -/
def P1380529903979746783.Spec : Prop :=
  ∀ n, P1380529903979746783.a n = A134136 n

end A134136

/-! ## A134136.P9712341762724130279

`A176739(n+1)-(A038521(n)+A038518(n))`
-/

namespace A134136.P9712341762724130279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176739 (n + 1) - (A038521 n + A038518 n)

end

end A134136.P9712341762724130279

namespace A134136

/-- `A176739(n+1)-(A038521(n)+A038518(n))` -/
def P9712341762724130279.Spec : Prop :=
  ∀ n, P9712341762724130279.a n = A134136 n

end A134136

/-!
# A134137: Alternating row sums of triangle A049352 (S1p(4)).

The programs for A134137, there is no canonical definition to state claims against.
-/

/-! ## A134137.P2533852836330808692

`A253772(n+2)-A268448(n^(abs(1-n)-1))`
-/

namespace A134137.P2533852836330808692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253772 (n + 2) - A268448 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ))).toNat

end

end A134137.P2533852836330808692

/-!
# A134139: Alternating row sums of triangle A049353 (S1p(5)).

The programs for A134139, there is no canonical definition to state claims against.
-/

/-! ## A134139.P7660158899128484454

`A204890(A308362(n+1))*A308343(2*n+3)`
-/

namespace A134139.P7660158899128484454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A308362 (n + 1)).toNat * A308343 (2 * n + 3)

end

end A134139.P7660158899128484454

/-!
# A134141: Generalized unsigned Stirling1 triangle, S1p(7).

The programs for A134141, there is no canonical definition to state claims against.
-/

/-! ## A134141.P5508902969795219964

`A092082(n+1)/A092083(n+1)*A132166(n+1)`
-/

namespace A134141.P5508902969795219964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092082 (n + 1) : ℚ) / (A092083 (n + 1) : ℚ) * (A132166 (n + 1) : ℚ)

end

end A134141.P5508902969795219964

/-!
# A134142: List of quadruples: 2*(-4)^n, -3*(-4)^n, 2*(-4^n), 2*(-4)^n, n >= 0.

The programs for A134142, the canonical program `A134142.P5868391727068201946` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134142 has offset 0).

The definition of A134142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 658 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134142.P13627664818835202750

`ogf((2+x)/(1+2x+2x^2))`
-/

namespace A134142.P13627664818835202750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, 2, 2] n

end

end A134142.P13627664818835202750

namespace A134142

/-- `ogf((2+x)/(1+2x+2x^2))` -/
def P13627664818835202750.Spec : Prop :=
  ∀ n, P13627664818835202750.a n = A134142 n

end A134142

/-! ## A134142.P5868391727068201946

`2*a(n-3)-a(n-1)` with `a(0)=2, a(1)=-3, a(2)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134142

/-- `2*a(n-3)-a(n-1)` -/
def P5868391727068201946.Spec : Prop :=
  ∀ n, P5868391727068201946.a n = A134142 n

theorem P5868391727068201946.correct : P5868391727068201946.Spec := by
  intro n
  simp only [A134142]

end A134142

/-! ## A134142.P5996513397786085278

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=2, a(1)=-3, a(2)=2`
-/

namespace A134142.P5996513397786085278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -3, 2] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A134142.P5996513397786085278

namespace A134142

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P5996513397786085278.Spec : Prop :=
  ∀ n, P5996513397786085278.a n = A134142 n

theorem P5996513397786085278.correct : P5996513397786085278.Spec := by
  intro n
  simp only [A134142, Nat.add_sub_cancel, A134142.P5996513397786085278.a, A134142.P5868391727068201946.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134142

/-! ## A134142.P7132504603202852300

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=2, a(1)=-3, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A134142.P7132504603202852300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -3, 2] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A134142.P7132504603202852300

namespace A134142

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P7132504603202852300.Spec : Prop :=
  ∀ n, P7132504603202852300.a n = A134142 n

theorem P7132504603202852300.correct : P7132504603202852300.Spec := by
  intro n
  simp only [A134142, Nat.add_sub_cancel, A134142.P7132504603202852300.a, A134142.P5868391727068201946.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134142

/-! ## A134142.P17388935055829671670

`A108520(n)+A009116(n)`
-/

namespace A134142.P17388935055829671670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n + A009116 n

end

end A134142.P17388935055829671670

namespace A134142

/-- `A108520(n)+A009116(n)` -/
def P17388935055829671670.Spec : Prop :=
  ∀ n, P17388935055829671670.a n = A134142 n

end A134142

/-! ## A134142.P10211655522950352052

`A090132(n)+A078069(n)`
-/

namespace A134142.P10211655522950352052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n + A078069 n

end

end A134142.P10211655522950352052

namespace A134142

/-- `A090132(n)+A078069(n)` -/
def P10211655522950352052.Spec : Prop :=
  ∀ n, P10211655522950352052.a n = A134142 n

end A134142

/-! ## A134142.P3355098518970886092

`A009116(n)+∑[A078069(n)]`
-/

namespace A134142.P3355098518970886092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134142.P3355098518970886092

namespace A134142

/-- `A009116(n)+∑[A078069(n)]` -/
def P3355098518970886092.Spec : Prop :=
  ∀ n, P3355098518970886092.a n = A134142 n

end A134142

/-! ## A134142.P18401710894828533475

`Δ[A137505(n)-A077973(n)]`
-/

namespace A134142.P18401710894828533475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 n - A077973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134142.P18401710894828533475

namespace A134142

/-- `Δ[A137505(n)-A077973(n)]` -/
def P18401710894828533475.Spec : Prop :=
  ∀ n, P18401710894828533475.a n = A134142 n

end A134142

/-! ## A134142.P10958839466438515746

`A078069(n)-A009116(n+1)`
-/

namespace A134142.P10958839466438515746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n - A009116 (n + 1)

end

end A134142.P10958839466438515746

namespace A134142

/-- `A078069(n)-A009116(n+1)` -/
def P10958839466438515746.Spec : Prop :=
  ∀ n, P10958839466438515746.a n = A134142 n

end A134142

/-! ## A134142.P7573822927295000118

`3*A009116(n)-A090132(n)`
-/

namespace A134142.P7573822927295000118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A009116 n - A090132 n

end

end A134142.P7573822927295000118

namespace A134142

/-- `3*A009116(n)-A090132(n)` -/
def P7573822927295000118.Spec : Prop :=
  ∀ n, P7573822927295000118.a n = A134142 n

end A134142

/-! ## A134142.P17329132608915865938

`Δ[A009116(n)]-A009116(n+4)`
-/

namespace A134142.P17329132608915865938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A009116 (n + 4)

end

end A134142.P17329132608915865938

namespace A134142

/-- `Δ[A009116(n)]-A009116(n+4)` -/
def P17329132608915865938.Spec : Prop :=
  ∀ n, P17329132608915865938.a n = A134142 n

end A134142

/-! ## A134142.P9092491270000627949

`A084102(n+1)+A090132(n+1)/2`
-/

namespace A134142.P9092491270000627949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084102 (n + 1) : ℚ) + (A090132 (n + 1) : ℚ) / 2

end

end A134142.P9092491270000627949

namespace A134142

/-- `A084102(n+1)+A090132(n+1)/2` -/
def P9092491270000627949.Spec : Prop :=
  ∀ n, P9092491270000627949.a n = (A134142 n : ℚ)

end A134142

/-! ## A134142.P10867672528449452907

`A108520(n+1)/2-A078069(n+1)`
-/

namespace A134142.P10867672528449452907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108520 (n + 1) : ℚ) / 2 - (A078069 (n + 1) : ℚ)

end

end A134142.P10867672528449452907

namespace A134142

/-- `A108520(n+1)/2-A078069(n+1)` -/
def P10867672528449452907.Spec : Prop :=
  ∀ n, P10867672528449452907.a n = (A134142 n : ℚ)

end A134142

/-! ## A134142.P8464273271839783188

`A090132(n+1)/2-A108520(n+1)`
-/

namespace A134142.P8464273271839783188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090132 (n + 1) : ℚ) / 2 - (A108520 (n + 1) : ℚ)

end

end A134142.P8464273271839783188

namespace A134142

/-- `A090132(n+1)/2-A108520(n+1)` -/
def P8464273271839783188.Spec : Prop :=
  ∀ n, P8464273271839783188.a n = (A134142 n : ℚ)

end A134142

/-! ## A134142.P2467103849376175177

`A090132(n+1)+A090132(n)+A009116(n)`
-/

namespace A134142.P2467103849376175177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 (n + 1) + (A090132 n + A009116 n)

end

end A134142.P2467103849376175177

namespace A134142

/-- `A090132(n+1)+A090132(n)+A009116(n)` -/
def P2467103849376175177.Spec : Prop :=
  ∀ n, P2467103849376175177.a n = A134142 n

end A134142

/-! ## A134142.P6984171081133232812

`A078069(n)-(A108520(n+1)+A108520(n))`
-/

namespace A134142.P6984171081133232812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n - (A108520 (n + 1) + A108520 n)

end

end A134142.P6984171081133232812

namespace A134142

/-- `A078069(n)-(A108520(n+1)+A108520(n))` -/
def P6984171081133232812.Spec : Prop :=
  ∀ n, P6984171081133232812.a n = A134142 n

end A134142

/-! ## A134142.P11360236224043563372

`A084102(n+1)-A016116(n)*A075553(n)`
-/

namespace A134142.P11360236224043563372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (n + 1) - A016116 n * A075553 n

end

end A134142.P11360236224043563372

namespace A134142

/-- `A084102(n+1)-A016116(n)*A075553(n)` -/
def P11360236224043563372.Spec : Prop :=
  ∀ n, P11360236224043563372.a n = A134142 n

end A134142

/-! ## A134142.P12980417532347491265

`A009116(n+1)+A084102(n+1)+A009116(n)`
-/

namespace A134142.P12980417532347491265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 1) + (A084102 (n + 1) + A009116 n)

end

end A134142.P12980417532347491265

namespace A134142

/-- `A009116(n+1)+A084102(n+1)+A009116(n)` -/
def P12980417532347491265.Spec : Prop :=
  ∀ n, P12980417532347491265.a n = A134142 n

end A134142

/-! ## A134142.P14343640928028480489

`A137505(n+1)-(A137505(n)+A108520(n+1))`
-/

namespace A134142.P14343640928028480489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (n + 1) - (A137505 n + A108520 (n + 1))

end

end A134142.P14343640928028480489

namespace A134142

/-- `A137505(n+1)-(A137505(n)+A108520(n+1))` -/
def P14343640928028480489.Spec : Prop :=
  ∀ n, P14343640928028480489.a n = A134142 n

end A134142

/-! ## A134142.P8710927533258886419

`A009116(n)+A016116(n+1)*A075553(n+1)`
-/

namespace A134142.P8710927533258886419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n + A016116 (n + 1) * A075553 (n + 1)

end

end A134142.P8710927533258886419

namespace A134142

/-- `A009116(n)+A016116(n+1)*A075553(n+1)` -/
def P8710927533258886419.Spec : Prop :=
  ∀ n, P8710927533258886419.a n = A134142 n

end A134142

/-!
# A134143: Let T(n) = (p, p+2) denote the n-th pair of twin primes. Let S(n) = 2p+2 (see A054735). Then a(n) = number of ways of writing S(n) as S(i) + S(j) with i <= j < m.

The programs for A134143, there is no canonical definition to state claims against.
-/

/-! ## A134143.P8031217823425610694

`A219157(A014574(n+1))`
-/

namespace A134143.P8031217823425610694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A014574 (n + 1)).toNat

end

end A134143.P8031217823425610694

/-! ## A134143.P15103589900449349089

`A219157(A001359(n+1)+1)`
-/

namespace A134143.P15103589900449349089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A001359 (n + 1) + 1).toNat

end

end A134143.P15103589900449349089

/-! ## A134143.P3345548524609448445

`A219157(A111166(n+1)+1)`
-/

namespace A134143.P3345548524609448445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A111166 (n + 1) + 1).toNat

end

end A134143.P3345548524609448445

/-! ## A134143.P6425605188651361436

`A219157(A006512(n+1)-1)`
-/

namespace A134143.P6425605188651361436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A006512 (n + 1) - 1).toNat

end

end A134143.P6425605188651361436

/-! ## A134143.P7686010168285669974

`A219157(A077800(2*n+1)+1)`
-/

namespace A134143.P7686010168285669974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A077800 (2 * n + 1) + 1).toNat

end

end A134143.P7686010168285669974

/-! ## A134143.P17626861107539053078

`A219157(A171821(2*n+1)+1)`
-/

namespace A134143.P17626861107539053078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A171821 (2 * n + 1) + 1).toNat

end

end A134143.P17626861107539053078

/-! ## A134143.P1151586238627545824

`A219157(A001097(2*n+1)-1)`
-/

namespace A134143.P1151586238627545824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A001097 (2 * n + 1) - 1).toNat

end

end A134143.P1151586238627545824

/-! ## A134143.P1301754399705991248

`A219157(A000203(A001359(n+1)))`
-/

namespace A134143.P1301754399705991248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A000203 (A001359 (n + 1)).toNat).toNat

end

end A134143.P1301754399705991248

/-! ## A134143.P388501991251945424

`A219157(A000010(A006512(n+1)))`
-/

namespace A134143.P388501991251945424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A000010 (A006512 (n + 1)).toNat).toNat

end

end A134143.P388501991251945424

/-! ## A134143.P13362006385972381869

`A219157(A000010(A001097(2*n+1)))`
-/

namespace A134143.P13362006385972381869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A000010 (A001097 (2 * n + 1)).toNat).toNat

end

end A134143.P13362006385972381869

/-! ## A134143.P13386423578912306805

`A219157(A000010(A077800(2*(n+1))))`
-/

namespace A134143.P13386423578912306805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A000010 (A077800 (2 * (n + 1))).toNat).toNat

end

end A134143.P13386423578912306805

/-! ## A134143.P12105281447488435949

`A219157(A000203(A077800(2*n+1)))`
-/

namespace A134143.P12105281447488435949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A000203 (A077800 (2 * n + 1)).toNat).toNat

end

end A134143.P12105281447488435949

/-!
# A134144: A certain partition array in Abramowitz-Stegun order (A-St order).

The programs for A134144, there is no canonical definition to state claims against.
-/

/-! ## A134144.P12491756062893959744

`A036040(n+1)*A134145(n+1)`
-/

namespace A134144.P12491756062893959744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A134145 (n + 1)

end

end A134144.P12491756062893959744

/-! ## A134144.P10275397041872196251

`A124794(A185974(n+1))*A134145(n+1)`
-/

namespace A134144.P10275397041872196251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A134145 (n + 1)

end

end A134144.P10275397041872196251

/-! ## A134144.P12327157358002180463

`A036038(n+1)/A096162(n+1)*A134145(n+1)`
-/

namespace A134144.P12327157358002180463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A134145 (n + 1) : ℚ)

end

end A134144.P12327157358002180463

/-! ## A134144.P17054100305728480577

`A036039(n+1)/A107106(n+1)*A134145(n+1)`
-/

namespace A134144.P17054100305728480577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A134145 (n + 1) : ℚ)

end

end A134144.P17054100305728480577

/-! ## A134144.P12981124797238854052

`A122454(n+1)/A098546(n+1)*A134145(n+1)`
-/

namespace A134144.P12981124797238854052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A134145 (n + 1) : ℚ)

end

end A134144.P12981124797238854052

/-!
# A134145: A certain partition array in Abramowitz-Stegun order (A-St order), called M_3(3)/M_3.

The programs for A134145, there is no canonical definition to state claims against.
-/

/-! ## A134145.P5629235767648077533

`A134144(n+1)/A036040(n+1)`
-/

namespace A134145.P5629235767648077533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134144 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A134145.P5629235767648077533

/-! ## A134145.P4723543352140580616

`A134144(n+1)/A124794(A185974(n+1))`
-/

namespace A134145.P4723543352140580616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134144 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A134145.P4723543352140580616

/-! ## A134145.P12431555423580408346

`A096162(n+1)/A036038(n+1)*A134144(n+1)`
-/

namespace A134145.P12431555423580408346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A134144 (n + 1) : ℚ)

end

end A134145.P12431555423580408346

/-! ## A134145.P4331833932689344958

`A134133(n+1)/A130561(n+1)*A134144(n+1)`
-/

namespace A134145.P4331833932689344958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A134144 (n + 1) : ℚ)

end

end A134145.P4331833932689344958

/-! ## A134145.P8815297324500841354

`A134144(n+1)/A143171(n+1)*A144269(n+1)`
-/

namespace A134145.P8815297324500841354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134144 (n + 1) : ℚ) / (A143171 (n + 1) : ℚ) * (A144269 (n + 1) : ℚ)

end

end A134145.P8815297324500841354

/-!
# A134146: Triangle of numbers obtained from the partition array A134145.

The programs for A134146, there is no canonical definition to state claims against.
-/

/-! ## A134146.P5689669327766762316

`A134145(∑[A361675(n)])`
-/

namespace A134146.P5689669327766762316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134146.P5689669327766762316

/-! ## A134146.P10695503583518445528

`A134145(A024648(n+1))`
-/

namespace A134146.P10695503583518445528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134145 (A024648 (n + 1)).toNat

end

end A134146.P10695503583518445528

/-! ## A134146.P14740320329468347610

`A134145(A024649(n+1))`
-/

namespace A134146.P14740320329468347610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134145 (A024649 (n + 1)).toNat

end

end A134146.P14740320329468347610

/-!
# A134147: Row sums of triangle A134146 and partition array A134145 (M3(3)/M3).

The programs for A134147, there is no canonical definition to state claims against.
-/

/-! ## A134147.P17960472765627170509

`A144270(2*(n+1)²)`
-/

namespace A134147.P17960472765627170509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144270 (2 * (n + 1) ^ 2)

end

end A134147.P17960472765627170509

/-!
# A134148: Alternating row sums of triangle A134146.

The programs for A134148, there is no canonical definition to state claims against.
-/

/-! ## A134148.P9451837857382639460

`A330224(A370304(n))`
-/

namespace A134148.P9451837857382639460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330224 (A370304 n).toNat

end

end A134148.P9451837857382639460

/-!
# A134149: A certain partition array in Abramowitz-Stegun (A-St) order.

The programs for A134149, there is no canonical definition to state claims against.
-/

/-! ## A134149.P7376990308091123756

`A036040(n+1)*A134150(n+1)`
-/

namespace A134149.P7376990308091123756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A134150 (n + 1)

end

end A134149.P7376990308091123756

/-! ## A134149.P5072673038429261678

`A124794(A185974(n+1))*A134150(n+1)`
-/

namespace A134149.P5072673038429261678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A134150 (n + 1)

end

end A134149.P5072673038429261678

/-! ## A134149.P851727098370205468

`A036038(n+1)/A096162(n+1)*A134150(n+1)`
-/

namespace A134149.P851727098370205468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A134150 (n + 1) : ℚ)

end

end A134149.P851727098370205468

/-! ## A134149.P13986201301196610377

`A036039(n+1)/A107106(n+1)*A134150(n+1)`
-/

namespace A134149.P13986201301196610377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A134150 (n + 1) : ℚ)

end

end A134149.P13986201301196610377

/-! ## A134149.P16376915147327593892

`A122454(n+1)/A098546(n+1)*A134150(n+1)`
-/

namespace A134149.P16376915147327593892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A134150 (n + 1) : ℚ)

end

end A134149.P16376915147327593892

/-!
# A134150: A certain partition array in Abramowitz-Stegun order (A-St order), called M_3(4)/M_3.

The programs for A134150, there is no canonical definition to state claims against.
-/

/-! ## A134150.P12278650279073354290

`A134149(n+1)/A036040(n+1)`
-/

namespace A134150.P12278650279073354290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134149 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A134150.P12278650279073354290

/-! ## A134150.P8663176460849324335

`A134149(n+1)/A124794(A185974(n+1))`
-/

namespace A134150.P8663176460849324335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134149 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A134150.P8663176460849324335

/-! ## A134150.P14170929818678353068

`A096162(n+1)/A036038(n+1)*A134149(n+1)`
-/

namespace A134150.P14170929818678353068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A134149 (n + 1) : ℚ)

end

end A134150.P14170929818678353068

/-! ## A134150.P13769586786044716752

`A134133(n+1)/A130561(n+1)*A134149(n+1)`
-/

namespace A134150.P13769586786044716752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A134149 (n + 1) : ℚ)

end

end A134150.P13769586786044716752

/-! ## A134150.P17056141127210760341

`A134145(n+1)/A134144(n+1)*A134149(n+1)`
-/

namespace A134150.P17056141127210760341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134145 (n + 1) : ℚ) / (A134144 (n + 1) : ℚ) * (A134149 (n + 1) : ℚ)

end

end A134150.P17056141127210760341

/-!
# A134151: Triangle of numbers obtained from the partition array A134150.

The programs for A134151, there is no canonical definition to state claims against.
-/

/-! ## A134151.P4582269563251355156

`A134150(∑[A241601(n)])`
-/

namespace A134151.P4582269563251355156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134151.P4582269563251355156

/-! ## A134151.P5993183770709539735

`A134150(A024648(n+1))`
-/

namespace A134151.P5993183770709539735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134150 (A024648 (n + 1)).toNat

end

end A134151.P5993183770709539735

/-! ## A134151.P101347182830728886

`A134150(A024649(n+1))`
-/

namespace A134151.P101347182830728886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134150 (A024649 (n + 1)).toNat

end

end A134151.P101347182830728886

/-!
# A134152: Row sums of triangle A134151 and partition array A134150 (M3(4)/M3).

The programs for A134152, there is no canonical definition to state claims against.
-/

/-! ## A134152.P16855344058491012054

`or(A004525(A349875(n+1))², A289427(n))`
-/

namespace A134152.P16855344058491012054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A349875 (n + 1)).toNat ^ 2) (A289427 n)

end

end A134152.P16855344058491012054

/-!
# A134153: a(n) = 15*n^2 + 9*n + 1.

The programs for A134153, the canonical program `A134153.P5690147584663230572` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134153 has offset 0).

The definition of A134153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²+9*n+1` (program `A134153.P5690147584663230572`, by `A134153.P5690147584663230572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134153.P11143459816965419110

`1+9*n+15*n²`
-/

namespace A134153.P11143459816965419110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 9 * n + 15 * n ^ 2

end

end A134153.P11143459816965419110

namespace A134153

/-- `1+9*n+15*n²` -/
def P11143459816965419110.Spec : Prop :=
  ∀ n, (P11143459816965419110.a n : ℤ) = A134153 n

theorem P11143459816965419110.correct : P11143459816965419110.Spec := by
  intro n
  simp only [A134153, Nat.add_sub_cancel, A134153.P11143459816965419110.a, A134153.P5690147584663230572.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134153

/-! ## A134153.P5690147584663230572

`15*n²+9*n+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134153

/-- `15*n²+9*n+1` -/
def P5690147584663230572.Spec : Prop :=
  ∀ n, (P5690147584663230572.a n : ℤ) = A134153 n

theorem P5690147584663230572.correct : P5690147584663230572.Spec := by
  intro n
  simp only [A134153]

end A134153

/-! ## A134153.P12435756907584970000

`∑[a(n-1)+30]` with `a(0)=1, a(1)=24`
-/

namespace A134153.P12435756907584970000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134153.P12435756907584970000

namespace A134153

/-- `∑[a(n-1)+30]` -/
def P12435756907584970000.Spec : Prop :=
  ∀ n, (P12435756907584970000.a n : ℤ) = A134153 n

end A134153

/-! ## A134153.P17414463454053626373

`∑[ogf((1+22x+7x^2)/(1-2x+x^2))]`
-/

namespace A134153.P17414463454053626373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 22, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134153.P17414463454053626373

namespace A134153

/-- `∑[ogf((1+22x+7x^2)/(1-2x+x^2))]` -/
def P17414463454053626373.Spec : Prop :=
  ∀ n, P17414463454053626373.a n = A134153 n

end A134153

/-! ## A134153.P7717823065026082101

`or(1, 6*(∑[5*n]-n))`
-/

namespace A134153.P7717823065026082101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)))

end

end A134153.P7717823065026082101

namespace A134153

/-- `or(1, 6*(∑[5*n]-n))` -/
def P7717823065026082101.Spec : Prop :=
  ∀ n, P7717823065026082101.a n = A134153 n

end A134153

/-! ## A134153.P7748800578584490804

`xor(1, 6*(∑[5*n]-n))`
-/

namespace A134153.P7748800578584490804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)))

end

end A134153.P7748800578584490804

namespace A134153

/-- `xor(1, 6*(∑[5*n]-n))` -/
def P7748800578584490804.Spec : Prop :=
  ∀ n, P7748800578584490804.a n = A134153 n

end A134153

/-! ## A134153.P327513749893368277

`A193249(n+1)%A016886(n)`
-/

namespace A134153.P327513749893368277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193249 (n + 1)) (A016886 n)

end

end A134153.P327513749893368277

namespace A134153

/-- `A193249(n+1)%A016886(n)` -/
def P327513749893368277.Spec : Prop :=
  ∀ n, P327513749893368277.a n = A134153 n

end A134153

/-! ## A134153.P9466346443198463305

`Δ[n*(A135706(n)-1)]`
-/

namespace A134153.P9466346443198463305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135706 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134153.P9466346443198463305

namespace A134153

/-- `Δ[n*(A135706(n)-1)]` -/
def P9466346443198463305.Spec : Prop :=
  ∀ n, P9466346443198463305.a n = A134153 n

end A134153

/-! ## A134153.P12516385624796968752

`Δ[(n-1)*A273982(n+1)]`
-/

namespace A134153.P12516385624796968752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A273982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134153.P12516385624796968752

namespace A134153

/-- `Δ[(n-1)*A273982(n+1)]` -/
def P12516385624796968752.Spec : Prop :=
  ∀ n, P12516385624796968752.a n = A134153 n

end A134153

/-! ## A134153.P11165869309378450660

`A119617(Δ[n²])`
-/

namespace A134153.P11165869309378450660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119617 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134153.P11165869309378450660

namespace A134153

/-- `A119617(Δ[n²])` -/
def P11165869309378450660.Spec : Prop :=
  ∀ n, P11165869309378450660.a n = A134153 n

end A134153

/-! ## A134153.P14736354608642586261

`∑[A113770(2*n)-2*n]`
-/

namespace A134153.P14736354608642586261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134153.P14736354608642586261

namespace A134153

/-- `∑[A113770(2*n)-2*n]` -/
def P14736354608642586261.Spec : Prop :=
  ∀ n, P14736354608642586261.a n = A134153 n

end A134153

/-! ## A134153.P12551932481163360649

`(A226489(2*n+1)-n)/2`
-/

namespace A134153.P12551932481163360649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226489 (2 * n + 1) - (n : ℤ) : ℚ) / 2

end

end A134153.P12551932481163360649

namespace A134153

/-- `(A226489(2*n+1)-n)/2` -/
def P12551932481163360649.Spec : Prop :=
  ∀ n, P12551932481163360649.a n = (A134153 n : ℚ)

end A134153

/-! ## A134153.P12057141484595660427

`∑[A261951(4*n)]`
-/

namespace A134153.P12057141484595660427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261951 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134153.P12057141484595660427

namespace A134153

/-- `∑[A261951(4*n)]` -/
def P12057141484595660427.Spec : Prop :=
  ∀ n, P12057141484595660427.a n = A134153 n

end A134153

/-! ## A134153.P5001439728428749132

`A242771(6*n+3)`
-/

namespace A134153.P5001439728428749132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (6 * n + 3)

end

end A134153.P5001439728428749132

namespace A134153

/-- `A242771(6*n+3)` -/
def P5001439728428749132.Spec : Prop :=
  ∀ n, P5001439728428749132.a n = A134153 n

end A134153

/-! ## A134153.P6263068204733807160

`A308159(A017557(n))`
-/

namespace A134153.P6263068204733807160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308159 (A017557 n).toNat

end

end A134153.P6263068204733807160

namespace A134153

/-- `A308159(A017557(n))` -/
def P6263068204733807160.Spec : Prop :=
  ∀ n, P6263068204733807160.a n = A134153 n

end A134153

/-! ## A134153.P7601969684770611529

`A211543(A139606(n))`
-/

namespace A134153.P7601969684770611529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211543 (A139606 n).toNat

end

end A134153.P7601969684770611529

namespace A134153

/-- `A211543(A139606(n))` -/
def P7601969684770611529.Spec : Prop :=
  ∀ n, P7601969684770611529.a n = A134153 n

end A134153

/-! ## A134153.P2183675070330709750

`∑[A301720(A008458(n)-1)]`
-/

namespace A134153.P2183675070330709750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 (A008458 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134153.P2183675070330709750

namespace A134153

/-- `∑[A301720(A008458(n)-1)]` -/
def P2183675070330709750.Spec : Prop :=
  ∀ n, P2183675070330709750.a n = A134153 n

end A134153

/-! ## A134153.P1448457807156435518

`A025770(A128470(n)+1)`
-/

namespace A134153.P1448457807156435518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (A128470 n + 1).toNat

end

end A134153.P1448457807156435518

namespace A134153

/-- `A025770(A128470(n)+1)` -/
def P1448457807156435518.Spec : Prop :=
  ∀ n, P1448457807156435518.a n = A134153 n

end A134153

/-! ## A134153.P7043896843643729835

`A025776(A139222(n+1))`
-/

namespace A134153.P7043896843643729835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025776 (A139222 (n + 1)).toNat

end

end A134153.P7043896843643729835

namespace A134153

/-- `A025776(A139222(n+1))` -/
def P7043896843643729835.Spec : Prop :=
  ∀ n, P7043896843643729835.a n = A134153 n

end A134153

/-! ## A134153.P16694104186650128283

`A025795(A139222(n+1)+1)`
-/

namespace A134153.P16694104186650128283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (A139222 (n + 1) + 1).toNat

end

end A134153.P16694104186650128283

namespace A134153

/-- `A025795(A139222(n+1)+1)` -/
def P16694104186650128283.Spec : Prop :=
  ∀ n, P16694104186650128283.a n = A134153 n

end A134153

/-!
# A134154: a(n) = 15*n^2 - 9*n + 1.

The programs for A134154, the canonical program `A134154.P10105203805466113981` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134154 has offset 0).

The definition of A134154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²-9*n+1` (program `A134154.P10105203805466113981`, by `A134154.P10105203805466113981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134154.P7873661630620381073

`1-9*n+15*n²`
-/

namespace A134154.P7873661630620381073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (9 * n : ℤ) + (15 * n ^ 2 : ℤ)

end

end A134154.P7873661630620381073

namespace A134154

/-- `1-9*n+15*n²` -/
def P7873661630620381073.Spec : Prop :=
  ∀ n, P7873661630620381073.a n = A134154 n

theorem P7873661630620381073.correct : P7873661630620381073.Spec := by
  intro n
  simp only [A134154, Nat.add_sub_cancel, A134154.P7873661630620381073.a, A134154.P10105203805466113981.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134154

/-! ## A134154.P10105203805466113981

`15*n²-9*n+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134154

/-- `15*n²-9*n+1` -/
def P10105203805466113981.Spec : Prop :=
  ∀ n, P10105203805466113981.a n = A134154 n

theorem P10105203805466113981.correct : P10105203805466113981.Spec := by
  intro n
  simp only [A134154]

end A134154

/-! ## A134154.P18316051564302575061

`∑[a(n-1)+30]` with `a(0)=1, a(1)=6`
-/

namespace A134154.P18316051564302575061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134154.P18316051564302575061

namespace A134154

/-- `∑[a(n-1)+30]` -/
def P18316051564302575061.Spec : Prop :=
  ∀ n, (P18316051564302575061.a n : ℤ) = A134154 n

end A134154

/-! ## A134154.P8587522355169527519

`or(1, n*(15*n-9))`
-/

namespace A134154.P8587522355169527519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((15 * n : ℤ) - 9))

end

end A134154.P8587522355169527519

namespace A134154

/-- `or(1, n*(15*n-9))` -/
def P8587522355169527519.Spec : Prop :=
  ∀ n, P8587522355169527519.a n = A134154 n

end A134154

/-! ## A134154.P5259944584350213395

`xor(1, n*(15*n-9))`
-/

namespace A134154.P5259944584350213395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((15 * n : ℤ) - 9))

end

end A134154.P5259944584350213395

namespace A134154

/-- `xor(1, n*(15*n-9))` -/
def P5259944584350213395.Spec : Prop :=
  ∀ n, P5259944584350213395.a n = A134154 n

end A134154

/-! ## A134154.P7392580910801907328

`floor(sqrt((A153795(n)+2+n)²-1))`
-/

namespace A134154.P7392580910801907328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A153795 n + 2 + (n : ℤ)) ^ 2 - 1)

end

end A134154.P7392580910801907328

namespace A134154

/-- `floor(sqrt((A153795(n)+2+n)²-1))` -/
def P7392580910801907328.Spec : Prop :=
  ∀ n, P7392580910801907328.a n = A134154 n

end A134154

/-! ## A134154.P7201250827203516765

`A119617(A004277(n))`
-/

namespace A134154.P7201250827203516765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119617 (A004277 n).toNat

end

end A134154.P7201250827203516765

namespace A134154

/-- `A119617(A004277(n))` -/
def P7201250827203516765.Spec : Prop :=
  ∀ n, P7201250827203516765.a n = A134154 n

end A134154

/-! ## A134154.P5852538087256246808

`A119617(A004275(n+1))`
-/

namespace A134154.P5852538087256246808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119617 (A004275 (n + 1)).toNat

end

end A134154.P5852538087256246808

namespace A134154

/-- `A119617(A004275(n+1))` -/
def P5852538087256246808.Spec : Prop :=
  ∀ n, P5852538087256246808.a n = A134154 n

end A134154

/-! ## A134154.P475151364023045377

`A119617(A008486(n)-n)`
-/

namespace A134154.P475151364023045377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119617 (A008486 n - (n : ℤ)).toNat

end

end A134154.P475151364023045377

namespace A134154

/-- `A119617(A008486(n)-n)` -/
def P475151364023045377.Spec : Prop :=
  ∀ n, P475151364023045377.a n = A134154 n

end A134154

/-! ## A134154.P1125076977235963264

`A119617(A257143(2*n)-n)`
-/

namespace A134154.P1125076977235963264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119617 (A257143 (2 * n) - (n : ℤ)).toNat

end

end A134154.P1125076977235963264

namespace A134154

/-- `A119617(A257143(2*n)-n)` -/
def P1125076977235963264.Spec : Prop :=
  ∀ n, P1125076977235963264.a n = A134154 n

end A134154

/-!
# A134155: a(n) = 1 + 21 n + 168 n^2 + 588 n^3 + 1029 n^4.

The programs for A134155, the canonical program `A134155.P5940835164224780392` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134155 has offset 0).

The definition of A134155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134155.P5940835164224780392

`(3*(7*n+1)^4+6*(7*n+1)²-3*(7*n+1)+1)/7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134155

/-- `(3*(7*n+1)^4+6*(7*n+1)²-3*(7*n+1)+1)/7` -/
def P5940835164224780392.Spec : Prop :=
  ∀ n, P5940835164224780392.a n = (A134155 n : ℚ)

end A134155

/-!
# A134156: a(n) = 2*tau(n) - n, where tau(n) is the number of divisors of n (A000005).

The programs for A134156, the canonical program `A134156.P1804567720612264438` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134156 has offset 1).

The definition of A134156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134156.P10764392923020422013

`n+1-2*A049820(n+1)`
-/

namespace A134156.P10764392923020422013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A049820 (n + 1)

end

end A134156.P10764392923020422013

namespace A134156

/-- `n+1-2*A049820(n+1)` -/
def P10764392923020422013.Spec : Prop :=
  ∀ n, P10764392923020422013.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P1804567720612264438

`A000005(n+1)-A049820(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134156

/-- `A000005(n+1)-A049820(n+1)` -/
def P1804567720612264438.Spec : Prop :=
  ∀ n, P1804567720612264438.a n = A134156 (n + 1)

theorem P1804567720612264438.correct : P1804567720612264438.Spec := by
  intro n
  simp only [A134156, Nat.add_sub_cancel]

end A134156

/-! ## A134156.P5265759377232963660

`∑{d}[n+1, ceil(atan(#))]-n`
-/

namespace A134156.P5265759377232963660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉ - (n : ℤ)

end

end A134156.P5265759377232963660

namespace A134156

/-- `∑{d}[n+1, ceil(atan(#))]-n` -/
def P5265759377232963660.Spec : Prop :=
  ∀ n, P5265759377232963660.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P12904649182643233936

`A114003(n+1)-n`
-/

namespace A134156.P12904649182643233936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - (n : ℤ)

end

end A134156.P12904649182643233936

namespace A134156

/-- `A114003(n+1)-n` -/
def P12904649182643233936.Spec : Prop :=
  ∀ n, P12904649182643233936.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P18179409564313058966

`A062011(n+1)-(n+1)`
-/

namespace A134156.P18179409564313058966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - (n + 1 : ℤ)

end

end A134156.P18179409564313058966

namespace A134156

/-- `A062011(n+1)-(n+1)` -/
def P18179409564313058966.Spec : Prop :=
  ∀ n, P18179409564313058966.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P10016214088799401061

`∑{d}[n+1, 2-A000010(#)]`
-/

namespace A134156.P10016214088799401061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - A000010 d)

end

end A134156.P10016214088799401061

namespace A134156

/-- `∑{d}[n+1, 2-A000010(#)]` -/
def P10016214088799401061.Spec : Prop :=
  ∀ n, P10016214088799401061.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P398413158761902527

`∑[2*A341062(n+1)-1]`
-/

namespace A134156.P398413158761902527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341062 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134156.P398413158761902527

namespace A134156

/-- `∑[2*A341062(n+1)-1]` -/
def P398413158761902527.Spec : Prop :=
  ∀ n, P398413158761902527.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P10987362880235707090

`A145154(n+1)/2-(n+1)`
-/

namespace A134156.P10987362880235707090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A134156.P10987362880235707090

namespace A134156

/-- `A145154(n+1)/2-(n+1)` -/
def P10987362880235707090.Spec : Prop :=
  ∀ n, P10987362880235707090.a n = (A134156 (n + 1) : ℚ)

end A134156

/-! ## A134156.P7134771981107344432

`∑{d}[n+1, A020639(2*#)]-(n+1)`
-/

namespace A134156.P7134771981107344432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) - (n + 1 : ℤ)

end

end A134156.P7134771981107344432

namespace A134156

/-- `∑{d}[n+1, A020639(2*#)]-(n+1)` -/
def P7134771981107344432.Spec : Prop :=
  ∀ n, P7134771981107344432.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P8068214225203307545

`A004273(A000005(n+1))-n`
-/

namespace A134156.P8068214225203307545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000005 (n + 1)).toNat - (n : ℤ)

end

end A134156.P8068214225203307545

namespace A134156

/-- `A004273(A000005(n+1))-n` -/
def P8068214225203307545.Spec : Prop :=
  ∀ n, P8068214225203307545.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P16798502507437187140

`A001650(A035116(n+1))-n`
-/

namespace A134156.P16798502507437187140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A035116 (n + 1)).toNat - (n : ℤ)

end

end A134156.P16798502507437187140

namespace A134156

/-- `A001650(A035116(n+1))-n` -/
def P16798502507437187140.Spec : Prop :=
  ∀ n, P16798502507437187140.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P4256169930533242179

`A005408(A032741(n+1))-n`
-/

namespace A134156.P4256169930533242179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A032741 (n + 1)).toNat - (n : ℤ)

end

end A134156.P4256169930533242179

namespace A134156

/-- `A005408(A032741(n+1))-n` -/
def P4256169930533242179.Spec : Prop :=
  ∀ n, P4256169930533242179.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P13378374797252674840

`A027170(A066446(n+1))-n`
-/

namespace A134156.P13378374797252674840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A066446 (n + 1)).toNat - (n : ℤ)

end

end A134156.P13378374797252674840

namespace A134156

/-- `A027170(A066446(n+1))-n` -/
def P13378374797252674840.Spec : Prop :=
  ∀ n, P13378374797252674840.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P4851652375748302235

`A086369(n+1)-A052928(n)`
-/

namespace A134156.P4851652375748302235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (n + 1) - A052928 n

end

end A134156.P4851652375748302235

namespace A134156

/-- `A086369(n+1)-A052928(n)` -/
def P4851652375748302235.Spec : Prop :=
  ∀ n, P4851652375748302235.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P3972308151261955763

`A158405(A184389(n+1))-n`
-/

namespace A134156.P3972308151261955763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A184389 (n + 1)).toNat - (n : ℤ)

end

end A134156.P3972308151261955763

namespace A134156

/-- `A158405(A184389(n+1))-n` -/
def P3972308151261955763.Spec : Prop :=
  ∀ n, P3972308151261955763.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P9666980076880529064

`A001650(A000005(n+1)²)-n`
-/

namespace A134156.P9666980076880529064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A000005 (n + 1) ^ 2).toNat - (n : ℤ)

end

end A134156.P9666980076880529064

namespace A134156

/-- `A001650(A000005(n+1)²)-n` -/
def P9666980076880529064.Spec : Prop :=
  ∀ n, P9666980076880529064.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P4330210884808139687

`A004741(A000005(n+1)²)-n`
-/

namespace A134156.P4330210884808139687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A000005 (n + 1) ^ 2).toNat - (n : ℤ)

end

end A134156.P4330210884808139687

namespace A134156

/-- `A004741(A000005(n+1)²)-n` -/
def P4330210884808139687.Spec : Prop :=
  ∀ n, P4330210884808139687.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P1064774904044392461

`A055086(A000005(n+1)²)-n`
-/

namespace A134156.P1064774904044392461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A000005 (n + 1) ^ 2).toNat - (n : ℤ)

end

end A134156.P1064774904044392461

namespace A134156

/-- `A055086(A000005(n+1)²)-n` -/
def P1064774904044392461.Spec : Prop :=
  ∀ n, P1064774904044392461.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P411553169474123254

`A066635(A000005(n+1)²)-n`
-/

namespace A134156.P411553169474123254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A000005 (n + 1) ^ 2).toNat - (n : ℤ)

end

end A134156.P411553169474123254

namespace A134156

/-- `A066635(A000005(n+1)²)-n` -/
def P411553169474123254.Spec : Prop :=
  ∀ n, P411553169474123254.a n = A134156 (n + 1)

end A134156

/-! ## A134156.P10803573847656724557

`A109446(A000005(n+1)²)-n`
-/

namespace A134156.P10803573847656724557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109446 (A000005 (n + 1) ^ 2).toNat - (n : ℤ)

end

end A134156.P10803573847656724557

namespace A134156

/-- `A109446(A000005(n+1)²)-n` -/
def P10803573847656724557.Spec : Prop :=
  ∀ n, P10803573847656724557.a n = A134156 (n + 1)

end A134156

/-!
# A134157: Number of partitions of n into parts that are odd or == +- 4 mod 10.

The programs for A134157, there is no canonical definition to state claims against.
-/

/-! ## A134157.P16276501917811707694

`A000196(∑[A238686(n)]-n)`
-/

namespace A134157.P16276501917811707694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A134157.P16276501917811707694

/-! ## A134157.P17515665800373122882

`A000196(A057944(∑[A238686(n)]))`
-/

namespace A134157.P17515665800373122882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A057944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A134157.P17515665800373122882

/-! ## A134157.P9978840141517587861

`A000196(A320968(n)-A305124(n))`
-/

namespace A134157.P9978840141517587861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A320968 n - A305124 n).toNat

end

end A134157.P9978840141517587861

/-! ## A134157.P18237345893903483042

`A000196(A004396(∑[A285290(n)]))`
-/

namespace A134157.P18237345893903483042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A134157.P18237345893903483042

/-! ## A134157.P16252674580687688249

`A191291(A051013(n+2)+A046800(n))`
-/

namespace A134157.P16252674580687688249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A051013 (n + 2) + A046800 n).toNat

end

end A134157.P16252674580687688249

/-!
# A134158: a(n) = 1 + 27n + 252n^2 + 882n^3 + 1029n^4.

The programs for A134158, the canonical program `A134158.P4400817752520079399` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134158 has offset 0).

The definition of A134158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134158.P4400817752520079399

`(3*(7*n+1)^4+6*(7*n+1)^3-3*(7*n+1)+1)/7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134158

/-- `(3*(7*n+1)^4+6*(7*n+1)^3-3*(7*n+1)+1)/7` -/
def P4400817752520079399.Spec : Prop :=
  ∀ n, P4400817752520079399.a n = (A134158 n : ℚ)

end A134158

/-! ## A134158.P15075292425023321989

`floor(A181475(A016993(n))/7)`
-/

namespace A134158.P15075292425023321989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181475 (A016993 n).toNat : ℚ) / 7⌋

end

end A134158.P15075292425023321989

namespace A134158

/-- `floor(A181475(A016993(n))/7)` -/
def P15075292425023321989.Spec : Prop :=
  ∀ n, P15075292425023321989.a n = A134158 n

end A134158

/-! ## A134158.P11380706944373231460

`(A181475(A016993(n))/7)%A016901(n)`
-/

namespace A134158.P11380706944373231460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A181475 (A016993 n).toNat : ℚ) / 7)) (A016901 n)

end

end A134158.P11380706944373231460

namespace A134158

/-- `(A181475(A016993(n))/7)%A016901(n)` -/
def P11380706944373231460.Spec : Prop :=
  ∀ n, P11380706944373231460.a n = A134158 n

end A134158

/-! ## A134158.P11211460471698822285

`A181475(A016993(n))/7*A094267(4*n)`
-/

namespace A134158.P11211460471698822285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A016993 n).toNat : ℚ) / 7 * (A094267 (4 * n) : ℚ)

end

end A134158.P11211460471698822285

namespace A134158

/-- `A181475(A016993(n))/7*A094267(4*n)` -/
def P11211460471698822285.Spec : Prop :=
  ∀ n, P11211460471698822285.a n = (A134158 n : ℚ)

end A134158

/-! ## A134158.P7741590353000357324

`A181475(A016993(n))/7*A001221(A061351(n))`
-/

namespace A134158.P7741590353000357324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A016993 n).toNat : ℚ) / 7 * (A001221 (A061351 n).toNat : ℚ)

end

end A134158.P7741590353000357324

namespace A134158

/-- `A181475(A016993(n))/7*A001221(A061351(n))` -/
def P7741590353000357324.Spec : Prop :=
  ∀ n, P7741590353000357324.a n = (A134158 n : ℚ)

end A134158

/-! ## A134158.P9396894032352127706

`A181475(A016993(n))/7*A007318(C(n, 64))`
-/

namespace A134158.P9396894032352127706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A016993 n).toNat : ℚ) / 7 * (A007318 (Nat.choose n 64) : ℚ)

end

end A134158.P9396894032352127706

namespace A134158

/-- `A181475(A016993(n))/7*A007318(C(n, 64))` -/
def P9396894032352127706.Spec : Prop :=
  ∀ n, P9396894032352127706.a n = (A134158 n : ℚ)

end A134158

/-!
# A134159: a(n) = 13 + 165*n + 756*n^2 + 1470*n^3 + 1029*n^4.

The programs for A134159, the canonical program `A134159.P22653532678620527` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134159 has offset 0).

The definition of A134159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134159.P22653532678620527

`(3*(7*n+2)^4+6*(7*n+2)^3-3*(7*n+2)+1)/7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134159

/-- `(3*(7*n+2)^4+6*(7*n+2)^3-3*(7*n+2)+1)/7` -/
def P22653532678620527.Spec : Prop :=
  ∀ n, P22653532678620527.a n = (A134159 n : ℚ)

end A134159

/-! ## A134159.P17178836663854715858

`floor(A181475(A017005(n))/7)`
-/

namespace A134159.P17178836663854715858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181475 (A017005 n).toNat : ℚ) / 7⌋

end

end A134159.P17178836663854715858

namespace A134159

/-- `floor(A181475(A017005(n))/7)` -/
def P17178836663854715858.Spec : Prop :=
  ∀ n, P17178836663854715858.a n = A134159 n

end A134159

/-! ## A134159.P11336114865008950831

`A181475(A017005(n))/7-n*A000038(n)`
-/

namespace A134159.P11336114865008950831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A017005 n).toNat : ℚ) / 7 - ((n : ℤ) * A000038 n : ℚ)

end

end A134159.P11336114865008950831

namespace A134159

/-- `A181475(A017005(n))/7-n*A000038(n)` -/
def P11336114865008950831.Spec : Prop :=
  ∀ n, P11336114865008950831.a n = (A134159 n : ℚ)

end A134159

/-! ## A134159.P15402402200488640987

`A181475(A017005(n))/7*A000045(C(2, n)!)`
-/

namespace A134159.P15402402200488640987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A017005 n).toNat : ℚ) / 7 * (A000045 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A134159.P15402402200488640987

namespace A134159

/-- `A181475(A017005(n))/7*A000045(C(2, n)!)` -/
def P15402402200488640987.Spec : Prop :=
  ∀ n, P15402402200488640987.a n = (A134159 n : ℚ)

end A134159

/-! ## A134159.P9645165478381979443

`A181475(A017005(n))/7-A008683(8*n+4)`
-/

namespace A134159.P9645165478381979443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A017005 n).toNat : ℚ) / 7 - (A008683 (8 * n + 4) : ℚ)

end

end A134159.P9645165478381979443

namespace A134159

/-- `A181475(A017005(n))/7-A008683(8*n+4)` -/
def P9645165478381979443.Spec : Prop :=
  ∀ n, P9645165478381979443.a n = (A134159 n : ℚ)

end A134159

/-! ## A134159.P12077425029266251447

`(A181475(A017005(n))/7)%∑[A300664(n+1)]²`
-/

namespace A134159.P12077425029266251447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A181475 (A017005 n).toNat : ℚ) / 7)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A134159.P12077425029266251447

namespace A134159

/-- `(A181475(A017005(n))/7)%∑[A300664(n+1)]²` -/
def P12077425029266251447.Spec : Prop :=
  ∀ n, P12077425029266251447.a n = A134159 n

end A134159

/-! ## A134159.P8310957507920109692

`A213714(A055938(n+1))+A181475(A017005(n))/7`
-/

namespace A134159.P8310957507920109692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213714 (A055938 (n + 1)).toNat : ℚ) + (A181475 (A017005 n).toNat : ℚ) / 7

end

end A134159.P8310957507920109692

namespace A134159

/-- `A213714(A055938(n+1))+A181475(A017005(n))/7` -/
def P8310957507920109692.Spec : Prop :=
  ∀ n, P8310957507920109692.a n = (A134159 n : ℚ)

end A134159

/-! ## A134159.P3985285934012433190

`(A181475(A017005(n))/7)%A203835(n+1)²`
-/

namespace A134159.P3985285934012433190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A181475 (A017005 n).toNat : ℚ) / 7)) (A203835 (n + 1) ^ 2)

end

end A134159.P3985285934012433190

namespace A134159

/-- `(A181475(A017005(n))/7)%A203835(n+1)²` -/
def P3985285934012433190.Spec : Prop :=
  ∀ n, P3985285934012433190.a n = A134159 n

end A134159

/-! ## A134159.P1699727140554930527

`A181475(A017005(n))/7*A007318(∑[n])`
-/

namespace A134159.P1699727140554930527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181475 (A017005 n).toNat : ℚ) / 7 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A134159.P1699727140554930527

namespace A134159

/-- `A181475(A017005(n))/7*A007318(∑[n])` -/
def P1699727140554930527.Spec : Prop :=
  ∀ n, P1699727140554930527.a n = (A134159 n : ℚ)

end A134159

/-!
# A134160: a(n) = 163 + 1053*n + 2520*n^2 + 2646*n^3 + 1029*n^4.

The programs for A134160, the canonical program `A134160.P10358740035016395964` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134160 has offset 0).

The definition of A134160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134160.P10358740035016395964

`(3*(7*n+4)^4+6*(7*n+4)^3-3*(7*n+4)+1)/7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134160

/-- `(3*(7*n+4)^4+6*(7*n+4)^3-3*(7*n+4)+1)/7` -/
def P10358740035016395964.Spec : Prop :=
  ∀ n, P10358740035016395964.a n = (A134160 n : ℚ)

end A134160

/-! ## A134160.P11907275723958189709

`A133180(record[xor(3, n)])`
-/

namespace A134160.P11907275723958189709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133180 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A134160.P11907275723958189709

namespace A134160

/-- `A133180(record[xor(3, n)])` -/
def P11907275723958189709.Spec : Prop :=
  ∀ n, P11907275723958189709.a n = A134160 n

end A134160

/-! ## A134160.P1372209126114044184

`A133180(lt[1, val(n+1, 2)])`
-/

namespace A134160.P1372209126114044184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133180 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134160.P1372209126114044184

namespace A134160

/-- `A133180(lt[1, val(n+1, 2)])` -/
def P1372209126114044184.Spec : Prop :=
  ∀ n, P1372209126114044184.a n = A134160 n

end A134160

/-! ## A134160.P2102113007728894564

`A133180(3*(n+1)+n)`
-/

namespace A134160.P2102113007728894564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133180 (3 * (n + 1) + n)

end

end A134160.P2102113007728894564

namespace A134160

/-- `A133180(3*(n+1)+n)` -/
def P2102113007728894564.Spec : Prop :=
  ∀ n, P2102113007728894564.a n = A134160 n

end A134160

/-!
# A134161: a(n) = 373 + 1947*n + 3780*n^2 + 3234*n^3 + 1029*n^4.

The programs for A134161, the canonical program `A134161.P3873365266363749870` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134161 has offset 0).

The definition of A134161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134161.P3873365266363749870

`(3*(7*n+5)^4+6*(7*n+5)^3-3*(7*n+5)+1)/7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134161

/-- `(3*(7*n+5)^4+6*(7*n+5)^3-3*(7*n+5)+1)/7` -/
def P3873365266363749870.Spec : Prop :=
  ∀ n, P3873365266363749870.a n = (A134161 n : ℚ)

end A134161

/-! ## A134161.P6786338087860916141

`A301683(A301683(3*n+2)-1)`
-/

namespace A134161.P6786338087860916141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301683 (A301683 (3 * n + 2) - 1).toNat

end

end A134161.P6786338087860916141

namespace A134161

/-- `A301683(A301683(3*n+2)-1)` -/
def P6786338087860916141.Spec : Prop :=
  ∀ n, P6786338087860916141.a n = A134161 n

end A134161

/-! ## A134161.P14460322040486218310

`A133180(4*(n+1))`
-/

namespace A134161.P14460322040486218310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133180 (4 * (n + 1))

end

end A134161.P14460322040486218310

namespace A134161

/-- `A133180(4*(n+1))` -/
def P14460322040486218310.Spec : Prop :=
  ∀ n, P14460322040486218310.a n = A134161 n

end A134161

/-!
# A134163: a(n) = 1 + 12*n + 81*n^3 + n*(105*n + 81*n^3)/2.

The programs for A134163, the canonical program `A134163.P3502369401792325863` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134163 has offset 0).

The definition of A134163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134163.P3502369401792325863

`1+12*n+81*n^3+n*(105*n+81*n^3)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134163

/-- `1+12*n+81*n^3+n*(105*n+81*n^3)/2` -/
def P3502369401792325863.Spec : Prop :=
  ∀ n, P3502369401792325863.a n = (A134163 n : ℚ)

end A134163

/-! ## A134163.P2075543686589308034

`abs((n+1)*A004188(3*n+1)-n)`
-/

namespace A134163.P2075543686589308034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A004188 (3 * n + 1) - (n : ℤ)|

end

end A134163.P2075543686589308034

namespace A134163

/-- `abs((n+1)*A004188(3*n+1)-n)` -/
def P2075543686589308034.Spec : Prop :=
  ∀ n, P2075543686589308034.a n = A134163 n

end A134163

/-! ## A134163.P5284578225141956428

`A154262(Δ[n^3])/2`
-/

namespace A134163.P5284578225141956428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154262 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A134163.P5284578225141956428

namespace A134163

/-- `A154262(Δ[n^3])/2` -/
def P5284578225141956428.Spec : Prop :=
  ∀ n, P5284578225141956428.a n = (A134163 n : ℚ)

end A134163

/-!
# A134164: a(n) = 8*(6*n^2-37*n+60)*n^(n-7)*(2*n-7)!/(n-4)!.

The programs for A134164, the canonical program `A134164.P4949817403598902697` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134164 has offset 4).

The definition of A134164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134164.P4949817403598902697

`8*(6*(n+4)²-37*(n+4)+60)*(n+4)^(n-3)*(2*(n+4)-7)!/n!`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134164

/-- `8*(6*(n+4)²-37*(n+4)+60)*(n+4)^(n-3)*(2*(n+4)-7)!/n!` -/
def P4949817403598902697.Spec : Prop :=
  ∀ n, P4949817403598902697.a n = (A134164 (n + 4) : ℚ)

end A134164

/-!
# A134165: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are disjoint and for which either x is a subset of y or y is a subset of x, or 1) x and y are disjoint and for which x is not a subset of y and y is not a subset of x, or 2) x and y are intersecting but for which x is not a subset of y and y is not a subset of x, or 3) x = y.

The programs for A134165, the canonical program `A134165.P11887873762900980944` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134165 has offset 0).

The definition of A134165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134165.P11887873762900980944

`1/2*(4^n-2*3^n+5*2^n-2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134165

/-- `1/2*(4^n-2*3^n+5*2^n-2)` -/
def P11887873762900980944.Spec : Prop :=
  ∀ n, P11887873762900980944.a n = (A134165 n : ℚ)

end A134165

/-! ## A134165.P5396897359089239889

`A133789(n)+2^n`
-/

namespace A134165.P5396897359089239889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n + (2 ^ n : ℤ)

end

end A134165.P5396897359089239889

namespace A134165

/-- `A133789(n)+2^n` -/
def P5396897359089239889.Spec : Prop :=
  ∀ n, P5396897359089239889.a n = A134165 n

end A134165

/-! ## A134165.P7567068759296259561

`A084869(n)+2^n-1`
-/

namespace A134165.P7567068759296259561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + ((2 ^ n : ℤ) - 1)

end

end A134165.P7567068759296259561

namespace A134165

/-- `A084869(n)+2^n-1` -/
def P7567068759296259561.Spec : Prop :=
  ∀ n, P7567068759296259561.a n = A134165 n

end A134165

/-! ## A134165.P5849429082890190489

`abs((2^n-1)*(2^(n-1)-1)-A083324(n))`
-/

namespace A134165.P5849429082890190489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) - (A083324 n : ℚ)|

end

end A134165.P5849429082890190489

namespace A134165

/-- `abs((2^n-1)*(2^(n-1)-1)-A083324(n))` -/
def P5849429082890190489.Spec : Prop :=
  ∀ n, P5849429082890190489.a n = (A134165 n : ℚ)

end A134165

/-! ## A134165.P8748056004916031082

`A000225(n)+(2^n+3)*2^(n-1)-3^n`
-/

namespace A134165.P8748056004916031082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) + ((2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (3 ^ n : ℚ))

end

end A134165.P8748056004916031082

namespace A134165

/-- `A000225(n)+(2^n+3)*2^(n-1)-3^n` -/
def P8748056004916031082.Spec : Prop :=
  ∀ n, P8748056004916031082.a n = (A134165 n : ℚ)

end A134165

/-! ## A134165.P14264434823183537236

`A134019(n)+A003462(n)`
-/

namespace A134165.P14264434823183537236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n + A003462 n

end

end A134165.P14264434823183537236

namespace A134165

/-- `A134019(n)+A003462(n)` -/
def P14264434823183537236.Spec : Prop :=
  ∀ n, P14264434823183537236.a n = A134165 n

end A134165

/-! ## A134165.P3516838639251759767

`A134018(n)+A007051(n)`
-/

namespace A134165.P3516838639251759767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n + A007051 n

end

end A134165.P3516838639251759767

namespace A134165

/-- `A134018(n)+A007051(n)` -/
def P3516838639251759767.Spec : Prop :=
  ∀ n, P3516838639251759767.a n = A134165 n

end A134165

/-! ## A134165.P1092689656227531141

`A394314(n)+A003945(n)`
-/

namespace A134165.P1092689656227531141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394314 n + A003945 n

end

end A134165.P1092689656227531141

namespace A134165

/-- `A394314(n)+A003945(n)` -/
def P1092689656227531141.Spec : Prop :=
  ∀ n, P1092689656227531141.a n = A134165 n

end A134165

/-! ## A134165.P10606081374762167999

`A094375(n)-A091344(n)`
-/

namespace A134165.P10606081374762167999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n - A091344 n

end

end A134165.P10606081374762167999

namespace A134165

/-- `A094375(n)-A091344(n)` -/
def P10606081374762167999.Spec : Prop :=
  ∀ n, P10606081374762167999.a n = A134165 n

end A134165

/-! ## A134165.P4397696469149901137

`A083324(n)-A134057(n)`
-/

namespace A134165.P4397696469149901137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 n - A134057 n

end

end A134165.P4397696469149901137

namespace A134165

/-- `A083324(n)-A134057(n)` -/
def P4397696469149901137.Spec : Prop :=
  ∀ n, P4397696469149901137.a n = A134165 n

end A134165

/-! ## A134165.P5974049679098993667

`A257272(n)-A001550(n)`
-/

namespace A134165.P5974049679098993667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 n - A001550 n

end

end A134165.P5974049679098993667

namespace A134165

/-- `A257272(n)-A001550(n)` -/
def P5974049679098993667.Spec : Prop :=
  ∀ n, P5974049679098993667.a n = A134165 n

end A134165

/-! ## A134165.P18172624931216248260

`A256873(n)-A034472(n)`
-/

namespace A134165.P18172624931216248260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n - A034472 n

end

end A134165.P18172624931216248260

namespace A134165

/-- `A256873(n)-A034472(n)` -/
def P18172624931216248260.Spec : Prop :=
  ∀ n, P18172624931216248260.a n = A134165 n

end A134165

/-! ## A134165.P18172260058080498626

`A257273(n)-A083323(n)`
-/

namespace A134165.P18172260058080498626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A083323 n

end

end A134165.P18172260058080498626

namespace A134165

/-- `A257273(n)-A083323(n)` -/
def P18172260058080498626.Spec : Prop :=
  ∀ n, P18172260058080498626.a n = A134165 n

end A134165

/-! ## A134165.P12778549406701997301

`A281481(n)-A101052(n)`
-/

namespace A134165.P12778549406701997301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n - A101052 n

end

end A134165.P12778549406701997301

namespace A134165

/-- `A281481(n)-A101052(n)` -/
def P12778549406701997301.Spec : Prop :=
  ∀ n, P12778549406701997301.a n = A134165 n

end A134165

/-! ## A134165.P7292420672900134300

`A094374(n)+A032263(n+1)`
-/

namespace A134165.P7292420672900134300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A032263 (n + 1)

end

end A134165.P7292420672900134300

namespace A134165

/-- `A094374(n)+A032263(n+1)` -/
def P7292420672900134300.Spec : Prop :=
  ∀ n, P7292420672900134300.a n = A134165 n

end A134165

/-! ## A134165.P569374739497362046

`A007582(n)-A028243(n+1)`
-/

namespace A134165.P569374739497362046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A028243 (n + 1)

end

end A134165.P569374739497362046

namespace A134165

/-- `A007582(n)-A028243(n+1)` -/
def P569374739497362046.Spec : Prop :=
  ∀ n, P569374739497362046.a n = A134165 n

end A134165

/-! ## A134165.P3494921648698819567

`A134168(n)-A000392(n+1)`
-/

namespace A134165.P3494921648698819567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - A000392 (n + 1)

end

end A134165.P3494921648698819567

namespace A134165

/-- `A134168(n)-A000392(n+1)` -/
def P3494921648698819567.Spec : Prop :=
  ∀ n, P3494921648698819567.a n = A134165 n

end A134165

/-! ## A134165.P9605689960427121324

`A130567(n+1)-A094375(n)`
-/

namespace A134165.P9605689960427121324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130567 (n + 1) - A094375 n

end

end A134165.P9605689960427121324

namespace A134165

/-- `A130567(n+1)-A094375(n)` -/
def P9605689960427121324.Spec : Prop :=
  ∀ n, P9605689960427121324.a n = A134165 n

end A134165

/-! ## A134165.P9337380939501810565

`(A134168(n)+A134045(n))/2`
-/

namespace A134165.P9337380939501810565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134168 n + A134045 n : ℚ) / 2

end

end A134165.P9337380939501810565

namespace A134165

/-- `(A134168(n)+A134045(n))/2` -/
def P9337380939501810565.Spec : Prop :=
  ∀ n, P9337380939501810565.a n = (A134165 n : ℚ)

end A134165

/-! ## A134165.P13534225307108754414

`A083324(n)-A027556(2*n)/2`
-/

namespace A134165.P13534225307108754414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083324 n : ℚ) - (A027556 (2 * n) : ℚ) / 2

end

end A134165.P13534225307108754414

namespace A134165

/-- `A083324(n)-A027556(2*n)/2` -/
def P13534225307108754414.Spec : Prop :=
  ∀ n, P13534225307108754414.a n = (A134165 n : ℚ)

end A134165

/-!
# A134168: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are disjoint and for which either x is a subset of y or y is a subset of x, or 1) x and y are intersecting but for which x is not a subset of y and y is not a subset of x, or 2) x and y are intersecting and for which either x is a proper subset of y or y is a proper subset of x, or 3) x = y.

The programs for A134168, the canonical program `A134168.P5672310514231106444` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134168 has offset 0).

The definition of A134168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134168.P5672310514231106444

`1/2*(4^n-3^n+3*2^n-1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134168

/-- `1/2*(4^n-3^n+3*2^n-1)` -/
def P5672310514231106444.Spec : Prop :=
  ∀ n, P5672310514231106444.a n = (A134168 n : ℚ)

end A134168

/-! ## A134168.P854300329117699909

`A053154(n)+2^n`
-/

namespace A134168.P854300329117699909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n + (2 ^ n : ℤ)

end

end A134168.P854300329117699909

namespace A134168

/-- `A053154(n)+2^n` -/
def P854300329117699909.Spec : Prop :=
  ∀ n, P854300329117699909.a n = A134168 n

end A134168

/-! ## A134168.P14200841755809123205

`A032263(n+1)+3^n`
-/

namespace A134168.P14200841755809123205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + (3 ^ n : ℤ)

end

end A134168.P14200841755809123205

namespace A134168

/-- `A032263(n+1)+3^n` -/
def P14200841755809123205.Spec : Prop :=
  ∀ n, P14200841755809123205.a n = A134168 n

end A134168

/-! ## A134168.P15377471846606492430

`A134064(n)+2^n-1`
-/

namespace A134168.P15377471846606492430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n + ((2 ^ n : ℤ) - 1)

end

end A134168.P15377471846606492430

namespace A134168

/-- `A134064(n)+2^n-1` -/
def P15377471846606492430.Spec : Prop :=
  ∀ n, P15377471846606492430.a n = A134168 n

end A134168

/-! ## A134168.P2122088064090064082

`abs(∑[ceil(3^(n-1))]-A257273(n))`
-/

namespace A134168.P2122088064090064082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A257273 n|

end

end A134168.P2122088064090064082

namespace A134168

/-- `abs(∑[ceil(3^(n-1))]-A257273(n))` -/
def P2122088064090064082.Spec : Prop :=
  ∀ n, P2122088064090064082.a n = A134168 n

end A134168

/-! ## A134168.P6148009552147855383

`abs((2^n-1)*(2^(n-1)-1)-A083314(n))`
-/

namespace A134168.P6148009552147855383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) - (A083314 n : ℚ)|

end

end A134168.P6148009552147855383

namespace A134168

/-- `abs((2^n-1)*(2^(n-1)-1)-A083314(n))` -/
def P6148009552147855383.Spec : Prop :=
  ∀ n, P6148009552147855383.a n = (A134168 n : ℚ)

end A134168

/-! ## A134168.P13515372496150577367

`A084869(n)+A003462(n)`
-/

namespace A134168.P13515372496150577367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + A003462 n

end

end A134168.P13515372496150577367

namespace A134168

/-- `A084869(n)+A003462(n)` -/
def P13515372496150577367.Spec : Prop :=
  ∀ n, P13515372496150577367.a n = A134168 n

end A134168

/-! ## A134168.P1390053577747841284

`A134019(n)+A001047(n)`
-/

namespace A134168.P1390053577747841284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n + A001047 n

end

end A134168.P1390053577747841284

namespace A134168

/-- `A134019(n)+A001047(n)` -/
def P1390053577747841284.Spec : Prop :=
  ∀ n, P1390053577747841284.a n = A134168 n

end A134168

/-! ## A134168.P17599528062686229007

`A133789(n)+A007051(n)`
-/

namespace A134168.P17599528062686229007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n + A007051 n

end

end A134168.P17599528062686229007

namespace A134168

/-- `A133789(n)+A007051(n)` -/
def P17599528062686229007.Spec : Prop :=
  ∀ n, P17599528062686229007.a n = A134168 n

end A134168

/-! ## A134168.P16374010255315248352

`A134018(n)+A083323(n)`
-/

namespace A134168.P16374010255315248352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n + A083323 n

end

end A134168.P16374010255315248352

namespace A134168

/-- `A134018(n)+A083323(n)` -/
def P16374010255315248352.Spec : Prop :=
  ∀ n, P16374010255315248352.a n = A134168 n

end A134168

/-! ## A134168.P13880926457292635777

`A083314(n)-A134057(n)`
-/

namespace A134168.P13880926457292635777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083314 n - A134057 n

end

end A134168.P13880926457292635777

namespace A134168

/-- `A083314(n)-A134057(n)` -/
def P13880926457292635777.Spec : Prop :=
  ∀ n, P13880926457292635777.a n = A134168 n

end A134168

/-! ## A134168.P12756049378113746174

`A257273(n)-A007051(n)`
-/

namespace A134168.P12756049378113746174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A007051 n

end

end A134168.P12756049378113746174

namespace A134168

/-- `A257273(n)-A007051(n)` -/
def P12756049378113746174.Spec : Prop :=
  ∀ n, P12756049378113746174.a n = A134168 n

end A134168

/-! ## A134168.P5558249994311038097

`A196836(n)-A083323(n)`
-/

namespace A134168.P5558249994311038097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196836 n - A083323 n

end

end A134168.P5558249994311038097

namespace A134168

/-- `A196836(n)-A083323(n)` -/
def P5558249994311038097.Spec : Prop :=
  ∀ n, P5558249994311038097.a n = A134168 n

end A134168

/-! ## A134168.P850814243090447468

`A256873(n)-A099754(n)`
-/

namespace A134168.P850814243090447468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n - A099754 n

end

end A134168.P850814243090447468

namespace A134168

/-- `A256873(n)-A099754(n)` -/
def P850814243090447468.Spec : Prop :=
  ∀ n, P850814243090447468.a n = A134168 n

end A134168

/-! ## A134168.P485942464735149538

`A281481(n)-A134063(n)`
-/

namespace A134168.P485942464735149538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n - A134063 n

end

end A134168.P485942464735149538

namespace A134168

/-- `A281481(n)-A134063(n)` -/
def P485942464735149538.Spec : Prop :=
  ∀ n, P485942464735149538.a n = A134168 n

end A134168

/-! ## A134168.P16775579638770132833

`A242985(n)-A196836(n)`
-/

namespace A134168.P16775579638770132833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 n - A196836 n

end

end A134168.P16775579638770132833

namespace A134168

/-- `A242985(n)-A196836(n)` -/
def P16775579638770132833.Spec : Prop :=
  ∀ n, P16775579638770132833.a n = A134168 n

end A134168

/-! ## A134168.P2937759208071586885

`A134165(n)+A000392(n+1)`
-/

namespace A134168.P2937759208071586885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n + A000392 (n + 1)

end

end A134168.P2937759208071586885

namespace A134168

/-- `A134165(n)+A000392(n+1)` -/
def P2937759208071586885.Spec : Prop :=
  ∀ n, P2937759208071586885.a n = A134168 n

end A134168

/-! ## A134168.P18086174620605244623

`A134045(n)+A028243(n+1)`
-/

namespace A134168.P18086174620605244623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134045 n + A028243 (n + 1)

end

end A134168.P18086174620605244623

namespace A134168

/-- `A134045(n)+A028243(n+1)` -/
def P18086174620605244623.Spec : Prop :=
  ∀ n, P18086174620605244623.a n = A134168 n

end A134168

/-! ## A134168.P5137285904864012131

`A007582(n)-A000392(n+1)`
-/

namespace A134168.P5137285904864012131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A000392 (n + 1)

end

end A134168.P5137285904864012131

namespace A134168

/-- `A007582(n)-A000392(n+1)` -/
def P5137285904864012131.Spec : Prop :=
  ∀ n, P5137285904864012131.a n = A134168 n

end A134168

/-! ## A134168.P2737866283710935413

`A094375(n)-A000392(n+2)`
-/

namespace A134168.P2737866283710935413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n - A000392 (n + 2)

end

end A134168.P2737866283710935413

namespace A134168

/-- `A094375(n)-A000392(n+2)` -/
def P2737866283710935413.Spec : Prop :=
  ∀ n, P2737866283710935413.a n = A134168 n

end A134168

/-!
# A134169: a(n) = 2^(n-1)*(2^n - 1) + 1.

The programs for A134169, the canonical program `A134169.P4806546088313490847` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134169 has offset 0).

The definition of A134169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134169.P4806546088313490847

`2^(n-1)*(2^n-1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134169

/-- `2^(n-1)*(2^n-1)+1` -/
def P4806546088313490847.Spec : Prop :=
  ∀ n, P4806546088313490847.a n = (A134169 n : ℚ)

end A134169

/-! ## A134169.P1980846278145220021

`A170939(n)/2`
-/

namespace A134169.P1980846278145220021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170939 n : ℚ) / 2

end

end A134169.P1980846278145220021

namespace A134169

/-- `A170939(n)/2` -/
def P1980846278145220021.Spec : Prop :=
  ∀ n, P1980846278145220021.a n = (A134169 n : ℚ)

end A134169

/-! ## A134169.P4096258576164028940

`∑[ogf((1-5x+7x^2)/(1-6x+8x^2))]`
-/

namespace A134169.P4096258576164028940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134169.P4096258576164028940

namespace A134169

/-- `∑[ogf((1-5x+7x^2)/(1-6x+8x^2))]` -/
def P4096258576164028940.Spec : Prop :=
  ∀ n, P4096258576164028940.a n = A134169 n

end A134169

/-! ## A134169.P14725855991416818429

`or((4^n-2^n)/2+1, 2^n)`
-/

namespace A134169.P14725855991416818429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 + 1)) (2 ^ n : ℤ)

end

end A134169.P14725855991416818429

namespace A134169

/-- `or((4^n-2^n)/2+1, 2^n)` -/
def P14725855991416818429.Spec : Prop :=
  ∀ n, P14725855991416818429.a n = A134169 n

end A134169

/-! ## A134169.P17243557799629365194

`(A020515(n)+1)/2`
-/

namespace A134169.P17243557799629365194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020515 n + 1 : ℚ) / 2

end

end A134169.P17243557799629365194

namespace A134169

/-- `(A020515(n)+1)/2` -/
def P17243557799629365194.Spec : Prop :=
  ∀ n, P17243557799629365194.a n = (A134169 n : ℚ)

end A134169

/-! ## A134169.P13421290551042252960

`(A156589(n)+3)/2`
-/

namespace A134169.P13421290551042252960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156589 n + 3 : ℚ) / 2

end

end A134169.P13421290551042252960

namespace A134169

/-- `(A156589(n)+3)/2` -/
def P13421290551042252960.Spec : Prop :=
  ∀ n, P13421290551042252960.a n = (A134169 n : ℚ)

end A134169

/-! ## A134169.P16515135022256211806

`A001576(n)%A257273(n)`
-/

namespace A134169.P16515135022256211806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001576 n) (A257273 n)

end

end A134169.P16515135022256211806

namespace A134169

/-- `A001576(n)%A257273(n)` -/
def P16515135022256211806.Spec : Prop :=
  ∀ n, P16515135022256211806.a n = A134169 n

end A134169

/-! ## A134169.P18017251093228236713

`A028400(n)%A256873(n)`
-/

namespace A134169.P18017251093228236713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028400 n) (A256873 n)

end

end A134169.P18017251093228236713

namespace A134169

/-- `A028400(n)%A256873(n)` -/
def P18017251093228236713.Spec : Prop :=
  ∀ n, P18017251093228236713.a n = A134169 n

end A134169

/-! ## A134169.P15053910377440633901

`xor(A000079(n), A134057(n))`
-/

namespace A134169.P15053910377440633901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A134057 n)

end

end A134169.P15053910377440633901

namespace A134169

/-- `xor(A000079(n), A134057(n))` -/
def P15053910377440633901.Spec : Prop :=
  ∀ n, P15053910377440633901.a n = A134169 n

end A134169

/-! ## A134169.P8619919702987532078

`A135576(n+1)%A257273(n)`
-/

namespace A134169.P8619919702987532078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135576 (n + 1)) (A257273 n)

end

end A134169.P8619919702987532078

namespace A134169

/-- `A135576(n+1)%A257273(n)` -/
def P8619919702987532078.Spec : Prop :=
  ∀ n, P8619919702987532078.a n = A134169 n

end A134169

/-! ## A134169.P12351296426679301654

`A178789(n+1)%A281481(n)`
-/

namespace A134169.P12351296426679301654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178789 (n + 1)) (A281481 n)

end

end A134169.P12351296426679301654

namespace A134169

/-- `A178789(n+1)%A281481(n)` -/
def P12351296426679301654.Spec : Prop :=
  ∀ n, P12351296426679301654.a n = A134169 n

end A134169

/-! ## A134169.P1084909090521440433

`A170938(n)%A028401(n+2)`
-/

namespace A134169.P1084909090521440433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170938 n) (A028401 (n + 2))

end

end A134169.P1084909090521440433

namespace A134169

/-- `A170938(n)%A028401(n+2)` -/
def P1084909090521440433.Spec : Prop :=
  ∀ n, P1084909090521440433.a n = A134169 n

end A134169

/-! ## A134169.P5040030055258104631

`A032098(n+1)/3`
-/

namespace A134169.P5040030055258104631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032098 (n + 1) : ℚ) / 3

end

end A134169.P5040030055258104631

namespace A134169

/-- `A032098(n+1)/3` -/
def P5040030055258104631.Spec : Prop :=
  ∀ n, P5040030055258104631.a n = (A134169 n : ℚ)

end A134169

/-! ## A134169.P8605127476580260820

`(A092440(n)+3)/4`
-/

namespace A134169.P8605127476580260820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092440 n + 3 : ℚ) / 4

end

end A134169.P8605127476580260820

namespace A134169

/-- `(A092440(n)+3)/4` -/
def P8605127476580260820.Spec : Prop :=
  ∀ n, P8605127476580260820.a n = (A134169 n : ℚ)

end A134169

/-! ## A134169.P13753007213399366574

`A032098(n+1)%A170939(n)`
-/

namespace A134169.P13753007213399366574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032098 (n + 1)) (A170939 n)

end

end A134169.P13753007213399366574

namespace A134169

/-- `A032098(n+1)%A170939(n)` -/
def P13753007213399366574.Spec : Prop :=
  ∀ n, P13753007213399366574.a n = A134169 n

end A134169

/-! ## A134169.P15387066683115999793

`A087289(n)%A049775(n+2)`
-/

namespace A134169.P15387066683115999793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087289 n) (A049775 (n + 2))

end

end A134169.P15387066683115999793

namespace A134169

/-- `A087289(n)%A049775(n+2)` -/
def P15387066683115999793.Spec : Prop :=
  ∀ n, P15387066683115999793.a n = A134169 n

end A134169

/-! ## A134169.P1700351165204034050

`A032125(n+1)%A130567(n+1)`
-/

namespace A134169.P1700351165204034050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032125 (n + 1)) (A130567 (n + 1))

end

end A134169.P1700351165204034050

namespace A134169

/-- `A032125(n+1)%A130567(n+1)` -/
def P1700351165204034050.Spec : Prop :=
  ∀ n, P1700351165204034050.a n = A134169 n

end A134169

/-! ## A134169.P3145501419179711420

`(A062395(n)+A000051(n))/A052548(n+1)`
-/

namespace A134169.P3145501419179711420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062395 n + A000051 n : ℚ) / (A052548 (n + 1) : ℚ)

end

end A134169.P3145501419179711420

namespace A134169

/-- `(A062395(n)+A000051(n))/A052548(n+1)` -/
def P3145501419179711420.Spec : Prop :=
  ∀ n, P3145501419179711420.a n = (A134169 n : ℚ)

end A134169

/-!
# A134170: a(n) = the smallest positive integer which, expressed in the form d*q + r, satisfies q >= r for every d from 1 to n. In other words, when a(n) is divided by the numbers from 1 to n, the remainder is never more than the quotient.

The programs for A134170, there is no canonical definition to state claims against.
-/

/-! ## A134170.P16575389214885803255

`∏{e}[∏[A278540(3*n+2)], #]`
-/

namespace A134170.P16575389214885803255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A134170.P16575389214885803255

/-! ## A134170.P2705578231067957472

`∑[∑[char[10*n]]]*A043283(3^n)`
-/

namespace A134170.P2705578231067957472
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A043283 (3 ^ n)

end

end A134170.P2705578231067957472

/-! ## A134170.P3510324934262290854

`record[gcd(A050187(n), A177280(n))]`
-/

namespace A134170.P3510324934262290854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050187 n) (A177280 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134170.P3510324934262290854

/-! ## A134170.P16333738893322320874

`record[record[A169992(n)]*A169990(2*n+1)]`
-/

namespace A134170.P16333738893322320874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169992 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A169990 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134170.P16333738893322320874

/-! ## A134170.P460108924031373123

`A094270(n+1)*A123245(A000124(n))`
-/

namespace A134170.P460108924031373123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094270 (n + 1) * A123245 (A000124 n).toNat

end

end A134170.P460108924031373123

/-!
# A134171: a(n) = (9/2)*(n-1)*(n-2)*(n-3).

The programs for A134171, the canonical program `A134171.P14887031206563154770` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134171 has offset 1).

The definition of A134171 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9/2*(n-1)*(n-2)*n` (program `A134171.P7035303149224901665`, by `A134171.P7035303149224901665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134171.P2656319003114067994

`27*C(n, 3)`
-/

namespace A134171.P2656319003114067994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * Nat.choose n 3

end

end A134171.P2656319003114067994

namespace A134171

/-- `27*C(n, 3)` -/
def P2656319003114067994.Spec : Prop :=
  ∀ n, (P2656319003114067994.a n : ℤ) = A134171 (n + 1)

end A134171

/-! ## A134171.P7035303149224901665

`9/2*(n-1)*(n-2)*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134171.P7035303149224901665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 2 : ℚ) * (n : ℚ)

end

end A134171.P7035303149224901665

namespace A134171

/-- `9/2*(n-1)*(n-2)*n` -/
def P7035303149224901665.Spec : Prop :=
  ∀ n, P7035303149224901665.a n = (A134171 (n + 1) : ℚ)

theorem P7035303149224901665.correct : P7035303149224901665.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A134171, Nat.add_sub_cancel, A134171.P7035303149224901665.a, A134171.P14887031206563154770.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A134171, Nat.add_sub_cancel, A134171.P7035303149224901665.a, A134171.P14887031206563154770.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A134171

/-! ## A134171.P17275283169654968343

`9/2*n*(n-1)*(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134171.P17275283169654968343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 2 : ℚ)

end

end A134171.P17275283169654968343

namespace A134171

/-- `9/2*n*(n-1)*(n-2)` -/
def P17275283169654968343.Spec : Prop :=
  ∀ n, P17275283169654968343.a n = (A134171 (n + 1) : ℚ)

theorem P17275283169654968343.correct : P17275283169654968343.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A134171, Nat.add_sub_cancel, A134171.P17275283169654968343.a, A134171.P14887031206563154770.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A134171, Nat.add_sub_cancel, A134171.P17275283169654968343.a, A134171.P14887031206563154770.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A134171

/-! ## A134171.P14887031206563154770

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=27`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134171

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14887031206563154770.Spec : Prop :=
  ∀ n, P14887031206563154770.a n = A134171 (n + 1)

theorem P14887031206563154770.correct : P14887031206563154770.Spec := by
  intro n
  simp only [A134171, Nat.add_sub_cancel]

end A134171

/-! ## A134171.P11363646018339497361

`A006566(n)-n*(9*n-8)`
-/

namespace A134171.P11363646018339497361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n - (n : ℤ) * ((9 * n : ℤ) - 8)

end

end A134171.P11363646018339497361

namespace A134171

/-- `A006566(n)-n*(9*n-8)` -/
def P11363646018339497361.Spec : Prop :=
  ∀ n, P11363646018339497361.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P6803803498577250197

`A086605(n)-A006566(n)`
-/

namespace A134171.P6803803498577250197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086605 n - A006566 n

end

end A134171.P6803803498577250197

namespace A134171

/-- `A086605(n)-A006566(n)` -/
def P6803803498577250197.Spec : Prop :=
  ∀ n, P6803803498577250197.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P6575243606896841575

`A256649(n)-A254474(n)`
-/

namespace A134171.P6575243606896841575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256649 n - A254474 n

end

end A134171.P6575243606896841575

namespace A134171

/-- `A256649(n)-A254474(n)` -/
def P6575243606896841575.Spec : Prop :=
  ∀ n, P6575243606896841575.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P11148208333808690699

`∑[A153783(n)]-A153448(n)`
-/

namespace A134171.P11148208333808690699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153448 n

end

end A134171.P11148208333808690699

namespace A134171

/-- `∑[A153783(n)]-A153448(n)` -/
def P11148208333808690699.Spec : Prop :=
  ∀ n, P11148208333808690699.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P18334100777891229490

`∑[A255187(n)]-A254474(n)`
-/

namespace A134171.P18334100777891229490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A254474 n

end

end A134171.P18334100777891229490

namespace A134171

/-- `∑[A255187(n)]-A254474(n)` -/
def P18334100777891229490.Spec : Prop :=
  ∀ n, P18334100777891229490.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P4701568684177634706

`A127876(n+1)-A081589(n)`
-/

namespace A134171.P4701568684177634706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127876 (n + 1) - A081589 n

end

end A134171.P4701568684177634706

namespace A134171

/-- `A127876(n+1)-A081589(n)` -/
def P4701568684177634706.Spec : Prop :=
  ∀ n, P4701568684177634706.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P13252966089291583392

`n*A051682(n)-A051874(n)`
-/

namespace A134171.P13252966089291583392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051682 n - A051874 n

end

end A134171.P13252966089291583392

namespace A134171

/-- `n*A051682(n)-A051874(n)` -/
def P13252966089291583392.Spec : Prop :=
  ∀ n, P13252966089291583392.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P12368676091663933116

`n*A062741(n)-A152767(n)`
-/

namespace A134171.P12368676091663933116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062741 n - A152767 n

end

end A134171.P12368676091663933116

namespace A134171

/-- `n*A062741(n)-A152767(n)` -/
def P12368676091663933116.Spec : Prop :=
  ∀ n, P12368676091663933116.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P13620937548042186475

`Δ[3*A060008(n)]`
-/

namespace A134171.P13620937548042186475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134171.P13620937548042186475

namespace A134171

/-- `Δ[3*A060008(n)]` -/
def P13620937548042186475.Spec : Prop :=
  ∀ n, P13620937548042186475.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P12961135811310529155

`Δ[27*A000332(n)]`
-/

namespace A134171.P12961135811310529155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134171.P12961135811310529155

namespace A134171

/-- `Δ[27*A000332(n)]` -/
def P12961135811310529155.Spec : Prop :=
  ∀ n, P12961135811310529155.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P12640885712976074490

`n*A027468(n)-A027468(A004273(n))`
-/

namespace A134171.P12640885712976074490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027468 n - A027468 (A004273 n).toNat

end

end A134171.P12640885712976074490

namespace A134171

/-- `n*A027468(n)-A027468(A004273(n))` -/
def P12640885712976074490.Spec : Prop :=
  ∀ n, P12640885712976074490.a n = A134171 (n + 1)

end A134171

/-! ## A134171.P15053595409418309548

`n*A000096(3*n)-A014107(3*n)`
-/

namespace A134171.P15053595409418309548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000096 (3 * n) - A014107 (3 * n)

end

end A134171.P15053595409418309548

namespace A134171

/-- `n*A000096(3*n)-A014107(3*n)` -/
def P15053595409418309548.Spec : Prop :=
  ∀ n, P15053595409418309548.a n = A134171 (n + 1)

end A134171

/-!
# A134172: Expansion of x^2*(1+x)*(1-x+x^2) / ((1-x)^2*(1+x^2)^2).

The programs for A134172, the canonical program `A134172.P245133111858713862` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134172 has offset 0).

The definition of A134172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+x^5)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` (program `A134172.P245133111858713862`, by `A134172.P245133111858713862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134172.P245133111858713862

`ogf((x^2+x^5)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134172

/-- `ogf((x^2+x^5)/(1-2x+3x^2-4x^3+3x^4-2x^5+x^6))` -/
def P245133111858713862.Spec : Prop :=
  ∀ n, P245133111858713862.a n = A134172 n

theorem P245133111858713862.correct : P245133111858713862.Spec := by
  intro n
  simp only [A134172]

end A134172

/-! ## A134172.P1618594379366676170

`floor(n*(and(2, n)+1)/4)`
-/

namespace A134172.P1618594379366676170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (Nat.land 2 n + 1) : ℚ) / 4⌋

end

end A134172.P1618594379366676170

namespace A134172

/-- `floor(n*(and(2, n)+1)/4)` -/
def P1618594379366676170.Spec : Prop :=
  ∀ n, P1618594379366676170.a n = A134172 n

end A134172

/-! ## A134172.P17992084582635318595

`char[or(2, n)]-a(n-2)-2+n` with `a(0)=0, a(1)=0`
-/

namespace A134172.P17992084582635318595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2) - 2 + (n : ℤ)

end

end A134172.P17992084582635318595

namespace A134172

/-- `char[or(2, n)]-a(n-2)-2+n` -/
def P17992084582635318595.Spec : Prop :=
  ∀ n, P17992084582635318595.a n = A134172 n

end A134172

/-! ## A134172.P15083008104461628851

`char[or(2, n)]-a(n-2)-(2-n)` with `a(0)=0, a(1)=0`
-/

namespace A134172.P15083008104461628851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2) - (2 - (n : ℤ))

end

end A134172.P15083008104461628851

namespace A134172

/-- `char[or(2, n)]-a(n-2)-(2-n)` -/
def P15083008104461628851.Spec : Prop :=
  ∀ n, P15083008104461628851.a n = A134172 n

end A134172

/-! ## A134172.P10279362588172296246

`and(2, n)/2-a(n-2)-2+n` with `a(0)=0, a(1)=0`
-/

namespace A134172.P10279362588172296246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Nat.land 2 n : ℚ) / 2 - a (n - 2) - 2 + (n : ℚ)

end

end A134172.P10279362588172296246

namespace A134172

/-- `and(2, n)/2-a(n-2)-2+n` -/
def P10279362588172296246.Spec : Prop :=
  ∀ n, P10279362588172296246.a n = (A134172 n : ℚ)

end A134172

/-! ## A134172.P13628038480331419600

`and(2, n)/2-a(n-2)-(2-n)` with `a(0)=0, a(1)=0`
-/

namespace A134172.P13628038480331419600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Nat.land 2 n : ℚ) / 2 - a (n - 2) - (2 - (n : ℤ) : ℚ)

end

end A134172.P13628038480331419600

namespace A134172

/-- `and(2, n)/2-a(n-2)-(2-n)` -/
def P13628038480331419600.Spec : Prop :=
  ∀ n, P13628038480331419600.a n = (A134172 n : ℚ)

end A134172

/-! ## A134172.P6060080972776078605

`A186813(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A134172.P6060080972776078605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A186813 (n - 1) - a (n - 1)

end

end A134172.P6060080972776078605

namespace A134172

/-- `A186813(n-1)-a(n-1)` -/
def P6060080972776078605.Spec : Prop :=
  ∀ n, P6060080972776078605.a n = A134172 n

end A134172

/-! ## A134172.P11360338315850348653

`A051176(A057353(n))`
-/

namespace A134172.P11360338315850348653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A057353 n).toNat

end

end A134172.P11360338315850348653

namespace A134172

/-- `A051176(A057353(n))` -/
def P11360338315850348653.Spec : Prop :=
  ∀ n, P11360338315850348653.a n = A134172 n

end A134172

/-! ## A134172.P14476914057255180483

`A242601(n)+A004524(n)`
-/

namespace A134172.P14476914057255180483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242601 n + A004524 n

end

end A134172.P14476914057255180483

namespace A134172

/-- `A242601(n)+A004524(n)` -/
def P14476914057255180483.Spec : Prop :=
  ∀ n, P14476914057255180483.a n = A134172 n

end A134172

/-! ## A134172.P8981744156685120364

`A131739(n)-A021913(n)`
-/

namespace A134172.P8981744156685120364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131739 n - A021913 n

end

end A134172.P8981744156685120364

namespace A134172

/-- `A131739(n)-A021913(n)` -/
def P8981744156685120364.Spec : Prop :=
  ∀ n, P8981744156685120364.a n = A134172 n

end A134172

/-! ## A134172.P5854600390960579084

`gcd(A057353(n), A272104(n))`
-/

namespace A134172.P5854600390960579084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057353 n) (A272104 n)

end

end A134172.P5854600390960579084

namespace A134172

/-- `gcd(A057353(n), A272104(n))` -/
def P5854600390960579084.Spec : Prop :=
  ∀ n, (P5854600390960579084.a n : ℤ) = A134172 n

end A134172

/-! ## A134172.P8718219748368986371

`A057353(n)/(A057077(n)+2)`
-/

namespace A134172.P8718219748368986371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057353 n : ℚ) / (A057077 n + 2 : ℚ)

end

end A134172.P8718219748368986371

namespace A134172

/-- `A057353(n)/(A057077(n)+2)` -/
def P8718219748368986371.Spec : Prop :=
  ∀ n, P8718219748368986371.a n = (A134172 n : ℚ)

end A134172

/-! ## A134172.P1844448704873151597

`A319007(n+1)%A028310(n)`
-/

namespace A134172.P1844448704873151597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319007 (n + 1)) (A028310 n)

end

end A134172.P1844448704873151597

namespace A134172

/-- `A319007(n+1)%A028310(n)` -/
def P1844448704873151597.Spec : Prop :=
  ∀ n, P1844448704873151597.a n = A134172 n

end A134172

/-! ## A134172.P1738092661199507224

`A130766(n)%A176974(n+3)`
-/

namespace A134172.P1738092661199507224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130766 n) (A176974 (n + 3))

end

end A134172.P1738092661199507224

namespace A134172

/-- `A130766(n)%A176974(n+3)` -/
def P1738092661199507224.Spec : Prop :=
  ∀ n, P1738092661199507224.a n = A134172 n

end A134172

/-! ## A134172.P11384979381555940007

`Δ[A159915(abs(1-n))+A159915(n)]`
-/

namespace A134172.P11384979381555940007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 |1 - (n : ℤ)|.toNat + A159915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134172.P11384979381555940007

namespace A134172

/-- `Δ[A159915(abs(1-n))+A159915(n)]` -/
def P11384979381555940007.Spec : Prop :=
  ∀ n, P11384979381555940007.a n = A134172 n

end A134172

/-! ## A134172.P11542909697774587051

`A004524(n)+A001057(A008619(n)-1)`
-/

namespace A134172.P11542909697774587051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n + A001057 (A008619 n - 1).toNat

end

end A134172.P11542909697774587051

namespace A134172

/-- `A004524(n)+A001057(A008619(n)-1)` -/
def P11542909697774587051.Spec : Prop :=
  ∀ n, P11542909697774587051.a n = A134172 n

end A134172

/-! ## A134172.P14803976338616519493

`lcm(2, A004526(n))-A004526(A028242(n))`
-/

namespace A134172.P14803976338616519493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A004526 n) : ℤ) - A004526 (A028242 n).toNat

end

end A134172.P14803976338616519493

namespace A134172

/-- `lcm(2, A004526(n))-A004526(A028242(n))` -/
def P14803976338616519493.Spec : Prop :=
  ∀ n, P14803976338616519493.a n = A134172 n

end A134172

/-! ## A134172.P10088916566164468631

`A002265(n+1)+A242601(n)+A002265(n)`
-/

namespace A134172.P10088916566164468631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (A242601 n + A002265 n)

end

end A134172.P10088916566164468631

namespace A134172

/-- `A002265(n+1)+A242601(n)+A002265(n)` -/
def P10088916566164468631.Spec : Prop :=
  ∀ n, P10088916566164468631.a n = A134172 n

end A134172

/-! ## A134172.P15640716182087547167

`A011848(n+1)-A004524(n)*A004525(n)`
-/

namespace A134172.P15640716182087547167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 1) - A004524 n * A004525 n

end

end A134172.P15640716182087547167

namespace A134172

/-- `A011848(n+1)-A004524(n)*A004525(n)` -/
def P15640716182087547167.Spec : Prop :=
  ∀ n, P15640716182087547167.a n = A134172 n

end A134172

/-! ## A134172.P14209416777056287093

`A004526(n)-A002265(n+1)*A057077(n)`
-/

namespace A134172.P14209416777056287093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A002265 (n + 1) * A057077 n

end

end A134172.P14209416777056287093

namespace A134172

/-- `A004526(n)-A002265(n+1)*A057077(n)` -/
def P14209416777056287093.Spec : Prop :=
  ∀ n, P14209416777056287093.a n = A134172 n

end A134172

/-!
# A134173: a(n) = Sum_{k=0..n} binomial(n,k)*binomial(2^k,n).

The programs for A134173, there is no canonical definition to state claims against.
-/

/-! ## A134173.P10528771680420553395

`A000203(A197936(n+1))/(n+1)`
-/

namespace A134173.P10528771680420553395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A197936 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A134173.P10528771680420553395

/-!
# A134174: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(2^k,n).

The programs for A134174, there is no canonical definition to state claims against.
-/

/-! ## A134174.P12203353193499054005

`A163353(comp[2*(n+1)]+2^n)`
-/

namespace A134174.P12203353193499054005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163353 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 ^ n)

end

end A134174.P12203353193499054005

/-!
# A134175: a(n) = (32/2)*(n-1)*(n-2)*(n-3)*(n-4).

The programs for A134175, the canonical program `A134175.P6211711537471988831` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134175 has offset 1).

The definition of A134175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32/2*(n-1)*(n-2)*(n-3)*n` (program `A134175.P17782007919835477415`, by `A134175.P17782007919835477415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134175.P6211711537471988831

`16*(n-1)*(n-2)*(n-3)*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134175

/-- `16*(n-1)*(n-2)*(n-3)*n` -/
def P6211711537471988831.Spec : Prop :=
  ∀ n, P6211711537471988831.a n = A134175 (n + 1)

theorem P6211711537471988831.correct : P6211711537471988831.Spec := by
  intro n
  simp only [A134175, Nat.add_sub_cancel]

end A134175

/-! ## A134175.P17782007919835477415

`32/2*(n-1)*(n-2)*(n-3)*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134175.P17782007919835477415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 : ℚ) / 2 * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 3 : ℚ) * (n : ℚ)

end

end A134175.P17782007919835477415

namespace A134175

/-- `32/2*(n-1)*(n-2)*(n-3)*n` -/
def P17782007919835477415.Spec : Prop :=
  ∀ n, P17782007919835477415.a n = (A134175 (n + 1) : ℚ)

theorem P17782007919835477415.correct : P17782007919835477415.Spec := by
  intro n
  simp only [A134175, Nat.add_sub_cancel, A134175.P17782007919835477415.a, A134175.P6211711537471988831.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134175

/-! ## A134175.P9540368911513719243

`32/2*n*(n-1)*(n-2)*(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134175.P9540368911513719243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 : ℚ) / 2 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 3 : ℚ)

end

end A134175.P9540368911513719243

namespace A134175

/-- `32/2*n*(n-1)*(n-2)*(n-3)` -/
def P9540368911513719243.Spec : Prop :=
  ∀ n, P9540368911513719243.a n = (A134175 (n + 1) : ℚ)

theorem P9540368911513719243.correct : P9540368911513719243.Spec := by
  intro n
  simp only [A134175, Nat.add_sub_cancel, A134175.P9540368911513719243.a, A134175.P6211711537471988831.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134175

/-! ## A134175.P14094616584741906714

`A052762(n)/(1/2)²²`
-/

namespace A134175.P14094616584741906714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / (((1 : ℚ) / 2) ^ 2) ^ 2

end

end A134175.P14094616584741906714

namespace A134175

/-- `A052762(n)/(1/2)²²` -/
def P14094616584741906714.Spec : Prop :=
  ∀ n, P14094616584741906714.a n = (A134175 (n + 1) : ℚ)

end A134175

/-! ## A134175.P14629641722015957469

`A052762(n)+15*A052762(n)`
-/

namespace A134175.P14629641722015957469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n + 15 * A052762 n

end

end A134175.P14629641722015957469

namespace A134175

/-- `A052762(n)+15*A052762(n)` -/
def P14629641722015957469.Spec : Prop :=
  ∀ n, P14629641722015957469.a n = A134175 (n + 1)

end A134175

/-! ## A134175.P2914211996437157326

`2*8*A052787(n+1)/(n+1)`
-/

namespace A134175.P2914211996437157326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (8 * A052787 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A134175.P2914211996437157326

namespace A134175

/-- `2*8*A052787(n+1)/(n+1)` -/
def P2914211996437157326.Spec : Prop :=
  ∀ n, P2914211996437157326.a n = (A134175 (n + 1) : ℚ)

end A134175

/-!
# A134176: a(n) = (3/8)*(n-1)*(n-2)*(27*n^2-137*n+180).

The programs for A134176, the canonical program `A134176.P17485879339479065544` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134176 has offset 1).

The definition of A134176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134176.P17485879339479065544

`3/8*n*(n-1)*(27*(n+1)²-137*(n+1)+180)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134176

/-- `3/8*n*(n-1)*(27*(n+1)²-137*(n+1)+180)` -/
def P17485879339479065544.Spec : Prop :=
  ∀ n, P17485879339479065544.a n = (A134176 (n + 1) : ℚ)

end A134176

/-!
# A134177: Expansion of phi(-x^3) * psi(x^4) + x * phi(-x) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A134177, there is no canonical definition to state claims against.
-/

/-! ## A134177.P1657438557999953617

`(-1)^n*A128580(n)`
-/

namespace A134177.P1657438557999953617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128580 n

end

end A134177.P1657438557999953617

/-! ## A134177.P8208450724804501442

`(1-and(2, n))*A129402(n)`
-/

namespace A134177.P8208450724804501442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A129402 n

end

end A134177.P8208450724804501442

/-! ## A134177.P13112736649440812738

`A057077(n)*A129402(n)`
-/

namespace A134177.P13112736649440812738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A129402 n

end

end A134177.P13112736649440812738

/-! ## A134177.P16918978152643251368

`A087960(n)*A190615(n)`
-/

namespace A134177.P16918978152643251368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A190615 n

end

end A134177.P16918978152643251368

/-! ## A134177.P639224464016648873

`abs(A128580(n))*A057077(n)`
-/

namespace A134177.P639224464016648873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128580 n| * A057077 n

end

end A134177.P639224464016648873

/-! ## A134177.P17936089467504194819

`abs(A190615(n))*A057077(n)`
-/

namespace A134177.P17936089467504194819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190615 n| * A057077 n

end

end A134177.P17936089467504194819

/-! ## A134177.P7829908272343793671

`A057077(n+1)*A190615(n)`
-/

namespace A134177.P7829908272343793671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A190615 n

end

end A134177.P7829908272343793671

/-! ## A134177.P10957779905964523732

`A257921(A071045(n))`
-/

namespace A134177.P10957779905964523732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (A071045 n).toNat

end

end A134177.P10957779905964523732

/-! ## A134177.P2340523720427563576

`A259668(A014682(n))`
-/

namespace A134177.P2340523720427563576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (A014682 n).toNat

end

end A134177.P2340523720427563576

/-! ## A134177.P17608932876273206650

`A128580(n)/A087960(2*n)`
-/

namespace A134177.P17608932876273206650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128580 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A134177.P17608932876273206650

/-! ## A134177.P11239788814256616600

`A260309(2*n+1)-A190615(n)`
-/

namespace A134177.P11239788814256616600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260309 (2 * n + 1) - A190615 n

end

end A134177.P11239788814256616600

/-! ## A134177.P1878739755778752647

`A033999(n)*A115660(2*n+1)`
-/

namespace A134177.P1878739755778752647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A115660 (2 * n + 1)

end

end A134177.P1878739755778752647

/-! ## A134177.P14398903416884466101

`A033999(n)*A128581(2*n+1)`
-/

namespace A134177.P14398903416884466101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A128581 (2 * n + 1)

end

end A134177.P14398903416884466101

/-! ## A134177.P13867845016324527197

`A087960(n+1)*A190611(2*n+1)`
-/

namespace A134177.P13867845016324527197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n + 1) * A190611 (2 * n + 1)

end

end A134177.P13867845016324527197

/-! ## A134177.P217311794488193488

`A115660(A123168(n+2))`
-/

namespace A134177.P217311794488193488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A123168 (n + 2)).toNat

end

end A134177.P217311794488193488

/-! ## A134177.P7573106644350203758

`A128581(A110185(n+1))`
-/

namespace A134177.P7573106644350203758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (A110185 (n + 1)).toNat

end

end A134177.P7573106644350203758

/-! ## A134177.P14010828171164664078

`A115660(A123169(n+2))`
-/

namespace A134177.P14010828171164664078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A123169 (n + 2)).toNat

end

end A134177.P14010828171164664078

/-! ## A134177.P430505822911850376

`A128580(n)/A033999(n²)`
-/

namespace A134177.P430505822911850376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128580 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A134177.P430505822911850376

/-!
# A134179: Primes in A007468.

The programs for A134179, there is no canonical definition to state claims against.
-/

/-! ## A134179.P11717672792942895529

`A007468(A134180(n+1))`
-/

namespace A134179.P11717672792942895529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (A134180 (n + 1)).toNat

end

end A134179.P11717672792942895529

/-! ## A134179.P13561601659167945552

`A007468(∩[A058871(n+1), A004274(n)])`
-/

namespace A134179.P13561601659167945552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134179.P13561601659167945552

/-! ## A134179.P9475679222684876077

`A007468(∩[A058871(n+1), A349177(n+1)])`
-/

namespace A134179.P9475679222684876077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134179.P9475679222684876077

/-! ## A134179.P5632435839009016763

`A007468(∩[A058871(n+1), A349174(n+1)])`
-/

namespace A134179.P5632435839009016763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349174 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A134179.P5632435839009016763

/-! ## A134179.P17333138443481993328

`p?[A007468(n+1)]`
-/

namespace A134179.P17333138443481993328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134179.P17333138443481993328

/-!
# A134180: Indices of primes in A007468.

The programs for A134180, there is no canonical definition to state claims against.
-/

/-! ## A134180.P12441119619273008233

`∩[2*n+1, A058871(n+1)]`
-/

namespace A134180.P12441119619273008233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134180.P12441119619273008233

/-! ## A134180.P13612594265100010723

`record[A000265(A058871(n+1))]`
-/

namespace A134180.P13612594265100010723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A058871 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134180.P13612594265100010723

/-! ## A134180.P12920594298907567052

`filter[A058871(n+1), A000035(#)]`
-/

namespace A134180.P12920594298907567052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A134180.P12920594298907567052

/-! ## A134180.P3529396183308206945

`filter[A058871(n+1), A267256(#)]`
-/

namespace A134180.P3529396183308206945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A134180.P3529396183308206945

/-! ## A134180.P6892119638271655897

`∩[A058871(n+1), A060747(n)]`
-/

namespace A134180.P6892119638271655897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134180.P6892119638271655897

/-! ## A134180.P2710699698841286876

`A058871(eq[1, ∏{d}[2-A058871(n+1), #%2]]+1)`
-/

namespace A134180.P2710699698841286876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A058871 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n).natAbs, d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A134180.P2710699698841286876

/-! ## A134180.P16799256957321232376

`record[A093178(A058871(A065033(n)))]`
-/

namespace A134180.P16799256957321232376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A058871 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134180.P16799256957321232376

/-! ## A134180.P11571007214371053994

`∩[A058871(n+1), A283550(n+1)]`
-/

namespace A134180.P11571007214371053994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134180.P11571007214371053994

/-!
# A134181: Difference between cumulative prime and odd sums.

The programs for A134181, there is no canonical definition to state claims against.
-/

/-! ## A134181.P10837943460918429259

`∑[p?[2*n+1]-(2*n+3)]`
-/

namespace A134181.P10837943460918429259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134181.P10837943460918429259

/-! ## A134181.P2987095486142808058

`∑[A131733(n+2)]`
-/

namespace A134181.P2987095486142808058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134181.P2987095486142808058

/-! ## A134181.P5414405467120367542

`A108754(n+2)-1`
-/

namespace A134181.P5414405467120367542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 2) - 1

end

end A134181.P5414405467120367542

/-! ## A134181.P3429093166316231638

`∑[A173072(n+2)-1]`
-/

namespace A134181.P3429093166316231638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134181.P3429093166316231638

/-! ## A134181.P5294560812206663594

`Δ[A307673(n+1)]-1`
-/

namespace A134181.P5294560812206663594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A134181.P5294560812206663594

/-! ## A134181.P222364563793140360

`∑[2*A008507(n+1)]`
-/

namespace A134181.P222364563793140360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134181.P222364563793140360

/-! ## A134181.P4037922865163335347

`∑[A065890(n+2)-n]`
-/

namespace A134181.P4037922865163335347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134181.P4037922865163335347

/-! ## A134181.P13630388314213154122

`∑[abs(Δ[A108754(n+1)])]`
-/

namespace A134181.P13630388314213154122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134181.P13630388314213154122

/-! ## A134181.P13657022475128673524

`A135267(n+2)+n+1`
-/

namespace A134181.P13657022475128673524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 2) + (n + 1 : ℤ)

end

end A134181.P13657022475128673524

/-! ## A134181.P6001897490307478263

`∑[∑[2*A100820(n+1)]]`
-/

namespace A134181.P6001897490307478263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134181.P6001897490307478263

/-!
# A134183: A Hankel transform of a Catalan product.

The programs for A134183, the canonical program `A134183.P8466557060232572687` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134183 has offset 0).

The definition of A134183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134183.P14556390791495254882

`4^C(n, 2)*n*2^(n-1)`
-/

namespace A134183.P14556390791495254882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ Nat.choose n 2 * n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A134183.P14556390791495254882

namespace A134183

/-- `4^C(n, 2)*n*2^(n-1)` -/
def P14556390791495254882.Spec : Prop :=
  ∀ n, P14556390791495254882.a n = (A134183 n : ℚ)

end A134183

/-! ## A134183.P8466557060232572687

`A053763(n)*A001787(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134183

/-- `A053763(n)*A001787(n)` -/
def P8466557060232572687.Spec : Prop :=
  ∀ n, P8466557060232572687.a n = A134183 n

theorem P8466557060232572687.correct : P8466557060232572687.Spec := by
  intro n
  simp only [A134183]

end A134183

/-! ## A134183.P8127746136970493307

`2^(n²-1)*n`
-/

namespace A134183.P8127746136970493307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n ^ 2 : ℤ) - 1 : ℤ) * (n : ℚ)

end

end A134183.P8127746136970493307

namespace A134183

/-- `2^(n²-1)*n` -/
def P8127746136970493307.Spec : Prop :=
  ∀ n, P8127746136970493307.a n = (A134183 n : ℚ)

end A134183

/-! ## A134183.P1245374070608343540

`lcm(2, n*2^n²)/2`
-/

namespace A134183.P1245374070608343540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n * 2 ^ n ^ 2) : ℚ) / 2

end

end A134183.P1245374070608343540

namespace A134183

/-- `lcm(2, n*2^n²)/2` -/
def P1245374070608343540.Spec : Prop :=
  ∀ n, P1245374070608343540.a n = (A134183 n : ℚ)

end A134183

/-! ## A134183.P8335982586566934516

`n*2^(n%(n+1))²/2`
-/

namespace A134183.P8335982586566934516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ (n % (n + 1)) ^ 2 : ℚ) / 2

end

end A134183.P8335982586566934516

namespace A134183

/-- `n*2^(n%(n+1))²/2` -/
def P8335982586566934516.Spec : Prop :=
  ∀ n, P8335982586566934516.a n = (A134183 n : ℚ)

end A134183

/-!
# A134184: A transform of the central binomial coefficients A001405.

The programs for A134184, there is no canonical definition to state claims against.
-/

/-! ## A134184.P1593233138818316618

`A329673(n)-a(n-1)` with `a(0)=1`
-/

namespace A134184.P1593233138818316618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329673 n - a (n - 1)

end

end A134184.P1593233138818316618

/-! ## A134184.P15226015469269635991

`A005207(n)+A002265(A122367(n))`
-/

namespace A134184.P15226015469269635991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 n + A002265 (A122367 n).toNat

end

end A134184.P15226015469269635991

/-! ## A134184.P14831020821814010200

`A124741(A028310(A001654(n)+n))`
-/

namespace A134184.P14831020821814010200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A028310 (A001654 n + (n : ℤ)).toNat).toNat

end

end A134184.P14831020821814010200

/-! ## A134184.P1252239323317751734

`A124741(A051801(n)+A001654(n))`
-/

namespace A134184.P1252239323317751734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A051801 n + A001654 n).toNat

end

end A134184.P1252239323317751734

/-! ## A134184.P7290087074561592890

`A124741(A233583(n+1)+A001654(n))`
-/

namespace A134184.P7290087074561592890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A233583 (n + 1) + A001654 n).toNat

end

end A134184.P7290087074561592890

/-!
# A134185: Hankel transform of a transform of the central binomial coefficients A001405.

The programs for A134185, there is no canonical definition to state claims against.
-/

/-! ## A134185.P15757414592510105158

`A000045(and(3, n-2))*A160637(n)`
-/

namespace A134185.P15757414592510105158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 ((n : ℤ) - 2)).toNat * A160637 n

end

end A134185.P15757414592510105158

/-! ## A134185.P14159268127897317785

`A039900(and(3, n-2))*A160637(n)`
-/

namespace A134185.P14159268127897317785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 (Int.land 3 ((n : ℤ) - 2)).toNat * A160637 n

end

end A134185.P14159268127897317785

/-! ## A134185.P569513949976829707

`A016116(A000124(n))*A046980(n)`
-/

namespace A134185.P569513949976829707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000124 n).toNat * A046980 n

end

end A134185.P569513949976829707

/-! ## A134185.P2780695293469065640

`A016116(∑[A014681(n)])*A046980(n)`
-/

namespace A134185.P2780695293469065640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A046980 n

end

end A134185.P2780695293469065640

/-! ## A134185.P11860317898218158856

`A046980(n)*A158780(A152950(n+1))`
-/

namespace A134185.P11860317898218158856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A158780 (A152950 (n + 1)).toNat

end

end A134185.P11860317898218158856

/-!
# A134186: Expansion of -x*(5*x^4+5*x^3-7*x-4)/((x^2-x-1)*(x^3+x^2-1)).

The programs for A134186, the canonical program `A134186.P9201120243016926662` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134186 has offset 1).

The definition of A134186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+7x-5x^3-5x^4)/(1+x-2x^2-2x^3+x^5))` (program `A134186.P9201120243016926662`, by `A134186.P9201120243016926662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134186.P9201120243016926662

`ogf((4+7x-5x^3-5x^4)/(1+x-2x^2-2x^3+x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134186

/-- `ogf((4+7x-5x^3-5x^4)/(1+x-2x^2-2x^3+x^5))` -/
def P9201120243016926662.Spec : Prop :=
  ∀ n, P9201120243016926662.a n = A134186 (n + 1)

theorem P9201120243016926662.correct : P9201120243016926662.Spec := by
  intro n
  simp only [A134186, Nat.add_sub_cancel]

end A134186

/-!
# A134189: a(1)=1. Thereafter, a(n) = n*a(n-1) if the number of divisors of n*a(n-1) is <= the number of divisors of n+a(n-1) or a(n) = n+a(n-1) if n*a(n-1) has more divisors than n+a(n-1).

The programs for A134189, there is no canonical definition to state claims against.
-/

/-! ## A134189.P9013668775826553177

`∑[gcd(n+1, ∑[n]!)]`
-/

namespace A134189.P9013668775826553177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134189.P9013668775826553177

/-! ## A134189.P14667909083945327484

`a(n-1)+3^C(a(n-1), 68)+n` with `a(0)=1, a(1)=2`
-/

namespace A134189.P14667909083945327484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (3 ^ Nat.choose (a (n - 1)) 68 + n)

end

end A134189.P14667909083945327484

/-! ## A134189.P14251426075172729820

`eq[4, A381552(n)]`
-/

namespace A134189.P14251426075172729820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134189.P14251426075172729820

/-! ## A134189.P16623093373542751111

`A193898(∑[n])+n`
-/

namespace A134189.P16623093373542751111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193898 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A134189.P16623093373542751111

/-! ## A134189.P1029513993570733977

`record[gcd(n, A119339(n))]`
-/

namespace A134189.P1029513993570733977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A119339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134189.P1029513993570733977

/-!
# A134190: a(1)=1. a(n) = n*a(n-1) if n*a(n-1) has a fewer number of divisors than n+a(n-1) does. a(n) = n+a(n-1) if n*a(n-1) has a greater or equal number of divisors than n+a(n-1) does.

The programs for A134190, there is no canonical definition to state claims against.
-/

/-! ## A134190.P2783563403380280799

`A047905(A329254(n+1))`
-/

namespace A134190.P2783563403380280799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (A329254 (n + 1)).toNat

end

end A134190.P2783563403380280799

/-! ## A134190.P11843578674909310611

`A047905(A001104(n+2))`
-/

namespace A134190.P11843578674909310611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (A001104 (n + 2)).toNat

end

end A134190.P11843578674909310611

/-! ## A134190.P16369583111667101297

`A047905(A032555(n+2))`
-/

namespace A134190.P16369583111667101297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (A032555 (n + 2)).toNat

end

end A134190.P16369583111667101297

/-! ## A134190.P11665208107343788980

`A047905(A032557(n+2))`
-/

namespace A134190.P11665208107343788980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (A032557 (n + 2)).toNat

end

end A134190.P11665208107343788980

/-!
# A134191: Impure numbers in the Collatz (3x+1) iteration.

The programs for A134191, there is no canonical definition to state claims against.
-/

/-! ## A134191.P4885043035866828529

`comp[A061641(n+1)]`
-/

namespace A134191.P4885043035866828529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134191.P4885043035866828529

/-! ## A134191.P7227584810403412441

`eq[1, A059555((n+1)*char[A061641(n+1)]+1)]`
-/

namespace A134191.P7227584810403412441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059555 ((n + 1) * (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134191.P7227584810403412441

/-! ## A134191.P13413459300537692054

`eq[0, A222118(A257088(n))]`
-/

namespace A134191.P13413459300537692054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222118 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134191.P13413459300537692054

/-! ## A134191.P10935960018911312146

`record[gcd(n+1, Δ[A235452(n+1)])+1]`
-/

namespace A134191.P10935960018911312146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235452 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134191.P10935960018911312146

/-! ## A134191.P4888833237305352286

`eq[A105016(A213672(n+1)), A213672(n+1)]+1`
-/

namespace A134191.P4888833237305352286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105016 (A213672 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A134191.P4888833237305352286

/-! ## A134191.P18064248639784472543

`eq[1, A287947((n+1)*char[A061641(n+1)])]`
-/

namespace A134191.P18064248639784472543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287947 ((n + 1) * (if ∃ j, f3 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134191.P18064248639784472543

/-! ## A134191.P7274303401230187343

`record[n+2-A286956(A213672(n+1))]`
-/

namespace A134191.P7274303401230187343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A286956 (A213672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134191.P7274303401230187343

/-!
# A134192: a(0) = a(1) = 1. a(n) = Sum_{p|n} a(n-p), where the sum is over all distinct primes p that divide n.

The programs for A134192, there is no canonical definition to state claims against.
-/

/-! ## A134192.P5588287836782253200

`A092904(A032741(n)^A087897(n))`
-/

namespace A134192.P5588287836782253200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092904 (SequenceMachineLib.roundAway ((A032741 n : ℚ) ^ (A087897 n : ℤ))).toNat

end

end A134192.P5588287836782253200

/-! ## A134192.P9455413703463034166

`A092904(A032741(n)^A238210(n))`
-/

namespace A134192.P9455413703463034166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092904 (SequenceMachineLib.roundAway ((A032741 n : ℚ) ^ (A238210 n : ℤ))).toNat

end

end A134192.P9455413703463034166

/-!
# A134193: a(1) = 1; for n>1, a(n) = the smallest positive integer not occurring among the exponents in the prime-factorization of n.

The programs for A134193, the canonical program `A134193.P13179869624210931457` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134193 has offset 1).

The definition of A134193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134193.P2911934929747497720

`A257993(A181819(n+1))`
-/

namespace A134193.P2911934929747497720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A181819 (n + 1)).toNat

end

end A134193.P2911934929747497720

namespace A134193

/-- `A257993(A181819(n+1))` -/
def P2911934929747497720.Spec : Prop :=
  ∀ n, P2911934929747497720.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P10400294520088987632

`A134194(A046523(n+1))`
-/

namespace A134193.P10400294520088987632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (A046523 (n + 1)).toNat

end

end A134193.P10400294520088987632

namespace A134193

/-- `A134194(A046523(n+1))` -/
def P10400294520088987632.Spec : Prop :=
  ∀ n, P10400294520088987632.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P13179869624210931457

`A001511(A297404(n+1)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134193

/-- `A001511(A297404(n+1)+1)` -/
def P13179869624210931457.Spec : Prop :=
  ∀ n, P13179869624210931457.a n = A134193 (n + 1)

theorem P13179869624210931457.correct : P13179869624210931457.Spec := by
  intro n
  simp only [A134193, Nat.add_sub_cancel]

end A134193

/-! ## A134193.P9574230145482131581

`A257993(∏{e}[n+1, A000040(#)])`
-/

namespace A134193.P9574230145482131581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A134193.P9574230145482131581

namespace A134193

/-- `A257993(∏{e}[n+1, A000040(#)])` -/
def P9574230145482131581.Spec : Prop :=
  ∀ n, P9574230145482131581.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P11141380649185042219

`A257993(∏{e}[n+1, A003459(#)])`
-/

namespace A134193.P11141380649185042219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n), A003459 (Nat.factorization (f1 n) p)).toNat

end

end A134193.P11141380649185042219

namespace A134193

/-- `A257993(∏{e}[n+1, A003459(#)])` -/
def P11141380649185042219.Spec : Prop :=
  ∀ n, P11141380649185042219.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P10674379542150426482

`A257993(∏{e}[n+1, A040990(#)])`
-/

namespace A134193.P10674379542150426482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n), A040990 (Nat.factorization (f1 n) p)).toNat

end

end A134193.P10674379542150426482

namespace A134193

/-- `A257993(∏{e}[n+1, A040990(#)])` -/
def P10674379542150426482.Spec : Prop :=
  ∀ n, P10674379542150426482.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P9604970766544174158

`A257993(∏{e}[n+1, A058853(#)])`
-/

namespace A134193.P9604970766544174158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A134193.P9604970766544174158

namespace A134193

/-- `A257993(∏{e}[n+1, A058853(#)])` -/
def P9604970766544174158.Spec : Prop :=
  ∀ n, P9604970766544174158.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P16931014220002107130

`A257993(∏{e}[n+1, A219697(#)])`
-/

namespace A134193.P16931014220002107130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p)).toNat

end

end A134193.P16931014220002107130

namespace A134193

/-- `A257993(∏{e}[n+1, A219697(#)])` -/
def P16931014220002107130.Spec : Prop :=
  ∀ n, P16931014220002107130.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P1793925767342893028

`53%A053669(∏{e}[n+1, A000040(#)])`
-/

namespace A134193.P1793925767342893028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 53 (A053669 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat)

end

end A134193.P1793925767342893028

namespace A134193

/-- `53%A053669(∏{e}[n+1, A000040(#)])` -/
def P1793925767342893028.Spec : Prop :=
  ∀ n, P1793925767342893028.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P16975672774591419346

`A134194(A071364((n+1)²))*A134194(A071364(n+1))`
-/

namespace A134193.P16975672774591419346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (A071364 ((n + 1) ^ 2)).toNat * A134194 (A071364 (n + 1)).toNat

end

end A134193.P16975672774591419346

namespace A134193

/-- `A134194(A071364((n+1)²))*A134194(A071364(n+1))` -/
def P16975672774591419346.Spec : Prop :=
  ∀ n, P16975672774591419346.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P17446227888616475776

`A134194(A134194(n+1)²)*A134194(A320389(n+1))`
-/

namespace A134193.P17446227888616475776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (A134194 (n + 1) ^ 2).toNat * A134194 (A320389 (n + 1)).toNat

end

end A134193.P17446227888616475776

namespace A134193

/-- `A134194(A134194(n+1)²)*A134194(A320389(n+1))` -/
def P17446227888616475776.Spec : Prop :=
  ∀ n, P17446227888616475776.a n = A134193 (n + 1)

end A134193

/-! ## A134193.P1485675335619917745

`A134194(A071364(n+1))/A134194(A134194(n+1)²)`
-/

namespace A134193.P1485675335619917745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134194 (A071364 (n + 1)).toNat : ℚ) / (A134194 (A134194 (n + 1) ^ 2).toNat : ℚ)

end

end A134193.P1485675335619917745

namespace A134193

/-- `A134194(A071364(n+1))/A134194(A134194(n+1)²)` -/
def P1485675335619917745.Spec : Prop :=
  ∀ n, P1485675335619917745.a n = (A134193 (n + 1) : ℚ)

end A134193

/-!
# A134194: a(n) = the smallest positive divisor of n that does not occur among the exponents in the prime factorization of n.

The programs for A134194, there is no canonical definition to state claims against.
-/

/-! ## A134194.P4073676488505080886

`A277698(n+1)+A037911(A037937(n))`
-/

namespace A134194.P4073676488505080886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (n + 1) + A037911 (A037937 n).toNat

end

end A134194.P4073676488505080886

/-! ## A134194.P9216277326733628257

`or(A025469(A048577(n)), A277698(n+1))`
-/

namespace A134194.P9216277326733628257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A048577 n).toNat) (A277698 (n + 1))

end

end A134194.P9216277326733628257

/-! ## A134194.P12356310513474932520

`or(A096268(A006053(n)), A277698(n+1))`
-/

namespace A134194.P12356310513474932520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096268 (A006053 n).toNat) (A277698 (n + 1))

end

end A134194.P12356310513474932520

/-! ## A134194.P9944377062439040128

`or(A126773(n+1), A248639(A036561(n)))`
-/

namespace A134194.P9944377062439040128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126773 (n + 1)) (A248639 (A036561 n).toNat)

end

end A134194.P9944377062439040128

/-! ## A134194.P11611089282025961275

`or(A055641(A126324(n)), A277698(n+1))`
-/

namespace A134194.P11611089282025961275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A126324 n).toNat) (A277698 (n + 1))

end

end A134194.P11611089282025961275

/-!
# A134195: Antidiagonal sums of square array A126885.

The programs for A134195, there is no canonical definition to state claims against.
-/

/-! ## A134195.P6428962703039648453

`∑[A104879(n)]`
-/

namespace A134195.P6428962703039648453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P6428962703039648453

/-! ## A134195.P11186976087207779901

`∑[A103439(n)+1]`
-/

namespace A134195.P11186976087207779901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P11186976087207779901

/-! ## A134195.P3958412213507116029

`∑[∑[A101494(∑[n])]]`
-/

namespace A134195.P3958412213507116029
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P3958412213507116029

/-! ## A134195.P16061885788985215374

`∑[∑[A103480(n)-n]]`
-/

namespace A134195.P16061885788985215374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103480 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P16061885788985215374

/-! ## A134195.P9031872045030176722

`∑[∑[A026898(A028310(n)-1)]]`
-/

namespace A134195.P9031872045030176722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P9031872045030176722

/-! ## A134195.P13180596624455242150

`∑[∑[A026898(A004273(n)-n)]]`
-/

namespace A134195.P13180596624455242150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P13180596624455242150

/-! ## A134195.P13424460298291760409

`∑[∑[A026898(n)]-A003101(n)]`
-/

namespace A134195.P13424460298291760409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A003101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P13424460298291760409

/-! ## A134195.P2336295552591178941

`∑[∑[A287216(∑[n+2]-1)]]`
-/

namespace A134195.P2336295552591178941
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (∑ j ∈ Finset.range (n + 1), f3 j - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134195.P2336295552591178941

/-!
# A134196: Primes that occur in A126990 only once.

The programs for A134196, there is no canonical definition to state claims against.
-/

/-! ## A134196.P3701049726357948434

`A089296(A065091(2*(n+1))+6)`
-/

namespace A134196.P3701049726357948434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089296 (A065091 (2 * (n + 1)) + 6).toNat

end

end A134196.P3701049726357948434

/-! ## A134196.P2305683840340422529

`A089296(A000040(2*n+3)+6)`
-/

namespace A134196.P2305683840340422529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089296 (A000040 (2 * n + 3) + 6).toNat

end

end A134196.P2305683840340422529

/-!
# A134197: Primes that occur in A126990 twice.

The programs for A134197, there is no canonical definition to state claims against.
-/

/-! ## A134197.P4230319129044956341

`p?[A068828(n+1)%A063535(n)]`
-/

namespace A134197.P4230319129044956341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068828 (n + 1)) (A063535 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134197.P4230319129044956341

/-! ## A134197.P8737529849320585197

`record[A051635(n+1)%A063535(n+1)]`
-/

namespace A134197.P8737529849320585197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051635 (n + 1)) (A063535 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134197.P8737529849320585197

/-! ## A134197.P2743884571608567838

`∩[A051635(n+1), A372209(n+1)]`
-/

namespace A134197.P2743884571608567838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134197.P2743884571608567838

/-! ## A134197.P284342203599936639

`∩[A068828(n+1), A372209(n+1)]`
-/

namespace A134197.P284342203599936639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134197.P284342203599936639

/-! ## A134197.P10180083882511116407

`record[gcd(A126990(n+1), A126990(n+2))]`
-/

namespace A134197.P10180083882511116407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126990 (n + 1)) (A126990 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134197.P10180083882511116407

/-! ## A134197.P17629720381338797233

`p?[A151800(A063535(n))%A063535(n+1)]`
-/

namespace A134197.P17629720381338797233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A063535 n).toNat) (A063535 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134197.P17629720381338797233

/-! ## A134197.P10694013557680735537

`∩[A225495(n+1), A372209(n+1)]`
-/

namespace A134197.P10694013557680735537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134197.P10694013557680735537

/-! ## A134197.P8710665478385326042

`∩[A264720(n+1), A372209(n+1)]`
-/

namespace A134197.P8710665478385326042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134197.P8710665478385326042

/-! ## A134197.P3899304977733764546

`p?[A000040(A258025(n+1)+1)%A063535(n+1)]`
-/

namespace A134197.P3899304977733764546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A258025 (n + 1) + 1).toNat) (A063535 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134197.P3899304977733764546

/-!
# A134198: Number of distinct sequences {i^k mod n; i >= 0} with k >= 0.

The programs for A134198, there is no canonical definition to state claims against.
-/

/-! ## A134198.P16411638764416945332

`A051903(n+1)+A002322(n+1)`
-/

namespace A134198.P16411638764416945332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A002322 (n + 1)

end

end A134198.P16411638764416945332

/-! ## A134198.P3870746244735189504

`A002322(n+1)+A067132(n+1)-1`
-/

namespace A134198.P3870746244735189504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + (A067132 (n + 1) - 1)

end

end A134198.P3870746244735189504

/-! ## A134198.P17228532406139127875

`A051903(n+1)+A263027(n+1)-1`
-/

namespace A134198.P17228532406139127875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + (A263027 (n + 1) - 1)

end

end A134198.P17228532406139127875

/-! ## A134198.P12050038214545809346

`A002322(n+1)+val(A278254(n+1), 4)`
-/

namespace A134198.P12050038214545809346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + (SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4 : ℤ)

end

end A134198.P12050038214545809346

/-! ## A134198.P7181167279168310282

`val(A278254(n+1), 4)+1-A277127(n+1)+n`
-/

namespace A134198.P7181167279168310282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4 : ℤ) + (1 - A277127 (n + 1) + (n : ℤ))

end

end A134198.P7181167279168310282

/-! ## A134198.P11717120973982953886

`A188385(n+1)/(n+1)+1-A277127(n+1)+n`
-/

namespace A134198.P11717120973982953886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188385 (n + 1) : ℚ) / (n + 1 : ℚ) + (1 - A277127 (n + 1) + (n : ℤ) : ℚ)

end

end A134198.P11717120973982953886

/-! ## A134198.P8508525040872176226

`A007814(A046523(n+1))+A002322(n+1)`
-/

namespace A134198.P8508525040872176226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat + A002322 (n + 1)

end

end A134198.P8508525040872176226

/-! ## A134198.P10328487776958580307

`A002322(n+1)+A001222(A238745(n+1))`
-/

namespace A134198.P10328487776958580307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + A001222 (A238745 (n + 1)).toNat

end

end A134198.P10328487776958580307

/-! ## A134198.P11652447593514050594

`A061395(A181819(n+1))+A002322(n+1)`
-/

namespace A134198.P11652447593514050594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (n + 1)).toNat + A002322 (n + 1)

end

end A134198.P11652447593514050594

/-! ## A134198.P10435475508896491223

`A051903(n+1)+A000010(n+1)/A034380(n+1)`
-/

namespace A134198.P10435475508896491223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (n + 1) : ℚ) + (A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A134198.P10435475508896491223

/-!
# A134199: A002260 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

The programs for A134199, the canonical program `A134199.P15346679385903110320` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134199 has offset 0).

The definition of A134199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134199.P4878712439855954396

`A134226(n+1)+char[∑[n]-2]`
-/

namespace A134199.P4878712439855954396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134199.P4878712439855954396

namespace A134199

/-- `A134226(n+1)+char[∑[n]-2]` -/
def P4878712439855954396.Spec : Prop :=
  ∀ n, P4878712439855954396.a n = A134199 n

end A134199

/-! ## A134199.P1436109303237714995

`A134224(n)-∑[2*n]%comp[∑[n]]+n`
-/

namespace A134199.P1436109303237714995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134224 n - (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + (n : ℤ)

end

end A134199.P1436109303237714995

namespace A134199

/-- `A134224(n)-∑[2*n]%comp[∑[n]]+n` -/
def P1436109303237714995.Spec : Prop :=
  ∀ n, P1436109303237714995.a n = A134199 n

end A134199

/-! ## A134199.P10735013460669550265

`A134224(n)-A114327(n)`
-/

namespace A134199.P10735013460669550265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134224 n - A114327 n

end

end A134199.P10735013460669550265

namespace A134199

/-- `A134224(n)-A114327(n)` -/
def P10735013460669550265.Spec : Prop :=
  ∀ n, P10735013460669550265.a n = A134199 n

end A134199

/-! ## A134199.P15346679385903110320

`A002260(n+1)+2*A132440(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134199

/-- `A002260(n+1)+2*A132440(n)` -/
def P15346679385903110320.Spec : Prop :=
  ∀ n, P15346679385903110320.a n = A134199 n

theorem P15346679385903110320.correct : P15346679385903110320.Spec := by
  intro n
  simp only [A134199]

end A134199

/-! ## A134199.P9638821788490807940

`gcd(3, A117568(n))*A002260(n+1)`
-/

namespace A134199.P9638821788490807940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A117568 n) : ℤ) * A002260 (n + 1)

end

end A134199.P9638821788490807940

namespace A134199

/-- `gcd(3, A117568(n))*A002260(n+1)` -/
def P9638821788490807940.Spec : Prop :=
  ∀ n, P9638821788490807940.a n = A134199 n

end A134199

/-! ## A134199.P15151095686627508465

`A002260(n+1)*A014963(abs(A122432(n)))`
-/

namespace A134199.P15151095686627508465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A014963 |A122432 n|.toNat

end

end A134199.P15151095686627508465

namespace A134199

/-- `A002260(n+1)*A014963(abs(A122432(n)))` -/
def P15151095686627508465.Spec : Prop :=
  ∀ n, P15151095686627508465.a n = A134199 n

end A134199

/-! ## A134199.P14080255688875499878

`A002260(n+1)*A014963(A122432(n)²)`
-/

namespace A134199.P14080255688875499878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A014963 (A122432 n ^ 2).toNat

end

end A134199.P14080255688875499878

namespace A134199

/-- `A002260(n+1)*A014963(A122432(n)²)` -/
def P14080255688875499878.Spec : Prop :=
  ∀ n, P14080255688875499878.a n = A134199 n

end A134199

/-! ## A134199.P13396112284747294932

`A002260(n+1)+2*A218272(n)`
-/

namespace A134199.P13396112284747294932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A218272 n

end

end A134199.P13396112284747294932

namespace A134199

/-- `A002260(n+1)+2*A218272(n)` -/
def P13396112284747294932.Spec : Prop :=
  ∀ n, P13396112284747294932.a n = A134199 n

end A134199

/-! ## A134199.P7190935662477937711

`A000005(A059268(n))+2*A218272(n)`
-/

namespace A134199.P7190935662477937711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat + 2 * A218272 n

end

end A134199.P7190935662477937711

namespace A134199

/-- `A000005(A059268(n))+2*A218272(n)` -/
def P7190935662477937711.Spec : Prop :=
  ∀ n, P7190935662477937711.a n = A134199 n

end A134199

/-! ## A134199.P11859411842904028535

`(1-C(∑[char[∑[n]]], 2)+n)*A055231(3^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A134199.P11859411842904028535
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A055231 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A134199.P11859411842904028535

namespace A134199

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A055231(3^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P11859411842904028535.Spec : Prop :=
  ∀ n, P11859411842904028535.a n = A134199 n

end A134199

