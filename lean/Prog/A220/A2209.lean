import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A220900: A restricted class of multiple edge-free maps on n edges.

The programs for A220900, there is no canonical definition to state claims against.
-/

/-! ## A220900.P15743587969823083322

`A008616(lcm(A149262(n), A352194(n+1)))`
-/

namespace A220900.P15743587969823083322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lcm (A149262 n) (A352194 (n + 1)))

end

end A220900.P15743587969823083322

/-!
# A220902: a(n) = Catalan(n) - A000245(n-2).

The programs for A220902, the canonical program `A220902.P9397525949046414963` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220902 has offset 2).

The definition of A220902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220902.P18130249748365146135

`A000108(n+2)-Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A220902.P18130249748365146135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A220902.P18130249748365146135

namespace A220902

/-- `A000108(n+2)-Δ[(4-6/(n+1))*a(n-1)]` -/
def P18130249748365146135.Spec : Prop :=
  ∀ n, P18130249748365146135.a n = (A220902 (n + 2) : ℚ)

end A220902

/-! ## A220902.P9397525949046414963

`A099376(n)+A005807(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A220902

/-- `A099376(n)+A005807(n)` -/
def P9397525949046414963.Spec : Prop :=
  ∀ n, P9397525949046414963.a n = A220902 (n + 2)

theorem P9397525949046414963.correct : P9397525949046414963.Spec := by
  intro n
  simp only [A220902, Nat.add_sub_cancel]

end A220902

/-! ## A220902.P9253909913504959991

`A071739(n)+A071721(n)`
-/

namespace A220902.P9253909913504959991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 n + A071721 n

end

end A220902.P9253909913504959991

namespace A220902

/-- `A071739(n)+A071721(n)` -/
def P9253909913504959991.Spec : Prop :=
  ∀ n, P9253909913504959991.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P3944862129018652945

`A228343(n)+A134635(n)`
-/

namespace A220902.P3944862129018652945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228343 n + A134635 n

end

end A220902.P3944862129018652945

namespace A220902

/-- `A228343(n)+A134635(n)` -/
def P3944862129018652945.Spec : Prop :=
  ∀ n, P3944862129018652945.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P18092812813089241644

`A000108(n)+∑[A026012(n)]`
-/

namespace A220902.P18092812813089241644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220902.P18092812813089241644

namespace A220902

/-- `A000108(n)+∑[A026012(n)]` -/
def P18092812813089241644.Spec : Prop :=
  ∀ n, P18092812813089241644.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P15802440516611899855

`A026012(n)+∑[A071724(n)]`
-/

namespace A220902.P15802440516611899855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220902.P15802440516611899855

namespace A220902

/-- `A026012(n)+∑[A071724(n)]` -/
def P15802440516611899855.Spec : Prop :=
  ∀ n, P15802440516611899855.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P11487514886637379744

`Δ[A014137(n)+A000245(n)]`
-/

namespace A220902.P11487514886637379744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220902.P11487514886637379744

namespace A220902

/-- `Δ[A014137(n)+A000245(n)]` -/
def P11487514886637379744.Spec : Prop :=
  ∀ n, P11487514886637379744.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P2939522299117939929

`Δ[A014138(n)+A000245(n)]`
-/

namespace A220902.P2939522299117939929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220902.P2939522299117939929

namespace A220902

/-- `Δ[A014138(n)+A000245(n)]` -/
def P2939522299117939929.Spec : Prop :=
  ∀ n, P2939522299117939929.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P13385290107506182963

`A026012(n)+Δ[A014137(n)]`
-/

namespace A220902.P13385290107506182963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + (f1 (n + 1) - f1 n)

end

end A220902.P13385290107506182963

namespace A220902

/-- `A026012(n)+Δ[A014137(n)]` -/
def P13385290107506182963.Spec : Prop :=
  ∀ n, P13385290107506182963.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P17351489205510635108

`A026012(n)+Δ[A014138(n)]`
-/

namespace A220902.P17351489205510635108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + (f1 (n + 1) - f1 n)

end

end A220902.P17351489205510635108

namespace A220902

/-- `A026012(n)+Δ[A014138(n)]` -/
def P17351489205510635108.Spec : Prop :=
  ∀ n, P17351489205510635108.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P16202449283994396935

`record[A115142(n)+A000108(n)]`
-/

namespace A220902.P16202449283994396935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115142 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220902.P16202449283994396935

namespace A220902

/-- `record[A115142(n)+A000108(n)]` -/
def P16202449283994396935.Spec : Prop :=
  ∀ n, P16202449283994396935.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P13223230066828870046

`A026012(n)+record[A097331(n)]`
-/

namespace A220902.P13223230066828870046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220902.P13223230066828870046

namespace A220902

/-- `A026012(n)+record[A097331(n)]` -/
def P13223230066828870046.Spec : Prop :=
  ∀ n, P13223230066828870046.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P9212975889612223677

`A000245(n+1)+A000108(n)`
-/

namespace A220902.P9212975889612223677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + A000108 n

end

end A220902.P9212975889612223677

namespace A220902

/-- `A000245(n+1)+A000108(n)` -/
def P9212975889612223677.Spec : Prop :=
  ∀ n, P9212975889612223677.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P9631998987111275033

`A026012(n)+A000108(n+1)`
-/

namespace A220902.P9631998987111275033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + A000108 (n + 1)

end

end A220902.P9631998987111275033

namespace A220902

/-- `A026012(n)+A000108(n+1)` -/
def P9631998987111275033.Spec : Prop :=
  ∀ n, P9631998987111275033.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P15106659191512546148

`A071724(n+1)+A000108(n)`
-/

namespace A220902.P15106659191512546148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + A000108 n

end

end A220902.P15106659191512546148

namespace A220902

/-- `A071724(n+1)+A000108(n)` -/
def P15106659191512546148.Spec : Prop :=
  ∀ n, P15106659191512546148.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P15946978438086563569

`A071725(n)+A000782(n+1)`
-/

namespace A220902.P15946978438086563569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n + A000782 (n + 1)

end

end A220902.P15946978438086563569

namespace A220902

/-- `A071725(n)+A000782(n+1)` -/
def P15946978438086563569.Spec : Prop :=
  ∀ n, P15946978438086563569.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P13943646095277069009

`A120009(n+1)+A071722(n)`
-/

namespace A220902.P13943646095277069009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 1) + A071722 n

end

end A220902.P13943646095277069009

namespace A220902

/-- `A120009(n+1)+A071722(n)` -/
def P13943646095277069009.Spec : Prop :=
  ∀ n, P13943646095277069009.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P1154849270066914572

`A230585(n+1)-A071724(n)`
-/

namespace A220902.P1154849270066914572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230585 (n + 1) - A071724 n

end

end A220902.P1154849270066914572

namespace A220902

/-- `A230585(n+1)-A071724(n)` -/
def P1154849270066914572.Spec : Prop :=
  ∀ n, P1154849270066914572.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P2948373905102151697

`A376161(n)-A120009(n+1)`
-/

namespace A220902.P2948373905102151697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376161 n - A120009 (n + 1)

end

end A220902.P2948373905102151697

namespace A220902

/-- `A376161(n)-A120009(n+1)` -/
def P2948373905102151697.Spec : Prop :=
  ∀ n, P2948373905102151697.a n = A220902 (n + 2)

end A220902

/-! ## A220902.P202273553172477617

`A026012(n)-A115140(n+2)`
-/

namespace A220902.P202273553172477617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - A115140 (n + 2)

end

end A220902.P202273553172477617

namespace A220902

/-- `A026012(n)-A115140(n+2)` -/
def P202273553172477617.Spec : Prop :=
  ∀ n, P202273553172477617.a n = A220902 (n + 2)

end A220902

/-!
# A220904: Number of equivalence classes of perfect matchings in the n-cube.

The programs for A220904, there is no canonical definition to state claims against.
-/

/-! ## A220904.P8895993975363015166

`∏{p}[∏[∑[5*n-2]+3], #-1]`
-/

namespace A220904.P8895993975363015166
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A220904.P8895993975363015166

/-!
# A220905: Triangle read by rows: rook numbers of certain "probleme des rencontres" boards of the second kind of size n X k (0 <= k <= n).

The programs for A220905, there is no canonical definition to state claims against.
-/

/-! ## A220905.P12175680388822625785

`lcm(A167040(n)!, A334014(n))`
-/

namespace A220905.P12175680388822625785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A167040 n).toNat : ℤ) (A334014 n)

end

end A220905.P12175680388822625785

/-! ## A220905.P17931466801934559534

`A209697(n+1)!%p?[A208922(n+1)]`
-/

namespace A220905.P17931466801934559534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A209697 (n + 1)).toNat : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A220905.P17931466801934559534

/-! ## A220905.P3031866270625328186

`A264954(lcm(A050205(n+2), A157243(n)))`
-/

namespace A220905.P3031866270625328186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (Int.lcm (A050205 (n + 2)) (A157243 n))

end

end A220905.P3031866270625328186

/-! ## A220905.P6752924934132028805

`A335452(A049610(n)+A003146(2*n+5))`
-/

namespace A220905.P6752924934132028805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A049610 n + A003146 (2 * n + 5)).toNat

end

end A220905.P6752924934132028805

/-!
# A220906: Thue-Morse sequence (A010060) with 0 replaced by 2 and 1 replaced by 3,1.

The programs for A220906, the canonical program `A220906.P5907792260730034554` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220906 has offset 0).

The definition of A220906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220906.P13360038510377838997

`Δ[char[comp[xor(n, 2*n)]+1+n]]+2`
-/

namespace A220906.P13360038510377838997
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A220906.P13360038510377838997

namespace A220906

/-- `Δ[char[comp[xor(n, 2*n)]+1+n]]+2` -/
def P13360038510377838997.Spec : Prop :=
  ∀ n, P13360038510377838997.a n = A220906 n

end A220906

/-! ## A220906.P9364282252426542888

`2-Δ[char[A026430(n)]]`
-/

namespace A220906.P9364282252426542888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A220906.P9364282252426542888

namespace A220906

/-- `2-Δ[char[A026430(n)]]` -/
def P9364282252426542888.Spec : Prop :=
  ∀ n, P9364282252426542888.a n = A220906 n

end A220906

/-! ## A220906.P5839338476639474692

`2-Δ[A285952(n+1)]`
-/

namespace A220906.P5839338476639474692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A220906.P5839338476639474692

namespace A220906

/-- `2-Δ[A285952(n+1)]` -/
def P5839338476639474692.Spec : Prop :=
  ∀ n, P5839338476639474692.a n = A220906 n

end A220906

/-! ## A220906.P17650590036927597863

`Δ[A230709(n+1)%2]+2`
-/

namespace A220906.P17650590036927597863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230709 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A220906.P17650590036927597863

namespace A220906

/-- `Δ[A230709(n+1)%2]+2` -/
def P17650590036927597863.Spec : Prop :=
  ∀ n, P17650590036927597863.a n = A220906 n

end A220906

/-! ## A220906.P5907792260730034554

`(A214210(n)+1+n)%3+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A220906

/-- `(A214210(n)+1+n)%3+1` -/
def P5907792260730034554.Spec : Prop :=
  ∀ n, P5907792260730034554.a n = A220906 n

theorem P5907792260730034554.correct : P5907792260730034554.Spec := by
  intro n
  simp only [A220906]

end A220906

/-! ## A220906.P542086999328699663

`A101673(record[A143579(n)])+1`
-/

namespace A220906.P542086999328699663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A220906.P542086999328699663

namespace A220906

/-- `A101673(record[A143579(n)])+1` -/
def P542086999328699663.Spec : Prop :=
  ∀ n, P542086999328699663.a n = A220906 n

end A220906

/-! ## A220906.P9151818840459898615

`A055881(record[A004488(or(1, n))])`
-/

namespace A220906.P9151818840459898615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220906.P9151818840459898615

namespace A220906

/-- `A055881(record[A004488(or(1, n))])` -/
def P9151818840459898615.Spec : Prop :=
  ∀ n, P9151818840459898615.a n = A220906 n

end A220906

/-! ## A220906.P14353876688592429958

`A277822(record[or(2, A143579(n))])`
-/

namespace A220906.P14353876688592429958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A143579 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220906.P14353876688592429958

namespace A220906

/-- `A277822(record[or(2, A143579(n))])` -/
def P14353876688592429958.Spec : Prop :=
  ∀ n, P14353876688592429958.a n = A220906 n

end A220906

/-! ## A220906.P1469312891543517194

`A277822(record[or(n, A036584(n))])`
-/

namespace A220906.P1469312891543517194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A036584 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220906.P1469312891543517194

namespace A220906

/-- `A277822(record[or(n, A036584(n))])` -/
def P1469312891543517194.Spec : Prop :=
  ∀ n, P1469312891543517194.a n = A220906 n

end A220906

/-! ## A220906.P8014850952937080073

`2-Δ[A254377(A047477(n+1))]`
-/

namespace A220906.P8014850952937080073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A047477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A220906.P8014850952937080073

namespace A220906

/-- `2-Δ[A254377(A047477(n+1))]` -/
def P8014850952937080073.Spec : Prop :=
  ∀ n, P8014850952937080073.a n = A220906 n

end A220906

/-! ## A220906.P9707744203691612362

`A055874(record[A004488(2*n+1)])`
-/

namespace A220906.P9707744203691612362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220906.P9707744203691612362

namespace A220906

/-- `A055874(record[A004488(2*n+1)])` -/
def P9707744203691612362.Spec : Prop :=
  ∀ n, P9707744203691612362.a n = A220906 n

end A220906

/-! ## A220906.P17200567082180679423

`A055881(record[A004488(2*n+1)])`
-/

namespace A220906.P17200567082180679423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220906.P17200567082180679423

namespace A220906

/-- `A055881(record[A004488(2*n+1)])` -/
def P17200567082180679423.Spec : Prop :=
  ∀ n, P17200567082180679423.a n = A220906 n

end A220906

/-! ## A220906.P2102400049165634241

`A277822(record[or(2, A000069(n+1))])`
-/

namespace A220906.P2102400049165634241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000069 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220906.P2102400049165634241

namespace A220906

/-- `A277822(record[or(2, A000069(n+1))])` -/
def P2102400049165634241.Spec : Prop :=
  ∀ n, P2102400049165634241.a n = A220906 n

end A220906

/-! ## A220906.P7012068191970772924

`A277822(record[or(2, A277812(n+1))])`
-/

namespace A220906.P7012068191970772924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A277812 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220906.P7012068191970772924

namespace A220906

/-- `A277822(record[or(2, A277812(n+1))])` -/
def P7012068191970772924.Spec : Prop :=
  ∀ n, P7012068191970772924.a n = A220906 n

end A220906

/-! ## A220906.P2630529462354911632

`2-Δ[A010060(A230709(n+2)-1)]`
-/

namespace A220906.P2630529462354911632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A230709 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A220906.P2630529462354911632

namespace A220906

/-- `2-Δ[A010060(A230709(n+2)-1)]` -/
def P2630529462354911632.Spec : Prop :=
  ∀ n, P2630529462354911632.a n = A220906 n

end A220906

/-! ## A220906.P12813164633932701393

`A006530(Δ[A014601(A230709(n+1))])`
-/

namespace A220906.P12813164633932701393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A230709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A220906.P12813164633932701393

namespace A220906

/-- `A006530(Δ[A014601(A230709(n+1))])` -/
def P12813164633932701393.Spec : Prop :=
  ∀ n, P12813164633932701393.a n = A220906 n

end A220906

/-! ## A220906.P9999900669479913423

`A014963(Δ[A014601(A230709(n+1))])`
-/

namespace A220906.P9999900669479913423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A230709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A220906.P9999900669479913423

namespace A220906

/-- `A014963(Δ[A014601(A230709(n+1))])` -/
def P9999900669479913423.Spec : Prop :=
  ∀ n, P9999900669479913423.a n = A220906 n

end A220906

/-! ## A220906.P17050605141851562825

`A020639(Δ[A014601(A230709(n+1))])`
-/

namespace A220906.P17050605141851562825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A230709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A220906.P17050605141851562825

namespace A220906

/-- `A020639(Δ[A014601(A230709(n+1))])` -/
def P17050605141851562825.Spec : Prop :=
  ∀ n, P17050605141851562825.a n = A220906 n

end A220906

/-! ## A220906.P902380126339966888

`A006530(Δ[A053438(A230709(n+1))])`
-/

namespace A220906.P902380126339966888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A230709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A220906.P902380126339966888

namespace A220906

/-- `A006530(Δ[A053438(A230709(n+1))])` -/
def P902380126339966888.Spec : Prop :=
  ∀ n, P902380126339966888.a n = A220906 n

end A220906

/-!
# A220907: a(n) = n*p(n)-spt(n) (= n*A000041(n) - A092269(n)).

The programs for A220907, there is no canonical definition to state claims against.
-/

/-! ## A220907.P3231498292705383769

`A066186(n+1)-A092269(n+1)`
-/

namespace A220907.P3231498292705383769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A092269 (n + 1)

end

end A220907.P3231498292705383769

/-! ## A220907.P16029071693541366611

`(n+1)*A000041(n+1)-A092269(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220907.P16029071693541366611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A092269 (n + 1)

end

end A220907.P16029071693541366611

/-! ## A220907.P13899658572884453128

`A220908(n+1)/2`
-/

namespace A220907.P13899658572884453128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220908 (n + 1) : ℚ) / 2

end

end A220907.P13899658572884453128

/-! ## A220907.P15933599849914366844

`A182724(n+1)-A215513(n+1)`
-/

namespace A220907.P15933599849914366844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182724 (n + 1) - A215513 (n + 1)

end

end A220907.P15933599849914366844

/-! ## A220907.P17806157539194567575

`A162329(n+1)-A268191(n+1)`
-/

namespace A220907.P17806157539194567575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 1) - A268191 (n + 1)

end

end A220907.P17806157539194567575

/-! ## A220907.P12510629230123648082

`A194552(n+1)-A195820(n+1)`
-/

namespace A220907.P12510629230123648082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (n + 1) - A195820 (n + 1)

end

end A220907.P12510629230123648082

/-! ## A220907.P1504462411077084141

`A066186(n+1)-(A195820(n+1)+A000070(n))`
-/

namespace A220907.P1504462411077084141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A195820 (n + 1) + A000070 n)

end

end A220907.P1504462411077084141

/-! ## A220907.P11420727833468228835

`A092309(n+1)+A213359(n+1)-A092269(n+1)`
-/

namespace A220907.P11420727833468228835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092309 (n + 1) + (A213359 (n + 1) - A092269 (n + 1))

end

end A220907.P11420727833468228835

/-! ## A220907.P4991081218810044819

`A066186(n+1)+A182629(n+1)-A182978(n+1)`
-/

namespace A220907.P4991081218810044819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A182629 (n + 1) - A182978 (n + 1))

end

end A220907.P4991081218810044819

/-! ## A220907.P6863441522826952075

`A194552(n+1)+A195821(n+1)-A138135(n+1)`
-/

namespace A220907.P6863441522826952075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (n + 1) + (A195821 (n + 1) - A138135 (n + 1))

end

end A220907.P6863441522826952075

/-!
# A220908: The second rank moment function N_2(n).

The programs for A220908, there is no canonical definition to state claims against.
-/

/-! ## A220908.P12171794817427814047

`2*(A066186(n+1)-A092269(n+1))`
-/

namespace A220908.P12171794817427814047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066186 (n + 1) - A092269 (n + 1))

end

end A220908.P12171794817427814047

/-! ## A220908.P3551127013027410049

`2*((n+1)*A000041(n+1)-A092269(n+1))`
-/

namespace A220908.P3551127013027410049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000041 (n + 1) - A092269 (n + 1))

end

end A220908.P3551127013027410049

/-! ## A220908.P681113662745232282

`2*A220907(n+1)`
-/

namespace A220908.P681113662745232282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220907 (n + 1)

end

end A220908.P681113662745232282

/-! ## A220908.P14117173146577527809

`A220909(n+1)-A211982(n+1)`
-/

namespace A220908.P14117173146577527809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220909 (n + 1) - A211982 (n + 1)

end

end A220908.P14117173146577527809

/-! ## A220908.P7689790837015732542

`A220909(n+1)-2*A092269(n+1)`
-/

namespace A220908.P7689790837015732542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220909 (n + 1) - 2 * A092269 (n + 1)

end

end A220908.P7689790837015732542

/-! ## A220908.P17320406001593003691

`2*(A182724(n+1)-A215513(n+1))`
-/

namespace A220908.P17320406001593003691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182724 (n + 1) - A215513 (n + 1))

end

end A220908.P17320406001593003691

/-! ## A220908.P1101015125715875232

`A066186(n+1)+A220907(n+1)-A092269(n+1)`
-/

namespace A220908.P1101015125715875232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A220907 (n + 1) - A092269 (n + 1))

end

end A220908.P1101015125715875232

/-! ## A220908.P1842962676505174377

`A066186(n+1)+A066186(n+1)-A211982(n+1)`
-/

namespace A220908.P1842962676505174377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A066186 (n + 1) - A211982 (n + 1))

end

end A220908.P1842962676505174377

/-! ## A220908.P6672084273328196749

`2*(A162329(n+1)-A268191(n+1))`
-/

namespace A220908.P6672084273328196749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A162329 (n + 1) - A268191 (n + 1))

end

end A220908.P6672084273328196749

/-! ## A220908.P12037506616452829196

`2*(A194552(n+1)-A195820(n+1))`
-/

namespace A220908.P12037506616452829196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194552 (n + 1) - A195820 (n + 1))

end

end A220908.P12037506616452829196

/-!
# A220909: The second crank moment function M_2(n).

The programs for A220909, there is no canonical definition to state claims against.
-/

/-! ## A220909.P9076937269635605644

`2*A066186(n)`
-/

namespace A220909.P9076937269635605644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066186 n

end

end A220909.P9076937269635605644

/-! ## A220909.P16977080046997918081

`n*A139582(n)`
-/

namespace A220909.P16977080046997918081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139582 n

end

end A220909.P16977080046997918081

/-! ## A220909.P17000600276185842427

`2*n*A000041(n)`
-/

namespace A220909.P17000600276185842427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A000041 n

end

end A220909.P17000600276185842427

/-! ## A220909.P759172028308611405

`n/2*A299474(n)`
-/

namespace A220909.P759172028308611405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A299474 n : ℚ)

end

end A220909.P759172028308611405

/-! ## A220909.P12872318732799314330

`2*n*∑[A002865(n)]`
-/

namespace A220909.P12872318732799314330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A220909.P12872318732799314330

/-! ## A220909.P5971348208792298971

`2*n*∑[A085811(n+3)]`
-/

namespace A220909.P5971348208792298971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220909.P5971348208792298971

/-! ## A220909.P8352925960613296840

`A000041(n)*A005843(n)`
-/

namespace A220909.P8352925960613296840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A005843 n

end

end A220909.P8352925960613296840

/-! ## A220909.P306880272310721894

`∑[A002865(n)]*A005843(n)`
-/

namespace A220909.P306880272310721894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005843 n

end

end A220909.P306880272310721894

/-! ## A220909.P5729680692073533118

`(A052810(n)-1)*A004277(n)`
-/

namespace A220909.P5729680692073533118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052810 n - 1) * A004277 n

end

end A220909.P5729680692073533118

/-! ## A220909.P140555375360233725

`2*(A194544(n)+A103628(n))`
-/

namespace A220909.P140555375360233725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194544 n + A103628 n)

end

end A220909.P140555375360233725

/-! ## A220909.P3149823336869193100

`2*(A163986(n)+A163985(n))`
-/

namespace A220909.P3149823336869193100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163986 n + A163985 n)

end

end A220909.P3149823336869193100

/-! ## A220909.P10334677824106154444

`n*(A084376(n)+A002865(n))`
-/

namespace A220909.P10334677824106154444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A084376 n + A002865 n)

end

end A220909.P10334677824106154444

/-! ## A220909.P17243163138819102994

`n*(A000070(n)-A058884(n))`
-/

namespace A220909.P17243163138819102994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000070 n - A058884 n)

end

end A220909.P17243163138819102994

/-! ## A220909.P5709443432343187313

`n*(A096967(n)-A282893(n))`
-/

namespace A220909.P5709443432343187313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A096967 n - A282893 n)

end

end A220909.P5709443432343187313

/-! ## A220909.P13270891333773499422

`(A000094(n+1)+n)*A004277(n)`
-/

namespace A220909.P13270891333773499422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000094 (n + 1) + (n : ℤ)) * A004277 n

end

end A220909.P13270891333773499422

/-! ## A220909.P2048319078378389174

`2*n*(A018783(n)+A000837(n))`
-/

namespace A220909.P2048319078378389174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A018783 n + A000837 n))

end

end A220909.P2048319078378389174

/-! ## A220909.P12596098421047699713

`2*n*(A039900(n)+A003106(n))`
-/

namespace A220909.P12596098421047699713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A039900 n + A003106 n))

end

end A220909.P12596098421047699713

/-! ## A220909.P15308677703526221987

`2*n*(A295341(n)+A000726(n))`
-/

namespace A220909.P15308677703526221987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A295341 n + A000726 n))

end

end A220909.P15308677703526221987

/-! ## A220909.P7661879243114774254

`2*(A182707(n+1)-A182709(n+1))`
-/

namespace A220909.P7661879243114774254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182707 (n + 1) - A182709 (n + 1))

end

end A220909.P7661879243114774254

/-! ## A220909.P7109866773052573706

`2*(∑[A138879(n+1)]-A138879(n+1))`
-/

namespace A220909.P7109866773052573706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A138879 (n + 1))

end

end A220909.P7109866773052573706

/-!
# A220910: Matchings avoiding the pattern 231.

The programs for A220910, there is no canonical definition to state claims against.
-/

/-! ## A220910.P8353066947028907294

`A246322(∑[n])`
-/

namespace A220910.P8353066947028907294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220910.P8353066947028907294

/-! ## A220910.P9622727328330204853

`and(-1, A246322(A000217(n)))`
-/

namespace A220910.P9622727328330204853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A246322 (A000217 n).toNat)

end

end A220910.P9622727328330204853

/-! ## A220910.P2098486232631102691

`A246322(A000217(n))+A011731(n)`
-/

namespace A220910.P2098486232631102691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246322 (A000217 n).toNat + A011731 n

end

end A220910.P2098486232631102691

/-! ## A220910.P13026933077910682553

`A246322(A000217(n))+A025437(n)`
-/

namespace A220910.P13026933077910682553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246322 (A000217 n).toNat + A025437 n

end

end A220910.P13026933077910682553

/-!
# A220911: Matchings avoiding the pattern 132.

The programs for A220911, there is no canonical definition to state claims against.
-/

/-! ## A220911.P16478274541703753990

`∑[∑[A120450(A065097(n))]]+1`
-/

namespace A220911.P16478274541703753990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120450 (A065097 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A220911.P16478274541703753990

/-! ## A220911.P17705600605301616201

`or(A005700(n), A213719(floor(10^((n+1)/2)/3)))`
-/

namespace A220911.P17705600605301616201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005700 n) (A213719 ⌊(10 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) / 3⌋.toNat)

end

end A220911.P17705600605301616201

/-!
# A220912: Number of partitions of [n] avoiding the pattern 231.

The programs for A220912, there is no canonical definition to state claims against.
-/

/-! ## A220912.P1907498789742554621

`A108304(n)-A028303(A309861(n))`
-/

namespace A220912.P1907498789742554621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108304 n - A028303 (A309861 n).toNat

end

end A220912.P1907498789742554621

/-! ## A220912.P6734753129970630017

`A220913(n)-A028303(A309861(n))`
-/

namespace A220912.P6734753129970630017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 n - A028303 (A309861 n).toNat

end

end A220912.P6734753129970630017

/-! ## A220912.P16903042064636169664

`A108304(n)-A120659(A120646(n+1))`
-/

namespace A220912.P16903042064636169664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108304 n - A120659 (A120646 (n + 1)).toNat

end

end A220912.P16903042064636169664

/-! ## A220912.P10901728548816350243

`A220913(n)-A120659(A120646(n+1))`
-/

namespace A220912.P10901728548816350243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220913 n - A120659 (A120646 (n + 1)).toNat

end

end A220912.P10901728548816350243

/-!
# A220913: Number of partitions of [n] avoiding the pattern 132.

The programs for A220913, there is no canonical definition to state claims against.
-/

/-! ## A220913.P12710217222898144508

`A210717(A091232(n))+A108304(n)`
-/

namespace A220913.P12710217222898144508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (A091232 n).toNat + A108304 n

end

end A220913.P12710217222898144508

/-! ## A220913.P13235026409168861250

`A108304(A002998(n))+A035041(n)`
-/

namespace A220913.P13235026409168861250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108304 (A002998 n).toNat + A035041 n

end

end A220913.P13235026409168861250

/-! ## A220913.P16990827454111417561

`A108304(A002998(n))+A036640(n)`
-/

namespace A220913.P16990827454111417561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108304 (A002998 n).toNat + A036640 n

end

end A220913.P16990827454111417561

/-! ## A220913.P11599359287928951920

`A108304(A002998(n))+A102683(n)`
-/

namespace A220913.P11599359287928951920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108304 (A002998 n).toNat + A102683 n

end

end A220913.P11599359287928951920

/-! ## A220913.P15557271538772997747

`A185284(A000045(n))+A108304(n)`
-/

namespace A220913.P15557271538772997747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000045 n).toNat + A108304 n

end

end A220913.P15557271538772997747

/-!
# A220914: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A220914, there is no canonical definition to state claims against.
-/

/-! ## A220914.P17394135912740328786

`A220916(∑[n+3]+1)`
-/

namespace A220914.P17394135912740328786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220914.P17394135912740328786

/-!
# A220915: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A220915, there is no canonical definition to state claims against.
-/

/-! ## A220915.P16233488764903553401

`A220916(∑[n+4]+3)`
-/

namespace A220915.P16233488764903553401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220915.P16233488764903553401

/-! ## A220915.P13140435520259093256

`A220916(A155212(n)+5)+A151949(n)`
-/

namespace A220915.P13140435520259093256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (A155212 n + 5).toNat + A151949 n

end

end A220915.P13140435520259093256

/-!
# A220916: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A220916, there is no canonical definition to state claims against.
-/

/-! ## A220916.P7926384132622051957

`A221632(n+1)-A046665(A157221(n))`
-/

namespace A220916.P7926384132622051957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (n + 1) - A046665 (A157221 n).toNat

end

end A220916.P7926384132622051957

/-! ## A220916.P10899815590448897206

`A221632(∏{p}[n+1, lcm(#, n+1)])`
-/

namespace A220916.P10899815590448897206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 (∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1))

end

end A220916.P10899815590448897206

/-! ## A220916.P18113048754539631129

`A221632((n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A220916.P18113048754539631129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 ((n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A220916.P18113048754539631129

/-! ## A220916.P2260993099709459156

`A221632(∏{p}[n+1, #]^∑{e}[n+1, #])`
-/

namespace A220916.P2260993099709459156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221632 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A220916.P2260993099709459156

/-!
# A220917: Equals one maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 2Xn array.

The programs for A220917, there is no canonical definition to state claims against.
-/

/-! ## A220917.P3268483318362745996

`A220916(∑[n+1]+2)`
-/

namespace A220917.P3268483318362745996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220917.P3268483318362745996

/-! ## A220917.P5511104428868867271

`record[A220916(A133263(∑{e}[n, #]))]`
-/

namespace A220917.P5511104428868867271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220917.P5511104428868867271

/-! ## A220917.P2712968480134835191

`record[A220916(A133263(∑{digits}[n, #]))]`
-/

namespace A220917.P2712968480134835191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220917.P2712968480134835191

/-! ## A220917.P10313960335498958595

`record[gcd(A097230(n), A220916(n+1))]`
-/

namespace A220917.P10313960335498958595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220916 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220917.P10313960335498958595

/-! ## A220917.P1110935247812006601

`record[gcd(A061199(n), A220916(n+2))]`
-/

namespace A220917.P1110935247812006601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061199 n) (A220916 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220917.P1110935247812006601

/-!
# A220918: Equals one maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A220918, there is no canonical definition to state claims against.
-/

/-! ## A220918.P6997346955414316759

`A220916(∑[n+2]+4)`
-/

namespace A220918.P6997346955414316759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220918.P6997346955414316759

/-! ## A220918.P15635369970298756136

`record[gcd(A220916(n+1), A303913(n))]`
-/

namespace A220918.P15635369970298756136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220916 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220918.P15635369970298756136

/-! ## A220918.P1012684053252962468

`record[gcd(A220916(n+2), A290317(n))]`
-/

namespace A220918.P1012684053252962468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220916 (n + 2)) (A290317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220918.P1012684053252962468

/-! ## A220918.P17490680203641428276

`record[gcd(A145878(n), A220916(n+5))]`
-/

namespace A220918.P17490680203641428276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145878 n) (A220916 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220918.P17490680203641428276

/-!
# A220919: Equals one maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A220919, there is no canonical definition to state claims against.
-/

/-! ## A220919.P15049203049491555300

`A220916(∑[n+3]+7)`
-/

namespace A220919.P15049203049491555300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220916 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220919.P15049203049491555300

/-!
# A220920: Majority value maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A220920, there is no canonical definition to state claims against.
-/

/-! ## A220920.P3235771936642531721

`A220922(∑[n+3]+1)`
-/

namespace A220920.P3235771936642531721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220920.P3235771936642531721

/-! ## A220920.P3241603104002042855

`A220993(∑[n+3]+1)`
-/

namespace A220920.P3241603104002042855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220920.P3241603104002042855

/-! ## A220920.P385380456041737550

`record[A220922(A198464(n+1))]`
-/

namespace A220920.P385380456041737550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220920.P385380456041737550

/-!
# A220921: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A220921, there is no canonical definition to state claims against.
-/

/-! ## A220921.P17355141716905201320

`A220922(A141214(n+1))`
-/

namespace A220921.P17355141716905201320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (A141214 (n + 1)).toNat

end

end A220921.P17355141716905201320

/-! ## A220921.P6776973298884232368

`A220922(A055998(n+2))`
-/

namespace A220921.P6776973298884232368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (A055998 (n + 2)).toNat

end

end A220921.P6776973298884232368

/-!
# A220922: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A220922, there is no canonical definition to state claims against.
-/

/-! ## A220922.P16837693038033970771

`A220993(n+1)-A080224(A316261(3*(n+1)))`
-/

namespace A220922.P16837693038033970771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (n + 1) - A080224 (A316261 (3 * (n + 1))).toNat

end

end A220922.P16837693038033970771

/-! ## A220922.P18386733658580559297

`A220993(n+1)-A002262(A083961(n+1))`
-/

namespace A220922.P18386733658580559297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (n + 1) - A002262 (A083961 (n + 1)).toNat

end

end A220922.P18386733658580559297

/-! ## A220922.P7278478231713017409

`A220993(n+1)-A347635(A001987(n+1))`
-/

namespace A220922.P7278478231713017409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (n + 1) - A347635 (A001987 (n + 1)).toNat

end

end A220922.P7278478231713017409

/-! ## A220922.P4980459544039643777

`xor(A220993(n+1), A343380(A090452(n+1)))`
-/

namespace A220922.P4980459544039643777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A220993 (n + 1)) (A343380 (A090452 (n + 1)).toNat)

end

end A220922.P4980459544039643777

/-! ## A220922.P3832141890103899711

`xor(A055010(A185037(2*n+3)), A220993(n+1))`
-/

namespace A220922.P3832141890103899711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055010 (A185037 (2 * n + 3)).toNat) (A220993 (n + 1))

end

end A220922.P3832141890103899711

/-!
# A220923: Majority value maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 2Xn array.

The programs for A220923, there is no canonical definition to state claims against.
-/

/-! ## A220923.P11628182091252425466

`A220922(∑[n+1]+2)`
-/

namespace A220923.P11628182091252425466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220923.P11628182091252425466

/-! ## A220923.P4394111580157881203

`record[ratio[A220922(A080036(n))]]`
-/

namespace A220923.P4394111580157881203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220923.P4394111580157881203

/-! ## A220923.P11921291485249321016

`record[A220922(gcd(n, A303913(n)))]`
-/

namespace A220923.P11921291485249321016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220923.P11921291485249321016

/-! ## A220923.P10450890861602695129

`record[A220922(n+1)/A036073(n)]`
-/

namespace A220923.P10450890861602695129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220922 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220923.P10450890861602695129

/-! ## A220923.P3159967349013178943

`record[gcd(A078924(n), A220922(n+1))]`
-/

namespace A220923.P3159967349013178943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078924 n) (A220922 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220923.P3159967349013178943

/-!
# A220924: Majority value maps: number of 3 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 3 X n array.

The programs for A220924, there is no canonical definition to state claims against.
-/

/-! ## A220924.P2023190793353949039

`A220922(∑[n+2]+4)`
-/

namespace A220924.P2023190793353949039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220924.P2023190793353949039

/-! ## A220924.P18242917258115178651

`record[gcd(A220922(n+1), A303913(n))]`
-/

namespace A220924.P18242917258115178651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220922 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220924.P18242917258115178651

/-! ## A220924.P12449376585670105583

`record[gcd(A220922(n+4), A265609(n))]`
-/

namespace A220924.P12449376585670105583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220922 (n + 4)) (A265609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220924.P12449376585670105583

/-! ## A220924.P8894746920897295867

`lcm((-1)^n, A220922(A167614(n+1)))`
-/

namespace A220924.P8894746920897295867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A220922 (A167614 (n + 1)).toNat)

end

end A220924.P8894746920897295867

/-!
# A220925: Majority value maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A220925, there is no canonical definition to state claims against.
-/

/-! ## A220925.P10440384160572185043

`A220922(∑[n+3]+7)`
-/

namespace A220925.P10440384160572185043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220925.P10440384160572185043

/-!
# A220926: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X 2 array.

The programs for A220926, there is no canonical definition to state claims against.
-/

/-! ## A220926.P582168837093813268

`A220931(∑[n+1]+2)`
-/

namespace A220926.P582168837093813268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220926.P582168837093813268

/-! ## A220926.P7360834521473031649

`record[A220931(n+1)/A156366(n)]`
-/

namespace A220926.P7360834521473031649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220931 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220926.P7360834521473031649

/-! ## A220926.P12553925581316475217

`record[A220931(n+1)/A162975(n)]`
-/

namespace A220926.P12553925581316475217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220931 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220926.P12553925581316475217

/-! ## A220926.P12522025925942659852

`record[A115359(n)*A220931(n+3)]`
-/

namespace A220926.P12522025925942659852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A220931 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220926.P12522025925942659852

/-! ## A220926.P1038270414431018132

`record[gcd(A220931(n+2), A271439(n))]`
-/

namespace A220926.P1038270414431018132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220931 (n + 2)) (A271439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220926.P1038270414431018132

/-!
# A220927: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX3 array.

The programs for A220927, there is no canonical definition to state claims against.
-/

/-! ## A220927.P9545125105821675659

`A220931(∑[n+2]+4)`
-/

namespace A220927.P9545125105821675659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220927.P9545125105821675659

/-! ## A220927.P10822253253461813023

`and(-1, A220931(A167614(n+1)))`
-/

namespace A220927.P10822253253461813023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220931 (A167614 (n + 1)).toNat)

end

end A220927.P10822253253461813023

/-! ## A220927.P10210610509679193140

`A220931(A167614(n+1))+A006927(n)`
-/

namespace A220927.P10210610509679193140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A167614 (n + 1)).toNat + A006927 n

end

end A220927.P10210610509679193140

/-! ## A220927.P7445458025894734771

`A220931(A167614(n+1))+A011731(n)`
-/

namespace A220927.P7445458025894734771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A167614 (n + 1)).toNat + A011731 n

end

end A220927.P7445458025894734771

/-! ## A220927.P1777390420939012282

`A220931(A167614(n+1))+A025437(n)`
-/

namespace A220927.P1777390420939012282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A167614 (n + 1)).toNat + A025437 n

end

end A220927.P1777390420939012282

/-!
# A220928: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX4 array.

The programs for A220928, there is no canonical definition to state claims against.
-/

/-! ## A220928.P3459740386813801636

`A220931(∑[n+3]+7)`
-/

namespace A220928.P3459740386813801636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220928.P3459740386813801636

/-! ## A220928.P13486639473624751387

`A220931(A055999(n)+10)%A220939(n+3)`
-/

namespace A220928.P13486639473624751387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220931 (A055999 n + 10).toNat) (A220939 (n + 3))

end

end A220928.P13486639473624751387

/-! ## A220928.P4747807779045975265

`A039996(A002175(n)+1)*A220931(A141214(n)+7)`
-/

namespace A220928.P4747807779045975265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A002175 n + 1).toNat * A220931 (A141214 n + 7).toNat

end

end A220928.P4747807779045975265

/-! ## A220928.P5526503273685392380

`A039996(A002175(n)+1)*A220931(A055999(n)+10)`
-/

namespace A220928.P5526503273685392380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A002175 n + 1).toNat * A220931 (A055999 n + 10).toNat

end

end A220928.P5526503273685392380

/-! ## A220928.P2173989377612889243

`A039996(A002175(n)+1)*A220931(A167614(n+2)+1)`
-/

namespace A220928.P2173989377612889243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A002175 n + 1).toNat * A220931 (A167614 (n + 2) + 1).toNat

end

end A220928.P2173989377612889243

/-!
# A220929: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX5 array.

The programs for A220929, there is no canonical definition to state claims against.
-/

/-! ## A220929.P6927529589467440412

`A220931(A374005(n+1))`
-/

namespace A220929.P6927529589467440412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A374005 (n + 1)).toNat

end

end A220929.P6927529589467440412

/-! ## A220929.P6425744290602010235

`A220931(A167499(n+3))`
-/

namespace A220929.P6425744290602010235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A167499 (n + 3)).toNat

end

end A220929.P6425744290602010235

/-! ## A220929.P15279868289749796595

`A220931(A155212(n)+13)`
-/

namespace A220929.P15279868289749796595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A155212 n + 13).toNat

end

end A220929.P15279868289749796595

/-! ## A220929.P17354078442890257854

`A220931(A056000(n)+15)`
-/

namespace A220929.P17354078442890257854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A056000 n + 15).toNat

end

end A220929.P17354078442890257854

/-! ## A220929.P14647488713860669929

`A220931(eq[7, A066657(n)])`
-/

namespace A220929.P14647488713860669929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220929.P14647488713860669929

/-!
# A220930: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX6 array.

The programs for A220930, there is no canonical definition to state claims against.
-/

/-! ## A220930.P4214052922203452340

`A220931(A374007(n+1))`
-/

namespace A220930.P4214052922203452340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A374007 (n + 1)).toNat

end

end A220930.P4214052922203452340

/-! ## A220930.P14568741086425279273

`A220931(A166136(n+4))`
-/

namespace A220930.P14568741086425279273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A166136 (n + 4)).toNat

end

end A220930.P14568741086425279273

/-! ## A220930.P3521004218404887106

`A220931(A056115(n)+21)`
-/

namespace A220930.P3521004218404887106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A056115 n + 21).toNat

end

end A220930.P3521004218404887106

/-! ## A220930.P1905792628796143451

`A220931(A000096(n+4)+7)`
-/

namespace A220930.P1905792628796143451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220931 (A000096 (n + 4) + 7).toNat

end

end A220930.P1905792628796143451

/-!
# A220931: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nXk array.

The programs for A220931, there is no canonical definition to state claims against.
-/

/-! ## A220931.P2228396296539535539

`A072089(A219373(n+1))`
-/

namespace A220931.P2228396296539535539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A219373 (n + 1)).toNat

end

end A220931.P2228396296539535539

/-! ## A220931.P14076215385702864563

`A072088(A221828(n+1)+A220204(n+1))`
-/

namespace A220931.P14076215385702864563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A221828 (n + 1) + A220204 (n + 1)).toNat

end

end A220931.P14076215385702864563

/-!
# A220932: Equals two maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..2 n X 3 array.

The programs for A220932, the canonical program `A220932.P14935077308771509124` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220932 has offset 1).

The definition of A220932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220932.P17815845867331120655

`ogf((2+6x)/(1-5x-6x^2))`
-/

namespace A220932.P17815845867331120655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6] [1, -5, -6] n

end

end A220932.P17815845867331120655

namespace A220932

/-- `ogf((2+6x)/(1-5x-6x^2))` -/
def P17815845867331120655.Spec : Prop :=
  ∀ n, P17815845867331120655.a n = A220932 (n + 1)

end A220932

/-! ## A220932.P14935077308771509124

`3*6^n-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220932

/-- `3*6^n-a(n-1)` -/
def P14935077308771509124.Spec : Prop :=
  ∀ n, P14935077308771509124.a n = A220932 (n + 1)

theorem P14935077308771509124.correct : P14935077308771509124.Spec := by
  intro n
  simp only [A220932, Nat.add_sub_cancel]

end A220932

/-! ## A220932.P17984163111388056016

`floor(6^(n+1)/2-a(n-1))` with `a(0)=2`
-/

namespace A220932.P17984163111388056016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(6 ^ (n + 1) : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A220932.P17984163111388056016

namespace A220932

/-- `floor(6^(n+1)/2-a(n-1))` -/
def P17984163111388056016.Spec : Prop :=
  ∀ n, P17984163111388056016.a n = A220932 (n + 1)

end A220932

/-! ## A220932.P8959029185424938244

`5*a(n-1)+6*a(n-2)` with `a(0)=2, a(1)=16`
-/

namespace A220932.P8959029185424938244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 16] fun n a =>
  5 * a (n - 1) + 6 * a (n - 2)

end

end A220932.P8959029185424938244

namespace A220932

/-- `5*a(n-1)+6*a(n-2)` -/
def P8959029185424938244.Spec : Prop :=
  ∀ n, (P8959029185424938244.a n : ℤ) = A220932 (n + 1)

end A220932

/-! ## A220932.P14574835898062805204

`Δ[∑[6^n]+1-a(n-1)]/2` with `a(0)=2`
-/

namespace A220932.P14574835898062805204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A220932.P14574835898062805204

namespace A220932

/-- `Δ[∑[6^n]+1-a(n-1)]/2` -/
def P14574835898062805204.Spec : Prop :=
  ∀ n, P14574835898062805204.a n = (A220932 (n + 1) : ℚ)

end A220932

/-! ## A220932.P608109835483983565

`A215878(2*n+1)/5`
-/

namespace A220932.P608109835483983565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215878 (2 * n + 1) : ℚ) / 5

end

end A220932.P608109835483983565

namespace A220932

/-- `A215878(2*n+1)/5` -/
def P608109835483983565.Spec : Prop :=
  ∀ n, P608109835483983565.a n = (A220932 (n + 1) : ℚ)

end A220932

/-! ## A220932.P6071765722122652636

`abs(1-3*A014987(n+1))`
-/

namespace A220932.P6071765722122652636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 3 * A014987 (n + 1)|

end

end A220932.P6071765722122652636

namespace A220932

/-- `abs(1-3*A014987(n+1))` -/
def P6071765722122652636.Spec : Prop :=
  ∀ n, P6071765722122652636.a n = A220932 (n + 1)

end A220932

/-! ## A220932.P1535115795404349733

`A092167(n+1)-lcm(2, ∑[(-6)^n])`
-/

namespace A220932.P1535115795404349733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-6) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092167 (n + 1) - (Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A220932.P1535115795404349733

namespace A220932

/-- `A092167(n+1)-lcm(2, ∑[(-6)^n])` -/
def P1535115795404349733.Spec : Prop :=
  ∀ n, P1535115795404349733.a n = A220932 (n + 1)

end A220932

/-! ## A220932.P2017459753611291952

`Δ[Δ[A015540(n)]]-A000400(n)`
-/

namespace A220932.P2017459753611291952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000400 n

end

end A220932.P2017459753611291952

namespace A220932

/-- `Δ[Δ[A015540(n)]]-A000400(n)` -/
def P2017459753611291952.Spec : Prop :=
  ∀ n, P2017459753611291952.a n = A220932 (n + 1)

end A220932

/-! ## A220932.P10846324219268459723

`Δ[Δ[A015540(n)]-A003464(n)]`
-/

namespace A220932.P10846324219268459723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220932.P10846324219268459723

namespace A220932

/-- `Δ[Δ[A015540(n)]-A003464(n)]` -/
def P10846324219268459723.Spec : Prop :=
  ∀ n, P10846324219268459723.a n = A220932 (n + 1)

end A220932

/-! ## A220932.P11180804140526506985

`Δ[Δ[A015540(n)]-A047851(n)]`
-/

namespace A220932.P11180804140526506985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A047851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220932.P11180804140526506985

namespace A220932

/-- `Δ[Δ[A015540(n)]-A047851(n)]` -/
def P11180804140526506985.Spec : Prop :=
  ∀ n, P11180804140526506985.a n = A220932 (n + 1)

end A220932

/-! ## A220932.P18012642584913549154

`A109501(n+1)+2*A015540(n+1)`
-/

namespace A220932.P18012642584913549154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109501 (n + 1) + 2 * A015540 (n + 1)

end

end A220932.P18012642584913549154

namespace A220932

/-- `A109501(n+1)+2*A015540(n+1)` -/
def P18012642584913549154.Spec : Prop :=
  ∀ n, P18012642584913549154.a n = A220932 (n + 1)

end A220932

/-!
# A220933: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A220933, there is no canonical definition to state claims against.
-/

/-! ## A220933.P11078418709021693719

`A221290(∑[n+4]+3)`
-/

namespace A220933.P11078418709021693719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220933.P11078418709021693719

/-! ## A220933.P16998109405437039990

`A221290(A141214(n+1))%A017489(n)`
-/

namespace A220933.P16998109405437039990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221290 (A141214 (n + 1)).toNat) (A017489 n)

end

end A220933.P16998109405437039990

/-!
# A220934: Equals two maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A220934, there is no canonical definition to state claims against.
-/

/-! ## A220934.P3658145001453800556

`A220935(Δ[A264443(n)])`
-/

namespace A220934.P3658145001453800556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (f1 (n + 1) - f1 n).toNat

end

end A220934.P3658145001453800556

/-!
# A220936: Equals two maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..2 2 X n array.

The programs for A220936, there is no canonical definition to state claims against.
-/

/-! ## A220936.P16384050577915196270

`A221290(∑[n+1]+2)`
-/

namespace A220936.P16384050577915196270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220936.P16384050577915196270

/-! ## A220936.P2071847166173661252

`record[A010054(n)*A221290(n+2)]`
-/

namespace A220936.P2071847166173661252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220936.P2071847166173661252

/-! ## A220936.P4558297387955356881

`record[A221290(n+1)/A047921(n)]`
-/

namespace A220936.P4558297387955356881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221290 (n + 1) : ℚ) / (A047921 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220936.P4558297387955356881

/-! ## A220936.P6445913479497542217

`record[A221290(n+2)*A306629(n)]`
-/

namespace A220936.P6445913479497542217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (n + 2) * A306629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220936.P6445913479497542217

/-! ## A220936.P2925350363610700300

`record[A023531(n)*A221290(n+3)]`
-/

namespace A220936.P2925350363610700300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A221290 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220936.P2925350363610700300

/-!
# A220937: Equals two maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A220937, there is no canonical definition to state claims against.
-/

/-! ## A220937.P14628676481549835232

`A220935(∑[n+2]+4)`
-/

namespace A220937.P14628676481549835232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220937.P14628676481549835232

/-! ## A220937.P13273101258134405038

`record[gcd(A220935(n+1), A303913(n))]`
-/

namespace A220937.P13273101258134405038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220935 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220937.P13273101258134405038

/-! ## A220937.P17592186545441362399

`A220935(A167614(n+1))^floor(n^(1/3))`
-/

namespace A220937.P17592186545441362399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220935 (A167614 (n + 1)).toNat : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ : ℤ)

end

end A220937.P17592186545441362399

/-! ## A220937.P9306168332357839261

`A220935(A167614(n+1))+A011736(n)`
-/

namespace A220937.P9306168332357839261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (A167614 (n + 1)).toNat + A011736 n

end

end A220937.P9306168332357839261

/-!
# A220938: Equals two maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A220938, there is no canonical definition to state claims against.
-/

/-! ## A220938.P15044734901979352605

`A220935(A141214(n)+7)`
-/

namespace A220938.P15044734901979352605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (A141214 n + 7).toNat

end

end A220938.P15044734901979352605

/-! ## A220938.P5938933157585117138

`A220935(A052905(n)+9)`
-/

namespace A220938.P5938933157585117138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (A052905 n + 9).toNat

end

end A220938.P5938933157585117138

/-! ## A220938.P7298401970357922454

`A220935(A055999(n)+10)`
-/

namespace A220938.P7298401970357922454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (A055999 n + 10).toNat

end

end A220938.P7298401970357922454

/-!
# A220939: Number of n X 2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor.

The programs for A220939, there is no canonical definition to state claims against.
-/

/-! ## A220939.P13945153949621747897

`record[gcd(A035457(n), A222549(n+1))]`
-/

namespace A220939.P13945153949621747897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035457 n) (A222549 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220939.P13945153949621747897

/-! ## A220939.P7235485419099597271

`record[and(A033999(n), A222549(n+1))]`
-/

namespace A220939.P7235485419099597271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A222549 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220939.P7235485419099597271

/-! ## A220939.P7003317395171198179

`record[and(A222549(n+1), A280193(n))]`
-/

namespace A220939.P7003317395171198179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222549 (n + 1)) (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220939.P7003317395171198179

/-! ## A220939.P5224598737506994915

`record[A222549(n+1)^Δ[A008619(n)]]`
-/

namespace A220939.P5224598737506994915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222549 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220939.P5224598737506994915

/-! ## A220939.P17990507209923267811

`gcd(A000038(n), A222549(A004277(n)))`
-/

namespace A220939.P17990507209923267811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222549 (A004277 n).toNat)

end

end A220939.P17990507209923267811

/-!
# A220940: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor.

The programs for A220940, there is no canonical definition to state claims against.
-/

/-! ## A220940.P13045871384381842817

`A220943(∑[n+2]+4)`
-/

namespace A220940.P13045871384381842817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220943 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220940.P13045871384381842817

/-! ## A220940.P17462704628784136226

`A220943(A167614(n+1))+A185284(n)`
-/

namespace A220940.P17462704628784136226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220943 (A167614 (n + 1)).toNat + A185284 n

end

end A220940.P17462704628784136226

/-! ## A220940.P17771137287426986937

`A264668(n)+A220943(A167614(n+1))`
-/

namespace A220940.P17771137287426986937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A220943 (A167614 (n + 1)).toNat

end

end A220940.P17771137287426986937

/-! ## A220940.P8528276531504925462

`gcd(A000038(n), A220943(A167614(n+1)))`
-/

namespace A220940.P8528276531504925462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A220943 (A167614 (n + 1)).toNat)

end

end A220940.P8528276531504925462

/-! ## A220940.P18420975825339210239

`lcm(A033999(n), A220943(A167614(n+1)))`
-/

namespace A220940.P18420975825339210239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A220943 (A167614 (n + 1)).toNat)

end

end A220940.P18420975825339210239

/-!
# A220941: Number of n X 4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor.

The programs for A220941, there is no canonical definition to state claims against.
-/

/-! ## A220941.P18445454019111010468

`A220943(∑[n+3]+7)`
-/

namespace A220941.P18445454019111010468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220943 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220941.P18445454019111010468

/-! ## A220941.P13342509117293083070

`A220943(A000217(n+3)+4)*A261019(n+1)`
-/

namespace A220941.P13342509117293083070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220943 (A000217 (n + 3) + 4).toNat * A261019 (n + 1)

end

end A220941.P13342509117293083070

/-! ## A220941.P7053678176204898226

`A341882(n+1)+A220943(A055998(n+2))`
-/

namespace A220941.P7053678176204898226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341882 (n + 1 + 64) + A220943 (A055998 (n + 2)).toNat

end

end A220941.P7053678176204898226

/-!
# A220942: Number of nX5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor.

The programs for A220942, there is no canonical definition to state claims against.
-/

/-! ## A220942.P8475347501856234217

`A220943(A374005(n+1))`
-/

namespace A220942.P8475347501856234217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220943 (A374005 (n + 1)).toNat

end

end A220942.P8475347501856234217

/-! ## A220942.P13286856792637194882

`A220943(Δ[A264443(n)])`
-/

namespace A220942.P13286856792637194882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220943 (f1 (n + 1) - f1 n).toNat

end

end A220942.P13286856792637194882

/-!
# A220944: Expansion of (1+3*x+5*x^2-x^3)/((1-x^2)*(1-3*x^2)).

The programs for A220944, the canonical program `A220944.P9188669809391013596` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220944 has offset 0).

The definition of A220944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+5x^2-x^3)/(1-4x^2+3x^4))` (program `A220944.P9188669809391013596`, by `A220944.P9188669809391013596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220944.P9188669809391013596

`ogf((1+3x+5x^2-x^3)/(1-4x^2+3x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220944

/-- `ogf((1+3x+5x^2-x^3)/(1-4x^2+3x^4))` -/
def P9188669809391013596.Spec : Prop :=
  ∀ n, P9188669809391013596.a n = A220944 n

theorem P9188669809391013596.correct : P9188669809391013596.Spec := by
  intro n
  simp only [A220944]

end A220944

/-! ## A220944.P4143675185320238981

`4*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=11`
-/

namespace A220944.P4143675185320238981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 11] fun n a =>
  4 * a (n - 2) - 3 * a (n - 4)

end

end A220944.P4143675185320238981

namespace A220944

/-- `4*a(n-2)-3*a(n-4)` -/
def P4143675185320238981.Spec : Prop :=
  ∀ n, P4143675185320238981.a n = A220944 n

end A220944

/-! ## A220944.P2368357358531904398

`gcd(3, n%2)*or(2, a(n-1))` with `a(0)=1`
-/

namespace A220944.P2368357358531904398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 3 (n % 2) * Nat.lor 2 (a (n - 1))

end

end A220944.P2368357358531904398

namespace A220944

/-- `gcd(3, n%2)*or(2, a(n-1))` -/
def P2368357358531904398.Spec : Prop :=
  ∀ n, (P2368357358531904398.a n : ℤ) = A220944 n

end A220944

/-! ## A220944.P16984409662427553642

`xor(2, 3*a(n-2)+1)+3` with `a(0)=1, a(1)=3`
-/

namespace A220944.P16984409662427553642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 2 (3 * a (n - 2) + 1) + 3

end

end A220944.P16984409662427553642

namespace A220944

/-- `xor(2, 3*a(n-2)+1)+3` -/
def P16984409662427553642.Spec : Prop :=
  ∀ n, (P16984409662427553642.a n : ℤ) = A220944 n

end A220944

/-! ## A220944.P791987835727560190

`or(4, 3*(a(n-2)+2))-4` with `a(0)=1, a(1)=3`
-/

namespace A220944.P791987835727560190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor 4 (3 * (a (n - 2) + 2)) - 4

end

end A220944.P791987835727560190

namespace A220944

/-- `or(4, 3*(a(n-2)+2))-4` -/
def P791987835727560190.Spec : Prop :=
  ∀ n, P791987835727560190.a n = A220944 n

end A220944

/-! ## A220944.P10671364448698672712

`a(n-1)%4*or(2, a(n-1))` with `a(0)=1`
-/

namespace A220944.P10671364448698672712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) % 4 * Nat.lor 2 (a (n - 1))

end

end A220944.P10671364448698672712

namespace A220944

/-- `a(n-1)%4*or(2, a(n-1))` -/
def P10671364448698672712.Spec : Prop :=
  ∀ n, (P10671364448698672712.a n : ℤ) = A220944 n

end A220944

/-! ## A220944.P16984466977847734256

`or(2, a(n-1))*a(and(1, 1-n))` with `a(0)=1`
-/

namespace A220944.P16984466977847734256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 2 (a (n - 1)) * a (Int.land 1 (1 - (n : ℤ))).toNat

end

end A220944.P16984466977847734256

namespace A220944

/-- `or(2, a(n-1))*a(and(1, 1-n))` -/
def P16984466977847734256.Spec : Prop :=
  ∀ n, (P16984466977847734256.a n : ℤ) = A220944 n

end A220944

/-! ## A220944.P18341101109725887711

`2*A062547(n)-A010684(n)`
-/

namespace A220944.P18341101109725887711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062547 n - A010684 n

end

end A220944.P18341101109725887711

namespace A220944

/-- `2*A062547(n)-A010684(n)` -/
def P18341101109725887711.Spec : Prop :=
  ∀ n, P18341101109725887711.a n = A220944 n

end A220944

/-! ## A220944.P14531903259743831041

`2*A117855(n+1)-A176040(n)`
-/

namespace A220944.P14531903259743831041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117855 (n + 1) - A176040 n

end

end A220944.P14531903259743831041

namespace A220944

/-- `2*A117855(n+1)-A176040(n)` -/
def P14531903259743831041.Spec : Prop :=
  ∀ n, P14531903259743831041.a n = A220944 n

end A220944

/-! ## A220944.P18358331897472103874

`A062547(n)+A062547(n)-A176040(n+1)`
-/

namespace A220944.P18358331897472103874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 n + (A062547 n - A176040 (n + 1))

end

end A220944.P18358331897472103874

namespace A220944

/-- `A062547(n)+A062547(n)-A176040(n+1)` -/
def P18358331897472103874.Spec : Prop :=
  ∀ n, P18358331897472103874.a n = A220944 n

end A220944

/-! ## A220944.P11549072117387426547

`∪[A036543(n), A171498(n)]`
-/

namespace A220944.P11549072117387426547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220944.P11549072117387426547

namespace A220944

/-- `∪[A036543(n), A171498(n)]` -/
def P11549072117387426547.Spec : Prop :=
  ∀ n, (P11549072117387426547.a n : ℤ) = A220944 n

end A220944

/-!
# A220945: Number of partitions of n into non-consecutive distinct squares.

The programs for A220945, there is no canonical definition to state claims against.
-/

/-! ## A220945.P5288557946362100980

`A304042(A322856(n))-char[A224517(n+1)]`
-/

namespace A220945.P5288557946362100980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224517 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A322856 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A220945.P5288557946362100980

/-! ## A220945.P2538191569540156090

`A010055(A136085(3*n+1)+char[A224517(n+1)])`
-/

namespace A220945.P2538191569540156090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224517 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A136085 (3 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A220945.P2538191569540156090

/-! ## A220945.P4943041103842594195

`A001222(A086519(n))-char[A224517(n+1)]`
-/

namespace A220945.P4943041103842594195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224517 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A086519 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A220945.P4943041103842594195

/-! ## A220945.P1552912955039597398

`A010057(char[A224517(n+1)]*A106829(n+1))`
-/

namespace A220945.P1552912955039597398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224517 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A106829 (n + 1)).toNat

end

end A220945.P1552912955039597398

/-! ## A220945.P14286023165004636318

`A117198(A139208(n+2))`
-/

namespace A220945.P14286023165004636318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117198 (A139208 (n + 2)).toNat

end

end A220945.P14286023165004636318

/-!
# A220946: Expansion of (1+2*x+2*x^2-x^3)/((1-x)*(1+x)*(1-3x^2)).

The programs for A220946, the canonical program `A220946.P12238386290465146901` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220946 has offset 0).

The definition of A220946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2-x^3)/(1-4x^2+3x^4))` (program `A220946.P12238386290465146901`, by `A220946.P12238386290465146901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220946.P12238386290465146901

`ogf((1+2x+2x^2-x^3)/(1-4x^2+3x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220946

/-- `ogf((1+2x+2x^2-x^3)/(1-4x^2+3x^4))` -/
def P12238386290465146901.Spec : Prop :=
  ∀ n, P12238386290465146901.a n = A220946 n

theorem P12238386290465146901.correct : P12238386290465146901.Spec := by
  intro n
  simp only [A220946]

end A220946

/-! ## A220946.P12774254431532417092

`4*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=7`
-/

namespace A220946.P12774254431532417092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 7] fun n a =>
  4 * a (n - 2) - 3 * a (n - 4)

end

end A220946.P12774254431532417092

namespace A220946

/-- `4*a(n-2)-3*a(n-4)` -/
def P12774254431532417092.Spec : Prop :=
  ∀ n, P12774254431532417092.a n = A220946 n

end A220946

/-! ## A220946.P9410639547623858540

`lcm(3, a(n-1))+n%2` with `a(0)=1, a(1)=2`
-/

namespace A220946.P9410639547623858540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm 3 (a (n - 1)) + n % 2

end

end A220946.P9410639547623858540

namespace A220946

/-- `lcm(3, a(n-1))+n%2` -/
def P9410639547623858540.Spec : Prop :=
  ∀ n, (P9410639547623858540.a n : ℤ) = A220946 n

end A220946

/-! ## A220946.P10845955032239512284

`(-1)^n+3*a(n-2)+2` with `a(0)=1, a(1)=2`
-/

namespace A220946.P10845955032239512284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (-1) ^ n + (3 * a (n - 2) + 2)

end

end A220946.P10845955032239512284

namespace A220946

/-- `(-1)^n+3*a(n-2)+2` -/
def P10845955032239512284.Spec : Prop :=
  ∀ n, P10845955032239512284.a n = A220946 n

end A220946

/-! ## A220946.P205285956077682200

`gcd(3, -n%2)+3*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A220946.P205285956077682200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.gcd 3 (Int.tmod (-(n : ℤ)) 2) + 3 * a (n - 2)

end

end A220946.P205285956077682200

namespace A220946

/-- `gcd(3, -n%2)+3*a(n-2)` -/
def P205285956077682200.Spec : Prop :=
  ∀ n, (P205285956077682200.a n : ℤ) = A220946 n

end A220946

/-! ## A220946.P17591049264471593244

`3%xor(n, -n)+3*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A220946.P17591049264471593244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod 3 (Int.xor (n : ℤ) (-(n : ℤ))) + 3 * a (n - 2)

end

end A220946.P17591049264471593244

namespace A220946

/-- `3%xor(n, -n)+3*a(n-2)` -/
def P17591049264471593244.Spec : Prop :=
  ∀ n, P17591049264471593244.a n = A220946 n

end A220946

/-! ## A220946.P17291998769167876345

`3*(a(n-2)+1)-2*and(1, n)` with `a(0)=1, a(1)=2`
-/

namespace A220946.P17291998769167876345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 2) + 1) - (2 * Nat.land 1 n : ℤ)

end

end A220946.P17291998769167876345

namespace A220946

/-- `3*(a(n-2)+1)-2*and(1, n)` -/
def P17291998769167876345.Spec : Prop :=
  ∀ n, P17291998769167876345.a n = A220946 n

end A220946

/-! ## A220946.P3215057899492627536

`A052993(n)+A030439(n)`
-/

namespace A220946.P3215057899492627536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 n + A030439 n

end

end A220946.P3215057899492627536

namespace A220946

/-- `A052993(n)+A030439(n)` -/
def P3215057899492627536.Spec : Prop :=
  ∀ n, P3215057899492627536.a n = A220946 n

end A220946

/-! ## A220946.P6353634598602392632

`Δ[A181655(n+1)]-1`
-/

namespace A220946.P6353634598602392632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A220946.P6353634598602392632

namespace A220946

/-- `Δ[A181655(n+1)]-1` -/
def P6353634598602392632.Spec : Prop :=
  ∀ n, P6353634598602392632.a n = A220946 n

end A220946

/-! ## A220946.P12376730195019342030

`∪[A060816(n), A134931(n)]`
-/

namespace A220946.P12376730195019342030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220946.P12376730195019342030

namespace A220946

/-- `∪[A060816(n), A134931(n)]` -/
def P12376730195019342030.Spec : Prop :=
  ∀ n, (P12376730195019342030.a n : ℤ) = A220946 n

end A220946

/-! ## A220946.P5216103904675666648

`∪[A060816(n+1)-1, A060816(n+1)]`
-/

namespace A220946.P5216103904675666648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220946.P5216103904675666648

namespace A220946

/-- `∪[A060816(n+1)-1, A060816(n+1)]` -/
def P5216103904675666648.Spec : Prop :=
  ∀ n, (P5216103904675666648.a n : ℤ) = A220946 n

end A220946

/-!
# A220948: Expansion of (1-x)^2*(1-3*x)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A220948, the canonical program `A220948.P6114342175384735957` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220948 has offset 0).

The definition of A220948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+7x^2-3x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A220948.P6114342175384735957`, by `A220948.P6114342175384735957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220948.P6114342175384735957

`ogf((1-5x+7x^2-3x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220948

/-- `ogf((1-5x+7x^2-3x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P6114342175384735957.Spec : Prop :=
  ∀ n, P6114342175384735957.a n = A220948 n

theorem P6114342175384735957.correct : P6114342175384735957.Spec := by
  intro n
  simp only [A220948]

end A220948

/-! ## A220948.P11070210676378650592

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=15, a(3)=55, a(4)=200`
-/

namespace A220948.P11070210676378650592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 15, 55, 200] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A220948.P11070210676378650592

namespace A220948

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P11070210676378650592.Spec : Prop :=
  ∀ n, P11070210676378650592.a n = A220948 n

end A220948

/-! ## A220948.P1492585503054295903

`Δ[A231182(2*n+3)]`
-/

namespace A220948.P1492585503054295903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220948.P1492585503054295903

namespace A220948

/-- `Δ[A231182(2*n+3)]` -/
def P1492585503054295903.Spec : Prop :=
  ∀ n, P1492585503054295903.a n = A220948 n

end A220948

/-! ## A220948.P1198690766494856958

`A231181(2*n)-A231182(2*n+3)`
-/

namespace A220948.P1198690766494856958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (2 * n) - A231182 (2 * n + 3)

end

end A220948.P1198690766494856958

namespace A220948

/-- `A231181(2*n)-A231182(2*n+3)` -/
def P1198690766494856958.Spec : Prop :=
  ∀ n, P1198690766494856958.a n = A220948 n

end A220948

/-! ## A220948.P13023461689109759995

`A224422(n)+A370074(n)-A370051(n)`
-/

namespace A220948.P13023461689109759995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224422 n + (A370074 n - A370051 n)

end

end A220948.P13023461689109759995

namespace A220948

/-- `A224422(n)+A370074(n)-A370051(n)` -/
def P13023461689109759995.Spec : Prop :=
  ∀ n, P13023461689109759995.a n = A220948 n

end A220948

/-! ## A220948.P11889782514649776237

`Δ[A224509(n)]-A216710(n)`
-/

namespace A220948.P11889782514649776237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A216710 n

end

end A220948.P11889782514649776237

namespace A220948

/-- `Δ[A224509(n)]-A216710(n)` -/
def P11889782514649776237.Spec : Prop :=
  ∀ n, P11889782514649776237.a n = A220948 n

end A220948

/-! ## A220948.P5735141550621435305

`A224509(n+1)-A224514(n+1)`
-/

namespace A220948.P5735141550621435305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224509 (n + 1) - A224514 (n + 1)

end

end A220948.P5735141550621435305

namespace A220948

/-- `A224509(n+1)-A224514(n+1)` -/
def P5735141550621435305.Spec : Prop :=
  ∀ n, P5735141550621435305.a n = A220948 n

end A220948

/-! ## A220948.P1564044542415076641

`Δ[A224514(n+1)]-A216710(n+1)`
-/

namespace A220948.P1564044542415076641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A216710 (n + 1)

end

end A220948.P1564044542415076641

namespace A220948

/-- `Δ[A224514(n+1)]-A216710(n+1)` -/
def P1564044542415076641.Spec : Prop :=
  ∀ n, P1564044542415076641.a n = A220948 n

end A220948

/-! ## A220948.P3291103126860280496

`Δ[A336675(2*(n+1))]-A216710(n+1)`
-/

namespace A220948.P3291103126860280496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A216710 (n + 1)

end

end A220948.P3291103126860280496

namespace A220948

/-- `Δ[A336675(2*(n+1))]-A216710(n+1)` -/
def P3291103126860280496.Spec : Prop :=
  ∀ n, P3291103126860280496.a n = A220948 n

end A220948

/-! ## A220948.P13228902525512606838

`A224509(n+1)-(A224509(n)+A216710(n))`
-/

namespace A220948.P13228902525512606838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224509 (n + 1) - (A224509 n + A216710 n)

end

end A220948.P13228902525512606838

namespace A220948

/-- `A224509(n+1)-(A224509(n)+A216710(n))` -/
def P13228902525512606838.Spec : Prop :=
  ∀ n, P13228902525512606838.a n = A220948 n

end A220948

/-!
# A220950: Number of distinct languages accepted by unary nondeterministic finite automata of n states.

The programs for A220950, there is no canonical definition to state claims against.
-/

/-! ## A220950.P9025144050729433093

`round(((7/4)^(n+1))²)`
-/

namespace A220950.P9025144050729433093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((7 : ℚ) / 4) ^ (n + 1)) ^ 2)

end

end A220950.P9025144050729433093

/-!
# A220951: Primes p such that p+6 is also prime and there is a power of two in the interval (p,p+6).

The programs for A220951, there is no canonical definition to state claims against.
-/

/-! ## A220951.P18205770587418394721

`A087821(A163685(n+1))`
-/

namespace A220951.P18205770587418394721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087821 (A163685 (n + 1)).toNat

end

end A220951.P18205770587418394721

/-! ## A220951.P1410916913142436189

`A087821(A394165(n+1))`
-/

namespace A220951.P1410916913142436189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087821 (A394165 (n + 1)).toNat

end

end A220951.P1410916913142436189

/-! ## A220951.P5524926345792650216

`p?[or(A048625(n), A340025(n))]`
-/

namespace A220951.P5524926345792650216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048625 n) (A340025 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220951.P5524926345792650216

/-!
# A220952: A twisted enumeration of the nonnegative integers.

The programs for A220952, there is no canonical definition to state claims against.
-/

/-! ## A220952.P13537436270865523536

`A307403(A300855(A307403(n)))`
-/

namespace A220952.P13537436270865523536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307403 (A300855 (A307403 n).toNat).toNat

end

end A220952.P13537436270865523536

/-!
# A220953: Primes p such that floor(sqrt(2)) + floor(sqrt(3)) + floor(sqrt(5)) + ... + floor(sqrt(p)) is prime.

The programs for A220953, there is no canonical definition to state claims against.
-/

/-! ## A220953.P4089872431843248859

`A178642(A041075(n+2)-A071766(n))`
-/

namespace A220953.P4089872431843248859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178642 (A041075 (n + 2) - A071766 n).toNat

end

end A220953.P4089872431843248859

/-!
# A220955: O.g.f.: Sum_{n>=0} (2*n+1)^(2*n+1) * exp(-(2*n+1)^2*x) * x^n / n!.

The programs for A220955, there is no canonical definition to state claims against.
-/

/-! ## A220955.P15529851559942032511

`2^n*A348087(n+1)`
-/

namespace A220955.P15529851559942032511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A348087 (n + 1)

end

end A220955.P15529851559942032511

/-! ## A220955.P8434988034957961875

`A154537(A056220(n+1))`
-/

namespace A220955.P8434988034957961875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (A056220 (n + 1)).toNat

end

end A220955.P8434988034957961875

/-! ## A220955.P13324164025026020947

`A154537(eq[1, A114327(n)])`
-/

namespace A220955.P13324164025026020947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220955.P13324164025026020947

/-! ## A220955.P4475955489607858499

`A154537(eq[2, A126988(n+1)])`
-/

namespace A220955.P4475955489607858499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220955.P4475955489607858499

/-! ## A220955.P15671134579789607606

`A154537(A001844(n)+2*n)`
-/

namespace A220955.P15671134579789607606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (A001844 n + (2 * n : ℤ)).toNat

end

end A220955.P15671134579789607606

/-!
# A220956: (Binomial(2n, n) - binomial(2n - 2, n - 1)) (mod n^2) - n - 2.

The programs for A220956, the canonical program `A220956.P15267301328212211979` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220956 has offset 1).

The definition of A220956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220956.P15267301328212211979

`(C(2*(n+1), n+1)-C(2*(n+1)-2, n))%(n+1)²-(n+1)-2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220956

/-- `(C(2*(n+1), n+1)-C(2*(n+1)-2, n))%(n+1)²-(n+1)-2` -/
def P15267301328212211979.Spec : Prop :=
  ∀ n, P15267301328212211979.a n = A220956 (n + 1)

theorem P15267301328212211979.correct : P15267301328212211979.Spec := by
  intro n
  simp only [A220956, Nat.add_sub_cancel]

end A220956

/-! ## A220956.P10026391978281080309

`A051924(n+1)%(n+1)²-(n+3)`
-/

namespace A220956.P10026391978281080309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051924 (n + 1)) ((n + 1) ^ 2 : ℤ) - (n + 3 : ℤ)

end

end A220956.P10026391978281080309

namespace A220956

/-- `A051924(n+1)%(n+1)²-(n+3)` -/
def P10026391978281080309.Spec : Prop :=
  ∀ n, P10026391978281080309.a n = A220956 (n + 1)

end A220956

/-!
# A220957: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A220957, there is no canonical definition to state claims against.
-/

/-! ## A220957.P3443909751562328290

`A220959(∑[n+3]+1)`
-/

namespace A220957.P3443909751562328290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220957.P3443909751562328290

/-! ## A220957.P10202318865082108095

`A175740(n)*A220959(A034856(n+2))`
-/

namespace A220957.P10202318865082108095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175740 n * A220959 (A034856 (n + 2)).toNat

end

end A220957.P10202318865082108095

/-!
# A220958: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A220958, there is no canonical definition to state claims against.
-/

/-! ## A220958.P8657913457959736721

`A220959(A141214(n+1))`
-/

namespace A220958.P8657913457959736721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (A141214 (n + 1)).toNat

end

end A220958.P8657913457959736721

/-!
# A220960: Equals two maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A220960, there is no canonical definition to state claims against.
-/

/-! ## A220960.P4711620676469197300

`A220959(∑[n+2]+4)`
-/

namespace A220960.P4711620676469197300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220960.P4711620676469197300

/-! ## A220960.P12783674509233446545

`record[gcd(A220959(n+2), A290317(n))]`
-/

namespace A220960.P12783674509233446545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220959 (n + 2)) (A290317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220960.P12783674509233446545

/-! ## A220960.P5358546109884621286

`A220959(A167614(n+1))+A014083(n)`
-/

namespace A220960.P5358546109884621286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (A167614 (n + 1)).toNat + A014083 n

end

end A220960.P5358546109884621286

/-!
# A220961: Equals two maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A220961, there is no canonical definition to state claims against.
-/

/-! ## A220961.P13528417827322072700

`A220959(∑[n+3]+7)`
-/

namespace A220961.P13528417827322072700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220961.P13528417827322072700

/-!
# A220962: Faulhaber's triangle: triangle of numerators of coefficients of power-sum polynomials.

The programs for A220962, there is no canonical definition to state claims against.
-/

/-! ## A220962.P4737232747445918161

`A023532(n)*A162298(A083920(n))`
-/

namespace A220962.P4737232747445918161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A162298 (A083920 n).toNat

end

end A220962.P4737232747445918161

/-! ## A220962.P10437573399979724920

`A162298(A083920(n))%A027465(n)`
-/

namespace A220962.P10437573399979724920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162298 (A083920 n).toNat) (A027465 n)

end

end A220962.P10437573399979724920

/-! ## A220962.P1600706218166664633

`A196840(A083920(n))%A038315(n)`
-/

namespace A220962.P1600706218166664633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196840 (A083920 n).toNat) (A038315 n)

end

end A220962.P1600706218166664633

/-! ## A220962.P13715828923038605844

`char[A007401(n+1)]*A162298(A083920(n))`
-/

namespace A220962.P13715828923038605844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A162298 (A083920 n).toNat

end

end A220962.P13715828923038605844

/-! ## A220962.P2730898093622831051

`(A162298(A083920(n))+A000007(n))%A193845(n)`
-/

namespace A220962.P2730898093622831051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162298 (A083920 n).toNat + A000007 n) (A193845 n)

end

end A220962.P2730898093622831051

/-!
# A220963: Faulhaber's triangle: triangle of denominators of coefficients of power-sum polynomials.

The programs for A220963, there is no canonical definition to state claims against.
-/

/-! ## A220963.P11416952141473043291

`A162299(A083920(n*A023532(n)))`
-/

namespace A220963.P11416952141473043291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (A083920 ((n : ℤ) * A023532 n).toNat).toNat

end

end A220963.P11416952141473043291

/-! ## A220963.P15546041950648274646

`A162299(A083920(n%A038315(n)))`
-/

namespace A220963.P15546041950648274646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (A083920 (Int.tmod (n : ℤ) (A038315 n)).toNat).toNat

end

end A220963.P15546041950648274646

/-! ## A220963.P1391494529810872034

`gcd(A094587(n), A162299(A083920(n)))`
-/

namespace A220963.P1391494529810872034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094587 n) (A162299 (A083920 n).toNat)

end

end A220963.P1391494529810872034

/-! ## A220963.P13743997213394004905

`A162299(A083920(n*Δ[A083920(n)]))`
-/

namespace A220963.P13743997213394004905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (A083920 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A220963.P13743997213394004905

/-! ## A220963.P4718226294729277048

`A162299(A083920(n)%A039811(n+1))`
-/

namespace A220963.P4718226294729277048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (Int.tmod (A083920 n) (A039811 (n + 1))).toNat

end

end A220963.P4718226294729277048

/-! ## A220963.P4224507008105181819

`A162299(char[A007401(n+1)]*A083920(n))`
-/

namespace A220963.P4224507008105181819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A083920 n).toNat

end

end A220963.P4224507008105181819

/-!
# A220964: Equals one maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..2 nX2 array.

The programs for A220964, there is no canonical definition to state claims against.
-/

/-! ## A220964.P11799929035774949826

`A220967(∑[n+1]+2)`
-/

namespace A220964.P11799929035774949826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220967 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220964.P11799929035774949826

/-! ## A220964.P16681089716140960843

`record[A220967(n+3)/A111540(n)]`
-/

namespace A220964.P16681089716140960843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220967 (n + 3) : ℚ) / (A111540 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220964.P16681089716140960843

/-! ## A220964.P16382374457111405544

`record[A220967(n+2)/A152260(n+1)]`
-/

namespace A220964.P16382374457111405544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220967 (n + 2) : ℚ) / (A152260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220964.P16382374457111405544

/-! ## A220964.P16178976017527467289

`record[A220967(n+3)/A039814(n+1)]`
-/

namespace A220964.P16178976017527467289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220967 (n + 3) : ℚ) / (A039814 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220964.P16178976017527467289

/-!
# A220965: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..2 nX3 array.

The programs for A220965, there is no canonical definition to state claims against.
-/

/-! ## A220965.P13434310948906800019

`A220967(∑[n+2]+4)`
-/

namespace A220965.P13434310948906800019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220967 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220965.P13434310948906800019

/-! ## A220965.P10069207492629268806

`record[gcd(A092921(n), A220967(n+4))]`
-/

namespace A220965.P10069207492629268806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A220967 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220965.P10069207492629268806

/-! ## A220965.P8202439923181110069

`record[A220967(n+4)/A220922(n+1)]`
-/

namespace A220965.P8202439923181110069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220967 (n + 4) : ℚ) / (A220922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220965.P8202439923181110069

/-!
# A220966: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..2 nX4 array.

The programs for A220966, there is no canonical definition to state claims against.
-/

/-! ## A220966.P7429717848094591902

`A220967(∑[n+3]+7)`
-/

namespace A220966.P7429717848094591902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220967 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220966.P7429717848094591902

/-! ## A220966.P9315523486985204081

`record[A220967(A189725(2*n+5))]`
-/

namespace A220966.P9315523486985204081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220967 (A189725 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220966.P9315523486985204081

/-!
# A220967: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..2 nXk array.

The programs for A220967, there is no canonical definition to state claims against.
-/

/-! ## A220967.P5294972627193429799

`A117707(A118185(n))*A137688(n)`
-/

namespace A220967.P5294972627193429799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A118185 n).toNat * A137688 n

end

end A220967.P5294972627193429799

/-! ## A220967.P10716704631979886427

`A172305(A022168(n))^A109004(n)`
-/

namespace A220967.P10716704631979886427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172305 (A022168 n).toNat : ℚ) ^ (A109004 n : ℤ)

end

end A220967.P10716704631979886427

/-! ## A220967.P7093746189240493324

`A221590(n+1)-A184963(A172349(n))`
-/

namespace A220967.P7093746189240493324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (n + 1) - A184963 (A172349 n).toNat

end

end A220967.P7093746189240493324

/-! ## A220967.P9202430218601318056

`A221590(n+1)-A241705(A117401(n))`
-/

namespace A220967.P9202430218601318056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (n + 1) - A241705 (A117401 n).toNat

end

end A220967.P9202430218601318056

/-! ## A220967.P17645178305335037040

`A220751(n+1)+A025465(A250973(n+1))`
-/

namespace A220967.P17645178305335037040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (n + 1) + A025465 (A250973 (n + 1)).toNat

end

end A220967.P17645178305335037040

/-!
# A220968: Positions in A030229 where odd terms occur.

The programs for A220968, the canonical program `A220968.P10713292117237987633` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220968 has offset 1).

The definition of A220968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220968.P10713292117237987633

`eq[1, A030229(n+1)%2]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A220968

/-- `eq[1, A030229(n+1)%2]+1` -/
def P10713292117237987633.Spec : Prop :=
  ∀ n, (P10713292117237987633.a n : ℤ) = A220968 (n + 1)

theorem P10713292117237987633.correct : P10713292117237987633.Spec := by
  intro n
  simp only [A220968, Nat.add_sub_cancel]

end A220968

/-! ## A220968.P11789648494142891560

`eq[1, gcd(2, A077448(n+1))]+1`
-/

namespace A220968.P11789648494142891560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A077448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A220968.P11789648494142891560

namespace A220968

/-- `eq[1, gcd(2, A077448(n+1))]+1` -/
def P11789648494142891560.Spec : Prop :=
  ∀ n, (P11789648494142891560.a n : ℤ) = A220968 (n + 1)

end A220968

/-! ## A220968.P2850852247423782905

`record[A158360(eq[1, A008683(n+1)]+1)+n+1]`
-/

namespace A220968.P2850852247423782905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220968.P2850852247423782905

namespace A220968

/-- `record[A158360(eq[1, A008683(n+1)]+1)+n+1]` -/
def P2850852247423782905.Spec : Prop :=
  ∀ n, P2850852247423782905.a n = A220968 (n + 1)

end A220968

/-! ## A220968.P419050933085339984

`A070548(A056913(n+1))`
-/

namespace A220968.P419050933085339984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A056913 (n + 1)).toNat

end

end A220968.P419050933085339984

namespace A220968

/-- `A070548(A056913(n+1))` -/
def P419050933085339984.Spec : Prop :=
  ∀ n, P419050933085339984.a n = A220968 (n + 1)

end A220968

/-! ## A220968.P6988441947686601517

`lt[A040417(A030229(n+1)), 2]+1`
-/

namespace A220968.P6988441947686601517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040417 (A030229 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A220968.P6988441947686601517

namespace A220968

/-- `lt[A040417(A030229(n+1)), 2]+1` -/
def P6988441947686601517.Spec : Prop :=
  ∀ n, (P6988441947686601517.a n : ℤ) = A220968 (n + 1)

end A220968

/-! ## A220968.P9460650857367100527

`record[(n+1)*A309873(eq[1, A008683(n+1)]+1)]`
-/

namespace A220968.P9460650857367100527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A309873 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220968.P9460650857367100527

namespace A220968

/-- `record[(n+1)*A309873(eq[1, A008683(n+1)]+1)]` -/
def P9460650857367100527.Spec : Prop :=
  ∀ n, P9460650857367100527.a n = A220968 (n + 1)

end A220968

/-!
# A220969: Positions in A030229 where even terms occur.

The programs for A220969, the canonical program `A220969.P3764813406142439732` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220969 has offset 1).

The definition of A220969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220969.P3764813406142439732

`eq[0, A030229(n+2)%2]+2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A220969

/-- `eq[0, A030229(n+2)%2]+2` -/
def P3764813406142439732.Spec : Prop :=
  ∀ n, (P3764813406142439732.a n : ℤ) = A220969 (n + 1)

theorem P3764813406142439732.correct : P3764813406142439732.Spec := by
  intro n
  simp only [A220969, Nat.add_sub_cancel]

end A220969

/-! ## A220969.P157182372143947051

`eq[2, gcd(2, A077448(n+1))]+1`
-/

namespace A220969.P157182372143947051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A077448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A220969.P157182372143947051

namespace A220969

/-- `eq[2, gcd(2, A077448(n+1))]+1` -/
def P157182372143947051.Spec : Prop :=
  ∀ n, (P157182372143947051.a n : ℤ) = A220969 (n + 1)

end A220969

/-! ## A220969.P6773213192180411199

`lt[A030229(n+1)%2*A028387(n), A000203(n+1)]+1`
-/

namespace A220969.P6773213192180411199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030229 (n + 1)) 2 * A028387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A220969.P6773213192180411199

namespace A220969

/-- `lt[A030229(n+1)%2*A028387(n), A000203(n+1)]+1` -/
def P6773213192180411199.Spec : Prop :=
  ∀ n, (P6773213192180411199.a n : ℤ) = A220969 (n + 1)

end A220969

/-! ## A220969.P458485222496378654

`eq[1, A055396(A030229(n+1))]+1`
-/

namespace A220969.P458485222496378654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A030229 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A220969.P458485222496378654

namespace A220969

/-- `eq[1, A055396(A030229(n+1))]+1` -/
def P458485222496378654.Spec : Prop :=
  ∀ n, (P458485222496378654.a n : ℤ) = A220969 (n + 1)

end A220969

/-! ## A220969.P10134230994202125171

`eq[1, A260452(A030229(A028310(n)))]`
-/

namespace A220969.P10134230994202125171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A030229 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220969.P10134230994202125171

namespace A220969

/-- `eq[1, A260452(A030229(A028310(n)))]` -/
def P10134230994202125171.Spec : Prop :=
  ∀ n, (P10134230994202125171.a n : ℤ) = A220969 (n + 1)

end A220969

/-!
# A220970: Equals one maps: number of n X n binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..1 n X n array.

The programs for A220970, there is no canonical definition to state claims against.
-/

/-! ## A220970.P9968024224253679666

`A220977(∑[4*n]+1)`
-/

namespace A220970.P9968024224253679666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220970.P9968024224253679666

/-! ## A220970.P12694288772007010809

`record[A220977(A330613(n+1))]`
-/

namespace A220970.P12694288772007010809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220970.P12694288772007010809

/-! ## A220970.P7666311357986739338

`A220977(A001844(n))+char[8]`
-/

namespace A220970.P7666311357986739338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220970.P7666311357986739338

/-!
# A220971: Equals one maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..1 n X 2 array.

The programs for A220971, there is no canonical definition to state claims against.
-/

/-! ## A220971.P9425667427776914424

`A220977(∑[n+1]+2)`
-/

namespace A220971.P9425667427776914424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220971.P9425667427776914424

/-! ## A220971.P11377128643904905261

`A000027(A220977(∑[n+2]))`
-/

namespace A220971.P11377128643904905261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A220977 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A220971.P11377128643904905261

/-! ## A220971.P10097895700587745071

`A220977(A000096(n+1))%A220980(n)`
-/

namespace A220971.P10097895700587745071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220977 (A000096 (n + 1)).toNat) (A220980 n)

end

end A220971.P10097895700587745071

/-! ## A220971.P12561850042486551715

`lcm(A034947(n+1), A220977(A000096(n+1)))`
-/

namespace A220971.P12561850042486551715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A220977 (A000096 (n + 1)).toNat)

end

end A220971.P12561850042486551715

/-! ## A220971.P1261202233475147063

`A034947(2*n+1)²*A220977(A000096(n+1))`
-/

namespace A220971.P1261202233475147063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) ^ 2 * A220977 (A000096 (n + 1)).toNat

end

end A220971.P1261202233475147063

/-!
# A220972: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..1 nX3 array.

The programs for A220972, there is no canonical definition to state claims against.
-/

/-! ## A220972.P15753523187685455190

`A220977(∑[n+2]+4)`
-/

namespace A220972.P15753523187685455190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220972.P15753523187685455190

/-! ## A220972.P12345248066533737106

`and(-1, A220977(A167614(n+1)))`
-/

namespace A220972.P12345248066533737106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220977 (A167614 (n + 1)).toNat)

end

end A220972.P12345248066533737106

/-! ## A220972.P3947236814234760543

`record[A220977(n+4)/A079641(n+1)]`
-/

namespace A220972.P3947236814234760543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220977 (n + 4) : ℚ) / (A079641 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220972.P3947236814234760543

/-! ## A220972.P8170288314740004941

`record[A220977(n+4)/A356013(n+1)]`
-/

namespace A220972.P8170288314740004941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220977 (n + 4) : ℚ) / (A356013 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220972.P8170288314740004941

/-! ## A220972.P17000306150308876093

`A220977(A167614(n+1))+A011736(n)`
-/

namespace A220972.P17000306150308876093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A167614 (n + 1)).toNat + A011736 n

end

end A220972.P17000306150308876093

/-!
# A220973: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..1 nX4 array.

The programs for A220973, there is no canonical definition to state claims against.
-/

/-! ## A220973.P4070463986656968935

`A220977(∑[n+3]+7)`
-/

namespace A220973.P4070463986656968935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220973.P4070463986656968935

/-! ## A220973.P5755395890983309307

`A220977(A055998(n+2))+A000007(3*n+2)`
-/

namespace A220973.P5755395890983309307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A055998 (n + 2)).toNat + A000007 (3 * n + 2)

end

end A220973.P5755395890983309307

/-! ## A220973.P7471887671123501801

`A000120(A001316(n))*A220977(A055998(n+2))`
-/

namespace A220973.P7471887671123501801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat * A220977 (A055998 (n + 2)).toNat

end

end A220973.P7471887671123501801

/-!
# A220974: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..1 nX5 array.

The programs for A220974, there is no canonical definition to state claims against.
-/

/-! ## A220974.P15692460911259130469

`A220977(A374005(n+1))`
-/

namespace A220974.P15692460911259130469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A374005 (n + 1)).toNat

end

end A220974.P15692460911259130469

/-! ## A220974.P13456425675491134173

`A220977(A167499(n+3))`
-/

namespace A220974.P13456425675491134173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A167499 (n + 3)).toNat

end

end A220974.P13456425675491134173

/-! ## A220974.P140098152123234083

`A220977(A155212(n)+13)`
-/

namespace A220974.P140098152123234083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A155212 n + 13).toNat

end

end A220974.P140098152123234083

/-! ## A220974.P8498324242915956860

`A220977(A056000(n)+15)`
-/

namespace A220974.P8498324242915956860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A056000 n + 15).toNat

end

end A220974.P8498324242915956860

/-! ## A220974.P15305628945254649753

`A220977(eq[7, A066657(n)])`
-/

namespace A220974.P15305628945254649753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220974.P15305628945254649753

/-!
# A220975: Equals one maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..1 nX6 array.

The programs for A220975, there is no canonical definition to state claims against.
-/

/-! ## A220975.P2611046709030876877

`A220977(A374007(n+1))`
-/

namespace A220975.P2611046709030876877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A374007 (n + 1)).toNat

end

end A220975.P2611046709030876877

/-! ## A220975.P15621499088826626883

`A220977(A056115(n)+21)`
-/

namespace A220975.P15621499088826626883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A056115 n + 21).toNat

end

end A220975.P15621499088826626883

/-! ## A220975.P3746304770459347719

`A220977(A167499(n+4)+1)`
-/

namespace A220975.P3746304770459347719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A167499 (n + 4) + 1).toNat

end

end A220975.P3746304770459347719

/-! ## A220975.P1807632300726858059

`A220977(A167614(n+4)+3)`
-/

namespace A220975.P1807632300726858059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A167614 (n + 4) + 3).toNat

end

end A220975.P1807632300726858059

/-! ## A220975.P11870234527689564379

`A220977(A000217(n+5)+6)`
-/

namespace A220975.P11870234527689564379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A000217 (n + 5) + 6).toNat

end

end A220975.P11870234527689564379

/-!
# A220976: Equals one maps: number of nX7 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..1 nX7 array.

The programs for A220976, there is no canonical definition to state claims against.
-/

/-! ## A220976.P7933055710507193269

`A220977(C(n+7, 2)+7)`
-/

namespace A220976.P7933055710507193269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (Nat.choose (n + 7) 2 + 7)

end

end A220976.P7933055710507193269

/-! ## A220976.P13653362780391026668

`A220977(A374008(n+1))`
-/

namespace A220976.P13653362780391026668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A374008 (n + 1)).toNat

end

end A220976.P13653362780391026668

/-! ## A220976.P49089666354118332

`A220977(A055999(n+4))`
-/

namespace A220976.P49089666354118332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A055999 (n + 4)).toNat

end

end A220976.P49089666354118332

/-! ## A220976.P3187518011068085540

`A220977(A056119(n)+28)`
-/

namespace A220976.P3187518011068085540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220977 (A056119 n + 28).toNat

end

end A220976.P3187518011068085540

/-!
# A220978: a(n) = 3^(2*n+1) - 3^(n+1) + 1: The left Aurifeuillian factor of 3^(6*n+3) + 1.

The programs for A220978, the canonical program `A220978.P18190316241425378078` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220978 has offset 0).

The definition of A220978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(2*n+1)-3^(n+1)+1` (program `A220978.P18190316241425378078`, by `A220978.P18190316241425378078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220978.P18190316241425378078

`3^(2*n+1)-3^(n+1)+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220978

/-- `3^(2*n+1)-3^(n+1)+1` -/
def P18190316241425378078.Spec : Prop :=
  ∀ n, P18190316241425378078.a n = A220978 n

theorem P18190316241425378078.correct : P18190316241425378078.Spec := by
  intro n
  simp only [A220978]

end A220978

/-! ## A220978.P14265813356662883433

`or(1, 3*A059410(n))`
-/

namespace A220978.P14265813356662883433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A059410 n)

end

end A220978.P14265813356662883433

namespace A220978

/-- `or(1, 3*A059410(n))` -/
def P14265813356662883433.Spec : Prop :=
  ∀ n, P14265813356662883433.a n = A220978 n

end A220978

/-! ## A220978.P6607983195550181259

`or(1, 6*A026121(n))`
-/

namespace A220978.P6607983195550181259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A026121 n)

end

end A220978.P6607983195550181259

namespace A220978

/-- `or(1, 6*A026121(n))` -/
def P6607983195550181259.Spec : Prop :=
  ∀ n, P6607983195550181259.a n = A220978 n

end A220978

/-! ## A220978.P8559351591344402327

`∑[A025192(n)*A036543(n)]`
-/

namespace A220978.P8559351591344402327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n * A036543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220978.P8559351591344402327

namespace A220978

/-- `∑[A025192(n)*A036543(n)]` -/
def P8559351591344402327.Spec : Prop :=
  ∀ n, P8559351591344402327.a n = A220978 n

end A220978

/-! ## A220978.P2978566541543465717

`∑[lcm(A036543(n), A099856(n))]`
-/

namespace A220978.P2978566541543465717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036543 n) (A099856 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220978.P2978566541543465717

namespace A220978

/-- `∑[lcm(A036543(n), A099856(n))]` -/
def P2978566541543465717.Spec : Prop :=
  ∀ n, (P2978566541543465717.a n : ℤ) = A220978 n

end A220978

/-! ## A220978.P1793258532830668499

`∑[∑[A052156(n)]*A036543(n)]`
-/

namespace A220978.P1793258532830668499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A036543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220978.P1793258532830668499

namespace A220978

/-- `∑[∑[A052156(n)]*A036543(n)]` -/
def P1793258532830668499.Spec : Prop :=
  ∀ n, P1793258532830668499.a n = A220978 n

end A220978

/-! ## A220978.P7296806446360306021

`∑[∑[A083583(n)]*A025192(n)]`
-/

namespace A220978.P7296806446360306021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220978.P7296806446360306021

namespace A220978

/-- `∑[∑[A083583(n)]*A025192(n)]` -/
def P7296806446360306021.Spec : Prop :=
  ∀ n, P7296806446360306021.a n = A220978 n

end A220978

/-! ## A220978.P3676477240244895551

`∑[Δ[A094388(n)]*A036543(n)]`
-/

namespace A220978.P3676477240244895551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A036543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220978.P3676477240244895551

namespace A220978

/-- `∑[Δ[A094388(n)]*A036543(n)]` -/
def P3676477240244895551.Spec : Prop :=
  ∀ n, P3676477240244895551.a n = A220978 n

end A220978

/-! ## A220978.P1203601362800194922

`∑[record[A060647(n)*A166450(n+1)]]`
-/

namespace A220978.P1203601362800194922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n * A166450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220978.P1203601362800194922

namespace A220978

/-- `∑[record[A060647(n)*A166450(n+1)]]` -/
def P1203601362800194922.Spec : Prop :=
  ∀ n, P1203601362800194922.a n = A220978 n

end A220978

/-!
# A220989: a(n) = 12^(2n+1) - 6 * 12^n + 1: the left Aurifeuillian factor of 12^(6n+3) + 1.

The programs for A220989, the canonical program `A220989.P10153091279346946888` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220989 has offset 0).

The definition of A220989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^(2*n+1)-6*12^n+1` (program `A220989.P10153091279346946888`, by `A220989.P10153091279346946888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220989.P10153091279346946888

`12^(2*n+1)-6*12^n+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220989

/-- `12^(2*n+1)-6*12^n+1` -/
def P10153091279346946888.Spec : Prop :=
  ∀ n, P10153091279346946888.a n = A220989 n

theorem P10153091279346946888.correct : P10153091279346946888.Spec := by
  intro n
  simp only [A220989]

end A220989

/-! ## A220989.P16426707745126725971

`round((2-A024140(n+1))²/12)`
-/

namespace A220989.P16426707745126725971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - A024140 (n + 1)) ^ 2 : ℚ) / 12)

end

end A220989.P16426707745126725971

namespace A220989

/-- `round((2-A024140(n+1))²/12)` -/
def P16426707745126725971.Spec : Prop :=
  ∀ n, P16426707745126725971.a n = A220989 n

end A220989

/-!
# A220990: a(n) = 12^(2n+1) + 6 * 12^n + 1: the right Aurifeuillian factor of 12^(6n+3) + 1.

The programs for A220990, the canonical program `A220990.P18286990041294985911` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220990 has offset 0).

The definition of A220990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^(2*n+1)+6*12^n+1` (program `A220990.P18286990041294985911`, by `A220990.P18286990041294985911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220990.P18286990041294985911

`12^(2*n+1)+6*12^n+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A220990

/-- `12^(2*n+1)+6*12^n+1` -/
def P18286990041294985911.Spec : Prop :=
  ∀ n, (P18286990041294985911.a n : ℤ) = A220990 n

theorem P18286990041294985911.correct : P18286990041294985911.Spec := by
  intro n
  simp only [A220990]

end A220990

/-!
# A220991: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A220991, there is no canonical definition to state claims against.
-/

/-! ## A220991.P10120857297831508316

`A220993(A141214(n+1))`
-/

namespace A220991.P10120857297831508316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (A141214 (n + 1)).toNat

end

end A220991.P10120857297831508316

/-! ## A220991.P12248106557847522372

`A220993(A027379(n+2))`
-/

namespace A220991.P12248106557847522372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (A027379 (n + 2)).toNat

end

end A220991.P12248106557847522372

/-!
# A220992: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A220992, there is no canonical definition to state claims against.
-/

/-! ## A220992.P4037594466330204568

`A220993(Δ[A264443(n)])`
-/

namespace A220992.P4037594466330204568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (f1 (n + 1) - f1 n).toNat

end

end A220992.P4037594466330204568

/-!
# A220993: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A220993, there is no canonical definition to state claims against.
-/

/-! ## A220993.P2792070672768978625

`A220922(n+1)+A080224(A316261(3*(n+1)))`
-/

namespace A220993.P2792070672768978625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (n + 1) + A080224 (A316261 (3 * (n + 1))).toNat

end

end A220993.P2792070672768978625

/-! ## A220993.P2492177173051182718

`A220922(n+1)+A002262(A083961(n+1))`
-/

namespace A220993.P2492177173051182718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (n + 1) + A002262 (A083961 (n + 1)).toNat

end

end A220993.P2492177173051182718

/-! ## A220993.P4886203154710684453

`A347635(A001987(n+1))+A220922(n+1)`
-/

namespace A220993.P4886203154710684453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347635 (A001987 (n + 1)).toNat + A220922 (n + 1)

end

end A220993.P4886203154710684453

/-! ## A220993.P15305594920732234752

`xor(A220922(n+1), A343380(A090452(n+1)))`
-/

namespace A220993.P15305594920732234752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A220922 (n + 1)) (A343380 (A090452 (n + 1)).toNat)

end

end A220993.P15305594920732234752

/-! ## A220993.P2126020812405227600

`xor(A055010(A185037(2*n+3)), A220922(n+1))`
-/

namespace A220993.P2126020812405227600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055010 (A185037 (2 * n + 3)).toNat) (A220922 (n + 1))

end

end A220993.P2126020812405227600

/-!
# A220994: Majority value maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 2Xn array.

The programs for A220994, there is no canonical definition to state claims against.
-/

/-! ## A220994.P14686230069308110172

`A220993(∑[n+1]+2)`
-/

namespace A220994.P14686230069308110172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220994.P14686230069308110172

/-! ## A220994.P2313604812511324251

`record[ratio[A220993(A080036(n))]]`
-/

namespace A220994.P2313604812511324251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220994.P2313604812511324251

/-! ## A220994.P7704629552213645934

`record[A220993(n+1)/A036073(n)]`
-/

namespace A220994.P7704629552213645934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220993 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220994.P7704629552213645934

/-! ## A220994.P10303114327576001121

`record[A220993(n+3)/A171567(n)]`
-/

namespace A220994.P10303114327576001121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220993 (n + 3) : ℚ) / (A171567 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220994.P10303114327576001121

/-! ## A220994.P12830697483539676366

`record[gcd(A097230(n), A220993(n+1))]`
-/

namespace A220994.P12830697483539676366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A220993 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220994.P12830697483539676366

/-!
# A220995: Majority value maps: number of 3 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 3 X n array.

The programs for A220995, there is no canonical definition to state claims against.
-/

/-! ## A220995.P171293368344646234

`A220993(∑[n+2]+4)`
-/

namespace A220995.P171293368344646234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220995.P171293368344646234

/-! ## A220995.P16766383918888764970

`record[gcd(A028305(n), A220993(n+5))]`
-/

namespace A220995.P16766383918888764970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028305 n) (A220993 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220995.P16766383918888764970

/-! ## A220995.P7504758144068537515

`lcm((-1)^n, A220993(A167614(n+1)))`
-/

namespace A220995.P7504758144068537515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A220993 (A167614 (n + 1)).toNat)

end

end A220995.P7504758144068537515

/-! ## A220995.P14952095609745518510

`A220993(A167614(n+1))+A025437(n)`
-/

namespace A220995.P14952095609745518510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (A167614 (n + 1)).toNat + A025437 n

end

end A220995.P14952095609745518510

/-!
# A220996: Majority value maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal, diagonal and antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A220996, there is no canonical definition to state claims against.
-/

/-! ## A220996.P5190921144787366740

`A220993(∑[n+3]+7)`
-/

namespace A220996.P5190921144787366740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220996.P5190921144787366740

/-! ## A220996.P14557602117533893231

`A363124(n)+A220993(A167614(n+2)+1)`
-/

namespace A220996.P14557602117533893231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363124 n + A220993 (A167614 (n + 2) + 1).toNat

end

end A220996.P14557602117533893231

/-! ## A220996.P10689325549936396197

`A297330(n+1)+A220993(A167614(n+2)+1)`
-/

namespace A220996.P10689325549936396197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (n + 1) + A220993 (A167614 (n + 2) + 1).toNat

end

end A220996.P10689325549936396197

/-!
# A220997: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor.

The programs for A220997, there is no canonical definition to state claims against.
-/

/-! ## A220997.P7924831867209312455

`A221001(∑[n+1]+2)`
-/

namespace A220997.P7924831867209312455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220997.P7924831867209312455

/-! ## A220997.P3294185888706349943

`record[A221001(A114091(n+1)+1)]`
-/

namespace A220997.P3294185888706349943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220997.P3294185888706349943

/-! ## A220997.P17833413524096652834

`record[A221001(A166017(n+1)+1)]`
-/

namespace A220997.P17833413524096652834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220997.P17833413524096652834

/-! ## A220997.P11453133055731703745

`record[A221001(A286235(n+1)+1)]`
-/

namespace A220997.P11453133055731703745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220997.P11453133055731703745

/-! ## A220997.P461265750891408990

`record[A221001(n+3)/A204579(n+1)]`
-/

namespace A220997.P461265750891408990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221001 (n + 3) : ℚ) / (A204579 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220997.P461265750891408990

/-!
# A220998: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor.

The programs for A220998, there is no canonical definition to state claims against.
-/

/-! ## A220998.P11509575705743310868

`A221001(∑[n+2]+4)`
-/

namespace A220998.P11509575705743310868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220998.P11509575705743310868

/-! ## A220998.P2982947735960564835

`record[gcd(A103328(n), A221001(n+4))]`
-/

namespace A220998.P2982947735960564835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103328 n) (A221001 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220998.P2982947735960564835

/-! ## A220998.P16001148751514335559

`∑{e}[2^(n+1), A221001(A167614(#))]`
-/

namespace A220998.P16001148751514335559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A221001 (A167614 (Nat.factorization (f1 n) p)).toNat

end

end A220998.P16001148751514335559

/-! ## A220998.P5682020586039586306

`record[root(A221001(n+4), A125172(n+1))]`
-/

namespace A220998.P5682020586039586306
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221001 (n + 4) : ℝ) ^ (1 / (A125172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220998.P5682020586039586306

/-! ## A220998.P11580842031489864566

`record[root(A221001(n+4), A221035(n+1))]`
-/

namespace A220998.P11580842031489864566
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221001 (n + 4) : ℝ) ^ (1 / (A221035 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220998.P11580842031489864566

/-!
# A220999: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor.

The programs for A220999, there is no canonical definition to state claims against.
-/

/-! ## A220999.P8264922408050276687

`A221001(C(2*(n+2)+1-n, 2)-n)`
-/

namespace A220999.P8264922408050276687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (Nat.choose ((2 * (n + 2) + 1 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A220999.P8264922408050276687

/-! ## A220999.P11663104105040878321

`A221001(A374004(n+1))`
-/

namespace A220999.P11663104105040878321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A374004 (n + 1)).toNat

end

end A220999.P11663104105040878321

/-! ## A220999.P1179263700673136269

`A221001(A141214(n)+7)`
-/

namespace A220999.P1179263700673136269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A141214 n + 7).toNat

end

end A220999.P1179263700673136269

/-! ## A220999.P14610546554435452017

`A221001(A052905(n)+9)`
-/

namespace A220999.P14610546554435452017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A052905 n + 9).toNat

end

end A220999.P14610546554435452017

