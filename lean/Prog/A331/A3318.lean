import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A331801: Integers that are sum of two nonsquarefree numbers.

The programs for A331801, there is no canonical definition to state claims against.
-/

/-! ## A331801.P6430250124608470895

`A078137(ceil(sqrt(∑[2*n]))+2)`
-/

namespace A331801.P6430250124608470895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078137 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 2).toNat

end

end A331801.P6430250124608470895

/-!
# A331803: a(n) is the largest positive integer occurring, when written in binary, as a substring in both binary n and binary n+1.

The programs for A331803, there is no canonical definition to state claims against.
-/

/-! ## A331803.P16852690855725591242

`A175466(A058331(n))%(n+1)`
-/

namespace A331803.P16852690855725591242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175466 (A058331 n).toNat) (n + 1 : ℤ)

end

end A331803.P16852690855725591242

/-! ## A331803.P8091554135977788895

`A175466(A058331(n))-A000007(n)`
-/

namespace A331803.P8091554135977788895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175466 (A058331 n).toNat - A000007 n

end

end A331803.P8091554135977788895

/-! ## A331803.P17134616158236373615

`A057427(n)*A175466(A058331(n))`
-/

namespace A331803.P17134616158236373615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A175466 (A058331 n).toNat

end

end A331803.P17134616158236373615

/-! ## A331803.P2475098234524528244

`lcm(A011620(n), A175466(A058331(n)))`
-/

namespace A331803.P2475098234524528244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011620 n) (A175466 (A058331 n).toNat)

end

end A331803.P2475098234524528244

/-! ## A331803.P7914496640535864507

`A175466(A058331(n))-A267417(n²)`
-/

namespace A331803.P7914496640535864507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175466 (A058331 n).toNat - A267417 (n ^ 2)

end

end A331803.P7914496640535864507

/-! ## A331803.P6765096914498585800

`A011620(n²)*A175466(A058331(n))`
-/

namespace A331803.P6765096914498585800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 (n ^ 2) * A175466 (A058331 n).toNat

end

end A331803.P6765096914498585800

/-! ## A331803.P8490077389152274164

`A175466(A058331(n))-C(2, A000040(n+1))`
-/

namespace A331803.P8490077389152274164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175466 (A058331 n).toNat - (Nat.choose 2 (A000040 (n + 1)).toNat : ℤ)

end

end A331803.P8490077389152274164

/-! ## A331803.P7171814708545756558

`A175466(A058331(n))-A000045(C(2, n+2))`
-/

namespace A331803.P7171814708545756558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175466 (A058331 n).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A331803.P7171814708545756558

/-! ## A331803.P11558865541503495098

`A175466(A058331(n))+A008683(2*(n+1)²)`
-/

namespace A331803.P11558865541503495098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175466 (A058331 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A331803.P11558865541503495098

/-!
# A331804: a(n) is the largest positive integer occurring, when written in binary, as a substring in both binary n and its reversal (A030101(n)).

The programs for A331804, there is no canonical definition to state claims against.
-/

/-! ## A331804.P12467125759265596064

`A145799(A028310(n))%A227946(n)`
-/

namespace A331804.P12467125759265596064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145799 (A028310 n).toNat) (A227946 n)

end

end A331804.P12467125759265596064

/-! ## A331804.P8431023363911826024

`A206913(A331471(n)%A227946(n))`
-/

namespace A331804.P8431023363911826024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (Int.tmod (A331471 n) (A227946 n)).toNat

end

end A331804.P8431023363911826024

/-! ## A331804.P428538263163325866

`A330717(A325401(n)%A227946(n))`
-/

namespace A331804.P428538263163325866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (Int.tmod (A325401 n) (A227946 n)).toNat

end

end A331804.P428538263163325866

/-! ## A331804.P4139917034090322719

`A145799(A008574(n))%∏[A255610(n)]`
-/

namespace A331804.P4139917034090322719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145799 (A008574 n).toNat) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A331804.P4139917034090322719

/-! ## A331804.P8670670761179412131

`A330717(A325401(n))%A179790(n+1)`
-/

namespace A331804.P8670670761179412131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330717 (A325401 n).toNat) (A179790 (n + 1))

end

end A331804.P8670670761179412131

/-!
# A331806: a(n) is the least prime p > n which is palindromic in base n.

The programs for A331806, there is no canonical definition to state claims against.
-/

/-! ## A331806.P17362001450990229314

`A331807(A227549(n+1)+2)`
-/

namespace A331806.P17362001450990229314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331807 (A227549 (n + 1) + 2).toNat

end

end A331806.P17362001450990229314

/-! ## A331806.P9571033375749721002

`A331807(n+2)%A061745(n)`
-/

namespace A331806.P9571033375749721002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331807 (n + 2)) (A061745 n)

end

end A331806.P9571033375749721002

/-! ## A331806.P17860508416119162761

`A006530(lcm(6, (n+1)^3)/6*A331807(n+2))`
-/

namespace A331806.P17860508416119162761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6 * (A331807 (n + 2) : ℚ))).toNat

end

end A331806.P17860508416119162761

/-! ## A331806.P8224543637270581942

`A331807(n+2)+A000007(A035244(n))`
-/

namespace A331806.P8224543637270581942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331807 (n + 2) + A000007 (A035244 n).toNat

end

end A331806.P8224543637270581942

/-! ## A331806.P475243906423759719

`A331807(n+2)+A000007(A056323(n))`
-/

namespace A331806.P475243906423759719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331807 (n + 2) + A000007 (A056323 n).toNat

end

end A331806.P475243906423759719

/-!
# A331808: Composite numbers of the form 2*p + q, where p, q are consecutive prime numbers.

The programs for A331808, the canonical program `A331808.P10809846326648532808` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331808 has offset 1).

The definition of A331808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331808.P10809846326648532808

`∩[A001748(n+1)+A001223(n+1), A002808(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A331808

/-- `∩[A001748(n+1)+A001223(n+1), A002808(n+1)]` -/
def P10809846326648532808.Spec : Prop :=
  ∀ n, (P10809846326648532808.a n : ℤ) = A331808 (n + 1)

theorem P10809846326648532808.correct : P10809846326648532808.Spec := by
  intro n
  simp only [A331808, Nat.add_sub_cancel]

end A331808

/-! ## A331808.P2509977881833349155

`∩[A018252(n+1), A001043(n+1)+A006093(n+1)+1]`
-/

namespace A331808.P2509977881833349155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A006093 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P2509977881833349155

namespace A331808

/-- `∩[A018252(n+1), A001043(n+1)+A006093(n+1)+1]` -/
def P2509977881833349155.Spec : Prop :=
  ∀ n, (P2509977881833349155.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P17551297382501920211

`∩[A001043(n+1)+A006093(n+1)+1, A141468(n+1)]`
-/

namespace A331808.P17551297382501920211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A006093 (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P17551297382501920211

namespace A331808

/-- `∩[A001043(n+1)+A006093(n+1)+1, A141468(n+1)]` -/
def P17551297382501920211.Spec : Prop :=
  ∀ n, (P17551297382501920211.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P10213713065036821324

`∩[A001043(n+1)+A008864(n+1)-1, A141468(n+1)]`
-/

namespace A331808.P10213713065036821324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A008864 (n + 1) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P10213713065036821324

namespace A331808

/-- `∩[A001043(n+1)+A008864(n+1)-1, A141468(n+1)]` -/
def P10213713065036821324.Spec : Prop :=
  ∀ n, (P10213713065036821324.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P9564188662694375577

`∩[A001043(n+1)+A040976(n+1)+2, A141468(n+2)]`
-/

namespace A331808.P9564188662694375577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A040976 (n + 1) + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P9564188662694375577

namespace A331808

/-- `∩[A001043(n+1)+A040976(n+1)+2, A141468(n+2)]` -/
def P9564188662694375577.Spec : Prop :=
  ∀ n, (P9564188662694375577.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P12278809914304520373

`∩[A001043(n+1)+A014692(n+1)+n, A018252(n+2)]`
-/

namespace A331808.P12278809914304520373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A014692 (n + 1) + (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P12278809914304520373

namespace A331808

/-- `∩[A001043(n+1)+A014692(n+1)+n, A018252(n+2)]` -/
def P12278809914304520373.Spec : Prop :=
  ∀ n, (P12278809914304520373.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P8494680043952384304

`∩[A001043(n+1)+A014692(n+1)+n, A141468(n+2)]`
-/

namespace A331808.P8494680043952384304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A014692 (n + 1) + (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P8494680043952384304

namespace A331808

/-- `∩[A001043(n+1)+A014692(n+1)+n, A141468(n+2)]` -/
def P8494680043952384304.Spec : Prop :=
  ∀ n, (P8494680043952384304.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P10029949580123137082

`∩[A001748(n+1)+A001223(n+1), A065090(n+1)]`
-/

namespace A331808.P10029949580123137082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P10029949580123137082

namespace A331808

/-- `∩[A001748(n+1)+A001223(n+1), A065090(n+1)]` -/
def P10029949580123137082.Spec : Prop :=
  ∀ n, (P10029949580123137082.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P8934297236699330541

`∩[A001043(n+1)+A040976(n+1)+2, A056653(n+1)]`
-/

namespace A331808.P8934297236699330541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A040976 (n + 1) + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P8934297236699330541

namespace A331808

/-- `∩[A001043(n+1)+A040976(n+1)+2, A056653(n+1)]` -/
def P8934297236699330541.Spec : Prop :=
  ∀ n, (P8934297236699330541.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P12729791278560363184

`∩[A001043(n+1)+A040976(n+1)+2, A065090(n+1)]`
-/

namespace A331808.P12729791278560363184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A040976 (n + 1) + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P12729791278560363184

namespace A331808

/-- `∩[A001043(n+1)+A040976(n+1)+2, A065090(n+1)]` -/
def P12729791278560363184.Spec : Prop :=
  ∀ n, (P12729791278560363184.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P16737017897246173660

`∩[A001043(n+1)+A006093(n+1)+1, A065090(n+3)]`
-/

namespace A331808.P16737017897246173660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A006093 (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P16737017897246173660

namespace A331808

/-- `∩[A001043(n+1)+A006093(n+1)+1, A065090(n+3)]` -/
def P16737017897246173660.Spec : Prop :=
  ∀ n, (P16737017897246173660.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P838168466770974588

`∩[A001043(n+1)+A008864(n+1)-1, A065090(n+3)]`
-/

namespace A331808.P838168466770974588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A008864 (n + 1) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P838168466770974588

namespace A331808

/-- `∩[A001043(n+1)+A008864(n+1)-1, A065090(n+3)]` -/
def P838168466770974588.Spec : Prop :=
  ∀ n, (P838168466770974588.a n : ℤ) = A331808 (n + 1)

end A331808

/-! ## A331808.P2473966990750528824

`∩[A001043(n+1)+A014692(n+1)+n, A065090(n+1)]`
-/

namespace A331808.P2473966990750528824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A014692 (n + 1) + (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331808.P2473966990750528824

namespace A331808

/-- `∩[A001043(n+1)+A014692(n+1)+n, A065090(n+1)]` -/
def P2473966990750528824.Spec : Prop :=
  ∀ n, (P2473966990750528824.a n : ℤ) = A331808 (n + 1)

end A331808

/-!
# A331809: a(1) = 1; a(2) = 2; thereafter a(n) is the smallest number > a(n-1) which is neither of the form 2*a(i) nor Sum_{j=1..n-1} ( b_j*a(j) ) where 0 < i < n, b_j = 1 or 0.

The programs for A331809, there is no canonical definition to state claims against.
-/

/-! ## A331809.P717028473039037218

`2*a(n-2)+4*a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9, a(4)=13, a(5)=31, a(6)=35, a(7)=92, a(8)=118, a(9)=280`
-/

namespace A331809.P717028473039037218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 9, 13, 31, 35, 92, 118, 280] fun n a =>
  2 * a (n - 2) + 4 * a (n - 4) - 2 * a (n - 6)

end

end A331809.P717028473039037218

/-!
# A331817: a(n) = (n!)^2 * Sum_{k=0..n} (2*k)! / (2^k * (k!)^3 * (n - k)!).

The programs for A331817, there is no canonical definition to state claims against.
-/

/-! ## A331817.P9123454153276389083

`A317618(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A331817.P9123454153276389083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317618 n + (n : ℤ) * a (n - 1)

end

end A331817.P9123454153276389083

/-!
# A331818: Expansion of e.g.f. exp(1 - sec(x)) (even powers only).

The programs for A331818, there is no canonical definition to state claims against.
-/

/-! ## A331818.P16574217966887393381

`A004442(n^(2-n)²)-n`
-/

namespace A331818.P16574217966887393381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((2 - (n : ℤ)) ^ 2 : ℤ))).toNat - (n : ℤ)

end

end A331818.P16574217966887393381

/-!
# A331819: Positive numbers k such that -k is a negative negabinary-Niven number, i.e., divisible by the sum of digits of its negabinary representation (A027615).

The programs for A331819, there is no canonical definition to state claims against.
-/

/-! ## A331819.P13682562256576188183

`lt[A141256(n)^A144079(3*n+2), A338251(2*n)]`
-/

namespace A331819.P13682562256576188183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141256 n : ℚ) ^ (A144079 (3 * n + 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A331819.P13682562256576188183

/-! ## A331819.P6239724995045322631

`∑{e}[A020707(n), A269045(#)]`
-/

namespace A331819.P6239724995045322631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A269045 (Nat.factorization (f1 n).natAbs p)

end

end A331819.P6239724995045322631

/-! ## A331819.P9623661724294651658

`record[A033676(A340597(n+1))]`
-/

namespace A331819.P9623661724294651658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A340597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331819.P9623661724294651658

/-! ## A331819.P13350873927190116438

`∏{e}[A007283(n+2), A269045(#)]`
-/

namespace A331819.P13350873927190116438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A269045 (Nat.factorization (f1 n).natAbs p)

end

end A331819.P13350873927190116438

/-! ## A331819.P15560610962461529970

`lt[A134478(n), A002191(A027623(n))]`
-/

namespace A331819.P15560610962461529970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (A027623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331819.P15560610962461529970

/-!
# A331820: Positive numbers k such that k and k + 1 are both negabinary-Niven numbers (A331728).

The programs for A331820, there is no canonical definition to state claims against.
-/

/-! ## A331820.P1397949176564539345

`∩[A331728(n+1)-1, A331728(n+1)]`
-/

namespace A331820.P1397949176564539345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331728 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331820.P1397949176564539345

/-! ## A331820.P15946150990596592832

`∩[A331728(n+1), A023443(A331728(n+1))]`
-/

namespace A331820.P15946150990596592832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331728 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331820.P15946150990596592832

/-! ## A331820.P3681130619367355541

`∑[A219347(p?[A126281(n+1)])]`
-/

namespace A331820.P3681130619367355541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331820.P3681130619367355541

/-! ## A331820.P2254605490800306973

`A219347(p?[A126281(n+2)])+a(n-1)` with `a(0)=1`
-/

namespace A331820.P2254605490800306973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219347 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + a (n - 1)

end

end A331820.P2254605490800306973

/-! ## A331820.P10098692158651603990

`lt[A047030(A053417(n+1)), A214871(n+1)]`
-/

namespace A331820.P10098692158651603990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (A053417 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331820.P10098692158651603990

/-!
# A331821: Positive numbers k such that -k and -(k + 1) are both negabinary-Niven numbers (A331728).

The programs for A331821, there is no canonical definition to state claims against.
-/

/-! ## A331821.P9840679978731945542

`∩[A331819(n+1)-1, A331819(n+1)]`
-/

namespace A331821.P9840679978731945542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331819 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331821.P9840679978731945542

/-! ## A331821.P13082187953073763197

`∩[A331819(n+1), A023443(A331819(n+1))]`
-/

namespace A331821.P13082187953073763197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331819 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331821.P13082187953073763197

/-! ## A331821.P7337467692216863305

`eq[A001227(n+2), A353853(A238525(2*(n+1)))]`
-/

namespace A331821.P7337467692216863305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A238525 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331821.P7337467692216863305

/-!
# A331822: Starts of runs of 3 consecutive positive negabinary-Niven numbers (A331728).

The programs for A331822, there is no canonical definition to state claims against.
-/

/-! ## A331822.P12502260485065165536

`∩[A331820(n+1)-1, A331820(n+1)]`
-/

namespace A331822.P12502260485065165536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331822.P12502260485065165536

/-! ## A331822.P4797806868932262475

`∩[A331820(n+1), A023443(A331820(n+1))]`
-/

namespace A331822.P4797806868932262475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331820 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331822.P4797806868932262475

/-!
# A331823: Positive numbers k such that -k, -(k + 1), and -(k + 2) are 3 consecutive negative negabinary-Niven numbers (A331728).

The programs for A331823, there is no canonical definition to state claims against.
-/

/-! ## A331823.P2560055946677034845

`∩[A331821(n+1)-1, A331821(n+1)]`
-/

namespace A331823.P2560055946677034845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331821 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331823.P2560055946677034845

/-! ## A331823.P11075818620715806128

`∩[A331821(n+1), A023443(A331821(n+1))]`
-/

namespace A331823.P11075818620715806128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331821 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331823.P11075818620715806128

/-! ## A331823.P16755111786292149787

`∩[A331821(n+1), A364158(n+1)]`
-/

namespace A331823.P16755111786292149787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331823.P16755111786292149787

/-!
# A331824: Starts of runs of 4 consecutive positive negabinary-Niven numbers (A331728).

The programs for A331824, there is no canonical definition to state claims against.
-/

/-! ## A331824.P13870921923012314745

`∩[A331822(n+1)-1, A331822(n+1)]`
-/

namespace A331824.P13870921923012314745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331822 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331824.P13870921923012314745

/-! ## A331824.P13182604135896257993

`∩[A331820(n+1)-2, A331820(n+1)]`
-/

namespace A331824.P13182604135896257993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331824.P13182604135896257993

/-!
# A331825: Positive numbers k such that -k, -(k + 1), -(k + 2), and -(k + 3) are 4 consecutive negative negabinary-Niven numbers (A331728).

The programs for A331825, there is no canonical definition to state claims against.
-/

/-! ## A331825.P15323730948296280673

`∩[A331823(n+1)-1, A331823(n+1)]`
-/

namespace A331825.P15323730948296280673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331823 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331825.P15323730948296280673

/-! ## A331825.P15768868699375292834

`∩[A331823(n+1), A023443(A331823(n+1))]`
-/

namespace A331825.P15768868699375292834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331823 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331825.P15768868699375292834

/-! ## A331825.P15929900567816626278

`∩[A331823(n+2), A109613(A331823(n+2))]`
-/

namespace A331825.P15929900567816626278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331823 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A331823 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331825.P15929900567816626278

/-!
# A331826: Coefficients in asymptotic expansion of sequence A101880.

The programs for A331826, there is no canonical definition to state claims against.
-/

/-! ## A331826.P13147053245112463244

`A065033(A040027(n))-A326249(n)`
-/

namespace A331826.P13147053245112463244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A040027 n).toNat - A326249 n

end

end A331826.P13147053245112463244

/-! ## A331826.P17593482707052519833

`A210692(a(n-1))+a(n-1)-floor(n/6)` with `a(0)=1, a(1)=1`
-/

namespace A331826.P17593482707052519833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A210692 (a (n - 1)).toNat + a (n - 1) - ⌊(n : ℚ) / 6⌋

end

end A331826.P17593482707052519833

/-! ## A331826.P15155934008750183159

`A104429(n)+A002262(A000272(n))`
-/

namespace A331826.P15155934008750183159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 n + A002262 (A000272 n).toNat

end

end A331826.P15155934008750183159

/-!
# A331827: Positive negabinary-Niven numbers k (A331728) such that -k is a negative negabinary-Niven number (A331819).

The programs for A331827, there is no canonical definition to state claims against.
-/

/-! ## A331827.P17569703522234991939

`∩[A331728(n+1), A331819(n+1)]`
-/

namespace A331827.P17569703522234991939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331827.P17569703522234991939

/-! ## A331827.P4269276712386686503

`lt[A116950(lcm(12, n)/12), A271269(n+1)]`
-/

namespace A331827.P4269276712386686503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116950 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331827.P4269276712386686503

/-! ## A331827.P940382994774828295

`lt[A051713(n+1), A062383(A035008(n))]`
-/

namespace A331827.P940382994774828295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A035008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331827.P940382994774828295

/-! ## A331827.P1853886076347053659

`lt[A206960(A109375(n)), A000217(n)]`
-/

namespace A331827.P1853886076347053659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206960 (A109375 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331827.P1853886076347053659

/-!
# A331829: Positive numbers k such that k and k + 1 are both positive negabinary-Niven numbers (A331728) and -k and -(k + 1) are both negative negabinary-Niven numbers (A331819).

The programs for A331829, there is no canonical definition to state claims against.
-/

/-! ## A331829.P10969783062131289973

`∩[A331820(n+1), A331821(n+1)]`
-/

namespace A331829.P10969783062131289973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331829.P10969783062131289973

/-! ## A331829.P2932060545646348995

`∩[A331827(n+1)-1, A331827(n+1)]`
-/

namespace A331829.P2932060545646348995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331827 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331829.P2932060545646348995

/-! ## A331829.P9041445520134425010

`∩[A331827(n+1), A023443(A331827(n+1))]`
-/

namespace A331829.P9041445520134425010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331827 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331829.P9041445520134425010

/-!
# A331830: Numbers k such that k and k + 1 are both negabinary evil numbers.

The programs for A331830, the canonical program `A331830.P3749508068268674475` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331830 has offset 1).

The definition of A331830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331830.P6001145991545693041

`∩[A268272(n)-1, A268272(n)]`
-/

namespace A331830.P6001145991545693041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331830.P6001145991545693041

namespace A331830

/-- `∩[A268272(n)-1, A268272(n)]` -/
def P6001145991545693041.Spec : Prop :=
  ∀ n, (P6001145991545693041.a n : ℤ) = A331830 (n + 1)

end A331830

/-! ## A331830.P3749508068268674475

`A268272(eq[1, A268272(n+1)-A268272(n)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A331830

/-- `A268272(eq[1, A268272(n+1)-A268272(n)])` -/
def P3749508068268674475.Spec : Prop :=
  ∀ n, P3749508068268674475.a n = A331830 (n + 1)

theorem P3749508068268674475.correct : P3749508068268674475.Spec := by
  intro n
  simp only [A331830, Nat.add_sub_cancel]

end A331830

/-! ## A331830.P15456792805406134960

`filter[A268272(n+1), A073059(#)]`
-/

namespace A331830.P15456792805406134960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073059 (f1 j).toNat = 1) n)

end

end A331830.P15456792805406134960

namespace A331830

/-- `filter[A268272(n+1), A073059(#)]` -/
def P15456792805406134960.Spec : Prop :=
  ∀ n, P15456792805406134960.a n = A331830 (n + 1)

end A331830

/-! ## A331830.P8832383591422942752

`lt[A269027(n), 1-A269027(n+1)]`
-/

namespace A331830.P8832383591422942752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A269027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331830.P8832383591422942752

namespace A331830

/-- `lt[A269027(n), 1-A269027(n+1)]` -/
def P8832383591422942752.Spec : Prop :=
  ∀ n, (P8832383591422942752.a n : ℤ) = A331830 (n + 1)

end A331830

/-! ## A331830.P8842544146887673727

`A331831(n+1)+Δ[A004525(A331831(n+1))]`
-/

namespace A331830.P8842544146887673727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A331831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331831 (n + 1) + (f1 (n + 1) - f1 n)

end

end A331830.P8842544146887673727

namespace A331830

/-- `A331831(n+1)+Δ[A004525(A331831(n+1))]` -/
def P8842544146887673727.Spec : Prop :=
  ∀ n, P8842544146887673727.a n = A331830 (n + 1)

end A331830

/-! ## A331830.P3530315496446083596

`eq[A269027(n+1)/A001122(n+1), A269027(n)]`
-/

namespace A331830.P3530315496446083596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269027 (n + 1) : ℚ) / (A001122 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A331830.P3530315496446083596

namespace A331830

/-- `eq[A269027(n+1)/A001122(n+1), A269027(n)]` -/
def P3530315496446083596.Spec : Prop :=
  ∀ n, (P3530315496446083596.a n : ℤ) = A331830 (n + 1)

end A331830

/-! ## A331830.P4563864666794028241

`eq[A269027(n+1)/A001172(n+1), A269027(n)]`
-/

namespace A331830.P4563864666794028241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269027 (n + 1) : ℚ) / (A001172 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A331830.P4563864666794028241

namespace A331830

/-- `eq[A269027(n+1)/A001172(n+1), A269027(n)]` -/
def P4563864666794028241.Spec : Prop :=
  ∀ n, (P4563864666794028241.a n : ℤ) = A331830 (n + 1)

end A331830

/-! ## A331830.P10477572600798278431

`eq[A269027(n+1)/A005563(n+1), A269027(n)]`
-/

namespace A331830.P10477572600798278431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269027 (n + 1) : ℚ) / (A005563 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A331830.P10477572600798278431

namespace A331830

/-- `eq[A269027(n+1)/A005563(n+1), A269027(n)]` -/
def P10477572600798278431.Spec : Prop :=
  ∀ n, (P10477572600798278431.a n : ℤ) = A331830 (n + 1)

end A331830

/-! ## A331830.P8105363420050154135

`lt[2, A268272(2*n+1)-A268272(2*n)]`
-/

namespace A331830.P8105363420050154135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (2 * n + 1) - A268272 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A331830.P8105363420050154135

namespace A331830

/-- `lt[2, A268272(2*n+1)-A268272(2*n)]` -/
def P8105363420050154135.Spec : Prop :=
  ∀ n, (P8105363420050154135.a n : ℤ) = A331830 (n + 1)

end A331830

/-! ## A331830.P5715664196052408626

`lt[A269027(n), A269027(A004277(2*n+1))]`
-/

namespace A331830.P5715664196052408626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (A004277 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331830.P5715664196052408626

namespace A331830

/-- `lt[A269027(n), A269027(A004277(2*n+1))]` -/
def P5715664196052408626.Spec : Prop :=
  ∀ n, (P5715664196052408626.a n : ℤ) = A331830 (n + 1)

end A331830

/-! ## A331830.P4753041809975919028

`eq[1, A268273(2*(n+1))-A268273(2*n+1)]`
-/

namespace A331830.P4753041809975919028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (2 * (n + 1)) - A268273 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331830.P4753041809975919028

namespace A331830

/-- `eq[1, A268273(2*(n+1))-A268273(2*n+1)]` -/
def P4753041809975919028.Spec : Prop :=
  ∀ n, (P4753041809975919028.a n : ℤ) = A331830 (n + 1)

end A331830

/-!
# A331831: Numbers k such that k and k + 1 are both negabinary odious numbers.

The programs for A331831, the canonical program `A331831.P1834665176300229750` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331831 has offset 1).

The definition of A331831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331831.P1834665176300229750

`record[A141310(A268272(A004442(n)))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A331831

/-- `record[A141310(A268272(A004442(n)))]` -/
def P1834665176300229750.Spec : Prop :=
  ∀ n, P1834665176300229750.a n = A331831 (n + 1)

theorem P1834665176300229750.correct : P1834665176300229750.Spec := by
  intro n
  simp only [A331831, Nat.add_sub_cancel]

end A331831

/-! ## A331831.P11927412188988806228

`eq[A027615(n+1)+2, A026741(A027615(n))]`
-/

namespace A331831.P11927412188988806228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A027615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331831.P11927412188988806228

namespace A331831

/-- `eq[A027615(n+1)+2, A026741(A027615(n))]` -/
def P11927412188988806228.Spec : Prop :=
  ∀ n, (P11927412188988806228.a n : ℤ) = A331831 (n + 1)

end A331831

/-! ## A331831.P4706509785540773471

`eq[1, A269027(A269027(n)+n)]`
-/

namespace A331831.P4706509785540773471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (A269027 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331831.P4706509785540773471

namespace A331831

/-- `eq[1, A269027(A269027(n)+n)]` -/
def P4706509785540773471.Spec : Prop :=
  ∀ n, (P4706509785540773471.a n : ℤ) = A331831 (n + 1)

end A331831

/-! ## A331831.P13795568227329504829

`lt[1-A269027(n+1), A269027(n)]`
-/

namespace A331831.P13795568227329504829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A269027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331831.P13795568227329504829

namespace A331831

/-- `lt[1-A269027(n+1), A269027(n)]` -/
def P13795568227329504829.Spec : Prop :=
  ∀ n, (P13795568227329504829.a n : ℤ) = A331831 (n + 1)

end A331831

/-! ## A331831.P17469047304612856729

`eq[1, A268272(2*n+1)-A268272(2*n)]`
-/

namespace A331831.P17469047304612856729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (2 * n + 1) - A268272 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331831.P17469047304612856729

namespace A331831

/-- `eq[1, A268272(2*n+1)-A268272(2*n)]` -/
def P17469047304612856729.Spec : Prop :=
  ∀ n, (P17469047304612856729.a n : ℤ) = A331831 (n + 1)

end A331831

/-! ## A331831.P4340087734750552177

`filter[A268273(n+1), A073059(#)]`
-/

namespace A331831.P4340087734750552177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073059 (f1 j).toNat = 1) n)

end

end A331831.P4340087734750552177

namespace A331831

/-- `filter[A268273(n+1), A073059(#)]` -/
def P4340087734750552177.Spec : Prop :=
  ∀ n, P4340087734750552177.a n = A331831 (n + 1)

end A331831

/-! ## A331831.P8595752975669228937

`A268273(eq[1, A268273(n+2)-A268273(n+1)]+1)`
-/

namespace A331831.P8595752975669228937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (n + 2) - A268273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331831.P8595752975669228937

namespace A331831

/-- `A268273(eq[1, A268273(n+2)-A268273(n+1)]+1)` -/
def P8595752975669228937.Spec : Prop :=
  ∀ n, P8595752975669228937.a n = A331831 (n + 1)

end A331831

/-! ## A331831.P7489645780038158961

`A268273(eq[1, A268273(n+2)%A268273(n+1)]+1)`
-/

namespace A331831.P7489645780038158961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268273 (n + 2)) (A268273 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331831.P7489645780038158961

namespace A331831

/-- `A268273(eq[1, A268273(n+2)%A268273(n+1)]+1)` -/
def P7489645780038158961.Spec : Prop :=
  ∀ n, P7489645780038158961.a n = A331831 (n + 1)

end A331831

/-! ## A331831.P5256542375332951860

`lt[A269027(A004277(2*n+1)), A269027(n)]`
-/

namespace A331831.P5256542375332951860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (A004277 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331831.P5256542375332951860

namespace A331831

/-- `lt[A269027(A004277(2*n+1)), A269027(n)]` -/
def P5256542375332951860.Spec : Prop :=
  ∀ n, (P5256542375332951860.a n : ℤ) = A331831 (n + 1)

end A331831

/-!
# A331833: Numbers k such that all the divisors of k, excluding 1, have an even number of 1's in their negabinary representations.

The programs for A331833, there is no canonical definition to state claims against.
-/

/-! ## A331833.P1457370957951481259

`lt[A285305(n+1), A284792(A005895(n+1))]`
-/

namespace A331833.P1457370957951481259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (A005895 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331833.P1457370957951481259

/-!
# A331834: Records of A038804: (Smallest prime > 10^n) - (largest prime < 10^n).

The programs for A331834, there is no canonical definition to state claims against.
-/

/-! ## A331834.P9543157197752790880

`record[A038804(n+1)]`
-/

namespace A331834.P9543157197752790880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331834.P9543157197752790880

/-! ## A331834.P15763553294412607681

`A038804(A330468(n+1))`
-/

namespace A331834.P15763553294412607681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (A330468 (n + 1)).toNat

end

end A331834.P15763553294412607681

/-! ## A331834.P13746331057089647824

`record[A033874(n+1)+A033873(n+1)]`
-/

namespace A331834.P13746331057089647824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (n + 1) + A033873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331834.P13746331057089647824

/-! ## A331834.P3731837274744732622

`record[A033874(n+1)+A272006(n+2)+1]`
-/

namespace A331834.P3731837274744732622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (n + 1) + (A272006 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331834.P3731837274744732622

/-! ## A331834.P16469286194793425355

`record[A033874(n+1)+A004442(A272006(n+2))]`
-/

namespace A331834.P16469286194793425355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (n + 1) + A004442 (A272006 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331834.P16469286194793425355

/-!
# A331835: Replace 2^k in binary expansion of n with k-th prime number for any k > 0 (and keep 2^0).

The programs for A331835, there is no canonical definition to state claims against.
-/

/-! ## A331835.P12089430697212810970

`∑{p}[A019565(n), A064989(#)]`
-/

namespace A331835.P12089430697212810970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064989 p

end

end A331835.P12089430697212810970

/-! ## A331835.P3483278438573593760

`∑{p}[A019565(n), A065769(#)]`
-/

namespace A331835.P3483278438573593760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A065769 p

end

end A331835.P3483278438573593760

/-! ## A331835.P14346099573311929858

`∑{p}[A019565(n), A079068(#)]`
-/

namespace A331835.P14346099573311929858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A079068 p

end

end A331835.P14346099573311929858

/-! ## A331835.P13452930558248450552

`∑{p}[A019565(n), A094457(#)]`
-/

namespace A331835.P13452930558248450552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A094457 p

end

end A331835.P13452930558248450552

/-! ## A331835.P3551896163228122592

`∑{p}[A019565(n), A117364(#)]`
-/

namespace A331835.P3551896163228122592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A117364 p

end

end A331835.P3551896163228122592

/-! ## A331835.P12875302079872741462

`∑{p}[A019565(n), A117365(#)]`
-/

namespace A331835.P12875302079872741462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A117365 p

end

end A331835.P12875302079872741462

/-! ## A331835.P8148377164977334975

`∑{p}[A019565(n), A136548(#)]`
-/

namespace A331835.P8148377164977334975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A136548 p

end

end A331835.P8148377164977334975

/-! ## A331835.P18392722578902583384

`∑{p}[A019565(n), A250479(#)]`
-/

namespace A331835.P18392722578902583384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A250479 p

end

end A331835.P18392722578902583384

/-! ## A331835.P1119992992420749758

`∑{p}[A019565(n), A268674(#)]`
-/

namespace A331835.P1119992992420749758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A268674 p

end

end A331835.P1119992992420749758

/-! ## A331835.P13708923138892143029

`A373149(A019565(n))`
-/

namespace A331835.P13708923138892143029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373149 (A019565 n).toNat

end

end A331835.P13708923138892143029

/-!
# A331836: Number of noncrossing anti-commutator friendly partitions on {1,2,...,2n}.

The programs for A331836, there is no canonical definition to state claims against.
-/

/-! ## A331836.P16761634504301492032

`∑[A036234(8^n)-n]`
-/

namespace A331836.P16761634504301492032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (8 ^ n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331836.P16761634504301492032

/-!
# A331838: Number of Apwenian series f_n(z) starting with f_n(0)=1.

The programs for A331838, there is no canonical definition to state claims against.
-/

/-! ## A331838.P16793317301214086124

`and(n^(n%2), A269570(n+2)!)`
-/

namespace A331838.P16793317301214086124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ (n % 2)) (Nat.factorial (A269570 (n + 2)).toNat)

end

end A331838.P16793317301214086124

/-! ## A331838.P12347853928771075100

`and(A269570(n+2)!, A093178(n))`
-/

namespace A331838.P12347853928771075100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A269570 (n + 2)).toNat : ℤ) (A093178 n)

end

end A331838.P12347853928771075100

/-! ## A331838.P3250646788285758701

`and(A269570(n+2)!, A321874(n+1))`
-/

namespace A331838.P3250646788285758701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A269570 (n + 2)).toNat : ℤ) (A321874 (n + 1))

end

end A331838.P3250646788285758701

/-! ## A331838.P4363141108486535002

`and(∑{digits}[A269570(n+2), #!], A019379(2*n+5))`
-/

namespace A331838.P4363141108486535002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) (A019379 (2 * n + 5))

end

end A331838.P4363141108486535002

/-! ## A331838.P6617738098540807914

`and(A095571(A173633(n)), A264837(n+1))`
-/

namespace A331838.P6617738098540807914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095571 (A173633 n).toNat) (A264837 (n + 1))

end

end A331838.P6617738098540807914

/-!
# A331839: a(n) = (4^(n + 1) - 2)*(2*n)!.

The programs for A331839, the canonical program `A331839.P13409472032800364465` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331839 has offset 0).

The definition of A331839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^(n+1)-2)*(2*n)!` (program `A331839.P13409472032800364465`, by `A331839.P13409472032800364465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331839.P13409472032800364465

`(4^(n+1)-2)*(2*n)!`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A331839

/-- `(4^(n+1)-2)*(2*n)!` -/
def P13409472032800364465.Spec : Prop :=
  ∀ n, P13409472032800364465.a n = A331839 n

theorem P13409472032800364465.correct : P13409472032800364465.Spec := by
  intro n
  simp only [A331839]

end A331839

/-! ## A331839.P10991070691059820134

`A010050(n)*(A000302(n+1)-2)`
-/

namespace A331839.P10991070691059820134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n * (A000302 (n + 1) - 2)

end

end A331839.P10991070691059820134

namespace A331839

/-- `A010050(n)*(A000302(n+1)-2)` -/
def P10991070691059820134.Spec : Prop :=
  ∀ n, P10991070691059820134.a n = A331839 n

theorem P10991070691059820134.correct : P10991070691059820134.Spec := by
  intro n
  simp only [A331839, Nat.add_sub_cancel, A331839.P10991070691059820134.a, A331839.P13409472032800364465.a, A000302, A000302.P5166485833484575275.a, A010050, A010050.P16096830225553856271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331839

/-! ## A331839.P15234008176216244248

`2*A029767(Δ[n²])`
-/

namespace A331839.P15234008176216244248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029767 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A331839.P15234008176216244248

namespace A331839

/-- `2*A029767(Δ[n²])` -/
def P15234008176216244248.Spec : Prop :=
  ∀ n, P15234008176216244248.a n = A331839 n

end A331839

/-! ## A331839.P11492065800789947111

`A052840(2*(n+1))/(n+1)`
-/

namespace A331839.P11492065800789947111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052840 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A331839.P11492065800789947111

namespace A331839

/-- `A052840(2*(n+1))/(n+1)` -/
def P11492065800789947111.Spec : Prop :=
  ∀ n, P11492065800789947111.a n = (A331839 n : ℚ)

end A331839

/-! ## A331839.P4866051207015348622

`(2*n)!*A000918(2*(n+1))`
-/

namespace A331839.P4866051207015348622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * A000918 (2 * (n + 1))

end

end A331839.P4866051207015348622

namespace A331839

/-- `(2*n)!*A000918(2*(n+1))` -/
def P4866051207015348622.Spec : Prop :=
  ∀ n, P4866051207015348622.a n = A331839 n

end A331839

/-!
# A331840: Numbers k such that 30*k-13, 30*k-11 are twin primes.

The programs for A331840, the canonical program `A331840.P2580725134599375015` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331840 has offset 1).

The definition of A331840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089161, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331840.P2580725134599375015

`A089161(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A331840

/-- `A089161(n+1)+1` -/
def P2580725134599375015.Spec : Prop :=
  ∀ n, P2580725134599375015.a n = A331840 (n + 1)

theorem P2580725134599375015.correct : P2580725134599375015.Spec := by
  intro n
  simp only [A331840, Nat.add_sub_cancel]

end A331840

/-! ## A331840.P4719221316134777901

`ceil(A282323(n+1)/30)`
-/

namespace A331840.P4719221316134777901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282323 (n + 1) : ℚ) / 30⌉

end

end A331840.P4719221316134777901

namespace A331840

/-- `ceil(A282323(n+1)/30)` -/
def P4719221316134777901.Spec : Prop :=
  ∀ n, P4719221316134777901.a n = A331840 (n + 1)

end A331840

/-! ## A331840.P13020213117373270180

`ceil(A181605(n+2)/30)`
-/

namespace A331840.P13020213117373270180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181605 (n + 2) : ℚ) / 30⌉

end

end A331840.P13020213117373270180

namespace A331840

/-- `ceil(A181605(n+2)/30)` -/
def P13020213117373270180.Spec : Prop :=
  ∀ n, P13020213117373270180.a n = A331840 (n + 1)

end A331840

/-! ## A331840.P3705821009487980393

`round(A181605(A000027(n+1)+1)/30)`
-/

namespace A331840.P3705821009487980393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181605 (A000027 (n + 1) + 1).toNat : ℚ) / 30)

end

end A331840.P3705821009487980393

namespace A331840

/-- `round(A181605(A000027(n+1)+1)/30)` -/
def P3705821009487980393.Spec : Prop :=
  ∀ n, P3705821009487980393.a n = A331840 (n + 1)

end A331840

/-! ## A331840.P10367767296340865361

`ceil(A282324(n+1)/30)`
-/

namespace A331840.P10367767296340865361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282324 (n + 1) : ℚ) / 30⌉

end

end A331840.P10367767296340865361

namespace A331840

/-- `ceil(A282324(n+1)/30)` -/
def P10367767296340865361.Spec : Prop :=
  ∀ n, P10367767296340865361.a n = A331840 (n + 1)

end A331840

/-! ## A331840.P11406814184662671514

`ceil(A132242(2*n+1)/30)`
-/

namespace A331840.P11406814184662671514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132242 (2 * n + 1) : ℚ) / 30⌉

end

end A331840.P11406814184662671514

namespace A331840

/-- `ceil(A132242(2*n+1)/30)` -/
def P11406814184662671514.Spec : Prop :=
  ∀ n, P11406814184662671514.a n = A331840 (n + 1)

end A331840

/-! ## A331840.P17727637864136125954

`eq[1, A164292(30*n+17)]+1`
-/

namespace A331840.P17727637864136125954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (30 * n + 17)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331840.P17727637864136125954

namespace A331840

/-- `eq[1, A164292(30*n+17)]+1` -/
def P17727637864136125954.Spec : Prop :=
  ∀ n, (P17727637864136125954.a n : ℤ) = A331840 (n + 1)

end A331840

/-! ## A331840.P13408296194131950521

`A033182(A282323(n+1))`
-/

namespace A331840.P13408296194131950521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A282323 (n + 1)).toNat

end

end A331840.P13408296194131950521

namespace A331840

/-- `A033182(A282323(n+1))` -/
def P13408296194131950521.Spec : Prop :=
  ∀ n, P13408296194131950521.a n = A331840 (n + 1)

end A331840

/-! ## A331840.P15567542905608055525

`A033182(A181605(n+2))`
-/

namespace A331840.P15567542905608055525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A181605 (n + 2)).toNat

end

end A331840.P15567542905608055525

namespace A331840

/-- `A033182(A181605(n+2))` -/
def P15567542905608055525.Spec : Prop :=
  ∀ n, P15567542905608055525.a n = A331840 (n + 1)

end A331840

/-! ## A331840.P2417394072867222309

`A008651(A282323(n+1)+1)`
-/

namespace A331840.P2417394072867222309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A282323 (n + 1) + 1).toNat

end

end A331840.P2417394072867222309

namespace A331840

/-- `A008651(A282323(n+1)+1)` -/
def P2417394072867222309.Spec : Prop :=
  ∀ n, P2417394072867222309.a n = A331840 (n + 1)

end A331840

/-!
# A331841: When expressed in base 2 and then interpreted in base 5, is a multiple of the original number.

The programs for A331841, there is no canonical definition to state claims against.
-/

/-! ## A331841.P14145597719391367755

`record[gcd(n, A033042(n))]`
-/

namespace A331841.P14145597719391367755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033042 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331841.P14145597719391367755

/-! ## A331841.P14197897472291314251

`eq[A097251(n)/4, lcm(n, A097251(n)/4)]`
-/

namespace A331841.P14197897472291314251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097251 n : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((A097251 n : ℚ) / 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A331841.P14197897472291314251

/-! ## A331841.P14941741409045612573

`eq[0, A033042(n)%A123108(2*n)]`
-/

namespace A331841.P14941741409045612573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033042 n) (A123108 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331841.P14941741409045612573

/-! ## A331841.P7726756997442745625

`record[gcd(3*n, A020654(A000695(n)+1))]`
-/

namespace A331841.P7726756997442745625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) (A020654 (A000695 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331841.P7726756997442745625

/-! ## A331841.P3667493873334360521

`A085782(A051037(n+1)%A217137(3*n+5))`
-/

namespace A331841.P3667493873334360521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085782 (Int.tmod (A051037 (n + 1)) (A217137 (3 * n + 5))).toNat

end

end A331841.P3667493873334360521

/-!
# A331843: Number of compositions (ordered partitions) of n into distinct triangular numbers.

The programs for A331843, there is no canonical definition to state claims against.
-/

/-! ## A331843.P10222298756874820831

`A339442(n)+A339441(n)`
-/

namespace A331843.P10222298756874820831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339442 n + A339441 n

end

end A331843.P10222298756874820831

/-! ## A331843.P6136857713694802045

`A339442(n)+A006530(A060818(n))*A339375(n)`
-/

namespace A331843.P6136857713694802045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339442 n + A006530 (A060818 n).toNat * A339375 n

end

end A331843.P6136857713694802045

/-! ## A331843.P6187030671995152258

`A339442(n)+A020639(A128209(n))*A339375(n)`
-/

namespace A331843.P6187030671995152258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339442 n + A020639 (A128209 n).toNat * A339375 n

end

end A331843.P6187030671995152258

/-! ## A331843.P54077560967648735

`A339442(n)+A001221(A228879(n))*A339375(n)`
-/

namespace A331843.P54077560967648735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339442 n + A001221 (A228879 n).toNat * A339375 n

end

end A331843.P54077560967648735

/-!
# A331844: Number of compositions (ordered partitions) of n into distinct squares.

The programs for A331844, there is no canonical definition to state claims against.
-/

/-! ## A331844.P3055967870328080010

`A339431(n)+A339430(n)`
-/

namespace A331844.P3055967870328080010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339431 n + A339430 n

end

end A331844.P3055967870328080010

/-! ## A331844.P15515913380404606765

`A348326(n)+char[n²]`
-/

namespace A331844.P15515913380404606765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348326 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A331844.P15515913380404606765

/-! ## A331844.P4515720765139502093

`or(A010052(n), A348326(n))`
-/

namespace A331844.P4515720765139502093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A348326 n)

end

end A331844.P4515720765139502093

/-! ## A331844.P4931853197665327735

`or(char[A000290(n)], A348326(n))`
-/

namespace A331844.P4931853197665327735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348326 n)

end

end A331844.P4931853197665327735

/-! ## A331844.P18340375244289665081

`or(char[A118881(n)], A348326(n))`
-/

namespace A331844.P18340375244289665081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348326 n)

end

end A331844.P18340375244289665081

/-! ## A331844.P2612443089900477663

`or(char[A018853(n)²], A348326(n))`
-/

namespace A331844.P2612443089900477663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018853 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348326 n)

end

end A331844.P2612443089900477663

/-! ## A331844.P7744740056719890387

`or(char[n²], A348326(A028310(n)))`
-/

namespace A331844.P7744740056719890387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A348326 (A028310 n).toNat)

end

end A331844.P7744740056719890387

/-! ## A331844.P4865200858604849386

`xor(char[A000164(n)²], A348326(n))`
-/

namespace A331844.P4865200858604849386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348326 n)

end

end A331844.P4865200858604849386

/-! ## A331844.P12387723015794426698

`xor(char[A002262(n)²], A348326(n))`
-/

namespace A331844.P12387723015794426698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A348326 n)

end

end A331844.P12387723015794426698

/-!
# A331845: Number of compositions (ordered partitions) of n into distinct cubes.

The programs for A331845, there is no canonical definition to state claims against.
-/

/-! ## A331845.P15688131097787868869

`and(A173679(n)+2, A347714(n)+A051344(n))`
-/

namespace A331845.P15688131097787868869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173679 n + 2) (A347714 n + A051344 n)

end

end A331845.P15688131097787868869

/-! ## A331845.P861604560510948819

`∑{d}[A279329(n), A347715(n*#)]`
-/

namespace A331845.P861604560510948819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347715 (n * d)

end

end A331845.P861604560510948819

/-! ## A331845.P1843411023765058259

`∑{d}[A279329(n), A347715(n)/#]`
-/

namespace A331845.P1843411023765058259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A347715 n : ℚ) / (d : ℚ)

end

end A331845.P1843411023765058259

/-! ## A331845.P5490628752602731533

`A279329(n)*A347715(n*A279329(n))`
-/

namespace A331845.P5490628752602731533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n * A347715 ((n : ℤ) * A279329 n).toNat

end

end A331845.P5490628752602731533

/-! ## A331845.P12543348499493990996

`A279329(n)*A347716(n*A279329(n))`
-/

namespace A331845.P12543348499493990996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n * A347716 ((n : ℤ) * A279329 n).toNat

end

end A331845.P12543348499493990996

/-! ## A331845.P7118831139267229566

`A279329(n)*A347716(n)`
-/

namespace A331845.P7118831139267229566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n * A347716 n

end

end A331845.P7118831139267229566

/-! ## A331845.P7632694974200215243

`lcm(A279484(n), A347716(n))`
-/

namespace A331845.P7632694974200215243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A279484 n) (A347716 n)

end

end A331845.P7632694974200215243

/-! ## A331845.P4610652559489511221

`A279329(n)*A347715(n)`
-/

namespace A331845.P4610652559489511221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n * A347715 n

end

end A331845.P4610652559489511221

/-!
# A331846: Number of compositions (ordered partitions) of n into distinct squarefree parts.

The programs for A331846, there is no canonical definition to state claims against.
-/

/-! ## A331846.P7779139983573443875

`A332310(n)-A380958(A129017(n))`
-/

namespace A331846.P7779139983573443875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332310 n - A380958 (A129017 n).toNat

end

end A331846.P7779139983573443875

/-!
# A331848: Number of partitions of n into odd parts with some part repeated.

The programs for A331848, there is no canonical definition to state claims against.
-/

/-! ## A331848.P15567754693195755946

`A000009(n)-A000700(n)`
-/

namespace A331848.P15567754693195755946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A000700 n

end

end A331848.P15567754693195755946

/-! ## A331848.P2214192086573134692

`A357456(n)-A357457(n)`
-/

namespace A331848.P2214192086573134692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 n - A357457 n

end

end A331848.P2214192086573134692

/-! ## A331848.P13094010044760533709

`A000009(n)-abs(A081362(n))`
-/

namespace A331848.P13094010044760533709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - |A081362 n|

end

end A331848.P13094010044760533709

/-! ## A331848.P2757679432133502307

`abs(A081360(n))-A000700(n)`
-/

namespace A331848.P2757679432133502307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A000700 n

end

end A331848.P2757679432133502307

/-! ## A331848.P15035625713473558081

`∑[A087897(n)]-A000700(n)`
-/

namespace A331848.P15035625713473558081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000700 n

end

end A331848.P15035625713473558081

/-! ## A331848.P11584961348600216361

`A111133(n)+1-A000700(n)`
-/

namespace A331848.P11584961348600216361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A000700 n)

end

end A331848.P11584961348600216361

/-! ## A331848.P7117499949192655701

`A316996(n)+A317239(n)-A000700(n)`
-/

namespace A331848.P7117499949192655701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n + (A317239 n - A000700 n)

end

end A331848.P7117499949192655701

/-! ## A331848.P2837888994903208323

`A000009(n)+A000701(n)-A046682(n)`
-/

namespace A331848.P2837888994903208323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000701 n - A046682 n)

end

end A331848.P2837888994903208323

/-! ## A331848.P14365586287505755945

`A330644(n)-A047967(n)`
-/

namespace A331848.P14365586287505755945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 n - A047967 n

end

end A331848.P14365586287505755945

/-! ## A331848.P14029511724233136345

`A035457(2*n)-A000700(n)`
-/

namespace A331848.P14029511724233136345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A000700 n

end

end A331848.P14029511724233136345

/-! ## A331848.P5385362610933115861

`A172033(2*n)-A000700(n)`
-/

namespace A331848.P5385362610933115861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A000700 n

end

end A331848.P5385362610933115861

/-! ## A331848.P1686905505541615572

`A000009(n)-∑{d}[A081362(n), A000010(#)]`
-/

namespace A331848.P1686905505541615572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A331848.P1686905505541615572

/-! ## A331848.P11696684609753993694

`A219347(A000124(n))-A000700(n)`
-/

namespace A331848.P11696684609753993694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A000124 n).toNat - A000700 n

end

end A331848.P11696684609753993694

/-! ## A331848.P10310192354797649449

`A194543(A000217(n)+1)-A000700(n)`
-/

namespace A331848.P10310192354797649449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000217 n + 1).toNat - A000700 n

end

end A331848.P10310192354797649449

/-!
# A331849: Number of partitions of n into prime parts with some part repeated.

The programs for A331849, there is no canonical definition to state claims against.
-/

/-! ## A331849.P3672560097718549499

`A000607(n)-A000586(n)`
-/

namespace A331849.P3672560097718549499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A000586 n

end

end A331849.P3672560097718549499

/-! ## A331849.P5304831186296510398

`A000607(n)-(A024939(n)+A024937(n))`
-/

namespace A331849.P5304831186296510398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - (A024939 n + A024937 n)

end

end A331849.P5304831186296510398

/-! ## A331849.P4126850467084948848

`A000607(n)-(A184172(n)+A184171(n))`
-/

namespace A331849.P4126850467084948848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - (A184172 n + A184171 n)

end

end A331849.P4126850467084948848

/-! ## A331849.P4297288899348222591

`A184198(n)+A184199(n)-A000586(n)`
-/

namespace A331849.P4297288899348222591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n + (A184199 n - A000586 n)

end

end A331849.P4297288899348222591

/-! ## A331849.P15088051196478492989

`A184198(n)-A184199(n)*A260196(n)-A000586(n)`
-/

namespace A331849.P15088051196478492989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n - A184199 n * A260196 n - A000586 n

end

end A331849.P15088051196478492989

/-! ## A331849.P13917681121642176234

`A046676(n)-(A192541(n)+A000586(n))`
-/

namespace A331849.P13917681121642176234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - (A192541 n + A000586 n)

end

end A331849.P13917681121642176234

/-!
# A331850: Largest cardinality of a set obtained by self-shuffling a binary word of length n.

The programs for A331850, there is no canonical definition to state claims against.
-/

/-! ## A331850.P18135823925186859273

`A108549(A283059(n))`
-/

namespace A331850.P18135823925186859273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (A283059 n).toNat

end

end A331850.P18135823925186859273

/-! ## A331850.P13215821419976511847

`A384320(A366109(n+4))`
-/

namespace A331850.P13215821419976511847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (A366109 (n + 4)).toNat

end

end A331850.P13215821419976511847

/-! ## A331850.P5926129422460817526

`A064915(A025147(3*n)+comp[or(n, n+3)])`
-/

namespace A331850.P5926129422460817526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064915 (A025147 (3 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A331850.P5926129422460817526

/-!
# A331851: a(n) is the number of distinct values obtained by partitioning the binary representation of n into consecutive blocks, and then multiplying the numbers represented by the blocks.

The programs for A331851, there is no canonical definition to state claims against.
-/

/-! ## A331851.P8766963419908349647

`A331853(A106624(n))+A123340(n)`
-/

namespace A331851.P8766963419908349647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331853 (A106624 n).toNat + A123340 n

end

end A331851.P8766963419908349647

/-! ## A331851.P8761121267575282896

`A331853(A106624(n))+A343985(A301676(n))%A008619(n)`
-/

namespace A331851.P8761121267575282896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331853 (A106624 n).toNat + Int.tmod (A343985 (A301676 n).toNat) (A008619 n)

end

end A331851.P8761121267575282896

/-! ## A331851.P11937228158847374713

`A331853(A106624(n))+A069283(A333662(n+1)^A069283(n))`
-/

namespace A331851.P11937228158847374713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331853 (A106624 n).toNat + A069283 (SequenceMachineLib.roundAway ((A333662 (n + 1) : ℚ) ^ (A069283 n : ℤ))).toNat

end

end A331851.P11937228158847374713

/-! ## A331851.P12024058820593283294

`A331853(A106624(n))+A171727(n+1)%A326948(A050315(n))`
-/

namespace A331851.P12024058820593283294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331853 (A106624 n).toNat + Int.tmod (A171727 (n + 1)) (A326948 (A050315 n).toNat)

end

end A331851.P12024058820593283294

/-! ## A331851.P16163217447914011542

`A331853(A106624(n))+A001842(dr(A162467(n+1))*A038504(n))`
-/

namespace A331851.P16163217447914011542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331853 (A106624 n).toNat + A001842 ((SequenceMachineLib.digitalRoot (A162467 (n + 1)) : ℤ) * A038504 n).toNat

end

end A331851.P16163217447914011542

/-!
# A331852: a(n) is the number of distinct values obtained by partitioning the binary representation of n into consecutive blocks, and then applying the bitwise XOR operator to the numbers represented by the blocks.

The programs for A331852, there is no canonical definition to state claims against.
-/

/-! ## A331852.P7871454315864826788

`A048766(A225773(n+1)*A331854(n))`
-/

namespace A331852.P7871454315864826788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A225773 (n + 1) * A331854 n).toNat

end

end A331852.P7871454315864826788

/-! ## A331852.P5664536397429994120

`A331854(or(1, n))%∑[A030545(n)]`
-/

namespace A331852.P5664536397429994120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331854 (Nat.lor 1 n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331852.P5664536397429994120

/-! ## A331852.P18174712080905495163

`A000688(A027642(n))*A331854(or(1, n))`
-/

namespace A331852.P18174712080905495163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A027642 n).toNat * A331854 (Nat.lor 1 n)

end

end A331852.P18174712080905495163

/-! ## A331852.P4443812676795330028

`A331854(or(1, n))+A000038(A285011(n+1))`
-/

namespace A331852.P4443812676795330028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 (Nat.lor 1 n) + A000038 (A285011 (n + 1)).toNat

end

end A331852.P4443812676795330028

/-!
# A331853: a(n) is the number of distinct values obtained by partitioning the binary representation of n into consecutive blocks, and then applying the bitwise AND operator to the numbers represented by the blocks.

The programs for A331853, there is no canonical definition to state claims against.
-/

/-! ## A331853.P14786871789983453517

`A165413(A026768(n)+11*n²)`
-/

namespace A331853.P14786871789983453517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A026768 n + (11 * n ^ 2 : ℤ)).toNat

end

end A331853.P14786871789983453517

/-! ## A331853.P3868709462175714716

`A001221(A078008(n)+A022569(n))`
-/

namespace A331853.P3868709462175714716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A078008 n + A022569 n).toNat

end

end A331853.P3868709462175714716

/-! ## A331853.P4205572843023459651

`A001221(A051335(∏{p}[n+1, #])*A128918(n))`
-/

namespace A331853.P4205572843023459651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051335 (∏ p ∈ Nat.primeFactors (f1 n), p) * A128918 n).toNat

end

end A331853.P4205572843023459651

/-!
# A331854: a(n) is the number of distinct values obtained by partitioning the binary representation of n into consecutive blocks, and then applying the bitwise OR operator to the numbers represented by the blocks.

The programs for A331854, there is no canonical definition to state claims against.
-/

/-! ## A331854.P436377269257849402

`or(A054845(A059076(n)), A070939(n))`
-/

namespace A331854.P436377269257849402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054845 (A059076 n).toNat) (A070939 n)

end

end A331854.P436377269257849402

/-! ## A331854.P10241170875636634912

`or(A078926(A027306(n)), A331852(n))`
-/

namespace A331854.P10241170875636634912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078926 (A027306 n).toNat) (A331852 n)

end

end A331854.P10241170875636634912

/-! ## A331854.P2212700477690681598

`or(A054845(A059076(n)), A331852(n))`
-/

namespace A331854.P2212700477690681598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054845 (A059076 n).toNat) (A331852 n)

end

end A331854.P2212700477690681598

/-!
# A331855: a(n) is the number of distinct values obtained by partitioning the binary representation of n into consecutive blocks, and then reversing those blocks.

The programs for A331855, there is no canonical definition to state claims against.
-/

/-! ## A331855.P7364157288904682688

`A071295(n)+Δ[A020753(n+1)]`
-/

namespace A331855.P7364157288904682688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 n + (f1 (n + 1) - f1 n)

end

end A331855.P7364157288904682688

/-! ## A331855.P740275895033470033

`A071295(n)+A007318(A007318(A113043(n+1)))`
-/

namespace A331855.P740275895033470033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071295 n + A007318 (A007318 (A113043 (n + 1)).toNat).toNat

end

end A331855.P740275895033470033

/-! ## A331855.P1695553037774565696

`A276088(A086661(n+1))+A071295(n)`
-/

namespace A331855.P1695553037774565696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A086661 (n + 1)).toNat + A071295 n

end

end A331855.P1695553037774565696

/-! ## A331855.P5230518898377479036

`A305393(A007030(n+2)+1)+A071295(n)`
-/

namespace A331855.P5230518898377479036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (A007030 (n + 2) + 1).toNat + A071295 n

end

end A331855.P5230518898377479036

/-! ## A331855.P5570001698947676844

`A317713(C(A102465(n+1), A366388(n+1)))`
-/

namespace A331855.P5570001698947676844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (Nat.choose (A102465 (n + 1)).toNat (A366388 (n + 1)).toNat)

end

end A331855.P5570001698947676844

/-!
# A331856: a(n) is the least value obtained by partitioning the binary representation of n into consecutive blocks, and then reversing those blocks.

The programs for A331856, there is no canonical definition to state claims against.
-/

/-! ## A331856.P7928749388857015196

`A035327(A331857(∑[∏{p}[2*n, n*val(#², 2)]]-n))`
-/

namespace A331856.P7928749388857015196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A331857 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A331856.P7928749388857015196

/-! ## A331856.P17973270343708779328

`A030101(A059268(n)*A233569(n))`
-/

namespace A331856.P17973270343708779328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A059268 n * A233569 n).toNat

end

end A331856.P17973270343708779328

/-! ## A331856.P4391570248274555670

`A030101(A233569(n))+A000007(A076409(n+3))`
-/

namespace A331856.P4391570248274555670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A233569 n).toNat + A000007 (A076409 (n + 3)).toNat

end

end A331856.P4391570248274555670

/-! ## A331856.P5139003707498511083

`A030101(A233569(n)*A333768(2*n+1))`
-/

namespace A331856.P5139003707498511083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A233569 n * A333768 (2 * n + 1)).toNat

end

end A331856.P5139003707498511083

/-! ## A331856.P1405627240682606885

`A030101(A233569(n)%A077701(n+1))`
-/

namespace A331856.P1405627240682606885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.tmod (A233569 n) (A077701 (n + 1))).toNat

end

end A331856.P1405627240682606885

/-!
# A331857: a(n) is the greatest value obtained by partitioning the binary representation of n into consecutive blocks, and then reversing those blocks.

The programs for A331857, there is no canonical definition to state claims against.
-/

/-! ## A331857.P13861598671763050372

`A035327(n)+n-A331856(A035327(n))`
-/

namespace A331857.P13861598671763050372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + ((n : ℤ) - A331856 (A035327 n).toNat)

end

end A331857.P13861598671763050372

/-! ## A331857.P16626674580319868968

`A256999(A331166(n)%A109276(n+1))`
-/

namespace A331857.P16626674580319868968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (Int.tmod (A331166 n) (A109276 (n + 1))).toNat

end

end A331857.P16626674580319868968

/-! ## A331857.P16683550801654363517

`A256999(A331166(n))%A094727(A005899(n))`
-/

namespace A331857.P16683550801654363517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256999 (A331166 n).toNat) (A094727 (A005899 n).toNat)

end

end A331857.P16683550801654363517

/-! ## A331857.P1797678441362343723

`A014963(A102308(n+1))*A256999(A331166(n))`
-/

namespace A331857.P1797678441362343723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102308 (n + 1)).toNat * A256999 (A331166 n).toNat

end

end A331857.P1797678441362343723

/-! ## A331857.P10903374212490192016

`A256999(A331166(n))+A000038(A109275(n+1))`
-/

namespace A331857.P10903374212490192016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A331166 n).toNat + A000038 (A109275 (n + 1)).toNat

end

end A331857.P10903374212490192016

/-!
# A331858: a(n) = (2^p-1)*(2^(p-1))*((2^p-1)^2-2), where p is the n-th prime.

The programs for A331858, the canonical program `A331858.P3038687503361039309` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331858 has offset 1).

The definition of A331858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331858.P3038687503361039309

`A060286(n+1)*A093112(A000040(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A331858

/-- `A060286(n+1)*A093112(A000040(n+1))` -/
def P3038687503361039309.Spec : Prop :=
  ∀ n, P3038687503361039309.a n = A331858 (n + 1)

theorem P3038687503361039309.correct : P3038687503361039309.Spec := by
  intro n
  simp only [A331858, Nat.add_sub_cancel]

end A331858

/-! ## A331858.P15274374257762454351

`A060286(n+1)*A093112(A049551(n+1))`
-/

namespace A331858.P15274374257762454351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060286 (n + 1) * A093112 (A049551 (n + 1)).toNat

end

end A331858.P15274374257762454351

namespace A331858

/-- `A060286(n+1)*A093112(A049551(n+1))` -/
def P15274374257762454351.Spec : Prop :=
  ∀ n, P15274374257762454351.a n = A331858 (n + 1)

end A331858

/-!
# A331859: The total number of elastic collisions between a block of mass n, a block of mass 1, and a wall.

The programs for A331859, the canonical program `A331859.P7592029176894377052` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331859 has offset 1).

The definition of A331859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331859.P7592029176894377052

`ceil(π/atan(sqrt(1/(n+1))))-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A331859

/-- `ceil(π/atan(sqrt(1/(n+1))))-1` -/
def P7592029176894377052.Spec : Prop :=
  ∀ n, P7592029176894377052.a n = A331859 (n + 1)

theorem P7592029176894377052.correct : P7592029176894377052.Spec := by
  intro n
  simp only [A331859, Nat.add_sub_cancel]

end A331859

/-! ## A331859.P2222362429951058440

`A121902(A190524(2*(n+1))+36)`
-/

namespace A331859.P2222362429951058440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A190524 (2 * (n + 1)) + 36).toNat

end

end A331859.P2222362429951058440

namespace A331859

/-- `A121902(A190524(2*(n+1))+36)` -/
def P2222362429951058440.Spec : Prop :=
  ∀ n, P2222362429951058440.a n = A331859 (n + 1)

end A331859

/-! ## A331859.P17207654986263467891

`A000196(A257639(n+1)+A248228(3*n+5))`
-/

namespace A331859.P17207654986263467891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A257639 (n + 1) + A248228 (3 * n + 5)).toNat

end

end A331859.P17207654986263467891

namespace A331859

/-- `A000196(A257639(n+1)+A248228(3*n+5))` -/
def P17207654986263467891.Spec : Prop :=
  ∀ n, P17207654986263467891.a n = A331859 (n + 1)

end A331859

/-! ## A331859.P4634127846581184446

`A055086(or(A072668(2*(n+1)), A234287(2*(n+1))))`
-/

namespace A331859.P4634127846581184446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A072668 (2 * (n + 1))) (A234287 (2 * (n + 1)))).toNat

end

end A331859.P4634127846581184446

namespace A331859

/-- `A055086(or(A072668(2*(n+1)), A234287(2*(n+1))))` -/
def P4634127846581184446.Spec : Prop :=
  ∀ n, P4634127846581184446.a n = A331859 (n + 1)

end A331859

/-! ## A331859.P12876497455292181017

`A272756(A035953(n+1))`
-/

namespace A331859.P12876497455292181017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272756 (A035953 (n + 1)).toNat

end

end A331859.P12876497455292181017

namespace A331859

/-- `A272756(A035953(n+1))` -/
def P12876497455292181017.Spec : Prop :=
  ∀ n, P12876497455292181017.a n = A331859 (n + 1)

end A331859

/-!
# A331860: Numbers k such that R(k) + 10^floor(k/2-1) is prime, where R(k) = (10^k-1)/9 (repunit: A002275).

The programs for A331860, there is no canonical definition to state claims against.
-/

/-! ## A331860.P16554984810859700526

`A120684(A126646(n)-A091913(n))`
-/

namespace A331860.P16554984810859700526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120684 (A126646 n - A091913 n).toNat

end

end A331860.P16554984810859700526

/-! ## A331860.P13452118235634399194

`or(A071797(A024037(n+1)), A367398(n+4))`
-/

namespace A331860.P13452118235634399194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071797 (A024037 (n + 1)).toNat) (A367398 (n + 4))

end

end A331860.P13452118235634399194

/-!
# A331861: Numbers n for which R(n) + 10^floor(n/2) is prime, where R(n) = (10^n-1)/9.

The programs for A331861, there is no canonical definition to state claims against.
-/

/-! ## A331861.P15787099361956900042

`A302593(A301694(n)^A303975(2*n+3))`
-/

namespace A331861.P15787099361956900042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (SequenceMachineLib.roundAway ((A301694 n : ℚ) ^ (A303975 (2 * n + 3) : ℤ))).toNat

end

end A331861.P15787099361956900042

/-!
# A331865: Numbers n for which R(n) + 2*10^floor(n/2) is prime, where R(n) = (10^n-1)/9.

The programs for A331865, there is no canonical definition to state claims against.
-/

/-! ## A331865.P9315480847483039397

`lt[A064861(A332938(n+1)), 7]`
-/

namespace A331865.P9315480847483039397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A332938 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A331865.P9315480847483039397

/-! ## A331865.P1117296515135337170

`round(A000196(A000111(n))/3)+n`
-/

namespace A331865.P1117296515135337170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000196 (A000111 n).toNat : ℚ) / 3) + (n : ℤ)

end

end A331865.P1117296515135337170

/-! ## A331865.P16530801870738867633

`A343609(A013588(n+1)+n)+n`
-/

namespace A331865.P16530801870738867633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A013588 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

end

end A331865.P16530801870738867633

/-! ## A331865.P13888475685247989819

`eq[Δ[A198323(n+2)], A198339(2*n+1)]`
-/

namespace A331865.P13888475685247989819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198323 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198339 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A331865.P13888475685247989819

/-! ## A331865.P14446639076767228594

`A343609(A013588(n+1)+A008592(n))`
-/

namespace A331865.P14446639076767228594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A013588 (n + 1) + A008592 n).toNat

end

end A331865.P14446639076767228594

/-!
# A331872: Number of semi-lone-child-avoiding locally disjoint rooted trees with n vertices.

The programs for A331872, there is no canonical definition to state claims against.
-/

/-! ## A331872.P11196504677887359823

`A067085(A148015(n))`
-/

namespace A331872.P11196504677887359823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A148015 n).toNat

end

end A331872.P11196504677887359823

/-! ## A331872.P4679523005994985472

`A083375(A148277(n))`
-/

namespace A331872.P4679523005994985472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A148277 n).toNat

end

end A331872.P4679523005994985472

/-! ## A331872.P7995047556014463054

`round((A211940(n+1)-A211956(n))/2)`
-/

namespace A331872.P7995047556014463054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211940 (n + 1) - A211956 n : ℚ) / 2)

end

end A331872.P7995047556014463054

/-! ## A331872.P18413471504102193434

`A064532(n)+A000196(A094039(n))`
-/

namespace A331872.P18413471504102193434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n + A000196 (A094039 n).toNat

end

end A331872.P18413471504102193434

/-! ## A331872.P3115376809349346442

`A120562(A081857(n)+A000225(n))`
-/

namespace A331872.P3115376809349346442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A081857 n + A000225 n).toNat

end

end A331872.P3115376809349346442

/-!
# A331873: Matula-Goebel numbers of semi-lone-child-avoiding locally disjoint rooted trees.

The programs for A331873, there is no canonical definition to state claims against.
-/

/-! ## A331873.P17558097417165589627

`∩[A331935(n+1), A338331(n+1)]`
-/

namespace A331873.P17558097417165589627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331873.P17558097417165589627

/-! ## A331873.P3691044750826288307

`A331936(n+1)-A185214(A185203(n))`
-/

namespace A331873.P3691044750826288307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1) - A185214 (A185203 n).toNat

end

end A331873.P3691044750826288307

/-! ## A331873.P10612004022342132784

`A131516(A331936(n+1))`
-/

namespace A331873.P10612004022342132784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (A331936 (n + 1)).toNat

end

end A331873.P10612004022342132784

/-! ## A331873.P17071913290252186804

`A331936(A328617(n+1))`
-/

namespace A331873.P17071913290252186804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (A328617 (n + 1)).toNat

end

end A331873.P17071913290252186804

/-! ## A331873.P6238115454969557640

`A331936(A351831(n+2))`
-/

namespace A331873.P6238115454969557640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (A351831 (n + 2)).toNat

end

end A331873.P6238115454969557640

/-!
# A331874: Number of semi-lone-child-avoiding locally disjoint rooted trees with n unlabeled leaves.

The programs for A331874, there is no canonical definition to state claims against.
-/

/-! ## A331874.P17320306917824185298

`A083323(n)+A010210(A002208(n))`
-/

namespace A331874.P17320306917824185298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n + A010210 (A002208 n).toNat

end

end A331874.P17320306917824185298

/-! ## A331874.P1531493490777848224

`A083323(n)+A004736(A302702(n))`
-/

namespace A331874.P1531493490777848224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n + A004736 (A302702 n).toNat

end

end A331874.P1531493490777848224

/-!
# A331875: Number of enriched identity p-trees of weight n.

The programs for A331875, there is no canonical definition to state claims against.
-/

/-! ## A331875.P7351726280664257174

`A054846(A148367(n))`
-/

namespace A331875.P7351726280664257174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A148367 n).toNat

end

end A331875.P7351726280664257174

/-! ## A331875.P8169964859391835360

`A055679(A062107(n+1)+3)`
-/

namespace A331875.P8169964859391835360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A062107 (n + 1) + 3).toNat

end

end A331875.P8169964859391835360

/-! ## A331875.P3464105741148230983

`A023193(floor(sqrt(A089436(n+2))))`
-/

namespace A331875.P3464105741148230983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.sqrt (A089436 (n + 2))).toNat

end

end A331875.P3464105741148230983

/-! ## A331875.P8491941464224648207

`A023193(round(sqrt(A089436(n+2))))`
-/

namespace A331875.P8491941464224648207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (SequenceMachineLib.roundAway (Real.sqrt (A089436 (n + 2) : ℝ))).toNat

end

end A331875.P8491941464224648207

/-! ## A331875.P16279946303120418863

`A003008(n+1)-∑[A035618(n+1)]`
-/

namespace A331875.P16279946303120418863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003008 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331875.P16279946303120418863

/-!
# A331876: Number of primes of the form P(k) = k^2 + k + 41 for k <= 10^n, where P(k) is Euler's prime-generating polynomial A202018.

The programs for A331876, there is no canonical definition to state claims against.
-/

/-! ## A331876.P8171255947551561133

`A228123(n)+1`
-/

namespace A331876.P8171255947551561133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228123 n + 1

end

end A331876.P8171255947551561133

/-! ## A331876.P13154770830041649874

`abs(A008683(A118124(n))-A228123(n))`
-/

namespace A331876.P13154770830041649874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A118124 n).toNat - A228123 n|

end

end A331876.P13154770830041649874

/-! ## A331876.P5930848591393211229

`1-(A000035(A284573(n))-A228123(n))`
-/

namespace A331876.P5930848591393211229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (A284573 n).toNat - A228123 n)

end

end A331876.P5930848591393211229

/-!
# A331878: Number of (non-null) connected induced subgraphs in a right-triangular graph with n vertices on each side.

The programs for A331878, there is no canonical definition to state claims against.
-/

/-! ## A331878.P17949076116926550835

`∑[∑[∑[A268758(n+1)]]]`
-/

namespace A331878.P17949076116926550835
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331878.P17949076116926550835

/-! ## A331878.P13546836077479948717

`∑[∑[∑[A268339(2*(n+1))]]]`
-/

namespace A331878.P13546836077479948717
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268339 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331878.P13546836077479948717

/-!
# A331879: Lexicographically earliest sequence of distinct positive integers such that (last digit of a(n)) < (first digit of a(n+1)).

The programs for A331879, there is no canonical definition to state claims against.
-/

/-! ## A331879.P16327623156009736551

`lcm(n+1, record[A341021(n)])`
-/

namespace A331879.P16327623156009736551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341021 (n + 20)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A331879.P16327623156009736551

/-! ## A331879.P2575060936558595142

`A098755(a(n-1)+1)` with `a(0)=1`
-/

namespace A331879.P2575060936558595142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098755 (a (n - 1) + 1).toNat

end

end A331879.P2575060936558595142

/-! ## A331879.P10409229204361163712

`(n+1)*Δ[A092596(n+1)]`
-/

namespace A331879.P10409229204361163712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A331879.P10409229204361163712

/-! ## A331879.P17533700949147501724

`A320646(a(n-1))²+n+1` with `a(0)=1`
-/

namespace A331879.P17533700949147501724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320646 (a (n - 1)).toNat ^ 2 + (n + 1 : ℤ)

end

end A331879.P17533700949147501724

/-! ## A331879.P301296669291739774

`(n+1)*(n+2)^A172550(n+1)`
-/

namespace A331879.P301296669291739774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (n + 2 : ℚ) ^ (A172550 (n + 1) : ℤ)

end

end A331879.P301296669291739774

/-!
# A331880: Lexicographically earliest sequence of distinct positive integers such that (last digit of a(n)) > (first digit of a(n+1)).

The programs for A331880, there is no canonical definition to state claims against.
-/

/-! ## A331880.P14689737166531876539

`A294069(A187829(n+1)+5)`
-/

namespace A331880.P14689737166531876539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (A187829 (n + 1) + 5).toNat

end

end A331880.P14689737166531876539

/-! ## A331880.P18361668592975224495

`∑{e}[A000079(A294069(n+6)), #]`
-/

namespace A331880.P18361668592975224495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A294069 (n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A331880.P18361668592975224495

/-! ## A331880.P16081493653997912638

`A294069(n+6)%A237639(n+2)`
-/

namespace A331880.P16081493653997912638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294069 (n + 6)) (A237639 (n + 2))

end

end A331880.P16081493653997912638

/-! ## A331880.P6639018558567465949

`A294069(n+6)+A083928(A000124(n))`
-/

namespace A331880.P6639018558567465949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 6) + A083928 (A000124 n).toNat

end

end A331880.P6639018558567465949

/-! ## A331880.P13050557395975243254

`A294069(n+6)^A331570(n)!`
-/

namespace A331880.P13050557395975243254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 6) ^ Nat.factorial (A331570 n).toNat

end

end A331880.P13050557395975243254

/-!
# A331883: The number of permutations in the symmetric group S_n in which it is possible to find two disjoint increasing subsequences each with length equal to the length of the longest increasing subsequence of the permutation.

The programs for A331883, there is no canonical definition to state claims against.
-/

/-! ## A331883.P7797035102355305262

`Δ[A006220(n+1)]-n*A006220(n+1)`
-/

namespace A331883.P7797035102355305262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A006220 (n + 1)

end

end A331883.P7797035102355305262

/-! ## A331883.P17987175685464984568

`A244325(A005651(n))+A107378(n)`
-/

namespace A331883.P17987175685464984568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A005651 n).toNat + A107378 n

end

end A331883.P17987175685464984568

/-! ## A331883.P7826167009687407755

`A033098(n+1)*A352830(A102356(n))`
-/

namespace A331883.P7826167009687407755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033098 (n + 1) * A352830 (A102356 n).toNat

end

end A331883.P7826167009687407755

/-!
# A331884: Number of compositions (ordered partitions) of n^2 into distinct squares.

The programs for A331884, there is no canonical definition to state claims against.
-/

/-! ## A331884.P11646253837398893541

`A331844(A000290(n))`
-/

namespace A331884.P11646253837398893541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 (A000290 n).toNat

end

end A331884.P11646253837398893541

/-! ## A331884.P5150004950371625348

`A331844(n²)`
-/

namespace A331884.P5150004950371625348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 (n ^ 2)

end

end A331884.P5150004950371625348

/-! ## A331884.P12407911765616694809

`xor(1, A331844(n*n))+1`
-/

namespace A331884.P12407911765616694809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A331844 (n * n)) + 1

end

end A331884.P12407911765616694809

/-! ## A331884.P15202261084661000773

`A331844(n^2)%(4^(n+1))`
-/

namespace A331884.P15202261084661000773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331844 (n ^ 2)) (4 ^ (n + 1) : ℤ)

end

end A331884.P15202261084661000773

/-! ## A331884.P794636850129707454

`A003638(A130259(n)+1)*A331844(n*n)`
-/

namespace A331884.P794636850129707454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003638 (A130259 n + 1).toNat * A331844 (n * n)

end

end A331884.P794636850129707454

/-! ## A331884.P18265971996284091358

`A140356(A237706(n+1))*A331844(n*n)`
-/

namespace A331884.P18265971996284091358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (A237706 (n + 1)).toNat * A331844 (n * n)

end

end A331884.P18265971996284091358

/-!
# A331885: Number of partitions of n into parts having a common factor > 1 with n.

The programs for A331885, there is no canonical definition to state claims against.
-/

/-! ## A331885.P11641654299853090639

`A018783(n)+A000089(A006499(n))`
-/

namespace A331885.P11641654299853090639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000089 (A006499 n).toNat

end

end A331885.P11641654299853090639

/-! ## A331885.P350409846104704765

`A202385(A326180(n))+A018783(n)`
-/

namespace A331885.P350409846104704765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202385 ((A326180 n).toNat + 31) + A018783 n

end

end A331885.P350409846104704765

/-! ## A331885.P3748561577785091097

`A328673(n)-A062157(A326180(n))`
-/

namespace A331885.P3748561577785091097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - A062157 (A326180 n).toNat

end

end A331885.P3748561577785091097

/-! ## A331885.P18081084140805460245

`A200976(n)-A324692(A129095(n+1))`
-/

namespace A331885.P18081084140805460245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n - A324692 (A129095 (n + 1)).toNat

end

end A331885.P18081084140805460245

/-! ## A331885.P5950635967884042722

`A200976(n)+A000122(A267245(2*n+5))`
-/

namespace A331885.P5950635967884042722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + A000122 (A267245 (2 * n + 5)).toNat

end

end A331885.P5950635967884042722

/-!
# A331886: T(n, k) is the least positive m such that floor(n/m) = floor(k/m). Square array T(n, k) read by antidiagonals, n >= 0 and k >= 0.

The programs for A331886, there is no canonical definition to state claims against.
-/

/-! ## A331886.P13312350013238886920

`A016366(A168619(n))+A003986(n)`
-/

namespace A331886.P13312350013238886920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016366 (A168619 n).toNat + A003986 n

end

end A331886.P13312350013238886920

/-! ## A331886.P14507052159555993242

`gcd(A034463(A131235(n)), A131830(n))`
-/

namespace A331886.P14507052159555993242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034463 (A131235 n).toNat) (A131830 n)

end

end A331886.P14507052159555993242

/-! ## A331886.P15369673965302330909

`gcd(A002262(A142468(n)), A321126(n))`
-/

namespace A331886.P15369673965302330909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (A142468 n).toNat) (A321126 n)

end

end A331886.P15369673965302330909

/-! ## A331886.P10433655808962556382

`gcd(A001065(A009963(n)), A244580(n+1))`
-/

namespace A331886.P10433655808962556382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (A009963 n).toNat) (A244580 (n + 1))

end

end A331886.P10433655808962556382

/-! ## A331886.P872252435971830479

`A321126(n)/A321125(A321162(2*n+1))`
-/

namespace A331886.P872252435971830479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321126 n : ℚ) / (A321125 (A321162 (2 * n + 1)).toNat : ℚ)

end

end A331886.P872252435971830479

/-!
# A331887: Number of partitions of n into distinct parts having a common factor > 1 with n.

The programs for A331887, there is no canonical definition to state claims against.
-/

/-! ## A331887.P4681369903366870356

`xor(A276791(A318692(n+1)), A318717(n))`
-/

namespace A331887.P4681369903366870356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A276791 (A318692 (n + 1)).toNat) (A318717 n)

end

end A331887.P4681369903366870356

/-! ## A331887.P1727279103151415953

`A124766(A284465(n))+A082024(n)`
-/

namespace A331887.P1727279103151415953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A284465 n).toNat + A082024 n

end

end A331887.P1727279103151415953

/-! ## A331887.P9788326299547408990

`A337599(n)+A124766(A284465(n))`
-/

namespace A331887.P9788326299547408990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 n + A124766 (A284465 n).toNat

end

end A331887.P9788326299547408990

/-! ## A331887.P4068422693518670905

`A318735(A318717(n))%A165202(A061645(n+1))`
-/

namespace A331887.P4068422693518670905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318735 (A318717 n).toNat) (A165202 (A061645 (n + 1)).toNat)

end

end A331887.P4068422693518670905

/-! ## A331887.P16254349596445723959

`A123578(A332003(n)%A069324(n+1))`
-/

namespace A331887.P16254349596445723959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.tmod (A332003 n) (A069324 (n + 1))).toNat

end

end A331887.P16254349596445723959

/-!
# A331889: Table T(n,k) read by upward antidiagonals. T(n,k) is the minimum value of Sum_{i=1..n} Product_{j=1..k} r[(i-1)*k+j] among all permutations r of {1..kn}.

The programs for A331889, there is no canonical definition to state claims against.
-/

/-! ## A331889.P11025994682384411666

`or(A025581(A348273(n+1)), A253139(n+1))`
-/

namespace A331889.P11025994682384411666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 (A348273 (n + 1)).toNat) (A253139 (n + 1))

end

end A331889.P11025994682384411666

/-! ## A331889.P1379072605642166911

`or(A025581(A348273(n+1)), A265392(n+1))`
-/

namespace A331889.P1379072605642166911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 (A348273 (n + 1)).toNat) (A265392 (n + 1))

end

end A331889.P1379072605642166911

/-!
# A331890: a(n) = -a(n-1) - a(n-2) + 2*a(n-3) with a(0)=3, a(1)=-1, a(2)=-1.

The programs for A331890, the canonical program `A331890.P1989084735617251088` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331890 has offset 0).

The definition of A331890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-a(n-2)+2*a(n-3)` (program `A331890.P1989084735617251088`, by `A331890.P1989084735617251088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A331890.P1989084735617251088

`-a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=-1, a(2)=-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A331890

/-- `-a(n-1)-a(n-2)+2*a(n-3)` -/
def P1989084735617251088.Spec : Prop :=
  ∀ n, P1989084735617251088.a n = A331890 n

theorem P1989084735617251088.correct : P1989084735617251088.Spec := by
  intro n
  simp only [A331890]

end A331890

/-! ## A331890.P12725402617210340797

`ogf((3+2x+x^2)/(1+x+x^2-2x^3))`
-/

namespace A331890.P12725402617210340797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 1] [1, 1, 1, -2] n

end

end A331890.P12725402617210340797

namespace A331890

/-- `ogf((3+2x+x^2)/(1+x+x^2-2x^3))` -/
def P12725402617210340797.Spec : Prop :=
  ∀ n, P12725402617210340797.a n = A331890 n

end A331890

/-! ## A331890.P4730147958531333253

`2*a(n-3)-(a(n-1)+a(n-2))` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A331890.P4730147958531333253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n a =>
  2 * a (n - 3) - (a (n - 1) + a (n - 2))

end

end A331890.P4730147958531333253

namespace A331890

/-- `2*a(n-3)-(a(n-1)+a(n-2))` -/
def P4730147958531333253.Spec : Prop :=
  ∀ n, P4730147958531333253.a n = A331890 n

end A331890

/-! ## A331890.P15275589118713176216

`2*a(n-3)-a(n-1)-a(n-2)` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A331890.P15275589118713176216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n a =>
  2 * a (n - 3) - a (n - 1) - a (n - 2)

end

end A331890.P15275589118713176216

namespace A331890

/-- `2*a(n-3)-a(n-1)-a(n-2)` -/
def P15275589118713176216.Spec : Prop :=
  ∀ n, P15275589118713176216.a n = A331890 n

end A331890

/-! ## A331890.P1461217391168750339

`a(n-3)+a(n-3)-(a(n-1)+a(n-2))` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A331890.P1461217391168750339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n a =>
  a (n - 3) + (a (n - 3) - (a (n - 1) + a (n - 2)))

end

end A331890.P1461217391168750339

namespace A331890

/-- `a(n-3)+a(n-3)-(a(n-1)+a(n-2))` -/
def P1461217391168750339.Spec : Prop :=
  ∀ n, P1461217391168750339.a n = A331890 n

end A331890

/-! ## A331890.P15873004091944337544

`a(n-3)-(a(n-1)-a(n-3))-a(n-2)` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A331890.P15873004091944337544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3)) - a (n - 2)

end

end A331890.P15873004091944337544

namespace A331890

/-- `a(n-3)-(a(n-1)-a(n-3))-a(n-2)` -/
def P15873004091944337544.Spec : Prop :=
  ∀ n, P15873004091944337544.a n = A331890 n

end A331890

/-!
# A331891: Negabinary palindromes: nonnegative numbers whose negabinary expansion (A039724) is palindromic.

The programs for A331891, the canonical program `A331891.P10796456041934863719` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331891 has offset 1).

The definition of A331891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331891.P10796456041934863719

`∑[2*A119608(n+1)]-A119608(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A331891

/-- `∑[2*A119608(n+1)]-A119608(n+1)` -/
def P10796456041934863719.Spec : Prop :=
  ∀ n, P10796456041934863719.a n = A331891 (n + 1)

theorem P10796456041934863719.correct : P10796456041934863719.Spec := by
  intro n
  simp only [A331891, Nat.add_sub_cancel]

end A331891

/-! ## A331891.P8509205778593434309

`∑[A053644(n)]-A036044(A109613(n))`
-/

namespace A331891.P8509205778593434309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036044 (A109613 n).toNat

end

end A331891.P8509205778593434309

namespace A331891

/-- `∑[A053644(n)]-A036044(A109613(n))` -/
def P8509205778593434309.Spec : Prop :=
  ∀ n, P8509205778593434309.a n = A331891 (n + 1)

end A331891

/-! ## A331891.P5336530781913798474

`A030101(n)+2*A181497(A004526(n))`
-/

namespace A331891.P5336530781913798474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + 2 * A181497 (A004526 n).toNat

end

end A331891.P5336530781913798474

namespace A331891

/-- `A030101(n)+2*A181497(A004526(n))` -/
def P5336530781913798474.Spec : Prop :=
  ∀ n, P5336530781913798474.a n = A331891 (n + 1)

end A331891

/-! ## A331891.P12678524259762962244

`∑[A119608(n+1)+A119608(A028310(n))]`
-/

namespace A331891.P12678524259762962244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (n + 1) + A119608 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331891.P12678524259762962244

namespace A331891

/-- `∑[A119608(n+1)+A119608(A028310(n))]` -/
def P12678524259762962244.Spec : Prop :=
  ∀ n, P12678524259762962244.a n = A331891 (n + 1)

end A331891

/-! ## A331891.P5603812543661988076

`A005843(∑[A119608(n+1)])-A119608(n+1)`
-/

namespace A331891.P5603812543661988076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A119608 (n + 1)

end

end A331891.P5603812543661988076

namespace A331891

/-- `A005843(∑[A119608(n+1)])-A119608(n+1)` -/
def P5603812543661988076.Spec : Prop :=
  ∀ n, P5603812543661988076.a n = A331891 (n + 1)

end A331891

/-! ## A331891.P9006624361945961757

`eq[1, A178225(A005351(n))]`
-/

namespace A331891.P9006624361945961757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A005351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331891.P9006624361945961757

namespace A331891

/-- `eq[1, A178225(A005351(n))]` -/
def P9006624361945961757.Spec : Prop :=
  ∀ n, (P9006624361945961757.a n : ℤ) = A331891 (n + 1)

end A331891

/-! ## A331891.P17049500011071477029

`record[A093411(n)-A175919(A005351(n))]`
-/

namespace A331891.P17049500011071477029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n - A175919 (A005351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331891.P17049500011071477029

namespace A331891

/-- `record[A093411(n)-A175919(A005351(n))]` -/
def P17049500011071477029.Spec : Prop :=
  ∀ n, P17049500011071477029.a n = A331891 (n + 1)

end A331891

/-! ## A331891.P3590269293896731960

`A110654(A181497(n))+A030101(A004526(n))`
-/

namespace A331891.P3590269293896731960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A181497 n).toNat + A030101 (A004526 n).toNat

end

end A331891.P3590269293896731960

namespace A331891

/-- `A110654(A181497(n))+A030101(A004526(n))` -/
def P3590269293896731960.Spec : Prop :=
  ∀ n, P3590269293896731960.a n = A331891 (n + 1)

end A331891

/-!
# A331892: Positive numbers k such that the negabinary expansion (A039724) of -k is palindromic.

The programs for A331892, the canonical program `A331892.P15573530525776411672` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331892 has offset 1).

The definition of A331892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331892.P15573530525776411672

`A036044(n+1)+∑[A062383(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A331892

/-- `A036044(n+1)+∑[A062383(n)]` -/
def P15573530525776411672.Spec : Prop :=
  ∀ n, P15573530525776411672.a n = A331892 (n + 1)

theorem P15573530525776411672.correct : P15573530525776411672.Spec := by
  intro n
  simp only [A331892, Nat.add_sub_cancel]

end A331892

/-! ## A331892.P9439527091338623119

`∑[A030101(n)+A036044(n+1)+1]`
-/

namespace A331892.P9439527091338623119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (A036044 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331892.P9439527091338623119

namespace A331892

/-- `∑[A030101(n)+A036044(n+1)+1]` -/
def P9439527091338623119.Spec : Prop :=
  ∀ n, P9439527091338623119.a n = A331892 (n + 1)

end A331892

/-! ## A331892.P9508317746021556034

`A239447(n)+∑[A036044(n+1)+1]`
-/

namespace A331892.P9508317746021556034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239447 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331892.P9508317746021556034

namespace A331892

/-- `A239447(n)+∑[A036044(n+1)+1]` -/
def P9508317746021556034.Spec : Prop :=
  ∀ n, P9508317746021556034.a n = A331892 (n + 1)

end A331892

/-! ## A331892.P10600027557331375354

`∑[n+1-(A055945(n)-A036044(n+1))]`
-/

namespace A331892.P10600027557331375354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A055945 n - A036044 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331892.P10600027557331375354

namespace A331892

/-- `∑[n+1-(A055945(n)-A036044(n+1))]` -/
def P10600027557331375354.Spec : Prop :=
  ∀ n, P10600027557331375354.a n = A331892 (n + 1)

end A331892

/-! ## A331892.P16179861257726380580

`∑[A062383(n+1)]-A030101(n+1)`
-/

namespace A331892.P16179861257726380580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A030101 (n + 1)

end

end A331892.P16179861257726380580

namespace A331892

/-- `∑[A062383(n+1)]-A030101(n+1)` -/
def P16179861257726380580.Spec : Prop :=
  ∀ n, P16179861257726380580.a n = A331892 (n + 1)

end A331892

/-! ## A331892.P18149150225076171344

`A036044(n+1)+∑[A053644(2*n+1)]`
-/

namespace A331892.P18149150225076171344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331892.P18149150225076171344

namespace A331892

/-- `A036044(n+1)+∑[A053644(2*n+1)]` -/
def P18149150225076171344.Spec : Prop :=
  ∀ n, P18149150225076171344.a n = A331892 (n + 1)

end A331892

/-! ## A331892.P16700938439587046609

`A307485(A290254(n+2))`
-/

namespace A331892.P16700938439587046609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307485 (A290254 (n + 2)).toNat

end

end A331892.P16700938439587046609

namespace A331892

/-- `A307485(A290254(n+2))` -/
def P16700938439587046609.Spec : Prop :=
  ∀ n, P16700938439587046609.a n = A331892 (n + 1)

end A331892

/-! ## A331892.P6227464317565878290

`A109613(∑[A053644(2*n)])+A036044(n+1)`
-/

namespace A331892.P6227464317565878290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A036044 (n + 1)

end

end A331892.P6227464317565878290

namespace A331892

/-- `A109613(∑[A053644(2*n)])+A036044(n+1)` -/
def P6227464317565878290.Spec : Prop :=
  ∀ n, P6227464317565878290.a n = A331892 (n + 1)

end A331892

/-! ## A331892.P9659894723399245314

`A079954(A035928(n+1))`
-/

namespace A331892.P9659894723399245314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079954 (A035928 (n + 1)).toNat

end

end A331892.P9659894723399245314

namespace A331892

/-- `A079954(A035928(n+1))` -/
def P9659894723399245314.Spec : Prop :=
  ∀ n, P9659894723399245314.a n = A331892 (n + 1)

end A331892

/-!
# A331893: Positive numbers k such that both k and -k are a palindromes in negabinary representation.

The programs for A331893, the canonical program `A331893.P3755749678923990802` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331893 has offset 1).

The definition of A331893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331893.P3755749678923990802

`∩[A331891(n+1), A331892(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331893

/-- `∩[A331891(n+1), A331892(n+1)]` -/
def P3755749678923990802.Spec : Prop :=
  ∀ n, (P3755749678923990802.a n : ℤ) = A331893 (n + 1)

theorem P3755749678923990802.correct : P3755749678923990802.Spec := by
  intro n
  simp only [A331893, Nat.add_sub_cancel]

end A331893

/-! ## A331893.P14854826830344686080

`∩[A326669(n+1), A331891(n+1)]`
-/

namespace A331893.P14854826830344686080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P14854826830344686080

namespace A331893

/-- `∩[A326669(n+1), A331891(n+1)]` -/
def P14854826830344686080.Spec : Prop :=
  ∀ n, (P14854826830344686080.a n : ℤ) = A331893 (n + 1)

end A331893

/-! ## A331893.P2386155152041046974

`∩[A331892(n+1), A320829(n)]`
-/

namespace A331893.P2386155152041046974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P2386155152041046974

namespace A331893

/-- `∩[A331892(n+1), A320829(n)]` -/
def P2386155152041046974.Spec : Prop :=
  ∀ n, (P2386155152041046974.a n : ℤ) = A331893 (n + 1)

end A331893

/-! ## A331893.P12218343859137730896

`∩[A247424(n+1), A331892(n+1)]`
-/

namespace A331893.P12218343859137730896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P12218343859137730896

namespace A331893

/-- `∩[A247424(n+1), A331892(n+1)]` -/
def P12218343859137730896.Spec : Prop :=
  ∀ n, (P12218343859137730896.a n : ℤ) = A331893 (n + 1)

end A331893

/-! ## A331893.P12840353729191312143

`∩[A307485(A290254(n+1)), A320829(n)]`
-/

namespace A331893.P12840353729191312143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307485 (A290254 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P12840353729191312143

namespace A331893

/-- `∩[A307485(A290254(n+1)), A320829(n)]` -/
def P12840353729191312143.Spec : Prop :=
  ∀ n, (P12840353729191312143.a n : ℤ) = A331893 (n + 1)

end A331893

/-!
# A331894: Positive numbers such that both their binary and negabinary representations are palindromic.

The programs for A331894, the canonical program `A331894.P10099918075872049775` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331894 has offset 1).

The definition of A331894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331894.P3309551699869606135

`∩[A006995(n+1), A331891(n+1)]`
-/

namespace A331894.P3309551699869606135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331894.P3309551699869606135

namespace A331894

/-- `∩[A006995(n+1), A331891(n+1)]` -/
def P3309551699869606135.Spec : Prop :=
  ∀ n, (P3309551699869606135.a n : ℤ) = A331894 (n + 1)

end A331894

/-! ## A331894.P10099918075872049775

`∩[A180204(n+1), A331891(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331894

/-- `∩[A180204(n+1), A331891(n+1)]` -/
def P10099918075872049775.Spec : Prop :=
  ∀ n, (P10099918075872049775.a n : ℤ) = A331894 (n + 1)

theorem P10099918075872049775.correct : P10099918075872049775.Spec := by
  intro n
  simp only [A331894, Nat.add_sub_cancel]

end A331894

/-! ## A331894.P2472929275785313855

`∩[A331891(n+1), A334918(n+1)]`
-/

namespace A331894.P2472929275785313855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331894.P2472929275785313855

namespace A331894

/-- `∩[A331891(n+1), A334918(n+1)]` -/
def P2472929275785313855.Spec : Prop :=
  ∀ n, (P2472929275785313855.a n : ℤ) = A331894 (n + 1)

end A331894

/-! ## A331894.P9312320003217131908

`∩[A057890(n+1), A331891(n+1)]`
-/

namespace A331894.P9312320003217131908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331894.P9312320003217131908

namespace A331894

/-- `∩[A057890(n+1), A331891(n+1)]` -/
def P9312320003217131908.Spec : Prop :=
  ∀ n, (P9312320003217131908.a n : ℤ) = A331894 (n + 1)

end A331894

/-! ## A331894.P4583006451352909302

`record[A330717(A331891(n+1))]`
-/

namespace A331894.P4583006451352909302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A331891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331894.P4583006451352909302

namespace A331894

/-- `record[A330717(A331891(n+1))]` -/
def P4583006451352909302.Spec : Prop :=
  ∀ n, P4583006451352909302.a n = A331894 (n + 1)

end A331894

/-!
# A331895: Positive numbers k such that the binary and negabinary representations of k and the negabinary representation of -k are all palindromic.

The programs for A331895, the canonical program `A331895.P11168448018872663609` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331895 has offset 1).

The definition of A331895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331895.P11168448018872663609

`∩[A331893(n+1), A331894(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A331895

/-- `∩[A331893(n+1), A331894(n+1)]` -/
def P11168448018872663609.Spec : Prop :=
  ∀ n, (P11168448018872663609.a n : ℤ) = A331895 (n + 1)

theorem P11168448018872663609.correct : P11168448018872663609.Spec := by
  intro n
  simp only [A331895, Nat.add_sub_cancel]

end A331895

/-! ## A331895.P17148082181447596485

`∩[A048700(n+1), A331893(n+1)]`
-/

namespace A331895.P17148082181447596485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P17148082181447596485

namespace A331895

/-- `∩[A048700(n+1), A331893(n+1)]` -/
def P17148082181447596485.Spec : Prop :=
  ∀ n, (P17148082181447596485.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P3899358011523038435

`∩[A048700(n+1), A331894(n+1)]`
-/

namespace A331895.P3899358011523038435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P3899358011523038435

namespace A331895

/-- `∩[A048700(n+1), A331894(n+1)]` -/
def P3899358011523038435.Spec : Prop :=
  ∀ n, (P3899358011523038435.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P1380989210632691501

`∩[A331892(n+1), A331894(n+1)]`
-/

namespace A331895.P1380989210632691501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P1380989210632691501

namespace A331895

/-- `∩[A331892(n+1), A331894(n+1)]` -/
def P1380989210632691501.Spec : Prop :=
  ∀ n, (P1380989210632691501.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P2563856938256421290

`∩[A048700(n+1), A331891(n+1)]`
-/

namespace A331895.P2563856938256421290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P2563856938256421290

namespace A331895

/-- `∩[A048700(n+1), A331891(n+1)]` -/
def P2563856938256421290.Spec : Prop :=
  ∀ n, (P2563856938256421290.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P9847046551280142365

`∩[A006995(n+1), A331893(n+1)]`
-/

namespace A331895.P9847046551280142365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P9847046551280142365

namespace A331895

/-- `∩[A006995(n+1), A331893(n+1)]` -/
def P9847046551280142365.Spec : Prop :=
  ∀ n, (P9847046551280142365.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P773983931872529454

`∩[A180204(n+1), A331893(n+1)]`
-/

namespace A331895.P773983931872529454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P773983931872529454

namespace A331895

/-- `∩[A180204(n+1), A331893(n+1)]` -/
def P773983931872529454.Spec : Prop :=
  ∀ n, (P773983931872529454.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P790238334260235445

`∩[A044918(n+1), A331893(n+1)]`
-/

namespace A331895.P790238334260235445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P790238334260235445

namespace A331895

/-- `∩[A044918(n+1), A331893(n+1)]` -/
def P790238334260235445.Spec : Prop :=
  ∀ n, (P790238334260235445.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P16166730662704573920

`∩[A162749(A206332(n+1)), A331891(n+1)]`
-/

namespace A331895.P16166730662704573920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162749 (A206332 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P16166730662704573920

namespace A331895

/-- `∩[A162749(A206332(n+1)), A331891(n+1)]` -/
def P16166730662704573920.Spec : Prop :=
  ∀ n, (P16166730662704573920.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P14671419909850060679

`∩[A331893(n+1), A334918(n+1)]`
-/

namespace A331895.P14671419909850060679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P14671419909850060679

namespace A331895

/-- `∩[A331893(n+1), A334918(n+1)]` -/
def P14671419909850060679.Spec : Prop :=
  ∀ n, (P14671419909850060679.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P6855241923832270300

`∩[A057890(n+1), A331893(n+1)]`
-/

namespace A331895.P6855241923832270300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P6855241923832270300

namespace A331895

/-- `∩[A057890(n+1), A331893(n+1)]` -/
def P6855241923832270300.Spec : Prop :=
  ∀ n, (P6855241923832270300.a n : ℤ) = A331895 (n + 1)

end A331895

/-! ## A331895.P8020142628137665187

`∩[A161604(n+1), A331893(n+1)]`
-/

namespace A331895.P8020142628137665187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P8020142628137665187

namespace A331895

/-- `∩[A161604(n+1), A331893(n+1)]` -/
def P8020142628137665187.Spec : Prop :=
  ∀ n, (P8020142628137665187.a n : ℤ) = A331895 (n + 1)

end A331895

/-!
# A331896: Positive numbers all of whose divisors are negabinary palindromes (A331891).

The programs for A331896, there is no canonical definition to state claims against.
-/

/-! ## A331896.P4840840742185664692

`A331891(A062399(n)+2)`
-/

namespace A331896.P4840840742185664692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (A062399 n + 2).toNat

end

end A331896.P4840840742185664692

/-! ## A331896.P17220268350968156974

`A331891(A351870(n)+2)`
-/

namespace A331896.P17220268350968156974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (A351870 n + 2).toNat

end

end A331896.P17220268350968156974

/-! ## A331896.P7101528393198844145

`record[A331891(A331852(n+2))]`
-/

namespace A331896.P7101528393198844145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (A331852 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331896.P7101528393198844145

/-! ## A331896.P14279005484277342109

`∩[A322547(n+1), A331891(n+1)]`
-/

namespace A331896.P14279005484277342109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331896.P14279005484277342109

/-! ## A331896.P6899684264730024613

`A318360(A331899(n+3))*A331891(n+2)`
-/

namespace A331896.P6899684264730024613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A331899 (n + 3)).toNat * A331891 (n + 2)

end

end A331896.P6899684264730024613

/-!
# A331897: Positive numbers all of whose divisors are negabinary palindromes (A331891) with a record number of divisors.

The programs for A331897, there is no canonical definition to state claims against.
-/

/-! ## A331897.P4927005393755673319

`∏[record[A020639(2^n*A002726(n+1)+1)]]`
-/

namespace A331897.P4927005393755673319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 ^ n : ℤ) * A002726 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A331897.P4927005393755673319

/-!
# A331899: Number of compositions (ordered partitions) of n^3 into distinct cubes.

The programs for A331899, there is no canonical definition to state claims against.
-/

/-! ## A331899.P8840875123928775961

`A331845(A000578(n))`
-/

namespace A331899.P8840875123928775961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (A000578 n).toNat

end

end A331899.P8840875123928775961

/-! ## A331899.P16581860709858168620

`A331845(n^3)`
-/

namespace A331899.P16581860709858168620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (n ^ 3)

end

end A331899.P16581860709858168620

/-! ## A331899.P3491564657968032962

`or(1, A331845(n*n²))`
-/

namespace A331899.P3491564657968032962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331845 (n * n ^ 2))

end

end A331899.P3491564657968032962

/-! ## A331899.P1564488711431447976

`A007318(∑[n])*A331845(n*n*n)`
-/

namespace A331899.P1564488711431447976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A331845 (n * (n * n))

end

end A331899.P1564488711431447976

/-! ## A331899.P8850067103185539123

`and(1, A000978(n+1))*A331845(n*n²)`
-/

namespace A331899.P8850067103185539123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000978 (n + 1)) * A331845 (n * n ^ 2)

end

end A331899.P8850067103185539123

