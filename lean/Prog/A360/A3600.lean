import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
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
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A360000: Number of directed cycles in the 2-Fibonacci digraph of order n.

The programs for A360000, there is no canonical definition to state claims against.
-/

/-! ## A360000.P7365580812133599540

`A284511(A330642(n+2)+A330626(n))`
-/

namespace A360000.P7365580812133599540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284511 (A330642 (n + 2) + A330626 n).toNat

end

end A360000.P7365580812133599540

/-!
# A360002: Expansion of Product_{k>=0} (1 - x^(k^2+5)) in powers of x.

The programs for A360002, there is no canonical definition to state claims against.
-/

/-! ## A360002.P17701881683730304126

`A322796(xor(A245563(3*n), A255835(n)))`
-/

namespace A360002.P17701881683730304126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (Int.xor (A245563 (3 * n)) (A255835 n)).toNat

end

end A360002.P17701881683730304126

/-! ## A360002.P9104608854442892671

`A014016(A014603(n+1)-A192013(n+1))`
-/

namespace A360002.P9104608854442892671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A014603 (n + 1) - A192013 (n + 1)).toNat

end

end A360002.P9104608854442892671

/-! ## A360002.P13255170100491095036

`A156707(A334078(2*n+1)+A235800(n+1))`
-/

namespace A360002.P13255170100491095036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (A334078 (2 * n + 1) + A235800 (n + 1)).toNat

end

end A360002.P13255170100491095036

/-! ## A360002.P7050855949584306861

`A074290(A100683(n)+10)`
-/

namespace A360002.P7050855949584306861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (A100683 n + 10).toNat

end

end A360002.P7050855949584306861

/-! ## A360002.P2750192204498488872

`A316569(record[A111791(3*n+4)])`
-/

namespace A360002.P2750192204498488872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111791 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A360002.P2750192204498488872

/-!
# A360005: Two times the median of the multiset of prime indices of n.

The programs for A360005, there is no canonical definition to state claims against.
-/

/-! ## A360005.P5253422455044871320

`A363942(n+2)+A363941(n+2)`
-/

namespace A360005.P5253422455044871320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363942 (n + 2) + A363941 (n + 2)

end

end A360005.P5253422455044871320

/-! ## A360005.P215219168814618645

`A056239(A361725(2*(n+2))*A361725(n+2))`
-/

namespace A360005.P215219168814618645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A361725 (2 * (n + 2)) * A361725 (n + 2)).toNat

end

end A360005.P215219168814618645

/-! ## A360005.P893807275334831020

`A363942(2*(n+2))+A363942(n+2)`
-/

namespace A360005.P893807275334831020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363942 (2 * (n + 2)) + A363942 (n + 2)

end

end A360005.P893807275334831020

/-! ## A360005.P5097939109904077421

`A363487(A353694(n+2))+A363487(n+2)`
-/

namespace A360005.P5097939109904077421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363487 (A353694 (n + 2)).toNat + A363487 (n + 2)

end

end A360005.P5097939109904077421

/-! ## A360005.P12858892262553098437

`A363219(A122111(n+2))`
-/

namespace A360005.P12858892262553098437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363219 (A122111 (n + 2)).toNat

end

end A360005.P12858892262553098437

/-!
# A360007: Positions of first appearances in the sequence giving the median of the prime indices of n (A360005(n)/2).

The programs for A360007, there is no canonical definition to state claims against.
-/

/-! ## A360007.P8508715614969693393

`filter[A354925(n+1), A391747(#)]`
-/

namespace A360007.P8508715614969693393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A360007.P8508715614969693393

/-! ## A360007.P1189933773114265771

`filter[A391909(n+1), A354923(#)]`
-/

namespace A360007.P1189933773114265771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A360007.P1189933773114265771

/-! ## A360007.P12642000451319800001

`∩[A354925(n+1), A391909(n+1)]`
-/

namespace A360007.P12642000451319800001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360007.P12642000451319800001

/-! ## A360007.P9471418673589347533

`record[A006530(n+1)*A353352(n+1)]`
-/

namespace A360007.P9471418673589347533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A353352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360007.P9471418673589347533

/-! ## A360007.P15021863626554329986

`record[A006530(n+1)*A353372(n+1)]`
-/

namespace A360007.P15021863626554329986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A353372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360007.P15021863626554329986

/-! ## A360007.P12811879051671724124

`record[A325351(n+1)/A353332(n+1)]`
-/

namespace A360007.P12811879051671724124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325351 (n + 1) : ℚ) / (A353332 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360007.P12811879051671724124

/-! ## A360007.P5959684147613798740

`eq[A052126(n+1), A353372(n+1)]+1`
-/

namespace A360007.P5959684147613798740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360007.P5959684147613798740

/-! ## A360007.P11962631111429707304

`eq[A353332(n+1), A354923(n+1)]+1`
-/

namespace A360007.P11962631111429707304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360007.P11962631111429707304

/-! ## A360007.P3628139484198796749

`∪[A001747(2*n+1), A006005(n+1)]`
-/

namespace A360007.P3628139484198796749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360007.P3628139484198796749

/-! ## A360007.P12096455796290948210

`∪[A001747(2*n+1), A008578(n+1)]`
-/

namespace A360007.P12096455796290948210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360007.P12096455796290948210

/-!
# A360009: Numbers whose prime indices have integer mean and integer median.

The programs for A360009, there is no canonical definition to state claims against.
-/

/-! ## A360009.P585924857479775472

`A316413(comp[48*n])`
-/

namespace A360009.P585924857479775472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A360009.P585924857479775472

/-! ## A360009.P11302942859831372048

`filter[A316413(n+1), A168185(#)]`
-/

namespace A360009.P11302942859831372048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A360009.P11302942859831372048

/-! ## A360009.P13431047137719718629

`∩[A023805(n+1), A316413(n+1)]`
-/

namespace A360009.P13431047137719718629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360009.P13431047137719718629

/-! ## A360009.P15324940145459697265

`∩[A168186(n+1), A316413(n+1)]`
-/

namespace A360009.P15324940145459697265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360009.P15324940145459697265

/-! ## A360009.P3634765976001949825

`record[A316413(n+1)%A211457(2*n+1)]`
-/

namespace A360009.P3634765976001949825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316413 (n + 1)) (A211457 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360009.P3634765976001949825

/-! ## A360009.P8496197610873093501

`∪[A000040(n+1), A316413(A209061(n+1))]`
-/

namespace A360009.P8496197610873093501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (A209061 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360009.P8496197610873093501

/-! ## A360009.P17346679732272280839

`∪[A007528(n+1), A316413(A209061(n+1))]`
-/

namespace A360009.P17346679732272280839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (A209061 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360009.P17346679732272280839

/-! ## A360009.P9862674741352570571

`record[A316413(n+1)/A008284(A008284(n+1))]`
-/

namespace A360009.P9862674741352570571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316413 (n + 1) : ℚ) / (A008284 (A008284 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360009.P9862674741352570571

/-!
# A360010: First part of the n-th weakly decreasing triple of positive integers sorted lexicographically. Each n > 0 is repeated A000217(n) times.

The programs for A360010, the canonical program `A360010.P17961547097730859062` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360010 has offset 1).

The definition of A360010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360010.P17961547097730859062

`A056556(n)+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A360010

/-- `A056556(n)+1` -/
def P17961547097730859062.Spec : Prop :=
  ∀ n, P17961547097730859062.a n = A360010 (n + 1)

theorem P17961547097730859062.correct : P17961547097730859062.Spec := by
  intro n
  simp only [A360010, Nat.add_sub_cancel]

end A360010

/-! ## A360010.P9959772028573926633

`A331195(3*n)+1`
-/

namespace A360010.P9959772028573926633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (3 * n) + 1

end

end A360010.P9959772028573926633

namespace A360010

/-- `A331195(3*n)+1` -/
def P9959772028573926633.Spec : Prop :=
  ∀ n, P9959772028573926633.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P14026971526384919896

`∑[char[C(n, 3)]]`
-/

namespace A360010.P14026971526384919896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360010.P14026971526384919896

namespace A360010

/-- `∑[char[C(n, 3)]]` -/
def P14026971526384919896.Spec : Prop :=
  ∀ n, (P14026971526384919896.a n : ℤ) = A360010 (n + 1)

end A360010

/-! ## A360010.P10339592509796672200

`∑[char[∑[∑[n]]]]`
-/

namespace A360010.P10339592509796672200
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360010.P10339592509796672200

namespace A360010

/-- `∑[char[∑[∑[n]]]]` -/
def P10339592509796672200.Spec : Prop :=
  ∀ n, (P10339592509796672200.a n : ℤ) = A360010 (n + 1)

end A360010

/-! ## A360010.P18229144212293308298

`log2(∏[char[C(n, 3)]+1])`
-/

namespace A360010.P18229144212293308298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A360010.P18229144212293308298

namespace A360010

/-- `log2(∏[char[C(n, 3)]+1])` -/
def P18229144212293308298.Spec : Prop :=
  ∀ n, P18229144212293308298.a n = (A360010 (n + 1) : ℝ)

end A360010

/-! ## A360010.P5999573205707215685

`char[C(n, 3)]+a(n-1)` with `a(0)=1`
-/

namespace A360010.P5999573205707215685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A360010.P5999573205707215685

namespace A360010

/-- `char[C(n, 3)]+a(n-1)` -/
def P5999573205707215685.Spec : Prop :=
  ∀ n, (P5999573205707215685.a n : ℤ) = A360010 (n + 1)

end A360010

/-! ## A360010.P14392107617174358289

`comp[C(n+2, 3)+n]-n`
-/

namespace A360010.P14392107617174358289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A360010.P14392107617174358289

namespace A360010

/-- `comp[C(n+2, 3)+n]-n` -/
def P14392107617174358289.Spec : Prop :=
  ∀ n, P14392107617174358289.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P6849443797516294211

`comp[∑[a(n-1)+n]]-n` with `a(0)=0, a(1)=2`
-/

namespace A360010.P6849443797516294211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A360010.P6849443797516294211

namespace A360010

/-- `comp[∑[a(n-1)+n]]-n` -/
def P6849443797516294211.Spec : Prop :=
  ∀ n, P6849443797516294211.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P12820313854889466795

`A194847(n)-1`
-/

namespace A360010.P12820313854889466795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 n - 1

end

end A360010.P12820313854889466795

namespace A360010

/-- `A194847(n)-1` -/
def P12820313854889466795.Spec : Prop :=
  ∀ n, P12820313854889466795.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P9250167286175144241

`A002024(A108581(n+1))`
-/

namespace A360010.P9250167286175144241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A108581 (n + 1)).toNat

end

end A360010.P9250167286175144241

namespace A360010

/-- `A002024(A108581(n+1))` -/
def P9250167286175144241.Spec : Prop :=
  ∀ n, P9250167286175144241.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P4551607853036880837

`A002024(A123579(n+1))`
-/

namespace A360010.P4551607853036880837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A123579 (n + 1)).toNat

end

end A360010.P4551607853036880837

namespace A360010

/-- `A002024(A123579(n+1))` -/
def P4551607853036880837.Spec : Prop :=
  ∀ n, P4551607853036880837.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P10418267069725759287

`A194848(n)+A056559(n)`
-/

namespace A360010.P10418267069725759287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 n + A056559 n

end

end A360010.P10418267069725759287

namespace A360010

/-- `A194848(n)+A056559(n)` -/
def P10418267069725759287.Spec : Prop :=
  ∀ n, P10418267069725759287.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P9726599154101145273

`A007318(A108581(n+1)+1)`
-/

namespace A360010.P9726599154101145273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A108581 (n + 1) + 1).toNat

end

end A360010.P9726599154101145273

namespace A360010

/-- `A007318(A108581(n+1)+1)` -/
def P9726599154101145273.Spec : Prop :=
  ∀ n, P9726599154101145273.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P4578420982201607009

`A002024(A274079(n+1))-1`
-/

namespace A360010.P4578420982201607009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A274079 (n + 1)).toNat - 1

end

end A360010.P4578420982201607009

namespace A360010

/-- `A002024(A274079(n+1))-1` -/
def P4578420982201607009.Spec : Prop :=
  ∀ n, P4578420982201607009.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P16582319685738804566

`A173964(n+1)+A056560(n)`
-/

namespace A360010.P16582319685738804566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173964 (n + 1) + A056560 n

end

end A360010.P16582319685738804566

namespace A360010

/-- `A173964(n+1)+A056560(n)` -/
def P16582319685738804566.Spec : Prop :=
  ∀ n, P16582319685738804566.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P12114614169342347300

`A131821(A108581(2*n+1-n))`
-/

namespace A360010.P12114614169342347300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (A108581 (2 * n + 1 - n)).toNat

end

end A360010.P12114614169342347300

namespace A360010

/-- `A131821(A108581(2*n+1-n))` -/
def P12114614169342347300.Spec : Prop :=
  ∀ n, P12114614169342347300.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P8260186435386281509

`A107436(A123579(n+2))`
-/

namespace A360010.P8260186435386281509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (A123579 (n + 2)).toNat

end

end A360010.P8260186435386281509

namespace A360010

/-- `A107436(A123579(n+2))` -/
def P8260186435386281509.Spec : Prop :=
  ∀ n, P8260186435386281509.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P365371947762037207

`A123578(A123579(n+2)-1)`
-/

namespace A360010.P365371947762037207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A123579 (n + 2) - 1).toNat

end

end A360010.P365371947762037207

namespace A360010

/-- `A123578(A123579(n+2)-1)` -/
def P365371947762037207.Spec : Prop :=
  ∀ n, P365371947762037207.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P10298263970442552854

`A220104(Δ[n²])`
-/

namespace A360010.P10298263970442552854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A360010.P10298263970442552854

namespace A360010

/-- `A220104(Δ[n²])` -/
def P10298263970442552854.Spec : Prop :=
  ∀ n, P10298263970442552854.a n = A360010 (n + 1)

end A360010

/-! ## A360010.P7785421748525147342

`filter[A220104(2*n+1), A102609(#)]`
-/

namespace A360010.P7785421748525147342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A360010.P7785421748525147342

namespace A360010

/-- `filter[A220104(2*n+1), A102609(#)]` -/
def P7785421748525147342.Spec : Prop :=
  ∀ n, P7785421748525147342.a n = A360010 (n + 1)

end A360010

/-!
# A360012: a(n) is the number of triples (u,v,w) of divisors of n with u/v = v/w, and u < v < w.

The programs for A360012, there is no canonical definition to state claims against.
-/

/-! ## A360012.P2549262556634788634

`A032741(A322020(n+1))`
-/

namespace A360012.P2549262556634788634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A322020 (n + 1)).toNat

end

end A360012.P2549262556634788634

/-! ## A360012.P13363277574629143990

`∑{d}[A322020(n+1), A287170(#)]`
-/

namespace A360012.P13363277574629143990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A287170 d

end

end A360012.P13363277574629143990

/-! ## A360012.P3868933523418147183

`∑{d}[n+1, A046951(#)*A056170((n+1)/#)]`
-/

namespace A360012.P3868933523418147183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A056170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360012.P3868933523418147183

/-! ## A360012.P2866649355714143096

`∑{d}[n+1, A049419(#)*A056170((n+1)/#)]`
-/

namespace A360012.P2866649355714143096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049419 d * A056170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360012.P2866649355714143096

/-! ## A360012.P3812727939004216821

`∑{d}[n+1, A056170(#)*A096309((n+1)/#)]`
-/

namespace A360012.P3812727939004216821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056170 d * A096309 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360012.P3812727939004216821

/-! ## A360012.P3397137053423061205

`∑{d}[n+1, A056170(#)*A159631((n+1)/#)]`
-/

namespace A360012.P3397137053423061205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056170 d * A159631 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360012.P3397137053423061205

/-!
# A360013: Numbers whose exponent of 2 in their canonical prime factorization is larger than all the other exponents.

The programs for A360013, the canonical program `A360013.P17771875330007570756` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360013 has offset 1).

The definition of A360013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360015, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360013.P17771875330007570756

`2*A360015(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A360013

/-- `2*A360015(n+1)` -/
def P17771875330007570756.Spec : Prop :=
  ∀ n, P17771875330007570756.a n = A360013 (n + 1)

theorem P17771875330007570756.correct : P17771875330007570756.Spec := by
  intro n
  simp only [A360013, Nat.add_sub_cancel]

end A360013

/-! ## A360013.P14765071879429627919

`A360015(A000027(n+1))+A360015(n+1)`
-/

namespace A360013.P14765071879429627919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (A000027 (n + 1)).toNat + A360015 (n + 1)

end

end A360013.P14765071879429627919

namespace A360013

/-- `A360015(A000027(n+1))+A360015(n+1)` -/
def P14765071879429627919.Spec : Prop :=
  ∀ n, P14765071879429627919.a n = A360013 (n + 1)

end A360013

/-! ## A360013.P8244222551041866145

`filter[A364160(n+2), A373252(#)]`
-/

namespace A360013.P8244222551041866145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360013.P8244222551041866145

namespace A360013

/-- `filter[A364160(n+2), A373252(#)]` -/
def P8244222551041866145.Spec : Prop :=
  ∀ n, P8244222551041866145.a n = A360013 (n + 1)

end A360013

/-! ## A360013.P6875393980739999104

`∩[A047464(n+1), A364160(n+1)]`
-/

namespace A360013.P6875393980739999104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360013.P6875393980739999104

namespace A360013

/-- `∩[A047464(n+1), A364160(n+1)]` -/
def P6875393980739999104.Spec : Prop :=
  ∀ n, (P6875393980739999104.a n : ℤ) = A360013 (n + 1)

end A360013

/-! ## A360013.P4395481690989003272

`∩[A118286(n+1), A364160(n+1)]`
-/

namespace A360013.P4395481690989003272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360013.P4395481690989003272

namespace A360013

/-- `∩[A118286(n+1), A364160(n+1)]` -/
def P4395481690989003272.Spec : Prop :=
  ∀ n, (P4395481690989003272.a n : ℤ) = A360013 (n + 1)

end A360013

/-! ## A360013.P5539610953358385430

`filter[A356862(n+1), A373252(#)]`
-/

namespace A360013.P5539610953358385430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360013.P5539610953358385430

namespace A360013

/-- `filter[A356862(n+1), A373252(#)]` -/
def P5539610953358385430.Spec : Prop :=
  ∀ n, P5539610953358385430.a n = A360013 (n + 1)

end A360013

/-! ## A360013.P2341091610511650938

`∩[A356862(n+1), A360015(n+1)]`
-/

namespace A360013.P2341091610511650938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360013.P2341091610511650938

namespace A360013

/-- `∩[A356862(n+1), A360015(n+1)]` -/
def P2341091610511650938.Spec : Prop :=
  ∀ n, (P2341091610511650938.a n : ℤ) = A360013 (n + 1)

end A360013

/-! ## A360013.P17977346219293799288

`A004277(A360015(n+1))`
-/

namespace A360013.P17977346219293799288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A360015 (n + 1)).toNat

end

end A360013.P17977346219293799288

namespace A360013

/-- `A004277(A360015(n+1))` -/
def P17977346219293799288.Spec : Prop :=
  ∀ n, P17977346219293799288.a n = A360013 (n + 1)

end A360013

/-! ## A360013.P16574460005081896500

`∩[2*n, A364160(n+1)]`
-/

namespace A360013.P16574460005081896500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360013.P16574460005081896500

namespace A360013

/-- `∩[2*n, A364160(n+1)]` -/
def P16574460005081896500.Spec : Prop :=
  ∀ n, (P16574460005081896500.a n : ℤ) = A360013 (n + 1)

end A360013

/-! ## A360013.P12111510155923800195

`∩[A364160(n+1), A005843(n)]`
-/

namespace A360013.P12111510155923800195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360013.P12111510155923800195

namespace A360013

/-- `∩[A364160(n+1), A005843(n)]` -/
def P12111510155923800195.Spec : Prop :=
  ∀ n, (P12111510155923800195.a n : ℤ) = A360013 (n + 1)

end A360013

/-! ## A360013.P7610846012548480025

`eq[2, A261969(n+1)]+1`
-/

namespace A360013.P7610846012548480025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360013.P7610846012548480025

namespace A360013

/-- `eq[2, A261969(n+1)]+1` -/
def P7610846012548480025.Spec : Prop :=
  ∀ n, (P7610846012548480025.a n : ℤ) = A360013 (n + 1)

end A360013

/-! ## A360013.P4169294648941682062

`record[2*(n+2)/A261969(n+2)]`
-/

namespace A360013.P4169294648941682062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℚ) / (A261969 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360013.P4169294648941682062

namespace A360013

/-- `record[2*(n+2)/A261969(n+2)]` -/
def P4169294648941682062.Spec : Prop :=
  ∀ n, P4169294648941682062.a n = (A360013 (n + 1) : ℚ)

end A360013

/-! ## A360013.P2511918632544731058

`filter[A364160(n+1), A059841(#)]`
-/

namespace A360013.P2511918632544731058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A360013.P2511918632544731058

namespace A360013

/-- `filter[A364160(n+1), A059841(#)]` -/
def P2511918632544731058.Spec : Prop :=
  ∀ n, P2511918632544731058.a n = A360013 (n + 1)

end A360013

/-! ## A360013.P6818282303068663977

`filter[A364160(n+1), A108357(#)]`
-/

namespace A360013.P6818282303068663977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A360013.P6818282303068663977

namespace A360013

/-- `filter[A364160(n+1), A108357(#)]` -/
def P6818282303068663977.Spec : Prop :=
  ∀ n, P6818282303068663977.a n = A360013 (n + 1)

end A360013

/-! ## A360013.P4377977805332206136

`filter[A364160(n+2), A135528(#)]`
-/

namespace A360013.P4377977805332206136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A360013.P4377977805332206136

namespace A360013

/-- `filter[A364160(n+2), A135528(#)]` -/
def P4377977805332206136.Spec : Prop :=
  ∀ n, P4377977805332206136.a n = A360013 (n + 1)

end A360013

/-! ## A360013.P10841214303322196966

`filter[A364160(n+2), A266591(#)]`
-/

namespace A360013.P10841214303322196966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A360013.P10841214303322196966

namespace A360013

/-- `filter[A364160(n+2), A266591(#)]` -/
def P10841214303322196966.Spec : Prop :=
  ∀ n, P10841214303322196966.a n = A360013 (n + 1)

end A360013

/-!
# A360014: Numbers whose exponent of 2 in their canonical prime factorization is equal to the maximum of the other exponents.

The programs for A360014, the canonical program `A360014.P9859742446175900433` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360014 has offset 1).

The definition of A360014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360014.P9859742446175900433

`∩[comp[A356862(n+1)], A360015(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360014

/-- `∩[comp[A356862(n+1)], A360015(n+1)]` -/
def P9859742446175900433.Spec : Prop :=
  ∀ n, (P9859742446175900433.a n : ℤ) = A360014 (n + 1)

theorem P9859742446175900433.correct : P9859742446175900433.Spec := by
  intro n
  simp only [A360014, Nat.add_sub_cancel]

end A360014

/-! ## A360014.P10836558153945803944

`∩[comp[A360013(n+1)], A360015(n+1)]`
-/

namespace A360014.P10836558153945803944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A360014.P10836558153945803944

namespace A360014

/-- `∩[comp[A360013(n+1)], A360015(n+1)]` -/
def P10836558153945803944.Spec : Prop :=
  ∀ n, (P10836558153945803944.a n : ℤ) = A360014 (n + 1)

end A360014

/-! ## A360014.P6825965528202647443

`∩[A060702(n+1), A367586(n+1)]`
-/

namespace A360014.P6825965528202647443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360014.P6825965528202647443

namespace A360014

/-- `∩[A060702(n+1), A367586(n+1)]` -/
def P6825965528202647443.Spec : Prop :=
  ∀ n, (P6825965528202647443.a n : ℤ) = A360014 (n + 1)

end A360014

/-! ## A360014.P9452677544144885170

`∩[A067582(n+1), A367586(n+1)]`
-/

namespace A360014.P9452677544144885170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360014.P9452677544144885170

namespace A360014

/-- `∩[A067582(n+1), A367586(n+1)]` -/
def P9452677544144885170.Spec : Prop :=
  ∀ n, (P9452677544144885170.a n : ℤ) = A360014 (n + 1)

end A360014

/-! ## A360014.P140268383209224351

`∩[A361102(n+1), A367586(n+1)]`
-/

namespace A360014.P140268383209224351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360014.P140268383209224351

namespace A360014

/-- `∩[A361102(n+1), A367586(n+1)]` -/
def P140268383209224351.Spec : Prop :=
  ∀ n, (P140268383209224351.a n : ℤ) = A360014 (n + 1)

end A360014

/-!
# A360015: Numbers whose exponent of 2 in their canonical prime factorization is equal to the maximal exponent.

The programs for A360015, the canonical program `A360015.P15905929138767482447` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360015 has offset 1).

The definition of A360015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360015.P13620436743006849069

`A360013(n+1)/2`
-/

namespace A360015.P13620436743006849069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360013 (n + 1) : ℚ) / 2

end

end A360015.P13620436743006849069

namespace A360015

/-- `A360013(n+1)/2` -/
def P13620436743006849069.Spec : Prop :=
  ∀ n, P13620436743006849069.a n = (A360015 (n + 1) : ℚ)

end A360015

/-! ## A360015.P15905929138767482447

`eq[1, A373252(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360015

/-- `eq[1, A373252(n+1)]+1` -/
def P15905929138767482447.Spec : Prop :=
  ∀ n, (P15905929138767482447.a n : ℤ) = A360015 (n + 1)

theorem P15905929138767482447.correct : P15905929138767482447.Spec := by
  intro n
  simp only [A360015, Nat.add_sub_cancel]

end A360015

/-! ## A360015.P2522893770274417858

`∪[A360013(n+1), A360014(n+1)]`
-/

namespace A360015.P2522893770274417858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360015.P2522893770274417858

namespace A360015

/-- `∪[A360013(n+1), A360014(n+1)]` -/
def P2522893770274417858.Spec : Prop :=
  ∀ n, (P2522893770274417858.a n : ℤ) = A360015 (n + 1)

end A360015

/-! ## A360015.P1896699931257124549

`filter[A004277(n), A373252(#)]`
-/

namespace A360015.P1896699931257124549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P1896699931257124549

namespace A360015

/-- `filter[A004277(n), A373252(#)]` -/
def P1896699931257124549.Spec : Prop :=
  ∀ n, P1896699931257124549.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P827585636694724042

`filter[A004275(n+1), A373252(#)]`
-/

namespace A360015.P827585636694724042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P827585636694724042

namespace A360015

/-- `filter[A004275(n+1), A373252(#)]` -/
def P827585636694724042.Spec : Prop :=
  ∀ n, P827585636694724042.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P2411797739730529145

`filter[A004278(n+1), A373252(#)]`
-/

namespace A360015.P2411797739730529145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P2411797739730529145

namespace A360015

/-- `filter[A004278(n+1), A373252(#)]` -/
def P2411797739730529145.Spec : Prop :=
  ∀ n, P2411797739730529145.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P15197600218958422134

`filter[A185048(2*n+1), A373252(#)]`
-/

namespace A360015.P15197600218958422134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P15197600218958422134

namespace A360015

/-- `filter[A185048(2*n+1), A373252(#)]` -/
def P15197600218958422134.Spec : Prop :=
  ∀ n, P15197600218958422134.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P7577904408928386101

`filter[A004279(n), A373252(#)]`
-/

namespace A360015.P7577904408928386101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P7577904408928386101

namespace A360015

/-- `filter[A004279(n), A373252(#)]` -/
def P7577904408928386101.Spec : Prop :=
  ∀ n, P7577904408928386101.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P13390869717636661472

`filter[A004271(n+1), A373252(#)]`
-/

namespace A360015.P13390869717636661472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P13390869717636661472

namespace A360015

/-- `filter[A004271(n+1), A373252(#)]` -/
def P13390869717636661472.Spec : Prop :=
  ∀ n, P13390869717636661472.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P8836441862793177947

`filter[A004272(n+1), A373252(#)]`
-/

namespace A360015.P8836441862793177947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P8836441862793177947

namespace A360015

/-- `filter[A004272(n+1), A373252(#)]` -/
def P8836441862793177947.Spec : Prop :=
  ∀ n, P8836441862793177947.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P13904454526277928188

`filter[A257282(n+2), A373252(#)]`
-/

namespace A360015.P13904454526277928188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P13904454526277928188

namespace A360015

/-- `filter[A257282(n+2), A373252(#)]` -/
def P13904454526277928188.Spec : Prop :=
  ∀ n, P13904454526277928188.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P6614864199698584648

`filter[A176693(n+2), A373252(#)]`
-/

namespace A360015.P6614864199698584648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P6614864199698584648

namespace A360015

/-- `filter[A176693(n+2), A373252(#)]` -/
def P6614864199698584648.Spec : Prop :=
  ∀ n, P6614864199698584648.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P15907014473226388038

`filter[A064745(n+1), A373252(#)]`
-/

namespace A360015.P15907014473226388038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P15907014473226388038

namespace A360015

/-- `filter[A064745(n+1), A373252(#)]` -/
def P15907014473226388038.Spec : Prop :=
  ∀ n, P15907014473226388038.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P12146708261958192272

`filter[A171086(n+1), A373252(#)]`
-/

namespace A360015.P12146708261958192272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P12146708261958192272

namespace A360015

/-- `filter[A171086(n+1), A373252(#)]` -/
def P12146708261958192272.Spec : Prop :=
  ∀ n, P12146708261958192272.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P2332024827701500853

`filter[A225850(n+1), A373252(#)]`
-/

namespace A360015.P2332024827701500853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P2332024827701500853

namespace A360015

/-- `filter[A225850(n+1), A373252(#)]` -/
def P2332024827701500853.Spec : Prop :=
  ∀ n, P2332024827701500853.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P17332448015071065237

`filter[A372771(n+1), A373252(#)]`
-/

namespace A360015.P17332448015071065237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P17332448015071065237

namespace A360015

/-- `filter[A372771(n+1), A373252(#)]` -/
def P17332448015071065237.Spec : Prop :=
  ∀ n, P17332448015071065237.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P5891908353226611178

`filter[A237058(n+1), A373252(#)]`
-/

namespace A360015.P5891908353226611178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P5891908353226611178

namespace A360015

/-- `filter[A237058(n+1), A373252(#)]` -/
def P5891908353226611178.Spec : Prop :=
  ∀ n, P5891908353226611178.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P4173007811066105108

`filter[A066250(n+1), A373252(#)]`
-/

namespace A360015.P4173007811066105108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P4173007811066105108

namespace A360015

/-- `filter[A066250(n+1), A373252(#)]` -/
def P4173007811066105108.Spec : Prop :=
  ∀ n, P4173007811066105108.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P5185571764312473250

`filter[A073897(n+1), A373252(#)]`
-/

namespace A360015.P5185571764312473250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P5185571764312473250

namespace A360015

/-- `filter[A073897(n+1), A373252(#)]` -/
def P5185571764312473250.Spec : Prop :=
  ∀ n, P5185571764312473250.a n = A360015 (n + 1)

end A360015

/-! ## A360015.P15195801194048014507

`filter[A278373(n+2), A373252(#)]`
-/

namespace A360015.P15195801194048014507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A360015.P15195801194048014507

namespace A360015

/-- `filter[A278373(n+2), A373252(#)]` -/
def P15195801194048014507.Spec : Prop :=
  ∀ n, P15195801194048014507.a n = A360015 (n + 1)

end A360015

/-!
# A360016: Number of partitions of 4*n into four odd primes (p_1, p_2, p_3, p_4) (p_1 < p_2 <= p_3 < p_4 and p_1 + p_4 = p_2 + p_3 = 2*n) such that (p_1, p_2) and (p_3, p_4) are consecutive pairs of prime numbers with the same difference, d = p_2 - p_1 = p_4 - p_3, and (p_1, p_3), (p_2, p_4) are also consecutive pairs of prime numbers with the same difference, D = p_3 - p_1 = p_4 - p_2.

The programs for A360016, there is no canonical definition to state claims against.
-/

/-! ## A360016.P14878602108385713640

`A051731(A325777(2*n+1)+A051731(n+1))`
-/

namespace A360016.P14878602108385713640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A325777 (2 * n + 1) + A051731 (n + 1)).toNat

end

end A360016.P14878602108385713640

/-! ## A360016.P7808484093368691383

`A267037(A006049(n+2)*A279343(3*n+4))`
-/

namespace A360016.P7808484093368691383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267037 (A006049 (n + 2) * A279343 (3 * n + 4)).toNat

end

end A360016.P7808484093368691383

/-! ## A360016.P8734578218265965066

`val(A034968(3*n+2), A181796(A173713(3*n+2)))`
-/

namespace A360016.P8734578218265965066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034968 (3 * n + 2)).toNat (A181796 (A173713 (3 * n + 2)).toNat).toNat

end

end A360016.P8734578218265965066

/-! ## A360016.P12261393791025110797

`A003849(A016742(n)%A135880(2*n+3))`
-/

namespace A360016.P12261393791025110797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.tmod (A016742 n) (A135880 (2 * n + 3))).toNat

end

end A360016.P12261393791025110797

/-! ## A360016.P13582030708838164591

`A353677(A000032(3*n+4)%A248379(n+1))`
-/

namespace A360016.P13582030708838164591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353677 (Int.tmod (A000032 (3 * n + 4)) (A248379 (n + 1))).toNat

end

end A360016.P13582030708838164591

/-!
# A360017: Nonsquarefree numbers k such that k - d is also a nonsquarefree number for all proper divisors d of k.

The programs for A360017, there is no canonical definition to state claims against.
-/

/-! ## A360017.P16643957598734345788

`A034025(n)-A241216(A156646(n))`
-/

namespace A360017.P16643957598734345788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n - A241216 (A156646 n).toNat

end

end A360017.P16643957598734345788

/-! ## A360017.P7960277192006878172

`A034025(n)-A298100(A007716(n))`
-/

namespace A360017.P7960277192006878172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n - A298100 (A007716 n).toNat

end

end A360017.P7960277192006878172

/-!
# A360018: Expansion of Sum_{k>=0} (k * x * (1 + (k * x)^2))^k.

The programs for A360018, there is no canonical definition to state claims against.
-/

/-! ## A360018.P8250110839145208839

`A190001(A189981(n))`
-/

namespace A360018.P8250110839145208839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190001 (A189981 n).toNat

end

end A360018.P8250110839145208839

/-! ## A360018.P3945623873505885384

`A360832(n)-A364404(A005142(n))`
-/

namespace A360018.P3945623873505885384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360832 n - A364404 (A005142 n).toNat

end

end A360018.P3945623873505885384

/-!
# A360021: Number of unordered triples of self-avoiding paths with nodes that cover all vertices of a convex n-gon; one-node paths are allowed.

The programs for A360021, there is no canonical definition to state claims against.
-/

/-! ## A360021.P2183447097843026275

`A343409(A148195(n))`
-/

namespace A360021.P2183447097843026275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343409 (A148195 n).toNat

end

end A360021.P2183447097843026275

/-! ## A360021.P7679781822349034572

`((A126358(n)+1)^3)%A330474(n)`
-/

namespace A360021.P7679781822349034572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A126358 n + 1) ^ 3) (A330474 n)

end

end A360021.P7679781822349034572

/-!
# A360023: Expansion of e.g.f. x*exp(x)*(cosh(x))^2.

The programs for A360023, the canonical program `A360023.P153740979407817084` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360023 has offset 0).

The definition of A360023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360023.P153740979407817084

`n*(3^(n-1)+(-1)^(n-1)+2)/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360023

/-- `n*(3^(n-1)+(-1)^(n-1)+2)/4` -/
def P153740979407817084.Spec : Prop :=
  ∀ n, P153740979407817084.a n = (A360023 n : ℚ)

end A360023

/-! ## A360023.P8884817434705577458

`and(n*floor(3^(n-1)/4)+n, -1)`
-/

namespace A360023.P8884817434705577458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4⌋ + (n : ℤ)) (-1)

end

end A360023.P8884817434705577458

namespace A360023

/-- `and(n*floor(3^(n-1)/4)+n, -1)` -/
def P8884817434705577458.Spec : Prop :=
  ∀ n, P8884817434705577458.a n = A360023 n

end A360023

/-! ## A360023.P11578142716048470918

`A360036(n)+n`
-/

namespace A360023.P11578142716048470918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360036 n + (n : ℤ)

end

end A360023.P11578142716048470918

namespace A360023

/-- `A360036(n)+n` -/
def P11578142716048470918.Spec : Prop :=
  ∀ n, P11578142716048470918.a n = A360023 n

end A360023

/-! ## A360023.P15470795247221417606

`A082133(n)-n*round(3^(n-1)/4)`
-/

namespace A360023.P15470795247221417606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082133 n - (n : ℤ) * SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4)

end

end A360023.P15470795247221417606

namespace A360023

/-- `A082133(n)-n*round(3^(n-1)/4)` -/
def P15470795247221417606.Spec : Prop :=
  ∀ n, P15470795247221417606.a n = A360023 n

end A360023

/-! ## A360023.P2478061271597839166

`n*round(3^(n-1)/4)+n-A237420(n)`
-/

namespace A360023.P2478061271597839166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4) + ((n : ℤ) - A237420 n)

end

end A360023.P2478061271597839166

namespace A360023

/-- `n*round(3^(n-1)/4)+n-A237420(n)` -/
def P2478061271597839166.Spec : Prop :=
  ∀ n, P2478061271597839166.a n = A360023 n

end A360023

/-! ## A360023.P8158740032034078916

`n*A124302(n)-n*round(3^(n-1)/4)`
-/

namespace A360023.P8158740032034078916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124302 n - (n : ℤ) * SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4)

end

end A360023.P8158740032034078916

namespace A360023

/-- `n*A124302(n)-n*round(3^(n-1)/4)` -/
def P8158740032034078916.Spec : Prop :=
  ∀ n, P8158740032034078916.a n = A360023 n

end A360023

/-! ## A360023.P4382402196593756233

`abs(n/3*A054878(n)-A082133(n))`
-/

namespace A360023.P4382402196593756233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 3 * (A054878 n : ℚ) - (A082133 n : ℚ)|

end

end A360023.P4382402196593756233

namespace A360023

/-- `abs(n/3*A054878(n)-A082133(n))` -/
def P4382402196593756233.Spec : Prop :=
  ∀ n, P4382402196593756233.a n = (A360023 n : ℚ)

end A360023

/-! ## A360023.P11047620426159756497

`n/3*A054878(n)-A237420(n)+n`
-/

namespace A360023.P11047620426159756497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A054878 n : ℚ) - (A237420 n : ℚ) + (n : ℚ)

end

end A360023.P11047620426159756497

namespace A360023

/-- `n/3*A054878(n)-A237420(n)+n` -/
def P11047620426159756497.Spec : Prop :=
  ∀ n, P11047620426159756497.a n = (A360023 n : ℚ)

end A360023

/-! ## A360023.P18359132226988930995

`abs(A082133(n)-(A237420(n)+n*floor(3^(n-1)/4)))`
-/

namespace A360023.P18359132226988930995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082133 n - (A237420 n + (n : ℤ) * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4⌋)|

end

end A360023.P18359132226988930995

namespace A360023

/-- `abs(A082133(n)-(A237420(n)+n*floor(3^(n-1)/4)))` -/
def P18359132226988930995.Spec : Prop :=
  ∀ n, P18359132226988930995.a n = A360023 n

end A360023

/-! ## A360023.P11246302383936618920

`2*A373065(n+1)/(n+1)`
-/

namespace A360023.P11246302383936618920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A373065 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A360023.P11246302383936618920

namespace A360023

/-- `2*A373065(n+1)/(n+1)` -/
def P11246302383936618920.Spec : Prop :=
  ∀ n, P11246302383936618920.a n = (A360023 n : ℚ)

end A360023

/-!
# A360029: Consider a ruler composed of n segments with lengths 1, 1/2, 1/3, ..., 1/n with total length A001008(n)/A002805(n). a(n) is the minimum number of distinct distances of all pairs of marks that can be achieved by permuting the positions of the segments.

The programs for A360029, there is no canonical definition to state claims against.
-/

/-! ## A360029.P5581768536714092536

`∑[(n+1)/∏{e}[A002851(n)+1, #!]]`
-/

namespace A360029.P5581768536714092536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360029.P5581768536714092536

/-! ## A360029.P10222787787073399330

`∑[(n+1)/∏{e}[A322211(n)+1, #!]]`
-/

namespace A360029.P10222787787073399330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322211 n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360029.P10222787787073399330

/-! ## A360029.P4538637350711861387

`∑[A319626(A062399(n)+1)]`
-/

namespace A360029.P4538637350711861387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A062399 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360029.P4538637350711861387

/-! ## A360029.P769815877926785996

`∑[A348401(A239218(n+1))]`
-/

namespace A360029.P769815877926785996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348401 (A239218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360029.P769815877926785996

/-! ## A360029.P12979944464303888820

`∑[A346703(A244668(n+1))]`
-/

namespace A360029.P12979944464303888820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A244668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360029.P12979944464303888820

/-!
# A360032: Expansion of Sum_{k>=0} (k * x * (1 + (k * x)^3))^k.

The programs for A360032, there is no canonical definition to state claims against.
-/

/-! ## A360032.P11965634325974009127

`A360833(n)-A185246(n²+3)`
-/

namespace A360032.P11965634325974009127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360833 n - A185246 (n ^ 2 + 3)

end

end A360032.P11965634325974009127

/-! ## A360032.P14619608654117816450

`A360833(n)-A056170(A054499(n))`
-/

namespace A360032.P14619608654117816450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360833 n - A056170 (A054499 n).toNat

end

end A360032.P14619608654117816450

/-!
# A360033: Table T(n,k), n >= 1 and k >= 0, read by antidiagonals, related to Jacobsthal numbers A001045.

The programs for A360033, the canonical program `A360033.P8815063364067196511` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360033 has offset 1).

The definition of A360033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360033.P8815063364067196511

`A130128(n+1)-A001045(A002262(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A360033

/-- `A130128(n+1)-A001045(A002262(n))` -/
def P8815063364067196511.Spec : Prop :=
  ∀ n, P8815063364067196511.a n = A360033 (n + 1)

theorem P8815063364067196511.correct : P8815063364067196511.Spec := by
  intro n
  simp only [A360033, Nat.add_sub_cancel]

end A360033

/-!
# A360034: Binary representation of -n in base i-1.

The programs for A360034, there is no canonical definition to state claims against.
-/

/-! ## A360034.P5087526216706084727

`A007088(A256441(n))`
-/

namespace A360034.P5087526216706084727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A256441 n).toNat

end

end A360034.P5087526216706084727

/-! ## A360034.P572603674734490133

`A007088(A066321(4*n)/16)`
-/

namespace A360034.P572603674734490133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A066321 (4 * n) : ℚ) / 16)).toNat

end

end A360034.P572603674734490133

/-! ## A360034.P11352276364423146461

`A185544(2*A256441(n))`
-/

namespace A360034.P11352276364423146461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A256441 n).toNat

end

end A360034.P11352276364423146461

/-! ## A360034.P18434418105784569485

`A185544(2*A066321(4*n)/16)`
-/

namespace A360034.P18434418105784569485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.roundAway (2 * ((A066321 (4 * n) : ℚ) / 16))).toNat

end

end A360034.P18434418105784569485

/-!
# A360035: Expansion of e.g.f. x*exp(x)*cosh(x)*sinh(x).

The programs for A360035, the canonical program `A360035.P15084865709718125169` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360035 has offset 0).

The definition of A360035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360035.P15084865709718125169

`n*(3^(n-1)-(-1)^(n-1))/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360035

/-- `n*(3^(n-1)-(-1)^(n-1))/4` -/
def P15084865709718125169.Spec : Prop :=
  ∀ n, P15084865709718125169.a n = (A360035 n : ℚ)

end A360035

/-! ## A360035.P736925863319776000

`n*A054878(n)/3`
-/

namespace A360035.P736925863319776000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A054878 n : ℚ) / 3

end

end A360035.P736925863319776000

namespace A360035

/-- `n*A054878(n)/3` -/
def P736925863319776000.Spec : Prop :=
  ∀ n, P736925863319776000.a n = (A360035 n : ℚ)

end A360035

/-! ## A360035.P9353502166813686927

`A360036(n)+n%or(1, n)`
-/

namespace A360035.P9353502166813686927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360036 n + ((n % Nat.lor 1 n : ℕ) : ℤ)

end

end A360035.P9353502166813686927

namespace A360035

/-- `A360036(n)+n%or(1, n)` -/
def P9353502166813686927.Spec : Prop :=
  ∀ n, P9353502166813686927.a n = A360035 n

end A360035

/-! ## A360035.P430248046634808187

`n*ceil(3^n/6)-A360023(n)`
-/

namespace A360035.P430248046634808187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(3 ^ n : ℚ) / 6⌉ - A360023 n

end

end A360035.P430248046634808187

namespace A360035

/-- `n*ceil(3^n/6)-A360023(n)` -/
def P430248046634808187.Spec : Prop :=
  ∀ n, P430248046634808187.a n = A360035 n

end A360035

/-! ## A360035.P2335138313975274783

`A237420(n)+n*floor(3^(n-1)/4)`
-/

namespace A360035.P2335138313975274783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + (n : ℤ) * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4⌋

end

end A360035.P2335138313975274783

namespace A360035

/-- `A237420(n)+n*floor(3^(n-1)/4)` -/
def P2335138313975274783.Spec : Prop :=
  ∀ n, P2335138313975274783.a n = A360035 n

end A360035

/-! ## A360035.P17825564005208358464

`A360036(n)+A237420(n)`
-/

namespace A360035.P17825564005208358464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360036 n + A237420 n

end

end A360035.P17825564005208358464

namespace A360035

/-- `A360036(n)+A237420(n)` -/
def P17825564005208358464.Spec : Prop :=
  ∀ n, P17825564005208358464.a n = A360035 n

end A360035

/-!
# A360036: Expansion of e.g.f. x*exp(x)*(sinh(x))^2.

The programs for A360036, the canonical program `A360036.P4578095931129594764` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360036 has offset 0).

The definition of A360036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360036.P4578095931129594764

`n*(3^(n-1)+(-1)^(n-1)-2)/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A360036

/-- `n*(3^(n-1)+(-1)^(n-1)-2)/4` -/
def P4578095931129594764.Spec : Prop :=
  ∀ n, P4578095931129594764.a n = (A360036 n : ℚ)

end A360036

/-! ## A360036.P4317646666990140910

`and(n*ceil(3^(n-1)/4)-n, -1)`
-/

namespace A360036.P4317646666990140910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4⌉ - (n : ℤ)) (-1)

end

end A360036.P4317646666990140910

namespace A360036

/-- `and(n*ceil(3^(n-1)/4)-n, -1)` -/
def P4317646666990140910.Spec : Prop :=
  ∀ n, P4317646666990140910.a n = A360036 n

end A360036

/-! ## A360036.P1526823502510958644

`A360023(n)-n`
-/

namespace A360036.P1526823502510958644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360023 n - (n : ℤ)

end

end A360036.P1526823502510958644

namespace A360036

/-- `A360023(n)-n` -/
def P1526823502510958644.Spec : Prop :=
  ∀ n, P1526823502510958644.a n = A360036 n

end A360036

/-! ## A360036.P10274070158287272967

`A360035(n)-n%or(1, n)`
-/

namespace A360036.P10274070158287272967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360035 n - ((n % Nat.lor 1 n : ℕ) : ℤ)

end

end A360036.P10274070158287272967

namespace A360036

/-- `A360035(n)-n%or(1, n)` -/
def P10274070158287272967.Spec : Prop :=
  ∀ n, P10274070158287272967.a n = A360036 n

end A360036

/-! ## A360036.P16707710116053288042

`n*round(3^(n-1)/4)-A237420(n)`
-/

namespace A360036.P16707710116053288042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4) - A237420 n

end

end A360036.P16707710116053288042

namespace A360036

/-- `n*round(3^(n-1)/4)-A237420(n)` -/
def P16707710116053288042.Spec : Prop :=
  ∀ n, P16707710116053288042.a n = A360036 n

end A360036

/-! ## A360036.P14961196762510882585

`2*A373134(n+1)/(n+1)`
-/

namespace A360036.P14961196762510882585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A373134 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A360036.P14961196762510882585

namespace A360036

/-- `2*A373134(n+1)/(n+1)` -/
def P14961196762510882585.Spec : Prop :=
  ∀ n, P14961196762510882585.a n = (A360036 n : ℚ)

end A360036

/-!
# A360040: Prime numbers missing from A359136: prime numbers for which none of the nontrivial permutations of its digits (permitting leading zeros) produces a prime number.

The programs for A360040, there is no canonical definition to state claims against.
-/

/-! ## A360040.P461231039131490329

`filter[A039986(n+1), A178788(#)]`
-/

namespace A360040.P461231039131490329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A360040.P461231039131490329

/-! ## A360040.P3014846149704608494

`∩[A029743(n+1), A039986(n+1)]`
-/

namespace A360040.P3014846149704608494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360040.P3014846149704608494

/-! ## A360040.P8635032254376188432

`∩[A010784(n+1), A039986(n+1)]`
-/

namespace A360040.P8635032254376188432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360040.P8635032254376188432

/-! ## A360040.P12125365258666119932

`∩[A039986(n+1), A360041(n+1)]`
-/

namespace A360040.P12125365258666119932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360040.P12125365258666119932

/-!
# A360041: Prime numbers missing from A359137: prime numbers for which none of the nontrivial permutations of its digits (not permitting leading zeros) produces a prime number.

The programs for A360041, there is no canonical definition to state claims against.
-/

/-! ## A360041.P12061211156662720110

`filter[A246044(n+1), A178788(#)]`
-/

namespace A360041.P12061211156662720110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A360041.P12061211156662720110

/-! ## A360041.P799778766667968994

`∩[A029743(n+1), A245808(n+1)]`
-/

namespace A360041.P799778766667968994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360041.P799778766667968994

/-! ## A360041.P3580025157164263988

`∩[A029743(n+1), A246044(n+1)]`
-/

namespace A360041.P3580025157164263988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360041.P3580025157164263988

/-! ## A360041.P16062947250189833977

`p?[∩[A010784(n+1), A245808(n+1)]]`
-/

namespace A360041.P16062947250189833977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245808 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A360041.P16062947250189833977

/-! ## A360041.P10015314313565144283

`∩[A010784(n+1), A246044(n+1)]`
-/

namespace A360041.P10015314313565144283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360041.P10015314313565144283

/-!
# A360043: Number of edges in a Farey fan of order n.

The programs for A360043, there is no canonical definition to state claims against.
-/

/-! ## A360043.P9268240227314029099

`A303431(A014574(n+1))-A059268(n)`
-/

namespace A360043.P9268240227314029099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (A014574 (n + 1)).toNat - A059268 n

end

end A360043.P9268240227314029099

/-! ## A360043.P9757430643195721623

`A056608(A331933(3*n+1))+A005704(3*n+1)`
-/

namespace A360043.P9757430643195721623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (A331933 (3 * n + 1)).toNat + A005704 (3 * n + 1)

end

end A360043.P9757430643195721623

/-!
# A360045: a(n) = Sum_{k=0..floor(n/3)} binomial(n+2,3*k+2) * Catalan(k).

The programs for A360045, there is no canonical definition to state claims against.
-/

/-! ## A360045.P1724434764963938256

`Δ[record[A351970(A360457(2*(n+2)))]]`
-/

namespace A360045.P1724434764963938256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351970 (A360457 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360045.P1724434764963938256

/-! ## A360045.P18405303161961027668

`∑[A352879(A069747(n+1))]`
-/

namespace A360045.P18405303161961027668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352879 (A069747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360045.P18405303161961027668

/-! ## A360045.P2129890795078882785

`∑[A091010(∑[A004148(n)])]`
-/

namespace A360045.P2129890795078882785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360045.P2129890795078882785

/-! ## A360045.P9906752401583504540

`∑[∑[A000196(A383974(n))]]`
-/

namespace A360045.P9906752401583504540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A383974 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360045.P9906752401583504540

/-!
# A360046: a(n) = Sum_{k=0..floor(n/4)} binomial(n+3,4*k+3) * Catalan(k).

The programs for A360046, there is no canonical definition to state claims against.
-/

/-! ## A360046.P16360337004345036129

`A002266(A309861(n))+A000749(n+3)`
-/

namespace A360046.P16360337004345036129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A309861 n).toNat + A000749 (n + 3)

end

end A360046.P16360337004345036129

/-! ## A360046.P13903174672636379058

`A080225(A299968(n))+A000749(n+3)`
-/

namespace A360046.P13903174672636379058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A299968 n).toNat + A000749 (n + 3)

end

end A360046.P13903174672636379058

/-! ## A360046.P3403391080375698388

`A086015(A331826(n))+A000749(n+3)`
-/

namespace A360046.P3403391080375698388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086015 (A331826 n).toNat + A000749 (n + 3)

end

end A360046.P3403391080375698388

/-! ## A360046.P643202601371775264

`A000749(n+3)-A238470(A052529(n))`
-/

namespace A360046.P643202601371775264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 3) - A238470 (A052529 n).toNat

end

end A360046.P643202601371775264

/-! ## A360046.P3153102518096984650

`A025461(A232126(n+2))+A000749(n+3)`
-/

namespace A360046.P3153102518096984650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (A232126 (n + 2)).toNat + A000749 (n + 3)

end

end A360046.P3153102518096984650

/-!
# A360047: a(n) = Sum_{k=0..floor(n/5)} binomial(n+4,5*k+4) * Catalan(k).

The programs for A360047, there is no canonical definition to state claims against.
-/

/-! ## A360047.P5062110911987218634

`A185284(A060920(n))+A049016(n)`
-/

namespace A360047.P5062110911987218634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A060920 n).toNat + A049016 n

end

end A360047.P5062110911987218634

/-! ## A360047.P17066953964746806611

`A284261(A006882(n))+A049016(n)`
-/

namespace A360047.P17066953964746806611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284261 (A006882 n).toNat + A049016 n

end

end A360047.P17066953964746806611

/-! ## A360047.P15891695293917585309

`A363855(A000085(n))+A049016(n)`
-/

namespace A360047.P15891695293917585309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363855 (A000085 n).toNat + A049016 n

end

end A360047.P15891695293917585309

/-! ## A360047.P13878151789054774491

`A351539(A018038(n))+A049016(n)`
-/

namespace A360047.P13878151789054774491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A018038 n).toNat + A049016 n

end

end A360047.P13878151789054774491

/-! ## A360047.P16903687631783215973

`A340999(A225469(n))+A049016(n)`
-/

namespace A360047.P16903687631783215973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A225469 n).toNat + 204) + A049016 n

end

end A360047.P16903687631783215973

/-!
# A360048: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(n+1,2*k+1) * Catalan(k).

The programs for A360048, the canonical program `A360048.P11948513160128016268` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360048 has offset 0).

The definition of A360048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360048.P11948513160128016268

`∑[A343773(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A360048

/-- `∑[A343773(n)]` -/
def P11948513160128016268.Spec : Prop :=
  ∀ n, P11948513160128016268.a n = A360048 n

theorem P11948513160128016268.correct : P11948513160128016268.Spec := by
  intro n
  simp only [A360048]

end A360048

/-! ## A360048.P13684090806164587687

`∑[A100223(n+2)]`
-/

namespace A360048.P13684090806164587687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360048.P13684090806164587687

namespace A360048

/-- `∑[A100223(n+2)]` -/
def P13684090806164587687.Spec : Prop :=
  ∀ n, P13684090806164587687.a n = A360048 n

end A360048

/-! ## A360048.P6428790928971162184

`Δ[A134920(n+1)]`
-/

namespace A360048.P6428790928971162184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360048.P6428790928971162184

namespace A360048

/-- `Δ[A134920(n+1)]` -/
def P6428790928971162184.Spec : Prop :=
  ∀ n, P6428790928971162184.a n = A360048 n

end A360048

/-! ## A360048.P12333969422204317091

`1-A108623(n+2)`
-/

namespace A360048.P12333969422204317091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A108623 (n + 2)

end

end A360048.P12333969422204317091

namespace A360048

/-- `1-A108623(n+2)` -/
def P12333969422204317091.Spec : Prop :=
  ∀ n, P12333969422204317091.a n = A360048 n

end A360048

/-! ## A360048.P13786603566006203433

`A371888(n+2)-1`
-/

namespace A360048.P13786603566006203433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371888 (n + 2) - 1

end

end A360048.P13786603566006203433

namespace A360048

/-- `A371888(n+2)-1` -/
def P13786603566006203433.Spec : Prop :=
  ∀ n, P13786603566006203433.a n = A360048 n

end A360048

/-! ## A360048.P1195690086082246832

`A134920(n+2)-A134920(n+1)`
-/

namespace A360048.P1195690086082246832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134920 (n + 2) - A134920 (n + 1)

end

end A360048.P1195690086082246832

namespace A360048

/-- `A134920(n+2)-A134920(n+1)` -/
def P1195690086082246832.Spec : Prop :=
  ∀ n, P1195690086082246832.a n = A360048 n

end A360048

/-!
# A360051: a(n) = Sum_{k=0..floor(n/5)} (-1)^k * binomial(n+4,5*k+4) * Catalan(k).

The programs for A360051, there is no canonical definition to state claims against.
-/

/-! ## A360051.P16374658491352897024

`or(A252736(6*2^n-2*n-5), A289389(n+4))`
-/

namespace A360051.P16374658491352897024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252736 ((6 * 2 ^ n : ℤ) - (2 * n : ℤ) - 5).toNat) (A289389 (n + 4))

end

end A360051.P16374658491352897024

/-! ## A360051.P18081331279038103795

`A289389(n+4)+A080679(A278610(n+1))`
-/

namespace A360051.P18081331279038103795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289389 (n + 4) + A080679 (A278610 (n + 1)).toNat

end

end A360051.P18081331279038103795

/-! ## A360051.P6991777493659237556

`A289389(n+4)+A014229(A035082(n+4))`
-/

namespace A360051.P6991777493659237556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289389 (n + 4) + A014229 (A035082 (n + 4)).toNat

end

end A360051.P6991777493659237556

/-! ## A360051.P7532869528479688391

`(-1)^n/tan(acot(A000750(n)))`
-/

namespace A360051.P7532869528479688391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (A000750 n : ℝ))

end

end A360051.P7532869528479688391

/-! ## A360051.P8870840908685319685

`A289389(A032555(n+1)+3)`
-/

namespace A360051.P8870840908685319685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289389 (A032555 (n + 1) + 3).toNat

end

end A360051.P8870840908685319685

/-!
# A360052: Number of length n inversion sequences avoiding the patterns 010 and 201 (or 010 and 210).

The programs for A360052, there is no canonical definition to state claims against.
-/

/-! ## A360052.P16170335679035708174

`A328431(n)-A014082(A001096(n))`
-/

namespace A360052.P16170335679035708174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328431 n - A014082 (A001096 n).toNat

end

end A360052.P16170335679035708174

/-! ## A360052.P4611388041276661902

`A328431(n)-A097795(A027432(n))`
-/

namespace A360052.P4611388041276661902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328431 n - A097795 (A027432 n).toNat

end

end A360052.P4611388041276661902

/-! ## A360052.P10417549686374063767

`A328431(n)-A025466(A127986(n))`
-/

namespace A360052.P10417549686374063767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328431 n - A025466 (A127986 n).toNat

end

end A360052.P10417549686374063767

/-! ## A360052.P2253754298321886270

`A328431(n)-A083025(A149416(n))`
-/

namespace A360052.P2253754298321886270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328431 n - A083025 (A149416 n).toNat

end

end A360052.P2253754298321886270

/-!
# A360053: Primes p such that each prime < p in the prime factorization of 2^(p-1) - 1 has exponent 1.

The programs for A360053, there is no canonical definition to state claims against.
-/

/-! ## A360053.P7398254620064486226

`p?[A140769(n+1)]`
-/

namespace A360053.P7398254620064486226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360053.P7398254620064486226

/-! ## A360053.P5355939263961522349

`p?[A049093(n+1)+1]`
-/

namespace A360053.P5355939263961522349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360053.P5355939263961522349

/-! ## A360053.P7459388353487281749

`record[A166333(A049093(n+1))]`
-/

namespace A360053.P7459388353487281749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A049093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360053.P7459388353487281749

/-! ## A360053.P15192983608732742494

`filter[A140769(n+1), A010051(#)]`
-/

namespace A360053.P15192983608732742494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A360053.P15192983608732742494

/-! ## A360053.P14239046209448322122

`filter[A140769(n+1), A080339(#)]`
-/

namespace A360053.P14239046209448322122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A360053.P14239046209448322122

/-! ## A360053.P10483162726333100216

`record[A006530(A049093(n+1)+1)]`
-/

namespace A360053.P10483162726333100216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360053.P10483162726333100216

/-! ## A360053.P10001009364212628399

`record[A020500(A049093(n+1)+1)]`
-/

namespace A360053.P10001009364212628399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A049093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360053.P10001009364212628399

/-! ## A360053.P14007820619713062959

`record[A020639(A049093(n+1)+1)]`
-/

namespace A360053.P14007820619713062959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A049093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360053.P14007820619713062959

/-! ## A360053.P9742812671731212436

`record[A331102(A049093(n+1)+1)]`
-/

namespace A360053.P9742812671731212436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331102 (A049093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360053.P9742812671731212436

/-! ## A360053.P2972712744501385994

`∩[A000040(n+1), A140769(n+1)]`
-/

namespace A360053.P2972712744501385994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360053.P2972712744501385994

/-!
# A360055: Number of L-connected free polyominoes with n cells (see comments for definition).

The programs for A360055, there is no canonical definition to state claims against.
-/

/-! ## A360055.P7214122291807326629

`A342778(A329700(n))`
-/

namespace A360055.P7214122291807326629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342778 (A329700 n).toNat

end

end A360055.P7214122291807326629

/-! ## A360055.P17642210054506255199

`A342383(A339291(n+2))`
-/

namespace A360055.P17642210054506255199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A339291 (n + 2)).toNat

end

end A360055.P17642210054506255199

/-! ## A360055.P937566543224990937

`A003056(A148228(n))-A326527(n)`
-/

namespace A360055.P937566543224990937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148228 n).toNat - A326527 n

end

end A360055.P937566543224990937

/-! ## A360055.P8245307071003813100

`A347243(A304973(n)+A006141(n+5))`
-/

namespace A360055.P8245307071003813100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (A304973 n + A006141 (n + 5)).toNat

end

end A360055.P8245307071003813100

/-! ## A360055.P17864540020753041237

`A318412(abs(1-n)!)`
-/

namespace A360055.P17864540020753041237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318412 (Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A360055.P17864540020753041237

/-!
# A360056: a(n) is the position, counted from the right, of the rightmost nonzero value in the n-th nonzero restricted growth string in A239903 and its infinite continuation.

The programs for A360056, there is no canonical definition to state claims against.
-/

/-! ## A360056.P7880646345838042699

`A244415(∑[A085193(n)])`
-/

namespace A360056.P7880646345838042699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360056.P7880646345838042699

/-! ## A360056.P3487394688109991114

`A060502(A085190(n)-1)`
-/

namespace A360056.P3487394688109991114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A085190 n - 1).toNat

end

end A360056.P3487394688109991114

/-! ## A360056.P11106437706606921183

`A363228(A085195(n+1))`
-/

namespace A360056.P11106437706606921183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363228 (A085195 (n + 1)).toNat

end

end A360056.P11106437706606921183

/-! ## A360056.P2121588948668217519

`A230404(A085188(n+1))`
-/

namespace A360056.P2121588948668217519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (A085188 (n + 1)).toNat

end

end A360056.P2121588948668217519

/-! ## A360056.P1001129820212036029

`A037968(Δ[A239903(n)])`
-/

namespace A360056.P1001129820212036029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037968 (f1 (n + 1) - f1 n).toNat

end

end A360056.P1001129820212036029

/-! ## A360056.P3640641535527622811

`A265331(A085186(n+1))`
-/

namespace A360056.P3640641535527622811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (A085186 (n + 1)).toNat

end

end A360056.P3640641535527622811

/-!
# A360057: a(n) = Sum_{k=0..n} binomial(n+4*k+4,n-k) * Catalan(k).

The programs for A360057, there is no canonical definition to state claims against.
-/

/-! ## A360057.P16968566804670179835

`∑[A165706(Δ[A002296(n)])]`
-/

namespace A360057.P16968566804670179835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002296 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165706 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360057.P16968566804670179835

/-!
# A360062: Triangle read by rows: T(m,n) is the number of spanning trees in the graph whose nodes are the integer lattice points (x,y) with 0 <= x < m and 0 <= y < n, and with an edge between two nodes if there is no other integer lattice point on the line segment between them; 1 <= n <= m.

The programs for A360062, there is no canonical definition to state claims against.
-/

/-! ## A360062.P849206033180037434

`gcd((-4)^a(n-1)*C(n, 2), n%2)²` with `a(0)=1`
-/

namespace A360062.P849206033180037434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((-4) ^ a (n - 1) * (Nat.choose n 2 : ℤ)) ((n % 2 : ℕ) : ℤ) ^ 2

end

end A360062.P849206033180037434

/-!
# A360063: Triangle read by rows: T(m,n) is the number of Hamiltonian cycles in the graph whose nodes are the integer lattice points (x,y) with 0 <= x < m and 0 <= y < n, and with an edge between two nodes if there is no other integer lattice point on the line segment between them; 1 <= n <= m.

The programs for A360063, there is no canonical definition to state claims against.
-/

/-! ## A360063.P1117807952250925565

`A375486(A000108(floor(n^log(4))))`
-/

namespace A360063.P1117807952250925565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375486 (A000108 ⌊(n : ℝ) ^ (Real.log (4 : ℝ))⌋.toNat).toNat

end

end A360063.P1117807952250925565

/-! ## A360063.P11081476090865846002

`A007954(A307455(3*(n+1))-(n+1))`
-/

namespace A360063.P11081476090865846002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A307455 (3 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A360063.P11081476090865846002

/-!
# A360065: Number of 3-dimensional tilings of a 2 X 2 X n box using 2 X 1 X 1 dominos and trominos (L-shaped connection of 3 cubes).

The programs for A360065, there is no canonical definition to state claims against.
-/

/-! ## A360065.P15765458415005212464

`(n+1)*A194440(A149577(n))`
-/

namespace A360065.P15765458415005212464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A194440 (A149577 n).toNat

end

end A360065.P15765458415005212464

/-!
# A360067: a(n) = det(M) where M is an n X n matrix with M[i,j] = i^j*(i-j).

The programs for A360067, there is no canonical definition to state claims against.
-/

/-! ## A360067.P13765710609745124353

`A000178(n)*A089064(n+1)`
-/

namespace A360067.P13765710609745124353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A089064 (n + 1)

end

end A360067.P13765710609745124353

/-! ## A360067.P1974477335815933465

`∏[A000142(n)]*A089064(n+1)`
-/

namespace A360067.P1974477335815933465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A089064 (n + 1)

end

end A360067.P1974477335815933465

/-!
# A360068: Number of integer partitions of n such that the parts have the same mean as the multiplicities.

The programs for A360068, there is no canonical definition to state claims against.
-/

/-! ## A360068.P14763562947525563134

`A271703(A074206(n))^A255869(n)`
-/

namespace A360068.P14763562947525563134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 (A074206 n).toNat : ℚ) ^ (A255869 n : ℤ)

end

end A360068.P14763562947525563134

/-!
# A360070: Numbers for which there exists an integer partition such that the parts have the same mean as the multiplicities.

The programs for A360070, there is no canonical definition to state claims against.
-/

/-! ## A360070.P15208413541040023586

`lt[acot(n), A360068(n)]`
-/

namespace A360070.P15208413541040023586
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A360070.P15208413541040023586

/-! ## A360070.P1374774704515227597

`lt[0, A360068(n+1)]+1`
-/

namespace A360070.P1374774704515227597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360070.P1374774704515227597

/-! ## A360070.P13104722009518661789

`lt[A000007(n), A360068(n)]`
-/

namespace A360070.P13104722009518661789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360070.P13104722009518661789

/-! ## A360070.P7798186574574270416

`lt[A000038(n), A360068(n)]`
-/

namespace A360070.P7798186574574270416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360070.P7798186574574270416

/-! ## A360070.P14712099927102105023

`lt[A079979(n), A360068(n)]`
-/

namespace A360070.P14712099927102105023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360070.P14712099927102105023

/-!
# A360071: Regular tetrangle where T(n,k,i) = number of integer partitions of n of length k with i distinct parts.

The programs for A360071, there is no canonical definition to state claims against.
-/

/-! ## A360071.P14480799267635321591

`A092078(A347520(n)+1)`
-/

namespace A360071.P14480799267635321591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092078 (A347520 n + 1).toNat

end

end A360071.P14480799267635321591

/-! ## A360071.P838711801003546026

`A035202(A306566(n+1)+A131929(n+1))`
-/

namespace A360071.P838711801003546026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (A306566 (n + 1) + A131929 (n + 1)).toNat

end

end A360071.P838711801003546026

/-! ## A360071.P10531929393132029997

`A141736(A312624(n+1))`
-/

namespace A360071.P10531929393132029997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141736 (A312624 (n + 1)).toNat

end

end A360071.P10531929393132029997

/-! ## A360071.P5844677813129700945

`A266716(A371253(n+1))`
-/

namespace A360071.P5844677813129700945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A371253 (n + 1)).toNat

end

end A360071.P5844677813129700945

/-! ## A360071.P11328409416751411729

`A359466(A053810(n+1)*A173978(n+1))`
-/

namespace A360071.P11328409416751411729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359466 (A053810 (n + 1) * A173978 (n + 1)).toNat

end

end A360071.P11328409416751411729

/-!
# A360075: a(n) is the product of the digits of A007602(n), the n-th Zuckerman number.

The programs for A360075, there is no canonical definition to state claims against.
-/

/-! ## A360075.P16098780661030211491

`A007954(A007602(n+1))`
-/

namespace A360075.P16098780661030211491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007602 (n + 1)).toNat

end

end A360075.P16098780661030211491

/-! ## A360075.P12663241258381983276

`A007602(n+1)/A288069(n+1)`
-/

namespace A360075.P12663241258381983276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007602 (n + 1) : ℚ) / (A288069 (n + 1) : ℚ)

end

end A360075.P12663241258381983276

/-! ## A360075.P13195473330920542820

`∏{digits}[record[A007602(A065648(n))], #]`
-/

namespace A360075.P13195473330920542820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A360075.P13195473330920542820

/-! ## A360075.P4925446623177417730

`∏{digits}[∩[A055471(n+1), A180484(n+1)], #]`
-/

namespace A360075.P4925446623177417730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A360075.P4925446623177417730

/-! ## A360075.P9697228295179056258

`∩[A055471(n+1), A180484(n+1)]/A288069(n+1)`
-/

namespace A360075.P9697228295179056258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A288069 (n + 1) : ℚ)

end

end A360075.P9697228295179056258

/-! ## A360075.P3314725108019870894

`∩[A034838(n+1), A055471(n+1)]/A288069(n+1)`
-/

namespace A360075.P3314725108019870894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A288069 (n + 1) : ℚ)

end

end A360075.P3314725108019870894

/-! ## A360075.P17245579042336532348

`∩[A055471(n+1), A180478(n+1)]/A288069(n+1)`
-/

namespace A360075.P17245579042336532348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180478 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A288069 (n + 1) : ℚ)

end

end A360075.P17245579042336532348

/-! ## A360075.P11005680201902516856

`A051801(A007602(2*n+1-n))`
-/

namespace A360075.P11005680201902516856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007602 (2 * n + 1 - n)).toNat

end

end A360075.P11005680201902516856

/-!
# A360076: a(n) = Sum_{k=0..n} binomial(3*k,n-k) * Catalan(k).

The programs for A360076, there is no canonical definition to state claims against.
-/

/-! ## A360076.P12243368849131553895

`A366236(n)-a(n-1)` with `a(0)=1`
-/

namespace A360076.P12243368849131553895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366236 n - a (n - 1)

end

end A360076.P12243368849131553895

/-! ## A360076.P16658281580859339504

`A006594(A006603(n))-A001791(n)`
-/

namespace A360076.P16658281580859339504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (A006603 n).toNat - A001791 n

end

end A360076.P16658281580859339504

/-!
# A360077: Odd numbers k such that k mod (k-s) = 1, where s is the greatest square < k.

The programs for A360077, there is no canonical definition to state claims against.
-/

/-! ## A360077.P1602206703090906915

`∑[A182743(A032355(n+2)²)]`
-/

namespace A360077.P1602206703090906915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182743 (A032355 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360077.P1602206703090906915

/-! ## A360077.P388413036057223074

`eq[A011651(n), A362952(n+1)]`
-/

namespace A360077.P388413036057223074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360077.P388413036057223074

/-! ## A360077.P11288390223047838172

`record[A053831(A038613(3*n+5))]`
-/

namespace A360077.P11288390223047838172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (A038613 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360077.P11288390223047838172

/-! ## A360077.P6800276181059027770

`eq[sqrt(A007877(n)), A230440(2*n+1)]`
-/

namespace A360077.P6800276181059027770
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007877 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230440 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A360077.P6800276181059027770

/-! ## A360077.P260602369253796693

`eq[Δ[A004526(n)], A230440(2*n+1)]`
-/

namespace A360077.P260602369253796693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230440 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A360077.P260602369253796693

/-!
# A360078: Moebius function for the floor quotient poset.

The programs for A360078, there is no canonical definition to state claims against.
-/

/-! ## A360078.P13555293288760983160

`∑[A360079(n+1)]`
-/

namespace A360078.P13555293288760983160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360078.P13555293288760983160

/-!
# A360079: Finite differences of Moebius function for the floor quotient poset.

The programs for A360079, there is no canonical definition to state claims against.
-/

/-! ## A360079.P6631962980070762469

`A117165(A002330(n+1)²)`
-/

namespace A360079.P6631962980070762469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (A002330 (n + 1) ^ 2).toNat

end

end A360079.P6631962980070762469

/-! ## A360079.P17437812498533140975

`A117165(A002330(n+1)*A002330(n+1))`
-/

namespace A360079.P17437812498533140975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (A002330 (n + 1) * A002330 (n + 1)).toNat

end

end A360079.P17437812498533140975

/-! ## A360079.P13385504731211984956

`A281772(A008615(2*(n+2))*A028871(n+2))`
-/

namespace A360079.P13385504731211984956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281772 (A008615 (2 * (n + 2)) * A028871 (n + 2)).toNat

end

end A360079.P13385504731211984956

/-! ## A360079.P15326785788998398644

`Δ[∑{e}[A002262(A070744(n+1)), #]]`
-/

namespace A360079.P15326785788998398644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A070744 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A360079.P15326785788998398644

/-! ## A360079.P4026910549619087012

`A014204(n)+A014149(A177856(n+1))`
-/

namespace A360079.P4026910549619087012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014204 n + A014149 (A177856 (n + 1)).toNat

end

end A360079.P4026910549619087012

/-!
# A360080: Smallest k such that 2^(2^n) + k is a safe prime.

The programs for A360080, there is no canonical definition to state claims against.
-/

/-! ## A360080.P6746657193114267157

`A350696(2^(n+1))`
-/

namespace A360080.P6746657193114267157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350696 (2 ^ (n + 1))

end

end A360080.P6746657193114267157

/-! ## A360080.P4803888392734367137

`A350696(A198633(n))%A037128(2*n+1)`
-/

namespace A360080.P4803888392734367137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350696 (A198633 n).toNat) (A037128 (2 * n + 1))

end

end A360080.P4803888392734367137

/-! ## A360080.P4507782181448108318

`A350696(A228693(2*n+3))+A091009(3*n+2)`
-/

namespace A360080.P4507782181448108318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350696 (A228693 (2 * n + 3)).toNat + A091009 (3 * n + 2)

end

end A360080.P4507782181448108318

/-! ## A360080.P7735237181351447434

`A001221(A000079(n+1))*A350696(A000079(n+1))`
-/

namespace A360080.P7735237181351447434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 (n + 1)).toNat * A350696 (A000079 (n + 1)).toNat

end

end A360080.P7735237181351447434

/-! ## A360080.P5445441503600517819

`A064547(A302491(n+1))*A350696(A000079(n+1))`
-/

namespace A360080.P5445441503600517819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A302491 (n + 1)).toNat * A350696 (A000079 (n + 1)).toNat

end

end A360080.P5445441503600517819

/-!
# A360081: Smallest k such that 2^(3*2^n) + k is a safe prime.

The programs for A360081, there is no canonical definition to state claims against.
-/

/-! ## A360081.P12716968274542548443

`A350696(3*2^n)`
-/

namespace A360081.P12716968274542548443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350696 (3 * 2 ^ n)

end

end A360081.P12716968274542548443

/-! ## A360081.P14701553961361410332

`or(1, A350696(A007283(n)))`
-/

namespace A360081.P14701553961361410332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A350696 (A007283 n).toNat)

end

end A360081.P14701553961361410332

/-!
# A360082: a(n) = Sum_{k=0..n} binomial(4*k,n-k) * Catalan(k).

The programs for A360082, there is no canonical definition to state claims against.
-/

/-! ## A360082.P5173905390669592686

`A366237(n)-a(n-1)` with `a(0)=1`
-/

namespace A360082.P5173905390669592686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366237 n - a (n - 1)

end

end A360082.P5173905390669592686

/-!
# A360083: a(n) = Sum_{k=0..n} binomial(5*k,n-k) * Catalan(k).

The programs for A360083, there is no canonical definition to state claims against.
-/

/-! ## A360083.P16707750004844754494

`A366238(n)-a(n-1)` with `a(0)=1`
-/

namespace A360083.P16707750004844754494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366238 n - a (n - 1)

end

end A360083.P16707750004844754494

/-! ## A360083.P12224832691478661270

`Δ[A008615(∑[A162476(n)]+n+3+n)]`
-/

namespace A360083.P12224832691478661270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ) + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360083.P12224832691478661270

/-!
# A360087: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*k,n-k).

The programs for A360087, the canonical program `A360087.P10277069332505734205` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360087 has offset 0).

The definition of A360087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360087.P10277069332505734205

`(-1)^n*A099530(3*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360087

/-- `(-1)^n*A099530(3*n)` -/
def P10277069332505734205.Spec : Prop :=
  ∀ n, P10277069332505734205.a n = A360087 n

theorem P10277069332505734205.correct : P10277069332505734205.Spec := by
  intro n
  simp only [A360087]

end A360087

/-!
# A360090: a(n) = Sum_{k=0..n} binomial(5*k,n-k).

The programs for A360090, the canonical program `A360090.P12755551519393560906` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360090 has offset 0).

The definition of A360090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360090.P12755551519393560906

`A005708(5*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360090

/-- `A005708(5*n)` -/
def P12755551519393560906.Spec : Prop :=
  ∀ n, P12755551519393560906.a n = A360090 n

theorem P12755551519393560906.correct : P12755551519393560906.Spec := by
  intro n
  simp only [A360090]

end A360090

/-! ## A360090.P4769975770928262438

`A017900(5*n+6)`
-/

namespace A360090.P4769975770928262438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (5 * n + 6)

end

end A360090.P4769975770928262438

namespace A360090

/-- `A017900(5*n+6)` -/
def P4769975770928262438.Spec : Prop :=
  ∀ n, P4769975770928262438.a n = A360090 n

end A360090

/-! ## A360090.P1391462481896496129

`Δ[A017841(A008574(n)+1+n)]`
-/

namespace A360090.P1391462481896496129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017841 (A008574 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360090.P1391462481896496129

namespace A360090

/-- `Δ[A017841(A008574(n)+1+n)]` -/
def P1391462481896496129.Spec : Prop :=
  ∀ n, P1391462481896496129.a n = A360090 n

end A360090

/-! ## A360090.P3504957278251077910

`A099233(eq[5, A025581(n)])`
-/

namespace A360090.P3504957278251077910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A360090.P3504957278251077910

namespace A360090

/-- `A099233(eq[5, A025581(n)])` -/
def P3504957278251077910.Spec : Prop :=
  ∀ n, P3504957278251077910.a n = A360090 n

end A360090

/-! ## A360090.P891394329018098405

`A099233(A052905(n+3)-1)`
-/

namespace A360090.P891394329018098405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (A052905 (n + 3) - 1).toNat

end

end A360090.P891394329018098405

namespace A360090

/-- `A099233(A052905(n+3)-1)` -/
def P891394329018098405.Spec : Prop :=
  ∀ n, P891394329018098405.a n = A360090 n

end A360090

/-!
# A360093: a(n) is the smallest positive integer which can be represented as the sum of distinct partition numbers in exactly n ways, or -1 if no such integer exists.

The programs for A360093, there is no canonical definition to state claims against.
-/

/-! ## A360093.P2097462764179871326

`∑[A175723(Δ[A061667(n+1)])]`
-/

namespace A360093.P2097462764179871326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175723 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360093.P2097462764179871326

/-! ## A360093.P3168990124621729065

`A257921(A006190(n))+A008587(n)`
-/

namespace A360093.P3168990124621729065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (A006190 n).toNat + A008587 n

end

end A360093.P3168990124621729065

/-! ## A360093.P1696383197561255174

`abs(A184334(A008586(n)*A084849(n+4))-5*n)`
-/

namespace A360093.P1696383197561255174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184334 (A008586 n * A084849 (n + 4)).toNat - (5 * n : ℤ)|

end

end A360093.P1696383197561255174

/-!
# A360096: To get a(n), replace 0's in the binary expansion of n with (-1) and interpret the result in base n.

The programs for A360096, there is no canonical definition to state claims against.
-/

/-! ## A360096.P9217184908584152238

`A360099(∑[4*n])`
-/

namespace A360096.P9217184908584152238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360096.P9217184908584152238

/-! ## A360096.P12823043140077379322

`abs(A360099(A046092(n)))`
-/

namespace A360096.P12823043140077379322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A360099 (A046092 n).toNat|

end

end A360096.P12823043140077379322

/-! ## A360096.P612421919017666914

`A057427(n)*A360099(A046092(n))`
-/

namespace A360096.P612421919017666914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A360099 (A046092 n).toNat

end

end A360096.P612421919017666914

/-! ## A360096.P3578348489453113459

`A178334(n)*A360099(A046092(n))`
-/

namespace A360096.P3578348489453113459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A360099 (A046092 n).toNat

end

end A360096.P3578348489453113459

/-! ## A360096.P17196149120073203260

`A360099(A046092(n))%A075268(n)`
-/

namespace A360096.P17196149120073203260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360099 (A046092 n).toNat) (A075268 n)

end

end A360096.P17196149120073203260

/-! ## A360096.P9026271208576588836

`lcm(A033999(n), A360099(A046092(n)))`
-/

namespace A360096.P9026271208576588836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A360099 (A046092 n).toNat)

end

end A360096.P9026271208576588836

/-! ## A360096.P15574681430858101860

`or(A063524(n), A360099(A046092(n)))`
-/

namespace A360096.P15574681430858101860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A360099 (A046092 n).toNat)

end

end A360096.P15574681430858101860

/-! ## A360096.P14219547149482151051

`A010052(n²)*A360099(A046092(n))`
-/

namespace A360096.P14219547149482151051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A360099 (A046092 n).toNat

end

end A360096.P14219547149482151051

/-! ## A360096.P5515708089894776904

`A360099(A046092(n))+A000035(2*n)`
-/

namespace A360096.P5515708089894776904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A046092 n).toNat + A000035 (2 * n)

end

end A360096.P5515708089894776904

/-! ## A360096.P857968491190933810

`A360099(A046092(n))+A070138(2*n+5)`
-/

namespace A360096.P857968491190933810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A046092 n).toNat + A070138 (2 * n + 5)

end

end A360096.P857968491190933810

/-! ## A360096.P14215060770132376152

`(A000027(n+1)-n)*A360099(A046092(n))`
-/

namespace A360096.P14215060770132376152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A360099 (A046092 n).toNat

end

end A360096.P14215060770132376152

/-! ## A360096.P11053397351908533609

`A360099(A046092(n))+A010052(A000040(n+1))`
-/

namespace A360096.P11053397351908533609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A046092 n).toNat + A010052 (A000040 (n + 1)).toNat

end

end A360096.P11053397351908533609

/-! ## A360096.P11951039693167016495

`A360099(A046092(n))+A010052(A000928(n+1))`
-/

namespace A360096.P11951039693167016495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A046092 n).toNat + A010052 (A000928 (n + 1)).toNat

end

end A360096.P11951039693167016495

/-! ## A360096.P15292483954914680381

`A360099(A046092(n))+A349349(A007491(n+1))`
-/

namespace A360096.P15292483954914680381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A046092 n).toNat + A349349 (A007491 (n + 1)).toNat

end

end A360096.P15292483954914680381

/-! ## A360096.P16067597616584812310

`A360099(A046092(n))+A349349(A165320(n+1))`
-/

namespace A360096.P16067597616584812310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360099 (A046092 n).toNat + A349349 (A165320 (n + 1)).toNat

end

end A360096.P16067597616584812310

/-!
# A360097: a(n) = smallest k such that 2*n*k-1 and 2*n*k+1 are nonprimes.

The programs for A360097, there is no canonical definition to state claims against.
-/

/-! ## A360097.P2899754173602516642

`A065865(2*(n+1))`
-/

namespace A360097.P2899754173602516642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065865 (2 * (n + 1))

end

end A360097.P2899754173602516642

/-! ## A360097.P5361541427917759904

`A065865(A005843(n+1))%39`
-/

namespace A360097.P5361541427917759904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065865 (A005843 (n + 1)).toNat) 39

end

end A360097.P5361541427917759904

/-! ## A360097.P6135116064207151599

`lcm(A033999(n), A065865(A005843(n+1)))`
-/

namespace A360097.P6135116064207151599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A065865 (A005843 (n + 1)).toNat)

end

end A360097.P6135116064207151599

/-! ## A360097.P16088850881818540789

`A065865(A005843(n+1))/A090740(A028234(n+1))`
-/

namespace A360097.P16088850881818540789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065865 (A005843 (n + 1)).toNat : ℚ) / (A090740 (A028234 (n + 1)).toNat : ℚ)

end

end A360097.P16088850881818540789

/-! ## A360097.P1323847667718012715

`A065865(A005843(n+1))/A052409(A345840(n+1))`
-/

namespace A360097.P1323847667718012715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065865 (A005843 (n + 1)).toNat : ℚ) / (A052409 (A345840 (n + 1)).toNat : ℚ)

end

end A360097.P1323847667718012715

/-! ## A360097.P789437488802723409

`A065865(A005843(n+1))/A028234(A000040(n+1))`
-/

namespace A360097.P789437488802723409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065865 (A005843 (n + 1)).toNat : ℚ) / (A028234 (A000040 (n + 1)).toNat : ℚ)

end

end A360097.P789437488802723409

/-! ## A360097.P11488392346675325079

`A065865(A005843(n+1))/A028234(A214577(n+1))`
-/

namespace A360097.P11488392346675325079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065865 (A005843 (n + 1)).toNat : ℚ) / (A028234 (A214577 (n + 1)).toNat : ℚ)

end

end A360097.P11488392346675325079

/-!
# A360098: Square array read by antidiagonals upwards: T(n,k) is the number of ways of choosing nonnegative numbers for k n-sided dice, k >= 0, n >= 1, so that summing the faces can give any integer from 0 to n^k - 1.

The programs for A360098, there is no canonical definition to state claims against.
-/

/-! ## A360098.P8912599044501145573

`A147096(A249822(n+1))`
-/

namespace A360098.P8912599044501145573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147096 (A249822 (n + 1)).toNat

end

end A360098.P8912599044501145573

/-! ## A360098.P16464820799268334069

`gcd(A004767(A117716(n+2)), A172342(n))`
-/

namespace A360098.P16464820799268334069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004767 (A117716 (n + 2)).toNat) (A172342 n)

end

end A360098.P16464820799268334069

/-! ## A360098.P9489692545320989002

`A138261(and(A082897(n+1), A145515(n)))`
-/

namespace A360098.P9489692545320989002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138261 (Int.land (A082897 (n + 1)) (A145515 n)).toNat

end

end A360098.P9489692545320989002

/-! ## A360098.P1617021816471307814

`A347729(A136630(n+1))`
-/

namespace A360098.P1617021816471307814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347729 (A136630 (n + 1)).toNat

end

end A360098.P1617021816471307814

/-! ## A360098.P8167764278133106616

`A112292(A066701(n+2))`
-/

namespace A360098.P8167764278133106616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112292 (A066701 (n + 2)).toNat

end

end A360098.P8167764278133106616

/-!
# A360099: To get A(n,k), replace 0's in the binary expansion of n with (-1) and interpret the result in base k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A360099, there is no canonical definition to state claims against.
-/

/-! ## A360099.P17151888584768671911

`A052344(n)-A163533(A001006(n))`
-/

namespace A360099.P17151888584768671911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n - A163533 (A001006 n).toNat

end

end A360099.P17151888584768671911

/-! ## A360099.P7473641721094118554

`A215029(∑[A000914(n)^A106226(n)])`
-/

namespace A360099.P7473641721094118554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000914 n : ℚ) ^ (A106226 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A360099.P7473641721094118554

/-! ## A360099.P13954746748044532688

`A016331(A355721(n))`
-/

namespace A360099.P13954746748044532688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016331 (A355721 n).toNat

end

end A360099.P13954746748044532688

/-! ## A360099.P17735483874338905736

`A373223(A059274(n))`
-/

namespace A360099.P17735483874338905736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373223 (A059274 n).toNat

end

end A360099.P17735483874338905736

/-! ## A360099.P1172405638957672094

`A337311(A336574(n))`
-/

namespace A360099.P1172405638957672094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337311 (A336574 n).toNat

end

end A360099.P1172405638957672094

