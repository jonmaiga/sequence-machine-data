import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C022
import Seq.B000.C031
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A400000: The city-building sequence: a(n) = the height h of the shortest building which can see exactly h earlier buildings.

The programs for A400000, there is no canonical definition to state claims against.
-/

/-! ## A400000.P6304832898555001872

`n-A400110(1+n)`
-/

namespace A400000.P6304832898555001872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400110 (1 + n)

end

end A400000.P6304832898555001872

/-! ## A400000.P16446025705005347749

`Δ[A397740(round(sqrt(n²+1)))]`
-/

namespace A400000.P16446025705005347749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397740 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400000.P16446025705005347749

/-! ## A400000.P11372428810903712828

`Δ[A397740(n)+a((n+1)%2)]` with `a(0)=0`
-/

namespace A400000.P11372428810903712828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A397740 n + f1 ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400000.P11372428810903712828

/-! ## A400000.P13573663474291626136

`A001489(A400110(n+1))+n`
-/

namespace A400000.P13573663474291626136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A400110 (n + 1)).toNat + (n : ℤ)

end

end A400000.P13573663474291626136

/-! ## A400000.P13603725135522253887

`A397740(1+n)-A397740(A028310(n))`
-/

namespace A400000.P13603725135522253887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397740 (1 + n) - A397740 (A028310 n).toNat

end

end A400000.P13603725135522253887

/-!
# A400002: Start with a set of two adjacent points in a hexagonal lattice. At each iteration, add to the set the lattice points which are adjacent to exactly two points already in the set, but only if those two points are adjacent to each other. The sequence gives the number of points in the set after n iterations.

The programs for A400002, there is no canonical definition to state claims against.
-/

/-! ## A400002.P4063952983037125515

`∑[A000005(4+A116485(n))]`
-/

namespace A400002.P4063952983037125515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 + A116485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400002.P4063952983037125515

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

/-! ## A400002.P913042513648386668

`∑[A061389(A022894(n+2)+1)]`
-/

namespace A400002.P913042513648386668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A022894 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400002.P913042513648386668

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

/-! ## A400002.P8553710340136552336

`∑[A000005(A010904(n)-A109417(n+1))]`
-/

namespace A400002.P8553710340136552336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A010904 n - A109417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400002.P8553710340136552336

/-!
# A400003: The sequence of binary decisions that defines the unique infinite path in the base-10 comma child graph.

The programs for A400003, there is no canonical definition to state claims against.
-/

/-! ## A400003.P15346841906014837869

`A267113(A339769(n+3)+A001358(n+1))`
-/

namespace A400003.P15346841906014837869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A339769 (n + 3) + A001358 (n + 1)).toNat

end

end A400003.P15346841906014837869

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

/-! ## A400003.P16841564050011885249

`A030308(A211644(n)+A001222(n+1))`
-/

namespace A400003.P16841564050011885249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A211644 n + A001222 (n + 1)).toNat

end

end A400003.P16841564050011885249

/-!
# A400004: Half the minimum surface area of a rectangular box with positive integer side lengths and volume at least n.

The programs for A400004, there is no canonical definition to state claims against.
-/

/-! ## A400004.P7270930384138994041

`fp[A355880(2*n+1)]`
-/

namespace A400004.P7270930384138994041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A400004.P7270930384138994041

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

/-! ## A400005.P1020064138424296620

`eq[0, A049347(A395649(n))+2-A060576(n)]`
-/

namespace A400005.P1020064138424296620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A395649 n).toNat + 2 - A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400005.P1020064138424296620

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

