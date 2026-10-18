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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A321201: Irregular triangle T with the nontrivial solutions of 2*e2 + 3*e3 = n, for n >= 2, with nonnegative e2 and e3, ordered as pairs with increasing e2 values.

The programs for A321201, there is no canonical definition to state claims against.
-/

/-! ## A321201.P4092587494560166393

`A181118(n+3)-A002828(A017234(n))`
-/

namespace A321201.P4092587494560166393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 3) - A002828 (A017234 n).toNat

end

end A321201.P4092587494560166393

/-! ## A321201.P15260318357327647645

`A181118(n+3)+A008683(A006203(n+1))`
-/

namespace A321201.P15260318357327647645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 3) + A008683 (A006203 (n + 1)).toNat

end

end A321201.P15260318357327647645

/-! ## A321201.P8235576574093605163

`A181118(n+3)-A001222(A181141(n+1))`
-/

namespace A321201.P8235576574093605163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 3) - A001222 (A181141 (n + 1)).toNat

end

end A321201.P8235576574093605163

/-! ## A321201.P528715503232319443

`A181118(n+3)+A153881(A161831(n+3))`
-/

namespace A321201.P528715503232319443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 3) + A153881 (A161831 (n + 3)).toNat

end

end A321201.P528715503232319443

/-! ## A321201.P4369554175044448821

`A181118(n+3)-A010766(A112355(3*n+4))`
-/

namespace A321201.P4369554175044448821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 3) - A010766 (A112355 (3 * n + 4)).toNat

end

end A321201.P4369554175044448821

/-!
# A321202: Row sums of the irregular triangle A321201.

The programs for A321202, the canonical program `A321202.P14532592162250782064` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321202 has offset 2).

The definition of A321202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321202.P14532592162250782064

`A117905(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321202

/-- `A117905(n)+a(n-2)` -/
def P14532592162250782064.Spec : Prop :=
  ∀ n, P14532592162250782064.a n = A321202 (n + 2)

theorem P14532592162250782064.correct : P14532592162250782064.Spec := by
  intro n
  simp only [A321202, Nat.add_sub_cancel]

end A321202

/-! ## A321202.P6147016150766906832

`∑[A008619(n)-∑[∑[n]]%(n+1)]`
-/

namespace A321202.P6147016150766906832
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321202.P6147016150766906832

namespace A321202

/-- `∑[A008619(n)-∑[∑[n]]%(n+1)]` -/
def P6147016150766906832.Spec : Prop :=
  ∀ n, P6147016150766906832.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P731188174314755108

`A008805(n)-∑[∑[∑[n+1]]%(n+1)]`
-/

namespace A321202.P731188174314755108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A321202.P731188174314755108

namespace A321202

/-- `A008805(n)-∑[∑[∑[n+1]]%(n+1)]` -/
def P731188174314755108.Spec : Prop :=
  ∀ n, P731188174314755108.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P6323170924717092890

`∑[∑[n+1]%(n+2)-A175676(n+1)]`
-/

namespace A321202.P6323170924717092890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2) : ℕ) : ℤ) - A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321202.P6323170924717092890

namespace A321202

/-- `∑[∑[n+1]%(n+2)-A175676(n+1)]` -/
def P6323170924717092890.Spec : Prop :=
  ∀ n, P6323170924717092890.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P12979692410994081030

`∑[A087627(n)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A321202.P12979692410994081030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A087627 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A321202.P12979692410994081030

namespace A321202

/-- `∑[A087627(n)-a(n-1)]-a(n-1)` -/
def P12979692410994081030.Spec : Prop :=
  ∀ n, P12979692410994081030.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P10739816224478571750

`∑[A027656(n)-A175676(n+1)]`
-/

namespace A321202.P10739816224478571750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n - A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321202.P10739816224478571750

namespace A321202

/-- `∑[A027656(n)-A175676(n+1)]` -/
def P10739816224478571750.Spec : Prop :=
  ∀ n, P10739816224478571750.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P13376065300385767477

`∑[A110654(n+1)-A000292(n)%(n+1)]`
-/

namespace A321202.P13376065300385767477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) - Int.tmod (A000292 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321202.P13376065300385767477

namespace A321202

/-- `∑[A110654(n+1)-A000292(n)%(n+1)]` -/
def P13376065300385767477.Spec : Prop :=
  ∀ n, P13376065300385767477.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P4009787088078563848

`A165157(n+2)-A101882(n+2)`
-/

namespace A321202.P4009787088078563848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 2) - A101882 (n + 2)

end

end A321202.P4009787088078563848

namespace A321202

/-- `A165157(n+2)-A101882(n+2)` -/
def P4009787088078563848.Spec : Prop :=
  ∀ n, P4009787088078563848.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P3614598272826539529

`A307018(n+2)+A008731(n)`
-/

namespace A321202.P3614598272826539529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (n + 2) + A008731 n

end

end A321202.P3614598272826539529

namespace A321202

/-- `A307018(n+2)+A008731(n)` -/
def P3614598272826539529.Spec : Prop :=
  ∀ n, P3614598272826539529.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P870028372170349901

`A307018(n+2)+A114209(n+2)`
-/

namespace A321202.P870028372170349901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (n + 2) + A114209 (n + 2)

end

end A321202.P870028372170349901

namespace A321202

/-- `A307018(n+2)+A114209(n+2)` -/
def P870028372170349901.Spec : Prop :=
  ∀ n, P870028372170349901.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P10050594508569309739

`∑[A142150(n+2)-A175676(n+1)]`
-/

namespace A321202.P10050594508569309739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 2) - A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321202.P10050594508569309739

namespace A321202

/-- `∑[A142150(n+2)-A175676(n+1)]` -/
def P10050594508569309739.Spec : Prop :=
  ∀ n, P10050594508569309739.a n = A321202 (n + 2)

end A321202

/-! ## A321202.P9653100020926492351

`A008720(4*A008615(n+1)+n)`
-/

namespace A321202.P9653100020926492351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (4 * A008615 (n + 1) + (n : ℤ)).toNat

end

end A321202.P9653100020926492351

namespace A321202

/-- `A008720(4*A008615(n+1)+n)` -/
def P9653100020926492351.Spec : Prop :=
  ∀ n, P9653100020926492351.a n = A321202 (n + 2)

end A321202

/-!
# A321203: Irregular triangle T giving the coefficients of x^n = x^{2*e2 + 3*e3} of (1 + x^2 + x^3)^n, with the pair of nonnegative numbers [e2, e3] listed in row n of A321201, for n >= 2.

The programs for A321203, there is no canonical definition to state claims against.
-/

/-! ## A321203.P17342915919296790249

`A096827(ceil((n+1)/A074828(n+1))*A024525(n))`
-/

namespace A321203.P17342915919296790249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (⌈(n + 1 : ℚ) / (A074828 (n + 1) : ℚ)⌉ * A024525 n).toNat

end

end A321203.P17342915919296790249

/-! ## A321203.P7058373499229623094

`A096827((n+1)/(A061228(n+1)-(n+1))*A024525(n))`
-/

namespace A321203.P7058373499229623094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A061228 (n + 1) - (n + 1 : ℤ) : ℚ) * (A024525 n : ℚ))).toNat

end

end A321203.P7058373499229623094

/-! ## A321203.P13044702526148540915

`A096827(lcm((n+1)/(A061228(n+1)-(n+1)), A024525(n)))`
-/

namespace A321203.P13044702526148540915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A061228 (n + 1) - (n + 1 : ℤ) : ℚ))) (A024525 n))

end

end A321203.P13044702526148540915

/-!
# A321206: Exponential pseudoperfect numbers (A318100) that are not e-perfect (A054979).

The programs for A321206, there is no canonical definition to state claims against.
-/

/-! ## A321206.P15189774650521042244

`∩[A129575(n+1), A318100(n+1)]`
-/

namespace A321206.P15189774650521042244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321206.P15189774650521042244

/-! ## A321206.P14072876685809848356

`∩[A129575(n+1), A044102(n)]`
-/

namespace A321206.P14072876685809848356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321206.P14072876685809848356

/-! ## A321206.P4760866726684974394

`∩[A129575(n+1), A167632(n)]`
-/

namespace A321206.P4760866726684974394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321206.P4760866726684974394

/-! ## A321206.P5457101496521631241

`filter[A129575(n+1), A366289(#)]`
-/

namespace A321206.P5457101496521631241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A321206.P5457101496521631241

/-! ## A321206.P10249904446583721262

`filter[A129575(n+1), A373991(#)]`
-/

namespace A321206.P10249904446583721262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A321206.P10249904446583721262

/-! ## A321206.P2808628840585402970

`filter[A129575(n+1), A374117(#)]`
-/

namespace A321206.P2808628840585402970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A321206.P2808628840585402970

/-!
# A321207: a(n) = (n*n!)^3.

The programs for A321207, the canonical program `A321207.P2489722621833874456` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321207 has offset 1).

The definition of A321207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)*(n+1)!)^3` (program `A321207.P2489722621833874456`, by `A321207.P2489722621833874456.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321207.P2489722621833874456

`((n+1)*(n+1)!)^3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321207

/-- `((n+1)*(n+1)!)^3` -/
def P2489722621833874456.Spec : Prop :=
  ∀ n, (P2489722621833874456.a n : ℤ) = A321207 (n + 1)

theorem P2489722621833874456.correct : P2489722621833874456.Spec := by
  intro n
  simp only [A321207, Nat.add_sub_cancel]

end A321207

/-! ## A321207.P10773914975210443862

`A001563(n+1)^3`
-/

namespace A321207.P10773914975210443862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) ^ 3

end

end A321207.P10773914975210443862

namespace A321207

/-- `A001563(n+1)^3` -/
def P10773914975210443862.Spec : Prop :=
  ∀ n, P10773914975210443862.a n = A321207 (n + 1)

end A321207

/-! ## A321207.P10159127678676976812

`Δ[(n+1)!]^3`
-/

namespace A321207.P10159127678676976812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3

end

end A321207.P10159127678676976812

namespace A321207

/-- `Δ[(n+1)!]^3` -/
def P10159127678676976812.Spec : Prop :=
  ∀ n, P10159127678676976812.a n = A321207 (n + 1)

theorem P10159127678676976812.correct : P10159127678676976812.Spec := by
  intro n
  simp only [A321207, Nat.add_sub_cancel, A321207.P10159127678676976812.f1, A321207.P10159127678676976812.a, A321207.P2489722621833874456.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A321207

/-! ## A321207.P5437725528911400256

`Δ[∏[n+1]]^3`
-/

namespace A321207.P5437725528911400256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3

end

end A321207.P5437725528911400256

namespace A321207

/-- `Δ[∏[n+1]]^3` -/
def P5437725528911400256.Spec : Prop :=
  ∀ n, P5437725528911400256.a n = A321207 (n + 1)

theorem P5437725528911400256.correct : P5437725528911400256.Spec := by
  intro n
  simp only [A321207, Nat.add_sub_cancel, A321207.P5437725528911400256.f2, A321207.P5437725528911400256.f1, A321207.P5437725528911400256.a, A321207.P2489722621833874456.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A321207

/-! ## A321207.P13604457679571591170

`root((n+1)*(n+1)!, 1/3)`
-/

namespace A321207.P13604457679571591170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A321207.P13604457679571591170

namespace A321207

/-- `root((n+1)*(n+1)!, 1/3)` -/
def P13604457679571591170.Spec : Prop :=
  ∀ n, P13604457679571591170.a n = (A321207 (n + 1) : ℝ)

theorem P13604457679571591170.correct : P13604457679571591170.Spec := by
  intro n
  simp only [A321207, Nat.add_sub_cancel, A321207.P13604457679571591170.a, A321207.P2489722621833874456.a, SequenceMachineLib.memo_apply]
  try simp

end A321207

/-!
# A321208: a(n) = [x^(n*(n+1)*(2*n+1)/6)] Product_{k=1..n} Sum_{m>=0} x^(k*m^2).

The programs for A321208, there is no canonical definition to state claims against.
-/

/-! ## A321208.P3297032900959405492

`A179772(ceil((n-1)*(2*a(n-1)+3*a(n-2))/(n+1)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A321208.P3297032900959405492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A179772 ⌈((n : ℤ) - 1 : ℚ) * ((2 * a (n - 1) + 3 * a (n - 2) : ℚ) / (n + 1 : ℚ))⌉.toNat

end

end A321208.P3297032900959405492

/-! ## A321208.P6607645000319071139

`A358638(A148997(n))`
-/

namespace A321208.P6607645000319071139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A148997 n).toNat

end

end A321208.P6607645000319071139

/-! ## A321208.P14203742310068642764

`A088980(A321048(n+2))`
-/

namespace A321208.P14203742310068642764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088980 (A321048 (n + 2)).toNat

end

end A321208.P14203742310068642764

/-!
# A321211: Let S be the sequence of integer sets defined by these rules: S(1) = {1}, and for any n > 1, S(n) = {n} U S(pi(n)) U S(n - pi(n)) (where X U Y denotes the union of the sets X and Y and pi is the prime counting function); a(n) = the number of elements of S(n).

The programs for A321211, there is no canonical definition to state claims against.
-/

/-! ## A321211.P6230456994644552911

`A081604(A207380(n))-A064873(n)`
-/

namespace A321211.P6230456994644552911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A207380 n).toNat - A064873 n

end

end A321211.P6230456994644552911

/-! ## A321211.P4989858974417842240

`A134021(∑[A005428(n)]*A043529(n))`
-/

namespace A321211.P4989858974417842240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 ((∑ j ∈ Finset.range (n + 1), f1 j) * A043529 n).toNat

end

end A321211.P4989858974417842240

/-! ## A321211.P9193476796817704167

`A003056(3*n+4)-A326976(A044824(n+1))`
-/

namespace A321211.P9193476796817704167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (3 * n + 4) - A326976 (A044824 (n + 1)).toNat

end

end A321211.P9193476796817704167

/-! ## A321211.P15084113422554237040

`A084556(A000079(n))-A025431(n)`
-/

namespace A321211.P15084113422554237040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A000079 n).toNat - A025431 n

end

end A321211.P15084113422554237040

/-!
# A321212: Numbers that are congruent to {2, 3} mod 16.

The programs for A321212, the canonical program `A321212.P7524854719207607179` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321212 has offset 1).

The definition of A321212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321212.P7524854719207607179

`a(n-2)+16` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321212

/-- `a(n-2)+16` -/
def P7524854719207607179.Spec : Prop :=
  ∀ n, (P7524854719207607179.a n : ℤ) = A321212 (n + 1)

theorem P7524854719207607179.correct : P7524854719207607179.Spec := by
  intro n
  simp only [A321212, Nat.add_sub_cancel]

end A321212

/-! ## A321212.P11107104877284801784

`(16*(n+1)-7*(-1)^(n+1)-19)/2`
-/

namespace A321212.P11107104877284801784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * (n + 1) : ℤ) - 7 * (-1) ^ (n + 1) - 19 : ℚ) / 2

end

end A321212.P11107104877284801784

namespace A321212

/-- `(16*(n+1)-7*(-1)^(n+1)-19)/2` -/
def P11107104877284801784.Spec : Prop :=
  ∀ n, P11107104877284801784.a n = (A321212 (n + 1) : ℚ)

theorem P11107104877284801784.correct : P11107104877284801784.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A321212, Nat.add_sub_cancel, A321212.P11107104877284801784.a, A321212.P7524854719207607179.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A321212, Nat.add_sub_cancel, A321212.P11107104877284801784.a, A321212.P7524854719207607179.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A321212

/-! ## A321212.P5503091188360812460

`A151977(n+1)+2`
-/

namespace A321212.P5503091188360812460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1) + 2

end

end A321212.P5503091188360812460

namespace A321212

/-- `A151977(n+1)+2` -/
def P5503091188360812460.Spec : Prop :=
  ∀ n, P5503091188360812460.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P545769412973503517

`record[or(14, n)-12]`
-/

namespace A321212.P545769412973503517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 14 n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321212.P545769412973503517

namespace A321212

/-- `record[or(14, n)-12]` -/
def P545769412973503517.Spec : Prop :=
  ∀ n, P545769412973503517.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P2810245172021494412

`record[xor(14, n)-12]`
-/

namespace A321212.P2810245172021494412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 14 n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321212.P2810245172021494412

namespace A321212

/-- `record[xor(14, n)-12]` -/
def P2810245172021494412.Spec : Prop :=
  ∀ n, P2810245172021494412.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P4657793982610899289

`record[xor(12, or(14, n))]`
-/

namespace A321212.P4657793982610899289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 12 (Nat.lor 14 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321212.P4657793982610899289

namespace A321212

/-- `record[xor(12, or(14, n))]` -/
def P4657793982610899289.Spec : Prop :=
  ∀ n, (P4657793982610899289.a n : ℤ) = A321212 (n + 1)

end A321212

/-! ## A321212.P529705320834550278

`xor(12, record[xor(14, n)])`
-/

namespace A321212.P529705320834550278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 14 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 12 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A321212.P529705320834550278

namespace A321212

/-- `xor(12, record[xor(14, n)])` -/
def P529705320834550278.Spec : Prop :=
  ∀ n, (P529705320834550278.a n : ℤ) = A321212 (n + 1)

end A321212

/-! ## A321212.P17790967993020579319

`record[and(n, -15)+2]`
-/

namespace A321212.P17790967993020579319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-15) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321212.P17790967993020579319

namespace A321212

/-- `record[and(n, -15)+2]` -/
def P17790967993020579319.Spec : Prop :=
  ∀ n, P17790967993020579319.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P15938757629181609931

`record[or(2, and(n, -13))]`
-/

namespace A321212.P15938757629181609931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.land (n : ℤ) (-13))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321212.P15938757629181609931

namespace A321212

/-- `record[or(2, and(n, -13))]` -/
def P15938757629181609931.Spec : Prop :=
  ∀ n, P15938757629181609931.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P10223898151548216944

`∑[16-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A321212.P10223898151548216944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  16 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321212.P10223898151548216944

namespace A321212

/-- `∑[16-a(n-1)]` -/
def P10223898151548216944.Spec : Prop :=
  ∀ n, P10223898151548216944.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P2874851056660732287

`ceil(A151983(n+1)/2)+2`
-/

namespace A321212.P2874851056660732287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151983 (n + 1) : ℚ) / 2⌉ + 2

end

end A321212.P2874851056660732287

namespace A321212

/-- `ceil(A151983(n+1)/2)+2` -/
def P2874851056660732287.Spec : Prop :=
  ∀ n, P2874851056660732287.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P18315290880235808343

`2*A090570(n+1)-(n-2)`
-/

namespace A321212.P18315290880235808343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090570 (n + 1) - ((n : ℤ) - 2)

end

end A321212.P18315290880235808343

namespace A321212

/-- `2*A090570(n+1)-(n-2)` -/
def P18315290880235808343.Spec : Prop :=
  ∀ n, P18315290880235808343.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P6287302575729593341

`A017089(n)-A010678(n)`
-/

namespace A321212.P6287302575729593341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n - A010678 n

end

end A321212.P6287302575729593341

namespace A321212

/-- `A017089(n)-A010678(n)` -/
def P6287302575729593341.Spec : Prop :=
  ∀ n, P6287302575729593341.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P13490564275119370811

`A017101(n)-A010689(n)`
-/

namespace A321212.P13490564275119370811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - A010689 n

end

end A321212.P13490564275119370811

namespace A321212

/-- `A017101(n)-A010689(n)` -/
def P13490564275119370811.Spec : Prop :=
  ∀ n, P13490564275119370811.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P15163564348256301094

`A017113(n)-A010699(n)`
-/

namespace A321212.P15163564348256301094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n - A010699 n

end

end A321212.P15163564348256301094

namespace A321212

/-- `A017113(n)-A010699(n)` -/
def P15163564348256301094.Spec : Prop :=
  ∀ n, P15163564348256301094.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P18270481429325877631

`A173512(n)-A010700(n)`
-/

namespace A321212.P18270481429325877631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173512 n - A010700 n

end

end A321212.P18270481429325877631

namespace A321212

/-- `A173512(n)-A010700(n)` -/
def P18270481429325877631.Spec : Prop :=
  ∀ n, P18270481429325877631.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P6334703164391990104

`xor(A010708(n), A017077(n))`
-/

namespace A321212.P6334703164391990104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010708 n) (A017077 n)

end

end A321212.P6334703164391990104

namespace A321212

/-- `xor(A010708(n), A017077(n))` -/
def P6334703164391990104.Spec : Prop :=
  ∀ n, P6334703164391990104.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P2933865538683372691

`A146510(n+1)+A097065(n)`
-/

namespace A321212.P2933865538683372691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146510 (n + 1) + A097065 n

end

end A321212.P2933865538683372691

namespace A321212

/-- `A146510(n+1)+A097065(n)` -/
def P2933865538683372691.Spec : Prop :=
  ∀ n, P2933865538683372691.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P5362539412069833081

`A181390(n+1)+A072988(n)`
-/

namespace A321212.P5362539412069833081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (n + 1) + A072988 n

end

end A321212.P5362539412069833081

namespace A321212

/-- `A181390(n+1)+A072988(n)` -/
def P5362539412069833081.Spec : Prop :=
  ∀ n, P5362539412069833081.a n = A321212 (n + 1)

end A321212

/-! ## A321212.P15090339106624502632

`A146509(n+1)+A114285(n)`
-/

namespace A321212.P15090339106624502632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) + A114285 n

end

end A321212.P15090339106624502632

namespace A321212

/-- `A146509(n+1)+A114285(n)` -/
def P15090339106624502632.Spec : Prop :=
  ∀ n, P15090339106624502632.a n = A321212 (n + 1)

end A321212

/-!
# A321213: a(n) is the number of divisors of n-th Fermat number (A000215).

The programs for A321213, there is no canonical definition to state claims against.
-/

/-! ## A321213.P4482305797742526342

`2^A046052(n)`
-/

namespace A321213.P4482305797742526342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046052 n : ℤ)

end

end A321213.P4482305797742526342

/-! ## A321213.P266767610546181562

`∏[gcd(2, ∑{digits}[Δ[n^n], #]²)]`
-/

namespace A321213.P266767610546181562
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321213.P266767610546181562

/-! ## A321213.P4035373619903188138

`2^(round(sqrt(n/2+2*a(n-1)))-1)` with `a(0)=2`
-/

namespace A321213.P4035373619903188138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) / 2 + 2 * a (n - 1) : ℝ)) - 1 : ℤ)

end

end A321213.P4035373619903188138

/-! ## A321213.P16606752399625287522

`∑{e}[C(n+2, 3)²+1, #]!*a(n-1)` with `a(0)=2`
-/

namespace A321213.P16606752399625287522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * a (n - 1)

end

end A321213.P16606752399625287522

/-! ## A321213.P125708996410076010

`∏[char[∏{p}[n+1, -#]-1]+∑{digits}[n, 10^#]%9]`
-/

namespace A321213.P125708996410076010
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => 10 ^ x).sum % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321213.P125708996410076010

/-!
# A321217: Genocchi irregular primes.

The programs for A321217, there is no canonical definition to state claims against.
-/

/-! ## A321217.P2190424048258385036

`∪[A000928(n+1), A268923(n+1)]`
-/

namespace A321217.P2190424048258385036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321217.P2190424048258385036

/-! ## A321217.P13425367162476346584

`record[A138139(A138381(n+2))]`
-/

namespace A321217.P13425367162476346584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138139 (A138381 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321217.P13425367162476346584

/-!
# A321220: a(n) = n+2 if n is even, otherwise a(n) = 2*n+1 if n is odd.

The programs for A321220, the canonical program `A321220.P7954500693836882055` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321220 has offset 0).

The definition of A321220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321220.P7954500693836882055

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321220

/-- `2*a(n-2)-a(n-4)` -/
def P7954500693836882055.Spec : Prop :=
  ∀ n, P7954500693836882055.a n = A321220 n

theorem P7954500693836882055.correct : P7954500693836882055.Spec := by
  intro n
  simp only [A321220]

end A321220

/-! ## A321220.P13418498093455972221

`A043547(n+1)+1`
-/

namespace A321220.P13418498093455972221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (n + 1) + 1

end

end A321220.P13418498093455972221

namespace A321220

/-- `A043547(n+1)+1` -/
def P13418498093455972221.Spec : Prop :=
  ∀ n, P13418498093455972221.a n = A321220 n

end A321220

/-! ## A321220.P6066019851195804976

`lcm(2, n)+gcd(2, n)`
-/

namespace A321220.P6066019851195804976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + Nat.gcd 2 n

end

end A321220.P6066019851195804976

namespace A321220

/-- `lcm(2, n)+gcd(2, n)` -/
def P6066019851195804976.Spec : Prop :=
  ∀ n, (P6066019851195804976.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P127274330945194345

`n^(n%2)+1+n`
-/

namespace A321220.P127274330945194345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) + 1 + n

end

end A321220.P127274330945194345

namespace A321220

/-- `n^(n%2)+1+n` -/
def P127274330945194345.Spec : Prop :=
  ∀ n, (P127274330945194345.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P6873367164745299815

`n^and(1, n)+1+n`
-/

namespace A321220.P6873367164745299815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n + 1 + n

end

end A321220.P6873367164745299815

namespace A321220

/-- `n^and(1, n)+1+n` -/
def P6873367164745299815.Spec : Prop :=
  ∀ n, (P6873367164745299815.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P11516912376096395281

`C(n, and(1, n))+1+n`
-/

namespace A321220.P11516912376096395281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n) + 1 + n

end

end A321220.P11516912376096395281

namespace A321220

/-- `C(n, and(1, n))+1+n` -/
def P11516912376096395281.Spec : Prop :=
  ∀ n, (P11516912376096395281.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P4467027055169934172

`xor(1, a(n-2)+3)` with `a(0)=2, a(1)=3`
-/

namespace A321220.P4467027055169934172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.xor 1 (a (n - 2) + 3)

end

end A321220.P4467027055169934172

namespace A321220

/-- `xor(1, a(n-2)+3)` -/
def P4467027055169934172.Spec : Prop :=
  ∀ n, (P4467027055169934172.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P1570607131292743545

`C(n, n²%2)+n+1`
-/

namespace A321220.P1570607131292743545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2 % 2) + (n + 1)

end

end A321220.P1570607131292743545

namespace A321220

/-- `C(n, n²%2)+n+1` -/
def P1570607131292743545.Spec : Prop :=
  ∀ n, (P1570607131292743545.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P15428677278269268659

`gcd(n², or(1, n))+n+1`
-/

namespace A321220.P15428677278269268659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (Nat.lor 1 n) + (n + 1)

end

end A321220.P15428677278269268659

namespace A321220

/-- `gcd(n², or(1, n))+n+1` -/
def P15428677278269268659.Spec : Prop :=
  ∀ n, (P15428677278269268659.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P312021062066631053

`3-xor(1, -a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A321220.P312021062066631053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 - Int.xor 1 (-a (n - 2))

end

end A321220.P312021062066631053

namespace A321220

/-- `3-xor(1, -a(n-2))` -/
def P312021062066631053.Spec : Prop :=
  ∀ n, P312021062066631053.a n = A321220 n

end A321220

/-! ## A321220.P11218707571685323763

`(n-1)*and(1, n)+2+n`
-/

namespace A321220.P11218707571685323763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ) + 2 + (n : ℤ)

end

end A321220.P11218707571685323763

namespace A321220

/-- `(n-1)*and(1, n)+2+n` -/
def P11218707571685323763.Spec : Prop :=
  ∀ n, P11218707571685323763.a n = A321220 n

end A321220

/-! ## A321220.P6191062508339605305

`xor(1, n)%(n+1)+n+2`
-/

namespace A321220.P6191062508339605305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % (n + 1) + (n + 2)

end

end A321220.P6191062508339605305

namespace A321220

/-- `xor(1, n)%(n+1)+n+2` -/
def P6191062508339605305.Spec : Prop :=
  ∀ n, (P6191062508339605305.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P15512691650322362392

`lcm(1-n, and(1, n))+n+2`
-/

namespace A321220.P15512691650322362392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (Nat.land 1 n : ℤ) + (n + 2)

end

end A321220.P15512691650322362392

namespace A321220

/-- `lcm(1-n, and(1, n))+n+2` -/
def P15512691650322362392.Spec : Prop :=
  ∀ n, (P15512691650322362392.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P2325498759660070239

`Δ[n²-floor((n-1)/2)²]`
-/

namespace A321220.P2325498759660070239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊((n : ℤ) - 1 : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321220.P2325498759660070239

namespace A321220

/-- `Δ[n²-floor((n-1)/2)²]` -/
def P2325498759660070239.Spec : Prop :=
  ∀ n, P2325498759660070239.a n = A321220 n

end A321220

/-! ## A321220.P14543356489577456140

`C(n, Δ[floor(n/2)])+n+1`
-/

namespace A321220.P14543356489577456140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (f1 (n + 1) - f1 n).toNat + (n + 1)

end

end A321220.P14543356489577456140

namespace A321220

/-- `C(n, Δ[floor(n/2)])+n+1` -/
def P14543356489577456140.Spec : Prop :=
  ∀ n, (P14543356489577456140.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P8967129023936394919

`3-(n-1)*or(n+1, -2)`
-/

namespace A321220.P8967129023936394919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n : ℤ) - 1) * Int.lor (n + 1 : ℤ) (-2)

end

end A321220.P8967129023936394919

namespace A321220

/-- `3-(n-1)*or(n+1, -2)` -/
def P8967129023936394919.Spec : Prop :=
  ∀ n, P8967129023936394919.a n = A321220 n

end A321220

/-! ## A321220.P1911817892555471455

`n^val(n²+1, 2)+n+1`
-/

namespace A321220.P1911817892555471455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n ^ 2 + 1) 2 + (n + 1)

end

end A321220.P1911817892555471455

namespace A321220

/-- `n^val(n²+1, 2)+n+1` -/
def P1911817892555471455.Spec : Prop :=
  ∀ n, (P1911817892555471455.a n : ℤ) = A321220 n

end A321220

/-! ## A321220.P7272369000310025715

`and(n-1, -and(1, n))+n+2`
-/

namespace A321220.P7272369000310025715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-(Nat.land 1 n : ℤ)) + (n + 2 : ℤ)

end

end A321220.P7272369000310025715

namespace A321220

/-- `and(n-1, -and(1, n))+n+2` -/
def P7272369000310025715.Spec : Prop :=
  ∀ n, P7272369000310025715.a n = A321220 n

end A321220

/-! ## A321220.P17793655739708894612

`and(n, -2*and(1, n))+n+2`
-/

namespace A321220.P17793655739708894612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * Nat.land 1 n : ℤ)) + (n + 2 : ℤ)

end

end A321220.P17793655739708894612

namespace A321220

/-- `and(n, -2*and(1, n))+n+2` -/
def P17793655739708894612.Spec : Prop :=
  ∀ n, P17793655739708894612.a n = A321220 n

end A321220

/-!
# A321221: Numbers of the form 6n-2 which are not a sum of two numbers that are the lesser of twin primes.

The programs for A321221, there is no canonical definition to state claims against.
-/

/-! ## A321221.P17002815048893347085

`6*A243956(n+1)-2`
-/

namespace A321221.P17002815048893347085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A243956 (n + 1) - 2

end

end A321221.P17002815048893347085

/-! ## A321221.P4802942492850833098

`A007534(A308012(n+2))`
-/

namespace A321221.P4802942492850833098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007534 (A308012 (n + 2)).toNat

end

end A321221.P4802942492850833098

/-! ## A321221.P10620563708191591198

`A007534(record[A249693(n)+1])`
-/

namespace A321221.P10620563708191591198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007534 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321221.P10620563708191591198

/-! ## A321221.P4790169022108898870

`A004279(A072254(n+1))+2`
-/

namespace A321221.P4790169022108898870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 (A072254 (n + 1)).toNat + 2

end

end A321221.P4790169022108898870

/-! ## A321221.P13518280445808727866

`A016957(A243956(n+1)-1)`
-/

namespace A321221.P13518280445808727866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A243956 (n + 1) - 1).toNat

end

end A321221.P13518280445808727866

/-!
# A321222: a(n) = Sum_{d|n} mu(d)*d^n.

The programs for A321222, there is no canonical definition to state claims against.
-/

/-! ## A321222.P15136676356260392848

`∏{p}[n+1, 1-#^(n+1)]`
-/

namespace A321222.P15136676356260392848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p ^ (n + 1) : ℤ))

end

end A321222.P15136676356260392848

/-! ## A321222.P6193792024968668588

`∑{d}[n+1, #^(n+1)*A008683(#)]`
-/

namespace A321222.P6193792024968668588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ (n + 1) : ℤ) * A008683 d

end

end A321222.P6193792024968668588

/-! ## A321222.P7463144825237847787

`A322324(2*(n+1)²)`
-/

namespace A321222.P7463144825237847787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322324 (2 * (n + 1) ^ 2)

end

end A321222.P7463144825237847787

/-!
# A321223: a(n) is the number of recursively self-conjugate partitions of n.

The programs for A321223, there is no canonical definition to state claims against.
-/

/-! ## A321223.P4882047470798350896

`A010060(A040758(n)+A011379(n))`
-/

namespace A321223.P4882047470798350896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A040758 n + A011379 n).toNat

end

end A321223.P4882047470798350896

/-! ## A321223.P10942626134352172788

`A316345(A294156(n+1)+A255056(n))`
-/

namespace A321223.P10942626134352172788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A294156 (n + 1) + A255056 n).toNat

end

end A321223.P10942626134352172788

/-! ## A321223.P15795778348596693924

`A079978(A283002(2*n+1)*A329567(n))`
-/

namespace A321223.P15795778348596693924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A283002 (2 * n + 1) * A329567 n).toNat

end

end A321223.P15795778348596693924

/-! ## A321223.P8748634757267398428

`A209198(A271154(n))`
-/

namespace A321223.P8748634757267398428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209198 (A271154 n).toNat

end

end A321223.P8748634757267398428

/-! ## A321223.P8487891071749590017

`A010060(Δ[Δ[A185224(3*n+4)]])`
-/

namespace A321223.P8487891071749590017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (n + 1) - f1 n).toNat

end

end A321223.P8487891071749590017

/-!
# A321225: Break the infinite word 1232112321... into chunks so that the sum of the digits in the n-th chunk is n.

The programs for A321225, there is no canonical definition to state claims against.
-/

/-! ## A321225.P12012647937268006849

`A261300(A261201(n+1)-A261349(n))`
-/

namespace A321225.P12012647937268006849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A261201 (n + 1) - A261349 n).toNat

end

end A321225.P12012647937268006849

/-!
# A321227: Number of connected multiset partitions with multiset density -1 of strongly normal multisets of size n.

The programs for A321227, there is no canonical definition to state claims against.
-/

/-! ## A321227.P9924434338700635285

`A356348((1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*A225204(n))`
-/

namespace A321227.P9924434338700635285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356348 (SequenceMachineLib.roundAway ((1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * (A225204 n : ℚ))).toNat

end

end A321227.P9924434338700635285

/-! ## A321227.P12886557045299150100

`A134024(n)+A004788(A149407(n))`
-/

namespace A321227.P12886557045299150100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n + A004788 (A149407 n).toNat

end

end A321227.P12886557045299150100

/-! ## A321227.P9264228292235407967

`A238005(A163859(n)+A053808(n))`
-/

namespace A321227.P9264228292235407967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A163859 n + A053808 n).toNat

end

end A321227.P9264228292235407967

/-!
# A321228: Number of non-isomorphic hypertrees of weight n with singletons.

The programs for A321228, there is no canonical definition to state claims against.
-/

/-! ## A321228.P13363351679510999439

`A321256(C(n, 2)+1)`
-/

namespace A321228.P13363351679510999439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321256 (Nat.choose n 2 + 1)

end

end A321228.P13363351679510999439

/-! ## A321228.P9280379765334540336

`A321256(∑[abs(1-n)])`
-/

namespace A321228.P9280379765334540336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321256 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321228.P9280379765334540336

/-! ## A321228.P14766856575050616807

`A321256(A152947(n+1))+A025469(n)`
-/

namespace A321228.P14766856575050616807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321256 (A152947 (n + 1)).toNat + A025469 n

end

end A321228.P14766856575050616807

/-! ## A321228.P2154843484347499813

`or(A171386(n+1), A321256(A152947(n+1)))`
-/

namespace A321228.P2154843484347499813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171386 (n + 1)) (A321256 (A152947 (n + 1)).toNat)

end

end A321228.P2154843484347499813

/-! ## A321228.P10755208251086659022

`A321256(A152947(n+1))+n*A000007(n)`
-/

namespace A321228.P10755208251086659022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321256 (A152947 (n + 1)).toNat + (n : ℤ) * A000007 n

end

end A321228.P10755208251086659022

/-!
# A321229: Number of non-isomorphic connected weight-n multiset partitions with multiset density -1.

The programs for A321229, there is no canonical definition to state claims against.
-/

/-! ## A321229.P8441328416049610789

`A321254(C(n, 2)+1)`
-/

namespace A321229.P8441328416049610789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321254 (Nat.choose n 2 + 1)

end

end A321229.P8441328416049610789

/-! ## A321229.P1179553475304720162

`A321254(∑[abs(1-n)])`
-/

namespace A321229.P1179553475304720162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321229.P1179553475304720162

/-! ## A321229.P13869842851708801385

`A321254(A152947(n+1))^ceil(sin(n)²)`
-/

namespace A321229.P13869842851708801385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321254 (A152947 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A321229.P13869842851708801385

/-! ## A321229.P2817362520519639931

`A321254(A152947(n+1))+A185238(n)`
-/

namespace A321229.P2817362520519639931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321254 (A152947 (n + 1)).toNat + A185238 n

end

end A321229.P2817362520519639931

/-! ## A321229.P4785125488826238680

`A321254(A152947(n+1))%A001551(n)`
-/

namespace A321229.P4785125488826238680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321254 (A152947 (n + 1)).toNat) (A001551 n)

end

end A321229.P4785125488826238680

/-!
# A321230: Number of set partitions of [n^2] into n n-element subsets having the same sum.

The programs for A321230, there is no canonical definition to state claims against.
-/

/-! ## A321230.P2761270595679658428

`A203986(∑[4*n])`
-/

namespace A321230.P2761270595679658428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321230.P2761270595679658428

/-! ## A321230.P2032724253086697318

`A203986(A046092(n))^floor(n^(1/5))`
-/

namespace A321230.P2032724253086697318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203986 (A046092 n).toNat : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℤ)

end

end A321230.P2032724253086697318

/-!
# A321232: Length of n-th term of A321225.

The programs for A321232, the canonical program `A321232.P1732538474162067595` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321232 has offset 1).

The definition of A321232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321232.P1732538474162067595

`a(n-9)+5` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2, a(5)=4, a(6)=4, a(7)=4, a(8)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321232

/-- `a(n-9)+5` -/
def P1732538474162067595.Spec : Prop :=
  ∀ n, (P1732538474162067595.a n : ℤ) = A321232 (n + 1)

theorem P1732538474162067595.correct : P1732538474162067595.Spec := by
  intro n
  simp only [A321232, Nat.add_sub_cancel]

end A321232

/-! ## A321232.P15358577282272972561

`Δ[round(5/9*∑[n])]`
-/

namespace A321232.P15358577282272972561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℚ) / 9 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321232.P15358577282272972561

namespace A321232

/-- `Δ[round(5/9*∑[n])]` -/
def P15358577282272972561.Spec : Prop :=
  ∀ n, P15358577282272972561.a n = A321232 (n + 1)

end A321232

/-! ## A321232.P5969983823618202419

`A004523(n)+2-(A008618(n+2)+A008618(n+7))`
-/

namespace A321232.P5969983823618202419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n + 2 - (A008618 (n + 2) + A008618 (n + 7))

end

end A321232.P5969983823618202419

namespace A321232

/-- `A004523(n)+2-(A008618(n+2)+A008618(n+7))` -/
def P5969983823618202419.Spec : Prop :=
  ∀ n, P5969983823618202419.a n = A321232 (n + 1)

end A321232

/-! ## A321232.P2281654829584872820

`Δ[A262397(2*n+1)]-A002264(n+2)`
-/

namespace A321232.P2281654829584872820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262397 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002264 (n + 2)

end

end A321232.P2281654829584872820

namespace A321232

/-- `Δ[A262397(2*n+1)]-A002264(n+2)` -/
def P2281654829584872820.Spec : Prop :=
  ∀ n, P2281654829584872820.a n = A321232 (n + 1)

end A321232

/-! ## A321232.P16656145071951325233

`A103221(A078309(n+1)-A133293(n+1))`
-/

namespace A321232.P16656145071951325233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A078309 (n + 1) - A133293 (n + 1)).toNat

end

end A321232.P16656145071951325233

namespace A321232

/-- `A103221(A078309(n+1)-A133293(n+1))` -/
def P16656145071951325233.Spec : Prop :=
  ∀ n, P16656145071951325233.a n = A321232 (n + 1)

end A321232

/-! ## A321232.P6824251954984864324

`A008486(n+1)+A008576(n+1)-A313835(n+1)`
-/

namespace A321232.P6824251954984864324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) + (A008576 (n + 1) - A313835 (n + 1))

end

end A321232.P6824251954984864324

namespace A321232

/-- `A008486(n+1)+A008576(n+1)-A313835(n+1)` -/
def P6824251954984864324.Spec : Prop :=
  ∀ n, P6824251954984864324.a n = A321232 (n + 1)

end A321232

/-! ## A321232.P4726371461520498528

`A008706(A008706(n+1))-A314945(A008706(n+1))`
-/

namespace A321232.P4726371461520498528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 (n + 1)).toNat - A314945 (A008706 (n + 1)).toNat

end

end A321232.P4726371461520498528

namespace A321232

/-- `A008706(A008706(n+1))-A314945(A008706(n+1))` -/
def P4726371461520498528.Spec : Prop :=
  ∀ n, P4726371461520498528.a n = A321232 (n + 1)

end A321232

/-! ## A321232.P5060599016233126600

`n+1-Δ[A004396(A002264(n²+n))]`
-/

namespace A321232.P5060599016233126600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002264 (n ^ 2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A321232.P5060599016233126600

namespace A321232

/-- `n+1-Δ[A004396(A002264(n²+n))]` -/
def P5060599016233126600.Spec : Prop :=
  ∀ n, P5060599016233126600.a n = A321232 (n + 1)

end A321232

/-!
# A321233: a(n) is the number of reflectable bases of the root system of type D_n.

The programs for A321233, there is no canonical definition to state claims against.
-/

/-! ## A321233.P14152283533026569852

`2^(n+1)*A320064(n+1)`
-/

namespace A321233.P14152283533026569852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A320064 (n + 1)

end

end A321233.P14152283533026569852

/-! ## A321233.P9818726324707939724

`A001863(n+1)*n*4^n`
-/

namespace A321233.P9818726324707939724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (n + 1) * (n * 4 ^ n : ℤ)

end

end A321233.P9818726324707939724

/-! ## A321233.P1619198681700572863

`4^n*A000435(n+1)`
-/

namespace A321233.P1619198681700572863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000435 (n + 1)

end

end A321233.P1619198681700572863

/-! ## A321233.P8391057816936870457

`4^n/(n+1)*A001864(n+1)`
-/

namespace A321233.P8391057816936870457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / (n + 1 : ℚ) * (A001864 (n + 1) : ℚ)

end

end A321233.P8391057816936870457

/-! ## A321233.P17920364431888787352

`A000435(n+1)*A262616(∑[n])`
-/

namespace A321233.P17920364431888787352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000435 (n + 1) * A262616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321233.P17920364431888787352

/-!
# A321234: Denominator of series expansion of the hypergeometric series 3F2([1/2, 1, 1], [3/2, 3/2], x).

The programs for A321234, the canonical program `A321234.P1035964924695441674` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321234 has offset 0).

The definition of A321234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321234.P1035964924695441674

`Δ[n²]*A001803(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321234

/-- `Δ[n²]*A001803(n)` -/
def P1035964924695441674.Spec : Prop :=
  ∀ n, P1035964924695441674.a n = A321234 n

theorem P1035964924695441674.correct : P1035964924695441674.Spec := by
  intro n
  simp only [A321234]

end A321234

/-! ## A321234.P9527097950824501826

`Δ[n²]²*A001790(n)`
-/

namespace A321234.P9527097950824501826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * A001790 n

end

end A321234.P9527097950824501826

namespace A321234

/-- `Δ[n²]²*A001790(n)` -/
def P9527097950824501826.Spec : Prop :=
  ∀ n, P9527097950824501826.a n = A321234 n

end A321234

/-! ## A321234.P7011986202064548093

`(2*n+1)*A086116(2*n+1)`
-/

namespace A321234.P7011986202064548093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A086116 (2 * n + 1)

end

end A321234.P7011986202064548093

namespace A321234

/-- `(2*n+1)*A086116(2*n+1)` -/
def P7011986202064548093.Spec : Prop :=
  ∀ n, P7011986202064548093.a n = A321234 n

end A321234

/-! ## A321234.P6156959342082785016

`(2*n+1)*A163590(2*n+1)`
-/

namespace A321234.P6156959342082785016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A163590 (2 * n + 1)

end

end A321234.P6156959342082785016

namespace A321234

/-- `(2*n+1)*A163590(2*n+1)` -/
def P6156959342082785016.Spec : Prop :=
  ∀ n, P6156959342082785016.a n = A321234 n

end A321234

/-! ## A321234.P105487473359015065

`(2*n+1)*A380909(2*n+1)`
-/

namespace A321234.P105487473359015065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A380909 (2 * n + 1)

end

end A321234.P105487473359015065

namespace A321234

/-- `(2*n+1)*A380909(2*n+1)` -/
def P105487473359015065.Spec : Prop :=
  ∀ n, P105487473359015065.a n = A321234 n

end A321234

/-! ## A321234.P5532533376323746194

`A001790(n)*A016754(n)`
-/

namespace A321234.P5532533376323746194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A016754 n

end

end A321234.P5532533376323746194

namespace A321234

/-- `A001790(n)*A016754(n)` -/
def P5532533376323746194.Spec : Prop :=
  ∀ n, P5532533376323746194.a n = A321234 n

end A321234

/-! ## A321234.P12419347717134515660

`A001803(n)*A004273(n+1)`
-/

namespace A321234.P12419347717134515660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A004273 (n + 1)

end

end A321234.P12419347717134515660

namespace A321234

/-- `A001803(n)*A004273(n+1)` -/
def P12419347717134515660.Spec : Prop :=
  ∀ n, P12419347717134515660.a n = A321234 n

end A321234

/-! ## A321234.P7898812812894278759

`A001790(n)*A181318(2*n+1)`
-/

namespace A321234.P7898812812894278759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A181318 (2 * n + 1)

end

end A321234.P7898812812894278759

namespace A321234

/-- `A001790(n)*A181318(2*n+1)` -/
def P7898812812894278759.Spec : Prop :=
  ∀ n, P7898812812894278759.a n = A321234 n

end A321234

/-! ## A321234.P5156553607700859352

`A109613(2*n)²*A036069(2*n)`
-/

namespace A321234.P5156553607700859352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n) ^ 2 * A036069 (2 * n)

end

end A321234.P5156553607700859352

namespace A321234

/-- `A109613(2*n)²*A036069(2*n)` -/
def P5156553607700859352.Spec : Prop :=
  ∀ n, P5156553607700859352.a n = A321234 n

end A321234

/-! ## A321234.P6910227684125842471

`A036069(2*n)*A168077(2*n+1)`
-/

namespace A321234.P6910227684125842471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * n) * A168077 (2 * n + 1)

end

end A321234.P6910227684125842471

namespace A321234

/-- `A036069(2*n)*A168077(2*n+1)` -/
def P6910227684125842471.Spec : Prop :=
  ∀ n, P6910227684125842471.a n = A321234 n

end A321234

/-! ## A321234.P4135000940899257777

`A026741(2*n+1)²*A036069(2*n)`
-/

namespace A321234.P4135000940899257777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * n + 1) ^ 2 * A036069 (2 * n)

end

end A321234.P4135000940899257777

namespace A321234

/-- `A026741(2*n+1)²*A036069(2*n)` -/
def P4135000940899257777.Spec : Prop :=
  ∀ n, P4135000940899257777.a n = A321234 n

end A321234

/-! ## A321234.P13850702193029961658

`A001803(n)/A000984(n)*A002457(n)`
-/

namespace A321234.P13850702193029961658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 n : ℚ) / (A000984 n : ℚ) * (A002457 n : ℚ)

end

end A321234.P13850702193029961658

namespace A321234

/-- `A001803(n)/A000984(n)*A002457(n)` -/
def P13850702193029961658.Spec : Prop :=
  ∀ n, P13850702193029961658.a n = (A321234 n : ℚ)

end A321234

/-! ## A321234.P10462122800775646040

`(2*n+1)²*gcd(C(2*n, n), a(n-1))` with `a(0)=1`
-/

namespace A321234.P10462122800775646040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ 2 * Nat.gcd (Nat.choose (2 * n) n) (a (n - 1))

end

end A321234.P10462122800775646040

namespace A321234

/-- `(2*n+1)²*gcd(C(2*n, n), a(n-1))` -/
def P10462122800775646040.Spec : Prop :=
  ∀ n, (P10462122800775646040.a n : ℤ) = A321234 n

end A321234

/-! ## A321234.P5583274248728471551

`(2*n+1)*A144815(∑[n])`
-/

namespace A321234.P5583274248728471551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A144815 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321234.P5583274248728471551

namespace A321234

/-- `(2*n+1)*A144815(∑[n])` -/
def P5583274248728471551.Spec : Prop :=
  ∀ n, P5583274248728471551.a n = A321234 n

end A321234

/-! ## A321234.P5869178495320641913

`(2*n+1)*A131440(∑[n])`
-/

namespace A321234.P5869178495320641913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A131440 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321234.P5869178495320641913

namespace A321234

/-- `(2*n+1)*A131440(∑[n])` -/
def P5869178495320641913.Spec : Prop :=
  ∀ n, P5869178495320641913.a n = A321234 n

end A321234

/-!
# A321236: a(n) = Sum_{d|n} mu(d)^2*d^n.

The programs for A321236, there is no canonical definition to state claims against.
-/

/-! ## A321236.P11825880382642040207

`∏{p}[n+1, #^(n+1)+1]`
-/

namespace A321236.P11825880382642040207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p ^ (n + 1) + 1)

end

end A321236.P11825880382642040207

/-! ## A321236.P2040408492512693811

`∑{d}[A007947(n+1), #^(n+1)]`
-/

namespace A321236.P2040408492512693811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ (n + 1)

end

end A321236.P2040408492512693811

/-! ## A321236.P1858401719620645700

`∑{d}[A015053(n+1), #^(n+1)]`
-/

namespace A321236.P1858401719620645700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ (n + 1)

end

end A321236.P1858401719620645700

/-! ## A321236.P8771435041177850587

`∑{d}[A062953(n+1), #^(n+1)]`
-/

namespace A321236.P8771435041177850587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ (n + 1)

end

end A321236.P8771435041177850587

/-! ## A321236.P1196846320785075142

`∑{d}[1-A066503(n+1)+n, #^(n+1)]`
-/

namespace A321236.P1196846320785075142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066503 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ (n + 1)

end

end A321236.P1196846320785075142

/-! ## A321236.P9728104320145878431

`∑{d}[A073353(n+1)-(n+1), #^(n+1)]`
-/

namespace A321236.P9728104320145878431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ (n + 1)

end

end A321236.P9728104320145878431

/-!
# A321237: Start with a square of dimension 1 X 1, and repeatedly append along the squares of the previous step squares with half their side length that do not overlap with any prior square; a(n) gives the number of squares appended at n-th step.

The programs for A321237, the canonical program `A321237.P8868466662478626892` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321237 has offset 1).

The definition of A321237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321237.P8868466662478626892

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=8, a(2)=28`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321237

/-- `3*a(n-1)-2*a(n-2)` -/
def P8868466662478626892.Spec : Prop :=
  ∀ n, P8868466662478626892.a n = A321237 (n + 1)

theorem P8868466662478626892.correct : P8868466662478626892.Spec := by
  intro n
  simp only [A321237, Nat.add_sub_cancel]

end A321237

/-! ## A321237.P16381389663191733769

`2*(a(n-1)+6)` with `a(0)=1, a(1)=8`
-/

namespace A321237.P16381389663191733769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * (a (n - 1) + 6)

end

end A321237.P16381389663191733769

namespace A321237

/-- `2*(a(n-1)+6)` -/
def P16381389663191733769.Spec : Prop :=
  ∀ n, (P16381389663191733769.a n : ℤ) = A321237 (n + 1)

end A321237

/-! ## A321237.P17235476380524208679

`lcm(4, a(n-1)+6)` with `a(0)=1, a(1)=8`
-/

namespace A321237.P17235476380524208679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.lcm 4 (a (n - 1) + 6)

end

end A321237.P17235476380524208679

namespace A321237

/-- `lcm(4, a(n-1)+6)` -/
def P17235476380524208679.Spec : Prop :=
  ∀ n, (P17235476380524208679.a n : ℤ) = A321237 (n + 1)

end A321237

/-! ## A321237.P7561995642312386962

`∑[2*a(n-1)]` with `a(0)=1, a(1)=7, a(2)=20`
-/

namespace A321237.P7561995642312386962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 20] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321237.P7561995642312386962

namespace A321237

/-- `∑[2*a(n-1)]` -/
def P7561995642312386962.Spec : Prop :=
  ∀ n, (P7561995642312386962.a n : ℤ) = A321237 (n + 1)

end A321237

/-! ## A321237.P14520351293924808448

`a(n-1)+a(n-1)+12` with `a(0)=1, a(1)=8`
-/

namespace A321237.P14520351293924808448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + (a (n - 1) + 12)

end

end A321237.P14520351293924808448

namespace A321237

/-- `a(n-1)+a(n-1)+12` -/
def P14520351293924808448.Spec : Prop :=
  ∀ n, (P14520351293924808448.a n : ℤ) = A321237 (n + 1)

end A321237

/-! ## A321237.P8494599986192275221

`A123932(n)*A154117(n)`
-/

namespace A321237.P8494599986192275221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A154117 n

end

end A321237.P8494599986192275221

namespace A321237

/-- `A123932(n)*A154117(n)` -/
def P8494599986192275221.Spec : Prop :=
  ∀ n, P8494599986192275221.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P16100112427078158470

`(A057427(n)+1)²*A154117(n)`
-/

namespace A321237.P16100112427078158470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) ^ 2 * A154117 n

end

end A321237.P16100112427078158470

namespace A321237

/-- `(A057427(n)+1)²*A154117(n)` -/
def P16100112427078158470.Spec : Prop :=
  ∀ n, P16100112427078158470.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P4336579787426259138

`A048489(n)+A131130(n)-A000079(n)`
-/

namespace A321237.P4336579787426259138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048489 n + (A131130 n - A000079 n)

end

end A321237.P4336579787426259138

namespace A321237

/-- `A048489(n)+A131130(n)-A000079(n)` -/
def P4336579787426259138.Spec : Prop :=
  ∀ n, P4336579787426259138.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P5177083986050335335

`A053599(2*n+1)+A004273(A004273(n))`
-/

namespace A321237.P5177083986050335335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 (2 * n + 1) + A004273 (A004273 n).toNat

end

end A321237.P5177083986050335335

namespace A321237

/-- `A053599(2*n+1)+A004273(A004273(n))` -/
def P5177083986050335335.Spec : Prop :=
  ∀ n, P5177083986050335335.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P8583228784578520294

`(A095121(n+1)-A131130(n))*A154117(n)`
-/

namespace A321237.P8583228784578520294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095121 (n + 1) - A131130 n) * A154117 n

end

end A321237.P8583228784578520294

namespace A321237

/-- `(A095121(n+1)-A131130(n))*A154117(n)` -/
def P8583228784578520294.Spec : Prop :=
  ∀ n, P8583228784578520294.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P16699205941914186460

`A000918(n+1)+A131130(n)+A028399(n+2)`
-/

namespace A321237.P16699205941914186460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) + (A131130 n + A028399 (n + 2))

end

end A321237.P16699205941914186460

namespace A321237

/-- `A000918(n+1)+A131130(n)+A028399(n+2)` -/
def P16699205941914186460.Spec : Prop :=
  ∀ n, P16699205941914186460.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P9829137141620758708

`A131130(n+1)+A131130(n)-A000079(n+1)`
-/

namespace A321237.P9829137141620758708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 (n + 1) + (A131130 n - A000079 (n + 1))

end

end A321237.P9829137141620758708

namespace A321237

/-- `A131130(n+1)+A131130(n)-A000079(n+1)` -/
def P9829137141620758708.Spec : Prop :=
  ∀ n, P9829137141620758708.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P8396176356937922359

`A154251(n+1)+A131130(n)-A083329(n+1)`
-/

namespace A321237.P8396176356937922359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154251 (n + 1) + (A131130 n - A083329 (n + 1))

end

end A321237.P8396176356937922359

namespace A321237

/-- `A154251(n+1)+A131130(n)-A083329(n+1)` -/
def P8396176356937922359.Spec : Prop :=
  ∀ n, P8396176356937922359.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P452488644638537099

`A154118(n+1)+A131130(n)-A094373(n+1)`
-/

namespace A321237.P452488644638537099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154118 (n + 1) + (A131130 n - A094373 (n + 1))

end

end A321237.P452488644638537099

namespace A321237

/-- `A154118(n+1)+A131130(n)-A094373(n+1)` -/
def P452488644638537099.Spec : Prop :=
  ∀ n, P452488644638537099.a n = A321237 (n + 1)

end A321237

/-! ## A321237.P17695529099942843430

`A154252(n+1)+A131130(n)-A095121(n+1)`
-/

namespace A321237.P17695529099942843430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154252 (n + 1) + (A131130 n - A095121 (n + 1))

end

end A321237.P17695529099942843430

namespace A321237

/-- `A154252(n+1)+A131130(n)-A095121(n+1)` -/
def P17695529099942843430.Spec : Prop :=
  ∀ n, P17695529099942843430.a n = A321237 (n + 1)

end A321237

/-!
# A321239: a(n) = [x^(n^3)] Product_{k=1..n} Sum_{m>=0} x^(k^2*m).

The programs for A321239, there is no canonical definition to state claims against.
-/

/-! ## A321239.P13574762034481062422

`A062298(A058863(n+1)+2)`
-/

namespace A321239.P13574762034481062422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A058863 (n + 1) + 2).toNat

end

end A321239.P13574762034481062422

/-! ## A321239.P2515944283577968818

`floor(A006158(A052318(n+1)+1)/(3-sqrt(6)))`
-/

namespace A321239.P2515944283577968818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006158 (A052318 (n + 1) + 1).toNat : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

end

end A321239.P2515944283577968818

/-!
# A321240: Expansion of Product_{i>=1, j>=1, k>=1, l>=1} (1 + x^(i*j*k*l))/(1 - x^(i*j*k*l)).

The programs for A321240, there is no canonical definition to state claims against.
-/

/-! ## A321240.P9725348750909417717

`A335967(A162044(n+1))`
-/

namespace A321240.P9725348750909417717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335967 (A162044 (n + 1)).toNat

end

end A321240.P9725348750909417717

/-!
# A321242: Number of maximal independent vertex sets in the n X n antelope graph.

The programs for A321242, there is no canonical definition to state claims against.
-/

/-! ## A321242.P17787241499970600755

`A032572(n!)²`
-/

namespace A321242.P17787241499970600755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032572 (Nat.factorial n) ^ 2

end

end A321242.P17787241499970600755

/-! ## A321242.P17660229431179414887

`4^A198316(n²)`
-/

namespace A321242.P17660229431179414887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A198316 (n ^ 2) : ℤ)

end

end A321242.P17660229431179414887

/-!
# A321243: a(n) is the product of n and all its decimal digits individually except the leftmost digit.

The programs for A321243, the canonical program `A321243.P16278212693722106823` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321243 has offset 0).

The definition of A321243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321243.P16278212693722106823

`A098736(n)/A000030(A028310(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321243

/-- `A098736(n)/A000030(A028310(n))` -/
def P16278212693722106823.Spec : Prop :=
  ∀ n, P16278212693722106823.a n = (A321243 n : ℚ)

end A321243

/-! ## A321243.P17171740825323026151

`n*A007954(n)/A000030(A028310(n))`
-/

namespace A321243.P17171740825323026151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A007954 n : ℚ) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P17171740825323026151

namespace A321243

/-- `n*A007954(n)/A000030(A028310(n))` -/
def P17171740825323026151.Spec : Prop :=
  ∀ n, P17171740825323026151.a n = (A321243 n : ℚ)

end A321243

/-! ## A321243.P13619131946653932776

`(1-A217096(n))*A230101(n)/A000030(A028310(n))`
-/

namespace A321243.P13619131946653932776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A217096 n) * A230101 n : ℚ) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P13619131946653932776

namespace A321243

/-- `(1-A217096(n))*A230101(n)/A000030(A028310(n))` -/
def P13619131946653932776.Spec : Prop :=
  ∀ n, P13619131946653932776.a n = (A321243 n : ℚ)

end A321243

/-! ## A321243.P17983005513738834476

`n*(A007953(n)-A062329(n))/A000030(A028310(n))`
-/

namespace A321243.P17983005513738834476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (A007953 n - A062329 n) : ℚ) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P17983005513738834476

namespace A321243

/-- `n*(A007953(n)-A062329(n))/A000030(A028310(n))` -/
def P17983005513738834476.Spec : Prop :=
  ∀ n, P17983005513738834476.a n = (A321243 n : ℚ)

end A321243

/-! ## A321243.P16995570161856450615

`n*(A061762(n)-A169805(n)/2)/A000030(A028310(n))`
-/

namespace A321243.P16995570161856450615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A061762 n : ℚ) - (A169805 n : ℚ) / 2) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P16995570161856450615

namespace A321243

/-- `n*(A061762(n)-A169805(n)/2)/A000030(A028310(n))` -/
def P16995570161856450615.Spec : Prop :=
  ∀ n, P16995570161856450615.a n = (A321243 n : ℚ)

end A321243

/-! ## A321243.P7566934586234025424

`n*(A169805(n)/2-A062329(n))/A000030(A028310(n))`
-/

namespace A321243.P7566934586234025424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A169805 n : ℚ) / 2 - (A062329 n : ℚ)) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P7566934586234025424

namespace A321243

/-- `n*(A169805(n)/2-A062329(n))/A000030(A028310(n))` -/
def P7566934586234025424.Spec : Prop :=
  ∀ n, P7566934586234025424.a n = (A321243 n : ℚ)

end A321243

/-! ## A321243.P3452986059414700831

`A098736(n)/A000030(A017281(n))`
-/

namespace A321243.P3452986059414700831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098736 n : ℚ) / (A000030 (A017281 n).toNat : ℚ)

end

end A321243.P3452986059414700831

namespace A321243

/-- `A098736(n)/A000030(A017281(n))` -/
def P3452986059414700831.Spec : Prop :=
  ∀ n, P3452986059414700831.a n = (A321243 n : ℚ)

end A321243

/-! ## A321243.P4721516321091648593

`n*A037213(A187844(n)²)/A000030(A028310(n))`
-/

namespace A321243.P4721516321091648593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A037213 (A187844 n ^ 2).toNat : ℚ) / (A000030 (A028310 n).toNat : ℚ)

end

end A321243.P4721516321091648593

namespace A321243

/-- `n*A037213(A187844(n)²)/A000030(A028310(n))` -/
def P4721516321091648593.Spec : Prop :=
  ∀ n, P4721516321091648593.a n = (A321243 n : ℚ)

end A321243

/-!
# A321247: Number of maximal independent vertex sets in the n X n fiveleaper graph.

The programs for A321247, there is no canonical definition to state claims against.
-/

/-! ## A321247.P1841699505317681864

`A007318(16*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=16`
-/

namespace A321247.P1841699505317681864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 16] fun n a =>
  A007318 (16 * a (n - 1)).toNat

end

end A321247.P1841699505317681864

/-! ## A321247.P10215818243666696283

`A353867(∑[floor(n/(xor(n, n+1)+1))]!)`
-/

namespace A321247.P10215818243666696283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353867 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A321247.P10215818243666696283

/-!
# A321248: Number of maximal independent vertex sets in the n X n stacked book graph.

The programs for A321248, there is no canonical definition to state claims against.
-/

/-! ## A321248.P1328595963265702021

`A186289(∏[A174326(n+2)]-n)`
-/

namespace A321248.P1328595963265702021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186289 (∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A321248.P1328595963265702021

/-!
# A321250: Number of maximal independent vertex sets in the n X n torus grid graph.

The programs for A321250, there is no canonical definition to state claims against.
-/

/-! ## A321250.P4284961293971493843

`A135604(A014329(n))`
-/

namespace A321250.P4284961293971493843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135604 (A014329 n).toNat

end

end A321250.P4284961293971493843

/-!
# A321251: a(n) is the number of ways to place non-attacking knights on a 3 X n chessboard.

The programs for A321251, there is no canonical definition to state claims against.
-/

/-! ## A321251.P10886995531977303207

`A395243(A167614(n+2))`
-/

namespace A321251.P10886995531977303207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395243 (A167614 (n + 2)).toNat

end

end A321251.P10886995531977303207

/-! ## A321251.P11954351328755573697

`A339113(A000110(n))+A139250(3*n)`
-/

namespace A321251.P11954351328755573697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339113 (A000110 n).toNat + A139250 (3 * n)

end

end A321251.P11954351328755573697

/-!
# A321252: (Conjecturally) the lexicographically earliest infinite sequence over {0,1,2,3} avoiding abelian squares.

The programs for A321252, there is no canonical definition to state claims against.
-/

/-! ## A321252.P16508022092107112856

`A007814(or(2*(n+1), A101318(n+1)))`
-/

namespace A321252.P16508022092107112856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (2 * (n + 1) : ℤ) (A101318 (n + 1))).toNat

end

end A321252.P16508022092107112856

/-! ## A321252.P13880486532286190804

`A007814(or(A101318(n+1), A168380(n+1)))`
-/

namespace A321252.P13880486532286190804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A101318 (n + 1)) (A168380 (n + 1))).toNat

end

end A321252.P13880486532286190804

/-! ## A321252.P2246394097797112117

`val(A002796(n+1), A020639(A342650(3*n+14)))`
-/

namespace A321252.P2246394097797112117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002796 (n + 1)).toNat (A020639 (A342650 (3 * n + 14)).toNat).toNat

end

end A321252.P2246394097797112117

/-! ## A321252.P7255334413491144433

`A205745(25*A254750(n+1))`
-/

namespace A321252.P7255334413491144433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (25 * A254750 (n + 1)).toNat

end

end A321252.P7255334413491144433

/-! ## A321252.P15742412779121567192

`val(n+1, 2)+1-A033687(A174616(n))`
-/

namespace A321252.P15742412779121567192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - A033687 (A174616 n).toNat

end

end A321252.P15742412779121567192

/-!
# A321253: Number of non-isomorphic strict connected weight-n multiset partitions with multiset density -1.

The programs for A321253, there is no canonical definition to state claims against.
-/

/-! ## A321253.P6220880175322217731

`A233386(or(A006206(2*n+5), A336390(n+3)))`
-/

namespace A321253.P6220880175322217731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233386 (Int.lor (A006206 (2 * n + 5)) (A336390 (n + 3))).toNat

end

end A321253.P6220880175322217731

/-!
# A321255: Number of connected multiset partitions with multiset density -1, of strongly normal multisets of size n, with no singletons.

The programs for A321255, there is no canonical definition to state claims against.
-/

/-! ## A321255.P7163067265840968704

`A148792(n)-A032742(A332872(n))`
-/

namespace A321255.P7163067265840968704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148792 n - A032742 (A332872 n).toNat

end

end A321255.P7163067265840968704

/-!
# A321257: Start with an equilateral triangle, and repeatedly append along the triangles of the previous step equilateral triangles with half their side length that do not overlap with any prior triangle; a(n) gives the number of triangles appended at n-th step.

The programs for A321257, the canonical program `A321257.P13615175990076071828` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321257 has offset 1).

The definition of A321257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321257.P13615175990076071828

`9*(n-1)+2*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321257

/-- `9*(n-1)+2*a(n-1)` -/
def P13615175990076071828.Spec : Prop :=
  ∀ n, P13615175990076071828.a n = A321257 (n + 1)

theorem P13615175990076071828.correct : P13615175990076071828.Spec := by
  intro n
  simp only [A321257, Nat.add_sub_cancel]

end A321257

/-! ## A321257.P8119628095896195489

`∑[A048488(n)]-A130824(n)`
-/

namespace A321257.P8119628095896195489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130824 n

end

end A321257.P8119628095896195489

namespace A321257

/-- `∑[A048488(n)]-A130824(n)` -/
def P8119628095896195489.Spec : Prop :=
  ∀ n, P8119628095896195489.a n = A321257 (n + 1)

end A321257

/-! ## A321257.P12305774531104834681

`A122553(n)*A123203(n+1)`
-/

namespace A321257.P12305774531104834681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A123203 (n + 1)

end

end A321257.P12305774531104834681

namespace A321257

/-- `A122553(n)*A123203(n+1)` -/
def P12305774531104834681.Spec : Prop :=
  ∀ n, P12305774531104834681.a n = A321257 (n + 1)

end A321257

/-! ## A321257.P5696659163464126336

`A114958(n)-2*A004277(n)`
-/

namespace A321257.P5696659163464126336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114958 n - 2 * A004277 n

end

end A321257.P5696659163464126336

namespace A321257

/-- `A114958(n)-2*A004277(n)` -/
def P5696659163464126336.Spec : Prop :=
  ∀ n, P5696659163464126336.a n = A321257 (n + 1)

end A321257

/-! ## A321257.P14627066855205824244

`A114958(n)-A004277(A004277(n))`
-/

namespace A321257.P14627066855205824244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114958 n - A004277 (A004277 n).toNat

end

end A321257.P14627066855205824244

namespace A321257

/-- `A114958(n)-A004277(A004277(n))` -/
def P14627066855205824244.Spec : Prop :=
  ∀ n, P14627066855205824244.a n = A321257 (n + 1)

end A321257

/-! ## A321257.P10890754734219772957

`A114958(n)-A018838(A008458(n))`
-/

namespace A321257.P10890754734219772957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114958 n - A018838 (A008458 n).toNat

end

end A321257.P10890754734219772957

namespace A321257

/-- `A114958(n)-A018838(A008458(n))` -/
def P10890754734219772957.Spec : Prop :=
  ∀ n, P10890754734219772957.a n = A321257 (n + 1)

end A321257

/-! ## A321257.P12873278536843111548

`A114958(n)-A014682(A022144(n))`
-/

namespace A321257.P12873278536843111548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114958 n - A014682 (A022144 n).toNat

end

end A321257.P12873278536843111548

namespace A321257

/-- `A114958(n)-A014682(A022144(n))` -/
def P12873278536843111548.Spec : Prop :=
  ∀ n, P12873278536843111548.a n = A321257 (n + 1)

end A321257

/-! ## A321257.P6317328021232626301

`A079360(A103517(n))-A017209(n)`
-/

namespace A321257.P6317328021232626301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079360 (A103517 n).toNat - A017209 n

end

end A321257.P6317328021232626301

namespace A321257

/-- `A079360(A103517(n))-A017209(n)` -/
def P6317328021232626301.Spec : Prop :=
  ∀ n, P6317328021232626301.a n = A321257 (n + 1)

end A321257

/-!
# A321258: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = sigma_k(n) - n^k.

The programs for A321258, the canonical program `A321258.P10467559747908190419` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321258 has offset 1).

The definition of A321258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321258.P10467559747908190419

`A109974(A061579(n))-A009998(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A321258

/-- `A109974(A061579(n))-A009998(n)` -/
def P10467559747908190419.Spec : Prop :=
  ∀ n, P10467559747908190419.a n = A321258 (n + 1)

theorem P10467559747908190419.correct : P10467559747908190419.Spec := by
  intro n
  simp only [A321258, Nat.add_sub_cancel]

end A321258

/-! ## A321258.P5536084270507443279

`A279394(n+1)-A009998(n)`
-/

namespace A321258.P5536084270507443279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 (n + 1) - A009998 n

end

end A321258.P5536084270507443279

namespace A321258

/-- `A279394(n+1)-A009998(n)` -/
def P5536084270507443279.Spec : Prop :=
  ∀ n, P5536084270507443279.a n = A321258 (n + 1)

end A321258

/-! ## A321258.P7444493982816832852

`A279394(n+1)-A009999(A061579(n))`
-/

namespace A321258.P7444493982816832852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 (n + 1) - A009999 (A061579 n).toNat

end

end A321258.P7444493982816832852

namespace A321258

/-- `A279394(n+1)-A009999(A061579(n))` -/
def P7444493982816832852.Spec : Prop :=
  ∀ n, P7444493982816832852.a n = A321258 (n + 1)

end A321258

/-! ## A321258.P1897173134740699902

`A279394(n+1)-A004248(A014132(n+1))`
-/

namespace A321258.P1897173134740699902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 (n + 1) - A004248 (A014132 (n + 1)).toNat

end

end A321258.P1897173134740699902

namespace A321258

/-- `A279394(n+1)-A004248(A014132(n+1))` -/
def P1897173134740699902.Spec : Prop :=
  ∀ n, P1897173134740699902.a n = A321258 (n + 1)

end A321258

/-! ## A321258.P1420134210744169152

`A279394(n+1)-A051129(A122797(n+1))`
-/

namespace A321258.P1420134210744169152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 (n + 1) - A051129 (A122797 (n + 1)).toNat

end

end A321258.P1420134210744169152

namespace A321258

/-- `A279394(n+1)-A051129(A122797(n+1))` -/
def P1420134210744169152.Spec : Prop :=
  ∀ n, P1420134210744169152.a n = A321258 (n + 1)

end A321258

/-! ## A321258.P15381649775544735988

`A279394(n+1)-A002260(n+1)^A025581(n)`
-/

namespace A321258.P15381649775544735988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279394 (n + 1) : ℚ) - (A002260 (n + 1) : ℚ) ^ (A025581 n : ℤ)

end

end A321258.P15381649775544735988

namespace A321258

/-- `A279394(n+1)-A002260(n+1)^A025581(n)` -/
def P15381649775544735988.Spec : Prop :=
  ∀ n, P15381649775544735988.a n = (A321258 (n + 1) : ℚ)

end A321258

/-!
# A321259: a(n) = sigma_n(n) - n^n.

The programs for A321259, there is no canonical definition to state claims against.
-/

/-! ## A321259.P3960195681946577220

`A023887(n+1)-A000312(n+1)`
-/

namespace A321259.P3960195681946577220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023887 (n + 1) - A000312 (n + 1)

end

end A321259.P3960195681946577220

/-! ## A321259.P9333942370322112621

`∑{d}[n+1, (#%(n+1))^(n+1)]`
-/

namespace A321259.P9333942370322112621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % (n + 1)) ^ (n + 1)

end

end A321259.P9333942370322112621

/-! ## A321259.P1762538227423570658

`A321258(2*(n+1)²)`
-/

namespace A321259.P1762538227423570658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321258 (2 * (n + 1) ^ 2)

end

end A321259.P1762538227423570658

/-! ## A321259.P16750405232493799658

`∑{d}[n+1, #^(n+1)]-(n+1)^(n+1)`
-/

namespace A321259.P16750405232493799658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1) : ℕ) : ℤ) - ((n + 1) ^ (n + 1) : ℤ)

end

end A321259.P16750405232493799658

/-! ## A321259.P11914795729318270245

`A308504(∑[n+1])-(n+1)^(n+1)`
-/

namespace A321259.P11914795729318270245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (∑ j ∈ Finset.range (n + 1), f1 j) - ((n + 1) ^ (n + 1) : ℤ)

end

end A321259.P11914795729318270245

/-!
# A321260: a(n) = [x^n] Product_{k>=1} 1/(1 - x^k)^(sigma_n(k)-k^n).

The programs for A321260, there is no canonical definition to state claims against.
-/

/-! ## A321260.P4456891769791008422

`A321261(n)+A031346(A321261(n))`
-/

namespace A321260.P4456891769791008422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321261 n + A031346 (A321261 n).toNat

end

end A321260.P4456891769791008422

/-! ## A321260.P13104825232019579341

`A321261(n)+A241910(A000698(n))`
-/

namespace A321260.P13104825232019579341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321261 n + A241910 (A000698 n).toNat

end

end A321260.P13104825232019579341

/-! ## A321260.P11574704650593592920

`A332448(A299153(n+2))+A321261(n)`
-/

namespace A321260.P11574704650593592920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332448 (A299153 (n + 2)).toNat + A321261 n

end

end A321260.P11574704650593592920

/-!
# A321261: a(n) = [x^n] Product_{k>=1} (1 + x^k)^(sigma_n(k)-k^n).

The programs for A321261, there is no canonical definition to state claims against.
-/

/-! ## A321261.P10800291143677906683

`A241816(A321260(n)^∑{e}[n+1, #])`
-/

namespace A321261.P10800291143677906683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A321260 n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A321261.P10800291143677906683

/-! ## A321261.P17390356348261535956

`A321260(n)-A241910(A000698(n))`
-/

namespace A321261.P17390356348261535956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321260 n - A241910 (A000698 n).toNat

end

end A321261.P17390356348261535956

/-! ## A321261.P13907082818817696385

`A241816(A321260(n)^A193929(n))`
-/

namespace A321261.P13907082818817696385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (SequenceMachineLib.roundAway ((A321260 n : ℚ) ^ (A193929 n : ℤ))).toNat

end

end A321261.P13907082818817696385

/-!
# A321262: Expansion of 1/(1 - Sum_{k>=1} k*x^(2*k)/(1 - x^k)).

The programs for A321262, there is no canonical definition to state claims against.
-/

/-! ## A321262.P1575672071147798833

`A005247(n)-A003963(A032555(n+1))`
-/

namespace A321262.P1575672071147798833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n - A003963 (A032555 (n + 1)).toNat

end

end A321262.P1575672071147798833

/-! ## A321262.P11629901452447595155

`A005247(n)-A003963(A276142(n+1))`
-/

namespace A321262.P11629901452447595155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n - A003963 (A276142 (n + 1)).toNat

end

end A321262.P11629901452447595155

/-! ## A321262.P4409392302428661818

`A005247(A004903(n+1))-A003963(n+1)`
-/

namespace A321262.P4409392302428661818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (A004903 (n + 1)).toNat - A003963 (n + 1)

end

end A321262.P4409392302428661818

/-! ## A321262.P14305748336847364364

`A284841(n+1)-A277011(A185274(2*n))`
-/

namespace A321262.P14305748336847364364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284841 (n + 1) - A277011 (A185274 (2 * n)).toNat

end

end A321262.P14305748336847364364

/-!
# A321264: a(n) = [x^n] Product_{k>=1} 1/(1 - x^k)^J_n(k), where J_() is the Jordan function.

The programs for A321264, there is no canonical definition to state claims against.
-/

/-! ## A321264.P8705322488945815090

`A363761(C(∑[n], n))`
-/

namespace A321264.P8705322488945815090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A321264.P8705322488945815090

/-!
# A321265: a(n) = [x^n] Product_{k>=1} (1 + x^k)^J_n(k), where J_() is the Jordan function.

The programs for A321265, there is no canonical definition to state claims against.
-/

/-! ## A321265.P17856531820574176887

`A262694((2*n)^n+1)`
-/

namespace A321265.P17856531820574176887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262694 ((2 * n) ^ n + 1)

end

end A321265.P17856531820574176887

/-!
# A321266: Smallest positive number for which the square cannot be written as sum of distinct squares of any subset of previous terms.

The programs for A321266, there is no canonical definition to state claims against.
-/

/-! ## A321266.P3811621939367991440

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8, a(6)=12, a(7)=16, a(8)=17`
-/

namespace A321266.P3811621939367991440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6, 8, 12, 16, 17] fun n a =>
  2 * a (n - 3)

end

end A321266.P3811621939367991440

/-! ## A321266.P9957420880933414980

`sqrt(A226076(n+1))`
-/

namespace A321266.P9957420880933414980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A226076 (n + 1) : ℝ)

end

end A321266.P9957420880933414980

/-! ## A321266.P18139420430715372346

`∪[A029744(n+1), A110287(n)]`
-/

namespace A321266.P18139420430715372346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110287 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321266.P18139420430715372346

/-! ## A321266.P9703496720557332634

`A048645(eq[A002262(n), A204459(n)])`
-/

namespace A321266.P9703496720557332634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A321266.P9703496720557332634

/-! ## A321266.P8967428495255271577

`A048645(eq[A029635(n), A057145(n+2)])`
-/

namespace A321266.P8967428495255271577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A321266.P8967428495255271577

/-! ## A321266.P4862408005331276843

`record[A130321(n)*A138135(A158405(n+1)+1)]`
-/

namespace A321266.P4862408005331276843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A138135 (A158405 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321266.P4862408005331276843

/-!
# A321268: Number of permutations on [n] whose up-down signature has nonnegative partial sums and which have exactly two descents.

The programs for A321268, there is no canonical definition to state claims against.
-/

/-! ## A321268.P353009640548767763

`A106685(2*C(n, 4))`
-/

namespace A321268.P353009640548767763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106685 (2 * Nat.choose n 4)

end

end A321268.P353009640548767763

/-! ## A321268.P9414948982384318304

`A065714(∑[(∏{p}[n+1, #]+1)!])`
-/

namespace A321268.P9414948982384318304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321268.P9414948982384318304

/-!
# A321269: Number of permutations on [n] whose up-down signature has nonnegative partial sums and which have exactly three descents.

The programs for A321269, there is no canonical definition to state claims against.
-/

/-! ## A321269.P17933130620081381054

`lcm(A144764(A062196(2*(n+1))), A303287(n+1))`
-/

namespace A321269.P17933130620081381054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144764 (A062196 (2 * (n + 1))).toNat) (A303287 (n + 1))

end

end A321269.P17933130620081381054

/-!
# A321270: Number of connected multiset partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A321270, there is no canonical definition to state claims against.
-/

/-! ## A321270.P11569120610377104251

`A305193(lcm(2, A181821(n+1)))`
-/

namespace A321270.P11569120610377104251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (Int.lcm 2 (A181821 (n + 1)))

end

end A321270.P11569120610377104251

/-! ## A321270.P15554080744174247924

`A305193(A181821(n+1)+A000007(n))`
-/

namespace A321270.P15554080744174247924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (A181821 (n + 1) + A000007 n).toNat

end

end A321270.P15554080744174247924

/-! ## A321270.P6016617283608994628

`A305193(A181821(n+1)+A000038(n))`
-/

namespace A321270.P6016617283608994628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (A181821 (n + 1) + A000038 n).toNat

end

end A321270.P6016617283608994628

/-! ## A321270.P1386143480160535353

`A305193(A304660(n+1)+A000007(n))`
-/

namespace A321270.P1386143480160535353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (A304660 (n + 1) + A000007 n).toNat

end

end A321270.P1386143480160535353

/-! ## A321270.P16473039045545860073

`A305193(A304660(n+1)+A000038(n))`
-/

namespace A321270.P16473039045545860073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (A304660 (n + 1) + A000038 n).toNat

end

end A321270.P16473039045545860073

/-!
# A321271: Number of connected factorizations of n into positive integers > 1 with z-density -1.

The programs for A321271, there is no canonical definition to state claims against.
-/

/-! ## A321271.P5265465987456075700

`A321272(A181819(n+1))`
-/

namespace A321271.P5265465987456075700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321272 (A181819 (n + 1)).toNat

end

end A321271.P5265465987456075700

/-! ## A321271.P2685337487890987446

`A321272(∏{e}[n+1, A058853(#)])`
-/

namespace A321271.P2685337487890987446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321272 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A321271.P2685337487890987446

/-! ## A321271.P928770597360388519

`A305193(n+1)-A089233((n+1)/∏{p}[n+1, #])`
-/

namespace A321271.P928770597360388519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (n + 1) - A089233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A321271.P928770597360388519

/-! ## A321271.P9204092269045371306

`A305193(n+1)-A281116((n+1)/∏{p}[n+1, #])`
-/

namespace A321271.P9204092269045371306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (n + 1) - A281116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A321271.P9204092269045371306

/-! ## A321271.P18393671619007472122

`A305193(n+1)-A086015(A002033(n))`
-/

namespace A321271.P18393671619007472122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (n + 1) - A086015 (A002033 n).toNat

end

end A321271.P18393671619007472122

/-! ## A321271.P11666083373922712602

`A319786(n+1)-A015283(A090002(n))`
-/

namespace A321271.P11666083373922712602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (n + 1) - A015283 (A090002 n).toNat

end

end A321271.P11666083373922712602

/-! ## A321271.P17945034136048742395

`A319786(n+1)-A321376(A034968(n))`
-/

namespace A321271.P17945034136048742395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (n + 1) - A321376 (A034968 n).toNat

end

end A321271.P17945034136048742395

/-! ## A321271.P17259805427952930744

`A004526(A327658(n+1)+A305193(n+1))`
-/

namespace A321271.P17259805427952930744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A327658 (n + 1) + A305193 (n + 1)).toNat

end

end A321271.P17259805427952930744

/-! ## A321271.P7017432170770078213

`A305193(n+1)-A051584(A000189(n+1))`
-/

namespace A321271.P7017432170770078213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (n + 1) - A051584 (A000189 (n + 1)).toNat

end

end A321271.P7017432170770078213

/-! ## A321271.P1765108445196795198

`A305193(n+1)-A051584(A003557(n+1))`
-/

namespace A321271.P1765108445196795198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (n + 1) - A051584 (A003557 (n + 1)).toNat

end

end A321271.P1765108445196795198

/-!
# A321272: Number of connected multiset partitions with multiset density -1, of a multiset whose multiplicities are the prime indices of n.

The programs for A321272, there is no canonical definition to state claims against.
-/

/-! ## A321272.P6614588755699010840

`A321271(A181821(n+1)%(10*n+7))`
-/

namespace A321272.P6614588755699010840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (Int.tmod (A181821 (n + 1)) (10 * n + 7 : ℤ)).toNat

end

end A321272.P6614588755699010840

/-! ## A321272.P1919931066672372487

`A321271(A181821(n+1)/A002033(A001055(n+1)))`
-/

namespace A321272.P1919931066672372487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (SequenceMachineLib.roundAway ((A181821 (n + 1) : ℚ) / (A002033 (A001055 (n + 1)).toNat : ℚ))).toNat

end

end A321272.P1919931066672372487

/-! ## A321272.P11589430787256083169

`A321271(A181821(n+1)/A000045(A319786(n+1)))`
-/

namespace A321272.P11589430787256083169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (SequenceMachineLib.roundAway ((A181821 (n + 1) : ℚ) / (A000045 (A319786 (n + 1)).toNat : ℚ))).toNat

end

end A321272.P11589430787256083169

/-! ## A321272.P5122524492062029471

`A321271(A181821(n+1))`
-/

namespace A321272.P5122524492062029471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (A181821 (n + 1)).toNat

end

end A321272.P5122524492062029471

/-! ## A321272.P595381719182901684

`A321271(∏{e}[A108951(n+1), A002110(#)])`
-/

namespace A321272.P595381719182901684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A321272.P595381719182901684

/-!
# A321273: Sum over all permutations of [n] of the maximum of the lengths of increasing or decreasing subsequences.

The programs for A321273, there is no canonical definition to state claims against.
-/

/-! ## A321273.P15793356808104566328

`A321277(n+1)+A003316(n+1)`
-/

namespace A321273.P15793356808104566328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321277 (n + 1) + A003316 (n + 1)

end

end A321273.P15793356808104566328

/-! ## A321273.P15114523659560036020

`A321274(n+1)+2*A321277(n+1)`
-/

namespace A321273.P15114523659560036020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321274 (n + 1) + 2 * A321277 (n + 1)

end

end A321273.P15114523659560036020

/-! ## A321273.P17591607872634277630

`2*A003316(n+1)-A321274(n+1)`
-/

namespace A321273.P17591607872634277630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003316 (n + 1) - A321274 (n + 1)

end

end A321273.P17591607872634277630

/-! ## A321273.P6075229834065164164

`A003316(A130446(n+1))+A003316(n+1)-A321274(n+1)`
-/

namespace A321273.P6075229834065164164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003316 (A130446 (n + 1)).toNat + (A003316 (n + 1) - A321274 (n + 1))

end

end A321273.P6075229834065164164

/-! ## A321273.P930404645000738795

`A321277(n+1)+A000142(n+1)/A054677(n+1)*A054676(n+1)`
-/

namespace A321273.P930404645000738795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321277 (n + 1) : ℚ) + (A000142 (n + 1) : ℚ) / (A054677 (n + 1) : ℚ) * (A054676 (n + 1) : ℚ)

end

end A321273.P930404645000738795

/-!
# A321274: Sum over all permutations of [n] of the minimum of the lengths of longest increasing subsequence and longest decreasing subsequence.

The programs for A321274, there is no canonical definition to state claims against.
-/

/-! ## A321274.P14144592153696232338

`A003316(n+1)-A321277(n+1)`
-/

namespace A321274.P14144592153696232338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003316 (n + 1) - A321277 (n + 1)

end

end A321274.P14144592153696232338

/-! ## A321274.P8374209317706755557

`A003316(n+1)+A057428(n)*A321277(n+1)`
-/

namespace A321274.P8374209317706755557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003316 (n + 1) + A057428 n * A321277 (n + 1)

end

end A321274.P8374209317706755557

/-! ## A321274.P9948944116542180645

`A000142(n+1)/A054677(n+1)*A054676(n+1)-A321277(n+1)`
-/

namespace A321274.P9948944116542180645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A054677 (n + 1) : ℚ) * (A054676 (n + 1) : ℚ) - (A321277 (n + 1) : ℚ)

end

end A321274.P9948944116542180645

/-! ## A321274.P3945539141987383584

`2*A003316(n+1)-A321273(n+1)`
-/

namespace A321274.P3945539141987383584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003316 (n + 1) - A321273 (n + 1)

end

end A321274.P3945539141987383584

/-! ## A321274.P5826258072259614724

`A321273(n+1)-2*A321277(n+1)`
-/

namespace A321274.P5826258072259614724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321273 (n + 1) - 2 * A321277 (n + 1)

end

end A321274.P5826258072259614724

/-!
# A321275: Sum over all permutations of [n] of the product of the lengths of longest increasing subsequence and longest decreasing subsequence.

The programs for A321275, there is no canonical definition to state claims against.
-/

/-! ## A321275.P16588484328086547493

`A061017(A078995(n))`
-/

namespace A321275.P16588484328086547493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A078995 n).toNat

end

end A321275.P16588484328086547493

/-!
# A321276: Sum over all permutations of [n] of the length of the longest increasing subsequence raised to the power of the length of the longest decreasing subsequence.

The programs for A321276, there is no canonical definition to state claims against.
-/

/-! ## A321276.P7572737274218934103

`∑[A042963(∑[A243668(n)])]`
-/

namespace A321276.P7572737274218934103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321276.P7572737274218934103

/-!
# A321277: One half of the sum over all permutations of [n] of the absolute difference between the length of the longest increasing subsequence and the length of the longest decreasing subsequence.

The programs for A321277, there is no canonical definition to state claims against.
-/

/-! ## A321277.P11172260138871840048

`A003316(n+1)-A321274(n+1)`
-/

namespace A321277.P11172260138871840048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003316 (n + 1) - A321274 (n + 1)

end

end A321277.P11172260138871840048

/-! ## A321277.P9268220019644237836

`A003316(A130446(n+1))%A321274(n+1)`
-/

namespace A321277.P9268220019644237836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003316 (A130446 (n + 1)).toNat) (A321274 (n + 1))

end

end A321277.P9268220019644237836

/-! ## A321277.P5902704452443520138

`A000142(n+1)/A054677(n+1)*A054676(n+1)-A321274(n+1)`
-/

namespace A321277.P5902704452443520138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A054677 (n + 1) : ℚ) * (A054676 (n + 1) : ℚ) - (A321274 (n + 1) : ℚ)

end

end A321277.P5902704452443520138

/-! ## A321277.P5110758210268968927

`A321273(n+1)-A003316(n+1)`
-/

namespace A321277.P5110758210268968927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321273 (n + 1) - A003316 (n + 1)

end

end A321277.P5110758210268968927

/-! ## A321277.P986502507353248426

`(A321273(n+1)-A321274(n+1))/2`
-/

namespace A321277.P986502507353248426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321273 (n + 1) - A321274 (n + 1) : ℚ) / 2

end

end A321277.P986502507353248426

/-! ## A321277.P9836360288381940593

`A321273(A130446(n+1))%A003316(n+1)`
-/

namespace A321277.P9836360288381940593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321273 (A130446 (n + 1)).toNat) (A003316 (n + 1))

end

end A321277.P9836360288381940593

/-! ## A321277.P9995237628192325934

`A321273(A254667(n+1))%A003316(n+1)`
-/

namespace A321277.P9995237628192325934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321273 (A254667 (n + 1)).toNat) (A003316 (n + 1))

end

end A321277.P9995237628192325934

/-!
# A321278: One half of the sum over all permutations of [n] of the squared difference between the length of the longest increasing subsequence and the length of the longest decreasing subsequence.

The programs for A321278, there is no canonical definition to state claims against.
-/

/-! ## A321278.P8559381247016896128

`A348736(A308111(n))`
-/

namespace A321278.P8559381247016896128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (A308111 n).toNat

end

end A321278.P8559381247016896128

/-! ## A321278.P7254061282857291359

`A057366(A367011(n+1))`
-/

namespace A321278.P7254061282857291359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (A367011 (n + 1)).toNat

end

end A321278.P7254061282857291359

/-!
# A321279: Number of z-trees with product A181821(n). Number of connected antichains of multisets with multiset density -1, of a multiset whose multiplicities are the prime indices of n.

The programs for A321279, there is no canonical definition to state claims against.
-/

/-! ## A321279.P2109022559803531864

`∑{p}[A322786(A018252(n+1)), A001221(#)]`
-/

namespace A321279.P2109022559803531864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322786 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A321279.P2109022559803531864

/-! ## A321279.P1439387946118052833

`∑{p}[A322786(A018252(n+1)), A001222(#)]`
-/

namespace A321279.P1439387946118052833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322786 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A321279.P1439387946118052833

/-! ## A321279.P17895173757298778809

`∑{p}[A322786(A018252(n+1)), A302777(#)]`
-/

namespace A321279.P17895173757298778809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322786 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A302777 p

end

end A321279.P17895173757298778809

/-! ## A321279.P13682268656976471763

`∑{e}[A322786(A018252(n+1)), A002965(#)]`
-/

namespace A321279.P13682268656976471763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322786 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002965 (Nat.factorization (f1 n).natAbs p)

end

end A321279.P13682268656976471763

/-! ## A321279.P11759685124480493771

`∑{e}[A322786(A018252(n+1)), A007318(#)]`
-/

namespace A321279.P11759685124480493771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322786 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A321279.P11759685124480493771

/-!
# A321282: Number of set partitions of [n^2] into n subsets having the same sum.

The programs for A321282, there is no canonical definition to state claims against.
-/

/-! ## A321282.P2365441849339112100

`A174302(n*(1-n)²)`
-/

namespace A321282.P2365441849339112100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174302 ((n : ℤ) * (1 - (n : ℤ)) ^ 2).toNat

end

end A321282.P2365441849339112100

/-!
# A321283: Number of non-isomorphic multiset partitions of weight n in which the part sizes are relatively prime.

The programs for A321283, there is no canonical definition to state claims against.
-/

/-! ## A321283.P9300936862941593141

`A007716(n)-A320810(round(sqrt(n²+1)))`
-/

namespace A321283.P9300936862941593141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n - A320810 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A321283.P9300936862941593141

/-! ## A321283.P15970411731083095725

`A356783(n)+A230219(A054726(n))`
-/

namespace A321283.P15970411731083095725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356783 n + A230219 (A054726 n).toNat

end

end A321283.P15970411731083095725

/-!
# A321286: Expansion of Product_{1 <= i < j} (1 + x^(i*j)).

The programs for A321286, there is no canonical definition to state claims against.
-/

/-! ## A321286.P1866181118671250963

`A086707(A131945(n)+A008611(n))`
-/

namespace A321286.P1866181118671250963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (A131945 n + A008611 n).toNat

end

end A321286.P1866181118671250963

/-! ## A321286.P16158964571395674336

`A058276(n)+A048766(A093387(n+1))`
-/

namespace A321286.P16158964571395674336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 n + A048766 (A093387 (n + 1)).toNat

end

end A321286.P16158964571395674336

/-! ## A321286.P4755912205020737635

`A026796(A187829(n+1))+A008483(n)`
-/

namespace A321286.P4755912205020737635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (A187829 (n + 1)).toNat + A008483 n

end

end A321286.P4755912205020737635

/-! ## A321286.P7491683480776969994

`A259361(A325697(n+1)+A206139(n))`
-/

namespace A321286.P7491683480776969994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A325697 (n + 1) + A206139 n).toNat

end

end A321286.P7491683480776969994

/-!
# A321288: a(n) is the unique n-digit odd number (including leading zero(s)) with alternating even and odd digits and divisible by 5^n.

The programs for A321288, there is no canonical definition to state claims against.
-/

/-! ## A321288.P5508317822959734740

`∑[10^n*A321289(n)]`
-/

namespace A321288.P5508317822959734740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A321289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321288.P5508317822959734740

/-!
# A321289: Digits of the unique 10-adic odd integer x with alternating even and odd digits whose 5-adic valuation is +oo.

The programs for A321289, there is no canonical definition to state claims against.
-/

/-! ## A321289.P9597254492696933668

`floor(A321288(n+1)/10^n)`
-/

namespace A321289.P9597254492696933668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321288 (n + 1) : ℚ) / (10 ^ n : ℚ)⌋

end

end A321289.P9597254492696933668

/-!
# A321290: Smallest positive number for which the 3rd power cannot be written as sum of 3rd powers of any subset of previous terms.

The programs for A321290, there is no canonical definition to state claims against.
-/

/-! ## A321290.P15536375963342817454

`eq[A025428(A299759(2*(n+1))), A214015(n)]`
-/

namespace A321290.P15536375963342817454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A299759 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321290.P15536375963342817454

/-!
# A321291: Smallest positive number for which the 4th power cannot be written as sum of 4th powers of any subset of previous terms.

The programs for A321291, there is no canonical definition to state claims against.
-/

/-! ## A321291.P309744350571338129

`lt[A303362(A181861(n)), A102455(n+1)]`
-/

namespace A321291.P309744350571338129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (A181861 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321291.P309744350571338129

/-! ## A321291.P4186570926654049976

`eq[A184340(A131508(n+1)+1), A184340(n+1)]+1`
-/

namespace A321291.P4186570926654049976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184340 (A131508 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A321291.P4186570926654049976

/-! ## A321291.P12852411428400189105

`lt[A309151(ceil(A338986(n)/4)), n+1]`
-/

namespace A321291.P12852411428400189105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309151 ⌈(A338986 n : ℚ) / 4⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321291.P12852411428400189105

/-! ## A321291.P5598028633118022387

`lt[A135435(n), A008578(A056239(3*n+5))]`
-/

namespace A321291.P5598028633118022387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A056239 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321291.P5598028633118022387

/-! ## A321291.P1113558378902350901

`lt[A205713(A353837(n)), A048760(3*n+1)]`
-/

namespace A321291.P1113558378902350901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205713 (A353837 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321291.P1113558378902350901

/-!
# A321292: Smallest positive number for which the 5th power cannot be written as sum of distinct 5th powers of any subset of previous terms.

The programs for A321292, there is no canonical definition to state claims against.
-/

/-! ## A321292.P11262442437501949303

`lt[A115323(A115323(n)), A076784(2*(n+1))]`
-/

namespace A321292.P11262442437501949303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115323 (A115323 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076784 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321292.P11262442437501949303

/-! ## A321292.P6009331742445519777

`lt[A376761(3*n+4), A376761(A325037(n+1))]`
-/

namespace A321292.P6009331742445519777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376761 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376761 (A325037 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321292.P6009331742445519777

/-!
# A321293: Smallest positive number for which the 6th power cannot be written as sum of distinct 6th powers of any subset of previous terms.

The programs for A321293, there is no canonical definition to state claims against.
-/

/-! ## A321293.P1533051188318582607

`lt[Δ[A033461(A103265(n))]², n]`
-/

namespace A321293.P1533051188318582607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A103265 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A321293.P1533051188318582607

/-! ## A321293.P11456702839130706340

`lt[A061260(A214331(n)), A114229(n+1)]`
-/

namespace A321293.P11456702839130706340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (A214331 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321293.P11456702839130706340

/-! ## A321293.P58840122319286996

`lt[A282537(n), A000010(A282539(n+1))]`
-/

namespace A321293.P58840122319286996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A282539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321293.P58840122319286996

/-! ## A321293.P791019108993461314

`lt[A000120(A320332(3*n)), A000120(n)]`
-/

namespace A321293.P791019108993461314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A320332 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321293.P791019108993461314

/-! ## A321293.P2122237903638650908

`round(sqrt((lt[A025913(n), 2]+1)*(n+1)))`
-/

namespace A321293.P2122237903638650908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) * (n + 1) : ℝ))

end

end A321293.P2122237903638650908

/-!
# A321294: a(n) = Sum_{d|n} mu(n/d)*d*sigma_n(d).

The programs for A321294, there is no canonical definition to state claims against.
-/

/-! ## A321294.P9265644278402496916

`A343510(2*(n+1)²)`
-/

namespace A321294.P9265644278402496916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (2 * (n + 1) ^ 2)

end

end A321294.P9265644278402496916

/-! ## A321294.P16813710572648124519

`record[A343510(∑[A266285(n)])]`
-/

namespace A321294.P16813710572648124519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321294.P16813710572648124519

/-! ## A321294.P12499932558529000696

`record[and(A143259(n+1), A343510(n+1))]`
-/

namespace A321294.P12499932558529000696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143259 (n + 1)) (A343510 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321294.P12499932558529000696

/-! ## A321294.P3890563714914607572

`or(A059841(n), A343510(A001105(n+1)))`
-/

namespace A321294.P3890563714914607572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A343510 (A001105 (n + 1)).toNat)

end

end A321294.P3890563714914607572

/-! ## A321294.P11622374885433624102

`A343510(A001105(n+1))%A012750(n+1)`
-/

namespace A321294.P11622374885433624102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343510 (A001105 (n + 1)).toNat) (A012750 (n + 1))

end

end A321294.P11622374885433624102

/-!
# A321295: a(n) = n * sigma_n(n).

The programs for A321295, there is no canonical definition to state claims against.
-/

/-! ## A321295.P5425024632483758625

`(n+1)*A023887(n+1)`
-/

namespace A321295.P5425024632483758625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023887 (n + 1)

end

end A321295.P5425024632483758625

/-! ## A321295.P973932760488443640

`∑{d}[n+1, (n+1)*#^(n+1)]`
-/

namespace A321295.P973932760488443640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * d ^ (n + 1)

end

end A321295.P973932760488443640

/-! ## A321295.P17662630305573848789

`(n+1)*A308504(∑[n+1])`
-/

namespace A321295.P17662630305573848789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321295.P17662630305573848789

/-! ## A321295.P13400121626688224174

`record[A127093(n+1)*A308504(n+1)]`
-/

namespace A321295.P13400121626688224174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A308504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321295.P13400121626688224174

/-! ## A321295.P15064807709688616916

`(n+1)*(A321259(n+1)+A000312(n+1))`
-/

namespace A321295.P15064807709688616916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A321259 (n + 1) + A000312 (n + 1))

end

end A321295.P15064807709688616916

/-! ## A321295.P5837523997836430303

`A320940(n+1)-A320940(n+1)%A023887(n+1)`
-/

namespace A321295.P5837523997836430303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320940 (n + 1) - Int.tmod (A320940 (n + 1)) (A023887 (n + 1))

end

end A321295.P5837523997836430303

/-!
# A321297: a(n) is the sum of proper divisors of n that are >= sqrt(n) minus the sum of the divisors that are greater than 1 and less than sqrt(n).

The programs for A321297, there is no canonical definition to state claims against.
-/

/-! ## A321297.P8957862917193928323

`A001065(n+1)-A004273(A070039(n+1))`
-/

namespace A321297.P8957862917193928323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A004273 (A070039 (n + 1)).toNat

end

end A321297.P8957862917193928323

/-! ## A321297.P6579885889960658652

`A070038(n+1)-(A070039(n+1)+A028310(n))`
-/

namespace A321297.P6579885889960658652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A070039 (n + 1) + A028310 n)

end

end A321297.P6579885889960658652

/-! ## A321297.P13434869643224449041

`A060866(n+1)-(A117004(n+1)+A028310(n))`
-/

namespace A321297.P13434869643224449041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A117004 (n + 1) + A028310 n)

end

end A321297.P13434869643224449041

/-! ## A321297.P2452374422276478737

`(A070038(n+1)+A070038(n+1))%(A000203(n+1)+n)`
-/

namespace A321297.P2452374422276478737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070038 (n + 1) + A070038 (n + 1)) (A000203 (n + 1) + (n : ℤ))

end

end A321297.P2452374422276478737

/-! ## A321297.P9728771798758156854

`A316556(A081615(n))*A339896(n+1)`
-/

namespace A321297.P9728771798758156854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A081615 n).toNat * A339896 (n + 1)

end

end A321297.P9728771798758156854

/-!
# A321298: Triangle read by rows: T(n,k) is the number of the k-th eliminated person in the Josephus elimination process for n people and a count of 2, 1 <= k <= n.

The programs for A321298, there is no canonical definition to state claims against.
-/

/-! ## A321298.P1874906707571835560

`A001222(or(36, A355387(n)))`
-/

namespace A321298.P1874906707571835560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 36 (A355387 n)).toNat

end

end A321298.P1874906707571835560

/-! ## A321298.P4233658106569097579

`gcd(n, A293961(A327027(n)))%(∑{e}[n+1, #]+1)+1`
-/

namespace A321298.P4233658106569097579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A293961 (A327027 n).toNat) % (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) + 1

end

end A321298.P4233658106569097579

/-! ## A321298.P11789721743803246723

`A309198(xor(A129113(n), A257800(n)))`
-/

namespace A321298.P11789721743803246723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309198 (Int.xor (A129113 n) (A257800 n)).toNat

end

end A321298.P11789721743803246723

/-! ## A321298.P5369705108953667045

`A274450(A027584(n))`
-/

namespace A321298.P5369705108953667045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274450 (A027584 n).toNat

end

end A321298.P5369705108953667045

/-! ## A321298.P11045951662980290429

`A240595(A103621(n+1))`
-/

namespace A321298.P11045951662980290429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240595 (A103621 (n + 1)).toNat

end

end A321298.P11045951662980290429

/-!
# A321299: Expansion of Product_{1 <= i <= j} (1 - x^(i*j)).

The programs for A321299, there is no canonical definition to state claims against.
-/

/-! ## A321299.P15425157514155823203

`A164116(A231056(n+2)^A196879(n))`
-/

namespace A321299.P15425157514155823203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164116 (SequenceMachineLib.roundAway ((A231056 (n + 2) : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A321299.P15425157514155823203

/-! ## A321299.P5567743285543498616

`A164116(A231056(n+2)^A274391(n))`
-/

namespace A321299.P5567743285543498616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164116 (SequenceMachineLib.roundAway ((A231056 (n + 2) : ℚ) ^ (A274391 n : ℤ))).toNat

end

end A321299.P5567743285543498616

/-! ## A321299.P11343955825373489659

`A030203(A244991(n+1)+A217211(n+3))`
-/

namespace A321299.P11343955825373489659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (A244991 (n + 1) + A217211 (n + 3)).toNat

end

end A321299.P11343955825373489659

/-! ## A321299.P4114504343075912000

`A164116(A274391(n)²²*A231056(n+2))`
-/

namespace A321299.P4114504343075912000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164116 ((A274391 n ^ 2) ^ 2 * A231056 (n + 2)).toNat

end

end A321299.P4114504343075912000

