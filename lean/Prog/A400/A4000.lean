import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C022
import Seq.B000.C030
import Seq.B000.C047
import Seq.B001.C000
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C004
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C016
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A400000: The city-building sequence: a(n) = the height h of the shortest building which can see exactly h earlier buildings.

The programs for A400000, there is no canonical definition to state claims against.
-/

/-! ## A400000.P6443244868483255649

`n-A400110(n+1)`
-/

namespace A400000.P6443244868483255649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400110 (n + 1)

end

end A400000.P6443244868483255649

/-! ## A400000.P10908529375949437954

`Δ[A397740(A028310(n))]`
-/

namespace A400000.P10908529375949437954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397740 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400000.P10908529375949437954

/-! ## A400000.P4377414209280164382

`A397740(n+1)-A397740(A028310(n))`
-/

namespace A400000.P4377414209280164382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397740 (n + 1) - A397740 (A028310 n).toNat

end

end A400000.P4377414209280164382

/-! ## A400000.P13996698203397162348

`A115721((lcm(2, n)/2)^(val(n+1, 2)+1))`
-/

namespace A400000.P13996698203397162348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115721 (SequenceMachineLib.roundAway (((Nat.lcm 2 n : ℚ) / 2) ^ (SequenceMachineLib.valuation (n + 1) 2 + 1))).toNat

end

end A400000.P13996698203397162348

/-! ## A400000.P247532531158882164

`A121534(gcd(floor((n+1)/2), n+1))%(∑{e}[1+n, #]+1)`
-/

namespace A400000.P247532531158882164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121534 (Int.gcd ⌊(n + 1 : ℚ) / 2⌋ (n + 1 : ℤ))) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ)

end

end A400000.P247532531158882164

/-!
# A400002: Start with a set of two adjacent points in a hexagonal lattice. At each iteration, add to the set the lattice points which are adjacent to exactly two points already in the set, but only if those two points are adjacent to each other. The sequence gives the number of points in the set after n iterations.

The programs for A400002, there is no canonical definition to state claims against.
-/

/-! ## A400002.P11028392231177489284

`∑[A109129(A191469(n+1)²)]`
-/

namespace A400002.P11028392231177489284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A191469 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400002.P11028392231177489284

/-! ## A400002.P10568031932547031855

`∑[A000005(1+A133847(3*n+5))]`
-/

namespace A400002.P10568031932547031855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 + A133847 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400002.P10568031932547031855

/-! ## A400002.P6989908361313868435

`A156726(A397831(2*n+3)+A000045(n))`
-/

namespace A400002.P6989908361313868435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A397831 (2 * n + 3) + A000045 n).toNat

end

end A400002.P6989908361313868435

/-! ## A400002.P2957902138062492233

`∑[A000005(A001160(n+1)+A280076(n+1))]`
-/

namespace A400002.P2957902138062492233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001160 (n + 1) + A280076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400002.P2957902138062492233

/-!
# A400003: The sequence of binary decisions that defines the unique infinite path in the base-10 comma child graph.

The programs for A400003, there is no canonical definition to state claims against.
-/

/-! ## A400003.P15868608790378501780

`A189723(A274154(n+1))`
-/

namespace A400003.P15868608790378501780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (A274154 (n + 1)).toNat

end

end A400003.P15868608790378501780

/-! ## A400003.P6120629288292370102

`A284505(A072520(n+2)%A367346(n+4))`
-/

namespace A400003.P6120629288292370102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 (Int.tmod (A072520 (n + 2)) (A367346 (n + 4))).toNat

end

end A400003.P6120629288292370102

/-! ## A400003.P7923253815409206886

`A284505(A072520(n+2))`
-/

namespace A400003.P7923253815409206886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 (A072520 (n + 2)).toNat

end

end A400003.P7923253815409206886

/-! ## A400003.P821443864967558921

`log2(A000002(A362777(n+1)*A397179(2*n+3)+1))`
-/

namespace A400003.P821443864967558921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000002 (A362777 (n + 1) * A397179 (2 * n + 3) + 1).toNat : ℝ)

end

end A400003.P821443864967558921

/-!
# A400005: Consider the square spiral with its cells numbered starting at 0. Three players, Red, Green and Blue, take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different color. Sequence lists squares occupied by a Red knight.

The programs for A400005, there is no canonical definition to state claims against.
-/

/-! ## A400005.P7557246517625559431

`comp[∪[∪[A395646(n+1), A395647(n+1)], A395648(n+1)]]`
-/

namespace A400005.P7557246517625559431
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395646 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395647 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395648 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A400005.P7557246517625559431

/-! ## A400005.P3368151612275957175

`lt[A049347(A395649(n)), 0]`
-/

namespace A400005.P3368151612275957175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A395649 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A400005.P3368151612275957175

/-! ## A400005.P4501176470274107636

`eq[A049347(3*n+1), A049347(A395649(n))]`
-/

namespace A400005.P4501176470274107636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A395649 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400005.P4501176470274107636

/-! ## A400005.P8281393000967266707

`A334108(A400511(n+1))+A130483(2*n)`
-/

namespace A400005.P8281393000967266707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A400511 (n + 1)).toNat + A130483 (2 * n)

end

end A400005.P8281393000967266707

