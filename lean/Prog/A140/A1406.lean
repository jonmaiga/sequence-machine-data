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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A140600: Grand totals of prime factors in composite runs between two primes.

The programs for A140600, there is no canonical definition to state claims against.
-/

/-! ## A140600.P8607151138056370789

`p?[A141042(n+1)-Δ[A033955(n+1)]]`
-/

namespace A140600.P8607151138056370789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140600.P8607151138056370789

/-!
# A140601: Values of m such that binomial(m, a) + binomial(m, b) divides binomial(m, a + b) for some distinct nonnegative integers a and b with a + b <= m.

The programs for A140601, there is no canonical definition to state claims against.
-/

/-! ## A140601.P16783635231866043370

`A031206(n+1)-A326686(A031315(n+1))`
-/

namespace A140601.P16783635231866043370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031206 (n + 1) - A326686 (A031315 (n + 1)).toNat

end

end A140601.P16783635231866043370

/-!
# A140602: Values of m for which C(m,k)+C(m,k+1)=C(m+1,k+1) divides C(m,2k+1) for some nonnegative integer k with 2k+1 <= m.

The programs for A140602, there is no canonical definition to state claims against.
-/

/-! ## A140602.P2256153304974505836

`filter[A140601(n+2), A011658(#)]`
-/

namespace A140602.P2256153304974505836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A140602.P2256153304974505836

/-!
# A140605: a(n) = A003680(n)/A005179(n), or 0 if quotient is not an integer.

The programs for A140605, there is no canonical definition to state claims against.
-/

/-! ## A140605.P15046727609065045358

`A003680(n+1)/A005179(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140605.P15046727609065045358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003680 (n + 1) : ℚ) / (A005179 (n + 1) : ℚ)

end

end A140605.P15046727609065045358

/-! ## A140605.P15909109412251871862

`A003680(n+1)/A077569(A096276(n)+1)`
-/

namespace A140605.P15909109412251871862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003680 (n + 1) : ℚ) / (A077569 (A096276 n + 1).toNat : ℚ)

end

end A140605.P15909109412251871862

/-! ## A140605.P13721911065141704466

`A003680(n+1)/A081532(∑[n+1])`
-/

namespace A140605.P13721911065141704466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003680 (n + 1) : ℚ) / (A081532 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A140605.P13721911065141704466

/-! ## A140605.P5668759835065840

`A005179(2*(n+1))/A005179(n+1)`
-/

namespace A140605.P5668759835065840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005179 (2 * (n + 1)) : ℚ) / (A005179 (n + 1) : ℚ)

end

end A140605.P5668759835065840

/-! ## A140605.P9438272314414123646

`A003680(n+1)/sqrt(A130279(n+1))`
-/

namespace A140605.P9438272314414123646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003680 (n + 1) : ℝ) / Real.sqrt (A130279 (n + 1) : ℝ)

end

end A140605.P9438272314414123646

/-! ## A140605.P533538179803855115

`A187941(A004277(n+1))/A187941(n+1)`
-/

namespace A140605.P533538179803855115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187941 (A004277 (n + 1)).toNat : ℚ) / (A187941 (n + 1) : ℚ)

end

end A140605.P533538179803855115

/-!
# A140607: (A039649(2n+1)+A137576(n))/2.

The programs for A140607, there is no canonical definition to state claims against.
-/

/-! ## A140607.P14019392140976390692

`(A039649(2*(n+1)+1)+A137576(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140607.P14019392140976390692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (2 * (n + 1) + 1) + A137576 (n + 1) : ℚ) / 2

end

end A140607.P14019392140976390692

/-! ## A140607.P13649969446249879095

`A003602(A137576(n+1)+A037225(n+1))`
-/

namespace A140607.P13649969446249879095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A137576 (n + 1) + A037225 (n + 1)).toNat

end

end A140607.P13649969446249879095

/-! ## A140607.P560097517368459525

`A008619(A137576(n+1)+A037225(n+1))`
-/

namespace A140607.P560097517368459525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A137576 (n + 1) + A037225 (n + 1)).toNat

end

end A140607.P560097517368459525

/-! ## A140607.P7113138068563545883

`A110654(A137576(n+1)+A037225(n+1))`
-/

namespace A140607.P7113138068563545883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A137576 (n + 1) + A037225 (n + 1)).toNat

end

end A140607.P7113138068563545883

/-! ## A140607.P10488848834346414476

`A026741(A137576(n+1)+A037225(n+1)+1)`
-/

namespace A140607.P10488848834346414476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A137576 (n + 1) + A037225 (n + 1) + 1).toNat

end

end A140607.P10488848834346414476

/-! ## A140607.P11456666351957554815

`A032742(A137576(n+1)+A037225(n+1)+1)`
-/

namespace A140607.P11456666351957554815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A137576 (n + 1) + A037225 (n + 1) + 1).toNat

end

end A140607.P11456666351957554815

/-!
# A140610: Running prime totals of prime factors (without multiplicity) of consecutive composite N.

The programs for A140610, there is no canonical definition to state claims against.
-/

/-! ## A140610.P8208196968012861641

`p?[∑[∑{p}[A002808(n+1), #]]]`
-/

namespace A140610.P8208196968012861641
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140610.P8208196968012861641

/-! ## A140610.P6822431694819714147

`p?[∑[∑{p}[A018252(n+1), #]]]`
-/

namespace A140610.P6822431694819714147
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140610.P6822431694819714147

/-! ## A140610.P14123914153824119483

`p?[∑[A008472(A002808(n+1))]]`
-/

namespace A140610.P14123914153824119483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A002808 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140610.P14123914153824119483

/-! ## A140610.P14967738663443842547

`p?[∑[A008472(A072668(n+1)+1)]]`
-/

namespace A140610.P14967738663443842547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A072668 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140610.P14967738663443842547

/-! ## A140610.P4274611627769792743

`p?[A008472(A060462(n+1)+1)+a(n-1)]` with `a(0)=0`
-/

namespace A140610.P4274611627769792743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A008472 (A060462 (n + 1) + 1).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140610.P4274611627769792743

/-!
# A140612: Integers k such that both k and k+1 are the sum of 2 squares.

The programs for A140612, the canonical program `A140612.P4476291011363944334` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140612 has offset 1).

The definition of A140612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2741 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140612.P4476291011363944334

`eq[1, A229062(A229062(n)+n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140612

/-- `eq[1, A229062(A229062(n)+n)]` -/
def P4476291011363944334.Spec : Prop :=
  ∀ n, (P4476291011363944334.a n : ℤ) = A140612 (n + 1)

theorem P4476291011363944334.correct : P4476291011363944334.Spec := by
  intro n
  simp only [A140612, Nat.add_sub_cancel]

end A140612

/-! ## A140612.P13420631026684114741

`lt[acot(A229062(n+1)), A229062(n)]`
-/

namespace A140612.P13420631026684114741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A229062 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A140612.P13420631026684114741

namespace A140612

/-- `lt[acot(A229062(n+1)), A229062(n)]` -/
def P13420631026684114741.Spec : Prop :=
  ∀ n, (P13420631026684114741.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P10629455147462477977

`∩[A001481(n+1)-1, A001481(n+1)]`
-/

namespace A140612.P10629455147462477977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140612.P10629455147462477977

namespace A140612

/-- `∩[A001481(n+1)-1, A001481(n+1)]` -/
def P10629455147462477977.Spec : Prop :=
  ∀ n, (P10629455147462477977.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P18154453415980422059

`record[(A166687(n+2)-2)%A166687(n+1)]`
-/

namespace A140612.P18154453415980422059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166687 (n + 2) - 2) (A166687 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140612.P18154453415980422059

namespace A140612

/-- `record[(A166687(n+2)-2)%A166687(n+1)]` -/
def P18154453415980422059.Spec : Prop :=
  ∀ n, P18154453415980422059.a n = A140612 (n + 1)

end A140612

/-! ## A140612.P9255865722754649643

`A001481(eq[1, A001481(n+2)-A001481(n+1)]+1)`
-/

namespace A140612.P9255865722754649643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2) - A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A140612.P9255865722754649643

namespace A140612

/-- `A001481(eq[1, A001481(n+2)-A001481(n+1)]+1)` -/
def P9255865722754649643.Spec : Prop :=
  ∀ n, P9255865722754649643.a n = A140612 (n + 1)

end A140612

/-! ## A140612.P5512825102534063827

`A001481(lt[A001481(n+2)-A001481(n+1), 2]+1)`
-/

namespace A140612.P5512825102534063827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2) - A001481 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A140612.P5512825102534063827

namespace A140612

/-- `A001481(lt[A001481(n+2)-A001481(n+1), 2]+1)` -/
def P5512825102534063827.Spec : Prop :=
  ∀ n, P5512825102534063827.a n = A140612 (n + 1)

end A140612

/-! ## A140612.P2093171733489272864

`A001481(eq[1, A001481(n+2)/A166687(n+1)]+1)`
-/

namespace A140612.P2093171733489272864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001481 (n + 2) : ℚ) / (A166687 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A140612.P2093171733489272864

namespace A140612

/-- `A001481(eq[1, A001481(n+2)/A166687(n+1)]+1)` -/
def P2093171733489272864.Spec : Prop :=
  ∀ n, P2093171733489272864.a n = A140612 (n + 1)

end A140612

/-! ## A140612.P3680557195274509615

`lt[1, A229062(2*n)+A229062(n+1)]`
-/

namespace A140612.P3680557195274509615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (2 * n) + A229062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140612.P3680557195274509615

namespace A140612

/-- `lt[1, A229062(2*n)+A229062(n+1)]` -/
def P3680557195274509615.Spec : Prop :=
  ∀ n, (P3680557195274509615.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P14180392152996839228

`lt[A262678(A262678(2*n)), A229062(n+1)]`
-/

namespace A140612.P14180392152996839228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A262678 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140612.P14180392152996839228

namespace A140612

/-- `lt[A262678(A262678(2*n)), A229062(n+1)]` -/
def P14180392152996839228.Spec : Prop :=
  ∀ n, (P14180392152996839228.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P15535461924060847609

`lt[0, A330315(n)]`
-/

namespace A140612.P15535461924060847609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140612.P15535461924060847609

namespace A140612

/-- `lt[0, A330315(n)]` -/
def P15535461924060847609.Spec : Prop :=
  ∀ n, (P15535461924060847609.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P17555424133256672061

`eq[0, Δ[A070176(n)]]`
-/

namespace A140612.P17555424133256672061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140612.P17555424133256672061

namespace A140612

/-- `eq[0, Δ[A070176(n)]]` -/
def P17555424133256672061.Spec : Prop :=
  ∀ n, (P17555424133256672061.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P15303255431003567097

`eq[A070176(n+1), A070176(n)]`
-/

namespace A140612.P15303255431003567097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140612.P15303255431003567097

namespace A140612

/-- `eq[A070176(n+1), A070176(n)]` -/
def P15303255431003567097.Spec : Prop :=
  ∀ n, (P15303255431003567097.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P6803926166361584287

`lt[1, A000161(n)*A004018(n+1)]`
-/

namespace A140612.P6803926166361584287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n * A004018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140612.P6803926166361584287

namespace A140612

/-- `lt[1, A000161(n)*A004018(n+1)]` -/
def P6803926166361584287.Spec : Prop :=
  ∀ n, (P6803926166361584287.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P1269965274254660936

`lt[1, A004018(n)*A004018(n+1)]`
-/

namespace A140612.P1269965274254660936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A004018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140612.P1269965274254660936

namespace A140612

/-- `lt[1, A004018(n)*A004018(n+1)]` -/
def P1269965274254660936.Spec : Prop :=
  ∀ n, (P1269965274254660936.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P7190638437766987689

`lt[1, A259761(n)*A259761(n+1)]`
-/

namespace A140612.P7190638437766987689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259761 n * A259761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140612.P7190638437766987689

namespace A140612

/-- `lt[1, A259761(n)*A259761(n+1)]` -/
def P7190638437766987689.Spec : Prop :=
  ∀ n, (P7190638437766987689.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P11408586241866468689

`lt[A070176(n+1), char[A001481(n+1)]]`
-/

namespace A140612.P11408586241866468689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140612.P11408586241866468689

namespace A140612

/-- `lt[A070176(n+1), char[A001481(n+1)]]` -/
def P11408586241866468689.Spec : Prop :=
  ∀ n, (P11408586241866468689.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P7867394172194568806

`lt[(A005117(n+2)*Δ[A070176(n)])², 1]`
-/

namespace A140612.P7867394172194568806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 2) * (f2 (n + 1) - f2 n)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A140612.P7867394172194568806

namespace A140612

/-- `lt[(A005117(n+2)*Δ[A070176(n)])², 1]` -/
def P7867394172194568806.Spec : Prop :=
  ∀ n, (P7867394172194568806.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P16616983237015837705

`lt[(2*A109613(n)*Δ[A070176(n)])², 1]`
-/

namespace A140612.P16616983237015837705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A109613 n * (f2 (n + 1) - f2 n)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A140612.P16616983237015837705

namespace A140612

/-- `lt[(2*A109613(n)*Δ[A070176(n)])², 1]` -/
def P16616983237015837705.Spec : Prop :=
  ∀ n, (P16616983237015837705.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P16633039303798431314

`lt[A025441(n), A143574(A229062(n)+n)]`
-/

namespace A140612.P16633039303798431314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 (A229062 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140612.P16633039303798431314

namespace A140612

/-- `lt[A025441(n), A143574(A229062(n)+n)]` -/
def P16633039303798431314.Spec : Prop :=
  ∀ n, (P16633039303798431314.a n : ℤ) = A140612 (n + 1)

end A140612

/-! ## A140612.P13244081552736830960

`lt[1, A105673(n+1)*A105673(A028310(n))]`
-/

namespace A140612.P13244081552736830960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) * A105673 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A140612.P13244081552736830960

namespace A140612

/-- `lt[1, A105673(n+1)*A105673(A028310(n))]` -/
def P13244081552736830960.Spec : Prop :=
  ∀ n, (P13244081552736830960.a n : ℤ) = A140612 (n + 1)

end A140612

/-!
# A140613: Primes of the form 7*x^2 + 6*x*y + 39*y^2.

The programs for A140613, there is no canonical definition to state claims against.
-/

/-! ## A140613.P700765391857569133

`∩[A107006(n+1), A139828(n+1)]`
-/

namespace A140613.P700765391857569133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P700765391857569133

/-! ## A140613.P15035299554041101890

`∩[A033199(n+1), A139828(n+1)]`
-/

namespace A140613.P15035299554041101890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P15035299554041101890

/-! ## A140613.P8170147848464162851

`∩[A139828(n+1), A290402(n+1)]`
-/

namespace A140613.P8170147848464162851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P8170147848464162851

/-! ## A140613.P2623969346066230220

`∩[A007522(n+1), A139828(n+1)]`
-/

namespace A140613.P2623969346066230220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P2623969346066230220

/-! ## A140613.P14777513645065757574

`∩[A045382(n+1), A139828(n+1)]`
-/

namespace A140613.P14777513645065757574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P14777513645065757574

/-! ## A140613.P2534864226560843296

`∩[A094712(n+1), A139828(n+1)]`
-/

namespace A140613.P2534864226560843296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P2534864226560843296

/-! ## A140613.P9293642352048542656

`∩[A033199(n+1), A141777(n+1)]`
-/

namespace A140613.P9293642352048542656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P9293642352048542656

/-! ## A140613.P3191381416937995220

`∩[A068229(n+1), A141777(n+1)]`
-/

namespace A140613.P3191381416937995220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P3191381416937995220

/-! ## A140613.P11323856481623021410

`∩[A107006(n+1), A141777(n+1)]`
-/

namespace A140613.P11323856481623021410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P11323856481623021410

/-! ## A140613.P11474011199297572625

`∩[A139828(n+1), A141777(n+1)]`
-/

namespace A140613.P11474011199297572625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P11474011199297572625

/-! ## A140613.P6735306713594002987

`∩[A033199(n+1), A141183(n+1)]`
-/

namespace A140613.P6735306713594002987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P6735306713594002987

/-! ## A140613.P6853131069237463324

`∩[A107006(n+1), A141183(n+1)]`
-/

namespace A140613.P6853131069237463324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P6853131069237463324

/-! ## A140613.P13614221254142651223

`∩[A141183(n+1), A290402(n+1)]`
-/

namespace A140613.P13614221254142651223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P13614221254142651223

/-! ## A140613.P3354558154736420345

`∩[A014663(n+1), A139828(n+1)]`
-/

namespace A140613.P3354558154736420345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P3354558154736420345

/-! ## A140613.P13416071103241520349

`∩[A040098(n+1), A139828(n+1)]`
-/

namespace A140613.P13416071103241520349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P13416071103241520349

/-! ## A140613.P13365463875007023583

`∩[A141777(n+1), A332514(n+1)]`
-/

namespace A140613.P13365463875007023583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P13365463875007023583

/-! ## A140613.P9789807130214919679

`∩[A004628(n+1), A139828(n+1)]`
-/

namespace A140613.P9789807130214919679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P9789807130214919679

/-! ## A140613.P5949604306438775789

`∩[A040152(n+1), A107006(n+1)]`
-/

namespace A140613.P5949604306438775789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P5949604306438775789

/-! ## A140613.P16490587716004881798

`∩[A040152(n+1), A139828(n+1)]`
-/

namespace A140613.P16490587716004881798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140613.P16490587716004881798

/-!
# A140614: Primes of the form 15x^2+12xy+20y^2.

The programs for A140614, there is no canonical definition to state claims against.
-/

/-! ## A140614.P17539295185035732638

`p?[or(4, A107138(n+2))]`
-/

namespace A140614.P17539295185035732638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107138 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140614.P17539295185035732638

/-! ## A140614.P16630168278962596067

`∩[A033216(n+1), A107138(n+1)]`
-/

namespace A140614.P16630168278962596067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P16630168278962596067

/-! ## A140614.P14587258479245603570

`∩[A033216(n+1), A134517(n+1)]`
-/

namespace A140614.P14587258479245603570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P14587258479245603570

/-! ## A140614.P3312373629688285462

`∩[A007522(n+1), A107138(n+1)]`
-/

namespace A140614.P3312373629688285462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P3312373629688285462

/-! ## A140614.P4444271437167699815

`∩[A045382(n+1), A107138(n+1)]`
-/

namespace A140614.P4444271437167699815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P4444271437167699815

/-! ## A140614.P13101745149419702901

`∩[A107138(n+1), A256397(n+1)]`
-/

namespace A140614.P13101745149419702901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P13101745149419702901

/-! ## A140614.P3252612870046960106

`∩[A094712(n+1), A107138(n+1)]`
-/

namespace A140614.P3252612870046960106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P3252612870046960106

/-! ## A140614.P5956283091369697395

`∩[A033216(n+1), A068231(n+1)]`
-/

namespace A140614.P5956283091369697395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P5956283091369697395

/-! ## A140614.P1896130423069399185

`∩[A007522(n+1), A107010(n+1)]`
-/

namespace A140614.P1896130423069399185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P1896130423069399185

/-! ## A140614.P3037246792914272339

`∩[A045382(n+1), A107010(n+1)]`
-/

namespace A140614.P3037246792914272339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P3037246792914272339

/-! ## A140614.P10126349875921325415

`∩[A033216(n+1), A141171(n+1)]`
-/

namespace A140614.P10126349875921325415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P10126349875921325415

/-! ## A140614.P13648133828300480282

`∩[A068231(n+1), A139837(n+1)]`
-/

namespace A140614.P13648133828300480282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P13648133828300480282

/-! ## A140614.P1592685812846187924

`∩[A107010(n+1), A130063(n+1)]`
-/

namespace A140614.P1592685812846187924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P1592685812846187924

/-! ## A140614.P16293337125987372058

`∩[A033216(n+1), A141123(n+1)]`
-/

namespace A140614.P16293337125987372058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P16293337125987372058

/-! ## A140614.P9570593779148157404

`∩[A033216(n+1), A141187(n+1)]`
-/

namespace A140614.P9570593779148157404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P9570593779148157404

/-! ## A140614.P3151676197861403123

`∩[A139837(n+1), A141123(n+1)]`
-/

namespace A140614.P3151676197861403123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P3151676197861403123

/-! ## A140614.P10613670584180351622

`∩[A014663(n+1), A107138(n+1)]`
-/

namespace A140614.P10613670584180351622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P10613670584180351622

/-! ## A140614.P4854935324425872777

`∩[A139837(n+1), A385220(n+1)]`
-/

namespace A140614.P4854935324425872777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P4854935324425872777

/-! ## A140614.P10572684360977177680

`∩[A139837(n+1), A363215(n+1)]`
-/

namespace A140614.P10572684360977177680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140614.P10572684360977177680

/-!
# A140615: Primes of the form 13x^2+6xy+21y^2.

The programs for A140615, the canonical program `A140615.P18277158942554378838` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140615 has offset 1).

The definition of A140615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140615.P5865146281801681981

`∩[A139530(n+1), A139838(n+1)]`
-/

namespace A140615.P5865146281801681981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P5865146281801681981

namespace A140615

/-- `∩[A139530(n+1), A139838(n+1)]` -/
def P5865146281801681981.Spec : Prop :=
  ∀ n, (P5865146281801681981.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P18277158942554378838

`∩[A068228(n+1), A139838(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140615

/-- `∩[A068228(n+1), A139838(n+1)]` -/
def P18277158942554378838.Spec : Prop :=
  ∀ n, (P18277158942554378838.a n : ℤ) = A140615 (n + 1)

theorem P18277158942554378838.correct : P18277158942554378838.Spec := by
  intro n
  simp only [A140615, Nat.add_sub_cancel]

end A140615

/-! ## A140615.P8251018673373613376

`∩[A068228(n+1), A141777(n+1)]`
-/

namespace A140615.P8251018673373613376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P8251018673373613376

namespace A140615

/-- `∩[A068228(n+1), A141777(n+1)]` -/
def P8251018673373613376.Spec : Prop :=
  ∀ n, (P8251018673373613376.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P13261657244470036373

`∩[A139530(n+1), A141777(n+1)]`
-/

namespace A140615.P13261657244470036373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P13261657244470036373

namespace A140615

/-- `∩[A139530(n+1), A141777(n+1)]` -/
def P13261657244470036373.Spec : Prop :=
  ∀ n, (P13261657244470036373.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P14295457410329150959

`∩[A068228(n+1), A106984(n+1)]`
-/

namespace A140615.P14295457410329150959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P14295457410329150959

namespace A140615

/-- `∩[A068228(n+1), A106984(n+1)]` -/
def P14295457410329150959.Spec : Prop :=
  ∀ n, (P14295457410329150959.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P3923694731554831490

`∩[A106984(n+1), A139530(n+1)]`
-/

namespace A140615.P3923694731554831490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P3923694731554831490

namespace A140615

/-- `∩[A106984(n+1), A139530(n+1)]` -/
def P3923694731554831490.Spec : Prop :=
  ∀ n, (P3923694731554831490.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P1651905825985302528

`∩[A106984(n+1), A351537(n+1)]`
-/

namespace A140615.P1651905825985302528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P1651905825985302528

namespace A140615

/-- `∩[A106984(n+1), A351537(n+1)]` -/
def P1651905825985302528.Spec : Prop :=
  ∀ n, (P1651905825985302528.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P3600029444089900409

`∩[A139838(n+1), A351537(n+1)]`
-/

namespace A140615.P3600029444089900409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P3600029444089900409

namespace A140615

/-- `∩[A139838(n+1), A351537(n+1)]` -/
def P3600029444089900409.Spec : Prop :=
  ∀ n, (P3600029444089900409.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P13165844760980170862

`∩[A141777(n+1), A351537(n+1)]`
-/

namespace A140615.P13165844760980170862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P13165844760980170862

namespace A140615

/-- `∩[A141777(n+1), A351537(n+1)]` -/
def P13165844760980170862.Spec : Prop :=
  ∀ n, (P13165844760980170862.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P4763055627225474746

`∩[A106984(n+1), A354467(n+1)]`
-/

namespace A140615.P4763055627225474746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P4763055627225474746

namespace A140615

/-- `∩[A106984(n+1), A354467(n+1)]` -/
def P4763055627225474746.Spec : Prop :=
  ∀ n, (P4763055627225474746.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P1010530643356827819

`∩[A139838(n+1), A354467(n+1)]`
-/

namespace A140615.P1010530643356827819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P1010530643356827819

namespace A140615

/-- `∩[A139838(n+1), A354467(n+1)]` -/
def P1010530643356827819.Spec : Prop :=
  ∀ n, (P1010530643356827819.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P8857612434242169746

`∩[A141777(n+1), A354467(n+1)]`
-/

namespace A140615.P8857612434242169746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P8857612434242169746

namespace A140615

/-- `∩[A141777(n+1), A354467(n+1)]` -/
def P8857612434242169746.Spec : Prop :=
  ∀ n, (P8857612434242169746.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P3776248556016374873

`∩[A002476(n+1), A139838(n+1)]`
-/

namespace A140615.P3776248556016374873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P3776248556016374873

namespace A140615

/-- `∩[A002476(n+1), A139838(n+1)]` -/
def P3776248556016374873.Spec : Prop :=
  ∀ n, (P3776248556016374873.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P12133473608511993545

`∩[A007645(n+1), A139838(n+1)]`
-/

namespace A140615.P12133473608511993545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P12133473608511993545

namespace A140615

/-- `∩[A007645(n+1), A139838(n+1)]` -/
def P12133473608511993545.Spec : Prop :=
  ∀ n, (P12133473608511993545.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P4634167281994149651

`∩[A038947(n+1), A139530(n+1)]`
-/

namespace A140615.P4634167281994149651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P4634167281994149651

namespace A140615

/-- `∩[A038947(n+1), A139530(n+1)]` -/
def P4634167281994149651.Spec : Prop :=
  ∀ n, (P4634167281994149651.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P13819433297186494828

`∩[A038874(n+1), A139838(n+1)]`
-/

namespace A140615.P13819433297186494828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P13819433297186494828

namespace A140615

/-- `∩[A038874(n+1), A139838(n+1)]` -/
def P13819433297186494828.Spec : Prop :=
  ∀ n, (P13819433297186494828.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P6842584459469061921

`∩[A038947(n+1), A139838(n+1)]`
-/

namespace A140615.P6842584459469061921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P6842584459469061921

namespace A140615

/-- `∩[A038947(n+1), A139838(n+1)]` -/
def P6842584459469061921.Spec : Prop :=
  ∀ n, (P6842584459469061921.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P5974684267406247593

`∩[A045331(n+1), A139838(n+1)]`
-/

namespace A140615.P5974684267406247593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P5974684267406247593

namespace A140615

/-- `∩[A045331(n+1), A139838(n+1)]` -/
def P5974684267406247593.Spec : Prop :=
  ∀ n, (P5974684267406247593.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P12794744283660128818

`∩[A045375(n+1), A139838(n+1)]`
-/

namespace A140615.P12794744283660128818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P12794744283660128818

namespace A140615

/-- `∩[A045375(n+1), A139838(n+1)]` -/
def P12794744283660128818.Spec : Prop :=
  ∀ n, (P12794744283660128818.a n : ℤ) = A140615 (n + 1)

end A140615

/-! ## A140615.P14925532125321699643

`∩[A097933(n+1), A139838(n+1)]`
-/

namespace A140615.P14925532125321699643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P14925532125321699643

namespace A140615

/-- `∩[A097933(n+1), A139838(n+1)]` -/
def P14925532125321699643.Spec : Prop :=
  ∀ n, (P14925532125321699643.a n : ℤ) = A140615 (n + 1)

end A140615

/-!
# A140616: Primes of the form 5x^2+4xy+68y^2.

The programs for A140616, the canonical program `A140616.P17621141678928507057` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140616 has offset 1).

The definition of A140616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140616.P13817680495084865861

`∩[A106972(n+1), A107003(n+1)]`
-/

namespace A140616.P13817680495084865861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P13817680495084865861

namespace A140616

/-- `∩[A106972(n+1), A107003(n+1)]` -/
def P13817680495084865861.Spec : Prop :=
  ∀ n, (P13817680495084865861.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P9846085446687176976

`p?[or(4, A106972(n+1))]`
-/

namespace A140616.P9846085446687176976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A106972 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140616.P9846085446687176976

namespace A140616

/-- `p?[or(4, A106972(n+1))]` -/
def P9846085446687176976.Spec : Prop :=
  ∀ n, P9846085446687176976.a n = A140616 (n + 1)

end A140616

/-! ## A140616.P6630236063540179434

`∩[A106972(n+1), A354084(n+1)]`
-/

namespace A140616.P6630236063540179434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P6630236063540179434

namespace A140616

/-- `∩[A106972(n+1), A354084(n+1)]` -/
def P6630236063540179434.Spec : Prop :=
  ∀ n, (P6630236063540179434.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P15101434069865681248

`∩[A007521(n+1), A106972(n+1)]`
-/

namespace A140616.P15101434069865681248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P15101434069865681248

namespace A140616

/-- `∩[A007521(n+1), A106972(n+1)]` -/
def P15101434069865681248.Spec : Prop :=
  ∀ n, (P15101434069865681248.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P14773836322487270515

`∩[A045366(n+1), A106972(n+1)]`
-/

namespace A140616.P14773836322487270515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P14773836322487270515

namespace A140616

/-- `∩[A045366(n+1), A106972(n+1)]` -/
def P14773836322487270515.Spec : Prop :=
  ∀ n, (P14773836322487270515.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P13037765283549916005

`∩[A084865(n+1), A106972(n+1)]`
-/

namespace A140616.P13037765283549916005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P13037765283549916005

namespace A140616

/-- `∩[A084865(n+1), A106972(n+1)]` -/
def P13037765283549916005.Spec : Prop :=
  ∀ n, (P13037765283549916005.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P5174712806888927883

`∩[A106972(n+1), A141171(n+1)]`
-/

namespace A140616.P5174712806888927883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P5174712806888927883

namespace A140616

/-- `∩[A106972(n+1), A141171(n+1)]` -/
def P5174712806888927883.Spec : Prop :=
  ∀ n, (P5174712806888927883.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P12580671270713548605

`∩[A007521(n+1), A141160(n+1)]`
-/

namespace A140616.P12580671270713548605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P12580671270713548605

namespace A140616

/-- `∩[A007521(n+1), A141160(n+1)]` -/
def P12580671270713548605.Spec : Prop :=
  ∀ n, (P12580671270713548605.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P17621141678928507057

`∩[A040117(n+1), A141191(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140616

/-- `∩[A040117(n+1), A141191(n+1)]` -/
def P17621141678928507057.Spec : Prop :=
  ∀ n, (P17621141678928507057.a n : ℤ) = A140616 (n + 1)

theorem P17621141678928507057.correct : P17621141678928507057.Spec := by
  intro n
  simp only [A140616, Nat.add_sub_cancel]

end A140616

/-! ## A140616.P18113695047862559617

`∩[A045366(n+1), A141160(n+1)]`
-/

namespace A140616.P18113695047862559617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P18113695047862559617

namespace A140616

/-- `∩[A045366(n+1), A141160(n+1)]` -/
def P18113695047862559617.Spec : Prop :=
  ∀ n, (P18113695047862559617.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P4783372952962671326

`∩[A084865(n+1), A141191(n+1)]`
-/

namespace A140616.P4783372952962671326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P4783372952962671326

namespace A140616

/-- `∩[A084865(n+1), A141191(n+1)]` -/
def P4783372952962671326.Spec : Prop :=
  ∀ n, (P4783372952962671326.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P16075660310335319603

`∩[A106972(n+1), A141191(n+1)]`
-/

namespace A140616.P16075660310335319603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P16075660310335319603

namespace A140616

/-- `∩[A106972(n+1), A141191(n+1)]` -/
def P16075660310335319603.Spec : Prop :=
  ∀ n, (P16075660310335319603.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P6919363377281787686

`∩[A107003(n+1), A141160(n+1)]`
-/

namespace A140616.P6919363377281787686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P6919363377281787686

namespace A140616

/-- `∩[A107003(n+1), A141160(n+1)]` -/
def P6919363377281787686.Spec : Prop :=
  ∀ n, (P6919363377281787686.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P5129329345855343316

`∩[A107003(n+1), A141191(n+1)]`
-/

namespace A140616.P5129329345855343316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P5129329345855343316

namespace A140616

/-- `∩[A107003(n+1), A141191(n+1)]` -/
def P5129329345855343316.Spec : Prop :=
  ∀ n, (P5129329345855343316.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P5971556862679648340

`∩[A141191(n+1), A243183(n+1)]`
-/

namespace A140616.P5971556862679648340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P5971556862679648340

namespace A140616

/-- `∩[A141191(n+1), A243183(n+1)]` -/
def P5971556862679648340.Spec : Prop :=
  ∀ n, (P5971556862679648340.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P12547222508390670015

`∩[A141191(n+1), A354084(n+1)]`
-/

namespace A140616.P12547222508390670015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P12547222508390670015

namespace A140616

/-- `∩[A141191(n+1), A354084(n+1)]` -/
def P12547222508390670015.Spec : Prop :=
  ∀ n, (P12547222508390670015.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P5023305724407608861

`∩[A040117(n+1), A106915(n+1)]`
-/

namespace A140616.P5023305724407608861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P5023305724407608861

namespace A140616

/-- `∩[A040117(n+1), A106915(n+1)]` -/
def P5023305724407608861.Spec : Prop :=
  ∀ n, (P5023305724407608861.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P12794237828640223460

`∩[A106915(n+1), A106972(n+1)]`
-/

namespace A140616.P12794237828640223460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P12794237828640223460

namespace A140616

/-- `∩[A106915(n+1), A106972(n+1)]` -/
def P12794237828640223460.Spec : Prop :=
  ∀ n, (P12794237828640223460.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P11001457774621009215

`∩[A106915(n+1), A107003(n+1)]`
-/

namespace A140616.P11001457774621009215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P11001457774621009215

namespace A140616

/-- `∩[A106915(n+1), A107003(n+1)]` -/
def P11001457774621009215.Spec : Prop :=
  ∀ n, (P11001457774621009215.a n : ℤ) = A140616 (n + 1)

end A140616

/-! ## A140616.P2391270894392250591

`∩[A106915(n+1), A141171(n+1)]`
-/

namespace A140616.P2391270894392250591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140616.P2391270894392250591

namespace A140616

/-- `∩[A106915(n+1), A141171(n+1)]` -/
def P2391270894392250591.Spec : Prop :=
  ∀ n, (P2391270894392250591.a n : ℤ) = A140616 (n + 1)

end A140616

/-!
# A140617: Primes of the form 11x^2+8xy+32y^2.

The programs for A140617, the canonical program `A140617.P13437074169227290798` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140617 has offset 1).

The definition of A140617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140617.P13437074169227290798

`∩[A168539(n+1), A102273(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140617

/-- `∩[A168539(n+1), A102273(n+1)]` -/
def P13437074169227290798.Spec : Prop :=
  ∀ n, (P13437074169227290798.a n : ℤ) = A140617 (n + 1)

theorem P13437074169227290798.correct : P13437074169227290798.Spec := by
  intro n
  simp only [A140617, Nat.add_sub_cancel]

end A140617

/-! ## A140617.P15001429943305050077

`∩[A106927(n+1), A139853(n+1)]`
-/

namespace A140617.P15001429943305050077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P15001429943305050077

namespace A140617

/-- `∩[A106927(n+1), A139853(n+1)]` -/
def P15001429943305050077.Spec : Prop :=
  ∀ n, (P15001429943305050077.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P16089880987569131678

`∩[A084865(n+1), A102273(n+1)]`
-/

namespace A140617.P16089880987569131678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P16089880987569131678

namespace A140617

/-- `∩[A084865(n+1), A102273(n+1)]` -/
def P16089880987569131678.Spec : Prop :=
  ∀ n, (P16089880987569131678.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P14528747232874410282

`∩[A102273(n+1), A106949(n+1)]`
-/

namespace A140617.P14528747232874410282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P14528747232874410282

namespace A140617

/-- `∩[A102273(n+1), A106949(n+1)]` -/
def P14528747232874410282.Spec : Prop :=
  ∀ n, (P14528747232874410282.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P8638464054038813065

`∩[A084865(n+1), A139853(n+1)]`
-/

namespace A140617.P8638464054038813065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P8638464054038813065

namespace A140617

/-- `∩[A084865(n+1), A139853(n+1)]` -/
def P8638464054038813065.Spec : Prop :=
  ∀ n, (P8638464054038813065.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P8609182649150445630

`∩[A084865(n+1), A107133(n+1)]`
-/

namespace A140617.P8609182649150445630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P8609182649150445630

namespace A140617

/-- `∩[A084865(n+1), A107133(n+1)]` -/
def P8609182649150445630.Spec : Prop :=
  ∀ n, (P8609182649150445630.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P7683266387255274068

`∩[A106949(n+1), A107133(n+1)]`
-/

namespace A140617.P7683266387255274068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P7683266387255274068

namespace A140617

/-- `∩[A106949(n+1), A107133(n+1)]` -/
def P7683266387255274068.Spec : Prop :=
  ∀ n, (P7683266387255274068.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P15551796469063038280

`∩[A068231(n+1), A139853(n+1)]`
-/

namespace A140617.P15551796469063038280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P15551796469063038280

namespace A140617

/-- `∩[A068231(n+1), A139853(n+1)]` -/
def P15551796469063038280.Spec : Prop :=
  ∀ n, (P15551796469063038280.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P3823307772528385283

`∩[A068231(n+1), A141190(n+1)]`
-/

namespace A140617.P3823307772528385283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P3823307772528385283

namespace A140617

/-- `∩[A068231(n+1), A141190(n+1)]` -/
def P3823307772528385283.Spec : Prop :=
  ∀ n, (P3823307772528385283.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P2804366662523914766

`∩[A139853(n+1), A141123(n+1)]`
-/

namespace A140617.P2804366662523914766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P2804366662523914766

namespace A140617

/-- `∩[A139853(n+1), A141123(n+1)]` -/
def P2804366662523914766.Spec : Prop :=
  ∀ n, (P2804366662523914766.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P14478378255734092256

`∩[A007520(n+1), A102273(n+1)]`
-/

namespace A140617.P14478378255734092256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P14478378255734092256

namespace A140617

/-- `∩[A007520(n+1), A102273(n+1)]` -/
def P14478378255734092256.Spec : Prop :=
  ∀ n, (P14478378255734092256.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P1986560315971527273

`∩[A007520(n+1), A106927(n+1)]`
-/

namespace A140617.P1986560315971527273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P1986560315971527273

namespace A140617

/-- `∩[A007520(n+1), A106927(n+1)]` -/
def P1986560315971527273.Spec : Prop :=
  ∀ n, (P1986560315971527273.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P7769256327052053228

`∩[A045339(n+1), A102273(n+1)]`
-/

namespace A140617.P7769256327052053228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P7769256327052053228

namespace A140617

/-- `∩[A045339(n+1), A102273(n+1)]` -/
def P7769256327052053228.Spec : Prop :=
  ∀ n, (P7769256327052053228.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P7243687581776881131

`∩[A102273(n+1), A192717(n+1)]`
-/

namespace A140617.P7243687581776881131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P7243687581776881131

namespace A140617

/-- `∩[A102273(n+1), A192717(n+1)]` -/
def P7243687581776881131.Spec : Prop :=
  ∀ n, (P7243687581776881131.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P1652643468912352245

`∩[A106927(n+1), A192717(n+1)]`
-/

namespace A140617.P1652643468912352245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P1652643468912352245

namespace A140617

/-- `∩[A106927(n+1), A192717(n+1)]` -/
def P1652643468912352245.Spec : Prop :=
  ∀ n, (P1652643468912352245.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P14432498203516667220

`∩[A139853(n+1), A332516(n+1)]`
-/

namespace A140617.P14432498203516667220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P14432498203516667220

namespace A140617

/-- `∩[A139853(n+1), A332516(n+1)]` -/
def P14432498203516667220.Spec : Prop :=
  ∀ n, (P14432498203516667220.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P6594065071735995362

`∩[A141190(n+1), A332516(n+1)]`
-/

namespace A140617.P6594065071735995362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P6594065071735995362

namespace A140617

/-- `∩[A141190(n+1), A332516(n+1)]` -/
def P6594065071735995362.Spec : Prop :=
  ∀ n, (P6594065071735995362.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P15780542333790551564

`∩[A040101(n+1), A139853(n+1)]`
-/

namespace A140617.P15780542333790551564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P15780542333790551564

namespace A140617

/-- `∩[A040101(n+1), A139853(n+1)]` -/
def P15780542333790551564.Spec : Prop :=
  ∀ n, (P15780542333790551564.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P583553365746977588

`∩[A040124(n+1), A139853(n+1)]`
-/

namespace A140617.P583553365746977588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P583553365746977588

namespace A140617

/-- `∩[A040124(n+1), A139853(n+1)]` -/
def P583553365746977588.Spec : Prop :=
  ∀ n, (P583553365746977588.a n : ℤ) = A140617 (n + 1)

end A140617

/-! ## A140617.P16749863610633006898

`∩[A040128(n+1), A102273(n+1)]`
-/

namespace A140617.P16749863610633006898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P16749863610633006898

namespace A140617

/-- `∩[A040128(n+1), A102273(n+1)]` -/
def P16749863610633006898.Spec : Prop :=
  ∀ n, (P16749863610633006898.a n : ℤ) = A140617 (n + 1)

end A140617

/-!
# A140618: Primes of the form 20*x^2+4*x*y+23*y^2.

The programs for A140618, the canonical program `A140618.P13228081226966697851` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140618 has offset 1).

The definition of A140618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140618.P13228081226966697851

`∩[A134517(n+1), A139834(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140618

/-- `∩[A134517(n+1), A139834(n+1)]` -/
def P13228081226966697851.Spec : Prop :=
  ∀ n, (P13228081226966697851.a n : ℤ) = A140618 (n + 1)

theorem P13228081226966697851.correct : P13228081226966697851.Spec := by
  intro n
  simp only [A140618, Nat.add_sub_cancel]

end A140618

/-! ## A140618.P10423350317482130087

`p?[or(4, A139834(n+1))]`
-/

namespace A140618.P10423350317482130087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139834 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140618.P10423350317482130087

namespace A140618

/-- `p?[or(4, A139834(n+1))]` -/
def P10423350317482130087.Spec : Prop :=
  ∀ n, P10423350317482130087.a n = A140618 (n + 1)

end A140618

/-! ## A140618.P14442971379182627433

`∩[A130063(n+1), A139834(n+1)]`
-/

namespace A140618.P14442971379182627433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P14442971379182627433

namespace A140618

/-- `∩[A130063(n+1), A139834(n+1)]` -/
def P14442971379182627433.Spec : Prop :=
  ∀ n, (P14442971379182627433.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P12651245940883755979

`∩[A007522(n+1), A139834(n+1)]`
-/

namespace A140618.P12651245940883755979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P12651245940883755979

namespace A140618

/-- `∩[A007522(n+1), A139834(n+1)]` -/
def P12651245940883755979.Spec : Prop :=
  ∀ n, (P12651245940883755979.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P9877153633214779159

`∩[A045382(n+1), A139834(n+1)]`
-/

namespace A140618.P9877153633214779159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P9877153633214779159

namespace A140618

/-- `∩[A045382(n+1), A139834(n+1)]` -/
def P9877153633214779159.Spec : Prop :=
  ∀ n, (P9877153633214779159.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P2424566571379322242

`∩[A139834(n+1), A256397(n+1)]`
-/

namespace A140618.P2424566571379322242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P2424566571379322242

namespace A140618

/-- `∩[A139834(n+1), A256397(n+1)]` -/
def P2424566571379322242.Spec : Prop :=
  ∀ n, (P2424566571379322242.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P324634811873304158

`∩[A094712(n+1), A139834(n+1)]`
-/

namespace A140618.P324634811873304158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P324634811873304158

namespace A140618

/-- `∩[A094712(n+1), A139834(n+1)]` -/
def P324634811873304158.Spec : Prop :=
  ∀ n, (P324634811873304158.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P10061634638024387086

`∩[A139834(n+1), A141171(n+1)]`
-/

namespace A140618.P10061634638024387086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P10061634638024387086

namespace A140618

/-- `∩[A139834(n+1), A141171(n+1)]` -/
def P10061634638024387086.Spec : Prop :=
  ∀ n, (P10061634638024387086.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P3685190422062784325

`∩[A014663(n+1), A139834(n+1)]`
-/

namespace A140618.P3685190422062784325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P3685190422062784325

namespace A140618

/-- `∩[A014663(n+1), A139834(n+1)]` -/
def P3685190422062784325.Spec : Prop :=
  ∀ n, (P3685190422062784325.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P17520049943632380463

`∩[A040098(n+1), A139834(n+1)]`
-/

namespace A140618.P17520049943632380463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P17520049943632380463

namespace A140618

/-- `∩[A040098(n+1), A139834(n+1)]` -/
def P17520049943632380463.Spec : Prop :=
  ∀ n, (P17520049943632380463.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P7971784008268793355

`∩[A040107(n+1), A139834(n+1)]`
-/

namespace A140618.P7971784008268793355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P7971784008268793355

namespace A140618

/-- `∩[A040107(n+1), A139834(n+1)]` -/
def P7971784008268793355.Spec : Prop :=
  ∀ n, (P7971784008268793355.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P10882083011375536281

`∩[A004628(n+1), A139834(n+1)]`
-/

namespace A140618.P10882083011375536281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P10882083011375536281

namespace A140618

/-- `∩[A004628(n+1), A139834(n+1)]` -/
def P10882083011375536281.Spec : Prop :=
  ∀ n, (P10882083011375536281.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P5524371061832908445

`∩[A040141(n+1), A139834(n+1)]`
-/

namespace A140618.P5524371061832908445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P5524371061832908445

namespace A140618

/-- `∩[A040141(n+1), A139834(n+1)]` -/
def P5524371061832908445.Spec : Prop :=
  ∀ n, (P5524371061832908445.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P2597211906539749559

`∩[A040992(n+1), A139834(n+1)]`
-/

namespace A140618.P2597211906539749559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P2597211906539749559

namespace A140618

/-- `∩[A040992(n+1), A139834(n+1)]` -/
def P2597211906539749559.Spec : Prop :=
  ∀ n, (P2597211906539749559.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P1589043465755912226

`∩[A036259(n+1), A139834(n+1)]`
-/

namespace A140618.P1589043465755912226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P1589043465755912226

namespace A140618

/-- `∩[A036259(n+1), A139834(n+1)]` -/
def P1589043465755912226.Spec : Prop :=
  ∀ n, (P1589043465755912226.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P5873991895150847569

`∩[A139834(n+1), A183010(n)]`
-/

namespace A140618.P5873991895150847569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P5873991895150847569

namespace A140618

/-- `∩[A139834(n+1), A183010(n)]` -/
def P5873991895150847569.Spec : Prop :=
  ∀ n, (P5873991895150847569.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P3437194448791643483

`∩[A045315(n+1), A139834(n+1)]`
-/

namespace A140618.P3437194448791643483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P3437194448791643483

namespace A140618

/-- `∩[A045315(n+1), A139834(n+1)]` -/
def P3437194448791643483.Spec : Prop :=
  ∀ n, (P3437194448791643483.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P17316438871188968668

`∩[A191028(n+1), A183010(n)]`
-/

namespace A140618.P17316438871188968668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P17316438871188968668

namespace A140618

/-- `∩[A191028(n+1), A183010(n)]` -/
def P17316438871188968668.Spec : Prop :=
  ∀ n, (P17316438871188968668.a n : ℤ) = A140618 (n + 1)

end A140618

/-! ## A140618.P5891893498612234307

`∩[A038876(n+1), A139834(n+1)]`
-/

namespace A140618.P5891893498612234307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140618.P5891893498612234307

namespace A140618

/-- `∩[A038876(n+1), A139834(n+1)]` -/
def P5891893498612234307.Spec : Prop :=
  ∀ n, (P5891893498612234307.a n : ℤ) = A140618 (n + 1)

end A140618

/-!
# A140619: Primes of the form 19x^2+4xy+28y^2.

The programs for A140619, the canonical program `A140619.P10258335897419128005` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140619 has offset 1).

The definition of A140619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140619.P36234091856230850

`∩[A139828(n+1), A332446(n+1)]`
-/

namespace A140619.P36234091856230850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P36234091856230850

namespace A140619

/-- `∩[A139828(n+1), A332446(n+1)]` -/
def P36234091856230850.Spec : Prop :=
  ∀ n, (P36234091856230850.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P4006778316082405190

`∩[A139828(n+1), A141373(n+1)]`
-/

namespace A140619.P4006778316082405190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P4006778316082405190

namespace A140619

/-- `∩[A139828(n+1), A141373(n+1)]` -/
def P4006778316082405190.Spec : Prop :=
  ∀ n, (P4006778316082405190.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P9341593962700642677

`∩[A107201(n+1), A139828(n+1)]`
-/

namespace A140619.P9341593962700642677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P9341593962700642677

namespace A140619

/-- `∩[A107201(n+1), A139828(n+1)]` -/
def P9341593962700642677.Spec : Prop :=
  ∀ n, (P9341593962700642677.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P10258335897419128005

`∩[A107201(n+1), A141373(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140619

/-- `∩[A107201(n+1), A141373(n+1)]` -/
def P10258335897419128005.Spec : Prop :=
  ∀ n, (P10258335897419128005.a n : ℤ) = A140619 (n + 1)

theorem P10258335897419128005.correct : P10258335897419128005.Spec := by
  intro n
  simp only [A140619, Nat.add_sub_cancel]

end A140619

/-! ## A140619.P1606058257889702339

`∩[A106950(n+1), A107201(n+1)]`
-/

namespace A140619.P1606058257889702339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P1606058257889702339

namespace A140619

/-- `∩[A106950(n+1), A107201(n+1)]` -/
def P1606058257889702339.Spec : Prop :=
  ∀ n, (P1606058257889702339.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P2519554651115564848

`∩[A106950(n+1), A139828(n+1)]`
-/

namespace A140619.P2519554651115564848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P2519554651115564848

namespace A140619

/-- `∩[A106950(n+1), A139828(n+1)]` -/
def P2519554651115564848.Spec : Prop :=
  ∀ n, (P2519554651115564848.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P17217804092144291966

`∩[A107201(n+1), A141170(n+1)]`
-/

namespace A140619.P17217804092144291966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P17217804092144291966

namespace A140619

/-- `∩[A107201(n+1), A141170(n+1)]` -/
def P17217804092144291966.Spec : Prop :=
  ∀ n, (P17217804092144291966.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P9283672862509481428

`∩[A139828(n+1), A141170(n+1)]`
-/

namespace A140619.P9283672862509481428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P9283672862509481428

namespace A140619

/-- `∩[A139828(n+1), A141170(n+1)]` -/
def P9283672862509481428.Spec : Prop :=
  ∀ n, (P9283672862509481428.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P8558060814099336491

`∩[A068229(n+1), A107201(n+1)]`
-/

namespace A140619.P8558060814099336491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P8558060814099336491

namespace A140619

/-- `∩[A068229(n+1), A107201(n+1)]` -/
def P8558060814099336491.Spec : Prop :=
  ∀ n, (P8558060814099336491.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P10903596153040748646

`∩[A007520(n+1), A139828(n+1)]`
-/

namespace A140619.P10903596153040748646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P10903596153040748646

namespace A140619

/-- `∩[A007520(n+1), A139828(n+1)]` -/
def P10903596153040748646.Spec : Prop :=
  ∀ n, (P10903596153040748646.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P10064588497941515338

`∩[A045339(n+1), A139828(n+1)]`
-/

namespace A140619.P10064588497941515338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P10064588497941515338

namespace A140619

/-- `∩[A045339(n+1), A139828(n+1)]` -/
def P10064588497941515338.Spec : Prop :=
  ∀ n, (P10064588497941515338.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P1281309933648915225

`∩[A106950(n+1), A141183(n+1)]`
-/

namespace A140619.P1281309933648915225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P1281309933648915225

namespace A140619

/-- `∩[A106950(n+1), A141183(n+1)]` -/
def P1281309933648915225.Spec : Prop :=
  ∀ n, (P1281309933648915225.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P1274007032611400292

`∩[A141170(n+1), A141183(n+1)]`
-/

namespace A140619.P1274007032611400292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P1274007032611400292

namespace A140619

/-- `∩[A141170(n+1), A141183(n+1)]` -/
def P1274007032611400292.Spec : Prop :=
  ∀ n, (P1274007032611400292.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P2443872690162023929

`∩[A068229(n+1), A106984(n+1)]`
-/

namespace A140619.P2443872690162023929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P2443872690162023929

namespace A140619

/-- `∩[A068229(n+1), A106984(n+1)]` -/
def P2443872690162023929.Spec : Prop :=
  ∀ n, (P2443872690162023929.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P15780100506464453294

`∩[A106950(n+1), A106984(n+1)]`
-/

namespace A140619.P15780100506464453294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P15780100506464453294

namespace A140619

/-- `∩[A106950(n+1), A106984(n+1)]` -/
def P15780100506464453294.Spec : Prop :=
  ∀ n, (P15780100506464453294.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P518762272374406486

`∩[A106984(n+1), A139828(n+1)]`
-/

namespace A140619.P518762272374406486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P518762272374406486

namespace A140619

/-- `∩[A106984(n+1), A139828(n+1)]` -/
def P518762272374406486.Spec : Prop :=
  ∀ n, (P518762272374406486.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P12181052562657250708

`∩[A106984(n+1), A141170(n+1)]`
-/

namespace A140619.P12181052562657250708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P12181052562657250708

namespace A140619

/-- `∩[A106984(n+1), A141170(n+1)]` -/
def P12181052562657250708.Spec : Prop :=
  ∀ n, (P12181052562657250708.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P4073744376880707522

`∩[A106984(n+1), A141373(n+1)]`
-/

namespace A140619.P4073744376880707522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P4073744376880707522

namespace A140619

/-- `∩[A106984(n+1), A141373(n+1)]` -/
def P4073744376880707522.Spec : Prop :=
  ∀ n, (P4073744376880707522.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P10921201061247603352

`∩[A107201(n+1), A385223(n+1)]`
-/

namespace A140619.P10921201061247603352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P10921201061247603352

namespace A140619

/-- `∩[A107201(n+1), A385223(n+1)]` -/
def P10921201061247603352.Spec : Prop :=
  ∀ n, (P10921201061247603352.a n : ℤ) = A140619 (n + 1)

end A140619

/-! ## A140619.P10075792524546687559

`∩[A139828(n+1), A192717(n+1)]`
-/

namespace A140619.P10075792524546687559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140619.P10075792524546687559

namespace A140619

/-- `∩[A139828(n+1), A192717(n+1)]` -/
def P10075792524546687559.Spec : Prop :=
  ∀ n, (P10075792524546687559.a n : ℤ) = A140619 (n + 1)

end A140619

/-!
# A140620: Primes of the form 23x^2+4xy+68y^2.

The programs for A140620, there is no canonical definition to state claims against.
-/

/-! ## A140620.P5772718867973254763

`∩[A139857(n+1), A139976(n+1)]`
-/

namespace A140620.P5772718867973254763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P5772718867973254763

/-! ## A140620.P17602714828770514697

`∩[A139857(n+1), A139863(n+1)]`
-/

namespace A140620.P17602714828770514697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P17602714828770514697

/-! ## A140620.P9843344017231707466

`∩[A107169(n+1), A139863(n+1)]`
-/

namespace A140620.P9843344017231707466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P9843344017231707466

/-! ## A140620.P8736794906132444185

`∩[A107169(n+1), A139976(n+1)]`
-/

namespace A140620.P8736794906132444185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P8736794906132444185

/-! ## A140620.P8369212253689952229

`∩[A139831(n+1), A139863(n+1)]`
-/

namespace A140620.P8369212253689952229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P8369212253689952229

/-! ## A140620.P6734270903044401777

`∩[A139831(n+1), A139976(n+1)]`
-/

namespace A140620.P6734270903044401777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P6734270903044401777

/-! ## A140620.P6701601638633124821

`∩[A107137(n+1), A139863(n+1)]`
-/

namespace A140620.P6701601638633124821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P6701601638633124821

/-! ## A140620.P18077776139867447286

`∩[A107137(n+1), A139976(n+1)]`
-/

namespace A140620.P18077776139867447286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P18077776139867447286

/-! ## A140620.P15097474600395311079

`∩[A134517(n+1), A139863(n+1)]`
-/

namespace A140620.P15097474600395311079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P15097474600395311079

/-! ## A140620.P16751182628516201292

`∩[A134517(n+1), A139976(n+1)]`
-/

namespace A140620.P16751182628516201292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P16751182628516201292

/-! ## A140620.P11726208433952742130

`∩[A130063(n+1), A139863(n+1)]`
-/

namespace A140620.P11726208433952742130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P11726208433952742130

/-! ## A140620.P11502725547478229443

`∩[A130063(n+1), A139976(n+1)]`
-/

namespace A140620.P11502725547478229443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P11502725547478229443

/-! ## A140620.P14312122362725726059

`∩[A106859(n+1), A139976(n+1)]`
-/

namespace A140620.P14312122362725726059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P14312122362725726059

/-! ## A140620.P10687536938894261455

`∩[A139976(n+1), A343241(n+1)]`
-/

namespace A140620.P10687536938894261455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P10687536938894261455

/-! ## A140620.P16042969881437204676

`∩[A139863(n+1), A256397(n+1)]`
-/

namespace A140620.P16042969881437204676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P16042969881437204676

/-! ## A140620.P9727192056919760373

`∩[A139976(n+1), A256397(n+1)]`
-/

namespace A140620.P9727192056919760373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P9727192056919760373

/-! ## A140620.P95146698402897317

`∩[A068231(n+1), A139863(n+1)]`
-/

namespace A140620.P95146698402897317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P95146698402897317

/-! ## A140620.P15435618544658313044

`∩[A068231(n+1), A139976(n+1)]`
-/

namespace A140620.P15435618544658313044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P15435618544658313044

/-! ## A140620.P9213180201415887897

`∩[A139863(n+1), A141123(n+1)]`
-/

namespace A140620.P9213180201415887897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P9213180201415887897

/-! ## A140620.P572702622165951341

`∩[A139863(n+1), A141187(n+1)]`
-/

namespace A140620.P572702622165951341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140620.P572702622165951341

/-!
# A140621: Primes of the form 28x^2+12xy+57y^2.

The programs for A140621, there is no canonical definition to state claims against.
-/

/-! ## A140621.P15912228654881884661

`∩[A107008(n+1), A139972(n+1)]`
-/

namespace A140621.P15912228654881884661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P15912228654881884661

/-! ## A140621.P6830586297327490867

`∩[A107008(n+1), A139861(n+1)]`
-/

namespace A140621.P6830586297327490867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P6830586297327490867

/-! ## A140621.P1324551360922390346

`∩[A033199(n+1), A139861(n+1)]`
-/

namespace A140621.P1324551360922390346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P1324551360922390346

/-! ## A140621.P11996248383240631229

`∩[A033199(n+1), A139972(n+1)]`
-/

namespace A140621.P11996248383240631229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P11996248383240631229

/-! ## A140621.P12996317433404427974

`∩[A068228(n+1), A139861(n+1)]`
-/

namespace A140621.P12996317433404427974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P12996317433404427974

/-! ## A140621.P7142917549137903526

`∩[A068228(n+1), A139972(n+1)]`
-/

namespace A140621.P7142917549137903526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P7142917549137903526

/-! ## A140621.P10621875978220002927

`∩[A130063(n+1), A139861(n+1)]`
-/

namespace A140621.P10621875978220002927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P10621875978220002927

/-! ## A140621.P9366035462400862950

`∩[A130063(n+1), A139972(n+1)]`
-/

namespace A140621.P9366035462400862950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P9366035462400862950

/-! ## A140621.P852333799689858469

`∩[A139972(n+1), A354084(n+1)]`
-/

namespace A140621.P852333799689858469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P852333799689858469

/-! ## A140621.P1738172442988871825

`∩[A106950(n+1), A139972(n+1)]`
-/

namespace A140621.P1738172442988871825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P1738172442988871825

/-! ## A140621.P10708963550875959966

`∩[A139972(n+1), A141170(n+1)]`
-/

namespace A140621.P10708963550875959966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P10708963550875959966

/-! ## A140621.P18241958130278642732

`∩[A107008(n+1), A141112(n+1)]`
-/

namespace A140621.P18241958130278642732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P18241958130278642732

/-! ## A140621.P16188147366634831139

`∩[A106952(n+1), A139972(n+1)]`
-/

namespace A140621.P16188147366634831139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P16188147366634831139

/-! ## A140621.P18130650533423863205

`∩[A025022(n+1), A139861(n+1)]`
-/

namespace A140621.P18130650533423863205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P18130650533423863205

/-! ## A140621.P3130628316517851482

`∩[A025022(n+1), A139972(n+1)]`
-/

namespace A140621.P3130628316517851482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P3130628316517851482

/-! ## A140621.P16466751827435368192

`∩[A139861(n+1), A351537(n+1)]`
-/

namespace A140621.P16466751827435368192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P16466751827435368192

/-! ## A140621.P16319101990298197975

`∩[A139972(n+1), A351537(n+1)]`
-/

namespace A140621.P16319101990298197975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P16319101990298197975

/-! ## A140621.P16253650908682833411

`∩[A139861(n+1), A354467(n+1)]`
-/

namespace A140621.P16253650908682833411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P16253650908682833411

/-! ## A140621.P8208132136958878743

`∩[A139972(n+1), A354467(n+1)]`
-/

namespace A140621.P8208132136958878743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P8208132136958878743

/-! ## A140621.P18316155269240472760

`∩[A139861(n+1), A103214(n)]`
-/

namespace A140621.P18316155269240472760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140621.P18316155269240472760

/-!
# A140622: Primes of the form 21x^2+12xy+76y^2.

The programs for A140622, there is no canonical definition to state claims against.
-/

/-! ## A140622.P9539892363178641144

`A139971(lt[A139971(n+1)%3, 2]+1)`
-/

namespace A140622.P9539892363178641144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139971 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A140622.P9539892363178641144

/-! ## A140622.P15783273248289601916

`∩[A139898(n+1), A139971(n+1)]`
-/

namespace A140622.P15783273248289601916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P15783273248289601916

/-! ## A140622.P13779101964352836464

`∩[A139898(n+1), A139926(n+1)]`
-/

namespace A140622.P13779101964352836464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P13779101964352836464

/-! ## A140622.P9616739791806845839

`∩[A139926(n+1), A139971(n+1)]`
-/

namespace A140622.P9616739791806845839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P9616739791806845839

/-! ## A140622.P6721380946326100063

`∩[A107152(n+1), A139926(n+1)]`
-/

namespace A140622.P6721380946326100063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P6721380946326100063

/-! ## A140622.P11922526778285706934

`∩[A107152(n+1), A139971(n+1)]`
-/

namespace A140622.P11922526778285706934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P11922526778285706934

/-! ## A140622.P15745150803088506758

`∩[A107152(n+1), A107188(n+1)]`
-/

namespace A140622.P15745150803088506758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P15745150803088506758

/-! ## A140622.P5120878750778296899

`∩[A107188(n+1), A139898(n+1)]`
-/

namespace A140622.P5120878750778296899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P5120878750778296899

/-! ## A140622.P7509403797488018175

`∩[A107188(n+1), A139971(n+1)]`
-/

namespace A140622.P7509403797488018175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P7509403797488018175

/-! ## A140622.P5422027878659612411

`∩[A139530(n+1), A139971(n+1)]`
-/

namespace A140622.P5422027878659612411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P5422027878659612411

/-! ## A140622.P9796389645594946869

`∩[A107152(n+1), A139862(n+1)]`
-/

namespace A140622.P9796389645594946869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P9796389645594946869

/-! ## A140622.P1459360179319221891

`∩[A107188(n+1), A139862(n+1)]`
-/

namespace A140622.P1459360179319221891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P1459360179319221891

/-! ## A140622.P2541424042124148726

`∩[A139530(n+1), A139862(n+1)]`
-/

namespace A140622.P2541424042124148726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P2541424042124148726

/-! ## A140622.P2140062935508002021

`∩[A139862(n+1), A139898(n+1)]`
-/

namespace A140622.P2140062935508002021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P2140062935508002021

/-! ## A140622.P18389645008802151275

`∩[A139862(n+1), A139926(n+1)]`
-/

namespace A140622.P18389645008802151275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P18389645008802151275

/-! ## A140622.P1413286859950153459

`∩[A139926(n+1), A243174(n+1)]`
-/

namespace A140622.P1413286859950153459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P1413286859950153459

/-! ## A140622.P2275371246092823587

`∩[A139971(n+1), A243174(n+1)]`
-/

namespace A140622.P2275371246092823587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P2275371246092823587

/-! ## A140622.P7868995955368488034

`∩[A107188(n+1), A243188(n+1)]`
-/

namespace A140622.P7868995955368488034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P7868995955368488034

/-! ## A140622.P453516814986437720

`∩[A139862(n+1), A243188(n+1)]`
-/

namespace A140622.P453516814986437720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P453516814986437720

/-! ## A140622.P10420283840809025849

`∩[A139926(n+1), A243188(n+1)]`
-/

namespace A140622.P10420283840809025849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140622.P10420283840809025849

/-!
# A140623: Primes of the form 35x^2+30xy+51y^2.

The programs for A140623, there is no canonical definition to state claims against.
-/

/-! ## A140623.P11751766842451856878

`∩[A139859(n+1), A139921(n+1)]`
-/

namespace A140623.P11751766842451856878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P11751766842451856878

/-! ## A140623.P7379715196894829152

`∩[A139859(n+1), A139970(n+1)]`
-/

namespace A140623.P7379715196894829152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P7379715196894829152

/-! ## A140623.P3743080659858163181

`∩[A139921(n+1), A139970(n+1)]`
-/

namespace A140623.P3743080659858163181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P3743080659858163181

/-! ## A140623.P3602096964269063703

`∩[A107135(n+1), A139921(n+1)]`
-/

namespace A140623.P3602096964269063703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P3602096964269063703

/-! ## A140623.P2103023193885853812

`∩[A107135(n+1), A139970(n+1)]`
-/

namespace A140623.P2103023193885853812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P2103023193885853812

/-! ## A140623.P15697443460244356767

`∩[A107135(n+1), A139646(n+1)]`
-/

namespace A140623.P15697443460244356767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P15697443460244356767

/-! ## A140623.P1243954020880363989

`∩[A139646(n+1), A139859(n+1)]`
-/

namespace A140623.P1243954020880363989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P1243954020880363989

/-! ## A140623.P8998625607955157473

`∩[A139646(n+1), A139921(n+1)]`
-/

namespace A140623.P8998625607955157473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P8998625607955157473

/-! ## A140623.P9290248783531471499

`∩[A107189(n+1), A139646(n+1)]`
-/

namespace A140623.P9290248783531471499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P9290248783531471499

/-! ## A140623.P8410706726041231312

`∩[A107189(n+1), A139859(n+1)]`
-/

namespace A140623.P8410706726041231312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P8410706726041231312

/-! ## A140623.P5889160018291378308

`∩[A107189(n+1), A139970(n+1)]`
-/

namespace A140623.P5889160018291378308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P5889160018291378308

/-! ## A140623.P8464487823730846150

`∩[A107007(n+1), A139646(n+1)]`
-/

namespace A140623.P8464487823730846150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P8464487823730846150

/-! ## A140623.P18408783504915270334

`∩[A107007(n+1), A139970(n+1)]`
-/

namespace A140623.P18408783504915270334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P18408783504915270334

/-! ## A140623.P1073022679383771923

`∩[A139646(n+1), A168539(n+1)]`
-/

namespace A140623.P1073022679383771923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P1073022679383771923

/-! ## A140623.P5946710651913564524

`∩[A107189(n+1), A141302(n+1)]`
-/

namespace A140623.P5946710651913564524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P5946710651913564524

/-! ## A140623.P14232866649005238608

`∩[A139646(n+1), A141302(n+1)]`
-/

namespace A140623.P14232866649005238608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P14232866649005238608

/-! ## A140623.P9412945085075337504

`∩[A139921(n+1), A141302(n+1)]`
-/

namespace A140623.P9412945085075337504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P9412945085075337504

/-! ## A140623.P17002340987570574789

`∩[A139970(n+1), A141302(n+1)]`
-/

namespace A140623.P17002340987570574789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P17002340987570574789

/-! ## A140623.P10577099351381853375

`∩[A107189(n+1), A139829(n+1)]`
-/

namespace A140623.P10577099351381853375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P10577099351381853375

/-! ## A140623.P3191446697957626757

`∩[A139829(n+1), A139921(n+1)]`
-/

namespace A140623.P3191446697957626757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140623.P3191446697957626757

/-!
# A140624: Primes of the form 19x^2+14xy+91y^2.

The programs for A140624, there is no canonical definition to state claims against.
-/

/-! ## A140624.P18392687946095193914

`∩[A139902(n+1), A139920(n+1)]`
-/

namespace A140624.P18392687946095193914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P18392687946095193914

/-! ## A140624.P9975617497011098463

`∩[A139847(n+1), A139902(n+1)]`
-/

namespace A140624.P9975617497011098463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P9975617497011098463

/-! ## A140624.P14576781743096553313

`∩[A139847(n+1), A139920(n+1)]`
-/

namespace A140624.P14576781743096553313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P14576781743096553313

/-! ## A140624.P6699123133964908493

`∩[A139847(n+1), A332446(n+1)]`
-/

namespace A140624.P6699123133964908493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P6699123133964908493

/-! ## A140624.P10360032665385017563

`∩[A107179(n+1), A139847(n+1)]`
-/

namespace A140624.P10360032665385017563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P10360032665385017563

/-! ## A140624.P6400923240028587716

`∩[A107179(n+1), A139902(n+1)]`
-/

namespace A140624.P6400923240028587716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P6400923240028587716

/-! ## A140624.P10643718025674464617

`∩[A102271(n+1), A107179(n+1)]`
-/

namespace A140624.P10643718025674464617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P10643718025674464617

/-! ## A140624.P14458155598817099810

`∩[A102271(n+1), A139902(n+1)]`
-/

namespace A140624.P14458155598817099810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P14458155598817099810

/-! ## A140624.P582415533531941222

`∩[A102271(n+1), A139920(n+1)]`
-/

namespace A140624.P582415533531941222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P582415533531941222

/-! ## A140624.P3485121376046170068

`∩[A102271(n+1), A139829(n+1)]`
-/

namespace A140624.P3485121376046170068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P3485121376046170068

/-! ## A140624.P10975131901126983965

`∩[A107179(n+1), A141373(n+1)]`
-/

namespace A140624.P10975131901126983965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P10975131901126983965

/-! ## A140624.P3178841162823855506

`∩[A139829(n+1), A139847(n+1)]`
-/

namespace A140624.P3178841162823855506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P3178841162823855506

/-! ## A140624.P2807848725999343241

`∩[A139847(n+1), A141373(n+1)]`
-/

namespace A140624.P2807848725999343241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P2807848725999343241

/-! ## A140624.P13960358044538692613

`∩[A139920(n+1), A141373(n+1)]`
-/

namespace A140624.P13960358044538692613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P13960358044538692613

/-! ## A140624.P3883353288979640140

`∩[A107168(n+1), A107179(n+1)]`
-/

namespace A140624.P3883353288979640140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P3883353288979640140

/-! ## A140624.P464732825427808507

`∩[A107168(n+1), A139920(n+1)]`
-/

namespace A140624.P464732825427808507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P464732825427808507

/-! ## A140624.P8720937802545896260

`p?[and(-5, A139847(n+1))]`
-/

namespace A140624.P8720937802545896260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A139847 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140624.P8720937802545896260

/-! ## A140624.P7834920080145392174

`∩[A139920(n+1), A243174(n+1)]`
-/

namespace A140624.P7834920080145392174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P7834920080145392174

/-! ## A140624.P5345768384826061704

`∩[A033212(n+1), A139920(n+1)]`
-/

namespace A140624.P5345768384826061704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P5345768384826061704

/-! ## A140624.P8933471882732109673

`∩[A106950(n+1), A107179(n+1)]`
-/

namespace A140624.P8933471882732109673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140624.P8933471882732109673

/-!
# A140625: Primes of the form 28x^2+20xy+85y^2.

The programs for A140625, the canonical program `A140625.P9861376329909270609` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140625 has offset 1).

The definition of A140625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140625.P13765205687144220415

`∩[A139860(n+1), A139978(n+1)]`
-/

namespace A140625.P13765205687144220415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P13765205687144220415

namespace A140625

/-- `∩[A139860(n+1), A139978(n+1)]` -/
def P13765205687144220415.Spec : Prop :=
  ∀ n, (P13765205687144220415.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P9861376329909270609

`A139978(lt[A139978(n+1)%3, 2]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140625

/-- `A139978(lt[A139978(n+1)%3, 2]+1)` -/
def P9861376329909270609.Spec : Prop :=
  ∀ n, P9861376329909270609.a n = A140625 (n + 1)

theorem P9861376329909270609.correct : P9861376329909270609.Spec := by
  intro n
  simp only [A140625, Nat.add_sub_cancel]

end A140625

/-! ## A140625.P5720684549315960340

`∩[A033236(n+1), A139860(n+1)]`
-/

namespace A140625.P5720684549315960340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P5720684549315960340

namespace A140625

/-- `∩[A033236(n+1), A139860(n+1)]` -/
def P5720684549315960340.Spec : Prop :=
  ∀ n, (P5720684549315960340.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P9552900018596574669

`∩[A033236(n+1), A139978(n+1)]`
-/

namespace A140625.P9552900018596574669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P9552900018596574669

namespace A140625

/-- `∩[A033236(n+1), A139978(n+1)]` -/
def P9552900018596574669.Spec : Prop :=
  ∀ n, (P9552900018596574669.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P12964569668039459790

`∩[A033236(n+1), A107136(n+1)]`
-/

namespace A140625.P12964569668039459790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P12964569668039459790

namespace A140625

/-- `∩[A033236(n+1), A107136(n+1)]` -/
def P12964569668039459790.Spec : Prop :=
  ∀ n, (P12964569668039459790.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P11250002342371594899

`∩[A107136(n+1), A139978(n+1)]`
-/

namespace A140625.P11250002342371594899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P11250002342371594899

namespace A140625

/-- `∩[A107136(n+1), A139978(n+1)]` -/
def P11250002342371594899.Spec : Prop :=
  ∀ n, (P11250002342371594899.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P5066525159498550619

`∩[A139530(n+1), A139978(n+1)]`
-/

namespace A140625.P5066525159498550619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P5066525159498550619

namespace A140625

/-- `∩[A139530(n+1), A139978(n+1)]` -/
def P5066525159498550619.Spec : Prop :=
  ∀ n, (P5066525159498550619.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P9402877988486481447

`∩[A033236(n+1), A107144(n+1)]`
-/

namespace A140625.P9402877988486481447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P9402877988486481447

namespace A140625

/-- `∩[A033236(n+1), A107144(n+1)]` -/
def P9402877988486481447.Spec : Prop :=
  ∀ n, (P9402877988486481447.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P10215893020108121399

`∩[A033236(n+1), A139885(n+1)]`
-/

namespace A140625.P10215893020108121399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P10215893020108121399

namespace A140625

/-- `∩[A033236(n+1), A139885(n+1)]` -/
def P10215893020108121399.Spec : Prop :=
  ∀ n, (P10215893020108121399.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P2334008635543775102

`∩[A139530(n+1), A139885(n+1)]`
-/

namespace A140625.P2334008635543775102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P2334008635543775102

namespace A140625

/-- `∩[A139530(n+1), A139885(n+1)]` -/
def P2334008635543775102.Spec : Prop :=
  ∀ n, (P2334008635543775102.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P14711508622240592863

`∩[A139860(n+1), A139885(n+1)]`
-/

namespace A140625.P14711508622240592863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P14711508622240592863

namespace A140625

/-- `∩[A139860(n+1), A139885(n+1)]` -/
def P14711508622240592863.Spec : Prop :=
  ∀ n, (P14711508622240592863.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P18281410976342720858

`∩[A068228(n+1), A139885(n+1)]`
-/

namespace A140625.P18281410976342720858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P18281410976342720858

namespace A140625

/-- `∩[A068228(n+1), A139885(n+1)]` -/
def P18281410976342720858.Spec : Prop :=
  ∀ n, (P18281410976342720858.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P10705356181825767058

`∩[A068228(n+1), A139978(n+1)]`
-/

namespace A140625.P10705356181825767058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P10705356181825767058

namespace A140625

/-- `∩[A068228(n+1), A139978(n+1)]` -/
def P10705356181825767058.Spec : Prop :=
  ∀ n, (P10705356181825767058.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P13426536860944840337

`∩[A107144(n+1), A141193(n+1)]`
-/

namespace A140625.P13426536860944840337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P13426536860944840337

namespace A140625

/-- `∩[A107144(n+1), A141193(n+1)]` -/
def P13426536860944840337.Spec : Prop :=
  ∀ n, (P13426536860944840337.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P15692595158211951658

`∩[A107136(n+1), A142956(n+1)]`
-/

namespace A140625.P15692595158211951658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P15692595158211951658

namespace A140625

/-- `∩[A107136(n+1), A142956(n+1)]` -/
def P15692595158211951658.Spec : Prop :=
  ∀ n, (P15692595158211951658.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P2446821723320857440

`∩[A139860(n+1), A141193(n+1)]`
-/

namespace A140625.P2446821723320857440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P2446821723320857440

namespace A140625

/-- `∩[A139860(n+1), A141193(n+1)]` -/
def P2446821723320857440.Spec : Prop :=
  ∀ n, (P2446821723320857440.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P15474305343188893235

`∩[A139978(n+1), A141193(n+1)]`
-/

namespace A140625.P15474305343188893235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P15474305343188893235

namespace A140625

/-- `∩[A139978(n+1), A141193(n+1)]` -/
def P15474305343188893235.Spec : Prop :=
  ∀ n, (P15474305343188893235.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P7169932424477916602

`∩[A139860(n+1), A142956(n+1)]`
-/

namespace A140625.P7169932424477916602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P7169932424477916602

namespace A140625

/-- `∩[A139860(n+1), A142956(n+1)]` -/
def P7169932424477916602.Spec : Prop :=
  ∀ n, (P7169932424477916602.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P12230488985900293581

`∩[A033236(n+1), A141179(n+1)]`
-/

namespace A140625.P12230488985900293581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P12230488985900293581

namespace A140625

/-- `∩[A033236(n+1), A141179(n+1)]` -/
def P12230488985900293581.Spec : Prop :=
  ∀ n, (P12230488985900293581.a n : ℤ) = A140625 (n + 1)

end A140625

/-! ## A140625.P14955105802436779156

`∩[A106952(n+1), A139978(n+1)]`
-/

namespace A140625.P14955105802436779156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140625.P14955105802436779156

namespace A140625

/-- `∩[A106952(n+1), A139978(n+1)]` -/
def P14955105802436779156.Spec : Prop :=
  ∀ n, (P14955105802436779156.a n : ℤ) = A140625 (n + 1)

end A140625

/-!
# A140626: Primes of the form 51x^2+48xy+56y^2.

The programs for A140626, there is no canonical definition to state claims against.
-/

/-! ## A140626.P8034685784313674528

`∩[A139859(n+1), A139981(n+1)]`
-/

namespace A140626.P8034685784313674528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P8034685784313674528

/-! ## A140626.P3550690571218120140

`∩[A107135(n+1), A139981(n+1)]`
-/

namespace A140626.P3550690571218120140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P3550690571218120140

/-! ## A140626.P10757301566964888286

`∩[A107007(n+1), A139981(n+1)]`
-/

namespace A140626.P10757301566964888286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P10757301566964888286

/-! ## A140626.P15079192766295957551

`∩[A139981(n+1), A168539(n+1)]`
-/

namespace A140626.P15079192766295957551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P15079192766295957551

/-! ## A140626.P13474013603001519645

`∩[A139981(n+1), A141302(n+1)]`
-/

namespace A140626.P13474013603001519645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P13474013603001519645

/-! ## A140626.P11297973148702217111

`∩[A107007(n+1), A139886(n+1)]`
-/

namespace A140626.P11297973148702217111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P11297973148702217111

/-! ## A140626.P9863045069035600193

`∩[A139859(n+1), A139886(n+1)]`
-/

namespace A140626.P9863045069035600193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P9863045069035600193

/-! ## A140626.P14892434857492763441

`∩[A139886(n+1), A141302(n+1)]`
-/

namespace A140626.P14892434857492763441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P14892434857492763441

/-! ## A140626.P5853798988390690983

`∩[A139886(n+1), A168539(n+1)]`
-/

namespace A140626.P5853798988390690983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P5853798988390690983

/-! ## A140626.P9681816823461155406

`∩[A139981(n+1), A168367(n+1)]`
-/

namespace A140626.P9681816823461155406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P9681816823461155406

/-! ## A140626.P3454078941231905983

`∩[A068231(n+1), A139886(n+1)]`
-/

namespace A140626.P3454078941231905983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P3454078941231905983

/-! ## A140626.P12416809572102186347

`∩[A068231(n+1), A139981(n+1)]`
-/

namespace A140626.P12416809572102186347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P12416809572102186347

/-! ## A140626.P9834834345428076156

`∩[A084865(n+1), A139981(n+1)]`
-/

namespace A140626.P9834834345428076156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P9834834345428076156

/-! ## A140626.P16162202549725579023

`∩[A106949(n+1), A139886(n+1)]`
-/

namespace A140626.P16162202549725579023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P16162202549725579023

/-! ## A140626.P13322515650906462878

`∩[A106949(n+1), A139981(n+1)]`
-/

namespace A140626.P13322515650906462878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P13322515650906462878

/-! ## A140626.P5751758786498203300

`∩[A139886(n+1), A141123(n+1)]`
-/

namespace A140626.P5751758786498203300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P5751758786498203300

/-! ## A140626.P5302315632360872937

`∩[A139886(n+1), A141187(n+1)]`
-/

namespace A140626.P5302315632360872937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P5302315632360872937

/-! ## A140626.P12036155575775926154

`∩[A139981(n+1), A141123(n+1)]`
-/

namespace A140626.P12036155575775926154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P12036155575775926154

/-! ## A140626.P9262619326652263625

`∩[A139981(n+1), A141187(n+1)]`
-/

namespace A140626.P9262619326652263625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P9262619326652263625

/-! ## A140626.P8486849564032742715

`∩[A139981(n+1), A141785(n+1)]`
-/

namespace A140626.P8486849564032742715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140626.P8486849564032742715

/-!
# A140627: Primes of the form 33x^2+24xy+88y^2.

The programs for A140627, there is no canonical definition to state claims against.
-/

/-! ## A140627.P8412914417342443388

`∩[A107008(n+1), A139939(n+1)]`
-/

namespace A140627.P8412914417342443388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P8412914417342443388

/-! ## A140627.P16931478078184417783

`p?[and(-5, A139939(n+1))]`
-/

namespace A140627.P16931478078184417783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A139939 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140627.P16931478078184417783

/-! ## A140627.P3289251316244548219

`∩[A139939(n+1), A332227(n+1)]`
-/

namespace A140627.P3289251316244548219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P3289251316244548219

/-! ## A140627.P2469208112960055434

`∩[A139939(n+1), A242663(n+1)]`
-/

namespace A140627.P2469208112960055434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P2469208112960055434

/-! ## A140627.P5934253321361238810

`∩[A033199(n+1), A139939(n+1)]`
-/

namespace A140627.P5934253321361238810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P5934253321361238810

/-! ## A140627.P5696949971720998227

`∩[A007519(n+1), A139939(n+1)]`
-/

namespace A140627.P5696949971720998227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P5696949971720998227

/-! ## A140627.P18169214875389643922

`∩[A045390(n+1), A139939(n+1)]`
-/

namespace A140627.P18169214875389643922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P18169214875389643922

/-! ## A140627.P16346596530795619964

`∩[A139939(n+1), A209544(n+1)]`
-/

namespace A140627.P16346596530795619964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P16346596530795619964

/-! ## A140627.P2024309305957327079

`∩[A106950(n+1), A139939(n+1)]`
-/

namespace A140627.P2024309305957327079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P2024309305957327079

/-! ## A140627.P14299228539559994921

`∩[A130063(n+1), A139939(n+1)]`
-/

namespace A140627.P14299228539559994921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P14299228539559994921

/-! ## A140627.P8166163613148093710

`∩[A139939(n+1), A141170(n+1)]`
-/

namespace A140627.P8166163613148093710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P8166163613148093710

/-! ## A140627.P14680616556093398887

`∩[A139939(n+1), A354084(n+1)]`
-/

namespace A140627.P14680616556093398887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P14680616556093398887

/-! ## A140627.P18325764755988455647

`∩[A025022(n+1), A139939(n+1)]`
-/

namespace A140627.P18325764755988455647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P18325764755988455647

/-! ## A140627.P606851930500296014

`∩[A139939(n+1), A332226(n+1)]`
-/

namespace A140627.P606851930500296014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P606851930500296014

/-! ## A140627.P4879731725299781661

`∩[A004625(n+1), A139939(n+1)]`
-/

namespace A140627.P4879731725299781661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P4879731725299781661

/-! ## A140627.P11859257227940750147

`∩[A139939(n+1), A263011(n+1)]`
-/

namespace A140627.P11859257227940750147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P11859257227940750147

/-! ## A140627.P14046490120423769752

`∩[A139939(n+1), A103214(n)]`
-/

namespace A140627.P14046490120423769752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P14046490120423769752

/-! ## A140627.P11545380909677335323

`∩[A051074(n+1), A139939(n+1)]`
-/

namespace A140627.P11545380909677335323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P11545380909677335323

/-! ## A140627.P11559559955202646316

`∩[A049542(n+1), A139939(n+1)]`
-/

namespace A140627.P11559559955202646316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P11559559955202646316

/-! ## A140627.P15006873934194464235

`∩[A097934(n+1), A139939(n+1)]`
-/

namespace A140627.P15006873934194464235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140627.P15006873934194464235

/-!
# A140628: Primes of the form 39x^2+6xy+71y^2.

The programs for A140628, there is no canonical definition to state claims against.
-/

/-! ## A140628.P6363852203922753253

`∩[A139938(n+1), A295835(n+1)]`
-/

namespace A140628.P6363852203922753253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P6363852203922753253

/-! ## A140628.P10032308517237677887

`∩[A134517(n+1), A139938(n+1)]`
-/

namespace A140628.P10032308517237677887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P10032308517237677887

/-! ## A140628.P11137358501920525623

`p?[or(4, A139938(n+1))]`
-/

namespace A140628.P11137358501920525623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139938 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140628.P11137358501920525623

/-! ## A140628.P17784120511477739635

`∩[A139938(n+1), A141180(n+1)]`
-/

namespace A140628.P17784120511477739635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P17784120511477739635

/-! ## A140628.P5041713830801620134

`∩[A130063(n+1), A139938(n+1)]`
-/

namespace A140628.P5041713830801620134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P5041713830801620134

/-! ## A140628.P5880049301409357353

`∩[A007522(n+1), A139938(n+1)]`
-/

namespace A140628.P5880049301409357353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P5880049301409357353

/-! ## A140628.P17428403788495669028

`∩[A045382(n+1), A139938(n+1)]`
-/

namespace A140628.P17428403788495669028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P17428403788495669028

/-! ## A140628.P1716907194748255045

`∩[A139938(n+1), A256397(n+1)]`
-/

namespace A140628.P1716907194748255045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P1716907194748255045

/-! ## A140628.P4403692162739826618

`∩[A094712(n+1), A139938(n+1)]`
-/

namespace A140628.P4403692162739826618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P4403692162739826618

/-! ## A140628.P8226453519002821091

`∩[A139938(n+1), A141171(n+1)]`
-/

namespace A140628.P8226453519002821091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P8226453519002821091

/-! ## A140628.P5229995429960408547

`∩[A014663(n+1), A139938(n+1)]`
-/

namespace A140628.P5229995429960408547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P5229995429960408547

/-! ## A140628.P7609953475976873990

`∩[A040098(n+1), A139938(n+1)]`
-/

namespace A140628.P7609953475976873990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P7609953475976873990

/-! ## A140628.P11364526415613874652

`∩[A040107(n+1), A139938(n+1)]`
-/

namespace A140628.P11364526415613874652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P11364526415613874652

/-! ## A140628.P7237182204348826875

`∩[A040119(n+1), A139938(n+1)]`
-/

namespace A140628.P7237182204348826875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P7237182204348826875

/-! ## A140628.P17930527760205751966

`∩[A004628(n+1), A139938(n+1)]`
-/

namespace A140628.P17930527760205751966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P17930527760205751966

/-! ## A140628.P10918633993531214545

`∩[A040141(n+1), A139938(n+1)]`
-/

namespace A140628.P10918633993531214545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P10918633993531214545

/-! ## A140628.P10347203335133450679

`∩[A040992(n+1), A139938(n+1)]`
-/

namespace A140628.P10347203335133450679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P10347203335133450679

/-! ## A140628.P7409427061530252207

`∩[A036259(n+1), A139938(n+1)]`
-/

namespace A140628.P7409427061530252207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P7409427061530252207

/-! ## A140628.P5520941208935558397

`∩[A139938(n+1), A183010(n)]`
-/

namespace A140628.P5520941208935558397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140628.P5520941208935558397

/-!
# A140629: Primes of the form 76x^2+20xy+145y^2.

The programs for A140629, there is no canonical definition to state claims against.
-/

/-! ## A140629.P6525571312557783216

`∩[A139502(n+1), A140017(n+1)]`
-/

namespace A140629.P6525571312557783216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P6525571312557783216

/-! ## A140629.P3066423866617593047

`∩[A139502(n+1), A139911(n+1)]`
-/

namespace A140629.P3066423866617593047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P3066423866617593047

/-! ## A140629.P14874489159669015932

`∩[A025023(n+1), A139911(n+1)]`
-/

namespace A140629.P14874489159669015932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P14874489159669015932

/-! ## A140629.P15468948360122294666

`∩[A025023(n+1), A140017(n+1)]`
-/

namespace A140629.P15468948360122294666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P15468948360122294666

/-! ## A140629.P2369442752786504752

`∩[A107145(n+1), A139911(n+1)]`
-/

namespace A140629.P2369442752786504752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P2369442752786504752

/-! ## A140629.P9633889103902081918

`∩[A107145(n+1), A140017(n+1)]`
-/

namespace A140629.P9633889103902081918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P9633889103902081918

/-! ## A140629.P1714233768622362770

`∩[A107008(n+1), A140017(n+1)]`
-/

namespace A140629.P1714233768622362770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P1714233768622362770

/-! ## A140629.P10510937730737016812

`∩[A033220(n+1), A139911(n+1)]`
-/

namespace A140629.P10510937730737016812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P10510937730737016812

/-! ## A140629.P11668172455137543938

`∩[A033220(n+1), A140017(n+1)]`
-/

namespace A140629.P11668172455137543938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P11668172455137543938

/-! ## A140629.P374347660663441550

`p?[and(-5, A140017(n+1))]`
-/

namespace A140629.P374347660663441550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A140017 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140629.P374347660663441550

/-! ## A140629.P3723080791226963750

`∩[A140017(n+1), A332227(n+1)]`
-/

namespace A140629.P3723080791226963750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P3723080791226963750

/-! ## A140629.P300222717430174377

`∩[A139911(n+1), A155708(n+1)]`
-/

namespace A140629.P300222717430174377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P300222717430174377

/-! ## A140629.P13445847016476969028

`∩[A140017(n+1), A155708(n+1)]`
-/

namespace A140629.P13445847016476969028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P13445847016476969028

/-! ## A140629.P2532310032342499352

`∩[A139911(n+1), A227863(n+1)]`
-/

namespace A140629.P2532310032342499352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P2532310032342499352

/-! ## A140629.P13944809133012666710

`∩[A140017(n+1), A227863(n+1)]`
-/

namespace A140629.P13944809133012666710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P13944809133012666710

/-! ## A140629.P10959301657570884041

`∩[A007519(n+1), A140017(n+1)]`
-/

namespace A140629.P10959301657570884041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P10959301657570884041

/-! ## A140629.P8600746053803982332

`∩[A033199(n+1), A140017(n+1)]`
-/

namespace A140629.P8600746053803982332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P8600746053803982332

/-! ## A140629.P13348833953368687150

`∩[A045390(n+1), A140017(n+1)]`
-/

namespace A140629.P13348833953368687150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P13348833953368687150

/-! ## A140629.P5530019382619720799

`∩[A139911(n+1), A141180(n+1)]`
-/

namespace A140629.P5530019382619720799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P5530019382619720799

/-! ## A140629.P10850975247595896732

`∩[A140017(n+1), A141180(n+1)]`
-/

namespace A140629.P10850975247595896732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140629.P10850975247595896732

/-!
# A140630: Primes of the form 88x^2+32xy+127y^2.

The programs for A140630, the canonical program `A140630.P13312013450007682947` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140630 has offset 1).

The definition of A140630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140630.P13312013450007682947

`∩[A139987(n+1), A140028(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A140630

/-- `∩[A139987(n+1), A140028(n+1)]` -/
def P13312013450007682947.Spec : Prop :=
  ∀ n, (P13312013450007682947.a n : ℤ) = A140630 (n + 1)

theorem P13312013450007682947.correct : P13312013450007682947.Spec := by
  intro n
  simp only [A140630, Nat.add_sub_cancel]

end A140630

/-! ## A140630.P498382036664287482

`∩[A139922(n+1), A139987(n+1)]`
-/

namespace A140630.P498382036664287482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P498382036664287482

namespace A140630

/-- `∩[A139922(n+1), A139987(n+1)]` -/
def P498382036664287482.Spec : Prop :=
  ∀ n, (P498382036664287482.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P7277548537861852922

`∩[A139922(n+1), A140028(n+1)]`
-/

namespace A140630.P7277548537861852922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P7277548537861852922

namespace A140630

/-- `∩[A139922(n+1), A140028(n+1)]` -/
def P7277548537861852922.Spec : Prop :=
  ∀ n, (P7277548537861852922.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P15108273782572104195

`∩[A139976(n+1), A139987(n+1)]`
-/

namespace A140630.P15108273782572104195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P15108273782572104195

namespace A140630

/-- `∩[A139976(n+1), A139987(n+1)]` -/
def P15108273782572104195.Spec : Prop :=
  ∀ n, (P15108273782572104195.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P6008021478966056263

`∩[A139976(n+1), A140028(n+1)]`
-/

namespace A140630.P6008021478966056263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P6008021478966056263

namespace A140630

/-- `∩[A139976(n+1), A140028(n+1)]` -/
def P6008021478966056263.Spec : Prop :=
  ∀ n, (P6008021478966056263.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P7479571201653862796

`∩[A139891(n+1), A139922(n+1)]`
-/

namespace A140630.P7479571201653862796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P7479571201653862796

namespace A140630

/-- `∩[A139891(n+1), A139922(n+1)]` -/
def P7479571201653862796.Spec : Prop :=
  ∀ n, (P7479571201653862796.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P1129980889287959598

`∩[A139891(n+1), A139976(n+1)]`
-/

namespace A140630.P1129980889287959598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P1129980889287959598

namespace A140630

/-- `∩[A139891(n+1), A139976(n+1)]` -/
def P1129980889287959598.Spec : Prop :=
  ∀ n, (P1129980889287959598.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P17854772340612996906

`∩[A139891(n+1), A140028(n+1)]`
-/

namespace A140630.P17854772340612996906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P17854772340612996906

namespace A140630

/-- `∩[A139891(n+1), A140028(n+1)]` -/
def P17854772340612996906.Spec : Prop :=
  ∀ n, (P17854772340612996906.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P9339753071103924139

`∩[A140028(n+1), A140633(n+1)]`
-/

namespace A140630.P9339753071103924139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P9339753071103924139

namespace A140630

/-- `∩[A140028(n+1), A140633(n+1)]` -/
def P9339753071103924139.Spec : Prop :=
  ∀ n, (P9339753071103924139.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P13846699762845316548

`∩[A139848(n+1), A139922(n+1)]`
-/

namespace A140630.P13846699762845316548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P13846699762845316548

namespace A140630

/-- `∩[A139848(n+1), A139922(n+1)]` -/
def P13846699762845316548.Spec : Prop :=
  ∀ n, (P13846699762845316548.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P13147892396059785887

`∩[A139848(n+1), A139976(n+1)]`
-/

namespace A140630.P13147892396059785887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P13147892396059785887

namespace A140630

/-- `∩[A139848(n+1), A139976(n+1)]` -/
def P13147892396059785887.Spec : Prop :=
  ∀ n, (P13147892396059785887.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P12752013650246780248

`∩[A033250(n+1), A139848(n+1)]`
-/

namespace A140630.P12752013650246780248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P12752013650246780248

namespace A140630

/-- `∩[A033250(n+1), A139848(n+1)]` -/
def P12752013650246780248.Spec : Prop :=
  ∀ n, (P12752013650246780248.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P217315605056608847

`∩[A033250(n+1), A139891(n+1)]`
-/

namespace A140630.P217315605056608847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P217315605056608847

namespace A140630

/-- `∩[A033250(n+1), A139891(n+1)]` -/
def P217315605056608847.Spec : Prop :=
  ∀ n, (P217315605056608847.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P18216964944066354971

`∩[A033250(n+1), A139987(n+1)]`
-/

namespace A140630.P18216964944066354971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P18216964944066354971

namespace A140630

/-- `∩[A033250(n+1), A139987(n+1)]` -/
def P18216964944066354971.Spec : Prop :=
  ∀ n, (P18216964944066354971.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P5187627580170984764

`∩[A033250(n+1), A140028(n+1)]`
-/

namespace A140630.P5187627580170984764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P5187627580170984764

namespace A140630

/-- `∩[A033250(n+1), A140028(n+1)]` -/
def P5187627580170984764.Spec : Prop :=
  ∀ n, (P5187627580170984764.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P8735118155344279165

`∩[A139848(n+1), A139863(n+1)]`
-/

namespace A140630.P8735118155344279165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P8735118155344279165

namespace A140630

/-- `∩[A139848(n+1), A139863(n+1)]` -/
def P8735118155344279165.Spec : Prop :=
  ∀ n, (P8735118155344279165.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P3508530007600698702

`∩[A139863(n+1), A139987(n+1)]`
-/

namespace A140630.P3508530007600698702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P3508530007600698702

namespace A140630

/-- `∩[A139863(n+1), A139987(n+1)]` -/
def P3508530007600698702.Spec : Prop :=
  ∀ n, (P3508530007600698702.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P5422036522127779614

`∩[A139830(n+1), A140028(n+1)]`
-/

namespace A140630.P5422036522127779614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P5422036522127779614

namespace A140630

/-- `∩[A139830(n+1), A140028(n+1)]` -/
def P5422036522127779614.Spec : Prop :=
  ∀ n, (P5422036522127779614.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P13157967458998404797

`∩[A139863(n+1), A140028(n+1)]`
-/

namespace A140630.P13157967458998404797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P13157967458998404797

namespace A140630

/-- `∩[A139863(n+1), A140028(n+1)]` -/
def P13157967458998404797.Spec : Prop :=
  ∀ n, (P13157967458998404797.a n : ℤ) = A140630 (n + 1)

end A140630

/-! ## A140630.P6651144120838981723

`∩[A107006(n+1), A140028(n+1)]`
-/

namespace A140630.P6651144120838981723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140630.P6651144120838981723

namespace A140630

/-- `∩[A107006(n+1), A140028(n+1)]` -/
def P6651144120838981723.Spec : Prop :=
  ∀ n, (P6651144120838981723.a n : ℤ) = A140630 (n + 1)

end A140630

/-!
# A140631: Primes of the form 57x^2+18xy+193y^2.

The programs for A140631, there is no canonical definition to state claims against.
-/

/-! ## A140631.P3952592248501415410

`∩[A140027(n+1), A140621(n+1)]`
-/

namespace A140631.P3952592248501415410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P3952592248501415410

/-! ## A140631.P3379886033177859186

`∩[A139506(n+1), A140027(n+1)]`
-/

namespace A140631.P3379886033177859186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P3379886033177859186

/-! ## A140631.P4408643765319856114

`∩[A139506(n+1), A140621(n+1)]`
-/

namespace A140631.P4408643765319856114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P4408643765319856114

/-! ## A140631.P7941510679117106007

`∩[A139506(n+1), A139972(n+1)]`
-/

namespace A140631.P7941510679117106007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P7941510679117106007

/-! ## A140631.P10730347819571851785

`∩[A139972(n+1), A140027(n+1)]`
-/

namespace A140631.P10730347819571851785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P10730347819571851785

/-! ## A140631.P10279278603922273849

`∩[A033215(n+1), A139972(n+1)]`
-/

namespace A140631.P10279278603922273849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P10279278603922273849

/-! ## A140631.P15172529155630802223

`∩[A033215(n+1), A140621(n+1)]`
-/

namespace A140631.P15172529155630802223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P15172529155630802223

/-! ## A140631.P13300477032346858291

`∩[A139645(n+1), A140027(n+1)]`
-/

namespace A140631.P13300477032346858291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P13300477032346858291

/-! ## A140631.P3626609501497744802

`∩[A139645(n+1), A140621(n+1)]`
-/

namespace A140631.P3626609501497744802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P3626609501497744802

/-! ## A140631.P10078126875730460209

`∩[A107008(n+1), A140027(n+1)]`
-/

namespace A140631.P10078126875730460209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P10078126875730460209

/-! ## A140631.P1107266270049655316

`∩[A033229(n+1), A139972(n+1)]`
-/

namespace A140631.P1107266270049655316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P1107266270049655316

/-! ## A140631.P13902558899897290578

`∩[A033229(n+1), A140027(n+1)]`
-/

namespace A140631.P13902558899897290578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P13902558899897290578

/-! ## A140631.P2708210562230922492

`∩[A033229(n+1), A140621(n+1)]`
-/

namespace A140631.P2708210562230922492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P2708210562230922492

/-! ## A140631.P9427796526970805851

`∩[A033215(n+1), A139861(n+1)]`
-/

namespace A140631.P9427796526970805851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P9427796526970805851

/-! ## A140631.P1004355787966060241

`∩[A139506(n+1), A139861(n+1)]`
-/

namespace A140631.P1004355787966060241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P1004355787966060241

/-! ## A140631.P9016563541077437570

`∩[A139861(n+1), A140027(n+1)]`
-/

namespace A140631.P9016563541077437570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P9016563541077437570

/-! ## A140631.P10746924357109182605

`∩[A140027(n+1), A332227(n+1)]`
-/

namespace A140631.P10746924357109182605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P10746924357109182605

/-! ## A140631.P15569178479421985279

`∩[A007519(n+1), A140027(n+1)]`
-/

namespace A140631.P15569178479421985279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P15569178479421985279

/-! ## A140631.P11062053225006790551

`∩[A033199(n+1), A140027(n+1)]`
-/

namespace A140631.P11062053225006790551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P11062053225006790551

/-! ## A140631.P12519740324580838823

`∩[A045390(n+1), A140027(n+1)]`
-/

namespace A140631.P12519740324580838823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140631.P12519740324580838823

/-!
# A140632: Primes of the form 55x^2+10xy+199y^2.

The programs for A140632, there is no canonical definition to state claims against.
-/

/-! ## A140632.P9508927651783896912

`∩[A139998(n+1), A140019(n+1)]`
-/

namespace A140632.P9508927651783896912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P9508927651783896912

/-! ## A140632.P2805087657630055309

`∩[A139908(n+1), A139998(n+1)]`
-/

namespace A140632.P2805087657630055309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P2805087657630055309

/-! ## A140632.P11322797470624222448

`∩[A139922(n+1), A139998(n+1)]`
-/

namespace A140632.P11322797470624222448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P11322797470624222448

/-! ## A140632.P9612706616361489593

`∩[A139922(n+1), A140019(n+1)]`
-/

namespace A140632.P9612706616361489593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P9612706616361489593

/-! ## A140632.P4049879989615700936

`∩[A139847(n+1), A139922(n+1)]`
-/

namespace A140632.P4049879989615700936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P4049879989615700936

/-! ## A140632.P17747321752927950000

`∩[A139892(n+1), A139908(n+1)]`
-/

namespace A140632.P17747321752927950000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P17747321752927950000

/-! ## A140632.P15659793785229949504

`∩[A139892(n+1), A139922(n+1)]`
-/

namespace A140632.P15659793785229949504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P15659793785229949504

/-! ## A140632.P8172366929314164418

`∩[A139892(n+1), A140019(n+1)]`
-/

namespace A140632.P8172366929314164418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P8172366929314164418

/-! ## A140632.P1987261485210637615

`∩[A139876(n+1), A140019(n+1)]`
-/

namespace A140632.P1987261485210637615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P1987261485210637615

/-! ## A140632.P15690366664669529484

`∩[A139855(n+1), A139908(n+1)]`
-/

namespace A140632.P15690366664669529484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P15690366664669529484

/-! ## A140632.P1087521754593215698

`∩[A139855(n+1), A140019(n+1)]`
-/

namespace A140632.P1087521754593215698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P1087521754593215698

/-! ## A140632.P7482373534212012404

`∩[A033250(n+1), A139847(n+1)]`
-/

namespace A140632.P7482373534212012404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P7482373534212012404

/-! ## A140632.P2957490287326305726

`∩[A033220(n+1), A139908(n+1)]`
-/

namespace A140632.P2957490287326305726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P2957490287326305726

/-! ## A140632.P11190464799318923084

`∩[A033250(n+1), A139892(n+1)]`
-/

namespace A140632.P11190464799318923084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P11190464799318923084

/-! ## A140632.P207081765926191320

`∩[A033220(n+1), A140019(n+1)]`
-/

namespace A140632.P207081765926191320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P207081765926191320

/-! ## A140632.P15936481114611586561

`∩[A033250(n+1), A139998(n+1)]`
-/

namespace A140632.P15936481114611586561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P15936481114611586561

/-! ## A140632.P15207079433750241722

`∩[A033250(n+1), A140019(n+1)]`
-/

namespace A140632.P15207079433750241722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P15207079433750241722

/-! ## A140632.P7907005997643417855

`∩[A107006(n+1), A140019(n+1)]`
-/

namespace A140632.P7907005997643417855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P7907005997643417855

/-! ## A140632.P8817041875408016934

`∩[A107146(n+1), A140019(n+1)]`
-/

namespace A140632.P8817041875408016934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P8817041875408016934

/-! ## A140632.P4345245865540179696

`∩[A139908(n+1), A141180(n+1)]`
-/

namespace A140632.P4345245865540179696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140632.P4345245865540179696

/-!
# A140633: Primes of the form 7x^2+4xy+52y^2.

The programs for A140633, the canonical program `A140633.P5719042277873821348` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140633 has offset 1).

The definition of A140633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140633.P5719042277873821348

`p?[xor(6, A139832(n+1))+6]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140633

/-- `p?[xor(6, A139832(n+1))+6]` -/
def P5719042277873821348.Spec : Prop :=
  ∀ n, P5719042277873821348.a n = A140633 (n + 1)

theorem P5719042277873821348.correct : P5719042277873821348.Spec := by
  intro n
  simp only [A140633, Nat.add_sub_cancel]

end A140633

/-! ## A140633.P17054676000235273460

`∩[A033199(n+1), A139830(n+1)]`
-/

namespace A140633.P17054676000235273460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P17054676000235273460

namespace A140633

/-- `∩[A033199(n+1), A139830(n+1)]` -/
def P17054676000235273460.Spec : Prop :=
  ∀ n, (P17054676000235273460.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P15606394424990968995

`∩[A033199(n+1), A139832(n+1)]`
-/

namespace A140633.P15606394424990968995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P15606394424990968995

namespace A140633

/-- `∩[A033199(n+1), A139832(n+1)]` -/
def P15606394424990968995.Spec : Prop :=
  ∀ n, (P15606394424990968995.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P3139074451094234173

`∩[A033199(n+1), A141304(n+1)]`
-/

namespace A140633.P3139074451094234173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P3139074451094234173

namespace A140633

/-- `∩[A033199(n+1), A141304(n+1)]` -/
def P3139074451094234173.Spec : Prop :=
  ∀ n, (P3139074451094234173.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P8465443651905476196

`∩[A007522(n+1), A139832(n+1)]`
-/

namespace A140633.P8465443651905476196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P8465443651905476196

namespace A140633

/-- `∩[A007522(n+1), A139832(n+1)]` -/
def P8465443651905476196.Spec : Prop :=
  ∀ n, (P8465443651905476196.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P11452997003302176961

`∩[A007522(n+1), A141304(n+1)]`
-/

namespace A140633.P11452997003302176961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P11452997003302176961

namespace A140633

/-- `∩[A007522(n+1), A141304(n+1)]` -/
def P11452997003302176961.Spec : Prop :=
  ∀ n, (P11452997003302176961.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P16266992119189608800

`∩[A033199(n+1), A106865(n+1)]`
-/

namespace A140633.P16266992119189608800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P16266992119189608800

namespace A140633

/-- `∩[A033199(n+1), A106865(n+1)]` -/
def P16266992119189608800.Spec : Prop :=
  ∀ n, (P16266992119189608800.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P13428777688666434147

`∩[A033199(n+1), A122870(n+1)]`
-/

namespace A140633.P13428777688666434147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P13428777688666434147

namespace A140633

/-- `∩[A033199(n+1), A122870(n+1)]` -/
def P13428777688666434147.Spec : Prop :=
  ∀ n, (P13428777688666434147.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P16749493036584420607

`∩[A045382(n+1), A139832(n+1)]`
-/

namespace A140633.P16749493036584420607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P16749493036584420607

namespace A140633

/-- `∩[A045382(n+1), A139832(n+1)]` -/
def P16749493036584420607.Spec : Prop :=
  ∀ n, (P16749493036584420607.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P8623587159768842226

`∩[A007522(n+1), A106952(n+1)]`
-/

namespace A140633.P8623587159768842226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P8623587159768842226

namespace A140633

/-- `∩[A007522(n+1), A106952(n+1)]` -/
def P8623587159768842226.Spec : Prop :=
  ∀ n, (P8623587159768842226.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P10977367040014072927

`∩[A045382(n+1), A106952(n+1)]`
-/

namespace A140633.P10977367040014072927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P10977367040014072927

namespace A140633

/-- `∩[A045382(n+1), A106952(n+1)]` -/
def P10977367040014072927.Spec : Prop :=
  ∀ n, (P10977367040014072927.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P392980256493520507

`∩[A139830(n+1), A068229(n+1)]`
-/

namespace A140633.P392980256493520507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P392980256493520507

namespace A140633

/-- `∩[A139830(n+1), A068229(n+1)]` -/
def P392980256493520507.Spec : Prop :=
  ∀ n, (P392980256493520507.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P11290740968111057744

`∩[A106952(n+1), A139830(n+1)]`
-/

namespace A140633.P11290740968111057744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P11290740968111057744

namespace A140633

/-- `∩[A106952(n+1), A139830(n+1)]` -/
def P11290740968111057744.Spec : Prop :=
  ∀ n, (P11290740968111057744.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P5681417130673224261

`∩[A033199(n+1), A106889(n+1)]`
-/

namespace A140633.P5681417130673224261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P5681417130673224261

namespace A140633

/-- `∩[A033199(n+1), A106889(n+1)]` -/
def P5681417130673224261.Spec : Prop :=
  ∀ n, (P5681417130673224261.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P11390618558804651818

`∩[A068229(n+1), A106889(n+1)]`
-/

namespace A140633.P11390618558804651818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P11390618558804651818

namespace A140633

/-- `∩[A068229(n+1), A106889(n+1)]` -/
def P11390618558804651818.Spec : Prop :=
  ∀ n, (P11390618558804651818.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P10654978266352147973

`∩[A014663(n+1), A139832(n+1)]`
-/

namespace A140633.P10654978266352147973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P10654978266352147973

namespace A140633

/-- `∩[A014663(n+1), A139832(n+1)]` -/
def P10654978266352147973.Spec : Prop :=
  ∀ n, (P10654978266352147973.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P4564888682107203221

`∩[A014663(n+1), A141304(n+1)]`
-/

namespace A140633.P4564888682107203221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P4564888682107203221

namespace A140633

/-- `∩[A014663(n+1), A141304(n+1)]` -/
def P4564888682107203221.Spec : Prop :=
  ∀ n, (P4564888682107203221.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P1423241190140102593

`∩[A139830(n+1), A385223(n+1)]`
-/

namespace A140633.P1423241190140102593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P1423241190140102593

namespace A140633

/-- `∩[A139830(n+1), A385223(n+1)]` -/
def P1423241190140102593.Spec : Prop :=
  ∀ n, (P1423241190140102593.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P11097275003719027714

`∩[A053027(n+1), A107006(n+1)]`
-/

namespace A140633.P11097275003719027714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P11097275003719027714

namespace A140633

/-- `∩[A053027(n+1), A107006(n+1)]` -/
def P11097275003719027714.Spec : Prop :=
  ∀ n, (P11097275003719027714.a n : ℤ) = A140633 (n + 1)

end A140633

/-! ## A140633.P8221273295296756649

`∩[A040098(n+1), A139832(n+1)]`
-/

namespace A140633.P8221273295296756649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140633.P8221273295296756649

namespace A140633

/-- `∩[A040098(n+1), A139832(n+1)]` -/
def P8221273295296756649.Spec : Prop :=
  ∀ n, (P8221273295296756649.a n : ℤ) = A140633 (n + 1)

end A140633

/-!
# A140634: Primes congruent to 41 or 169 mod 210.

The programs for A140634, the canonical program `A140634.P11410370935979141388` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140634 has offset 1).

The definition of A140634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140634.P11410370935979141388

`p?[21*n-(5-2*n%5)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140634

/-- `p?[21*n-(5-2*n%5)]` -/
def P11410370935979141388.Spec : Prop :=
  ∀ n, P11410370935979141388.a n = A140634 (n + 1)

theorem P11410370935979141388.correct : P11410370935979141388.Spec := by
  intro n
  simp only [A140634, Nat.add_sub_cancel]

end A140634

/-! ## A140634.P17453649964592746852

`p?[A057539(A017029(n)-A007310(n+1))]`
-/

namespace A140634.P17453649964592746852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (A017029 n - A007310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P17453649964592746852

namespace A140634

/-- `p?[A057539(A017029(n)-A007310(n+1))]` -/
def P17453649964592746852.Spec : Prop :=
  ∀ n, P17453649964592746852.a n = A140634 (n + 1)

end A140634

/-! ## A140634.P11026275841748154341

`∩[A063230(n+1), A140506(n+1)]`
-/

namespace A140634.P11026275841748154341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140634.P11026275841748154341

namespace A140634

/-- `∩[A063230(n+1), A140506(n+1)]` -/
def P11026275841748154341.Spec : Prop :=
  ∀ n, (P11026275841748154341.a n : ℤ) = A140634 (n + 1)

end A140634

/-! ## A140634.P17305324458255889660

`p?[A113801(A214066(n)+3)]`
-/

namespace A140634.P17305324458255889660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A214066 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P17305324458255889660

namespace A140634

/-- `p?[A113801(A214066(n)+3)]` -/
def P17305324458255889660.Spec : Prop :=
  ∀ n, P17305324458255889660.a n = A140634 (n + 1)

end A140634

/-! ## A140634.P10553298941136263598

`p?[A113801(A155086(n+1)+n+1)]`
-/

namespace A140634.P10553298941136263598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A155086 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P10553298941136263598

namespace A140634

/-- `p?[A113801(A155086(n+1)+n+1)]` -/
def P10553298941136263598.Spec : Prop :=
  ∀ n, P10553298941136263598.a n = A140634 (n + 1)

end A140634

/-! ## A140634.P4315731850549788073

`p?[A008458(n)+5*A072154(A008486(n))]`
-/

namespace A140634.P4315731850549788073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + 5 * A072154 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P4315731850549788073

namespace A140634

/-- `p?[A008458(n)+5*A072154(A008486(n))]` -/
def P4315731850549788073.Spec : Prop :=
  ∀ n, P4315731850549788073.a n = A140634 (n + 1)

end A140634

/-! ## A140634.P498136380149161798

`p?[A090771(A016885(n))+A047201(n+1)]`
-/

namespace A140634.P498136380149161798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A016885 n).toNat + A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P498136380149161798

namespace A140634

/-- `p?[A090771(A016885(n))+A047201(n+1)]` -/
def P498136380149161798.Spec : Prop :=
  ∀ n, P498136380149161798.a n = A140634 (n + 1)

end A140634

/-! ## A140634.P5412468954896352819

`p?[A204542(A017029(n))]`
-/

namespace A140634.P5412468954896352819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (A017029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P5412468954896352819

namespace A140634

/-- `p?[A204542(A017029(n))]` -/
def P5412468954896352819.Spec : Prop :=
  ∀ n, P5412468954896352819.a n = A140634 (n + 1)

end A140634

/-! ## A140634.P13338434072114390860

`p?[A204542(A004769(n)-n)]`
-/

namespace A140634.P13338434072114390860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (A004769 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P13338434072114390860

namespace A140634

/-- `p?[A204542(A004769(n)-n)]` -/
def P13338434072114390860.Spec : Prop :=
  ∀ n, P13338434072114390860.a n = A140634 (n + 1)

end A140634

/-! ## A140634.P5394405125819777396

`p?[A008706(A089644(n+1))-A057539(n+1)]`
-/

namespace A140634.P5394405125819777396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A089644 (n + 1)).toNat - A057539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P5394405125819777396

namespace A140634

/-- `p?[A008706(A089644(n+1))-A057539(n+1)]` -/
def P5394405125819777396.Spec : Prop :=
  ∀ n, P5394405125819777396.a n = A140634 (n + 1)

end A140634

/-!
# A140635: Smallest positive integer having the same number of divisors as n.

The programs for A140635, there is no canonical definition to state claims against.
-/

/-! ## A140635.P5662723034158752620

`A005179(A000005(n+1))`
-/

namespace A140635.P5662723034158752620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000005 (n + 1)).toNat

end

end A140635.P5662723034158752620

/-! ## A140635.P18135119160550508697

`A005179(∏{e}[n+1, #+1])`
-/

namespace A140635.P18135119160550508697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A140635.P18135119160550508697

/-! ## A140635.P10538614652574338094

`sqrt(A130279(∏{e}[n+1, #+1]))`
-/

namespace A140635.P10538614652574338094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ)

end

end A140635.P10538614652574338094

/-! ## A140635.P11436126249834848927

`A005179(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A140635.P11436126249834848927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A140635.P11436126249834848927

/-! ## A140635.P198386026660292925

`A005179(Δ[A006218(n)])`
-/

namespace A140635.P198386026660292925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (f1 (n + 1) - f1 n).toNat

end

end A140635.P198386026660292925

/-! ## A140635.P1324984093108047587

`A081532(A184389(n+1))`
-/

namespace A140635.P1324984093108047587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A184389 (n + 1)).toNat

end

end A140635.P1324984093108047587

/-! ## A140635.P17453665187392487811

`A007416(A286605(n+1))`
-/

namespace A140635.P17453665187392487811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A286605 (n + 1)).toNat

end

end A140635.P17453665187392487811

/-! ## A140635.P16135432798734561979

`A005179(A032741(n+1)+1)`
-/

namespace A140635.P16135432798734561979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A032741 (n + 1) + 1).toNat

end

end A140635.P16135432798734561979

/-! ## A140635.P2808133898366667357

`A005179(A062011(n+1)/2)`
-/

namespace A140635.P2808133898366667357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.roundAway ((A062011 (n + 1) : ℚ) / 2)).toNat

end

end A140635.P2808133898366667357

/-! ## A140635.P13999499177331013775

`A005179(1-A049820(n+1)+n)`
-/

namespace A140635.P13999499177331013775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (1 - A049820 (n + 1) + (n : ℤ)).toNat

end

end A140635.P13999499177331013775

/-! ## A140635.P10634194689168041268

`A005179(A062249(n+1)-(n+1))`
-/

namespace A140635.P10634194689168041268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A062249 (n + 1) - (n + 1 : ℤ)).toNat

end

end A140635.P10634194689168041268

/-! ## A140635.P9668746067802951934

`A081532(A000217(∏{e}[n+1, #+1]))`
-/

namespace A140635.P9668746067802951934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A000217 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A140635.P9668746067802951934

/-! ## A140635.P9692931370220062458

`A081532(A000217(∑{d}[n+1, #+1]-∑{d}[n+1, #]))`
-/

namespace A140635.P9692931370220062458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A000217 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)).toNat

end

end A140635.P9692931370220062458

/-! ## A140635.P11612718122352479379

`A005179(A006218(n+1)-A006218(n))`
-/

namespace A140635.P11612718122352479379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A006218 (n + 1) - A006218 n).toNat

end

end A140635.P11612718122352479379

/-! ## A140635.P12333933618185450664

`A005179(A033273(n+1)+A001221(n+1))`
-/

namespace A140635.P12333933618185450664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A033273 (n + 1) + A001221 (n + 1)).toNat

end

end A140635.P12333933618185450664

/-! ## A140635.P2476253367852496265

`A005179(A048105(n+1)+A034444(n+1))`
-/

namespace A140635.P2476253367852496265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A048105 (n + 1) + A034444 (n + 1)).toNat

end

end A140635.P2476253367852496265

/-! ## A140635.P14694592418268435033

`A005179(A243917(n+1)+A243865(n+1))`
-/

namespace A140635.P14694592418268435033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A243917 (n + 1) + A243865 (n + 1)).toNat

end

end A140635.P14694592418268435033

/-! ## A140635.P13987995328321491250

`A005179(A356018(n+1)+A227872(n+1))`
-/

namespace A140635.P13987995328321491250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A356018 (n + 1) + A227872 (n + 1)).toNat

end

end A140635.P13987995328321491250

/-! ## A140635.P6438086393631165373

`A005179(A353362(n+1)+A353361(n+1))`
-/

namespace A140635.P6438086393631165373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A353362 (n + 1) + A353361 (n + 1)).toNat

end

end A140635.P6438086393631165373

/-! ## A140635.P8623712114774292922

`A005179(A001227(n+1)*A001511(n+1))`
-/

namespace A140635.P8623712114774292922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A001227 (n + 1) * A001511 (n + 1)).toNat

end

end A140635.P8623712114774292922

/-!
# A140636: Number of connected graphs on n unlabeled nodes that contain at least two cycles.

The programs for A140636, there is no canonical definition to state claims against.
-/

/-! ## A140636.P9825617043148684962

`A001349(n+1)-A005703(n+1)`
-/

namespace A140636.P9825617043148684962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A005703 (n + 1)

end

end A140636.P9825617043148684962

/-! ## A140636.P16169758198393572552

`A241841(n+1)-A054923(A034856(n+1))`
-/

namespace A140636.P16169758198393572552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241841 (n + 1) - A054923 (A034856 (n + 1)).toNat

end

end A140636.P16169758198393572552

/-! ## A140636.P7036463236919587245

`A027868(or(3, A052882(n)))`
-/

namespace A140636.P7036463236919587245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (Int.lor 3 (A052882 n)).toNat

end

end A140636.P7036463236919587245

/-!
# A140637: Number of unlabeled graphs of positive excess with n nodes.

The programs for A140637, there is no canonical definition to state claims against.
-/

/-! ## A140637.P10654661277474433623

`A000088(n+1)-A134964(n+1)`
-/

namespace A140637.P10654661277474433623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A134964 (n + 1)

end

end A140637.P10654661277474433623

/-! ## A140637.P8083591624880495127

`∑[A369202(n+1)]`
-/

namespace A140637.P8083591624880495127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140637.P8083591624880495127

/-! ## A140637.P17330175492275151946

`A076321(n+1)-A134964(A032555(n+1))`
-/

namespace A140637.P17330175492275151946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - A134964 (A032555 (n + 1)).toNat

end

end A140637.P17330175492275151946

/-!
# A140638: Number of connected graphs on n labeled nodes that contain at least two cycles.

The programs for A140638, there is no canonical definition to state claims against.
-/

/-! ## A140638.P13904746270142478047

`A001187(n+1)-A129271(n+1)`
-/

namespace A140638.P13904746270142478047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) - A129271 (n + 1)

end

end A140638.P13904746270142478047

/-! ## A140638.P8787163844286502098

`A001187(n+1)-A000272(n+1)-A057500(n+1)`
-/

namespace A140638.P8787163844286502098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) - A000272 (n + 1) - A057500 (n + 1)

end

end A140638.P8787163844286502098

/-!
# A140639: Number of 4-noncrossing RNA structures with arc-length => 4.

The programs for A140639, there is no canonical definition to state claims against.
-/

/-! ## A140639.P13354307038624910037

`A165190(A294820(n))+1`
-/

namespace A140639.P13354307038624910037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A294820 n).toNat + 1

end

end A140639.P13354307038624910037

/-! ## A140639.P16764342858510767242

`A322833(A309302(n)+1)`
-/

namespace A140639.P16764342858510767242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (A309302 n + 1).toNat

end

end A140639.P16764342858510767242

/-! ## A140639.P11624913955813041334

`A165190(A121650(n)+7)`
-/

namespace A140639.P11624913955813041334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A121650 n + 7).toNat

end

end A140639.P11624913955813041334

/-! ## A140639.P6000537010515442840

`A008618(A050383(n+1)+5)`
-/

namespace A140639.P6000537010515442840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A050383 (n + 1) + 5).toNat

end

end A140639.P6000537010515442840

/-! ## A140639.P2435033607980275980

`round(A002863(2*n+3)/A002874(n))`
-/

namespace A140639.P2435033607980275980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002863 (2 * n + 3) : ℚ) / (A002874 n : ℚ))

end

end A140639.P2435033607980275980

/-!
# A140640: Primes congruent to 43 or 167 mod 210.

The programs for A140640, the canonical program `A140640.P18207931973337898726` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140640 has offset 1).

The definition of A140640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140640.P18207931973337898726

`p?[5*A247128(n+1)-(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140640

/-- `p?[5*A247128(n+1)-(n+1)]` -/
def P18207931973337898726.Spec : Prop :=
  ∀ n, P18207931973337898726.a n = A140640 (n + 1)

theorem P18207931973337898726.correct : P18207931973337898726.Spec := by
  intro n
  simp only [A140640, Nat.add_sub_cancel]

end A140640

/-! ## A140640.P14548535652341245321

`p?[44*n-A235499(n)]`
-/

namespace A140640.P14548535652341245321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - A235499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P14548535652341245321

namespace A140640

/-- `p?[44*n-A235499(n)]` -/
def P14548535652341245321.Spec : Prop :=
  ∀ n, P14548535652341245321.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P4087613667942735347

`p?[A155107(3*n+2)+A155095(3*n+2)]`
-/

namespace A140640.P4087613667942735347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (3 * n + 2) + A155095 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P4087613667942735347

namespace A140640

/-- `p?[A155107(3*n+2)+A155095(3*n+2)]` -/
def P4087613667942735347.Spec : Prop :=
  ∀ n, P4087613667942735347.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P11028293075626076779

`p?[A159754(n+1)+A047201(n+1)]`
-/

namespace A140640.P11028293075626076779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P11028293075626076779

namespace A140640

/-- `p?[A159754(n+1)+A047201(n+1)]` -/
def P11028293075626076779.Spec : Prop :=
  ∀ n, P11028293075626076779.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P12989717885801004939

`p?[A022144(A301686(n))+A008486(n)]`
-/

namespace A140640.P12989717885801004939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A301686 n).toNat + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P12989717885801004939

namespace A140640

/-- `p?[A022144(A301686(n))+A008486(n)]` -/
def P12989717885801004939.Spec : Prop :=
  ∀ n, P12989717885801004939.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P3853439227428063092

`p?[A175887(A047276(n+1))+(-1)^n]`
-/

namespace A140640.P3853439227428063092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A047276 (n + 1)).toNat + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P3853439227428063092

namespace A140640

/-- `p?[A175887(A047276(n+1))+(-1)^n]` -/
def P3853439227428063092.Spec : Prop :=
  ∀ n, P3853439227428063092.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P6297145143135313071

`p?[A008486(A008458(n))+5*A250120(n)]`
-/

namespace A140640.P6297145143135313071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008458 n).toNat + 5 * A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P6297145143135313071

namespace A140640

/-- `p?[A008486(A008458(n))+5*A250120(n)]` -/
def P6297145143135313071.Spec : Prop :=
  ∀ n, P6297145143135313071.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P17289495620048008533

`p?[A175887(n+1)+A007775(A016885(n))]`
-/

namespace A140640.P17289495620048008533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + A007775 (A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P17289495620048008533

namespace A140640

/-- `p?[A175887(n+1)+A007775(A016885(n))]` -/
def P17289495620048008533.Spec : Prop :=
  ∀ n, P17289495620048008533.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P15368595472326164361

`p?[A273669(A273669(n+1))+A047207(n+1)]`
-/

namespace A140640.P15368595472326164361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (A273669 (n + 1)).toNat + A047207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P15368595472326164361

namespace A140640

/-- `p?[A273669(A273669(n+1))+A047207(n+1)]` -/
def P15368595472326164361.Spec : Prop :=
  ∀ n, P15368595472326164361.a n = A140640 (n + 1)

end A140640

/-! ## A140640.P18390707971021128299

`p?[A113801(A008619(A248474(n+1)))]`
-/

namespace A140640.P18390707971021128299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A008619 (A248474 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140640.P18390707971021128299

namespace A140640

/-- `p?[A113801(A008619(A248474(n+1)))]` -/
def P18390707971021128299.Spec : Prop :=
  ∀ n, P18390707971021128299.a n = A140640 (n + 1)

end A140640

/-!
# A140641: Primes congruent to 47 or 163 mod 210.

The programs for A140641, the canonical program `A140641.P4247190238463387378` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140641 has offset 1).

The definition of A140641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140641.P4247190238463387378

`p?[A248474(A017029(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140641

/-- `p?[A248474(A017029(n))]` -/
def P4247190238463387378.Spec : Prop :=
  ∀ n, P4247190238463387378.a n = A140641 (n + 1)

theorem P4247190238463387378.correct : P4247190238463387378.Spec := by
  intro n
  simp only [A140641, Nat.add_sub_cancel]

end A140641

/-! ## A140641.P17902093529989411970

`p?[A248474(sqrt(A017030(n)))]`
-/

namespace A140641.P17902093529989411970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (SequenceMachineLib.roundAway (Real.sqrt (A017030 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140641.P17902093529989411970

namespace A140641

/-- `p?[A248474(sqrt(A017030(n)))]` -/
def P17902093529989411970.Spec : Prop :=
  ∀ n, P17902093529989411970.a n = A140641 (n + 1)

end A140641

/-! ## A140641.P17830577570914885287

`p?[A248474(A017017(n)+1)]`
-/

namespace A140641.P17830577570914885287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A017017 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140641.P17830577570914885287

namespace A140641

/-- `p?[A248474(A017017(n)+1)]` -/
def P17830577570914885287.Spec : Prop :=
  ∀ n, P17830577570914885287.a n = A140641 (n + 1)

theorem P17830577570914885287.correct : P17830577570914885287.Spec := by
  intro n
  simp only [A140641, Nat.add_sub_cancel, A140641.P17830577570914885287.f1, A140641.P17830577570914885287.a, A140641.P4247190238463387378.f1, A140641.P4247190238463387378.a, A017017, A017017.P16632027915442464889.a, A017029, A017029.P18040034652068019793.a, A248474, A248474.P7394030702355487542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140641

/-! ## A140641.P16984342329023534867

`p?[A248474(A017053(n)-2)]`
-/

namespace A140641.P16984342329023534867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A017053 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140641.P16984342329023534867

namespace A140641

/-- `p?[A248474(A017053(n)-2)]` -/
def P16984342329023534867.Spec : Prop :=
  ∀ n, P16984342329023534867.a n = A140641 (n + 1)

theorem P16984342329023534867.correct : P16984342329023534867.Spec := by
  intro n
  simp only [A140641, Nat.add_sub_cancel, A140641.P16984342329023534867.f1, A140641.P16984342329023534867.a, A140641.P4247190238463387378.f1, A140641.P4247190238463387378.a, A017029, A017029.P18040034652068019793.a, A017053, A017053.P7458143650627556555.a, A248474, A248474.P7394030702355487542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140641

/-! ## A140641.P18110331508837911533

`p?[A248474(A047276(2*n+1)+2)]`
-/

namespace A140641.P18110331508837911533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A047276 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140641.P18110331508837911533

namespace A140641

/-- `p?[A248474(A047276(2*n+1)+2)]` -/
def P18110331508837911533.Spec : Prop :=
  ∀ n, P18110331508837911533.a n = A140641 (n + 1)

end A140641

/-! ## A140641.P5801824473973664023

`p?[A175887(n+1)+A175887(A269044(n))]`
-/

namespace A140641.P5801824473973664023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + A175887 (A269044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140641.P5801824473973664023

namespace A140641

/-- `p?[A175887(n+1)+A175887(A269044(n))]` -/
def P5801824473973664023.Spec : Prop :=
  ∀ n, P5801824473973664023.a n = A140641 (n + 1)

end A140641

/-! ## A140641.P2617030527577873041

`p?[A047201(n+1)+A008706(A090771(n+1))]`
-/

namespace A140641.P2617030527577873041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1) + A008706 (A090771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140641.P2617030527577873041

namespace A140641

/-- `p?[A047201(n+1)+A008706(A090771(n+1))]` -/
def P2617030527577873041.Spec : Prop :=
  ∀ n, P2617030527577873041.a n = A140641 (n + 1)

end A140641

/-! ## A140641.P18153444056292366081

`∩[A140533(n+1), A315751(n)]`
-/

namespace A140641.P18153444056292366081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140641.P18153444056292366081

namespace A140641

/-- `∩[A140533(n+1), A315751(n)]` -/
def P18153444056292366081.Spec : Prop :=
  ∀ n, (P18153444056292366081.a n : ℤ) = A140641 (n + 1)

end A140641

/-! ## A140641.P13243698694214798494

`∩[A140533(n+1), A313793(n)]`
-/

namespace A140641.P13243698694214798494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140641.P13243698694214798494

namespace A140641

/-- `∩[A140533(n+1), A313793(n)]` -/
def P13243698694214798494.Spec : Prop :=
  ∀ n, (P13243698694214798494.a n : ℤ) = A140641 (n + 1)

end A140641

/-! ## A140641.P3323237486259564763

`∩[A140533(n+1), A313875(n)]`
-/

namespace A140641.P3323237486259564763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140641.P3323237486259564763

namespace A140641

/-- `∩[A140533(n+1), A313875(n)]` -/
def P3323237486259564763.Spec : Prop :=
  ∀ n, (P3323237486259564763.a n : ℤ) = A140641 (n + 1)

end A140641

/-!
# A140642: Triangle of sorted absolute values of Jacobsthal successive differences.

The programs for A140642, there is no canonical definition to state claims against.
-/

/-! ## A140642.P13943371811002565321

`eq[1, A280737(A008458(n))]`
-/

namespace A140642.P13943371811002565321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140642.P13943371811002565321

/-! ## A140642.P6699292943771532567

`eq[1, A280737(A008486(n))]`
-/

namespace A140642.P6699292943771532567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140642.P6699292943771532567

/-! ## A140642.P12283580721217392359

`eq[2, A007302(A008585(n))]`
-/

namespace A140642.P12283580721217392359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A008585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140642.P12283580721217392359

/-! ## A140642.P6730705244509497881

`∪[A062052(n+1), A263132(n+1)]`
-/

namespace A140642.P6730705244509497881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140642.P6730705244509497881

/-! ## A140642.P7835331864628031340

`∪[A181666(n+1), A263132(n+1)]`
-/

namespace A140642.P7835331864628031340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140642.P7835331864628031340

/-!
# A140643: First differences of A140642.

The programs for A140643, there is no canonical definition to state claims against.
-/

/-! ## A140643.P10290358083414729152

`Δ[A140642(n)]`
-/

namespace A140643.P10290358083414729152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140643.P10290358083414729152

/-! ## A140643.P6770842651886227061

`A140957(comp[∑[n]])`
-/

namespace A140643.P6770842651886227061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A140643.P6770842651886227061

/-! ## A140643.P4236066606917286379

`Δ[∪[2^n, A140951(n)]]`
-/

namespace A140643.P4236066606917286379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140951 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140643.P4236066606917286379

/-! ## A140643.P2610667053666610458

`round(2^(A220073(n+1)-2))`
-/

namespace A140643.P2610667053666610458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (A220073 (n + 1) - 2 : ℤ))

end

end A140643.P2610667053666610458

/-!
# A140645: Digit sums of highly composite numbers.

The programs for A140645, there is no canonical definition to state claims against.
-/

/-! ## A140645.P383904263578200846

`A007953(A002182(n+1))`
-/

namespace A140645.P383904263578200846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002182 (n + 1)).toNat

end

end A140645.P383904263578200846

/-! ## A140645.P1537116201763588828

`∑{digits}[1-A135372(n+1), #]`
-/

namespace A140645.P1537116201763588828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P1537116201763588828

/-! ## A140645.P18427596613841654882

`A023443(∑{digits}[A135372(n+1), #])`
-/

namespace A140645.P18427596613841654882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P18427596613841654882

/-! ## A140645.P15911854932204272992

`∑{digits}[∑[A262501(A028310(n))], #]`
-/

namespace A140645.P15911854932204272992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P15911854932204272992

/-! ## A140645.P17739742049419637407

`∑{digits}[sqrt(A046952(n+1)), #]`
-/

namespace A140645.P17739742049419637407
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P17739742049419637407

/-! ## A140645.P7342510240912785610

`∑{digits}[A152047(n+1)*A152048(n+1), #]`
-/

namespace A140645.P7342510240912785610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152047 (n + 1) * A152048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P7342510240912785610

/-! ## A140645.P13577556814569189791

`∑{digits}[A025487(A306802(n+1)), #]`
-/

namespace A140645.P13577556814569189791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P13577556814569189791

/-! ## A140645.P12740976418232547513

`∑{digits}[A061799(A002183(n+1)), #]`
-/

namespace A140645.P12740976418232547513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A002183 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P12740976418232547513

/-! ## A140645.P12943736697516581820

`∑{digits}[A055932(A332034(n+1)), #]`
-/

namespace A140645.P12943736697516581820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A332034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140645.P12943736697516581820

/-!
# A140646: Number of stars on the flag of the United States as it has changed over the years since 1775.

The programs for A140646, there is no canonical definition to state claims against.
-/

/-! ## A140646.P106366167615100323

`lt[A226618(n+1), A226636(A226592(n))]`
-/

namespace A140646.P106366167615100323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (A226592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140646.P106366167615100323

/-! ## A140646.P16798883451123574777

`lt[A126833(n+1), A300362(A205845(n+5))]`
-/

namespace A140646.P16798883451123574777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A205845 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140646.P16798883451123574777

/-! ## A140646.P5061319529037931101

`lt[A006565(2*n)%A052162(n+1), A270613(n+1)]`
-/

namespace A140646.P5061319529037931101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006565 (2 * n)) (A052162 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140646.P5061319529037931101

/-! ## A140646.P11263294654261400953

`lt[A340250(n), A340245(A340283(n+3))]`
-/

namespace A140646.P11263294654261400953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340245 (A340283 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140646.P11263294654261400953

/-! ## A140646.P15184563299788498345

`lt[A214498(A065091(n+1)), A270831(n+4)]`
-/

namespace A140646.P15184563299788498345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214498 (A065091 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140646.P15184563299788498345

/-!
# A140647: Number of car parking assignments of n cars in n spaces, if one car does not park.

The programs for A140647, the canonical program `A140647.P16853427943404148279` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140647 has offset 2).

The definition of A140647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140647.P16853427943404148279

`2*(n+4)^(n+1)-(3*(n+2)+1)*(n+3)^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140647

/-- `2*(n+4)^(n+1)-(3*(n+2)+1)*(n+3)^n` -/
def P16853427943404148279.Spec : Prop :=
  ∀ n, P16853427943404148279.a n = A140647 (n + 2)

theorem P16853427943404148279.correct : P16853427943404148279.Spec := by
  intro n
  simp only [A140647, Nat.add_sub_cancel]

end A140647

/-! ## A140647.P6662640850988414120

`A264902(∑[n+1]+2)`
-/

namespace A140647.P6662640850988414120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A140647.P6662640850988414120

namespace A140647

/-- `A264902(∑[n+1]+2)` -/
def P6662640850988414120.Spec : Prop :=
  ∀ n, P6662640850988414120.a n = A140647 (n + 2)

end A140647

/-! ## A140647.P12717242008927593666

`record[gcd(A264902(n), A303913(n))]`
-/

namespace A140647.P12717242008927593666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264902 n) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140647.P12717242008927593666

namespace A140647

/-- `record[gcd(A264902(n), A303913(n))]` -/
def P12717242008927593666.Spec : Prop :=
  ∀ n, (P12717242008927593666.a n : ℤ) = A140647 (n + 2)

end A140647

/-! ## A140647.P15990674119673935422

`record[gcd(A241981(n), A264902(n+2))]`
-/

namespace A140647.P15990674119673935422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241981 n) (A264902 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140647.P15990674119673935422

namespace A140647

/-- `record[gcd(A241981(n), A264902(n+2))]` -/
def P15990674119673935422.Spec : Prop :=
  ∀ n, (P15990674119673935422.a n : ℤ) = A140647 (n + 2)

end A140647

/-! ## A140647.P2312044551976211844

`record[gcd(A246522(n), A264902(n+3))]`
-/

namespace A140647.P2312044551976211844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246522 n) (A264902 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140647.P2312044551976211844

namespace A140647

/-- `record[gcd(A246522(n), A264902(n+3))]` -/
def P2312044551976211844.Spec : Prop :=
  ∀ n, (P2312044551976211844.a n : ℤ) = A140647 (n + 2)

end A140647

/-! ## A140647.P18151101342434780029

`record[gcd(A002262(n+2), A264902(n+4))]`
-/

namespace A140647.P18151101342434780029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 2)) (A264902 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140647.P18151101342434780029

namespace A140647

/-- `record[gcd(A002262(n+2), A264902(n+4))]` -/
def P18151101342434780029.Spec : Prop :=
  ∀ n, (P18151101342434780029.a n : ℤ) = A140647 (n + 2)

end A140647

/-!
# A140648: Triangle T(n,m) which can create A140642 without help of Jacobsthal numbers.

The programs for A140648, there is no canonical definition to state claims against.
-/

/-! ## A140648.P316395726445470487

`A221087(A335262(comp[∑[n-1]])+1)`
-/

namespace A140648.P316395726445470487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A335262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1).toNat

end

end A140648.P316395726445470487

/-! ## A140648.P3741845343235496726

`A221139(A335262(comp[∑[n-1]])+1)`
-/

namespace A140648.P3741845343235496726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A335262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1).toNat

end

end A140648.P3741845343235496726

/-! ## A140648.P9079555727061354851

`A261781(A335262(comp[∑[n-1]])+1)`
-/

namespace A140648.P9079555727061354851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (A335262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1).toNat

end

end A140648.P9079555727061354851

/-! ## A140648.P17169188554107392824

`A034008(A130517(A014132(n+1)))`
-/

namespace A140648.P17169188554107392824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A130517 (A014132 (n + 1)).toNat).toNat

end

end A140648.P17169188554107392824

/-! ## A140648.P14609337863914703022

`A131577(A181940(A038722(n+1)))`
-/

namespace A140648.P14609337863914703022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A181940 (A038722 (n + 1)).toNat).toNat

end

end A140648.P14609337863914703022

/-!
# A140649: Triangle whose rows are decreasing powers of 2, followed by 0.

The programs for A140649, there is no canonical definition to state claims against.
-/

/-! ## A140649.P16954651203863760320

`∑[A152568(n+1)]`
-/

namespace A140649.P16954651203863760320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140649.P16954651203863760320

/-! ## A140649.P16040315670027517985

`floor(A130321(n+1)/2)`
-/

namespace A140649.P16040315670027517985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130321 (n + 1) : ℚ) / 2⌋

end

end A140649.P16040315670027517985

/-! ## A140649.P7171887122118163224

`floor(A090988(n+2)/4)`
-/

namespace A140649.P7171887122118163224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090988 (n + 2) : ℚ) / 4⌋

end

end A140649.P7171887122118163224

/-! ## A140649.P4726688455271777932

`round(A130330(n+1)/4)`
-/

namespace A140649.P4726688455271777932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130330 (n + 1) : ℚ) / 4)

end

end A140649.P4726688455271777932

/-! ## A140649.P7849103232448519227

`abs(ceil(Δ[A130321(n)/2]))`
-/

namespace A140649.P7849103232448519227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈f1 (n + 1) - f1 n⌉|

end

end A140649.P7849103232448519227

/-! ## A140649.P2399406270681936088

`floor(sqrt(A262616(n+1))/2)`
-/

namespace A140649.P2399406270681936088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A262616 (n + 1) : ℝ) / 2⌋

end

end A140649.P2399406270681936088

/-! ## A140649.P5315510649720372215

`floor(Δ[A164874(n+1)/2])`
-/

namespace A140649.P5315510649720372215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164874 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A140649.P5315510649720372215

/-! ## A140649.P17960550427494123608

`floor(Δ[A175332(n+1)/2])`
-/

namespace A140649.P17960550427494123608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175332 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A140649.P17960550427494123608

/-! ## A140649.P2297220306556862156

`floor(Δ[A030130(n+2)/2])`
-/

namespace A140649.P2297220306556862156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030130 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A140649.P2297220306556862156

/-! ## A140649.P70963632325184048

`floor(Δ[A118586(n+1)/4])`
-/

namespace A140649.P70963632325184048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118586 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A140649.P70963632325184048

/-!
# A140651: A140579^(-1) * A000290, the squares starting (1, 4, 9, ...).

The programs for A140651, the canonical program `A140651.P16358109719597669168` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140651 has offset 1).

The definition of A140651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140651.P16358109719597669168

`(n+1)*gcd(n+1, ∏{p}[n+1, ceil(n/#)])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140651

/-- `(n+1)*gcd(n+1, ∏{p}[n+1, ceil(n/#)])` -/
def P16358109719597669168.Spec : Prop :=
  ∀ n, (P16358109719597669168.a n : ℤ) = A140651 (n + 1)

theorem P16358109719597669168.correct : P16358109719597669168.Spec := by
  intro n
  simp only [A140651, Nat.add_sub_cancel]

end A140651

/-! ## A140651.P13580509047578548341

`(n+1)²/ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A140651.P13580509047578548341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ)

end

end A140651.P13580509047578548341

namespace A140651

/-- `(n+1)²/ceil((n+1)/∏{p}[n+1, (n+1)/#])` -/
def P13580509047578548341.Spec : Prop :=
  ∀ n, P13580509047578548341.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P17333348198854314242

`(n+1)*(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A140651.P17333348198854314242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))

end

end A140651.P17333348198854314242

namespace A140651

/-- `(n+1)*(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#])` -/
def P17333348198854314242.Spec : Prop :=
  ∀ n, P17333348198854314242.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P13202681849061703873

`(n+1)*A048671(n+1)`
-/

namespace A140651.P13202681849061703873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048671 (n + 1)

end

end A140651.P13202681849061703873

namespace A140651

/-- `(n+1)*A048671(n+1)` -/
def P13202681849061703873.Spec : Prop :=
  ∀ n, P13202681849061703873.a n = A140651 (n + 1)

end A140651

/-! ## A140651.P9137409510730602988

`(n+1)²/A014963(n+1)`
-/

namespace A140651.P9137409510730602988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A014963 (n + 1) : ℚ)

end

end A140651.P9137409510730602988

namespace A140651

/-- `(n+1)²/A014963(n+1)` -/
def P9137409510730602988.Spec : Prop :=
  ∀ n, P9137409510730602988.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P14169665979018501422

`gcd((n+1)², A396574(n+1))`
-/

namespace A140651.P14169665979018501422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A396574 (n + 1))

end

end A140651.P14169665979018501422

namespace A140651

/-- `gcd((n+1)², A396574(n+1))` -/
def P14169665979018501422.Spec : Prop :=
  ∀ n, (P14169665979018501422.a n : ℤ) = A140651 (n + 1)

end A140651

/-! ## A140651.P6576928742417599815

`(n+1)^3/A140580(n+1)`
-/

namespace A140651.P6576928742417599815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A140580 (n + 1) : ℚ)

end

end A140651.P6576928742417599815

namespace A140651

/-- `(n+1)^3/A140580(n+1)` -/
def P6576928742417599815.Spec : Prop :=
  ∀ n, P6576928742417599815.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P15368981972766038904

`gcd((n+1)², A387027(n))`
-/

namespace A140651.P15368981972766038904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A387027 n)

end

end A140651.P15368981972766038904

namespace A140651

/-- `gcd((n+1)², A387027(n))` -/
def P15368981972766038904.Spec : Prop :=
  ∀ n, (P15368981972766038904.a n : ℤ) = A140651 (n + 1)

end A140651

/-! ## A140651.P3902867757290306574

`gcd(n+1, A003418(n))*(n+1)`
-/

namespace A140651.P3902867757290306574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003418 n) * (n + 1)

end

end A140651.P3902867757290306574

namespace A140651

/-- `gcd(n+1, A003418(n))*(n+1)` -/
def P3902867757290306574.Spec : Prop :=
  ∀ n, (P3902867757290306574.a n : ℤ) = A140651 (n + 1)

end A140651

/-! ## A140651.P10018943090848380393

`(n+1)²/A003418(n+1)*A003418(n)`
-/

namespace A140651.P10018943090848380393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A003418 (n + 1) : ℚ) * (A003418 n : ℚ)

end

end A140651.P10018943090848380393

namespace A140651

/-- `(n+1)²/A003418(n+1)*A003418(n)` -/
def P10018943090848380393.Spec : Prop :=
  ∀ n, P10018943090848380393.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P10289021309602626238

`A000290(n+1)*A003418(n)/A003418(n+1)`
-/

namespace A140651.P10289021309602626238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) * A003418 n : ℚ) / (A003418 (n + 1) : ℚ)

end

end A140651.P10289021309602626238

namespace A140651

/-- `A000290(n+1)*A003418(n)/A003418(n+1)` -/
def P10289021309602626238.Spec : Prop :=
  ∀ n, P10289021309602626238.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P14585000748465646678

`(n+1)²/A140579(∑[n+1])`
-/

namespace A140651.P14585000748465646678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A140579 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A140651.P14585000748465646678

namespace A140651

/-- `(n+1)²/A140579(∑[n+1])` -/
def P14585000748465646678.Spec : Prop :=
  ∀ n, P14585000748465646678.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P17234909608149318840

`(n+1)²/A342255(∑[n+1])`
-/

namespace A140651.P17234909608149318840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A342255 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A140651.P17234909608149318840

namespace A140651

/-- `(n+1)²/A342255(∑[n+1])` -/
def P17234909608149318840.Spec : Prop :=
  ∀ n, P17234909608149318840.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P4432306093108016342

`(n+1)²/A307641(∑[n+1])`
-/

namespace A140651.P4432306093108016342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A307641 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A140651.P4432306093108016342

namespace A140651

/-- `(n+1)²/A307641(∑[n+1])` -/
def P4432306093108016342.Spec : Prop :=
  ∀ n, P4432306093108016342.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P13187615335831934188

`(n+1)²-A092509((n+1)²)`
-/

namespace A140651.P13187615335831934188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A092509 ((n + 1) ^ 2)

end

end A140651.P13187615335831934188

namespace A140651

/-- `(n+1)²-A092509((n+1)²)` -/
def P13187615335831934188.Spec : Prop :=
  ∀ n, P13187615335831934188.a n = A140651 (n + 1)

end A140651

/-! ## A140651.P14528921780395992657

`A003418(n+1)/A027451(n+1)*A003418(n)`
-/

namespace A140651.P14528921780395992657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A027451 (n + 1) : ℚ) * (A003418 n : ℚ)

end

end A140651.P14528921780395992657

namespace A140651

/-- `A003418(n+1)/A027451(n+1)*A003418(n)` -/
def P14528921780395992657.Spec : Prop :=
  ∀ n, P14528921780395992657.a n = (A140651 (n + 1) : ℚ)

end A140651

/-! ## A140651.P9801032715648945256

`A048671((n+1)²)`
-/

namespace A140651.P9801032715648945256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 ((n + 1) ^ 2)

end

end A140651.P9801032715648945256

namespace A140651

/-- `A048671((n+1)²)` -/
def P9801032715648945256.Spec : Prop :=
  ∀ n, P9801032715648945256.a n = A140651 (n + 1)

end A140651

/-!
# A140652: Partial sums of A062968.

The programs for A140652, the canonical program `A140652.P9715767635325101215` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140652 has offset 1).

The definition of A140652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140652.P9715767635325101215

`∑[2-∏{e}[n+1, #+1]+n]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140652

/-- `∑[2-∏{e}[n+1, #+1]+n]` -/
def P9715767635325101215.Spec : Prop :=
  ∀ n, P9715767635325101215.a n = A140652 (n + 1)

theorem P9715767635325101215.correct : P9715767635325101215.Spec := by
  intro n
  simp only [A140652, Nat.add_sub_cancel]

end A140652

/-! ## A140652.P3609663760971376885

`∑[2-∑{d}[n+1, gcd(n, #)]+n]`
-/

namespace A140652.P3609663760971376885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P3609663760971376885

namespace A140652

/-- `∑[2-∑{d}[n+1, gcd(n, #)]+n]` -/
def P3609663760971376885.Spec : Prop :=
  ∀ n, P3609663760971376885.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P11012055347547122981

`∑[n+1-∑{d}[n+1, floor(atan(#))]]`
-/

namespace A140652.P11012055347547122981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P11012055347547122981

namespace A140652

/-- `∑[n+1-∑{d}[n+1, floor(atan(#))]]` -/
def P11012055347547122981.Spec : Prop :=
  ∀ n, P11012055347547122981.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P9259358060862092460

`∑[n+2-∑{d}[n+1, ceil(1/#)]]`
-/

namespace A140652.P9259358060862092460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P9259358060862092460

namespace A140652

/-- `∑[n+2-∑{d}[n+1, ceil(1/#)]]` -/
def P9259358060862092460.Spec : Prop :=
  ∀ n, P9259358060862092460.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P12852174570892273313

`∑[n-∑{d}[n+1, n²%#]+1]`
-/

namespace A140652.P12852174570892273313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P12852174570892273313

namespace A140652

/-- `∑[n-∑{d}[n+1, n²%#]+1]` -/
def P12852174570892273313.Spec : Prop :=
  ∀ n, P12852174570892273313.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P8863677881456171553

`∑[∑{d}[n+1, #-1]-n+2*n+2-∑{d}[n+1, #]]`
-/

namespace A140652.P8863677881456171553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) - (n : ℤ) + ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P8863677881456171553

namespace A140652

/-- `∑[∑{d}[n+1, #-1]-n+2*n+2-∑{d}[n+1, #]]` -/
def P8863677881456171553.Spec : Prop :=
  ∀ n, P8863677881456171553.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P5697521401754975095

`∑[A062968(n+1)]`
-/

namespace A140652.P5697521401754975095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P5697521401754975095

namespace A140652

/-- `∑[A062968(n+1)]` -/
def P5697521401754975095.Spec : Prop :=
  ∀ n, P5697521401754975095.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P9015418528861347474

`∑[A049820(n+1)+1]`
-/

namespace A140652.P9015418528861347474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P9015418528861347474

namespace A140652

/-- `∑[A049820(n+1)+1]` -/
def P9015418528861347474.Spec : Prop :=
  ∀ n, P9015418528861347474.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P11233540026157872229

`∑[A059292(n+1)-1]`
-/

namespace A140652.P11233540026157872229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P11233540026157872229

namespace A140652

/-- `∑[A059292(n+1)-1]` -/
def P11233540026157872229.Spec : Prop :=
  ∀ n, P11233540026157872229.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P10716007609681495830

`∑[A378216(n+1)+n]`
-/

namespace A140652.P10716007609681495830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P10716007609681495830

namespace A140652

/-- `∑[A378216(n+1)+n]` -/
def P10716007609681495830.Spec : Prop :=
  ∀ n, P10716007609681495830.a n = A140652 (n + 1)

theorem P10716007609681495830.correct : P10716007609681495830.Spec := by
  intro n
  simp only [A140652, Nat.add_sub_cancel, A140652.P10716007609681495830.f1, A140652.P10716007609681495830.a, A140652.P9715767635325101215.f2, A140652.P9715767635325101215.f1, A140652.P9715767635325101215.a, A378216, A378216.P4619166357507459087.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140652

/-! ## A140652.P15921953859816989077

`∑[A286002(n+1)-n]`
-/

namespace A140652.P15921953859816989077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P15921953859816989077

namespace A140652

/-- `∑[A286002(n+1)-n]` -/
def P15921953859816989077.Spec : Prop :=
  ∀ n, P15921953859816989077.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P10234087105106967862

`A161664(n+1)+1+n`
-/

namespace A140652.P10234087105106967862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161664 (n + 1) + 1 + (n : ℤ)

end

end A140652.P10234087105106967862

namespace A140652

/-- `A161664(n+1)+1+n` -/
def P10234087105106967862.Spec : Prop :=
  ∀ n, P10234087105106967862.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P37040183229312821

`∑[n+2-Δ[A006218(n)]]`
-/

namespace A140652.P37040183229312821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P37040183229312821

namespace A140652

/-- `∑[n+2-Δ[A006218(n)]]` -/
def P37040183229312821.Spec : Prop :=
  ∀ n, P37040183229312821.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P9122496902803226830

`∑[n+1]-A002541(n+1)`
-/

namespace A140652.P9122496902803226830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002541 (n + 1)

end

end A140652.P9122496902803226830

namespace A140652

/-- `∑[n+1]-A002541(n+1)` -/
def P9122496902803226830.Spec : Prop :=
  ∀ n, P9122496902803226830.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P12468489862074475370

`∑[n+1-A032741(n+1)]`
-/

namespace A140652.P12468489862074475370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P12468489862074475370

namespace A140652

/-- `∑[n+1-A032741(n+1)]` -/
def P12468489862074475370.Spec : Prop :=
  ∀ n, P12468489862074475370.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P15176175311672051640

`∑[n-A070824(n+1)]+1`
-/

namespace A140652.P15176175311672051640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A140652.P15176175311672051640

namespace A140652

/-- `∑[n-A070824(n+1)]+1` -/
def P15176175311672051640.Spec : Prop :=
  ∀ n, P15176175311672051640.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P11737233590299730911

`∑[2-A000005(n+1)+n]`
-/

namespace A140652.P11737233590299730911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P11737233590299730911

namespace A140652

/-- `∑[2-A000005(n+1)+n]` -/
def P11737233590299730911.Spec : Prop :=
  ∀ n, P11737233590299730911.a n = A140652 (n + 1)

theorem P11737233590299730911.correct : P11737233590299730911.Spec := by
  intro n
  simp only [A140652, Nat.add_sub_cancel, A140652.P11737233590299730911.f1, A140652.P11737233590299730911.a, A140652.P9715767635325101215.f2, A140652.P9715767635325101215.f1, A140652.P9715767635325101215.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140652

/-! ## A140652.P6915129852812186503

`∑[A069553(n+1)/(n+1)]`
-/

namespace A140652.P6915129852812186503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069553 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P6915129852812186503

namespace A140652

/-- `∑[A069553(n+1)/(n+1)]` -/
def P6915129852812186503.Spec : Prop :=
  ∀ n, P6915129852812186503.a n = (A140652 (n + 1) : ℚ)

end A140652

/-! ## A140652.P2011171540644720526

`∑[∑{d}[n+1, A000010(#)-1]+1]`
-/

namespace A140652.P2011171540644720526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A000010 d - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P2011171540644720526

namespace A140652

/-- `∑[∑{d}[n+1, A000010(#)-1]+1]` -/
def P2011171540644720526.Spec : Prop :=
  ∀ n, P2011171540644720526.a n = A140652 (n + 1)

end A140652

/-! ## A140652.P17654951265990280719

`∑[2-(A000005(2*n-(n-1))-n)]`
-/

namespace A140652.P17654951265990280719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P17654951265990280719

namespace A140652

/-- `∑[2-(A000005(2*n-(n-1))-n)]` -/
def P17654951265990280719.Spec : Prop :=
  ∀ n, P17654951265990280719.a n = A140652 (n + 1)

end A140652

/-!
# A140653: A triangular sequence of cyclotomic polynomial doubling: For cyclotomic polynomial:c(x,n) p(x,n)=c(x,Prime[n])*c(x,2*Prime[n]).

The programs for A140653, the canonical program `A140653.P6821184278077143935` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140653 has offset 1).

The definition of A140653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140653.P6821184278077143935

`(C(2, n)-char[A193732(n+1)])²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140653

/-- `(C(2, n)-char[A193732(n+1)])²` -/
def P6821184278077143935.Spec : Prop :=
  ∀ n, P6821184278077143935.a n = A140653 (n + 1)

theorem P6821184278077143935.correct : P6821184278077143935.Spec := by
  intro n
  simp only [A140653, Nat.add_sub_cancel]

end A140653

/-! ## A140653.P8027998573476073348

`1-char[A175969(n+2)+n+1]`
-/

namespace A140653.P8027998573476073348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175969 (n + 2) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A140653.P8027998573476073348

namespace A140653

/-- `1-char[A175969(n+2)+n+1]` -/
def P8027998573476073348.Spec : Prop :=
  ∀ n, P8027998573476073348.a n = A140653 (n + 1)

end A140653

/-! ## A140653.P12168241116822939090

`char[A193732(floor(n/a(2%n)))]` with `a(0)=-1, a(1)=0, a(2)=2`
-/

namespace A140653.P12168241116822939090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 2] fun n f1 =>
  A193732 ⌊(n : ℚ) / (f1 (2 % n) : ℚ)⌋.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A140653.P12168241116822939090

namespace A140653

/-- `char[A193732(floor(n/a(2%n)))]` -/
def P12168241116822939090.Spec : Prop :=
  ∀ n, (P12168241116822939090.a n : ℤ) = A140653 (n + 1)

end A140653

/-! ## A140653.P2381003197043312665

`char[A193732(abs(a(n-2)-n)+1)]` with `a(0)=0, a(1)=2`
-/

namespace A140653.P2381003197043312665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A193732 (|f1 (n - 2) - (n : ℤ)| + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A140653.P2381003197043312665

namespace A140653

/-- `char[A193732(abs(a(n-2)-n)+1)]` -/
def P2381003197043312665.Spec : Prop :=
  ∀ n, (P2381003197043312665.a n : ℤ) = A140653 (n + 1)

end A140653

/-! ## A140653.P3231800893288112640

`A130716(n)+char[A193732(n+2)]`
-/

namespace A140653.P3231800893288112640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A140653.P3231800893288112640

namespace A140653

/-- `A130716(n)+char[A193732(n+2)]` -/
def P3231800893288112640.Spec : Prop :=
  ∀ n, P3231800893288112640.a n = A140653 (n + 1)

end A140653

/-! ## A140653.P6319772212841271945

`A136273(char[A193732(n+1)]+C(2, n))`
-/

namespace A140653.P6319772212841271945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136273 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.choose 2 n)

end

end A140653.P6319772212841271945

namespace A140653

/-- `A136273(char[A193732(n+1)]+C(2, n))` -/
def P6319772212841271945.Spec : Prop :=
  ∀ n, P6319772212841271945.a n = A140653 (n + 1)

end A140653

/-! ## A140653.P3572036637971144268

`A268643(C(2, n))+char[A193732(n+1)]`
-/

namespace A140653.P3572036637971144268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (Nat.choose 2 n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A140653.P3572036637971144268

namespace A140653

/-- `A268643(C(2, n))+char[A193732(n+1)]` -/
def P3572036637971144268.Spec : Prop :=
  ∀ n, P3572036637971144268.a n = A140653 (n + 1)

end A140653

/-! ## A140653.P12218744282262111237

`char[A193732(A038802(n+1))+A015269(n)]`
-/

namespace A140653.P12218744282262111237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (A038802 (n + 1)).toNat + A015269 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A140653.P12218744282262111237

namespace A140653

/-- `char[A193732(A038802(n+1))+A015269(n)]` -/
def P12218744282262111237.Spec : Prop :=
  ∀ n, (P12218744282262111237.a n : ℤ) = A140653 (n + 1)

end A140653

/-! ## A140653.P13753815091442413697

`char[A193732(A038802(n+1))%A034893(n)]`
-/

namespace A140653.P13753815091442413697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193732 (A038802 (n + 1)).toNat) (A034893 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A140653.P13753815091442413697

namespace A140653

/-- `char[A193732(A038802(n+1))%A034893(n)]` -/
def P13753815091442413697.Spec : Prop :=
  ∀ n, (P13753815091442413697.a n : ℤ) = A140653 (n + 1)

end A140653

/-! ## A140653.P3189726063582727925

`A010054(A008864(n+1))+char[A193732(n+1)]`
-/

namespace A140653.P3189726063582727925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193732 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A008864 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A140653.P3189726063582727925

namespace A140653

/-- `A010054(A008864(n+1))+char[A193732(n+1)]` -/
def P3189726063582727925.Spec : Prop :=
  ∀ n, P3189726063582727925.a n = A140653 (n + 1)

end A140653

/-!
# A140655: Primes congruent to 53 or 157 mod 210.

The programs for A140655, the canonical program `A140655.P7745099200111804392` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140655 has offset 1).

The definition of A140655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140655.P7745099200111804392

`p?[A304840(2*n+1)+A109613(n+2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140655

/-- `p?[A304840(2*n+1)+A109613(n+2)]` -/
def P7745099200111804392.Spec : Prop :=
  ∀ n, P7745099200111804392.a n = A140655 (n + 1)

theorem P7745099200111804392.correct : P7745099200111804392.Spec := by
  intro n
  simp only [A140655, Nat.add_sub_cancel]

end A140655

/-! ## A140655.P18357739941210741762

`p?[53*n-A004524(n+1)]`
-/

namespace A140655.P18357739941210741762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - A004524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P18357739941210741762

namespace A140655

/-- `p?[53*n-A004524(n+1)]` -/
def P18357739941210741762.Spec : Prop :=
  ∀ n, P18357739941210741762.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P4826977033731213289

`p?[51*A004396(n)+n]`
-/

namespace A140655.P4826977033731213289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  51 * A004396 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P4826977033731213289

namespace A140655

/-- `p?[51*A004396(n)+n]` -/
def P4826977033731213289.Spec : Prop :=
  ∀ n, P4826977033731213289.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P17935872378704252969

`p?[A305548(2*n)-A004525(3*n)]`
-/

namespace A140655.P17935872378704252969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (2 * n) - A004525 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P17935872378704252969

namespace A140655

/-- `p?[A305548(2*n)-A004525(3*n)]` -/
def P17935872378704252969.Spec : Prop :=
  ∀ n, P17935872378704252969.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P12939564715617548012

`p?[A063118(A017029(n))+6]`
-/

namespace A140655.P12939564715617548012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (A017029 n).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P12939564715617548012

namespace A140655

/-- `p?[A063118(A017029(n))+6]` -/
def P12939564715617548012.Spec : Prop :=
  ∀ n, P12939564715617548012.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P13267524226712485596

`p?[A255413(A017041(n))-12]`
-/

namespace A140655.P13267524226712485596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (A017041 n).toNat - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P13267524226712485596

namespace A140655

/-- `p?[A255413(A017041(n))-12]` -/
def P13267524226712485596.Spec : Prop :=
  ∀ n, P13267524226712485596.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P16891167691171078211

`∩[A063230(n+1), A132237(n+1)]`
-/

namespace A140655.P16891167691171078211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140655.P16891167691171078211

namespace A140655

/-- `∩[A063230(n+1), A132237(n+1)]` -/
def P16891167691171078211.Spec : Prop :=
  ∀ n, (P16891167691171078211.a n : ℤ) = A140655 (n + 1)

end A140655

/-! ## A140655.P7317858635877078658

`p?[A017509(5*n+4)-A045572(n+1)]`
-/

namespace A140655.P7317858635877078658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (5 * n + 4) - A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P7317858635877078658

namespace A140655

/-- `p?[A017509(5*n+4)-A045572(n+1)]` -/
def P7317858635877078658.Spec : Prop :=
  ∀ n, P7317858635877078658.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P9526822236944924093

`p?[A269369(A128468(n))-8]`
-/

namespace A140655.P9526822236944924093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A128468 n).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P9526822236944924093

namespace A140655

/-- `p?[A269369(A128468(n))-8]` -/
def P9526822236944924093.Spec : Prop :=
  ∀ n, P9526822236944924093.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P12415201900631129108

`p?[A301291(n)+A022144(A008458(n))]`
-/

namespace A140655.P12415201900631129108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A022144 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P12415201900631129108

namespace A140655

/-- `p?[A301291(n)+A022144(A008458(n))]` -/
def P12415201900631129108.Spec : Prop :=
  ∀ n, P12415201900631129108.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P5285843940125016392

`p?[A301291(A301291(2*n))+A008458(2*n)]`
-/

namespace A140655.P5285843940125016392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (A301291 (2 * n)).toNat + A008458 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P5285843940125016392

namespace A140655

/-- `p?[A301291(A301291(2*n))+A008458(2*n)]` -/
def P5285843940125016392.Spec : Prop :=
  ∀ n, P5285843940125016392.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P7786276907428465553

`p?[A063226(A017029(A016777(n)))]`
-/

namespace A140655.P7786276907428465553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A017029 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P7786276907428465553

namespace A140655

/-- `p?[A063226(A017029(A016777(n)))]` -/
def P7786276907428465553.Spec : Prop :=
  ∀ n, P7786276907428465553.a n = A140655 (n + 1)

end A140655

/-! ## A140655.P9799055528012993451

`p?[A063226(A016789(A017017(n)))]`
-/

namespace A140655.P9799055528012993451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A016789 (A017017 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140655.P9799055528012993451

namespace A140655

/-- `p?[A063226(A016789(A017017(n)))]` -/
def P9799055528012993451.Spec : Prop :=
  ∀ n, P9799055528012993451.a n = A140655 (n + 1)

end A140655

/-!
# A140656: 

The programs for A140656, there is no canonical definition to state claims against.
-/

/-! ## A140656.P3040645446601402020

`(2*n²)!+n`
-/

namespace A140656.P3040645446601402020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n ^ 2) + n

end

end A140656.P3040645446601402020

/-!
# A140657: Powers of 2 with 3 alternatingly added and subtracted.

The programs for A140657, the canonical program `A140657.P9720185289962678958` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140657 has offset 0).

The definition of A140657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140657.P9720185289962678958

`2^n+3*(-1)^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140657

/-- `2^n+3*(-1)^n` -/
def P9720185289962678958.Spec : Prop :=
  ∀ n, P9720185289962678958.a n = A140657 n

theorem P9720185289962678958.correct : P9720185289962678958.Spec := by
  intro n
  simp only [A140657]

end A140657

/-! ## A140657.P14764718704546682245

`ogf((-4+5x)/(-1+x+2x^2))`
-/

namespace A140657.P14764718704546682245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -1, -2] n

end

end A140657.P14764718704546682245

namespace A140657

/-- `ogf((-4+5x)/(-1+x+2x^2))` -/
def P14764718704546682245.Spec : Prop :=
  ∀ n, P14764718704546682245.a n = A140657 n

end A140657

/-! ## A140657.P15697186035728022792

`floor(a(n-1)+2*a(n-2))` with `a(0)=4, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A140657.P15697186035728022792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, -1] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A140657.P15697186035728022792

namespace A140657

/-- `floor(a(n-1)+2*a(n-2))` -/
def P15697186035728022792.Spec : Prop :=
  ∀ n, P15697186035728022792.a n = A140657 n

theorem P15697186035728022792.correct : P15697186035728022792.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A140657, Nat.add_sub_cancel, A140657.P15697186035728022792.a, A140657.P9720185289962678958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A140657, Nat.add_sub_cancel, A140657.P15697186035728022792.a, A140657.P9720185289962678958.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140657

/-! ## A140657.P1332434558003313256

`2*(a(n-2)+a(n-1)/2)` with `a(0)=4, a(1)=-1`
-/

namespace A140657.P1332434558003313256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, -1] fun n a =>
  2 * (a (n - 2) + a (n - 1) / 2)

end

end A140657.P1332434558003313256

namespace A140657

/-- `2*(a(n-2)+a(n-1)/2)` -/
def P1332434558003313256.Spec : Prop :=
  ∀ n, P1332434558003313256.a n = (A140657 n : ℚ)

theorem P1332434558003313256.correct : P1332434558003313256.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A140657, Nat.add_sub_cancel, A140657.P1332434558003313256.a, A140657.P9720185289962678958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A140657, Nat.add_sub_cancel, A140657.P1332434558003313256.a, A140657.P9720185289962678958.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140657

/-! ## A140657.P14944686912873864524

`floor(a(n-2)+a(n-1)+a(n-2))` with `a(0)=4, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A140657.P14944686912873864524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, -1] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A140657.P14944686912873864524

namespace A140657

/-- `floor(a(n-2)+a(n-1)+a(n-2))` -/
def P14944686912873864524.Spec : Prop :=
  ∀ n, P14944686912873864524.a n = A140657 n

theorem P14944686912873864524.correct : P14944686912873864524.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A140657, Nat.add_sub_cancel, A140657.P14944686912873864524.a, A140657.P9720185289962678958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A140657, Nat.add_sub_cancel, A140657.P14944686912873864524.a, A140657.P9720185289962678958.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140657

/-! ## A140657.P16803698917687276423

`Δ[2^n+(and(1, n)+1)²]`
-/

namespace A140657.P16803698917687276423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + (Nat.land 1 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140657.P16803698917687276423

namespace A140657

/-- `Δ[2^n+(and(1, n)+1)²]` -/
def P16803698917687276423.Spec : Prop :=
  ∀ n, P16803698917687276423.a n = A140657 n

end A140657

/-! ## A140657.P18442569937311789203

`Δ[2^n-and(3, n²-1)]`
-/

namespace A140657.P18442569937311789203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.land 3 ((n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P18442569937311789203

namespace A140657

/-- `Δ[2^n-and(3, n²-1)]` -/
def P18442569937311789203.Spec : Prop :=
  ∀ n, P18442569937311789203.a n = A140657 n

end A140657

/-! ## A140657.P4091518680976051073

`Δ[2^n-1-4^and(1, n+1)]`
-/

namespace A140657.P4091518680976051073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - (4 ^ Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P4091518680976051073

namespace A140657

/-- `Δ[2^n-1-4^and(1, n+1)]` -/
def P4091518680976051073.Spec : Prop :=
  ∀ n, P4091518680976051073.a n = A140657 n

end A140657

/-! ## A140657.P6511670021972083757

`Δ[A010674(n)+2^n]`
-/

namespace A140657.P6511670021972083757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P6511670021972083757

namespace A140657

/-- `Δ[A010674(n)+2^n]` -/
def P6511670021972083757.Spec : Prop :=
  ∀ n, P6511670021972083757.a n = A140657 n

end A140657

/-! ## A140657.P15450802051920569048

`Δ[A010685(n)+2^n]`
-/

namespace A140657.P15450802051920569048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P15450802051920569048

namespace A140657

/-- `Δ[A010685(n)+2^n]` -/
def P15450802051920569048.Spec : Prop :=
  ∀ n, P15450802051920569048.a n = A140657 n

end A140657

/-! ## A140657.P17879070438878174994

`Δ[A062510(n)-gcd(2, n)]`
-/

namespace A140657.P17879070438878174994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P17879070438878174994

namespace A140657

/-- `Δ[A062510(n)-gcd(2, n)]` -/
def P17879070438878174994.Spec : Prop :=
  ∀ n, P17879070438878174994.a n = A140657 n

end A140657

/-! ## A140657.P1334535505364065015

`Δ[2^n+A000034(n)²]`
-/

namespace A140657.P1334535505364065015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A000034 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P1334535505364065015

namespace A140657

/-- `Δ[2^n+A000034(n)²]` -/
def P1334535505364065015.Spec : Prop :=
  ∀ n, P1334535505364065015.a n = A140657 n

end A140657

/-! ## A140657.P5699558664186310348

`Δ[2^n-A327767(n+1)]`
-/

namespace A140657.P5699558664186310348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A327767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P5699558664186310348

namespace A140657

/-- `Δ[2^n-A327767(n+1)]` -/
def P5699558664186310348.Spec : Prop :=
  ∀ n, P5699558664186310348.a n = A140657 n

end A140657

/-! ## A140657.P2801407707316469749

`Δ[A000079(n)+3*and(1, n)]`
-/

namespace A140657.P2801407707316469749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (3 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P2801407707316469749

namespace A140657

/-- `Δ[A000079(n)+3*and(1, n)]` -/
def P2801407707316469749.Spec : Prop :=
  ∀ n, P2801407707316469749.a n = A140657 n

end A140657

/-! ## A140657.P9476381679100627150

`Δ[A166956(n)-gcd(6, n%2)]`
-/

namespace A140657.P9476381679100627150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166956 n - (Nat.gcd 6 (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P9476381679100627150

namespace A140657

/-- `Δ[A166956(n)-gcd(6, n%2)]` -/
def P9476381679100627150.Spec : Prop :=
  ∀ n, P9476381679100627150.a n = A140657 n

end A140657

/-! ## A140657.P9060509932710163749

`Δ[A010712(n)+A000079(n)]`
-/

namespace A140657.P9060509932710163749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010712 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P9060509932710163749

namespace A140657

/-- `Δ[A010712(n)+A000079(n)]` -/
def P9060509932710163749.Spec : Prop :=
  ∀ n, P9060509932710163749.a n = A140657 n

end A140657

/-! ## A140657.P15340885775385386991

`Δ[A010730(n)+A000079(n)]`
-/

namespace A140657.P15340885775385386991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010730 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P15340885775385386991

namespace A140657

/-- `Δ[A010730(n)+A000079(n)]` -/
def P15340885775385386991.Spec : Prop :=
  ∀ n, P15340885775385386991.a n = A140657 n

end A140657

/-! ## A140657.P3111383830110087101

`Δ[A062510(n)+A000034(n)]`
-/

namespace A140657.P3111383830110087101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P3111383830110087101

namespace A140657

/-- `Δ[A062510(n)+A000034(n)]` -/
def P3111383830110087101.Spec : Prop :=
  ∀ n, P3111383830110087101.a n = A140657 n

end A140657

/-! ## A140657.P7246106873215082540

`Δ[A140253(n)+Δ[A042948(n)]]`
-/

namespace A140657.P7246106873215082540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P7246106873215082540

namespace A140657

/-- `Δ[A140253(n)+Δ[A042948(n)]]` -/
def P7246106873215082540.Spec : Prop :=
  ∀ n, P7246106873215082540.a n = A140657 n

end A140657

/-! ## A140657.P11457181702052916781

`Δ[A011782(n+1)+A010704(n)]`
-/

namespace A140657.P11457181702052916781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A010704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140657.P11457181702052916781

namespace A140657

/-- `Δ[A011782(n+1)+A010704(n)]` -/
def P11457181702052916781.Spec : Prop :=
  ∀ n, P11457181702052916781.a n = A140657 n

end A140657

/-!
# A140658: Overpseudoprimes to bases 2 and 3.

The programs for A140658, there is no canonical definition to state claims against.
-/

/-! ## A140658.P6236226007359535193

`∩[A141232(n+1), A141350(n+1)]`
-/

namespace A140658.P6236226007359535193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140658.P6236226007359535193

/-!
# A140659: a(n) = floor(A140657(n+2)/10).

The programs for A140659, the canonical program `A140659.P2374754563002886907` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140659 has offset 0).

The definition of A140659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140659.P2374754563002886907

`floor(A140657(n+2)/10)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140659

/-- `floor(A140657(n+2)/10)` -/
def P2374754563002886907.Spec : Prop :=
  ∀ n, P2374754563002886907.a n = A140659 n

theorem P2374754563002886907.correct : P2374754563002886907.Spec := by
  intro n
  simp only [A140659]

end A140659

/-! ## A140659.P8814280688325220509

`floor((∑[2^n]-1)/5)`
-/

namespace A140659.P8814280688325220509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 5⌋

end

end A140659.P8814280688325220509

namespace A140659

/-- `floor((∑[2^n]-1)/5)` -/
def P8814280688325220509.Spec : Prop :=
  ∀ n, P8814280688325220509.a n = A140659 n

end A140659

/-! ## A140659.P3864271910347369345

`floor(gcd(4, n)/2)+2*a(n-1)` with `a(0)=0`
-/

namespace A140659.P3864271910347369345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Nat.gcd 4 n : ℚ) / 2⌋ + 2 * a (n - 1)

end

end A140659.P3864271910347369345

namespace A140659

/-- `floor(gcd(4, n)/2)+2*a(n-1)` -/
def P3864271910347369345.Spec : Prop :=
  ∀ n, P3864271910347369345.a n = A140659 n

end A140659

/-! ## A140659.P14799718466640725923

`round(A283506(n)/5)`
-/

namespace A140659.P14799718466640725923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A283506 n : ℚ) / 5)

end

end A140659.P14799718466640725923

namespace A140659

/-- `round(A283506(n)/5)` -/
def P14799718466640725923.Spec : Prop :=
  ∀ n, P14799718466640725923.a n = A140659 n

end A140659

/-! ## A140659.P16660179221802350850

`round(A290073(n)/5)`
-/

namespace A140659.P16660179221802350850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A290073 n : ℚ) / 5)

end

end A140659.P16660179221802350850

namespace A140659

/-- `round(A290073(n)/5)` -/
def P16660179221802350850.Spec : Prop :=
  ∀ n, P16660179221802350850.a n = A140659 n

end A140659

/-! ## A140659.P15082679127882385269

`A256494(n+2)-1`
-/

namespace A140659.P15082679127882385269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (n + 2) - 1

end

end A140659.P15082679127882385269

namespace A140659

/-- `A256494(n+2)-1` -/
def P15082679127882385269.Spec : Prop :=
  ∀ n, P15082679127882385269.a n = A140659 n

end A140659

/-! ## A140659.P7156962211397023544

`ceil(A007910(n)/2)-1`
-/

namespace A140659.P7156962211397023544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007910 n : ℚ) / 2⌉ - 1

end

end A140659.P7156962211397023544

namespace A140659

/-- `ceil(A007910(n)/2)-1` -/
def P7156962211397023544.Spec : Prop :=
  ∀ n, P7156962211397023544.a n = A140659 n

end A140659

/-! ## A140659.P4553414950546407284

`ceil(A126646(n)/5)-1`
-/

namespace A140659.P4553414950546407284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126646 n : ℚ) / 5⌉ - 1

end

end A140659.P4553414950546407284

namespace A140659

/-- `ceil(A126646(n)/5)-1` -/
def P4553414950546407284.Spec : Prop :=
  ∀ n, P4553414950546407284.a n = A140659 n

end A140659

/-! ## A140659.P8027660771652577361

`ceil(∑[A000079(n)/5])-1`
-/

namespace A140659.P8027660771652577361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 1

end

end A140659.P8027660771652577361

namespace A140659

/-- `ceil(∑[A000079(n)/5])-1` -/
def P8027660771652577361.Spec : Prop :=
  ∀ n, P8027660771652577361.a n = A140659 n

end A140659

/-! ## A140659.P3209280828939943405

`A007909(n)-A152822(n)`
-/

namespace A140659.P3209280828939943405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n - A152822 n

end

end A140659.P3209280828939943405

namespace A140659

/-- `A007909(n)-A152822(n)` -/
def P3209280828939943405.Spec : Prop :=
  ∀ n, P3209280828939943405.a n = A140659 n

end A140659

/-! ## A140659.P4088471196268409349

`A083593(n)-(A000975(n)+1)`
-/

namespace A140659.P4088471196268409349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083593 n - (A000975 n + 1)

end

end A140659.P4088471196268409349

namespace A140659

/-- `A083593(n)-(A000975(n)+1)` -/
def P4088471196268409349.Spec : Prop :=
  ∀ n, P4088471196268409349.a n = A140659 n

end A140659

/-! ## A140659.P1736023594578659470

`(A007910(n)-A000034(n))/2`
-/

namespace A140659.P1736023594578659470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007910 n - A000034 n : ℚ) / 2

end

end A140659.P1736023594578659470

namespace A140659

/-- `(A007910(n)-A000034(n))/2` -/
def P1736023594578659470.Spec : Prop :=
  ∀ n, P1736023594578659470.a n = (A140659 n : ℚ)

end A140659

/-! ## A140659.P3019380493346485390

`A007909(n)-A007909(n+1)%3`
-/

namespace A140659.P3019380493346485390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n - Int.tmod (A007909 (n + 1)) 3

end

end A140659.P3019380493346485390

namespace A140659

/-- `A007909(n)-A007909(n+1)%3` -/
def P3019380493346485390.Spec : Prop :=
  ∀ n, P3019380493346485390.a n = A140659 n

end A140659

/-! ## A140659.P4835080759365292807

`A118406(n+1)-(A177704(n+1)+1)`
-/

namespace A140659.P4835080759365292807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118406 (n + 1) - (A177704 (n + 1) + 1)

end

end A140659.P4835080759365292807

namespace A140659

/-- `A118406(n+1)-(A177704(n+1)+1)` -/
def P4835080759365292807.Spec : Prop :=
  ∀ n, P4835080759365292807.a n = A140659 n

end A140659

/-! ## A140659.P15183774977999390530

`A265381(n+1)-(A084170(n+1)+1)`
-/

namespace A140659.P15183774977999390530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265381 (n + 1) - (A084170 (n + 1) + 1)

end

end A140659.P15183774977999390530

namespace A140659

/-- `A265381(n+1)-(A084170(n+1)+1)` -/
def P15183774977999390530.Spec : Prop :=
  ∀ n, P15183774977999390530.a n = A140659 n

end A140659

/-! ## A140659.P12746086233278578201

`A173009(n+2)-(A178452(n+2)+1)`
-/

namespace A140659.P12746086233278578201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173009 (n + 2) - (A178452 (n + 2) + 1)

end

end A140659.P12746086233278578201

namespace A140659

/-- `A173009(n+2)-(A178452(n+2)+1)` -/
def P12746086233278578201.Spec : Prop :=
  ∀ n, P12746086233278578201.a n = A140659 n

end A140659

/-! ## A140659.P4857027119368191029

`A033999(2*n+1)+A033999(2*n)*A256494(n+2)`
-/

namespace A140659.P4857027119368191029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A256494 (n + 2)

end

end A140659.P4857027119368191029

namespace A140659

/-- `A033999(2*n+1)+A033999(2*n)*A256494(n+2)` -/
def P4857027119368191029.Spec : Prop :=
  ∀ n, P4857027119368191029.a n = A140659 n

end A140659

/-!
# A140660: a(n) = 3*4^n + 1.

The programs for A140660, the canonical program `A140660.P5031545441558427530` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140660 has offset 0).

The definition of A140660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n+1` (program `A140660.P5031545441558427530`, by `A140660.P5031545441558427530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140660.P5031545441558427530

`3*4^n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140660

/-- `3*4^n+1` -/
def P5031545441558427530.Spec : Prop :=
  ∀ n, (P5031545441558427530.a n : ℤ) = A140660 n

theorem P5031545441558427530.correct : P5031545441558427530.Spec := by
  intro n
  simp only [A140660]

end A140660

/-! ## A140660.P14976521485079552011

`Δ[or(n, 4^n)]`
-/

namespace A140660.P14976521485079552011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140660.P14976521485079552011

namespace A140660

/-- `Δ[or(n, 4^n)]` -/
def P14976521485079552011.Spec : Prop :=
  ∀ n, P14976521485079552011.a n = A140660 n

end A140660

/-! ## A140660.P13582744598232675618

`Δ[xor(n, 4^n)]`
-/

namespace A140660.P13582744598232675618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140660.P13582744598232675618

namespace A140660

/-- `Δ[xor(n, 4^n)]` -/
def P13582744598232675618.Spec : Prop :=
  ∀ n, P13582744598232675618.a n = A140660 n

end A140660

/-! ## A140660.P14545874636888796531

`ogf((4-7x)/(1-5x+4x^2))`
-/

namespace A140660.P14545874636888796531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7] [1, -5, 4] n

end

end A140660.P14545874636888796531

namespace A140660

/-- `ogf((4-7x)/(1-5x+4x^2))` -/
def P14545874636888796531.Spec : Prop :=
  ∀ n, P14545874636888796531.a n = A140660 n

end A140660

/-! ## A140660.P18052434045880280286

`record[1-Δ[(-2)^n]]`
-/

namespace A140660.P18052434045880280286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140660.P18052434045880280286

namespace A140660

/-- `record[1-Δ[(-2)^n]]` -/
def P18052434045880280286.Spec : Prop :=
  ∀ n, P18052434045880280286.a n = A140660 n

end A140660

/-! ## A140660.P335049623389746936

`∑[4*a(n-1)]` with `a(0)=4, a(1)=9`
-/

namespace A140660.P335049623389746936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140660.P335049623389746936

namespace A140660

/-- `∑[4*a(n-1)]` -/
def P335049623389746936.Spec : Prop :=
  ∀ n, (P335049623389746936.a n : ℤ) = A140660 n

end A140660

/-! ## A140660.P3294711509727124671

`abs(3-4*a(n-1))` with `a(0)=4`
-/

namespace A140660.P3294711509727124671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |3 - 4 * a (n - 1)|

end

end A140660.P3294711509727124671

namespace A140660

/-- `abs(3-4*a(n-1))` -/
def P3294711509727124671.Spec : Prop :=
  ∀ n, P3294711509727124671.a n = A140660 n

end A140660

/-! ## A140660.P13413625701917992829

`4*(a(n-1)-3/4)` with `a(0)=4`
-/

namespace A140660.P13413625701917992829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) / 4)

end

end A140660.P13413625701917992829

namespace A140660

/-- `4*(a(n-1)-3/4)` -/
def P13413625701917992829.Spec : Prop :=
  ∀ n, P13413625701917992829.a n = (A140660 n : ℚ)

theorem P13413625701917992829.correct : P13413625701917992829.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140660, Nat.add_sub_cancel, A140660.P13413625701917992829.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140660, Nat.add_sub_cancel, A140660.P13413625701917992829.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140660

/-! ## A140660.P6895631807768797392

`or(1, 4*(a(n-1)-1))` with `a(0)=4`
-/

namespace A140660.P6895631807768797392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - 1))

end

end A140660.P6895631807768797392

namespace A140660

/-- `or(1, 4*(a(n-1)-1))` -/
def P6895631807768797392.Spec : Prop :=
  ∀ n, P6895631807768797392.a n = A140660 n

end A140660

/-! ## A140660.P11231746823531376452

`xor(1, 4*(a(n-1)-1))` with `a(0)=4`
-/

namespace A140660.P11231746823531376452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.xor 1 (4 * (a (n - 1) - 1))

end

end A140660.P11231746823531376452

namespace A140660

/-- `xor(1, 4*(a(n-1)-1))` -/
def P11231746823531376452.Spec : Prop :=
  ∀ n, P11231746823531376452.a n = A140660 n

end A140660

/-! ## A140660.P13521821426405908818

`floor(4*a(n-1)-ϕ²)` with `a(0)=4`
-/

namespace A140660.P13521821426405908818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(4 * a (n - 1) : ℝ) - Real.goldenRatio ^ 2⌋

end

end A140660.P13521821426405908818

namespace A140660

/-- `floor(4*a(n-1)-ϕ²)` -/
def P13521821426405908818.Spec : Prop :=
  ∀ n, P13521821426405908818.a n = A140660 n

end A140660

/-! ## A140660.P1799105642146846658

`floor(a(n-1)+3*(a(n-1)-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A140660.P1799105642146846658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 3 * (a (n - 1) - 1)

end

end A140660.P1799105642146846658

namespace A140660

/-- `floor(a(n-1)+3*(a(n-1)-1))` -/
def P1799105642146846658.Spec : Prop :=
  ∀ n, P1799105642146846658.a n = A140660 n

theorem P1799105642146846658.correct : P1799105642146846658.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140660, Nat.add_sub_cancel, A140660.P1799105642146846658.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140660, Nat.add_sub_cancel, A140660.P1799105642146846658.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140660

/-! ## A140660.P9264218418503069548

`floor(a(n-1)-3*(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A140660.P9264218418503069548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - 3 * (1 - a (n - 1))

end

end A140660.P9264218418503069548

namespace A140660

/-- `floor(a(n-1)-3*(1-a(n-1)))` -/
def P9264218418503069548.Spec : Prop :=
  ∀ n, P9264218418503069548.a n = A140660 n

theorem P9264218418503069548.correct : P9264218418503069548.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140660, Nat.add_sub_cancel, A140660.P9264218418503069548.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140660, Nat.add_sub_cancel, A140660.P9264218418503069548.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140660

/-! ## A140660.P12557959808767292675

`∑[∑[a(n-1)+a(n-1)]²]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A140660.P12557959808767292675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3] fun n f2 =>
  f2 (n - 1) + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140660.P12557959808767292675

namespace A140660

/-- `∑[∑[a(n-1)+a(n-1)]²]` -/
def P12557959808767292675.Spec : Prop :=
  ∀ n, (P12557959808767292675.a n : ℤ) = A140660 n

end A140660

/-! ## A140660.P16890110402420258494

`(4*a(n-1)-3)*a(n-1)%3` with `a(0)=4`
-/

namespace A140660.P16890110402420258494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (4 * a (n - 1) - 3) * Int.tmod (a (n - 1)) 3

end

end A140660.P16890110402420258494

namespace A140660

/-- `(4*a(n-1)-3)*a(n-1)%3` -/
def P16890110402420258494.Spec : Prop :=
  ∀ n, P16890110402420258494.a n = A140660 n

end A140660

/-! ## A140660.P10642417624502980509

`floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)-3)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A140660.P10642417624502980509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 3)))

end

end A140660.P10642417624502980509

namespace A140660

/-- `floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)-3)` -/
def P10642417624502980509.Spec : Prop :=
  ∀ n, P10642417624502980509.a n = A140660 n

theorem P10642417624502980509.correct : P10642417624502980509.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140660, Nat.add_sub_cancel, A140660.P10642417624502980509.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140660, Nat.add_sub_cancel, A140660.P10642417624502980509.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140660

/-! ## A140660.P15658198388681100802

`floor(a(n-1)-(3-a(n-1)-a(n-1)-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A140660.P15658198388681100802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - (3 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A140660.P15658198388681100802

namespace A140660

/-- `floor(a(n-1)-(3-a(n-1)-a(n-1)-a(n-1)))` -/
def P15658198388681100802.Spec : Prop :=
  ∀ n, P15658198388681100802.a n = A140660 n

theorem P15658198388681100802.correct : P15658198388681100802.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140660, Nat.add_sub_cancel, A140660.P15658198388681100802.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140660, Nat.add_sub_cancel, A140660.P15658198388681100802.a, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140660

/-! ## A140660.P1610144650478892082

`Δ[A158879(n)]`
-/

namespace A140660.P1610144650478892082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140660.P1610144650478892082

namespace A140660

/-- `Δ[A158879(n)]` -/
def P1610144650478892082.Spec : Prop :=
  ∀ n, P1610144650478892082.a n = A140660 n

theorem P1610144650478892082.correct : P1610144650478892082.Spec := by
  intro n
  simp only [A140660, Nat.add_sub_cancel, A140660.P1610144650478892082.f1, A140660.P1610144650478892082.a, A140660.P5031545441558427530.a, A158879, A158879.P14813342468476927609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140660

/-! ## A140660.P3666103657337319210

`A181565(2*n)`
-/

namespace A140660.P3666103657337319210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (2 * n)

end

end A140660.P3666103657337319210

namespace A140660

/-- `A181565(2*n)` -/
def P3666103657337319210.Spec : Prop :=
  ∀ n, P3666103657337319210.a n = A140660 n

end A140660

/-!
# A140661: Number of pairs (b,c) with the same prime factors, 1<=b<=c<=n.

The programs for A140661, there is no canonical definition to state claims against.
-/

/-! ## A140661.P2010140506763235401

`∑[A008479(n+1)]`
-/

namespace A140661.P2010140506763235401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140661.P2010140506763235401

/-! ## A140661.P18035726766342296216

`A008479(char[1]+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A140661.P18035726766342296216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008479 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A140661.P18035726766342296216

/-! ## A140661.P17420961360858673799

`∑[A003557(n+1)-A360543(n+1)]`
-/

namespace A140661.P17420961360858673799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A360543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140661.P17420961360858673799

/-! ## A140661.P6069244330129574726

`a(n-1)+A008479(n+1)%A010846(n+1)` with `a(0)=1`
-/

namespace A140661.P6069244330129574726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A008479 (n + 1)) (A010846 (n + 1))

end

end A140661.P6069244330129574726

/-! ## A140661.P9323803934254808688

`A028310(a(n-1))+A008479(n+1)` with `a(0)=1`
-/

namespace A140661.P9323803934254808688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A008479 (n + 1)

end

end A140661.P9323803934254808688

/-! ## A140661.P12961259258173154581

`A338478(A338478(a(n-1)))+A008479(n+1)` with `a(0)=1`
-/

namespace A140661.P12961259258173154581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338478 (A338478 (a (n - 1)).toNat).toNat + A008479 (n + 1)

end

end A140661.P12961259258173154581

/-! ## A140661.P2406220047732039544

`∑[A091090(A285111(n+1))]`
-/

namespace A140661.P2406220047732039544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A285111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140661.P2406220047732039544

/-!
# A140662: Number of possible column states for self-avoiding polygons in a slit of width n.

The programs for A140662, the canonical program `A140662.P10525022962344994397` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140662 has offset 1).

The definition of A140662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140662.P10525022962344994397

`A001006(n+2)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140662

/-- `A001006(n+2)-1` -/
def P10525022962344994397.Spec : Prop :=
  ∀ n, P10525022962344994397.a n = A140662 (n + 1)

theorem P10525022962344994397.correct : P10525022962344994397.Spec := by
  intro n
  simp only [A140662, Nat.add_sub_cancel]

end A140662

/-! ## A140662.P11125245816912788505

`∑[record[A105695(n)]]`
-/

namespace A140662.P11125245816912788505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P11125245816912788505

namespace A140662

/-- `∑[record[A105695(n)]]` -/
def P11125245816912788505.Spec : Prop :=
  ∀ n, P11125245816912788505.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P11570026533872474507

`∑[A002026(n+1)]`
-/

namespace A140662.P11570026533872474507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P11570026533872474507

namespace A140662

/-- `∑[A002026(n+1)]` -/
def P11570026533872474507.Spec : Prop :=
  ∀ n, P11570026533872474507.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P11100864286352840192

`∑[A244884(n+2)]`
-/

namespace A140662.P11100864286352840192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P11100864286352840192

namespace A140662

/-- `∑[A244884(n+2)]` -/
def P11100864286352840192.Spec : Prop :=
  ∀ n, P11100864286352840192.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P1535078655689751804

`∑[A105695(n+3)]`
-/

namespace A140662.P1535078655689751804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P1535078655689751804

namespace A140662

/-- `∑[A105695(n+3)]` -/
def P1535078655689751804.Spec : Prop :=
  ∀ n, P1535078655689751804.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P9693368245971117528

`∑[record[Δ[A086246(n)]]]`
-/

namespace A140662.P9693368245971117528
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P9693368245971117528

namespace A140662

/-- `∑[record[Δ[A086246(n)]]]` -/
def P9693368245971117528.Spec : Prop :=
  ∀ n, P9693368245971117528.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P6326838797204679500

`Δ[A086615(n+1)]-1`
-/

namespace A140662.P6326838797204679500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A140662.P6326838797204679500

namespace A140662

/-- `Δ[A086615(n+1)]-1` -/
def P6326838797204679500.Spec : Prop :=
  ∀ n, P6326838797204679500.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P11778774640420295520

`Δ[A097332(n+2)]-1`
-/

namespace A140662.P11778774640420295520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A140662.P11778774640420295520

namespace A140662

/-- `Δ[A097332(n+2)]-1` -/
def P11778774640420295520.Spec : Prop :=
  ∀ n, P11778774640420295520.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P1267041634133228687

`∑[abs(Δ[A001006(n+1)])]`
-/

namespace A140662.P1267041634133228687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P1267041634133228687

namespace A140662

/-- `∑[abs(Δ[A001006(n+1)])]` -/
def P1267041634133228687.Spec : Prop :=
  ∀ n, P1267041634133228687.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P14157824465389480756

`∑[record[A002026(abs(1-n))]]`
-/

namespace A140662.P14157824465389480756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P14157824465389480756

namespace A140662

/-- `∑[record[A002026(abs(1-n))]]` -/
def P14157824465389480756.Spec : Prop :=
  ∀ n, P14157824465389480756.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P10637382136061620051

`record[abs(A168051(n+1)+1)]`
-/

namespace A140662.P10637382136061620051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 (n + 1) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140662.P10637382136061620051

namespace A140662

/-- `record[abs(A168051(n+1)+1)]` -/
def P10637382136061620051.Spec : Prop :=
  ∀ n, P10637382136061620051.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P17793783528564708908

`Δ[∑[A001006(n-log2(1/2))]-n]`
-/

namespace A140662.P17793783528564708908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140662.P17793783528564708908

namespace A140662

/-- `Δ[∑[A001006(n-log2(1/2))]-n]` -/
def P17793783528564708908.Spec : Prop :=
  ∀ n, P17793783528564708908.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P4310397538571067844

`∑[A275208(n)+A275207(n)]`
-/

namespace A140662.P4310397538571067844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 n + A275207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P4310397538571067844

namespace A140662

/-- `∑[A275208(n)+A275207(n)]` -/
def P4310397538571067844.Spec : Prop :=
  ∀ n, P4310397538571067844.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P1872155654046490434

`record[A001006(n)-A057427(n)]`
-/

namespace A140662.P1872155654046490434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140662.P1872155654046490434

namespace A140662

/-- `record[A001006(n)-A057427(n)]` -/
def P1872155654046490434.Spec : Prop :=
  ∀ n, P1872155654046490434.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P6611557095112181406

`∑[A284778(n+1)+A284778(n)]`
-/

namespace A140662.P6611557095112181406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284778 (n + 1) + A284778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P6611557095112181406

namespace A140662

/-- `∑[A284778(n+1)+A284778(n)]` -/
def P6611557095112181406.Spec : Prop :=
  ∀ n, P6611557095112181406.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P13906026890051489338

`record[A001006(n)-ceil(n/A000041(n))]`
-/

namespace A140662.P13906026890051489338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - ⌈(n : ℚ) / (A000041 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140662.P13906026890051489338

namespace A140662

/-- `record[A001006(n)-ceil(n/A000041(n))]` -/
def P13906026890051489338.Spec : Prop :=
  ∀ n, P13906026890051489338.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P10934811803250207451

`A033999(2*n+1)+A001006(n+2)`
-/

namespace A140662.P10934811803250207451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001006 (n + 2)

end

end A140662.P10934811803250207451

namespace A140662

/-- `A033999(2*n+1)+A001006(n+2)` -/
def P10934811803250207451.Spec : Prop :=
  ∀ n, P10934811803250207451.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P15312153892598362692

`record[A001006(n)+-1%A000032(n+1)]`
-/

namespace A140662.P15312153892598362692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + Int.tmod (-1) (A000032 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140662.P15312153892598362692

namespace A140662

/-- `record[A001006(n)+-1%A000032(n+1)]` -/
def P15312153892598362692.Spec : Prop :=
  ∀ n, P15312153892598362692.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P16872945114624005107

`A087960(A121511(n+1))+A001006(n+2)`
-/

namespace A140662.P16872945114624005107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A121511 (n + 1)).toNat + A001006 (n + 2)

end

end A140662.P16872945114624005107

namespace A140662

/-- `A087960(A121511(n+1))+A001006(n+2)` -/
def P16872945114624005107.Spec : Prop :=
  ∀ n, P16872945114624005107.a n = A140662 (n + 1)

end A140662

/-! ## A140662.P13304870157717841981

`∑[A026122(n+2)-A026134(n+1)]`
-/

namespace A140662.P13304870157717841981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) - A026134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140662.P13304870157717841981

namespace A140662

/-- `∑[A026122(n+2)-A026134(n+1)]` -/
def P13304870157717841981.Spec : Prop :=
  ∀ n, P13304870157717841981.a n = A140662 (n + 1)

end A140662

/-!
# A140664: a(n) = A014963(n)*mobius(n).

The programs for A140664, the canonical program `A140664.P2641678759811754943` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140664 has offset 1).

The definition of A140664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140664.P2641678759811754943

`A014963(n+1)*A008683(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A140664

/-- `A014963(n+1)*A008683(n+1)` -/
def P2641678759811754943.Spec : Prop :=
  ∀ n, P2641678759811754943.a n = A140664 (n + 1)

theorem P2641678759811754943.correct : P2641678759811754943.Spec := by
  intro n
  simp only [A140664, Nat.add_sub_cancel]

end A140664

/-! ## A140664.P2273063354048504043

`A140668(n+1)-(n+1)`
-/

namespace A140664.P2273063354048504043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140668 (n + 1) - (n + 1 : ℤ)

end

end A140664.P2273063354048504043

namespace A140664

/-- `A140668(n+1)-(n+1)` -/
def P2273063354048504043.Spec : Prop :=
  ∀ n, P2273063354048504043.a n = A140664 (n + 1)

theorem P2273063354048504043.correct : P2273063354048504043.Spec := by
  intro n
  simp only [A140664, Nat.add_sub_cancel, A140664.P2273063354048504043.a, A140664.P2641678759811754943.a, A008683, A008683.P18254306604665478110.a, A014963, A014963.P5975177236000282614.a, A140668, A140668.P2961368003393691795.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A080304, A080304.P9910366703239988167.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A055615, A055615.P8993130195977213181.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140664

/-! ## A140664.P17921261049128465189

`A007423(n+1)-A089026(n+1)`
-/

namespace A140664.P17921261049128465189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - A089026 (n + 1)

end

end A140664.P17921261049128465189

namespace A140664

/-- `A007423(n+1)-A089026(n+1)` -/
def P17921261049128465189.Spec : Prop :=
  ∀ n, P17921261049128465189.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P13073155703938725901

`A008683(n+1)-A166260(n+1)`
-/

namespace A140664.P13073155703938725901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A166260 (n + 1)

end

end A140664.P13073155703938725901

namespace A140664

/-- `A008683(n+1)-A166260(n+1)` -/
def P13073155703938725901.Spec : Prop :=
  ∀ n, P13073155703938725901.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P10650076685064414111

`A008683(n+1)*A014973(n+1)`
-/

namespace A140664.P10650076685064414111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A014973 (n + 1)

end

end A140664.P10650076685064414111

namespace A140664

/-- `A008683(n+1)*A014973(n+1)` -/
def P10650076685064414111.Spec : Prop :=
  ∀ n, P10650076685064414111.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P16574417274754352872

`A008683(n+1)*A089026(n+1)`
-/

namespace A140664.P16574417274754352872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A089026 (n + 1)

end

end A140664.P16574417274754352872

namespace A140664

/-- `A008683(n+1)*A089026(n+1)` -/
def P16574417274754352872.Spec : Prop :=
  ∀ n, P16574417274754352872.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P1011951103083297334

`A008683(n+1)*A100994(n+1)`
-/

namespace A140664.P1011951103083297334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A100994 (n + 1)

end

end A140664.P1011951103083297334

namespace A140664

/-- `A008683(n+1)*A100994(n+1)` -/
def P1011951103083297334.Spec : Prop :=
  ∀ n, P1011951103083297334.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P16248126619508037225

`A055615(n+1)/A048671(n+1)`
-/

namespace A140664.P16248126619508037225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ)

end

end A140664.P16248126619508037225

namespace A140664

/-- `A055615(n+1)/A048671(n+1)` -/
def P16248126619508037225.Spec : Prop :=
  ∀ n, P16248126619508037225.a n = (A140664 (n + 1) : ℚ)

end A140664

/-! ## A140664.P8888913744832234976

`A055615(n+1)/A144907(n+1)`
-/

namespace A140664.P8888913744832234976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A144907 (n + 1) : ℚ)

end

end A140664.P8888913744832234976

namespace A140664

/-- `A055615(n+1)/A144907(n+1)` -/
def P8888913744832234976.Spec : Prop :=
  ∀ n, P8888913744832234976.a n = (A140664 (n + 1) : ℚ)

end A140664

/-! ## A140664.P625736528782626702

`A080847(n+1)-(A089026(n+1)+1)`
-/

namespace A140664.P625736528782626702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - (A089026 (n + 1) + 1)

end

end A140664.P625736528782626702

namespace A140664

/-- `A080847(n+1)-(A089026(n+1)+1)` -/
def P625736528782626702.Spec : Prop :=
  ∀ n, P625736528782626702.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P14218141350369452955

`(A007423(n+1)-1)*A014963(n+1)`
-/

namespace A140664.P14218141350369452955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A014963 (n + 1)

end

end A140664.P14218141350369452955

namespace A140664

/-- `(A007423(n+1)-1)*A014963(n+1)` -/
def P14218141350369452955.Spec : Prop :=
  ∀ n, P14218141350369452955.a n = A140664 (n + 1)

theorem P14218141350369452955.correct : P14218141350369452955.Spec := by
  intro n
  simp only [A140664, Nat.add_sub_cancel, A140664.P14218141350369452955.a, A140664.P2641678759811754943.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P18254306604665478110.a, A014963, A014963.P5975177236000282614.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A080304, A080304.P9910366703239988167.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A055615, A055615.P8993130195977213181.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140664

/-! ## A140664.P1999665278115858823

`(A007423(n+1)-1)*A100994(n+1)`
-/

namespace A140664.P1999665278115858823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A100994 (n + 1)

end

end A140664.P1999665278115858823

namespace A140664

/-- `(A007423(n+1)-1)*A100994(n+1)` -/
def P1999665278115858823.Spec : Prop :=
  ∀ n, P1999665278115858823.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P13091269657468145950

`A008683(n+1)-n*A010051(n+1)`
-/

namespace A140664.P13091269657468145950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - (n : ℤ) * A010051 (n + 1)

end

end A140664.P13091269657468145950

namespace A140664

/-- `A008683(n+1)-n*A010051(n+1)` -/
def P13091269657468145950.Spec : Prop :=
  ∀ n, P13091269657468145950.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P9879388984430630984

`A008683(n+1)-C(n, A048671(n+1)²)`
-/

namespace A140664.P9879388984430630984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - (Nat.choose n (A048671 (n + 1) ^ 2).toNat : ℤ)

end

end A140664.P9879388984430630984

namespace A140664

/-- `A008683(n+1)-C(n, A048671(n+1)²)` -/
def P9879388984430630984.Spec : Prop :=
  ∀ n, P9879388984430630984.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P12078622044441399231

`A008683(n+1)-n*C(2, A000005(n+1))`
-/

namespace A140664.P12078622044441399231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - (n * Nat.choose 2 (A000005 (n + 1)).toNat : ℤ)

end

end A140664.P12078622044441399231

namespace A140664

/-- `A008683(n+1)-n*C(2, A000005(n+1))` -/
def P12078622044441399231.Spec : Prop :=
  ∀ n, P12078622044441399231.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P11645317125248940094

`A008683(n+1)-n*C(A000010(n+1), n)`
-/

namespace A140664.P11645317125248940094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - (n * Nat.choose (A000010 (n + 1)).toNat n : ℤ)

end

end A140664.P11645317125248940094

namespace A140664

/-- `A008683(n+1)-n*C(A000010(n+1), n)` -/
def P11645317125248940094.Spec : Prop :=
  ∀ n, P11645317125248940094.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P12119833748809558330

`A008683(n+1)-n*C(A006530(n+1), n+1)`
-/

namespace A140664.P12119833748809558330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - (n * Nat.choose (A006530 (n + 1)).toNat (n + 1) : ℤ)

end

end A140664.P12119833748809558330

namespace A140664

/-- `A008683(n+1)-n*C(A006530(n+1), n+1)` -/
def P12119833748809558330.Spec : Prop :=
  ∀ n, P12119833748809558330.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P15671253072095693538

`A008683(n+1)+n*A008683(A061142(n+1))`
-/

namespace A140664.P15671253072095693538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (n : ℤ) * A008683 (A061142 (n + 1)).toNat

end

end A140664.P15671253072095693538

namespace A140664

/-- `A008683(n+1)+n*A008683(A061142(n+1))` -/
def P15671253072095693538.Spec : Prop :=
  ∀ n, P15671253072095693538.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P12626096286928752971

`A008683(n+1)+n*A008683(A068794(n+1))`
-/

namespace A140664.P12626096286928752971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (n : ℤ) * A008683 (A068794 (n + 1)).toNat

end

end A140664.P12626096286928752971

namespace A140664

/-- `A008683(n+1)+n*A008683(A068794(n+1))` -/
def P12626096286928752971.Spec : Prop :=
  ∀ n, P12626096286928752971.a n = A140664 (n + 1)

end A140664

/-! ## A140664.P9014382038963324818

`A008683(n+1)+n*A008683(A130065(n+1))`
-/

namespace A140664.P9014382038963324818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (n : ℤ) * A008683 (A130065 (n + 1)).toNat

end

end A140664.P9014382038963324818

namespace A140664

/-- `A008683(n+1)+n*A008683(A130065(n+1))` -/
def P9014382038963324818.Spec : Prop :=
  ∀ n, P9014382038963324818.a n = A140664 (n + 1)

end A140664

/-!
# A140665: Self-erasure surviving numbers, second version. See A108652 for the definition.

The programs for A140665, there is no canonical definition to state claims against.
-/

/-! ## A140665.P18066930258630962424

`∩[A108652(n), A323048(n+1)]`
-/

namespace A140665.P18066930258630962424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140665.P18066930258630962424

/-!
# A140666: A triangle of coefficients of the difference of prime cyclotomic doubled polynomials: p(x,n)=(c(x,Prime[n])-c(x,2*Prime[n]))/x.

The programs for A140666, there is no canonical definition to state claims against.
-/

/-! ## A140666.P1700125352498887587

`Δ[A010054(A016116(n))+A007599(2*n+1)]`
-/

namespace A140666.P1700125352498887587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A016116 n).toNat + A007599 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140666.P1700125352498887587

/-! ## A140666.P12510921959602079301

`3-A214684(A139247(n+1))`
-/

namespace A140666.P12510921959602079301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A214684 (A139247 (n + 1)).toNat

end

end A140666.P12510921959602079301

/-! ## A140666.P17586952728498957832

`A267084(A070925(n+1))+A097807(3*(n+1))`
-/

namespace A140666.P17586952728498957832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (A070925 (n + 1)).toNat + A097807 (3 * (n + 1))

end

end A140666.P17586952728498957832

/-! ## A140666.P10974259638736867764

`A097807(3*(n+1))+A055396(A027423(n))`
-/

namespace A140666.P10974259638736867764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (3 * (n + 1)) + A055396 (A027423 n).toNat

end

end A140666.P10974259638736867764

/-! ## A140666.P4148665159437868277

`A267084(A332726(n))+A097807(3*(n+1))`
-/

namespace A140666.P4148665159437868277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (A332726 n).toNat + A097807 (3 * (n + 1))

end

end A140666.P4148665159437868277

/-!
# A140668: a(n) = n + A140664(n).

The programs for A140668, the canonical program `A140668.P2961368003393691795` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140668 has offset 1).

The definition of A140668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140664, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140668.P2961368003393691795

`n+1+A140664(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A140668

/-- `n+1+A140664(n+1)` -/
def P2961368003393691795.Spec : Prop :=
  ∀ n, P2961368003393691795.a n = A140668 (n + 1)

theorem P2961368003393691795.correct : P2961368003393691795.Spec := by
  intro n
  simp only [A140668, Nat.add_sub_cancel]

end A140668

/-! ## A140668.P10275164424755390674

`A005451(n+1)+A008683(n+1)`
-/

namespace A140668.P10275164424755390674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) + A008683 (n + 1)

end

end A140668.P10275164424755390674

namespace A140668

/-- `A005451(n+1)+A008683(n+1)` -/
def P10275164424755390674.Spec : Prop :=
  ∀ n, P10275164424755390674.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P5300800402446462618

`A076369(n+1)-A166260(n+1)`
-/

namespace A140668.P5300800402446462618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - A166260 (n + 1)

end

end A140668.P5300800402446462618

namespace A140668

/-- `A076369(n+1)-A166260(n+1)` -/
def P5300800402446462618.Spec : Prop :=
  ∀ n, P5300800402446462618.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P8065791334370207852

`A005171(n+1)*A076369(n+1)`
-/

namespace A140668.P8065791334370207852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A076369 (n + 1)

end

end A140668.P8065791334370207852

namespace A140668

/-- `A005171(n+1)*A076369(n+1)` -/
def P8065791334370207852.Spec : Prop :=
  ∀ n, P8065791334370207852.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P464931695271087579

`(1-A010051(n+1))*A076369(n+1)`
-/

namespace A140668.P464931695271087579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A076369 (n + 1)

end

end A140668.P464931695271087579

namespace A140668

/-- `(1-A010051(n+1))*A076369(n+1)` -/
def P464931695271087579.Spec : Prop :=
  ∀ n, P464931695271087579.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P13254324316102625879

`A080847(n+1)-A089026(n+1)+n`
-/

namespace A140668.P13254324316102625879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - A089026 (n + 1) + (n : ℤ)

end

end A140668.P13254324316102625879

namespace A140668

/-- `A080847(n+1)-A089026(n+1)+n` -/
def P13254324316102625879.Spec : Prop :=
  ∀ n, P13254324316102625879.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P13263356959786080611

`A007423(n+1)+n*A005171(n+1)`
-/

namespace A140668.P13263356959786080611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + (n : ℤ) * A005171 (n + 1)

end

end A140668.P13263356959786080611

namespace A140668

/-- `A007423(n+1)+n*A005171(n+1)` -/
def P13263356959786080611.Spec : Prop :=
  ∀ n, P13263356959786080611.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P6193281749259439110

`A008683(n+1)*A014963(n+1)+1+n`
-/

namespace A140668.P6193281749259439110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A014963 (n + 1) + 1 + (n : ℤ)

end

end A140668.P6193281749259439110

namespace A140668

/-- `A008683(n+1)*A014963(n+1)+1+n` -/
def P6193281749259439110.Spec : Prop :=
  ∀ n, P6193281749259439110.a n = A140668 (n + 1)

theorem P6193281749259439110.correct : P6193281749259439110.Spec := by
  intro n
  simp only [A140668, Nat.add_sub_cancel, A140668.P6193281749259439110.a, A140668.P2961368003393691795.a, A008683, A008683.P18254306604665478110.a, A014963, A014963.P5975177236000282614.a, A140664, A140664.P2641678759811754943.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A080304, A080304.P9910366703239988167.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A055615, A055615.P8993130195977213181.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140668

/-! ## A140668.P12241618601665132502

`A008683(n+1)-n*C(2, A000005(n+1))+1+n`
-/

namespace A140668.P12241618601665132502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - (n * Nat.choose 2 (A000005 (n + 1)).toNat : ℤ) + 1 + (n : ℤ)

end

end A140668.P12241618601665132502

namespace A140668

/-- `A008683(n+1)-n*C(2, A000005(n+1))+1+n` -/
def P12241618601665132502.Spec : Prop :=
  ∀ n, P12241618601665132502.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P8719436247967986424

`A140580(A048671(n+1))+A008683(n+1)`
-/

namespace A140668.P8719436247967986424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140580 (A048671 (n + 1)).toNat + A008683 (n + 1)

end

end A140668.P8719436247967986424

namespace A140668

/-- `A140580(A048671(n+1))+A008683(n+1)` -/
def P8719436247967986424.Spec : Prop :=
  ∀ n, P8719436247967986424.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P1962300425655417041

`xor(A076369(n+1), A166260(A166260(n+1)+1))`
-/

namespace A140668.P1962300425655417041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076369 (n + 1)) (A166260 (A166260 (n + 1) + 1).toNat)

end

end A140668.P1962300425655417041

namespace A140668

/-- `xor(A076369(n+1), A166260(A166260(n+1)+1))` -/
def P1962300425655417041.Spec : Prop :=
  ∀ n, P1962300425655417041.a n = A140668 (n + 1)

end A140668

/-! ## A140668.P11646218364538699056

`A007423(n+1)+n*A007423(A303809(n+1))`
-/

namespace A140668.P11646218364538699056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + (n : ℤ) * A007423 (A303809 (n + 1)).toNat

end

end A140668.P11646218364538699056

namespace A140668

/-- `A007423(n+1)+n*A007423(A303809(n+1))` -/
def P11646218364538699056.Spec : Prop :=
  ∀ n, P11646218364538699056.a n = A140668 (n + 1)

end A140668

/-!
# A140669: Numbers k such that (k+1)^(k+1) - k^k is prime.

The programs for A140669, there is no canonical definition to state claims against.
-/

/-! ## A140669.P11632860003290412875

`A072164(n+1)-1`
-/

namespace A140669.P11632860003290412875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072164 (n + 1) - 1

end

end A140669.P11632860003290412875

/-! ## A140669.P17346933198205153166

`A023443(A072164(n+1))`
-/

namespace A140669.P17346933198205153166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072164 (n + 1)).toNat

end

end A140669.P17346933198205153166

/-! ## A140669.P8369954877779633373

`record[A072164(A033930(n))-1]`
-/

namespace A140669.P8369954877779633373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072164 (A033930 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140669.P8369954877779633373

/-! ## A140669.P12582066840356093177

`record[A072164(A051340(n))-1]`
-/

namespace A140669.P12582066840356093177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072164 (A051340 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140669.P12582066840356093177

/-! ## A140669.P9518312512788049058

`record[A072164(A059126(n))-1]`
-/

namespace A140669.P9518312512788049058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072164 (A059126 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140669.P9518312512788049058

/-!
# A140670: a(n) = 1 if n is odd; otherwise, a(n) = 2^k - 1 where 2^k is the largest power of 2 that divides n.

The programs for A140670, the canonical program `A140670.P15032429316490350293` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140670 has offset 1).

The definition of A140670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140670.P9791966886537544970

`2*A160467(n+1)-1`
-/

namespace A140670.P9791966886537544970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160467 (n + 1) - 1

end

end A140670.P9791966886537544970

namespace A140670

/-- `2*A160467(n+1)-1` -/
def P9791966886537544970.Spec : Prop :=
  ∀ n, P9791966886537544970.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P15032429316490350293

`A006519(n+1)-A059841(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140670

/-- `A006519(n+1)-A059841(n+1)` -/
def P15032429316490350293.Spec : Prop :=
  ∀ n, P15032429316490350293.a n = A140670 (n + 1)

theorem P15032429316490350293.correct : P15032429316490350293.Spec := by
  intro n
  simp only [A140670, Nat.add_sub_cancel]

end A140670

/-! ## A140670.P14793124666056126479

`or(1, and(n, -(n+2)))`
-/

namespace A140670.P14793124666056126479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land (n : ℤ) (-(n + 2 : ℤ)))

end

end A140670.P14793124666056126479

namespace A140670

/-- `or(1, and(n, -(n+2)))` -/
def P14793124666056126479.Spec : Prop :=
  ∀ n, P14793124666056126479.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P3860429229185650101

`ceil(ratio[abs(xor(n, n-2))])`
-/

namespace A140670.P3860429229185650101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A140670.P3860429229185650101

namespace A140670

/-- `ceil(ratio[abs(xor(n, n-2))])` -/
def P3860429229185650101.Spec : Prop :=
  ∀ n, P3860429229185650101.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P7245193945400168463

`floor(cosh(log(xor(n, n+1))))`
-/

namespace A140670.P7245193945400168463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (Nat.xor n (n + 1) : ℝ))⌋

end

end A140670.P7245193945400168463

namespace A140670

/-- `floor(cosh(log(xor(n, n+1))))` -/
def P7245193945400168463.Spec : Prop :=
  ∀ n, P7245193945400168463.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P6270185332238558079

`xor(C(n, 3)+1, C(n, 3))`
-/

namespace A140670.P6270185332238558079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.choose n 3 + 1) (Nat.choose n 3)

end

end A140670.P6270185332238558079

namespace A140670

/-- `xor(C(n, 3)+1, C(n, 3))` -/
def P6270185332238558079.Spec : Prop :=
  ∀ n, (P6270185332238558079.a n : ℤ) = A140670 (n + 1)

end A140670

/-! ## A140670.P5708586296414409136

`or(1, n-and(n, n+1))`
-/

namespace A140670.P5708586296414409136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A140670.P5708586296414409136

namespace A140670

/-- `or(1, n-and(n, n+1))` -/
def P5708586296414409136.Spec : Prop :=
  ∀ n, P5708586296414409136.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P4328688324373031867

`or(n+1, xor(1, n))-n`
-/

namespace A140670.P4328688324373031867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (n + 1) (Nat.xor 1 n) : ℤ) - (n : ℤ)

end

end A140670.P4328688324373031867

namespace A140670

/-- `or(n+1, xor(1, n))-n` -/
def P4328688324373031867.Spec : Prop :=
  ∀ n, P4328688324373031867.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P5384215052954801985

`-or(n+1, -or(1, n))`
-/

namespace A140670.P5384215052954801985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n + 1 : ℤ) (-(Nat.lor 1 n : ℤ))

end

end A140670.P5384215052954801985

namespace A140670

/-- `-or(n+1, -or(1, n))` -/
def P5384215052954801985.Spec : Prop :=
  ∀ n, P5384215052954801985.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P8453164476258739229

`xor(n, and(n+1, xor(1, n)))`
-/

namespace A140670.P8453164476258739229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land (n + 1) (Nat.xor 1 n))

end

end A140670.P8453164476258739229

namespace A140670

/-- `xor(n, and(n+1, xor(1, n)))` -/
def P8453164476258739229.Spec : Prop :=
  ∀ n, (P8453164476258739229.a n : ℤ) = A140670 (n + 1)

end A140670

/-! ## A140670.P10519690557555134760

`abs(or(1, n-or(n, n+1)))`
-/

namespace A140670.P10519690557555134760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) - (Nat.lor n (n + 1) : ℤ))|

end

end A140670.P10519690557555134760

namespace A140670

/-- `abs(or(1, n-or(n, n+1)))` -/
def P10519690557555134760.Spec : Prop :=
  ∀ n, P10519690557555134760.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P11410816233675992144

`and(n, -(n+2))^and(1, n)`
-/

namespace A140670.P11410816233675992144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) ^ Nat.land 1 n

end

end A140670.P11410816233675992144

namespace A140670

/-- `and(n, -(n+2))^and(1, n)` -/
def P11410816233675992144.Spec : Prop :=
  ∀ n, P11410816233675992144.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P13324398758565037458

`or(1, or(n, n+1)-(n+1))`
-/

namespace A140670.P13324398758565037458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.lor n (n + 1) : ℤ) - (n + 1 : ℤ))

end

end A140670.P13324398758565037458

namespace A140670

/-- `or(1, or(n, n+1)-(n+1))` -/
def P13324398758565037458.Spec : Prop :=
  ∀ n, P13324398758565037458.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P10062270389916418851

`or(1, or(n, n+1)%(n+1))`
-/

namespace A140670.P10062270389916418851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor n (n + 1) % (n + 1))

end

end A140670.P10062270389916418851

namespace A140670

/-- `or(1, or(n, n+1)%(n+1))` -/
def P10062270389916418851.Spec : Prop :=
  ∀ n, (P10062270389916418851.a n : ℤ) = A140670 (n + 1)

end A140670

/-! ## A140670.P14928368869587004729

`or(1, xor(n+1, or(n, n+1)))`
-/

namespace A140670.P14928368869587004729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.xor (n + 1) (Nat.lor n (n + 1)))

end

end A140670.P14928368869587004729

namespace A140670

/-- `or(1, xor(n+1, or(n, n+1)))` -/
def P14928368869587004729.Spec : Prop :=
  ∀ n, (P14928368869587004729.a n : ℤ) = A140670 (n + 1)

end A140670

/-! ## A140670.P2751580048119871622

`C(n-and(n, n+1), and(1, n))`
-/

namespace A140670.P2751580048119871622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - (Nat.land n (n + 1) : ℤ)).toNat (Nat.land 1 n)

end

end A140670.P2751580048119871622

namespace A140670

/-- `C(n-and(n, n+1), and(1, n))` -/
def P2751580048119871622.Spec : Prop :=
  ∀ n, (P2751580048119871622.a n : ℤ) = A140670 (n + 1)

end A140670

/-! ## A140670.P3269873834511640561

`lcm(2, and(n+1, -(n+1)))-1`
-/

namespace A140670.P3269873834511640561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) : ℤ) - 1

end

end A140670.P3269873834511640561

namespace A140670

/-- `lcm(2, and(n+1, -(n+1)))-1` -/
def P3269873834511640561.Spec : Prop :=
  ∀ n, P3269873834511640561.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P14723042777528716000

`and(n+1, -(n+1))-n%2`
-/

namespace A140670.P14723042777528716000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) - ((n % 2 : ℕ) : ℤ)

end

end A140670.P14723042777528716000

namespace A140670

/-- `and(n+1, -(n+1))-n%2` -/
def P14723042777528716000.Spec : Prop :=
  ∀ n, P14723042777528716000.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P7203822162367375200

`and(1, n+1)+and(n, -(n+2))`
-/

namespace A140670.P7203822162367375200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) + Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A140670.P7203822162367375200

namespace A140670

/-- `and(1, n+1)+and(n, -(n+2))` -/
def P7203822162367375200.Spec : Prop :=
  ∀ n, P7203822162367375200.a n = A140670 (n + 1)

end A140670

/-! ## A140670.P17575229141371902149

`and(n, and(1, n+1)-(n+3))+1`
-/

namespace A140670.P17575229141371902149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land 1 (n + 1) : ℤ) - (n + 3 : ℤ)) + 1

end

end A140670.P17575229141371902149

namespace A140670

/-- `and(n, and(1, n+1)-(n+3))+1` -/
def P17575229141371902149.Spec : Prop :=
  ∀ n, P17575229141371902149.a n = A140670 (n + 1)

end A140670

/-!
# A140672: a(n) = n*(3*n + 13)/2.

The programs for A140672, the canonical program `A140672.P2570596255617575964` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140672 has offset 0).

The definition of A140672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+13)/2` (program `A140672.P11296223393495816278`, by `A140672.P11296223393495816278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140672.P11296223393495816278

`n*(3*n+13)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140672.P11296223393495816278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 13) : ℚ) / 2

end

end A140672.P11296223393495816278

namespace A140672

/-- `n*(3*n+13)/2` -/
def P11296223393495816278.Spec : Prop :=
  ∀ n, P11296223393495816278.a n = (A140672 n : ℚ)

theorem P11296223393495816278.correct : P11296223393495816278.Spec := by
  intro n
  induction n with
  | zero => simp [A140672, A140672.P11296223393495816278.a, A140672.P2570596255617575964.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140672, Nat.add_sub_cancel, A140672.P11296223393495816278.a, A140672.P2570596255617575964.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140672

/-! ## A140672.P2570596255617575964

`3*n+a(n-1)+5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140672

/-- `3*n+a(n-1)+5` -/
def P2570596255617575964.Spec : Prop :=
  ∀ n, (P2570596255617575964.a n : ℤ) = A140672 n

theorem P2570596255617575964.correct : P2570596255617575964.Spec := by
  intro n
  simp only [A140672]

end A140672

/-! ## A140672.P15531655384726858411

`Δ[(n+6)*C(n, 2)]`
-/

namespace A140672.P15531655384726858411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140672.P15531655384726858411

namespace A140672

/-- `Δ[(n+6)*C(n, 2)]` -/
def P15531655384726858411.Spec : Prop :=
  ∀ n, P15531655384726858411.a n = A140672 n

end A140672

/-! ## A140672.P4195211069338279315

`∑[a(n-1)+3]` with `a(0)=0, a(1)=8`
-/

namespace A140672.P4195211069338279315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140672.P4195211069338279315

namespace A140672

/-- `∑[a(n-1)+3]` -/
def P4195211069338279315.Spec : Prop :=
  ∀ n, (P4195211069338279315.a n : ℤ) = A140672 n

end A140672

/-! ## A140672.P6792073861353762506

`∑[ogf((8x-5x^2)/(1-2x+x^2))]`
-/

namespace A140672.P6792073861353762506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140672.P6792073861353762506

namespace A140672

/-- `∑[ogf((8x-5x^2)/(1-2x+x^2))]` -/
def P6792073861353762506.Spec : Prop :=
  ∀ n, P6792073861353762506.a n = A140672 n

end A140672

/-! ## A140672.P7495309794714080152

`ogf((8x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140672.P7495309794714080152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -5] [1, -3, 3, -1] n

end

end A140672.P7495309794714080152

namespace A140672

/-- `ogf((8x-5x^2)/(1-3x+3x^2-x^3))` -/
def P7495309794714080152.Spec : Prop :=
  ∀ n, P7495309794714080152.a n = A140672 n

end A140672

/-! ## A140672.P18300203853513273305

`5*n-∑[a(n-1)-3]` with `a(0)=0`
-/

namespace A140672.P18300203853513273305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140672.P18300203853513273305

namespace A140672

/-- `5*n-∑[a(n-1)-3]` -/
def P18300203853513273305.Spec : Prop :=
  ∀ n, P18300203853513273305.a n = A140672 n

end A140672

/-! ## A140672.P11329666810534969693

`abs(C(n, 2)-(n+3)*2*n)`
-/

namespace A140672.P11329666810534969693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) - ((n + 3) * (2 * n) : ℤ)|

end

end A140672.P11329666810534969693

namespace A140672

/-- `abs(C(n, 2)-(n+3)*2*n)` -/
def P11329666810534969693.Spec : Prop :=
  ∀ n, P11329666810534969693.a n = A140672 n

end A140672

/-! ## A140672.P7691095374892905999

`a(n-1)+Δ[(n+2)²]+n` with `a(0)=0`
-/

namespace A140672.P7691095374892905999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ))

end

end A140672.P7691095374892905999

namespace A140672

/-- `a(n-1)+Δ[(n+2)²]+n` -/
def P7691095374892905999.Spec : Prop :=
  ∀ n, P7691095374892905999.a n = A140672 n

end A140672

/-! ## A140672.P18234695209136444390

`A059845(n)+n`
-/

namespace A140672.P18234695209136444390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + (n : ℤ)

end

end A140672.P18234695209136444390

namespace A140672

/-- `A059845(n)+n` -/
def P18234695209136444390.Spec : Prop :=
  ∀ n, P18234695209136444390.a n = A140672 n

end A140672

/-! ## A140672.P4038679994049320319

`A140673(n)-n`
-/

namespace A140672.P4038679994049320319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n - (n : ℤ)

end

end A140672.P4038679994049320319

namespace A140672

/-- `A140673(n)-n` -/
def P4038679994049320319.Spec : Prop :=
  ∀ n, P4038679994049320319.a n = A140672 n

end A140672

/-! ## A140672.P16686246299010886008

`A056119(n)+n²`
-/

namespace A140672.P16686246299010886008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + (n ^ 2 : ℤ)

end

end A140672.P16686246299010886008

namespace A140672

/-- `A056119(n)+n²` -/
def P16686246299010886008.Spec : Prop :=
  ∀ n, P16686246299010886008.a n = A140672 n

end A140672

/-! ## A140672.P14708231605556242623

`A302906(n)-n²`
-/

namespace A140672.P14708231605556242623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n - (n ^ 2 : ℤ)

end

end A140672.P14708231605556242623

namespace A140672

/-- `A302906(n)-n²` -/
def P14708231605556242623.Spec : Prop :=
  ∀ n, P14708231605556242623.a n = A140672 n

end A140672

/-! ## A140672.P15197317277857507464

`A028560(n)+∑[n]`
-/

namespace A140672.P15197317277857507464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140672.P15197317277857507464

namespace A140672

/-- `A028560(n)+∑[n]` -/
def P15197317277857507464.Spec : Prop :=
  ∀ n, P15197317277857507464.a n = A140672 n

end A140672

/-! ## A140672.P16214977382743998294

`A285009(n+3)-9`
-/

namespace A140672.P16214977382743998294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285009 (n + 3) - 9

end

end A140672.P16214977382743998294

namespace A140672

/-- `A285009(n+3)-9` -/
def P16214977382743998294.Spec : Prop :=
  ∀ n, P16214977382743998294.a n = A140672 n

end A140672

/-! ## A140672.P226493187249909794

`A140091(n)+2*n`
-/

namespace A140672.P226493187249909794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n + (2 * n : ℤ)

end

end A140672.P226493187249909794

namespace A140672

/-- `A140091(n)+2*n` -/
def P226493187249909794.Spec : Prop :=
  ∀ n, P226493187249909794.a n = A140672 n

end A140672

/-! ## A140672.P12091323186957010869

`A140674(n)-2*n`
-/

namespace A140672.P12091323186957010869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n - (2 * n : ℤ)

end

end A140672.P12091323186957010869

namespace A140672

/-- `A140674(n)-2*n` -/
def P12091323186957010869.Spec : Prop :=
  ∀ n, P12091323186957010869.a n = A140672 n

end A140672

/-! ## A140672.P529482276716484908

`3*A055998(n)-n`
-/

namespace A140672.P529482276716484908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055998 n - (n : ℤ)

end

end A140672.P529482276716484908

namespace A140672

/-- `3*A055998(n)-n` -/
def P529482276716484908.Spec : Prop :=
  ∀ n, P529482276716484908.a n = A140672 n

end A140672

/-! ## A140672.P4548765394179188062

`A140675(n)-3*n`
-/

namespace A140672.P4548765394179188062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140675 n - (3 * n : ℤ)

end

end A140672.P4548765394179188062

namespace A140672

/-- `A140675(n)-3*n` -/
def P4548765394179188062.Spec : Prop :=
  ∀ n, P4548765394179188062.a n = A140672 n

end A140672

/-! ## A140672.P11216002574536707722

`5*n+A045943(n)`
-/

namespace A140672.P11216002574536707722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + A045943 n

end

end A140672.P11216002574536707722

namespace A140672

/-- `5*n+A045943(n)` -/
def P11216002574536707722.Spec : Prop :=
  ∀ n, P11216002574536707722.a n = A140672 n

end A140672

/-!
# A140673: a(n) = 3*n*(n + 5)/2.

The programs for A140673, the canonical program `A140673.P2699349939488236431` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140673 has offset 0).

The definition of A140673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+5)/2` (program `A140673.P12569814664775206067`, by `A140673.P12569814664775206067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140673.P12569814664775206067

`3*n*(n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140673.P12569814664775206067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n * (n + 5) : ℚ) / 2

end

end A140673.P12569814664775206067

namespace A140673

/-- `3*n*(n+5)/2` -/
def P12569814664775206067.Spec : Prop :=
  ∀ n, P12569814664775206067.a n = (A140673 n : ℚ)

theorem P12569814664775206067.correct : P12569814664775206067.Spec := by
  intro n
  induction n with
  | zero => simp [A140673, A140673.P12569814664775206067.a, A140673.P2699349939488236431.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140673, Nat.add_sub_cancel, A140673.P12569814664775206067.a, A140673.P2699349939488236431.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140673

/-! ## A140673.P2699349939488236431

`3*n+a(n-1)+6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140673

/-- `3*n+a(n-1)+6` -/
def P2699349939488236431.Spec : Prop :=
  ∀ n, (P2699349939488236431.a n : ℤ) = A140673 n

theorem P2699349939488236431.correct : P2699349939488236431.Spec := by
  intro n
  simp only [A140673]

end A140673

/-! ## A140673.P2801144280881838544

`A055998(n)*3`
-/

namespace A140673.P2801144280881838544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n * 3

end

end A140673.P2801144280881838544

namespace A140673

/-- `A055998(n)*3` -/
def P2801144280881838544.Spec : Prop :=
  ∀ n, P2801144280881838544.a n = A140673 n

end A140673

/-! ## A140673.P5504412299537998531

`3*C(n+3, 2)-9`
-/

namespace A140673.P5504412299537998531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 3) 2 : ℤ) - 9

end

end A140673.P5504412299537998531

namespace A140673

/-- `3*C(n+3, 2)-9` -/
def P5504412299537998531.Spec : Prop :=
  ∀ n, P5504412299537998531.a n = A140673 n

end A140673

/-! ## A140673.P1425858824149579755

`∑[a(n-1)+3]` with `a(0)=0, a(1)=9`
-/

namespace A140673.P1425858824149579755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140673.P1425858824149579755

namespace A140673

/-- `∑[a(n-1)+3]` -/
def P1425858824149579755.Spec : Prop :=
  ∀ n, (P1425858824149579755.a n : ℤ) = A140673 n

end A140673

/-! ## A140673.P2820538868484638806

`∑[ogf((9x-6x^2)/(1-2x+x^2))]`
-/

namespace A140673.P2820538868484638806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140673.P2820538868484638806

namespace A140673

/-- `∑[ogf((9x-6x^2)/(1-2x+x^2))]` -/
def P2820538868484638806.Spec : Prop :=
  ∀ n, P2820538868484638806.a n = A140673 n

end A140673

/-! ## A140673.P3139222977816056141

`ogf((9x-6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140673.P3139222977816056141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -6] [1, -3, 3, -1] n

end

end A140673.P3139222977816056141

namespace A140673

/-- `ogf((9x-6x^2)/(1-3x+3x^2-x^3))` -/
def P3139222977816056141.Spec : Prop :=
  ∀ n, P3139222977816056141.a n = A140673 n

end A140673

/-! ## A140673.P13412555633412215572

`lcm(3, 1-∑[n+2])-3`
-/

namespace A140673.P13412555633412215572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℤ) - 3

end

end A140673.P13412555633412215572

namespace A140673

/-- `lcm(3, 1-∑[n+2])-3` -/
def P13412555633412215572.Spec : Prop :=
  ∀ n, P13412555633412215572.a n = A140673 n

end A140673

/-! ## A140673.P13378940664104011456

`∑[3*(2%(n+2)+n)]`
-/

namespace A140673.P13378940664104011456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 % (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140673.P13378940664104011456

namespace A140673

/-- `∑[3*(2%(n+2)+n)]` -/
def P13378940664104011456.Spec : Prop :=
  ∀ n, (P13378940664104011456.a n : ℤ) = A140673 n

end A140673

/-! ## A140673.P18369377103887257132

`record[3*(n-5)*n/2]`
-/

namespace A140673.P18369377103887257132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((n : ℤ) - 5 : ℚ) * ((n : ℚ) / 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140673.P18369377103887257132

namespace A140673

/-- `record[3*(n-5)*n/2]` -/
def P18369377103887257132.Spec : Prop :=
  ∀ n, P18369377103887257132.a n = (A140673 n : ℚ)

end A140673

/-! ## A140673.P2757566936128646117

`6*n-∑[a(n-1)-3]` with `a(0)=0`
-/

namespace A140673.P2757566936128646117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140673.P2757566936128646117

namespace A140673

/-- `6*n-∑[a(n-1)-3]` -/
def P2757566936128646117.Spec : Prop :=
  ∀ n, P2757566936128646117.a n = A140673 n

end A140673

/-! ## A140673.P962530167012706403

`n+1+Δ[(n+2)²]+a(n-1)` with `a(0)=0`
-/

namespace A140673.P962530167012706403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1))

end

end A140673.P962530167012706403

namespace A140673

/-- `n+1+Δ[(n+2)²]+a(n-1)` -/
def P962530167012706403.Spec : Prop :=
  ∀ n, P962530167012706403.a n = A140673 n

end A140673

/-! ## A140673.P239801154639424096

`3/(n+1)^(-1)+a(n-1)+3` with `a(0)=0`
-/

namespace A140673.P239801154639424096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  3 / (n + 1 : ℚ) ^ (-1 : ℤ) + (a (n - 1) + 3)

end

end A140673.P239801154639424096

namespace A140673

/-- `3/(n+1)^(-1)+a(n-1)+3` -/
def P239801154639424096.Spec : Prop :=
  ∀ n, P239801154639424096.a n = (A140673 n : ℚ)

end A140673

/-! ## A140673.P15239723659189569943

`floor(a(n-1)+n+3+n)+n+3` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A140673.P15239723659189569943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 3 + n) + (n + 3)

end

end A140673.P15239723659189569943

namespace A140673

/-- `floor(a(n-1)+n+3+n)+n+3` -/
def P15239723659189569943.Spec : Prop :=
  ∀ n, (P15239723659189569943.a n : ℤ) = A140673 n

end A140673

/-! ## A140673.P17485523740735163630

`A140672(n)+n`
-/

namespace A140673.P17485523740735163630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + (n : ℤ)

end

end A140673.P17485523740735163630

namespace A140673

/-- `A140672(n)+n` -/
def P17485523740735163630.Spec : Prop :=
  ∀ n, P17485523740735163630.a n = A140673 n

end A140673

/-! ## A140673.P11675159099025636067

`A140674(n)-n`
-/

namespace A140673.P11675159099025636067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n - (n : ℤ)

end

end A140673.P11675159099025636067

namespace A140673

/-- `A140674(n)-n` -/
def P11675159099025636067.Spec : Prop :=
  ∀ n, P11675159099025636067.a n = A140673 n

end A140673

/-! ## A140673.P5255716518293242514

`A056121(n)+n²`
-/

namespace A140673.P5255716518293242514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 n + (n ^ 2 : ℤ)

end

end A140673.P5255716518293242514

namespace A140673

/-- `A056121(n)+n²` -/
def P5255716518293242514.Spec : Prop :=
  ∀ n, P5255716518293242514.a n = A140673 n

end A140673

/-! ## A140673.P15234971650318072037

`A028563(n)+∑[n]`
-/

namespace A140673.P15234971650318072037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140673.P15234971650318072037

namespace A140673

/-- `A028563(n)+∑[n]` -/
def P15234971650318072037.Spec : Prop :=
  ∀ n, P15234971650318072037.a n = A140673 n

end A140673

/-! ## A140673.P7221325851468250663

`3*(A046691(n)+1)`
-/

namespace A140673.P7221325851468250663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A046691 n + 1)

end

end A140673.P7221325851468250663

namespace A140673

/-- `3*(A046691(n)+1)` -/
def P7221325851468250663.Spec : Prop :=
  ∀ n, P7221325851468250663.a n = A140673 n

end A140673

/-! ## A140673.P18398328169443222050

`A297675(n+2)-3`
-/

namespace A140673.P18398328169443222050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297675 (n + 2) - 3

end

end A140673.P18398328169443222050

namespace A140673

/-- `A297675(n+2)-3` -/
def P18398328169443222050.Spec : Prop :=
  ∀ n, P18398328169443222050.a n = A140673 n

end A140673

/-!
# A140674: a(n) = n*(3*n + 17)/2.

The programs for A140674, the canonical program `A140674.P14003363985059273217` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140674 has offset 0).

The definition of A140674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+17)/2` (program `A140674.P12605985595557008555`, by `A140674.P12605985595557008555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140674.P12605985595557008555

`n*(3*n+17)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140674.P12605985595557008555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 17) : ℚ) / 2

end

end A140674.P12605985595557008555

namespace A140674

/-- `n*(3*n+17)/2` -/
def P12605985595557008555.Spec : Prop :=
  ∀ n, P12605985595557008555.a n = (A140674 n : ℚ)

theorem P12605985595557008555.correct : P12605985595557008555.Spec := by
  intro n
  induction n with
  | zero => simp [A140674, A140674.P12605985595557008555.a, A140674.P14003363985059273217.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140674, Nat.add_sub_cancel, A140674.P12605985595557008555.a, A140674.P14003363985059273217.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140674

/-! ## A140674.P14003363985059273217

`3*n+a(n-1)+7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140674

/-- `3*n+a(n-1)+7` -/
def P14003363985059273217.Spec : Prop :=
  ∀ n, (P14003363985059273217.a n : ℤ) = A140674 n

theorem P14003363985059273217.correct : P14003363985059273217.Spec := by
  intro n
  simp only [A140674]

end A140674

/-! ## A140674.P11326098492746168660

`7*n+3*A000217(n)`
-/

namespace A140674.P11326098492746168660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + 3 * A000217 n

end

end A140674.P11326098492746168660

namespace A140674

/-- `7*n+3*A000217(n)` -/
def P11326098492746168660.Spec : Prop :=
  ∀ n, P11326098492746168660.a n = A140674 n

end A140674

/-! ## A140674.P12165318284278164136

`Δ[(n+8)*C(n, 2)]`
-/

namespace A140674.P12165318284278164136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140674.P12165318284278164136

namespace A140674

/-- `Δ[(n+8)*C(n, 2)]` -/
def P12165318284278164136.Spec : Prop :=
  ∀ n, P12165318284278164136.a n = A140674 n

end A140674

/-! ## A140674.P2074691589249879192

`∑[a(n-1)+3]` with `a(0)=0, a(1)=10`
-/

namespace A140674.P2074691589249879192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140674.P2074691589249879192

namespace A140674

/-- `∑[a(n-1)+3]` -/
def P2074691589249879192.Spec : Prop :=
  ∀ n, (P2074691589249879192.a n : ℤ) = A140674 n

end A140674

/-! ## A140674.P8061909427968504153

`∑[ogf((10x-7x^2)/(1-2x+x^2))]`
-/

namespace A140674.P8061909427968504153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140674.P8061909427968504153

namespace A140674

/-- `∑[ogf((10x-7x^2)/(1-2x+x^2))]` -/
def P8061909427968504153.Spec : Prop :=
  ∀ n, P8061909427968504153.a n = A140674 n

end A140674

/-! ## A140674.P15137581574008768024

`ogf((10x-7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140674.P15137581574008768024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -7] [1, -3, 3, -1] n

end

end A140674.P15137581574008768024

namespace A140674

/-- `ogf((10x-7x^2)/(1-3x+3x^2-x^3))` -/
def P15137581574008768024.Spec : Prop :=
  ∀ n, P15137581574008768024.a n = A140674 n

end A140674

/-! ## A140674.P14348152574550778048

`a(n-1)+Δ[(n+3)²]+n` with `a(0)=0`
-/

namespace A140674.P14348152574550778048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ))

end

end A140674.P14348152574550778048

namespace A140674

/-- `a(n-1)+Δ[(n+3)²]+n` -/
def P14348152574550778048.Spec : Prop :=
  ∀ n, P14348152574550778048.a n = A140674 n

end A140674

/-! ## A140674.P5515755213832925686

`A140673(n)+n`
-/

namespace A140674.P5515755213832925686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + (n : ℤ)

end

end A140674.P5515755213832925686

namespace A140674

/-- `A140673(n)+n` -/
def P5515755213832925686.Spec : Prop :=
  ∀ n, P5515755213832925686.a n = A140674 n

end A140674

/-! ## A140674.P17268298127414707336

`A140675(n)-n`
-/

namespace A140674.P17268298127414707336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140675 n - (n : ℤ)

end

end A140674.P17268298127414707336

namespace A140674

/-- `A140675(n)-n` -/
def P17268298127414707336.Spec : Prop :=
  ∀ n, P17268298127414707336.a n = A140674 n

end A140674

/-! ## A140674.P10197862311676549898

`A056126(n)+n²`
-/

namespace A140674.P10197862311676549898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n + (n ^ 2 : ℤ)

end

end A140674.P10197862311676549898

namespace A140674

/-- `A056126(n)+n²` -/
def P10197862311676549898.Spec : Prop :=
  ∀ n, P10197862311676549898.a n = A140674 n

end A140674

/-! ## A140674.P12589240241387338458

`A028566(n)+∑[n]`
-/

namespace A140674.P12589240241387338458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140674.P12589240241387338458

namespace A140674

/-- `A028566(n)+∑[n]` -/
def P12589240241387338458.Spec : Prop :=
  ∀ n, P12589240241387338458.a n = A140674 n

end A140674

/-! ## A140674.P2485061700059944670

`A139576(n)-∑[n]`
-/

namespace A140674.P2485061700059944670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140674.P2485061700059944670

namespace A140674

/-- `A139576(n)-∑[n]` -/
def P2485061700059944670.Spec : Prop :=
  ∀ n, P2485061700059944670.a n = A140674 n

end A140674

/-! ## A140674.P13432436990511578797

`A140672(n)+2*n`
-/

namespace A140674.P13432436990511578797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + (2 * n : ℤ)

end

end A140674.P13432436990511578797

namespace A140674

/-- `A140672(n)+2*n` -/
def P13432436990511578797.Spec : Prop :=
  ∀ n, P13432436990511578797.a n = A140674 n

end A140674

/-! ## A140674.P14278401416957069613

`3*A055998(n)+n`
-/

namespace A140674.P14278401416957069613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055998 n + (n : ℤ)

end

end A140674.P14278401416957069613

namespace A140674

/-- `3*A055998(n)+n` -/
def P14278401416957069613.Spec : Prop :=
  ∀ n, P14278401416957069613.a n = A140674 n

end A140674

/-! ## A140674.P6204503401559118728

`A151542(n)-2*n`
-/

namespace A140674.P6204503401559118728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n - (2 * n : ℤ)

end

end A140674.P6204503401559118728

namespace A140674

/-- `A151542(n)-2*n` -/
def P6204503401559118728.Spec : Prop :=
  ∀ n, P6204503401559118728.a n = A140674 n

end A140674

/-! ## A140674.P3836441460198644518

`A140091(n)+4*n`
-/

namespace A140674.P3836441460198644518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n + (4 * n : ℤ)

end

end A140674.P3836441460198644518

namespace A140674

/-- `A140091(n)+4*n` -/
def P3836441460198644518.Spec : Prop :=
  ∀ n, P3836441460198644518.a n = A140674 n

end A140674

/-! ## A140674.P14178110848609519830

`A370238(n)-3*n`
-/

namespace A140674.P14178110848609519830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370238 n - (3 * n : ℤ)

end

end A140674.P14178110848609519830

namespace A140674

/-- `A370238(n)-3*n` -/
def P14178110848609519830.Spec : Prop :=
  ∀ n, P14178110848609519830.a n = A140674 n

end A140674

/-! ## A140674.P4607948885391146670

`A140090(n)+5*n`
-/

namespace A140674.P4607948885391146670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n + (5 * n : ℤ)

end

end A140674.P4607948885391146670

namespace A140674

/-- `A140090(n)+5*n` -/
def P4607948885391146670.Spec : Prop :=
  ∀ n, P4607948885391146670.a n = A140674 n

end A140674

/-! ## A140674.P3193093534312850695

`9*n+A000326(n)`
-/

namespace A140674.P3193093534312850695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) + A000326 n

end

end A140674.P3193093534312850695

namespace A140674

/-- `9*n+A000326(n)` -/
def P3193093534312850695.Spec : Prop :=
  ∀ n, P3193093534312850695.a n = A140674 n

end A140674

/-!
# A140675: a(n) = n*(3*n + 19)/2.

The programs for A140675, the canonical program `A140675.P7366285782023610294` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140675 has offset 0).

The definition of A140675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+19)/2` (program `A140675.P4040629154199818799`, by `A140675.P4040629154199818799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140675.P4040629154199818799

`n*(3*n+19)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140675.P4040629154199818799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (3 * n + 19) : ℚ) / 2

end

end A140675.P4040629154199818799

namespace A140675

/-- `n*(3*n+19)/2` -/
def P4040629154199818799.Spec : Prop :=
  ∀ n, P4040629154199818799.a n = (A140675 n : ℚ)

theorem P4040629154199818799.correct : P4040629154199818799.Spec := by
  intro n
  induction n with
  | zero => simp [A140675, A140675.P4040629154199818799.a, A140675.P7366285782023610294.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140675, Nat.add_sub_cancel, A140675.P4040629154199818799.a, A140675.P7366285782023610294.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140675

/-! ## A140675.P7366285782023610294

`3*n+a(n-1)+8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140675

/-- `3*n+a(n-1)+8` -/
def P7366285782023610294.Spec : Prop :=
  ∀ n, (P7366285782023610294.a n : ℤ) = A140675 n

theorem P7366285782023610294.correct : P7366285782023610294.Spec := by
  intro n
  simp only [A140675]

end A140675

/-! ## A140675.P7529641511406979502

`Δ[(n+9)*C(n, 2)]`
-/

namespace A140675.P7529641511406979502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 9) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140675.P7529641511406979502

namespace A140675

/-- `Δ[(n+9)*C(n, 2)]` -/
def P7529641511406979502.Spec : Prop :=
  ∀ n, P7529641511406979502.a n = A140675 n

end A140675

/-! ## A140675.P2233927636110098256

`∑[a(n-1)+3]` with `a(0)=0, a(1)=11`
-/

namespace A140675.P2233927636110098256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140675.P2233927636110098256

namespace A140675

/-- `∑[a(n-1)+3]` -/
def P2233927636110098256.Spec : Prop :=
  ∀ n, (P2233927636110098256.a n : ℤ) = A140675 n

end A140675

/-! ## A140675.P11839336223980776923

`n+1+Δ[(n+3)²]+a(n-1)` with `a(0)=0`
-/

namespace A140675.P11839336223980776923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1))

end

end A140675.P11839336223980776923

namespace A140675

/-- `n+1+Δ[(n+3)²]+a(n-1)` -/
def P11839336223980776923.Spec : Prop :=
  ∀ n, P11839336223980776923.a n = A140675 n

end A140675

/-! ## A140675.P15154324957292110282

`A140674(n)+n`
-/

namespace A140675.P15154324957292110282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n + (n : ℤ)

end

end A140675.P15154324957292110282

namespace A140675

/-- `A140674(n)+n` -/
def P15154324957292110282.Spec : Prop :=
  ∀ n, P15154324957292110282.a n = A140675 n

end A140675

/-! ## A140675.P14624127347517855147

`A151542(n)-n`
-/

namespace A140675.P14624127347517855147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n - (n : ℤ)

end

end A140675.P14624127347517855147

namespace A140675

/-- `A151542(n)-n` -/
def P14624127347517855147.Spec : Prop :=
  ∀ n, P14624127347517855147.a n = A140675 n

end A140675

/-! ## A140675.P4094703053106818684

`A028569(n)+∑[n]`
-/

namespace A140675.P4094703053106818684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140675.P4094703053106818684

namespace A140675

/-- `A028569(n)+∑[n]` -/
def P4094703053106818684.Spec : Prop :=
  ∀ n, P4094703053106818684.a n = A140675 n

end A140675

/-! ## A140675.P14131354850534558476

`A140673(n)+2*n`
-/

namespace A140675.P14131354850534558476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + (2 * n : ℤ)

end

end A140675.P14131354850534558476

namespace A140675

/-- `A140673(n)+2*n` -/
def P14131354850534558476.Spec : Prop :=
  ∀ n, P14131354850534558476.a n = A140675 n

end A140675

/-! ## A140675.P5171703556381643633

`A370238(n)-2*n`
-/

namespace A140675.P5171703556381643633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370238 n - (2 * n : ℤ)

end

end A140675.P5171703556381643633

namespace A140675

/-- `A370238(n)-2*n` -/
def P5171703556381643633.Spec : Prop :=
  ∀ n, P5171703556381643633.a n = A140675 n

end A140675

/-! ## A140675.P14499570345962575191

`3*A055999(n)-n`
-/

namespace A140675.P14499570345962575191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055999 n - (n : ℤ)

end

end A140675.P14499570345962575191

namespace A140675

/-- `3*A055999(n)-n` -/
def P14499570345962575191.Spec : Prop :=
  ∀ n, P14499570345962575191.a n = A140675 n

end A140675

/-! ## A140675.P14246813651533066236

`A059845(n)+4*n`
-/

namespace A140675.P14246813651533066236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + (4 * n : ℤ)

end

end A140675.P14246813651533066236

namespace A140675

/-- `A059845(n)+4*n` -/
def P14246813651533066236.Spec : Prop :=
  ∀ n, P14246813651533066236.a n = A140675 n

end A140675

/-! ## A140675.P14349270731728126065

`A140091(n)+5*n`
-/

namespace A140675.P14349270731728126065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n + (5 * n : ℤ)

end

end A140675.P14349270731728126065

namespace A140675

/-- `A140091(n)+5*n` -/
def P14349270731728126065.Spec : Prop :=
  ∀ n, P14349270731728126065.a n = A140675 n

end A140675

/-! ## A140675.P13665103512102691494

`8*n+A045943(n)`
-/

namespace A140675.P13665103512102691494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) + A045943 n

end

end A140675.P13665103512102691494

namespace A140675

/-- `8*n+A045943(n)` -/
def P13665103512102691494.Spec : Prop :=
  ∀ n, P13665103512102691494.a n = A140675 n

end A140675

/-! ## A140675.P14680642407629268881

`Δ[(n+9)*A161680(n)]`
-/

namespace A140675.P14680642407629268881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140675.P14680642407629268881

namespace A140675

/-- `Δ[(n+9)*A161680(n)]` -/
def P14680642407629268881.Spec : Prop :=
  ∀ n, P14680642407629268881.a n = A140675 n

end A140675

/-! ## A140675.P13678916864754799930

`A056126(n)+n²+n`
-/

namespace A140675.P13678916864754799930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056126 n + (n ^ 2 + n : ℤ)

end

end A140675.P13678916864754799930

namespace A140675

/-- `A056126(n)+n²+n` -/
def P13678916864754799930.Spec : Prop :=
  ∀ n, P13678916864754799930.a n = A140675 n

end A140675

/-! ## A140675.P16276574287277130006

`abs(∑[n]+n-A139577(n))`
-/

namespace A140675.P16276574287277130006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - A139577 n|

end

end A140675.P16276574287277130006

namespace A140675

/-- `abs(∑[n]+n-A139577(n))` -/
def P16276574287277130006.Spec : Prop :=
  ∀ n, P16276574287277130006.a n = A140675 n

end A140675

/-! ## A140675.P7759089756824799809

`A008592(n)+A000326(n)`
-/

namespace A140675.P7759089756824799809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A000326 n

end

end A140675.P7759089756824799809

namespace A140675

/-- `A008592(n)+A000326(n)` -/
def P7759089756824799809.Spec : Prop :=
  ∀ n, P7759089756824799809.a n = A140675 n

end A140675

/-! ## A140675.P12736533852086299822

`A008591(n)+A005449(n)`
-/

namespace A140675.P12736533852086299822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + A005449 n

end

end A140675.P12736533852086299822

namespace A140675

/-- `A008591(n)+A005449(n)` -/
def P12736533852086299822.Spec : Prop :=
  ∀ n, P12736533852086299822.a n = A140675 n

end A140675

/-!
# A140676: a(n) = n*(3*n + 4).

The programs for A140676, the canonical program `A140676.P3650156373276300927` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140676 has offset 0).

The definition of A140676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+4)` (program `A140676.P3650156373276300927`, by `A140676.P3650156373276300927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140676.P3650156373276300927

`n*(3*n+4)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140676

/-- `n*(3*n+4)` -/
def P3650156373276300927.Spec : Prop :=
  ∀ n, (P3650156373276300927.a n : ℤ) = A140676 n

theorem P3650156373276300927.correct : P3650156373276300927.Spec := by
  intro n
  simp only [A140676]

end A140676

/-! ## A140676.P8089687444280204591

`A000567(n+1)-1`
-/

namespace A140676.P8089687444280204591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) - 1

end

end A140676.P8089687444280204591

namespace A140676

/-- `A000567(n+1)-1` -/
def P8089687444280204591.Spec : Prop :=
  ∀ n, P8089687444280204591.a n = A140676 n

theorem P8089687444280204591.correct : P8089687444280204591.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P8089687444280204591.a, A140676.P3650156373276300927.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P8206352442792376620

`∑[a(n-1)+6]` with `a(0)=0, a(1)=7`
-/

namespace A140676.P8206352442792376620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140676.P8206352442792376620

namespace A140676

/-- `∑[a(n-1)+6]` -/
def P8206352442792376620.Spec : Prop :=
  ∀ n, (P8206352442792376620.a n : ℤ) = A140676 n

end A140676

/-! ## A140676.P6920439672252735371

`∑[ogf((7x-x^2)/(1-2x+x^2))]`
-/

namespace A140676.P6920439672252735371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140676.P6920439672252735371

namespace A140676

/-- `∑[ogf((7x-x^2)/(1-2x+x^2))]` -/
def P6920439672252735371.Spec : Prop :=
  ∀ n, P6920439672252735371.a n = A140676 n

end A140676

/-! ## A140676.P9723236166519323655

`ogf((7x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A140676.P9723236166519323655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -1] [1, -3, 3, -1] n

end

end A140676.P9723236166519323655

namespace A140676

/-- `ogf((7x-x^2)/(1-3x+3x^2-x^3))` -/
def P9723236166519323655.Spec : Prop :=
  ∀ n, P9723236166519323655.a n = A140676 n

end A140676

/-! ## A140676.P7742025083460235837

`lcm(n, Δ[n^3]+n-1)`
-/

namespace A140676.P7742025083460235837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1))

end

end A140676.P7742025083460235837

namespace A140676

/-- `lcm(n, Δ[n^3]+n-1)` -/
def P7742025083460235837.Spec : Prop :=
  ∀ n, (P7742025083460235837.a n : ℤ) = A140676 n

end A140676

/-! ## A140676.P4639703241475101984

`floor(n-∑[a(n-1)-6])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A140676.P4639703241475101984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140676.P4639703241475101984

namespace A140676

/-- `floor(n-∑[a(n-1)-6])` -/
def P4639703241475101984.Spec : Prop :=
  ∀ n, P4639703241475101984.a n = A140676 n

end A140676

/-! ## A140676.P7148430515320617328

`Δ[lcm(n+1, n²)-C(n+2, 2)]`
-/

namespace A140676.P7148430515320617328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140676.P7148430515320617328

namespace A140676

/-- `Δ[lcm(n+1, n²)-C(n+2, 2)]` -/
def P7148430515320617328.Spec : Prop :=
  ∀ n, P7148430515320617328.a n = A140676 n

end A140676

/-! ## A140676.P16405167318485341229

`A391993(n)/2`
-/

namespace A140676.P16405167318485341229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391993 n : ℚ) / 2

end

end A140676.P16405167318485341229

namespace A140676

/-- `A391993(n)/2` -/
def P16405167318485341229.Spec : Prop :=
  ∀ n, P16405167318485341229.a n = (A140676 n : ℚ)

end A140676

/-! ## A140676.P3637321326529481279

`n+A028896(n)`
-/

namespace A140676.P3637321326529481279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A028896 n

end

end A140676.P3637321326529481279

namespace A140676

/-- `n+A028896(n)` -/
def P3637321326529481279.Spec : Prop :=
  ∀ n, P3637321326529481279.a n = A140676 n

theorem P3637321326529481279.correct : P3637321326529481279.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P3637321326529481279.a, A140676.P3650156373276300927.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P12453898641210888262

`(A239325(n)-1)/2`
-/

namespace A140676.P12453898641210888262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239325 n - 1 : ℚ) / 2

end

end A140676.P12453898641210888262

namespace A140676

/-- `(A239325(n)-1)/2` -/
def P12453898641210888262.Spec : Prop :=
  ∀ n, P12453898641210888262.a n = (A140676 n : ℚ)

theorem P12453898641210888262.correct : P12453898641210888262.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P12453898641210888262.a, A140676.P3650156373276300927.a, A239325, A239325.P6773887657320007265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P10878384060477075589

`A004538(n)+1+n`
-/

namespace A140676.P10878384060477075589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n + 1 + (n : ℤ)

end

end A140676.P10878384060477075589

namespace A140676

/-- `A004538(n)+1+n` -/
def P10878384060477075589.Spec : Prop :=
  ∀ n, P10878384060477075589.a n = A140676 n

theorem P10878384060477075589.correct : P10878384060477075589.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P10878384060477075589.a, A140676.P3650156373276300927.a, A004538, A004538.P10298653278695798692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P9166260260522685348

`A003215(n)-1+n`
-/

namespace A140676.P9166260260522685348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - 1 + (n : ℤ)

end

end A140676.P9166260260522685348

namespace A140676

/-- `A003215(n)-1+n` -/
def P9166260260522685348.Spec : Prop :=
  ∀ n, P9166260260522685348.a n = A140676 n

theorem P9166260260522685348.correct : P9166260260522685348.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P9166260260522685348.a, A140676.P3650156373276300927.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P8849335484645296279

`A045944(n)+2*n`
-/

namespace A140676.P8849335484645296279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + (2 * n : ℤ)

end

end A140676.P8849335484645296279

namespace A140676

/-- `A045944(n)+2*n` -/
def P8849335484645296279.Spec : Prop :=
  ∀ n, P8849335484645296279.a n = A140676 n

theorem P8849335484645296279.correct : P8849335484645296279.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P8849335484645296279.a, A140676.P3650156373276300927.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P2300721826675908122

`A067725(n)-2*n`
-/

namespace A140676.P2300721826675908122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - (2 * n : ℤ)

end

end A140676.P2300721826675908122

namespace A140676

/-- `A067725(n)-2*n` -/
def P2300721826675908122.Spec : Prop :=
  ∀ n, P2300721826675908122.a n = A140676 n

theorem P2300721826675908122.correct : P2300721826675908122.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P2300721826675908122.a, A140676.P3650156373276300927.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P5295149431895432745

`6*A000217(n)+n`
-/

namespace A140676.P5295149431895432745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000217 n + (n : ℤ)

end

end A140676.P5295149431895432745

namespace A140676

/-- `6*A000217(n)+n` -/
def P5295149431895432745.Spec : Prop :=
  ∀ n, P5295149431895432745.a n = A140676 n

theorem P5295149431895432745.correct : P5295149431895432745.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P5295149431895432745.a, A140676.P3650156373276300927.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P8356791863275170762

`A008588(n)+A000567(n)`
-/

namespace A140676.P8356791863275170762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + A000567 n

end

end A140676.P8356791863275170762

namespace A140676

/-- `A008588(n)+A000567(n)` -/
def P8356791863275170762.Spec : Prop :=
  ∀ n, P8356791863275170762.a n = A140676 n

theorem P8356791863275170762.correct : P8356791863275170762.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P8356791863275170762.a, A140676.P3650156373276300927.a, A000567, A000567.P17850767079432249295.a, A008588, A008588.P12386450284809463491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P12566809349486794938

`A014106(n)+A002378(n)`
-/

namespace A140676.P12566809349486794938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n + A002378 n

end

end A140676.P12566809349486794938

namespace A140676

/-- `A014106(n)+A002378(n)` -/
def P12566809349486794938.Spec : Prop :=
  ∀ n, P12566809349486794938.a n = A140676 n

theorem P12566809349486794938.correct : P12566809349486794938.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P12566809349486794938.a, A140676.P3650156373276300927.a, A002378, A002378.P6342434596694243671.a, A014106, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P17595318839179623219

`A023443(n)+A003215(n)`
-/

namespace A140676.P17595318839179623219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A003215 n

end

end A140676.P17595318839179623219

namespace A140676

/-- `A023443(n)+A003215(n)` -/
def P17595318839179623219.Spec : Prop :=
  ∀ n, P17595318839179623219.a n = A140676 n

theorem P17595318839179623219.correct : P17595318839179623219.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P17595318839179623219.a, A140676.P3650156373276300927.a, A003215, A003215.P5851317289441473820.a, A023443, A023443.P2966051066474347068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-! ## A140676.P17290742919139122870

`A028557(n)+A000384(n)`
-/

namespace A140676.P17290742919139122870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n + A000384 n

end

end A140676.P17290742919139122870

namespace A140676

/-- `A028557(n)+A000384(n)` -/
def P17290742919139122870.Spec : Prop :=
  ∀ n, P17290742919139122870.a n = A140676 n

theorem P17290742919139122870.correct : P17290742919139122870.Spec := by
  intro n
  simp only [A140676, Nat.add_sub_cancel, A140676.P17290742919139122870.a, A140676.P3650156373276300927.a, A000384, A000384.P5392390561999168282.a, A028557, A028557.P14629390258788046737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140676

/-!
# A140677: a(n) = n*(3*n + 8).

The programs for A140677, the canonical program `A140677.P12918494061698475283` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140677 has offset 0).

The definition of A140677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+8)` (program `A140677.P12918494061698475283`, by `A140677.P12918494061698475283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140677.P12918494061698475283

`n*(3*n+8)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140677

/-- `n*(3*n+8)` -/
def P12918494061698475283.Spec : Prop :=
  ∀ n, (P12918494061698475283.a n : ℤ) = A140677 n

theorem P12918494061698475283.correct : P12918494061698475283.Spec := by
  intro n
  simp only [A140677]

end A140677

/-! ## A140677.P9295023251211137835

`∑[a(n-1)+6]` with `a(0)=0, a(1)=11`
-/

namespace A140677.P9295023251211137835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140677.P9295023251211137835

namespace A140677

/-- `∑[a(n-1)+6]` -/
def P9295023251211137835.Spec : Prop :=
  ∀ n, (P9295023251211137835.a n : ℤ) = A140677 n

end A140677

/-! ## A140677.P16475271890419493412

`record[3*n*(n-3)]-n`
-/

namespace A140677.P16475271890419493412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A140677.P16475271890419493412

namespace A140677

/-- `record[3*n*(n-3)]-n` -/
def P16475271890419493412.Spec : Prop :=
  ∀ n, P16475271890419493412.a n = A140677 n

end A140677

/-! ## A140677.P1015086863193594444

`∑[ogf((5+x)/(1-2x+x^2))]-5`
-/

namespace A140677.P1015086863193594444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A140677.P1015086863193594444

namespace A140677

/-- `∑[ogf((5+x)/(1-2x+x^2))]-5` -/
def P1015086863193594444.Spec : Prop :=
  ∀ n, P1015086863193594444.a n = A140677 n

end A140677

/-! ## A140677.P14114349962333019273

`∑[or(4, 8*n)]-4-n²`
-/

namespace A140677.P14114349962333019273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4 - (n ^ 2 : ℤ)

end

end A140677.P14114349962333019273

namespace A140677

/-- `∑[or(4, 8*n)]-4-n²` -/
def P14114349962333019273.Spec : Prop :=
  ∀ n, P14114349962333019273.a n = A140677 n

end A140677

/-! ## A140677.P13256146898429531631

`5*n-∑[a(n-1)-6]` with `a(0)=0`
-/

namespace A140677.P13256146898429531631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140677.P13256146898429531631

namespace A140677

/-- `5*n-∑[a(n-1)-6]` -/
def P13256146898429531631.Spec : Prop :=
  ∀ n, P13256146898429531631.a n = A140677 n

end A140677

/-! ## A140677.P198192381790722553

`lcm(3, (n+1)²+n)-(n+3)`
-/

namespace A140677.P198192381790722553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 ((n + 1) ^ 2 + n) : ℤ) - (n + 3 : ℤ)

end

end A140677.P198192381790722553

namespace A140677

/-- `lcm(3, (n+1)²+n)-(n+3)` -/
def P198192381790722553.Spec : Prop :=
  ∀ n, P198192381790722553.a n = A140677 n

end A140677

/-! ## A140677.P13237484437622785546

`a(n-1)-Δ[(1-n)²-(2*n)²]` with `a(0)=0`
-/

namespace A140677.P13237484437622785546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A140677.P13237484437622785546

namespace A140677

/-- `a(n-1)-Δ[(1-n)²-(2*n)²]` -/
def P13237484437622785546.Spec : Prop :=
  ∀ n, P13237484437622785546.a n = A140677 n

theorem P13237484437622785546.correct : P13237484437622785546.Spec := by
  intro n
  induction n with
  | zero => simp [A140677, A140677.P13237484437622785546.f1, A140677.P13237484437622785546.a, A140677.P12918494061698475283.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140677, Nat.add_sub_cancel, A140677.P13237484437622785546.f1, A140677.P13237484437622785546.a, A140677.P12918494061698475283.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140677

/-! ## A140677.P4581338033317760991

`A277978(n)-n`
-/

namespace A140677.P4581338033317760991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n - (n : ℤ)

end

end A140677.P4581338033317760991

namespace A140677

/-- `A277978(n)-n` -/
def P4581338033317760991.Spec : Prop :=
  ∀ n, P4581338033317760991.a n = A140677 n

theorem P4581338033317760991.correct : P4581338033317760991.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P4581338033317760991.a, A140677.P12918494061698475283.a, A277978, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P18068672788909171137

`∑[A016969(n)]-5`
-/

namespace A140677.P18068672788909171137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A140677.P18068672788909171137

namespace A140677

/-- `∑[A016969(n)]-5` -/
def P18068672788909171137.Spec : Prop :=
  ∀ n, P18068672788909171137.a n = A140677 n

end A140677

/-! ## A140677.P166370556118321610

`A067725(n)+2*n`
-/

namespace A140677.P166370556118321610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + (2 * n : ℤ)

end

end A140677.P166370556118321610

namespace A140677

/-- `A067725(n)+2*n` -/
def P166370556118321610.Spec : Prop :=
  ∀ n, P166370556118321610.a n = A140677 n

theorem P166370556118321610.correct : P166370556118321610.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P166370556118321610.a, A140677.P12918494061698475283.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P13994763503306715015

`2*A140090(n)+n`
-/

namespace A140677.P13994763503306715015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140090 n + (n : ℤ)

end

end A140677.P13994763503306715015

namespace A140677

/-- `2*A140090(n)+n` -/
def P13994763503306715015.Spec : Prop :=
  ∀ n, P13994763503306715015.a n = A140677 n

end A140677

/-! ## A140677.P13431799896826773366

`2*A140091(n)-n`
-/

namespace A140677.P13431799896826773366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140091 n - (n : ℤ)

end

end A140677.P13431799896826773366

namespace A140677

/-- `2*A140091(n)-n` -/
def P13431799896826773366.Spec : Prop :=
  ∀ n, P13431799896826773366.a n = A140677 n

end A140677

/-! ## A140677.P12734284864044124300

`A140678(n)-2*n`
-/

namespace A140677.P12734284864044124300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n - (2 * n : ℤ)

end

end A140677.P12734284864044124300

namespace A140677

/-- `A140678(n)-2*n` -/
def P12734284864044124300.Spec : Prop :=
  ∀ n, P12734284864044124300.a n = A140677 n

theorem P12734284864044124300.correct : P12734284864044124300.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P12734284864044124300.a, A140677.P12918494061698475283.a, A140678, A140678.P13318772034406866523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P9817479716972451373

`3*A028552(n)-n`
-/

namespace A140677.P9817479716972451373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028552 n - (n : ℤ)

end

end A140677.P9817479716972451373

namespace A140677

/-- `3*A028552(n)-n` -/
def P9817479716972451373.Spec : Prop :=
  ∀ n, P9817479716972451373.a n = A140677 n

theorem P9817479716972451373.correct : P9817479716972451373.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P9817479716972451373.a, A140677.P12918494061698475283.a, A028552, A028552.P13982725828206412774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P6282305262052209034

`A140676(n)+4*n`
-/

namespace A140677.P6282305262052209034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n + (4 * n : ℤ)

end

end A140677.P6282305262052209034

namespace A140677

/-- `A140676(n)+4*n` -/
def P6282305262052209034.Spec : Prop :=
  ∀ n, P6282305262052209034.a n = A140677 n

theorem P6282305262052209034.correct : P6282305262052209034.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P6282305262052209034.a, A140677.P12918494061698475283.a, A140676, A140676.P3650156373276300927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P1035295496102202542

`5*n+A028896(n)`
-/

namespace A140677.P1035295496102202542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + A028896 n

end

end A140677.P1035295496102202542

namespace A140677

/-- `5*n+A028896(n)` -/
def P1035295496102202542.Spec : Prop :=
  ∀ n, P1035295496102202542.a n = A140677 n

theorem P1035295496102202542.correct : P1035295496102202542.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P1035295496102202542.a, A140677.P12918494061698475283.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P1914513108476287210

`A000567(n)+10*n`
-/

namespace A140677.P1914513108476287210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + (10 * n : ℤ)

end

end A140677.P1914513108476287210

namespace A140677

/-- `A000567(n)+10*n` -/
def P1914513108476287210.Spec : Prop :=
  ∀ n, P1914513108476287210.a n = A140677 n

theorem P1914513108476287210.correct : P1914513108476287210.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P1914513108476287210.a, A140677.P12918494061698475283.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P17367668108534250867

`n*A112414(n)+n`
-/

namespace A140677.P17367668108534250867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112414 n + (n : ℤ)

end

end A140677.P17367668108534250867

namespace A140677

/-- `n*A112414(n)+n` -/
def P17367668108534250867.Spec : Prop :=
  ∀ n, P17367668108534250867.a n = A140677 n

theorem P17367668108534250867.correct : P17367668108534250867.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P17367668108534250867.a, A140677.P12918494061698475283.a, A112414, A112414.P1084450287602083744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-! ## A140677.P8001414140410697432

`A082109(n)-(n²+1)`
-/

namespace A140677.P8001414140410697432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n - (n ^ 2 + 1 : ℤ)

end

end A140677.P8001414140410697432

namespace A140677

/-- `A082109(n)-(n²+1)` -/
def P8001414140410697432.Spec : Prop :=
  ∀ n, P8001414140410697432.a n = A140677 n

theorem P8001414140410697432.correct : P8001414140410697432.Spec := by
  intro n
  simp only [A140677, Nat.add_sub_cancel, A140677.P8001414140410697432.a, A140677.P12918494061698475283.a, A082109, A082109.P15494663758169868970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140677

/-!
# A140678: a(n) = n*(3*n + 10).

The programs for A140678, the canonical program `A140678.P13318772034406866523` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140678 has offset 0).

The definition of A140678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+10)` (program `A140678.P13318772034406866523`, by `A140678.P13318772034406866523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140678.P13318772034406866523

`n*(3*n+10)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140678

/-- `n*(3*n+10)` -/
def P13318772034406866523.Spec : Prop :=
  ∀ n, (P13318772034406866523.a n : ℤ) = A140678 n

theorem P13318772034406866523.correct : P13318772034406866523.Spec := by
  intro n
  simp only [A140678]

end A140678

/-! ## A140678.P9247154103836364573

`∑[a(n-1)+6]` with `a(0)=0, a(1)=13`
-/

namespace A140678.P9247154103836364573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140678.P9247154103836364573

namespace A140678

/-- `∑[a(n-1)+6]` -/
def P9247154103836364573.Spec : Prop :=
  ∀ n, (P9247154103836364573.a n : ℤ) = A140678 n

end A140678

/-! ## A140678.P17441499523948263479

`7*n-∑[a(n-1)-6]` with `a(0)=0`
-/

namespace A140678.P17441499523948263479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140678.P17441499523948263479

namespace A140678

/-- `7*n-∑[a(n-1)-6]` -/
def P17441499523948263479.Spec : Prop :=
  ∀ n, P17441499523948263479.a n = A140678 n

end A140678

/-! ## A140678.P16001385627393477256

`∑[ogf((1+10x-5x^2)/(1-2x+x^2))]-1+n`
-/

namespace A140678.P16001385627393477256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)

end

end A140678.P16001385627393477256

namespace A140678

/-- `∑[ogf((1+10x-5x^2)/(1-2x+x^2))]-1+n` -/
def P16001385627393477256.Spec : Prop :=
  ∀ n, P16001385627393477256.a n = A140678 n

end A140678

/-! ## A140678.P557314915257435293

`n-(1-∑[ogf((1+10x-5x^2)/(1-2x+x^2))])`
-/

namespace A140678.P557314915257435293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140678.P557314915257435293

namespace A140678

/-- `n-(1-∑[ogf((1+10x-5x^2)/(1-2x+x^2))])` -/
def P557314915257435293.Spec : Prop :=
  ∀ n, P557314915257435293.a n = A140678 n

end A140678

/-! ## A140678.P14717458959458807946

`lcm(3, n+3-(n+2)²)+n-3`
-/

namespace A140678.P14717458959458807946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 ((n + 3 : ℤ) - ((n + 2) ^ 2 : ℤ)) : ℤ) + ((n : ℤ) - 3)

end

end A140678.P14717458959458807946

namespace A140678

/-- `lcm(3, n+3-(n+2)²)+n-3` -/
def P14717458959458807946.Spec : Prop :=
  ∀ n, P14717458959458807946.a n = A140678 n

end A140678

/-! ## A140678.P14401581106607456395

`A277978(n)+n`
-/

namespace A140678.P14401581106607456395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + (n : ℤ)

end

end A140678.P14401581106607456395

namespace A140678

/-- `A277978(n)+n` -/
def P14401581106607456395.Spec : Prop :=
  ∀ n, P14401581106607456395.a n = A140678 n

theorem P14401581106607456395.correct : P14401581106607456395.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P14401581106607456395.a, A140678.P13318772034406866523.a, A277978, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P10851675716561617399

`2*A140091(n)+n`
-/

namespace A140678.P10851675716561617399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140091 n + (n : ℤ)

end

end A140678.P10851675716561617399

namespace A140678

/-- `2*A140091(n)+n` -/
def P10851675716561617399.Spec : Prop :=
  ∀ n, P10851675716561617399.a n = A140678 n

end A140678

/-! ## A140678.P9818565049292271283

`A140677(n)+2*n`
-/

namespace A140678.P9818565049292271283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n + (2 * n : ℤ)

end

end A140678.P9818565049292271283

namespace A140678

/-- `A140677(n)+2*n` -/
def P9818565049292271283.Spec : Prop :=
  ∀ n, P9818565049292271283.a n = A140678 n

theorem P9818565049292271283.correct : P9818565049292271283.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P9818565049292271283.a, A140678.P13318772034406866523.a, A140677, A140677.P12918494061698475283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P11410241084147357866

`3*A028552(n)+n`
-/

namespace A140678.P11410241084147357866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028552 n + (n : ℤ)

end

end A140678.P11410241084147357866

namespace A140678

/-- `3*A028552(n)+n` -/
def P11410241084147357866.Spec : Prop :=
  ∀ n, P11410241084147357866.a n = A140678 n

theorem P11410241084147357866.correct : P11410241084147357866.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P11410241084147357866.a, A140678.P13318772034406866523.a, A028552, A028552.P13982725828206412774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P11856968723597508548

`2*A059845(n)-n`
-/

namespace A140678.P11856968723597508548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059845 n - (n : ℤ)

end

end A140678.P11856968723597508548

namespace A140678

/-- `2*A059845(n)-n` -/
def P11856968723597508548.Spec : Prop :=
  ∀ n, P11856968723597508548.a n = A140678 n

end A140678

/-! ## A140678.P13559116532629362385

`A067725(n)+4*n`
-/

namespace A140678.P13559116532629362385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + (4 * n : ℤ)

end

end A140678.P13559116532629362385

namespace A140678

/-- `A067725(n)+4*n` -/
def P13559116532629362385.Spec : Prop :=
  ∀ n, P13559116532629362385.a n = A140678 n

theorem P13559116532629362385.correct : P13559116532629362385.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P13559116532629362385.a, A140678.P13318772034406866523.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P4222076208596200534

`A140679(n)-4*n`
-/

namespace A140678.P4222076208596200534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n - (4 * n : ℤ)

end

end A140678.P4222076208596200534

namespace A140678

/-- `A140679(n)-4*n` -/
def P4222076208596200534.Spec : Prop :=
  ∀ n, P4222076208596200534.a n = A140678 n

theorem P4222076208596200534.correct : P4222076208596200534.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P4222076208596200534.a, A140678.P13318772034406866523.a, A140679, A140679.P16758500501928630565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P1796478254491652500

`n^3-A126935(n)`
-/

namespace A140678.P1796478254491652500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A126935 n

end

end A140678.P1796478254491652500

namespace A140678

/-- `n^3-A126935(n)` -/
def P1796478254491652500.Spec : Prop :=
  ∀ n, P1796478254491652500.a n = A140678 n

theorem P1796478254491652500.correct : P1796478254491652500.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P1796478254491652500.a, A140678.P13318772034406866523.a, A126935, A126935.P13333738668432150418.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P4720685664548172792

`A082112(n)-(n²+1)`
-/

namespace A140678.P4720685664548172792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082112 n - (n ^ 2 + 1 : ℤ)

end

end A140678.P4720685664548172792

namespace A140678

/-- `A082112(n)-(n²+1)` -/
def P4720685664548172792.Spec : Prop :=
  ∀ n, P4720685664548172792.a n = A140678 n

theorem P4720685664548172792.correct : P4720685664548172792.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P4720685664548172792.a, A140678.P13318772034406866523.a, A082112, A082112.P18049472820534468049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P3018314042097079742

`A082109(n)-(1-n)²`
-/

namespace A140678.P3018314042097079742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n - (1 - (n : ℤ)) ^ 2

end

end A140678.P3018314042097079742

namespace A140678

/-- `A082109(n)-(1-n)²` -/
def P3018314042097079742.Spec : Prop :=
  ∀ n, P3018314042097079742.a n = A140678 n

theorem P3018314042097079742.correct : P3018314042097079742.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P3018314042097079742.a, A140678.P13318772034406866523.a, A082109, A082109.P15494663758169868970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P11276727331614251185

`2*A033537(n)-n²`
-/

namespace A140678.P11276727331614251185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033537 n - (n ^ 2 : ℤ)

end

end A140678.P11276727331614251185

namespace A140678

/-- `2*A033537(n)-n²` -/
def P11276727331614251185.Spec : Prop :=
  ∀ n, P11276727331614251185.a n = A140678 n

theorem P11276727331614251185.correct : P11276727331614251185.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P11276727331614251185.a, A140678.P13318772034406866523.a, A033537, A033537.P12257875096179782365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P842656336631224421

`n²+A139576(n)+n`
-/

namespace A140678.P842656336631224421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139576 n + (n : ℤ))

end

end A140678.P842656336631224421

namespace A140678

/-- `n²+A139576(n)+n` -/
def P842656336631224421.Spec : Prop :=
  ∀ n, P842656336631224421.a n = A140678 n

theorem P842656336631224421.correct : P842656336631224421.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P842656336631224421.a, A140678.P13318772034406866523.a, A139576, A139576.P8586854319888252032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P11993944486088481069

`n²+A139577(n)-n`
-/

namespace A140678.P11993944486088481069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139577 n - (n : ℤ))

end

end A140678.P11993944486088481069

namespace A140678

/-- `n²+A139577(n)-n` -/
def P11993944486088481069.Spec : Prop :=
  ∀ n, P11993944486088481069.a n = A140678 n

theorem P11993944486088481069.correct : P11993944486088481069.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P11993944486088481069.a, A140678.P13318772034406866523.a, A139577, A139577.P2586318961733514048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-! ## A140678.P720871842319470038

`A166143(n+1)-1+n`
-/

namespace A140678.P720871842319470038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 1) - 1 + (n : ℤ)

end

end A140678.P720871842319470038

namespace A140678

/-- `A166143(n+1)-1+n` -/
def P720871842319470038.Spec : Prop :=
  ∀ n, P720871842319470038.a n = A140678 n

theorem P720871842319470038.correct : P720871842319470038.Spec := by
  intro n
  simp only [A140678, Nat.add_sub_cancel, A140678.P720871842319470038.a, A140678.P13318772034406866523.a, A166143, A166143.P7390283485156560154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140678

/-!
# A140679: a(n) = n*(3*n+14).

The programs for A140679, the canonical program `A140679.P16758500501928630565` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140679 has offset 0).

The definition of A140679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+14)` (program `A140679.P16758500501928630565`, by `A140679.P16758500501928630565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140679.P16758500501928630565

`n*(3*n+14)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140679

/-- `n*(3*n+14)` -/
def P16758500501928630565.Spec : Prop :=
  ∀ n, (P16758500501928630565.a n : ℤ) = A140679 n

theorem P16758500501928630565.correct : P16758500501928630565.Spec := by
  intro n
  simp only [A140679]

end A140679

/-! ## A140679.P5551881022455640516

`∑[a(n-1)+6]` with `a(0)=0, a(1)=17`
-/

namespace A140679.P5551881022455640516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 17] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140679.P5551881022455640516

namespace A140679

/-- `∑[a(n-1)+6]` -/
def P5551881022455640516.Spec : Prop :=
  ∀ n, (P5551881022455640516.a n : ℤ) = A140679 n

end A140679

/-! ## A140679.P13643896709419541793

`3*∑[ogf((6x-4x^2)/(1-2x+x^2))]-n`
-/

namespace A140679.P13643896709419541793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A140679.P13643896709419541793

namespace A140679

/-- `3*∑[ogf((6x-4x^2)/(1-2x+x^2))]-n` -/
def P13643896709419541793.Spec : Prop :=
  ∀ n, P13643896709419541793.a n = A140679 n

end A140679

/-! ## A140679.P15456849509049559415

`2*A140672(n)+n`
-/

namespace A140679.P15456849509049559415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140672 n + (n : ℤ)

end

end A140679.P15456849509049559415

namespace A140679

/-- `2*A140672(n)+n` -/
def P15456849509049559415.Spec : Prop :=
  ∀ n, P15456849509049559415.a n = A140679 n

end A140679

/-! ## A140679.P7330478740559703241

`2*A140673(n)-n`
-/

namespace A140679.P7330478740559703241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140673 n - (n : ℤ)

end

end A140679.P7330478740559703241

namespace A140679

/-- `2*A140673(n)-n` -/
def P7330478740559703241.Spec : Prop :=
  ∀ n, P7330478740559703241.a n = A140679 n

end A140679

/-! ## A140679.P9439781856675295210

`A140680(n)-2*n`
-/

namespace A140679.P9439781856675295210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140680 n - (2 * n : ℤ)

end

end A140679.P9439781856675295210

namespace A140679

/-- `A140680(n)-2*n` -/
def P9439781856675295210.Spec : Prop :=
  ∀ n, P9439781856675295210.a n = A140679 n

theorem P9439781856675295210.correct : P9439781856675295210.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P9439781856675295210.a, A140679.P16758500501928630565.a, A140680, A140680.P11223240500650357628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P8691696220659729150

`3*A028557(n)-n`
-/

namespace A140679.P8691696220659729150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028557 n - (n : ℤ)

end

end A140679.P8691696220659729150

namespace A140679

/-- `3*A028557(n)-n` -/
def P8691696220659729150.Spec : Prop :=
  ∀ n, P8691696220659729150.a n = A140679 n

theorem P8691696220659729150.correct : P8691696220659729150.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P8691696220659729150.a, A140679.P16758500501928630565.a, A028557, A028557.P14629390258788046737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P16739648310202779663

`A140678(n)+4*n`
-/

namespace A140679.P16739648310202779663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n + (4 * n : ℤ)

end

end A140679.P16739648310202779663

namespace A140679

/-- `A140678(n)+4*n` -/
def P16739648310202779663.Spec : Prop :=
  ∀ n, P16739648310202779663.a n = A140679 n

theorem P16739648310202779663.correct : P16739648310202779663.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P16739648310202779663.a, A140679.P16758500501928630565.a, A140678, A140678.P13318772034406866523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P8479738346255956121

`A140681(n)-4*n`
-/

namespace A140679.P8479738346255956121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 n - (4 * n : ℤ)

end

end A140679.P8479738346255956121

namespace A140679

/-- `A140681(n)-4*n` -/
def P8479738346255956121.Spec : Prop :=
  ∀ n, P8479738346255956121.a n = A140679 n

theorem P8479738346255956121.correct : P8479738346255956121.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P8479738346255956121.a, A140679.P16758500501928630565.a, A140681, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P4884598050872361650

`A277978(n)+5*n`
-/

namespace A140679.P4884598050872361650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + (5 * n : ℤ)

end

end A140679.P4884598050872361650

namespace A140679

/-- `A277978(n)+5*n` -/
def P4884598050872361650.Spec : Prop :=
  ∀ n, P4884598050872361650.a n = A140679 n

theorem P4884598050872361650.correct : P4884598050872361650.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P4884598050872361650.a, A140679.P16758500501928630565.a, A277978, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P17607769302957310036

`A217775(n)-(n+26)`
-/

namespace A140679.P17607769302957310036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217775 n - (n + 26 : ℤ)

end

end A140679.P17607769302957310036

namespace A140679

/-- `A217775(n)-(n+26)` -/
def P17607769302957310036.Spec : Prop :=
  ∀ n, P17607769302957310036.a n = A140679 n

theorem P17607769302957310036.correct : P17607769302957310036.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P17607769302957310036.a, A140679.P16758500501928630565.a, A217775, A217775.P11419149230376848677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P9848057109499260943

`n²+A161549(n)-1`
-/

namespace A140679.P9848057109499260943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A161549 n - 1)

end

end A140679.P9848057109499260943

namespace A140679

/-- `n²+A161549(n)-1` -/
def P9848057109499260943.Spec : Prop :=
  ∀ n, P9848057109499260943.a n = A140679 n

theorem P9848057109499260943.correct : P9848057109499260943.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P9848057109499260943.a, A140679.P16758500501928630565.a, A161549, A161549.P10873518887571627308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P7202432070240423164

`A145923(n)-(n+3)²`
-/

namespace A140679.P7202432070240423164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145923 n - ((n + 3) ^ 2 : ℤ)

end

end A140679.P7202432070240423164

namespace A140679

/-- `A145923(n)-(n+3)²` -/
def P7202432070240423164.Spec : Prop :=
  ∀ n, P7202432070240423164.a n = A140679 n

theorem P7202432070240423164.correct : P7202432070240423164.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P7202432070240423164.a, A140679.P16758500501928630565.a, A145923, A145923.P7531917158050139915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P12490281443892494175

`n²+A139578(n)+n`
-/

namespace A140679.P12490281443892494175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139578 n + (n : ℤ))

end

end A140679.P12490281443892494175

namespace A140679

/-- `n²+A139578(n)+n` -/
def P12490281443892494175.Spec : Prop :=
  ∀ n, P12490281443892494175.a n = A140679 n

theorem P12490281443892494175.correct : P12490281443892494175.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P12490281443892494175.a, A140679.P16758500501928630565.a, A139578, A139578.P1798970913824919969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P11581084851282834477

`n²+A139579(n)-n`
-/

namespace A140679.P11581084851282834477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139579 n - (n : ℤ))

end

end A140679.P11581084851282834477

namespace A140679

/-- `n²+A139579(n)-n` -/
def P11581084851282834477.Spec : Prop :=
  ∀ n, P11581084851282834477.a n = A140679 n

theorem P11581084851282834477.correct : P11581084851282834477.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P11581084851282834477.a, A140679.P16758500501928630565.a, A139579, A139579.P16497202285890633283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P6724840978157050779

`∑[n]+A212331(n)+n`
-/

namespace A140679.P6724840978157050779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A212331 n + (n : ℤ))

end

end A140679.P6724840978157050779

namespace A140679

/-- `∑[n]+A212331(n)+n` -/
def P6724840978157050779.Spec : Prop :=
  ∀ n, P6724840978157050779.a n = A140679 n

end A140679

/-! ## A140679.P5680063432393974719

`A166147(n+1)-(1-n)²`
-/

namespace A140679.P5680063432393974719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (n + 1) - (1 - (n : ℤ)) ^ 2

end

end A140679.P5680063432393974719

namespace A140679

/-- `A166147(n+1)-(1-n)²` -/
def P5680063432393974719.Spec : Prop :=
  ∀ n, P5680063432393974719.a n = A140679 n

theorem P5680063432393974719.correct : P5680063432393974719.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P5680063432393974719.a, A140679.P16758500501928630565.a, A166147, A166147.P8240369530521258348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P1628282166155342096

`A008598(n)+A000567(n)`
-/

namespace A140679.P1628282166155342096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n + A000567 n

end

end A140679.P1628282166155342096

namespace A140679

/-- `A008598(n)+A000567(n)` -/
def P1628282166155342096.Spec : Prop :=
  ∀ n, P1628282166155342096.a n = A140679 n

theorem P1628282166155342096.correct : P1628282166155342096.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P1628282166155342096.a, A140679.P16758500501928630565.a, A000567, A000567.P17850767079432249295.a, A008598, A008598.P6226039880973179911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P751035749995967887

`A017401(n)+A004538(n)`
-/

namespace A140679.P751035749995967887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n + A004538 n

end

end A140679.P751035749995967887

namespace A140679

/-- `A017401(n)+A004538(n)` -/
def P751035749995967887.Spec : Prop :=
  ∀ n, P751035749995967887.a n = A140679 n

theorem P751035749995967887.correct : P751035749995967887.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P751035749995967887.a, A140679.P16758500501928630565.a, A004538, A004538.P10298653278695798692.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-! ## A140679.P12431128779767970803

`A028896(n)+A008593(n)`
-/

namespace A140679.P12431128779767970803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A008593 n

end

end A140679.P12431128779767970803

namespace A140679

/-- `A028896(n)+A008593(n)` -/
def P12431128779767970803.Spec : Prop :=
  ∀ n, P12431128779767970803.a n = A140679 n

theorem P12431128779767970803.correct : P12431128779767970803.Spec := by
  intro n
  simp only [A140679, Nat.add_sub_cancel, A140679.P12431128779767970803.a, A140679.P16758500501928630565.a, A008593, A008593.P2680892499938115192.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140679

/-!
# A140680: a(n) = n*(3*n+16).

The programs for A140680, the canonical program `A140680.P11223240500650357628` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140680 has offset 0).

The definition of A140680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+16)` (program `A140680.P11223240500650357628`, by `A140680.P11223240500650357628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140680.P11223240500650357628

`n*(3*n+16)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140680

/-- `n*(3*n+16)` -/
def P11223240500650357628.Spec : Prop :=
  ∀ n, (P11223240500650357628.a n : ℤ) = A140680 n

theorem P11223240500650357628.correct : P11223240500650357628.Spec := by
  intro n
  simp only [A140680]

end A140680

/-! ## A140680.P3334663087831115756

`∑[a(n-1)+6]` with `a(0)=0, a(1)=19`
-/

namespace A140680.P3334663087831115756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 19] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140680.P3334663087831115756

namespace A140680

/-- `∑[a(n-1)+6]` -/
def P3334663087831115756.Spec : Prop :=
  ∀ n, (P3334663087831115756.a n : ℤ) = A140680 n

end A140680

/-! ## A140680.P15300279717364326716

`2*A140673(n)+n`
-/

namespace A140680.P15300279717364326716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140673 n + (n : ℤ)

end

end A140680.P15300279717364326716

namespace A140680

/-- `2*A140673(n)+n` -/
def P15300279717364326716.Spec : Prop :=
  ∀ n, P15300279717364326716.a n = A140680 n

end A140680

/-! ## A140680.P6721072422406638047

`A140679(n)+2*n`
-/

namespace A140680.P6721072422406638047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n + (2 * n : ℤ)

end

end A140680.P6721072422406638047

namespace A140680

/-- `A140679(n)+2*n` -/
def P6721072422406638047.Spec : Prop :=
  ∀ n, P6721072422406638047.a n = A140680 n

theorem P6721072422406638047.correct : P6721072422406638047.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P6721072422406638047.a, A140680.P11223240500650357628.a, A140679, A140679.P16758500501928630565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P1584828879035707066

`3*A028557(n)+n`
-/

namespace A140680.P1584828879035707066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028557 n + (n : ℤ)

end

end A140680.P1584828879035707066

namespace A140680

/-- `3*A028557(n)+n` -/
def P1584828879035707066.Spec : Prop :=
  ∀ n, P1584828879035707066.a n = A140680 n

theorem P1584828879035707066.correct : P1584828879035707066.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P1584828879035707066.a, A140680.P11223240500650357628.a, A028557, A028557.P14629390258788046737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P15965726531805515025

`2*A140674(n)-n`
-/

namespace A140680.P15965726531805515025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140674 n - (n : ℤ)

end

end A140680.P15965726531805515025

namespace A140680

/-- `2*A140674(n)-n` -/
def P15965726531805515025.Spec : Prop :=
  ∀ n, P15965726531805515025.a n = A140680 n

end A140680

/-! ## A140680.P8663042947070616115

`A140681(n)-2*n`
-/

namespace A140680.P8663042947070616115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 n - (2 * n : ℤ)

end

end A140680.P8663042947070616115

namespace A140680

/-- `A140681(n)-2*n` -/
def P8663042947070616115.Spec : Prop :=
  ∀ n, P8663042947070616115.a n = A140680 n

theorem P8663042947070616115.correct : P8663042947070616115.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P8663042947070616115.a, A140680.P11223240500650357628.a, A140681, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P6871209147366508861

`A140689(n)-4*n`
-/

namespace A140680.P6871209147366508861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140689 n - (4 * n : ℤ)

end

end A140680.P6871209147366508861

namespace A140680

/-- `A140689(n)-4*n` -/
def P6871209147366508861.Spec : Prop :=
  ∀ n, P6871209147366508861.a n = A140680 n

theorem P6871209147366508861.correct : P6871209147366508861.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P6871209147366508861.a, A140680.P11223240500650357628.a, A140689, A140689.P2638629226622628695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P17682416947880698389

`A140677(n)+8*n`
-/

namespace A140680.P17682416947880698389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 n + (8 * n : ℤ)

end

end A140680.P17682416947880698389

namespace A140680

/-- `A140677(n)+8*n` -/
def P17682416947880698389.Spec : Prop :=
  ∀ n, P17682416947880698389.a n = A140680 n

theorem P17682416947880698389.correct : P17682416947880698389.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P17682416947880698389.a, A140680.P11223240500650357628.a, A140677, A140677.P12918494061698475283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P14447748445963966443

`A067725(n)+10*n`
-/

namespace A140680.P14447748445963966443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + (10 * n : ℤ)

end

end A140680.P14447748445963966443

namespace A140680

/-- `A067725(n)+10*n` -/
def P14447748445963966443.Spec : Prop :=
  ∀ n, P14447748445963966443.a n = A140680 n

theorem P14447748445963966443.correct : P14447748445963966443.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P14447748445963966443.a, A140680.P11223240500650357628.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P102528651731222236

`A217775(n)-26+n`
-/

namespace A140680.P102528651731222236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217775 n - 26 + (n : ℤ)

end

end A140680.P102528651731222236

namespace A140680

/-- `A217775(n)-26+n` -/
def P102528651731222236.Spec : Prop :=
  ∀ n, P102528651731222236.a n = A140680 n

theorem P102528651731222236.correct : P102528651731222236.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P102528651731222236.a, A140680.P11223240500650357628.a, A217775, A217775.P11419149230376848677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P6397036959751219666

`A264444(n)-∑[∑[n]]`
-/

namespace A140680.P6397036959751219666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A140680.P6397036959751219666

namespace A140680

/-- `A264444(n)-∑[∑[n]]` -/
def P6397036959751219666.Spec : Prop :=
  ∀ n, P6397036959751219666.a n = A140680 n

end A140680

/-! ## A140680.P16043389559729290558

`n²+A139579(n)+n`
-/

namespace A140680.P16043389559729290558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139579 n + (n : ℤ))

end

end A140680.P16043389559729290558

namespace A140680

/-- `n²+A139579(n)+n` -/
def P16043389559729290558.Spec : Prop :=
  ∀ n, P16043389559729290558.a n = A140680 n

theorem P16043389559729290558.correct : P16043389559729290558.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P16043389559729290558.a, A140680.P11223240500650357628.a, A139579, A139579.P16497202285890633283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P18368713934361329150

`n²+A139580(n)-n`
-/

namespace A140680.P18368713934361329150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139580 n - (n : ℤ))

end

end A140680.P18368713934361329150

namespace A140680

/-- `n²+A139580(n)-n` -/
def P18368713934361329150.Spec : Prop :=
  ∀ n, P18368713934361329150.a n = A140680 n

theorem P18368713934361329150.correct : P18368713934361329150.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P18368713934361329150.a, A140680.P11223240500650357628.a, A139580, A139580.P14196476466695398530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P15113350028874262561

`A008600(n)+A000567(n)`
-/

namespace A140680.P15113350028874262561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n + A000567 n

end

end A140680.P15113350028874262561

namespace A140680

/-- `A008600(n)+A000567(n)` -/
def P15113350028874262561.Spec : Prop :=
  ∀ n, P15113350028874262561.a n = A140680 n

theorem P15113350028874262561.correct : P15113350028874262561.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P15113350028874262561.a, A140680.P11223240500650357628.a, A000567, A000567.P17850767079432249295.a, A008600, A008600.P8081908058967824863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P2950359977436010874

`A028896(n)+A008595(n)`
-/

namespace A140680.P2950359977436010874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A008595 n

end

end A140680.P2950359977436010874

namespace A140680

/-- `A028896(n)+A008595(n)` -/
def P2950359977436010874.Spec : Prop :=
  ∀ n, P2950359977436010874.a n = A140680 n

theorem P2950359977436010874.correct : P2950359977436010874.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P2950359977436010874.a, A140680.P11223240500650357628.a, A008595, A008595.P16021929412859907016.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P1587886111412191193

`A033428(n)+A008598(n)`
-/

namespace A140680.P1587886111412191193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A008598 n

end

end A140680.P1587886111412191193

namespace A140680

/-- `A033428(n)+A008598(n)` -/
def P1587886111412191193.Spec : Prop :=
  ∀ n, P1587886111412191193.a n = A140680 n

theorem P1587886111412191193.correct : P1587886111412191193.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P1587886111412191193.a, A140680.P11223240500650357628.a, A008598, A008598.P6226039880973179911.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P5716312778544449129

`A045944(n)+A008596(n)`
-/

namespace A140680.P5716312778544449129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + A008596 n

end

end A140680.P5716312778544449129

namespace A140680

/-- `A045944(n)+A008596(n)` -/
def P5716312778544449129.Spec : Prop :=
  ∀ n, P5716312778544449129.a n = A140680 n

theorem P5716312778544449129.correct : P5716312778544449129.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P5716312778544449129.a, A140680.P11223240500650357628.a, A008596, A008596.P5483684624845691048.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P16326082147176681792

`A049450(n)+A008599(n)`
-/

namespace A140680.P16326082147176681792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + A008599 n

end

end A140680.P16326082147176681792

namespace A140680

/-- `A049450(n)+A008599(n)` -/
def P16326082147176681792.Spec : Prop :=
  ∀ n, P16326082147176681792.a n = A140680 n

theorem P16326082147176681792.correct : P16326082147176681792.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P16326082147176681792.a, A140680.P11223240500650357628.a, A008599, A008599.P9337740256108162749.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-! ## A140680.P17271824773140456287

`A049451(n)+A008597(n)`
-/

namespace A140680.P17271824773140456287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + A008597 n

end

end A140680.P17271824773140456287

namespace A140680

/-- `A049451(n)+A008597(n)` -/
def P17271824773140456287.Spec : Prop :=
  ∀ n, P17271824773140456287.a n = A140680 n

theorem P17271824773140456287.correct : P17271824773140456287.Spec := by
  intro n
  simp only [A140680, Nat.add_sub_cancel, A140680.P17271824773140456287.a, A140680.P11223240500650357628.a, A008597, A008597.P11564373174620697085.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140680

/-!
# A140681: a(n) = 3*n*(n+6).

The programs for A140681, the canonical program `A140681.P11404641493444198903` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140681 has offset 0).

The definition of A140681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+6)` (program `A140681.P11404641493444198903`, by `A140681.P11404641493444198903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140681.P11404641493444198903

`3*n*(n+6)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140681

/-- `3*n*(n+6)` -/
def P11404641493444198903.Spec : Prop :=
  ∀ n, (P11404641493444198903.a n : ℤ) = A140681 n

theorem P11404641493444198903.correct : P11404641493444198903.Spec := by
  intro n
  simp only [A140681]

end A140681

/-! ## A140681.P14326582783061292688

`record[3*n*(n-6)]`
-/

namespace A140681.P14326582783061292688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ((n : ℤ) - 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140681.P14326582783061292688

namespace A140681

/-- `record[3*n*(n-6)]` -/
def P14326582783061292688.Spec : Prop :=
  ∀ n, P14326582783061292688.a n = A140681 n

end A140681

/-! ## A140681.P41729861796453609

`∑[a(n-1)+6]` with `a(0)=0, a(1)=21`
-/

namespace A140681.P41729861796453609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 21] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140681.P41729861796453609

namespace A140681

/-- `∑[a(n-1)+6]` -/
def P41729861796453609.Spec : Prop :=
  ∀ n, (P41729861796453609.a n : ℤ) = A140681 n

end A140681

/-! ## A140681.P18392951575931785276

`a(n-1)+(n+4)²-(n+1)²` with `a(0)=0`
-/

namespace A140681.P18392951575931785276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n + 4) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ))

end

end A140681.P18392951575931785276

namespace A140681

/-- `a(n-1)+(n+4)²-(n+1)²` -/
def P18392951575931785276.Spec : Prop :=
  ∀ n, P18392951575931785276.a n = A140681 n

theorem P18392951575931785276.correct : P18392951575931785276.Spec := by
  intro n
  induction n with
  | zero => simp [A140681, A140681.P18392951575931785276.a, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A140681, Nat.add_sub_cancel, A140681.P18392951575931785276.a, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A140681

/-! ## A140681.P17806340620835175718

`A277979(n)-n²`
-/

namespace A140681.P17806340620835175718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277979 n - (n ^ 2 : ℤ)

end

end A140681.P17806340620835175718

namespace A140681

/-- `A277979(n)-n²` -/
def P17806340620835175718.Spec : Prop :=
  ∀ n, P17806340620835175718.a n = A140681 n

theorem P17806340620835175718.correct : P17806340620835175718.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P17806340620835175718.a, A140681.P11404641493444198903.a, A277979, A277979.P8157014002560634549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P11466203523429823984

`2*A140674(n)+n`
-/

namespace A140681.P11466203523429823984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140674 n + (n : ℤ)

end

end A140681.P11466203523429823984

namespace A140681

/-- `2*A140674(n)+n` -/
def P11466203523429823984.Spec : Prop :=
  ∀ n, P11466203523429823984.a n = A140681 n

end A140681

/-! ## A140681.P13384254505642668630

`A140680(n)+2*n`
-/

namespace A140681.P13384254505642668630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140680 n + (2 * n : ℤ)

end

end A140681.P13384254505642668630

namespace A140681

/-- `A140680(n)+2*n` -/
def P13384254505642668630.Spec : Prop :=
  ∀ n, P13384254505642668630.a n = A140681 n

theorem P13384254505642668630.correct : P13384254505642668630.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P13384254505642668630.a, A140681.P11404641493444198903.a, A140680, A140680.P11223240500650357628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P5803927327147863470

`2*A140675(n)-n`
-/

namespace A140681.P5803927327147863470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140675 n - (n : ℤ)

end

end A140681.P5803927327147863470

namespace A140681

/-- `2*A140675(n)-n` -/
def P5803927327147863470.Spec : Prop :=
  ∀ n, P5803927327147863470.a n = A140681 n

end A140681

/-! ## A140681.P2993837708436594842

`A140689(n)-2*n`
-/

namespace A140681.P2993837708436594842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140689 n - (2 * n : ℤ)

end

end A140681.P2993837708436594842

namespace A140681

/-- `A140689(n)-2*n` -/
def P2993837708436594842.Spec : Prop :=
  ∀ n, P2993837708436594842.a n = A140681 n

theorem P2993837708436594842.correct : P2993837708436594842.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P2993837708436594842.a, A140681.P11404641493444198903.a, A140689, A140689.P2638629226622628695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P3527911870947859229

`A140679(n)+4*n`
-/

namespace A140681.P3527911870947859229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n + (4 * n : ℤ)

end

end A140681.P3527911870947859229

namespace A140681

/-- `A140679(n)+4*n` -/
def P3527911870947859229.Spec : Prop :=
  ∀ n, P3527911870947859229.a n = A140681 n

theorem P3527911870947859229.correct : P3527911870947859229.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P3527911870947859229.a, A140681.P11404641493444198903.a, A140679, A140679.P16758500501928630565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P4671170608131856479

`A277976(n)-5*n`
-/

namespace A140681.P4671170608131856479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277976 n - (5 * n : ℤ)

end

end A140681.P4671170608131856479

namespace A140681

/-- `A277976(n)-5*n` -/
def P4671170608131856479.Spec : Prop :=
  ∀ n, P4671170608131856479.a n = A140681 n

theorem P4671170608131856479.correct : P4671170608131856479.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P4671170608131856479.a, A140681.P11404641493444198903.a, A277976, A277976.P2363283820760070820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P13292572003409230871

`15*n+A028896(n)`
-/

namespace A140681.P13292572003409230871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n : ℤ) + A028896 n

end

end A140681.P13292572003409230871

namespace A140681

/-- `15*n+A028896(n)` -/
def P13292572003409230871.Spec : Prop :=
  ∀ n, P13292572003409230871.a n = A140681 n

theorem P13292572003409230871.correct : P13292572003409230871.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P13292572003409230871.a, A140681.P11404641493444198903.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P3662629738514046457

`A045944(n)+16*n`
-/

namespace A140681.P3662629738514046457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + (16 * n : ℤ)

end

end A140681.P3662629738514046457

namespace A140681

/-- `A045944(n)+16*n` -/
def P3662629738514046457.Spec : Prop :=
  ∀ n, P3662629738514046457.a n = A140681 n

theorem P3662629738514046457.correct : P3662629738514046457.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P3662629738514046457.a, A140681.P11404641493444198903.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P12005447223686995839

`A000567(n)+20*n`
-/

namespace A140681.P12005447223686995839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + (20 * n : ℤ)

end

end A140681.P12005447223686995839

namespace A140681

/-- `A000567(n)+20*n` -/
def P12005447223686995839.Spec : Prop :=
  ∀ n, P12005447223686995839.a n = A140681 n

theorem P12005447223686995839.correct : P12005447223686995839.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P12005447223686995839.a, A140681.P11404641493444198903.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P9248493967556830066

`2*A139576(n)-n²`
-/

namespace A140681.P9248493967556830066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139576 n - (n ^ 2 : ℤ)

end

end A140681.P9248493967556830066

namespace A140681

/-- `2*A139576(n)-n²` -/
def P9248493967556830066.Spec : Prop :=
  ∀ n, P9248493967556830066.a n = A140681 n

theorem P9248493967556830066.correct : P9248493967556830066.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P9248493967556830066.a, A140681.P11404641493444198903.a, A139576, A139576.P8586854319888252032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P10377591182487264315

`n²+A139580(n)+n`
-/

namespace A140681.P10377591182487264315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139580 n + (n : ℤ))

end

end A140681.P10377591182487264315

namespace A140681

/-- `n²+A139580(n)+n` -/
def P10377591182487264315.Spec : Prop :=
  ∀ n, P10377591182487264315.a n = A140681 n

theorem P10377591182487264315.correct : P10377591182487264315.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P10377591182487264315.a, A140681.P11404641493444198903.a, A139580, A139580.P14196476466695398530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P11888920522944727987

`n²+A139581(n)-n`
-/

namespace A140681.P11888920522944727987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139581 n - (n : ℤ))

end

end A140681.P11888920522944727987

namespace A140681

/-- `n²+A139581(n)-n` -/
def P11888920522944727987.Spec : Prop :=
  ∀ n, P11888920522944727987.a n = A140681 n

theorem P11888920522944727987.correct : P11888920522944727987.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P11888920522944727987.a, A140681.P11404641493444198903.a, A139581, A139581.P16722424302175688649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P15140687171090470712

`A016921(n-1)+a(n-1)+20` with `a(0)=0`
-/

namespace A140681.P15140687171090470712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A016921 (n - 1) + a (n - 1) + 20

end

end A140681.P15140687171090470712

namespace A140681

/-- `A016921(n-1)+a(n-1)+20` -/
def P15140687171090470712.Spec : Prop :=
  ∀ n, P15140687171090470712.a n = A140681 n

theorem P15140687171090470712.correct : P15140687171090470712.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140681, Nat.add_sub_cancel, A140681.P15140687171090470712.a, A140681.P11404641493444198903.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140681, Nat.add_sub_cancel, A140681.P15140687171090470712.a, A140681.P11404641493444198903.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P11147175798255490046

`A008602(n)+A000567(n)`
-/

namespace A140681.P11147175798255490046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 n + A000567 n

end

end A140681.P11147175798255490046

namespace A140681

/-- `A008602(n)+A000567(n)` -/
def P11147175798255490046.Spec : Prop :=
  ∀ n, P11147175798255490046.a n = A140681 n

theorem P11147175798255490046.correct : P11147175798255490046.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P11147175798255490046.a, A140681.P11404641493444198903.a, A000567, A000567.P17850767079432249295.a, A008602, A008602.P10803716924039054280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-! ## A140681.P17007612665870088496

`A028896(n)+A008597(n)`
-/

namespace A140681.P17007612665870088496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A008597 n

end

end A140681.P17007612665870088496

namespace A140681

/-- `A028896(n)+A008597(n)` -/
def P17007612665870088496.Spec : Prop :=
  ∀ n, P17007612665870088496.a n = A140681 n

theorem P17007612665870088496.correct : P17007612665870088496.Spec := by
  intro n
  simp only [A140681, Nat.add_sub_cancel, A140681.P17007612665870088496.a, A140681.P11404641493444198903.a, A008597, A008597.P11564373174620697085.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140681

/-!
# A140682: Triangle T(n,k) = gcd(n,k)-binomial(n,k), 0<=k<=n.

The programs for A140682, the canonical program `A140682.P4563190499722621415` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140682 has offset 0).

The definition of A140682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(row(n), col(n))-C(row(n), col(n))` (program `A140682.P4563190499722621415`, by `A140682.P4563190499722621415.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140682.P4563190499722621415

`gcd(row(n), col(n))-C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140682

/-- `gcd(row(n), col(n))-C(row(n), col(n))` -/
def P4563190499722621415.Spec : Prop :=
  ∀ n, P4563190499722621415.a n = A140682 n

theorem P4563190499722621415.correct : P4563190499722621415.Spec := by
  intro n
  simp only [A140682]

end A140682

/-! ## A140682.P1873504105258423528

`gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])-A007318(n)`
-/

namespace A140682.P1873504105258423528
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n) (∑ j ∈ Finset.range (n + 1), f4 j) : ℤ) - A007318 n

end

end A140682.P1873504105258423528

namespace A140682

/-- `gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])-A007318(n)` -/
def P1873504105258423528.Spec : Prop :=
  ∀ n, P1873504105258423528.a n = A140682 n

end A140682

/-! ## A140682.P8275354965430538715

`A109004(n)-A007318(n)`
-/

namespace A140682.P8275354965430538715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - A007318 n

end

end A140682.P8275354965430538715

namespace A140682

/-- `A109004(n)-A007318(n)` -/
def P8275354965430538715.Spec : Prop :=
  ∀ n, P8275354965430538715.a n = A140682 n

end A140682

/-! ## A140682.P1594871410550192474

`A109004(n)-abs(A108086(n))`
-/

namespace A140682.P1594871410550192474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - |A108086 n|

end

end A140682.P1594871410550192474

namespace A140682

/-- `A109004(n)-abs(A108086(n))` -/
def P1594871410550192474.Spec : Prop :=
  ∀ n, P1594871410550192474.a n = A140682 n

end A140682

/-! ## A140682.P11454490228901084873

`A109004(n)-abs(A117440(n))`
-/

namespace A140682.P11454490228901084873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - |A117440 n|

end

end A140682.P11454490228901084873

namespace A140682

/-- `A109004(n)-abs(A117440(n))` -/
def P11454490228901084873.Spec : Prop :=
  ∀ n, P11454490228901084873.a n = A140682 n

end A140682

/-! ## A140682.P15106903180139396429

`A109004(n)-abs(A130595(n))`
-/

namespace A140682.P15106903180139396429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - |A130595 n|

end

end A140682.P15106903180139396429

namespace A140682

/-- `A109004(n)-abs(A130595(n))` -/
def P15106903180139396429.Spec : Prop :=
  ∀ n, P15106903180139396429.a n = A140682 n

end A140682

/-! ## A140682.P4497900249669864075

`A109004(n)-sqrt(A008459(n))`
-/

namespace A140682.P4497900249669864075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109004 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A140682.P4497900249669864075

namespace A140682

/-- `A109004(n)-sqrt(A008459(n))` -/
def P4497900249669864075.Spec : Prop :=
  ∀ n, P4497900249669864075.a n = (A140682 n : ℝ)

end A140682

/-! ## A140682.P2430606369115445532

`A109004(n)-Δ[A102363(n)]`
-/

namespace A140682.P2430606369115445532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - (f1 (n + 1) - f1 n)

end

end A140682.P2430606369115445532

namespace A140682

/-- `A109004(n)-Δ[A102363(n)]` -/
def P2430606369115445532.Spec : Prop :=
  ∀ n, P2430606369115445532.a n = A140682 n

end A140682

/-! ## A140682.P5373564461310925759

`A109004(n)-(A014473(n)+1)`
-/

namespace A140682.P5373564461310925759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - (A014473 n + 1)

end

end A140682.P5373564461310925759

namespace A140682

/-- `A109004(n)-(A014473(n)+1)` -/
def P5373564461310925759.Spec : Prop :=
  ∀ n, P5373564461310925759.a n = A140682 n

end A140682

/-! ## A140682.P13077419656000207356

`A281726(n+1)-(A007318(n)+1)`
-/

namespace A140682.P13077419656000207356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281726 (n + 1) - (A007318 n + 1)

end

end A140682.P13077419656000207356

namespace A140682

/-- `A281726(n+1)-(A007318(n)+1)` -/
def P13077419656000207356.Spec : Prop :=
  ∀ n, P13077419656000207356.a n = A140682 n

end A140682

/-!
# A140683: a(n) = 3*(-1)^(n+1)*2^n - 1.

The programs for A140683, the canonical program `A140683.P13394674294430359483` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140683 has offset 0).

The definition of A140683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(-1)^(n+1)*2^n-1` (program `A140683.P13394674294430359483`, by `A140683.P13394674294430359483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140683.P13394674294430359483

`3*(-1)^(n+1)*2^n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140683

/-- `3*(-1)^(n+1)*2^n-1` -/
def P13394674294430359483.Spec : Prop :=
  ∀ n, P13394674294430359483.a n = A140683 n

theorem P13394674294430359483.correct : P13394674294430359483.Spec := by
  intro n
  simp only [A140683]

end A140683

/-! ## A140683.P2317777604139119478

`∑[ogf((-4+x)/(1+2x))]`
-/

namespace A140683.P2317777604139119478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-4, 1] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140683.P2317777604139119478

namespace A140683

/-- `∑[ogf((-4+x)/(1+2x))]` -/
def P2317777604139119478.Spec : Prop :=
  ∀ n, P2317777604139119478.a n = A140683 n

end A140683

/-! ## A140683.P16665001642075555978

`ogf((-4+x)/(1+x-2x^2))`
-/

namespace A140683.P16665001642075555978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-4, 1] [1, 1, -2] n

end

end A140683.P16665001642075555978

namespace A140683

/-- `ogf((-4+x)/(1+x-2x^2))` -/
def P16665001642075555978.Spec : Prop :=
  ∀ n, P16665001642075555978.a n = A140683 n

end A140683

/-! ## A140683.P12764709545590138594

`floor(a(n-1)-3*(a(n-1)+1))` with `a(0)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A140683.P12764709545590138594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n a =>
  a (n - 1) - 3 * (a (n - 1) + 1)

end

end A140683.P12764709545590138594

namespace A140683

/-- `floor(a(n-1)-3*(a(n-1)+1))` -/
def P12764709545590138594.Spec : Prop :=
  ∀ n, P12764709545590138594.a n = A140683 n

theorem P12764709545590138594.correct : P12764709545590138594.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140683, Nat.add_sub_cancel, A140683.P12764709545590138594.a, A140683.P13394674294430359483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140683, Nat.add_sub_cancel, A140683.P12764709545590138594.a, A140683.P13394674294430359483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140683

/-! ## A140683.P7029786228946936986

`floor(a(n-1)-3-3*a(n-1))` with `a(0)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A140683.P7029786228946936986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n a =>
  a (n - 1) - 3 - 3 * a (n - 1)

end

end A140683.P7029786228946936986

namespace A140683

/-- `floor(a(n-1)-3-3*a(n-1))` -/
def P7029786228946936986.Spec : Prop :=
  ∀ n, P7029786228946936986.a n = A140683 n

theorem P7029786228946936986.correct : P7029786228946936986.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140683, Nat.add_sub_cancel, A140683.P7029786228946936986.a, A140683.P13394674294430359483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140683, Nat.add_sub_cancel, A140683.P7029786228946936986.a, A140683.P13394674294430359483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140683

/-! ## A140683.P639327039351346805

`Δ[n-1-2*(a(n-1)+2*n)]` with `a(0)=0`
-/

namespace A140683.P639327039351346805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - 2 * (f1 (n - 1) + (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140683.P639327039351346805

namespace A140683

/-- `Δ[n-1-2*(a(n-1)+2*n)]` -/
def P639327039351346805.Spec : Prop :=
  ∀ n, P639327039351346805.a n = A140683 n

end A140683

/-! ## A140683.P16593924283558910400

`floor(a(n-2)-(a(n-1)-a(n-2)))` with `a(0)=-4, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A140683.P16593924283558910400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-4, 5] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 2))

end

end A140683.P16593924283558910400

namespace A140683

/-- `floor(a(n-2)-(a(n-1)-a(n-2)))` -/
def P16593924283558910400.Spec : Prop :=
  ∀ n, P16593924283558910400.a n = A140683 n

theorem P16593924283558910400.correct : P16593924283558910400.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A140683, Nat.add_sub_cancel, A140683.P16593924283558910400.a, A140683.P13394674294430359483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A140683, Nat.add_sub_cancel, A140683.P16593924283558910400.a, A140683.P13394674294430359483.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140683

/-! ## A140683.P2002737813597042387

`Δ[A122803(n)-n]`
-/

namespace A140683.P2002737813597042387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140683.P2002737813597042387

namespace A140683

/-- `Δ[A122803(n)-n]` -/
def P2002737813597042387.Spec : Prop :=
  ∀ n, P2002737813597042387.a n = A140683 n

end A140683

/-! ## A140683.P6000685421876436136

`Δ[A117575(Δ[n²])-n]`
-/

namespace A140683.P6000685421876436136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140683.P6000685421876436136

namespace A140683

/-- `Δ[A117575(Δ[n²])-n]` -/
def P6000685421876436136.Spec : Prop :=
  ∀ n, P6000685421876436136.a n = A140683 n

end A140683

/-! ## A140683.P17872914502352743566

`(A033999(n)+A007283(n))*A033999(n+1)`
-/

namespace A140683.P17872914502352743566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A007283 n) * A033999 (n + 1)

end

end A140683.P17872914502352743566

namespace A140683

/-- `(A033999(n)+A007283(n))*A033999(n+1)` -/
def P17872914502352743566.Spec : Prop :=
  ∀ n, P17872914502352743566.a n = A140683 n

end A140683

/-! ## A140683.P5222348520702512591

`(A014551(n)+A000079(n+1))*A033999(n+1)`
-/

namespace A140683.P5222348520702512591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014551 n + A000079 (n + 1)) * A033999 (n + 1)

end

end A140683.P5222348520702512591

namespace A140683

/-- `(A014551(n)+A000079(n+1))*A033999(n+1)` -/
def P5222348520702512591.Spec : Prop :=
  ∀ n, P5222348520702512591.a n = A140683 n

end A140683

/-! ## A140683.P16972833213254399176

`xor(A083329(n+1)-A084221(n+1), A084221(n+1))`
-/

namespace A140683.P16972833213254399176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083329 (n + 1) - A084221 (n + 1)) (A084221 (n + 1))

end

end A140683.P16972833213254399176

namespace A140683

/-- `xor(A083329(n+1)-A084221(n+1), A084221(n+1))` -/
def P16972833213254399176.Spec : Prop :=
  ∀ n, P16972833213254399176.a n = A140683 n

end A140683

/-! ## A140683.P15025074497135608819

`-(A110164(n+2)+1)`
-/

namespace A140683.P15025074497135608819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A110164 (n + 2) + 1)

end

end A140683.P15025074497135608819

namespace A140683

/-- `-(A110164(n+2)+1)` -/
def P15025074497135608819.Spec : Prop :=
  ∀ n, P15025074497135608819.a n = A140683 n

end A140683

/-! ## A140683.P9995249454681705698

`∑[∑[A296775(n+1)]+1]`
-/

namespace A140683.P9995249454681705698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296775 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140683.P9995249454681705698

namespace A140683

/-- `∑[∑[A296775(n+1)]+1]` -/
def P9995249454681705698.Spec : Prop :=
  ∀ n, P9995249454681705698.a n = A140683 n

end A140683

/-! ## A140683.P3030726031196258775

`A033999(n+1)/2*A259713(n+1)`
-/

namespace A140683.P3030726031196258775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A259713 (n + 1) : ℚ)

end

end A140683.P3030726031196258775

namespace A140683

/-- `A033999(n+1)/2*A259713(n+1)` -/
def P3030726031196258775.Spec : Prop :=
  ∀ n, P3030726031196258775.a n = (A140683 n : ℚ)

end A140683

/-! ## A140683.P13009691072452434812

`(A280345(n)-A280345(n+1))*A033999(n)`
-/

namespace A140683.P13009691072452434812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280345 n - A280345 (n + 1)) * A033999 n

end

end A140683.P13009691072452434812

namespace A140683

/-- `(A280345(n)-A280345(n+1))*A033999(n)` -/
def P13009691072452434812.Spec : Prop :=
  ∀ n, P13009691072452434812.a n = A140683 n

end A140683

/-! ## A140683.P11639307548677855026

`A259713(n+1)/(A062510(n)-A014551(n))`
-/

namespace A140683.P11639307548677855026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259713 (n + 1) : ℚ) / (A062510 n - A014551 n : ℚ)

end

end A140683.P11639307548677855026

namespace A140683

/-- `A259713(n+1)/(A062510(n)-A014551(n))` -/
def P11639307548677855026.Spec : Prop :=
  ∀ n, P11639307548677855026.a n = (A140683 n : ℚ)

end A140683

/-! ## A140683.P13706855828942495798

`A259713(n+1)/(A259713(n)-A007283(n))`
-/

namespace A140683.P13706855828942495798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259713 (n + 1) : ℚ) / (A259713 n - A007283 n : ℚ)

end

end A140683.P13706855828942495798

namespace A140683

/-- `A259713(n+1)/(A259713(n)-A007283(n))` -/
def P13706855828942495798.Spec : Prop :=
  ∀ n, P13706855828942495798.a n = (A140683 n : ℚ)

end A140683

/-! ## A140683.P2417794154101923180

`(A280345(n+1)-A280345(n))/A033999(n+1)`
-/

namespace A140683.P2417794154101923180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280345 (n + 1) - A280345 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A140683.P2417794154101923180

namespace A140683

/-- `(A280345(n+1)-A280345(n))/A033999(n+1)` -/
def P2417794154101923180.Spec : Prop :=
  ∀ n, P2417794154101923180.a n = (A140683 n : ℚ)

end A140683

/-!
# A140684: A037481 mod 10.

The programs for A140684, the canonical program `A140684.P15414170630249637490` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140684 has offset 0).

The definition of A140684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140684.P15414170630249637490

`a(n-10)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=5, a(4)=2, a(5)=9, a(6)=8, a(7)=3, a(8)=4, a(9)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140684

/-- `a(n-10)` -/
def P15414170630249637490.Spec : Prop :=
  ∀ n, (P15414170630249637490.a n : ℤ) = A140684 n

theorem P15414170630249637490.correct : P15414170630249637490.Spec := by
  intro n
  simp only [A140684]

end A140684

/-!
# A140685: Triangle T(n,k) read by rows: T(n,k) = 1 if n is odd and k=(n-1)/2; T(n,k) = 2 otherwise.

The programs for A140685, the canonical program `A140685.P7650881621240634550` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140685 has offset 1).

The definition of A140685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140685.P8694305484493295571

`2-char[∑[4*n]]`
-/

namespace A140685.P8694305484493295571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A140685.P8694305484493295571

namespace A140685

/-- `2-char[∑[4*n]]` -/
def P8694305484493295571.Spec : Prop :=
  ∀ n, P8694305484493295571.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P255187820544364735

`abs(or(char[∑[4*n]], -2))`
-/

namespace A140685.P255187820544364735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (-2)|

end

end A140685.P255187820544364735

namespace A140685

/-- `abs(or(char[∑[4*n]], -2))` -/
def P255187820544364735.Spec : Prop :=
  ∀ n, P255187820544364735.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P6218434041472972152

`abs(xor(char[∑[4*n]], -2))`
-/

namespace A140685.P6218434041472972152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (-2)|

end

end A140685.P6218434041472972152

namespace A140685

/-- `abs(xor(char[∑[4*n]], -2))` -/
def P6218434041472972152.Spec : Prop :=
  ∀ n, P6218434041472972152.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P11436842562378519326

`dr(or(char[∑[4*n]], -2))`
-/

namespace A140685.P11436842562378519326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (-2))

end

end A140685.P11436842562378519326

namespace A140685

/-- `dr(or(char[∑[4*n]], -2))` -/
def P11436842562378519326.Spec : Prop :=
  ∀ n, (P11436842562378519326.a n : ℤ) = A140685 (n + 1)

end A140685

/-! ## A140685.P16950819488663158919

`2/(char[4*C(n, 2)]+1)`
-/

namespace A140685.P16950819488663158919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A140685.P16950819488663158919

namespace A140685

/-- `2/(char[4*C(n, 2)]+1)` -/
def P16950819488663158919.Spec : Prop :=
  ∀ n, P16950819488663158919.a n = (A140685 (n + 1) : ℚ)

end A140685

/-! ## A140685.P11830697755856188062

`ceil(acot(char[(n+1)*2*n]))`
-/

namespace A140685.P11830697755856188062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A140685.P11830697755856188062

namespace A140685

/-- `ceil(acot(char[(n+1)*2*n]))` -/
def P11830697755856188062.Spec : Prop :=
  ∀ n, P11830697755856188062.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P12890283584304737363

`round(acot(char[(n+1)*2*n]))`
-/

namespace A140685.P12890283584304737363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A140685.P12890283584304737363

namespace A140685

/-- `round(acot(char[(n+1)*2*n]))` -/
def P12890283584304737363.Spec : Prop :=
  ∀ n, P12890283584304737363.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P7650881621240634550

`-or(-2, ∑{d}[2*n+1, #])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140685

/-- `-or(-2, ∑{d}[2*n+1, #])` -/
def P7650881621240634550.Spec : Prop :=
  ∀ n, P7650881621240634550.a n = A140685 (n + 1)

theorem P7650881621240634550.correct : P7650881621240634550.Spec := by
  intro n
  simp only [A140685, Nat.add_sub_cancel]

end A140685

/-! ## A140685.P16127341216873598633

`gcd(4, ∑{d}[2*n+1, #]²+2)`
-/

namespace A140685.P16127341216873598633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 + 2)

end

end A140685.P16127341216873598633

namespace A140685

/-- `gcd(4, ∑{d}[2*n+1, #]²+2)` -/
def P16127341216873598633.Spec : Prop :=
  ∀ n, (P16127341216873598633.a n : ℤ) = A140685 (n + 1)

end A140685

/-! ## A140685.P2465763279034316784

`and(3, 2-∑{d}[2*n+1, #]²)`
-/

namespace A140685.P2465763279034316784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (2 - (((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 : ℕ) : ℤ))

end

end A140685.P2465763279034316784

namespace A140685

/-- `and(3, 2-∑{d}[2*n+1, #]²)` -/
def P2465763279034316784.Spec : Prop :=
  ∀ n, P2465763279034316784.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P5550316281612802736

`(2-and(1, ∑{d}[2*n+1, #]))!`
-/

namespace A140685.P5550316281612802736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - (Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d) : ℤ)).toNat

end

end A140685.P5550316281612802736

namespace A140685

/-- `(2-and(1, ∑{d}[2*n+1, #]))!` -/
def P5550316281612802736.Spec : Prop :=
  ∀ n, (P5550316281612802736.a n : ℤ) = A140685 (n + 1)

end A140685

/-! ## A140685.P17849926434480363648

`gcd(4/2, ∑{d}[2*n+1, #])!`
-/

namespace A140685.P17849926434480363648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.gcd (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A140685.P17849926434480363648

namespace A140685

/-- `gcd(4/2, ∑{d}[2*n+1, #])!` -/
def P17849926434480363648.Spec : Prop :=
  ∀ n, (P17849926434480363648.a n : ℤ) = A140685 (n + 1)

end A140685

/-! ## A140685.P15391546189140532047

`gcd(2, A000735(n))`
-/

namespace A140685.P15391546189140532047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000735 n)

end

end A140685.P15391546189140532047

namespace A140685

/-- `gcd(2, A000735(n))` -/
def P15391546189140532047.Spec : Prop :=
  ∀ n, (P15391546189140532047.a n : ℤ) = A140685 (n + 1)

end A140685

/-! ## A140685.P517827557989374595

`A115281(n)%4`
-/

namespace A140685.P517827557989374595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115281 n) 4

end

end A140685.P517827557989374595

namespace A140685

/-- `A115281(n)%4` -/
def P517827557989374595.Spec : Prop :=
  ∀ n, P517827557989374595.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P14745958800116607445

`gcd(6, A116588(n))`
-/

namespace A140685.P14745958800116607445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A116588 n)

end

end A140685.P14745958800116607445

namespace A140685

/-- `gcd(6, A116588(n))` -/
def P14745958800116607445.Spec : Prop :=
  ∀ n, (P14745958800116607445.a n : ℤ) = A140685 (n + 1)

end A140685

/-! ## A140685.P3738709176633292234

`A067694(Δ[n²])`
-/

namespace A140685.P3738709176633292234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140685.P3738709176633292234

namespace A140685

/-- `A067694(Δ[n²])` -/
def P3738709176633292234.Spec : Prop :=
  ∀ n, P3738709176633292234.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P17690134447414506742

`A169695(Δ[n²])`
-/

namespace A140685.P17690134447414506742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140685.P17690134447414506742

namespace A140685

/-- `A169695(Δ[n²])` -/
def P17690134447414506742.Spec : Prop :=
  ∀ n, P17690134447414506742.a n = A140685 (n + 1)

end A140685

/-! ## A140685.P5079697901701687022

`A067694(2*n+1)!`
-/

namespace A140685.P5079697901701687022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A067694 (2 * n + 1)).toNat

end

end A140685.P5079697901701687022

namespace A140685

/-- `A067694(2*n+1)!` -/
def P5079697901701687022.Spec : Prop :=
  ∀ n, (P5079697901701687022.a n : ℤ) = A140685 (n + 1)

end A140685

/-! ## A140685.P11728722245087388322

`A169695(2*n+1)!`
-/

namespace A140685.P11728722245087388322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A169695 (2 * n + 1)).toNat

end

end A140685.P11728722245087388322

namespace A140685

/-- `A169695(2*n+1)!` -/
def P11728722245087388322.Spec : Prop :=
  ∀ n, (P11728722245087388322.a n : ℤ) = A140685 (n + 1)

end A140685

/-!
# A140687: Primes congruent to 59 or 151 mod 210.

The programs for A140687, the canonical program `A140687.P11626312443094119930` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140687 has offset 1).

The definition of A140687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140687.P11626312443094119930

`p?[2*A155107(n+1)-A065033(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140687

/-- `p?[2*A155107(n+1)-A065033(n)]` -/
def P11626312443094119930.Spec : Prop :=
  ∀ n, P11626312443094119930.a n = A140687 (n + 1)

theorem P11626312443094119930.correct : P11626312443094119930.Spec := by
  intro n
  simp only [A140687, Nat.add_sub_cancel]

end A140687

/-! ## A140687.P1038260416319248020

`p?[A249674(n)+A238468(n)]`
-/

namespace A140687.P1038260416319248020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A238468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P1038260416319248020

namespace A140687

/-- `p?[A249674(n)+A238468(n)]` -/
def P1038260416319248020.Spec : Prop :=
  ∀ n, P1038260416319248020.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P13133410746864623133

`p?[A249674(n)-A238470(n)]`
-/

namespace A140687.P13133410746864623133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - A238470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P13133410746864623133

namespace A140687

/-- `p?[A249674(n)-A238470(n)]` -/
def P13133410746864623133.Spec : Prop :=
  ∀ n, P13133410746864623133.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P1599616589607051928

`p?[A057538(A166639(n)+1+n)]`
-/

namespace A140687.P1599616589607051928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (A166639 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P1599616589607051928

namespace A140687

/-- `p?[A057538(A166639(n)+1+n)]` -/
def P1599616589607051928.Spec : Prop :=
  ∀ n, P1599616589607051928.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P13762543668617379622

`p?[A057538(A143988(n+1)+A016885(n))]`
-/

namespace A140687.P13762543668617379622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (A143988 (n + 1) + A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P13762543668617379622

namespace A140687

/-- `p?[A057538(A143988(n+1)+A016885(n))]` -/
def P13762543668617379622.Spec : Prop :=
  ∀ n, P13762543668617379622.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P14763308499868027663

`p?[A175887(A143988(n+1)+A016885(n))]`
-/

namespace A140687.P14763308499868027663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A143988 (n + 1) + A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P14763308499868027663

namespace A140687

/-- `p?[A175887(A143988(n+1)+A016885(n))]` -/
def P14763308499868027663.Spec : Prop :=
  ∀ n, P14763308499868027663.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P6765068879548372475

`p?[A175887(A168273(n+1)+A047247(n+1))]`
-/

namespace A140687.P6765068879548372475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A168273 (n + 1) + A047247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P6765068879548372475

namespace A140687

/-- `p?[A175887(A168273(n+1)+A047247(n+1))]` -/
def P6765068879548372475.Spec : Prop :=
  ∀ n, P6765068879548372475.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P9197245572132584016

`p?[A090771(A090771(n+1)+A008621(n))]`
-/

namespace A140687.P9197245572132584016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A090771 (n + 1) + A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P9197245572132584016

namespace A140687

/-- `p?[A090771(A090771(n+1)+A008621(n))]` -/
def P9197245572132584016.Spec : Prop :=
  ∀ n, P9197245572132584016.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P10780109640633361081

`p?[A008486(A175887(n+1))+A007775(n+1)]`
-/

namespace A140687.P10780109640633361081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A175887 (n + 1)).toNat + A007775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P10780109640633361081

namespace A140687

/-- `p?[A008486(A175887(n+1))+A007775(n+1)]` -/
def P10780109640633361081.Spec : Prop :=
  ∀ n, P10780109640633361081.a n = A140687 (n + 1)

end A140687

/-! ## A140687.P17825264747480356432

`p?[A005843(A155107(n+1))-A065033(n)]`
-/

namespace A140687.P17825264747480356432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A155107 (n + 1)).toNat - A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140687.P17825264747480356432

namespace A140687

/-- `p?[A005843(A155107(n+1))-A065033(n)]` -/
def P17825264747480356432.Spec : Prop :=
  ∀ n, P17825264747480356432.a n = A140687 (n + 1)

end A140687

/-!
# A140688: List of numbers which are both amicable and friendly.

The programs for A140688, there is no canonical definition to state claims against.
-/

/-! ## A140688.P1422171031275795823

`A063990(A305191(n+1)+A005101(n+1))`
-/

namespace A140688.P1422171031275795823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A305191 (n + 1) + A005101 (n + 1)).toNat

end

end A140688.P1422171031275795823

/-!
# A140689: a(n) = n*(3*n + 20).

The programs for A140689, the canonical program `A140689.P2638629226622628695` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140689 has offset 0).

The definition of A140689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+20)` (program `A140689.P2638629226622628695`, by `A140689.P2638629226622628695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140689.P2638629226622628695

`n*(3*n+20)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A140689

/-- `n*(3*n+20)` -/
def P2638629226622628695.Spec : Prop :=
  ∀ n, (P2638629226622628695.a n : ℤ) = A140689 n

theorem P2638629226622628695.correct : P2638629226622628695.Spec := by
  intro n
  simp only [A140689]

end A140689

/-! ## A140689.P12008369868072845641

`∑[a(n-1)+6]` with `a(0)=0, a(1)=23`
-/

namespace A140689.P12008369868072845641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 23] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140689.P12008369868072845641

namespace A140689

/-- `∑[a(n-1)+6]` -/
def P12008369868072845641.Spec : Prop :=
  ∀ n, (P12008369868072845641.a n : ℤ) = A140689 n

end A140689

/-! ## A140689.P12820791198852683555

`3*∑[ogf((8x-6x^2)/(1-2x+x^2))]-n`
-/

namespace A140689.P12820791198852683555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A140689.P12820791198852683555

namespace A140689

/-- `3*∑[ogf((8x-6x^2)/(1-2x+x^2))]-n` -/
def P12820791198852683555.Spec : Prop :=
  ∀ n, P12820791198852683555.a n = A140689 n

end A140689

/-! ## A140689.P6722905494009823376

`2*A140675(n)+n`
-/

namespace A140689.P6722905494009823376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140675 n + (n : ℤ)

end

end A140689.P6722905494009823376

namespace A140689

/-- `2*A140675(n)+n` -/
def P6722905494009823376.Spec : Prop :=
  ∀ n, P6722905494009823376.a n = A140689 n

end A140689

/-! ## A140689.P14785501495486544704

`A140681(n)+2*n`
-/

namespace A140689.P14785501495486544704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 n + (2 * n : ℤ)

end

end A140689.P14785501495486544704

namespace A140689

/-- `A140681(n)+2*n` -/
def P14785501495486544704.Spec : Prop :=
  ∀ n, P14785501495486544704.a n = A140689 n

theorem P14785501495486544704.correct : P14785501495486544704.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P14785501495486544704.a, A140689.P2638629226622628695.a, A140681, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P4234051217411563174

`2*A151542(n)-n`
-/

namespace A140689.P4234051217411563174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151542 n - (n : ℤ)

end

end A140689.P4234051217411563174

namespace A140689

/-- `2*A151542(n)-n` -/
def P4234051217411563174.Spec : Prop :=
  ∀ n, P4234051217411563174.a n = A140689 n

end A140689

/-! ## A140689.P5095754081214712196

`3*A028563(n)-n`
-/

namespace A140689.P5095754081214712196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028563 n - (n : ℤ)

end

end A140689.P5095754081214712196

namespace A140689

/-- `3*A028563(n)-n` -/
def P5095754081214712196.Spec : Prop :=
  ∀ n, P5095754081214712196.a n = A140689 n

theorem P5095754081214712196.correct : P5095754081214712196.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P5095754081214712196.a, A140689.P2638629226622628695.a, A028563, A028563.P15186121141906373506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P319805669588236180

`A140680(n)+4*n`
-/

namespace A140689.P319805669588236180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140680 n + (4 * n : ℤ)

end

end A140689.P319805669588236180

namespace A140689

/-- `A140680(n)+4*n` -/
def P319805669588236180.Spec : Prop :=
  ∀ n, P319805669588236180.a n = A140689 n

theorem P319805669588236180.correct : P319805669588236180.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P319805669588236180.a, A140689.P2638629226622628695.a, A140680, A140680.P11223240500650357628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P1676241069706051348

`A277976(n)-3*n`
-/

namespace A140689.P1676241069706051348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277976 n - (3 * n : ℤ)

end

end A140689.P1676241069706051348

namespace A140689

/-- `A277976(n)-3*n` -/
def P1676241069706051348.Spec : Prop :=
  ∀ n, P1676241069706051348.a n = A140689 n

theorem P1676241069706051348.correct : P1676241069706051348.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P1676241069706051348.a, A140689.P2638629226622628695.a, A277976, A277976.P2363283820760070820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P3252049335235751451

`n²+A139581(n)+n`
-/

namespace A140689.P3252049335235751451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A139581 n + (n : ℤ))

end

end A140689.P3252049335235751451

namespace A140689

/-- `n²+A139581(n)+n` -/
def P3252049335235751451.Spec : Prop :=
  ∀ n, P3252049335235751451.a n = A140689 n

theorem P3252049335235751451.correct : P3252049335235751451.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P3252049335235751451.a, A140689.P2638629226622628695.a, A139581, A139581.P16722424302175688649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P4952899674647427731

`A277979(n)-n*(n-2)`
-/

namespace A140689.P4952899674647427731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277979 n - (n : ℤ) * ((n : ℤ) - 2)

end

end A140689.P4952899674647427731

namespace A140689

/-- `A277979(n)-n*(n-2)` -/
def P4952899674647427731.Spec : Prop :=
  ∀ n, P4952899674647427731.a n = A140689 n

theorem P4952899674647427731.correct : P4952899674647427731.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P4952899674647427731.a, A140689.P2638629226622628695.a, A277979, A277979.P8157014002560634549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P7086689357946883306

`A008604(n)+A000567(n)`
-/

namespace A140689.P7086689357946883306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n + A000567 n

end

end A140689.P7086689357946883306

namespace A140689

/-- `A008604(n)+A000567(n)` -/
def P7086689357946883306.Spec : Prop :=
  ∀ n, P7086689357946883306.a n = A140689 n

theorem P7086689357946883306.correct : P7086689357946883306.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P7086689357946883306.a, A140689.P2638629226622628695.a, A000567, A000567.P17850767079432249295.a, A008604, A008604.P4469911331699551473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P11217833037144987613

`A028896(n)+A008599(n)`
-/

namespace A140689.P11217833037144987613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A008599 n

end

end A140689.P11217833037144987613

namespace A140689

/-- `A028896(n)+A008599(n)` -/
def P11217833037144987613.Spec : Prop :=
  ∀ n, P11217833037144987613.a n = A140689 n

theorem P11217833037144987613.correct : P11217833037144987613.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P11217833037144987613.a, A140689.P2638629226622628695.a, A008599, A008599.P9337740256108162749.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P8100038942284654890

`A033428(n)+A008602(n)`
-/

namespace A140689.P8100038942284654890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A008602 n

end

end A140689.P8100038942284654890

namespace A140689

/-- `A033428(n)+A008602(n)` -/
def P8100038942284654890.Spec : Prop :=
  ∀ n, P8100038942284654890.a n = A140689 n

theorem P8100038942284654890.correct : P8100038942284654890.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P8100038942284654890.a, A140689.P2638629226622628695.a, A008602, A008602.P10803716924039054280.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P265857118127202318

`A045944(n)+A008600(n)`
-/

namespace A140689.P265857118127202318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + A008600 n

end

end A140689.P265857118127202318

namespace A140689

/-- `A045944(n)+A008600(n)` -/
def P265857118127202318.Spec : Prop :=
  ∀ n, P265857118127202318.a n = A140689 n

theorem P265857118127202318.correct : P265857118127202318.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P265857118127202318.a, A140689.P2638629226622628695.a, A008600, A008600.P8081908058967824863.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P14338451639126059910

`A049450(n)+A008603(n)`
-/

namespace A140689.P14338451639126059910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + A008603 n

end

end A140689.P14338451639126059910

namespace A140689

/-- `A049450(n)+A008603(n)` -/
def P14338451639126059910.Spec : Prop :=
  ∀ n, P14338451639126059910.a n = A140689 n

theorem P14338451639126059910.correct : P14338451639126059910.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P14338451639126059910.a, A140689.P2638629226622628695.a, A008603, A008603.P13373765567278526098.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P14207381832171538371

`A049451(n)+A008601(n)`
-/

namespace A140689.P14207381832171538371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + A008601 n

end

end A140689.P14207381832171538371

namespace A140689

/-- `A049451(n)+A008601(n)` -/
def P14207381832171538371.Spec : Prop :=
  ∀ n, P14207381832171538371.a n = A140689 n

theorem P14207381832171538371.correct : P14207381832171538371.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P14207381832171538371.a, A140689.P2638629226622628695.a, A008601, A008601.P146696909524110912.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P6495970427133290170

`A067725(n)+A008596(n)`
-/

namespace A140689.P6495970427133290170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + A008596 n

end

end A140689.P6495970427133290170

namespace A140689

/-- `A067725(n)+A008596(n)` -/
def P6495970427133290170.Spec : Prop :=
  ∀ n, P6495970427133290170.a n = A140689 n

theorem P6495970427133290170.correct : P6495970427133290170.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P6495970427133290170.a, A140689.P2638629226622628695.a, A008596, A008596.P5483684624845691048.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P15388566585094170108

`A120071(n)+A001105(n)`
-/

namespace A140689.P15388566585094170108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120071 n + A001105 n

end

end A140689.P15388566585094170108

namespace A140689

/-- `A120071(n)+A001105(n)` -/
def P15388566585094170108.Spec : Prop :=
  ∀ n, P15388566585094170108.a n = A140689 n

theorem P15388566585094170108.correct : P15388566585094170108.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P15388566585094170108.a, A140689.P2638629226622628695.a, A001105, A001105.P6098599260439307493.a, A120071, A120071.P10160882043029890963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-! ## A140689.P6690429421896819247

`A132763(n)+A000384(n)`
-/

namespace A140689.P6690429421896819247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132763 n + A000384 n

end

end A140689.P6690429421896819247

namespace A140689

/-- `A132763(n)+A000384(n)` -/
def P6690429421896819247.Spec : Prop :=
  ∀ n, P6690429421896819247.a n = A140689 n

theorem P6690429421896819247.correct : P6690429421896819247.Spec := by
  intro n
  simp only [A140689, Nat.add_sub_cancel, A140689.P6690429421896819247.a, A140689.P2638629226622628695.a, A000384, A000384.P5392390561999168282.a, A132763, A132763.P15204131958599443596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140689

/-!
# A140690: A positive integer n is included if n written in binary can be subdivided into a number of runs all of equal-length, the first run from the left consisting of all 1's, the next run consisting of all 0's, the next run consisting of all 1's, the next run consisting of all 0's, etc.

The programs for A140690, there is no canonical definition to state claims against.
-/

/-! ## A140690.P13118251404781364494

`∩[A037016(n+1), A175020(n+1)]`
-/

namespace A140690.P13118251404781364494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140690.P13118251404781364494

/-! ## A140690.P14194309525717124176

`∩[A037014(n+1), A044918(n+1)]`
-/

namespace A140690.P14194309525717124176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140690.P14194309525717124176

/-! ## A140690.P15250437652668019341

`∩[A037016(n+1), A044918(n+1)]`
-/

namespace A140690.P15250437652668019341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140690.P15250437652668019341

/-! ## A140690.P13776117158649238243

`∩[A044918(n+1), A175326(n+1)]`
-/

namespace A140690.P13776117158649238243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140690.P13776117158649238243

/-! ## A140690.P9843647230409086522

`∩[A061854(n+1), A175020(n+1)]`
-/

namespace A140690.P9843647230409086522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140690.P9843647230409086522

/-!
# A140691: Suppress the zeros in A126441 and resort the natural numbers as illustrated in sequence A136101.

The programs for A140691, there is no canonical definition to state claims against.
-/

/-! ## A140691.P5242237960223026006

`A059894(A161919(A166276(A171429(n+1))))`
-/

namespace A140691.P5242237960223026006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A161919 (A166276 (A171429 (n + 1)).toNat).toNat).toNat

end

end A140691.P5242237960223026006

/-!
# A140692: Natural numbers which map to the cyclic partitions; cf. A140691 for the complete set.

The programs for A140692, there is no canonical definition to state claims against.
-/

/-! ## A140692.P776220413389213003

`filter[A140691(n+1), A135528(#)]`
-/

namespace A140692.P776220413389213003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A140692.P776220413389213003

/-! ## A140692.P12457813980726020966

`filter[A140691(n+1), A266591(#)]`
-/

namespace A140692.P12457813980726020966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A140692.P12457813980726020966

/-!
# A140694: a(n) = A014963(n) * A063659(n).

The programs for A140694, the canonical program `A140694.P13182129983530524897` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140694 has offset 1).

The definition of A140694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A063659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140694.P13182129983530524897

`A014963(n+1)*A063659(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A140694

/-- `A014963(n+1)*A063659(n+1)` -/
def P13182129983530524897.Spec : Prop :=
  ∀ n, P13182129983530524897.a n = A140694 (n + 1)

theorem P13182129983530524897.correct : P13182129983530524897.Spec := by
  intro n
  simp only [A140694, Nat.add_sub_cancel]

end A140694

/-! ## A140694.P5315390262311063933

`A254520(n+1)/(n+1)*ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A140694.P5315390262311063933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254520 (n + 1) : ℚ) / (n + 1 : ℚ) * (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ)

end

end A140694.P5315390262311063933

namespace A140694

/-- `A254520(n+1)/(n+1)*ceil((n+1)/∏{p}[n+1, (n+1)/#])` -/
def P5315390262311063933.Spec : Prop :=
  ∀ n, P5315390262311063933.a n = (A140694 (n + 1) : ℚ)

end A140694

/-! ## A140694.P4940539049302543640

`ceil((n+1)/∏{p}[n+1, (n+1)/#])*∑{d}[n+1, #*A271102((n+1)/#)]`
-/

namespace A140694.P4940539049302543640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ * (∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A140694.P4940539049302543640

namespace A140694

/-- `ceil((n+1)/∏{p}[n+1, (n+1)/#])*∑{d}[n+1, #*A271102((n+1)/#)]` -/
def P4940539049302543640.Spec : Prop :=
  ∀ n, P4940539049302543640.a n = A140694 (n + 1)

end A140694

/-! ## A140694.P10336072861669962028

`A254520(n+1)/A048671(n+1)`
-/

namespace A140694.P10336072861669962028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254520 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ)

end

end A140694.P10336072861669962028

namespace A140694

/-- `A254520(n+1)/A048671(n+1)` -/
def P10336072861669962028.Spec : Prop :=
  ∀ n, P10336072861669962028.a n = (A140694 (n + 1) : ℚ)

end A140694

/-! ## A140694.P11175844196347071969

`A007947(ceil((n+1)/∏{p}[n+1, (n+1)/#]))*A063659(n+1)`
-/

namespace A140694.P11175844196347071969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat * A063659 (n + 1)

end

end A140694.P11175844196347071969

namespace A140694

/-- `A007947(ceil((n+1)/∏{p}[n+1, (n+1)/#]))*A063659(n+1)` -/
def P11175844196347071969.Spec : Prop :=
  ∀ n, P11175844196347071969.a n = A140694 (n + 1)

end A140694

/-!
# A140695: A number n is included if the number of positive divisors of n is neither a divisor of n nor is coprime to n.

The programs for A140695, there is no canonical definition to state claims against.
-/

/-! ## A140695.P811954639237187046

`eq[2, A304571(A000005(n+1)+C(n+1, 2))+1]+1`
-/

namespace A140695.P811954639237187046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (A000005 (n + 1) + (Nat.choose (n + 1) 2 : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140695.P811954639237187046

/-! ## A140695.P5402823524842484183

`∩[A226746(n+1), A392024(n+1)]`
-/

namespace A140695.P5402823524842484183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140695.P5402823524842484183

/-! ## A140695.P9889786432281426305

`∩[A138891(n+1), A392024(n+1)]`
-/

namespace A140695.P9889786432281426305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140695.P9889786432281426305

/-! ## A140695.P7853512205140876345

`lt[A373672(2*n+3), A257991(n+2)]`
-/

namespace A140695.P7853512205140876345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373672 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A140695.P7853512205140876345

/-! ## A140695.P16049692590283154157

`eq[A039728(n+1), A276638(n)]`
-/

namespace A140695.P16049692590283154157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140695.P16049692590283154157

/-!
# A140696: a(n) = the number of positive divisors of A140695(n).

The programs for A140696, there is no canonical definition to state claims against.
-/

/-! ## A140696.P17622735052238585529

`A000005(A140695(n+1))`
-/

namespace A140696.P17622735052238585529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140695 (n + 1)).toNat

end

end A140696.P17622735052238585529

/-! ## A140696.P9467799562156950671

`A320111(2*A140695(n+1))`
-/

namespace A140696.P9467799562156950671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A140695 (n + 1)).toNat

end

end A140696.P9467799562156950671

/-! ## A140696.P7174410286877396328

`A112329(4*A140695(n+1))`
-/

namespace A140696.P7174410286877396328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A140695 (n + 1)).toNat

end

end A140696.P7174410286877396328

/-! ## A140696.P15982011806219209377

`A299480(4*A140695(n+1))`
-/

namespace A140696.P15982011806219209377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (4 * A140695 (n + 1)).toNat

end

end A140696.P15982011806219209377

/-! ## A140696.P3815635112493014253

`∑{d}[A140695(n+1), A054977(#)]`
-/

namespace A140696.P3815635112493014253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A140696.P3815635112493014253

/-! ## A140696.P2697623724921008515

`∑{d}[A140695(n+1), A057427(#)]`
-/

namespace A140696.P2697623724921008515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A140696.P2697623724921008515

/-! ## A140696.P6259550586190992943

`∑{d}[A140695(n+1), A010051(A000040(#))]`
-/

namespace A140696.P6259550586190992943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 (A000040 d).toNat

end

end A140696.P6259550586190992943

/-!
# A140697: Mobius transform of A000082.

The programs for A140697, the canonical program `A140697.P6410494480729606754` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140697 has offset 1).

The definition of A140697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140697.P2391030450136212755

`∑{d}[n+1, A000082(#)*A008683((n+1)/#)]`
-/

namespace A140697.P2391030450136212755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P2391030450136212755

namespace A140697

/-- `∑{d}[n+1, A000082(#)*A008683((n+1)/#)]` -/
def P2391030450136212755.Spec : Prop :=
  ∀ n, P2391030450136212755.a n = A140697 (n + 1)

end A140697

/-! ## A140697.P15155643498644840311

`∑{d}[n+1, A007431(#)*A034676((n+1)/#)]`
-/

namespace A140697.P15155643498644840311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A034676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P15155643498644840311

namespace A140697

/-- `∑{d}[n+1, A007431(#)*A034676((n+1)/#)]` -/
def P15155643498644840311.Spec : Prop :=
  ∀ n, P15155643498644840311.a n = A140697 (n + 1)

end A140697

/-! ## A140697.P6410494480729606754

`∑{d}[n+1, A007427(#)*A065764((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A140697

/-- `∑{d}[n+1, A007427(#)*A065764((n+1)/#)]` -/
def P6410494480729606754.Spec : Prop :=
  ∀ n, P6410494480729606754.a n = A140697 (n + 1)

theorem P6410494480729606754.correct : P6410494480729606754.Spec := by
  intro n
  simp only [A140697, Nat.add_sub_cancel]

end A140697

/-! ## A140697.P18348189418686226899

`∑{d}[n+1, A002618(#)*A078439((n+1)/#)]`
-/

namespace A140697.P18348189418686226899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P18348189418686226899

namespace A140697

/-- `∑{d}[n+1, A002618(#)*A078439((n+1)/#)]` -/
def P18348189418686226899.Spec : Prop :=
  ∀ n, P18348189418686226899.a n = A140697 (n + 1)

end A140697

/-! ## A140697.P1247792021584748683

`∑{d}[n+1, A000010(#)*A254520((n+1)/#)]`
-/

namespace A140697.P1247792021584748683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P1247792021584748683

namespace A140697

/-- `∑{d}[n+1, A000010(#)*A254520((n+1)/#)]` -/
def P1247792021584748683.Spec : Prop :=
  ∀ n, P1247792021584748683.a n = A140697 (n + 1)

end A140697

/-! ## A140697.P7510060212142647325

`∑{d}[n+1, A048250(#)*A321322((n+1)/#)]`
-/

namespace A140697.P7510060212142647325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P7510060212142647325

namespace A140697

/-- `∑{d}[n+1, A048250(#)*A321322((n+1)/#)]` -/
def P7510060212142647325.Spec : Prop :=
  ∀ n, P7510060212142647325.a n = A140697 (n + 1)

end A140697

/-! ## A140697.P12955014130188227604

`∑{d}[n+1, A055615(#)*A390262((n+1)/#)]`
-/

namespace A140697.P12955014130188227604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P12955014130188227604

namespace A140697

/-- `∑{d}[n+1, A055615(#)*A390262((n+1)/#)]` -/
def P12955014130188227604.Spec : Prop :=
  ∀ n, P12955014130188227604.a n = A140697 (n + 1)

end A140697

/-!
# A140698: This sequence needs a meaningful name.

The programs for A140698, there is no canonical definition to state claims against.
-/

/-! ## A140698.P569828387826145842

`A330025(A317710(A125232(n+1)))`
-/

namespace A140698.P569828387826145842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A317710 (A125232 (n + 1)).toNat).toNat

end

end A140698.P569828387826145842

/-! ## A140698.P9585518535468970124

`A011600(lcm(A176639(n), A188317(n)))`
-/

namespace A140698.P9585518535468970124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (Int.lcm (A176639 n) (A188317 n))

end

end A140698.P9585518535468970124

/-! ## A140698.P9049175916508600452

`A332814(10*A095420(A306186(n+1)))`
-/

namespace A140698.P9049175916508600452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (10 * A095420 (A306186 (n + 1)).toNat).toNat

end

end A140698.P9049175916508600452

/-! ## A140698.P10583145432991328061

`A010892(A120143(n+1))^A122285(n)`
-/

namespace A140698.P10583145432991328061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 (A120143 (n + 1)).toNat : ℚ) ^ (A122285 n : ℤ)

end

end A140698.P10583145432991328061

/-! ## A140698.P5098875865726326230

`A000484(floor(log2(n+1))*A391751(2*n+5))`
-/

namespace A140698.P5098875865726326230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000484 ((Nat.log 2 (n + 1) : ℤ) * A391751 (2 * n + 5)).toNat

end

end A140698.P5098875865726326230

/-!
# A140699: Triangle read by rows: T(n,k) = moebius(k)*A014963(n/k) if k divides n, T(n,k) = 0 otherwise.

The programs for A140699, the canonical program `A140699.P12327101926967723336` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140699 has offset 1).

The definition of A140699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140699.P12327101926967723336

`A014963(A010766(n+1))*A054524(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A140699

/-- `A014963(A010766(n+1))*A054524(n+1)` -/
def P12327101926967723336.Spec : Prop :=
  ∀ n, P12327101926967723336.a n = A140699 (n + 1)

theorem P12327101926967723336.correct : P12327101926967723336.Spec := by
  intro n
  simp only [A140699, Nat.add_sub_cancel]

end A140699

/-! ## A140699.P6679414751307090290

`A014963(A049834(n+1))*A054524(n+1)`
-/

namespace A140699.P6679414751307090290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A049834 (n + 1)).toNat * A054524 (n + 1)

end

end A140699.P6679414751307090290

namespace A140699

/-- `A014963(A049834(n+1))*A054524(n+1)` -/
def P6679414751307090290.Spec : Prop :=
  ∀ n, P6679414751307090290.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P12857024572131457913

`A014963(A051537(n+1))*A054524(n+1)`
-/

namespace A140699.P12857024572131457913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051537 (n + 1)).toNat * A054524 (n + 1)

end

end A140699.P12857024572131457913

namespace A140699

/-- `A014963(A051537(n+1))*A054524(n+1)` -/
def P12857024572131457913.Spec : Prop :=
  ∀ n, P12857024572131457913.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P1301506930998178436

`A014963(A054531(n+1))*A054524(n+1)`
-/

namespace A140699.P1301506930998178436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054531 (n + 1)).toNat * A054524 (n + 1)

end

end A140699.P1301506930998178436

namespace A140699

/-- `A014963(A054531(n+1))*A054524(n+1)` -/
def P1301506930998178436.Spec : Prop :=
  ∀ n, P1301506930998178436.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P9228622473909035458

`A014963(A085383(n+1))*A054524(n+1)`
-/

namespace A140699.P9228622473909035458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A085383 (n + 1)).toNat * A054524 (n + 1)

end

end A140699.P9228622473909035458

namespace A140699

/-- `A014963(A085383(n+1))*A054524(n+1)` -/
def P9228622473909035458.Spec : Prop :=
  ∀ n, P9228622473909035458.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P1858492651230499249

`A014963(A234575(n+1))*A054524(n+1)`
-/

namespace A140699.P1858492651230499249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A234575 (n + 1)).toNat * A054524 (n + 1)

end

end A140699.P1858492651230499249

namespace A140699

/-- `A014963(A234575(n+1))*A054524(n+1)` -/
def P1858492651230499249.Spec : Prop :=
  ∀ n, P1858492651230499249.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P7148316641779413454

`A054527(n+1)*A140579(A286158(n+1))`
-/

namespace A140699.P7148316641779413454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A140579 (A286158 (n + 1)).toNat

end

end A140699.P7148316641779413454

namespace A140699

/-- `A054527(n+1)*A140579(A286158(n+1))` -/
def P7148316641779413454.Spec : Prop :=
  ∀ n, P7148316641779413454.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P7952524396322675551

`A054534(n+1)*A140579(A286158(n+1))`
-/

namespace A140699.P7952524396322675551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A140579 (A286158 (n + 1)).toNat

end

end A140699.P7952524396322675551

namespace A140699

/-- `A054534(n+1)*A140579(A286158(n+1))` -/
def P7952524396322675551.Spec : Prop :=
  ∀ n, P7952524396322675551.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P5431225938408257824

`A054524(n+1)*A138618(n+1)`
-/

namespace A140699.P5431225938408257824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A138618 (n + 1)

end

end A140699.P5431225938408257824

namespace A140699

/-- `A054524(n+1)*A138618(n+1)` -/
def P5431225938408257824.Spec : Prop :=
  ∀ n, P5431225938408257824.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P14695362025842705156

`A054524(n+1)*A140256(n+1)`
-/

namespace A140699.P14695362025842705156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A140256 (n + 1)

end

end A140699.P14695362025842705156

namespace A140699

/-- `A054524(n+1)*A140256(n+1)` -/
def P14695362025842705156.Spec : Prop :=
  ∀ n, P14695362025842705156.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P18332359032773750920

`A054527(n+1)*A140256(n+1)`
-/

namespace A140699.P18332359032773750920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A140256 (n + 1)

end

end A140699.P18332359032773750920

namespace A140699

/-- `A054527(n+1)*A140256(n+1)` -/
def P18332359032773750920.Spec : Prop :=
  ∀ n, P18332359032773750920.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P10321431601955925299

`A054534(n+1)*A140256(n+1)`
-/

namespace A140699.P10321431601955925299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A140256 (n + 1)

end

end A140699.P10321431601955925299

namespace A140699

/-- `A054534(n+1)*A140256(n+1)` -/
def P10321431601955925299.Spec : Prop :=
  ∀ n, P10321431601955925299.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P12439226335271567732

`A008683(A002260(n+1))*A140256(n+1)`
-/

namespace A140699.P12439226335271567732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A140256 (n + 1)

end

end A140699.P12439226335271567732

namespace A140699

/-- `A008683(A002260(n+1))*A140256(n+1)` -/
def P12439226335271567732.Spec : Prop :=
  ∀ n, P12439226335271567732.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P3788686246610383091

`A008683(A050873(n+1))*A140256(n+1)`
-/

namespace A140699.P3788686246610383091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A050873 (n + 1)).toNat * A140256 (n + 1)

end

end A140699.P3788686246610383091

namespace A140699

/-- `A008683(A050873(n+1))*A140256(n+1)` -/
def P3788686246610383091.Spec : Prop :=
  ∀ n, P3788686246610383091.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P14453185565331685115

`A008683(A123275(n+1))*A140256(n+1)`
-/

namespace A140699.P14453185565331685115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123275 (n + 1)).toNat * A140256 (n + 1)

end

end A140699.P14453185565331685115

namespace A140699

/-- `A008683(A123275(n+1))*A140256(n+1)` -/
def P14453185565331685115.Spec : Prop :=
  ∀ n, P14453185565331685115.a n = A140699 (n + 1)

end A140699

/-! ## A140699.P16811134870219038751

`A008683(A307662(n+1))*A140256(n+1)`
-/

namespace A140699.P16811134870219038751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A307662 (n + 1)).toNat * A140256 (n + 1)

end

end A140699.P16811134870219038751

namespace A140699

/-- `A008683(A307662(n+1))*A140256(n+1)` -/
def P16811134870219038751.Spec : Prop :=
  ∀ n, P16811134870219038751.a n = A140699 (n + 1)

end A140699

