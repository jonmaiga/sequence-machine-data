import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A374800: Inverse permutation to A374799.

The programs for A374800, there is no canonical definition to state claims against.
-/

/-! ## A374800.P6095421648503966824

`fo[A374799(n)]`
-/

namespace A374800.P6095421648503966824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A374800.P6095421648503966824

/-!
# A374801: Irregular table T(n, k), n > 0, k = 1..A048691(n), read by rows; the n-th row lists the numbers m such that A003990(m) = n.

The programs for A374801, there is no canonical definition to state claims against.
-/

/-! ## A374801.P11566991326153539271

`fo[A374802(n+1)-1]+1`
-/

namespace A374801.P11566991326153539271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374802 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A374801.P11566991326153539271

/-!
# A374802: Inverse permutation to A374801.

The programs for A374802, there is no canonical definition to state claims against.
-/

/-! ## A374802.P12218442245563868181

`fo[A374801(n+1)-1]+1`
-/

namespace A374802.P12218442245563868181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374801 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A374802.P12218442245563868181

/-!
# A374806: a(n) is the smallest number which can be represented as the sum of 3 distinct nonzero triangular numbers in exactly n ways, or -1 if no such number exists.

The programs for A374806, there is no canonical definition to state claims against.
-/

/-! ## A374806.P8396977336047618803

`A371167(A325238(2*(n+2)))+A140995(n)`
-/

namespace A374806.P8396977336047618803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371167 (A325238 (2 * (n + 2))).toNat + A140995 n

end

end A374806.P8396977336047618803

/-! ## A374806.P288357820210397716

`A160120(2*n+1)+A056239(A242296(n+1))`
-/

namespace A374806.P288357820210397716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (2 * n + 1) + A056239 (A242296 (n + 1)).toNat

end

end A374806.P288357820210397716

/-!
# A374810: Values k such that the two-player impartial {0,1}-Toggle game on a path P(k+2) = v(1)v(2)...v(k+2) with a (1^k,0,1)-weight assignment is a second-player winning game.

The programs for A374810, there is no canonical definition to state claims against.
-/

/-! ## A374810.P1534000677296637271

`A374920(n+1)-A185284(A294861(n))`
-/

namespace A374810.P1534000677296637271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374920 (n + 1) - A185284 (A294861 n).toNat

end

end A374810.P1534000677296637271

/-! ## A374810.P7505294195871152400

`A374920(n+1)-A079978(A251145(n+1))`
-/

namespace A374810.P7505294195871152400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374920 (n + 1) - A079978 (A251145 (n + 1)).toNat

end

end A374810.P7505294195871152400

/-! ## A374810.P18213444004298799011

`∪[A374920(n+1), A382992(A255673(2*n))]`
-/

namespace A374810.P18213444004298799011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382992 (A255673 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374810.P18213444004298799011

/-! ## A374810.P4638850150132218664

`A374920(n+1)-A185284(A165652(2*(n+1)))`
-/

namespace A374810.P4638850150132218664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374920 (n + 1) - A185284 (A165652 (2 * (n + 1))).toNat

end

end A374810.P4638850150132218664

/-!
# A374811: Numerator of the expected height of a random binary search tree (BST) with n elements.

The programs for A374811, there is no canonical definition to state claims against.
-/

/-! ## A374811.P13475119742466390816

`A195582(n)-A195583(n)`
-/

namespace A374811.P13475119742466390816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195582 n - A195583 n

end

end A374811.P13475119742466390816

/-!
# A374812: 10^n-th nonsquarefree number.

The programs for A374812, the canonical program `A374812.P12842280590014895668` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374812 has offset 0).

The definition of A374812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374812.P12842280590014895668

`A013929(10^n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A374812

/-- `A013929(10^n)` -/
def P12842280590014895668.Spec : Prop :=
  ∀ n, P12842280590014895668.a n = A374812 n

theorem P12842280590014895668.correct : P12842280590014895668.Spec := by
  intro n
  simp only [A374812]

end A374812

/-! ## A374812.P8922473512642819316

`record[A013929(A038303(n))]`
-/

namespace A374812.P8922473512642819316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A038303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374812.P8922473512642819316

namespace A374812

/-- `record[A013929(A038303(n))]` -/
def P8922473512642819316.Spec : Prop :=
  ∀ n, P8922473512642819316.a n = A374812 n

end A374812

/-!
# A374816: a(n) is the least k > a(n-1) such that k - a(i) for i = 0 .. n-1 all have exactly n prime factors, counted with multiplicity; a(0) = 0.

The programs for A374816, there is no canonical definition to state claims against.
-/

/-! ## A374816.P8028263468126107738

`A218601(A345696(n+2))`
-/

namespace A374816.P8028263468126107738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218601 (A345696 (n + 2)).toNat

end

end A374816.P8028263468126107738

/-!
# A374817: Irregular table T(n, k), n > 0, k = 1..A000005(n), read by rows; the n-th row lists the numbers m such that A003991(m) = n.

The programs for A374817, there is no canonical definition to state claims against.
-/

/-! ## A374817.P14760363592400018860

`fo[A374818(n+1)-1]+1`
-/

namespace A374817.P14760363592400018860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374818 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A374817.P14760363592400018860

/-!
# A374818: Inverse permutation to A374817.

The programs for A374818, there is no canonical definition to state claims against.
-/

/-! ## A374818.P5409456101769256209

`fo[A374817(n+1)-1]+1`
-/

namespace A374818.P5409456101769256209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374817 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A374818.P5409456101769256209

/-!
# A374819: Triangle read by rows: T(n,k) is the number of functions on the Boolean lattice B_n satisfying f({}) =0, f([n])=k, and the Boolean growth rule: f(J union {i})-f(J) in {0,1} for all subsets J of [n]={1, ..., n} and all i in [n]\J, 0 <= k <= n.

The programs for A374819, there is no canonical definition to state claims against.
-/

/-! ## A374819.P7019171655872178447

`A030396(A022175(n))`
-/

namespace A374819.P7019171655872178447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030396 (A022175 n).toNat

end

end A374819.P7019171655872178447

/-! ## A374819.P12634084952262839556

`A007153(A123610(n))`
-/

namespace A374819.P12634084952262839556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 (A123610 n).toNat

end

end A374819.P12634084952262839556

/-! ## A374819.P12604519442673768212

`A007153(A137896(n))`
-/

namespace A374819.P12604519442673768212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 (A137896 n).toNat

end

end A374819.P12604519442673768212

/-! ## A374819.P114386570465551954

`A007153(A157219(n))`
-/

namespace A374819.P114386570465551954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 (A157219 n).toNat

end

end A374819.P114386570465551954

/-! ## A374819.P14403462449686911024

`A007153(A167040(n))`
-/

namespace A374819.P14403462449686911024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 (A167040 n).toNat

end

end A374819.P14403462449686911024

/-!
# A374821: Antichain-Boolean Quilt Numbers: Square table of the number of ASM quilts of type B_n x A_2(j) read down antidiagonals, where B_n is the Boolean lattice and A_2(j) is the rank 2 poset with a unique minimal and maximal element and j atoms.

The programs for A374821, there is no canonical definition to state claims against.
-/

/-! ## A374821.P189863358701741954

`A350126(n)+A109459(A000045(n))`
-/

namespace A374821.P189863358701741954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350126 n + A109459 (A000045 n).toNat

end

end A374821.P189863358701741954

/-! ## A374821.P13274497664599041150

`A207858(A377840(n))+A027375(n)`
-/

namespace A374821.P13274497664599041150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (A377840 n).toNat + A027375 n

end

end A374821.P13274497664599041150

/-!
# A374823: Primes p such that p-1 is refactorable.

The programs for A374823, the canonical program `A374823.P10577400453278388443` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374823 has offset 1).

The definition of A374823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374823.P8031032566432258596

`record[A020639(1+A033950(n+1))]`
-/

namespace A374823.P8031032566432258596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + A033950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374823.P8031032566432258596

namespace A374823

/-- `record[A020639(1+A033950(n+1))]` -/
def P8031032566432258596.Spec : Prop :=
  ∀ n, P8031032566432258596.a n = A374823 (n + 1)

end A374823

/-! ## A374823.P5872364357755607882

`filter[A033950(n+1)+1, A001222(#)]`
-/

namespace A374823.P5872364357755607882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A374823.P5872364357755607882

namespace A374823

/-- `filter[A033950(n+1)+1, A001222(#)]` -/
def P5872364357755607882.Spec : Prop :=
  ∀ n, P5872364357755607882.a n = A374823 (n + 1)

end A374823

/-! ## A374823.P10577400453278388443

`filter[A033950(n+1)+1, A010051(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A374823

/-- `filter[A033950(n+1)+1, A010051(#)]` -/
def P10577400453278388443.Spec : Prop :=
  ∀ n, P10577400453278388443.a n = A374823 (n + 1)

theorem P10577400453278388443.correct : P10577400453278388443.Spec := by
  intro n
  simp only [A374823, Nat.add_sub_cancel]

end A374823

/-! ## A374823.P1320616488124396592

`filter[A006093(n+1), A336040(#)]+1`
-/

namespace A374823.P1320616488124396592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n) + 1

end

end A374823.P1320616488124396592

namespace A374823

/-- `filter[A006093(n+1), A336040(#)]+1` -/
def P1320616488124396592.Spec : Prop :=
  ∀ n, P1320616488124396592.a n = A374823 (n + 1)

end A374823

/-! ## A374823.P1311388547321898954

`p?[A377121(n+1)]`
-/

namespace A374823.P1311388547321898954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374823.P1311388547321898954

namespace A374823

/-- `p?[A377121(n+1)]` -/
def P1311388547321898954.Spec : Prop :=
  ∀ n, P1311388547321898954.a n = A374823 (n + 1)

end A374823

/-! ## A374823.P10114583963700648592

`filter[A377121(n+1), A010051(#)]`
-/

namespace A374823.P10114583963700648592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A374823.P10114583963700648592

namespace A374823

/-- `filter[A377121(n+1), A010051(#)]` -/
def P10114583963700648592.Spec : Prop :=
  ∀ n, P10114583963700648592.a n = A374823 (n + 1)

end A374823

/-! ## A374823.P10659293906319626787

`∩[A000040(n+1), A377121(n+1)]`
-/

namespace A374823.P10659293906319626787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374823.P10659293906319626787

namespace A374823

/-- `∩[A000040(n+1), A377121(n+1)]` -/
def P10659293906319626787.Spec : Prop :=
  ∀ n, (P10659293906319626787.a n : ℤ) = A374823 (n + 1)

end A374823

/-! ## A374823.P14252403900270909458

`∩[A042998(n+1), A377121(n+1)]`
-/

namespace A374823.P14252403900270909458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374823.P14252403900270909458

namespace A374823

/-- `∩[A042998(n+1), A377121(n+1)]` -/
def P14252403900270909458.Spec : Prop :=
  ∀ n, (P14252403900270909458.a n : ℤ) = A374823 (n + 1)

end A374823

/-! ## A374823.P11091947896219317441

`∩[A045319(n+1), A377121(n+1)]`
-/

namespace A374823.P11091947896219317441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374823.P11091947896219317441

namespace A374823

/-- `∩[A045319(n+1), A377121(n+1)]` -/
def P11091947896219317441.Spec : Prop :=
  ∀ n, (P11091947896219317441.a n : ℤ) = A374823 (n + 1)

end A374823

/-! ## A374823.P17021493530987290631

`∩[A059456(n+1), A377121(n+1)]`
-/

namespace A374823.P17021493530987290631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374823.P17021493530987290631

namespace A374823

/-- `∩[A059456(n+1), A377121(n+1)]` -/
def P17021493530987290631.Spec : Prop :=
  ∀ n, (P17021493530987290631.a n : ℤ) = A374823 (n + 1)

end A374823

/-! ## A374823.P5665378425175174266

`∩[A106118(n+1), A377121(n+1)]`
-/

namespace A374823.P5665378425175174266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374823.P5665378425175174266

namespace A374823

/-- `∩[A106118(n+1), A377121(n+1)]` -/
def P5665378425175174266.Spec : Prop :=
  ∀ n, (P5665378425175174266.a n : ℤ) = A374823 (n + 1)

end A374823

/-! ## A374823.P11292362471277760711

`∩[A182986(n+1), A377121(n+1)]`
-/

namespace A374823.P11292362471277760711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374823.P11292362471277760711

namespace A374823

/-- `∩[A182986(n+1), A377121(n+1)]` -/
def P11292362471277760711.Spec : Prop :=
  ∀ n, (P11292362471277760711.a n : ℤ) = A374823 (n + 1)

end A374823

/-! ## A374823.P2846409740829612328

`∩[A216887(n+1), A377121(n+1)]`
-/

namespace A374823.P2846409740829612328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374823.P2846409740829612328

namespace A374823

/-- `∩[A216887(n+1), A377121(n+1)]` -/
def P2846409740829612328.Spec : Prop :=
  ∀ n, (P2846409740829612328.a n : ℤ) = A374823 (n + 1)

end A374823

/-! ## A374823.P7465199092489828088

`filter[A377121(n+2), A080339(#)]`
-/

namespace A374823.P7465199092489828088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A374823.P7465199092489828088

namespace A374823

/-- `filter[A377121(n+2), A080339(#)]` -/
def P7465199092489828088.Spec : Prop :=
  ∀ n, P7465199092489828088.a n = A374823 (n + 1)

end A374823

/-!
# A374824: Boolean-Boolean Quilt Numbers: Triangular array T(n,k) of the number of ASM quilts of type B_n X B_k, where B_n is the Boolean lattice of subsets of an n-set ordered by inclusion.

The programs for A374824, there is no canonical definition to state claims against.
-/

/-! ## A374824.P17289380196228038358

`A267911(3*n+1)+A103506(A001517(n))`
-/

namespace A374824.P17289380196228038358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267911 (3 * n + 1) + A103506 (A001517 n).toNat

end

end A374824.P17289380196228038358

/-!
# A374825: Place n equally spaced points on the circumference of a circle of radius r and then connect each pair of points with straight lines whose intersections create A007569(n) - n additional points. Draw a circle of radius r around each of the A007569(n) points. The sequence gives the total number of vertices formed from all circle intersections.

The programs for A374825, there is no canonical definition to state claims against.
-/

/-! ## A374825.P1547613563728046490

`Δ[A342272(floor(n!/(n+1)))]*(n+1)+1`
-/

namespace A374825.P1547613563728046490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 ⌊(Nat.factorial n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (n + 1 : ℤ) + 1

end

end A374825.P1547613563728046490

/-! ## A374825.P122548146739395711

`A087011(A266677(n)+A001653(n+1))`
-/

namespace A374825.P122548146739395711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A266677 n + A001653 (n + 1)).toNat

end

end A374825.P122548146739395711

/-!
# A374826: Place n equally spaced points on the circumference of a circle of radius r and then connect each pair of points with straight lines whose intersections create A007569(n) - n additional points. Draw a circle of radius r around each of the A007569(n) points. The sequence gives the total number of regions formed from all circle intersections.

The programs for A374826, there is no canonical definition to state claims against.
-/

/-! ## A374826.P11140834940082515662

`(n+1)*A327987(n^n)`
-/

namespace A374826.P11140834940082515662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327987 (n ^ n)

end

end A374826.P11140834940082515662

/-! ## A374826.P9677461938318407999

`A344296(A305577(n))`
-/

namespace A374826.P9677461938318407999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A305577 n).toNat

end

end A374826.P9677461938318407999

/-!
# A374827: Place n equally spaced points on the circumference of a circle of radius r and then connect each pair of points with straight lines whose intersections create A007569(n) - n additional points. Draw a circle of radius r around each of the A007569(n) points. The sequence gives the total number of curved edges formed from all circle intersections.

The programs for A374827, there is no canonical definition to state claims against.
-/

/-! ## A374827.P6785049491768251121

`A306242(A081280(n)+n)`
-/

namespace A374827.P6785049491768251121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306242 (A081280 n + (n : ℤ)).toNat

end

end A374827.P6785049491768251121

/-! ## A374827.P10190369414296316751

`A003986(A365774(n))*(n+1)`
-/

namespace A374827.P10190369414296316751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A365774 n).toNat * (n + 1 : ℤ)

end

end A374827.P10190369414296316751

/-!
# A374832: Number of incongruent n-sided Reinhardt polygons.

The programs for A374832, there is no canonical definition to state claims against.
-/

/-! ## A374832.P15657672992289243329

`A373694(n+1)+A373695(n+1)`
-/

namespace A374832.P15657672992289243329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373694 (n + 1) + A373695 (n + 1)

end

end A374832.P15657672992289243329

/-!
# A374835: Number of ternary paths of length 3*n having exactly 1 hill.

The programs for A374835, there is no canonical definition to state claims against.
-/

/-! ## A374835.P6975203528839096223

`A101371(∑[n]+1)`
-/

namespace A374835.P6975203528839096223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101371 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374835.P6975203528839096223

/-!
# A374836: Number of ternary paths of length 3*n having exactly 2 hills.

The programs for A374836, there is no canonical definition to state claims against.
-/

/-! ## A374836.P12775181102282253565

`col(lcm(A364570(3*(n+1)), A393634(n+1)))`
-/

namespace A374836.P12775181102282253565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.lcm (A364570 (3 * (n + 1))) (A393634 (n + 1)))

end

end A374836.P12775181102282253565

/-! ## A374836.P13944170627831918911

`A296239(A071542(n)+A000142(n))`
-/

namespace A374836.P13944170627831918911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296239 (A071542 n + A000142 n).toNat

end

end A374836.P13944170627831918911

/-! ## A374836.P7348865042277230047

`A296239(A397704(n)+A000142(n))`
-/

namespace A374836.P7348865042277230047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296239 (A397704 n + A000142 n).toNat

end

end A374836.P7348865042277230047

/-!
# A374840: a(n) is the greatest m > 0 such that the n-th row of Pascal's triangle (A007318) contains a multiple of k for k = 1..m.

The programs for A374840, there is no canonical definition to state claims against.
-/

/-! ## A374840.P11564435057312499730

`A111089(n+1)-A257680(A111079(n+1))`
-/

namespace A374840.P11564435057312499730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1) - A257680 (A111079 (n + 1)).toNat

end

end A374840.P11564435057312499730

/-! ## A374840.P18408488346617374676

`(A327667(n)-1)%A122322(3*(n+1))`
-/

namespace A374840.P18408488346617374676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327667 n - 1) (A122322 (3 * (n + 1)))

end

end A374840.P18408488346617374676

/-! ## A374840.P14483270111133438279

`A327667(n)-A057077(A273973(n))`
-/

namespace A374840.P14483270111133438279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327667 n - A057077 (A273973 n).toNat

end

end A374840.P14483270111133438279

/-! ## A374840.P18153856800702821197

`A327667(n)-A325169(A000040(n+1))`
-/

namespace A374840.P18153856800702821197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327667 n - A325169 (A000040 (n + 1)).toNat

end

end A374840.P18153856800702821197

/-! ## A374840.P5636827937256903812

`A249151(n)%A217475(A081493(n+5))`
-/

namespace A374840.P5636827937256903812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249151 n) (A217475 (A081493 (n + 5)).toNat)

end

end A374840.P5636827937256903812

/-!
# A374841: Numbers k such that 2^(2^k-2) == 1 (mod k^2).

The programs for A374841, there is no canonical definition to state claims against.
-/

/-! ## A374841.P15516839209660709653

`A209085(1+∑[4*n])`
-/

namespace A374841.P15516839209660709653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209085 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374841.P15516839209660709653

/-! ## A374841.P13815907631969400800

`A108372(A008070(n))`
-/

namespace A374841.P13815907631969400800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108372 (A008070 n).toNat

end

end A374841.P13815907631969400800

/-!
# A374842: Number of 7-regular labeled graphs on 2n nodes.

The programs for A374842, there is no canonical definition to state claims against.
-/

/-! ## A374842.P12195331902046901539

`A001205(A256164(n))`
-/

namespace A374842.P12195331902046901539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 (A256164 n).toNat

end

end A374842.P12195331902046901539

/-! ## A374842.P384074093541418576

`A001205(abs(A242652(abs(2-n)+1)))`
-/

namespace A374842.P384074093541418576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 |(A242652 (|2 - (n : ℤ)| + 1).toNat)|.toNat

end

end A374842.P384074093541418576

/-!
# A374844: a(n) = n! * Sum_{k=1..n} k^k / k!.

The programs for A374844, the canonical program `A374844.P3064299584962008638` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374844 has offset 0).

The definition of A374844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374844.P3064299584962008638

`n*a(n-1)+n^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374844

/-- `n*a(n-1)+n^n` -/
def P3064299584962008638.Spec : Prop :=
  ∀ n, (P3064299584962008638.a n : ℤ) = A374844 n

theorem P3064299584962008638.correct : P3064299584962008638.Spec := by
  intro n
  simp only [A374844]

end A374844

/-! ## A374844.P3709676120838453168

`A277506(n)-n!`
-/

namespace A374844.P3709676120838453168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277506 n - (Nat.factorial n : ℤ)

end

end A374844.P3709676120838453168

namespace A374844

/-- `A277506(n)-n!` -/
def P3709676120838453168.Spec : Prop :=
  ∀ n, P3709676120838453168.a n = A374844 n

end A374844

/-! ## A374844.P2498519704868803982

`a(n-1)*n+n^n` with `a(0)=0`
-/

namespace A374844.P2498519704868803982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * n + n ^ n

end

end A374844.P2498519704868803982

namespace A374844

/-- `a(n-1)*n+n^n` -/
def P2498519704868803982.Spec : Prop :=
  ∀ n, (P2498519704868803982.a n : ℤ) = A374844 n

end A374844

/-! ## A374844.P9252348323024537856

`a(n-1)/n^-1+n^n` with `a(0)=0`
-/

namespace A374844.P9252348323024537856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (n ^ n : ℚ)

end

end A374844.P9252348323024537856

namespace A374844

/-- `a(n-1)/n^-1+n^n` -/
def P9252348323024537856.Spec : Prop :=
  ∀ n, P9252348323024537856.a n = (A374844 n : ℚ)

end A374844

/-! ## A374844.P13567376022479022577

`∑{#}[n-1, C(n, #+1)*(#+1)^(#+1)*(n-(#+1))!]`
-/

namespace A374844.P13567376022479022577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (k + 1) * (k + 1) ^ (k + 1) * Nat.factorial ((n : ℤ) - (k + 1 : ℤ)).toNat

end

end A374844.P13567376022479022577

namespace A374844

/-- `∑{#}[n-1, C(n, #+1)*(#+1)^(#+1)*(n-(#+1))!]` -/
def P13567376022479022577.Spec : Prop :=
  ∀ n, (P13567376022479022577.a n : ℤ) = A374844 n

end A374844

/-! ## A374844.P2496267587270669293

`A054201(n+1)-(n+1)^n`
-/

namespace A374844.P2496267587270669293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054201 (n + 1) - ((n + 1) ^ n : ℤ)

end

end A374844.P2496267587270669293

namespace A374844

/-- `A054201(n+1)-(n+1)^n` -/
def P2496267587270669293.Spec : Prop :=
  ∀ n, P2496267587270669293.a n = A374844 n

end A374844

/-! ## A374844.P12249638918344710734

`n*(A000169(n)+a(n-1))` with `a(0)=0`
-/

namespace A374844.P12249638918344710734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A000169 n + a (n - 1))

end

end A374844.P12249638918344710734

namespace A374844

/-- `n*(A000169(n)+a(n-1))` -/
def P12249638918344710734.Spec : Prop :=
  ∀ n, P12249638918344710734.a n = A374844 n

end A374844

/-! ## A374844.P5701370725945611437

`A000312(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A374844.P5701370725945611437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000312 n + (n : ℤ) * a (n - 1)

end

end A374844.P5701370725945611437

namespace A374844

/-- `A000312(n)+n*a(n-1)` -/
def P5701370725945611437.Spec : Prop :=
  ∀ n, P5701370725945611437.a n = A374844 n

end A374844

/-! ## A374844.P12907455892772374282

`A277506(n)-A000142(n)`
-/

namespace A374844.P12907455892772374282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277506 n - A000142 n

end

end A374844.P12907455892772374282

namespace A374844

/-- `A277506(n)-A000142(n)` -/
def P12907455892772374282.Spec : Prop :=
  ∀ n, P12907455892772374282.a n = A374844 n

end A374844

/-! ## A374844.P6556723230852464300

`n*A054201(A028310(n))`
-/

namespace A374844.P6556723230852464300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054201 (A028310 n).toNat

end

end A374844.P6556723230852464300

namespace A374844

/-- `n*A054201(A028310(n))` -/
def P6556723230852464300.Spec : Prop :=
  ∀ n, P6556723230852464300.a n = A374844 n

end A374844

/-!
# A374845: The numbers p or 2p with p prime and p = 3 mod 4, in ascending order.

The programs for A374845, there is no canonical definition to state claims against.
-/

/-! ## A374845.P5956024882175356994

`A374846(2*n-round(sqrt(n²+1))+2)`
-/

namespace A374845.P5956024882175356994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374846 ((2 * n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat

end

end A374845.P5956024882175356994

/-! ## A374845.P10243902816870517836

`record[A374846(A052938(n))]`
-/

namespace A374845.P10243902816870517836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374846 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374845.P10243902816870517836

/-! ## A374845.P12333392971458093831

`A003967(A374846(2+n))`
-/

namespace A374845.P12333392971458093831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A374846 (2 + n)).toNat

end

end A374845.P12333392971458093831

/-! ## A374845.P2477110572420705501

`eq[A001842(n), A284345(n)]`
-/

namespace A374845.P2477110572420705501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374845.P2477110572420705501

/-! ## A374845.P15089800723891992559

`eq[A001842(n), A294105(n)]`
-/

namespace A374845.P15089800723891992559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294105 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374845.P15089800723891992559

/-! ## A374845.P17147043822451618471

`eq[A203850(n), A375512(n)]`
-/

namespace A374845.P17147043822451618471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374845.P17147043822451618471

/-! ## A374845.P7073357420459237142

`eq[A205507(n), A375512(n)]`
-/

namespace A374845.P7073357420459237142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374845.P7073357420459237142

/-! ## A374845.P909013795420411811

`eq[A259761(n), A375512(n)]`
-/

namespace A374845.P909013795420411811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374845.P909013795420411811

/-! ## A374845.P13388986942395028000

`eq[A330574(n), A375512(n)]`
-/

namespace A374845.P13388986942395028000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374845.P13388986942395028000

/-! ## A374845.P8280615430000110806

`filter[A001751(n+1), A038189(#)]`
-/

namespace A374845.P8280615430000110806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A374845.P8280615430000110806

/-!
# A374846: Numbers appearing exactly once in a Pythagorean triple.

The programs for A374846, there is no canonical definition to state claims against.
-/

/-! ## A374846.P9217779519198849867

`eq[1, A046081(n+1)]+1`
-/

namespace A374846.P9217779519198849867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374846.P9217779519198849867

/-! ## A374846.P1506349955957755319

`record[A000026(A066499(n+1))]`
-/

namespace A374846.P1506349955957755319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A066499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374846.P1506349955957755319

/-! ## A374846.P6624601363270174485

`filter[A004144(n+1), A046079(#)]`
-/

namespace A374846.P6624601363270174485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A046079 (f1 j).toNat = 1) n)

end

end A374846.P6624601363270174485

/-! ## A374846.P15923010069436604463

`filter[A066499(1+n), A340371(#)]`
-/

namespace A374846.P15923010069436604463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A374846.P15923010069436604463

/-! ## A374846.P13351204853622336350

`filter[A066499(1+n), A340374(#)]`
-/

namespace A374846.P13351204853622336350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340374 (f1 j).toNat = 1) n)

end

end A374846.P13351204853622336350

/-! ## A374846.P13453638983779497161

`filter[A066499(n+1), A351956(#)]`
-/

namespace A374846.P13453638983779497161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A374846.P13453638983779497161

/-! ## A374846.P16667860301070911105

`filter[A066499(n+1), A353627(#)]`
-/

namespace A374846.P16667860301070911105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A374846.P16667860301070911105

/-! ## A374846.P12166913365473449283

`filter[A066499(n+1), A359834(#)]`
-/

namespace A374846.P12166913365473449283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A374846.P12166913365473449283

/-! ## A374846.P4028411459101635616

`filter[A066499(n+1), A365605(#)]`
-/

namespace A374846.P4028411459101635616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365605 (f1 j).toNat = 1) n)

end

end A374846.P4028411459101635616

/-! ## A374846.P16744781904951163386

`filter[A066499(n+1), A365716(#)]`
-/

namespace A374846.P16744781904951163386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A374846.P16744781904951163386

/-!
# A374847: Numbers k which can be written as k = r+s where r and s are elements of the Collatz trajectory of k.

The programs for A374847, there is no canonical definition to state claims against.
-/

/-! ## A374847.P6365853052501738826

`∪[A317440(n+1), A374909(n+1)]`
-/

namespace A374847.P6365853052501738826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374847.P6365853052501738826

/-! ## A374847.P8354987032755851273

`lt[A345922(n+1), A004086(A349153(n+1))]`
-/

namespace A374847.P8354987032755851273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A349153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374847.P8354987032755851273

/-! ## A374847.P16912927982693295864

`lt[A375747(n+3), A375765(A375757(n+3))]`
-/

namespace A374847.P16912927982693295864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375747 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375765 (A375757 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374847.P16912927982693295864

/-! ## A374847.P8108688853786637564

`lt[A003959(3*(n+1)), A004086(A349153(n+1))]`
-/

namespace A374847.P8108688853786637564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A349153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374847.P8108688853786637564

/-! ## A374847.P16105117277412695416

`lt[2, A325978(n*A111490(n)+1)]`
-/

namespace A374847.P16105117277412695416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 ((n : ℤ) * A111490 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374847.P16105117277412695416

/-!
# A374848: Obverse convolution A000045**A000045; see Comments.

The programs for A374848, there is no canonical definition to state claims against.
-/

/-! ## A374848.P17107466657972067358

`A375048(∑[1+n])`
-/

namespace A374848.P17107466657972067358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374848.P17107466657972067358

/-! ## A374848.P10617934518260146485

`record[A375048(A066182(n+1))]`
-/

namespace A374848.P10617934518260146485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375048 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374848.P10617934518260146485

/-! ## A374848.P15146767431833410905

`record[A375048(n+1)-A102222(n)]`
-/

namespace A374848.P15146767431833410905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375048 (n + 1) - A102222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374848.P15146767431833410905

/-! ## A374848.P15104080131802165716

`record[A060701(n)*A375048(n+1)]`
-/

namespace A374848.P15104080131802165716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 n * A375048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374848.P15104080131802165716

/-! ## A374848.P17873244328693750758

`record[A111548(n)*A375048(n+1)]`
-/

namespace A374848.P17873244328693750758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111548 n * A375048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374848.P17873244328693750758

/-!
# A374849: In the binary expansion of n: collapse bits from most to least significant 10 -> 1, 01 -> 0, 00 -> nothing, 11 -> nothing.

The programs for A374849, there is no canonical definition to state claims against.
-/

/-! ## A374849.P13489365887020746463

`A000188(5+A192752(n))-1`
-/

namespace A374849.P13489365887020746463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (5 + A192752 n).toNat - 1

end

end A374849.P13489365887020746463

/-! ## A374849.P16286465601698960972

`A350365(A350365(2*n)+A319453(n))`
-/

namespace A374849.P16286465601698960972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350365 (A350365 (2 * n) + A319453 n).toNat

end

end A374849.P16286465601698960972

/-! ## A374849.P13614679554839271217

`A023445(A070550(n+4))%A156346(n)`
-/

namespace A374849.P13614679554839271217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023445 (A070550 (n + 4)).toNat) (A156346 n)

end

end A374849.P13614679554839271217

/-! ## A374849.P15525868784852690779

`A306100(A324390(n+1)%A174269(3*n+5))`
-/

namespace A374849.P15525868784852690779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (Int.tmod (A324390 (n + 1)) (A174269 (3 * n + 5))).toNat

end

end A374849.P15525868784852690779

/-! ## A374849.P17881044383030472406

`A105243(A384067(n))`
-/

namespace A374849.P17881044383030472406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105243 (A384067 n).toNat

end

end A374849.P17881044383030472406

/-!
# A374850: Obverse convolution A000032**A000032; see Comments.

The programs for A374850, there is no canonical definition to state claims against.
-/

/-! ## A374850.P6817649900371565387

`A059269(A382039(n)+A000217(n))`
-/

namespace A374850.P6817649900371565387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (A382039 n + A000217 n).toNat

end

end A374850.P6817649900371565387

/-!
# A374852: a(n) = (1/3)*A054640(n) for n >= 1.

The programs for A374852, the canonical program `A374852.P11494953044033864477` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374852 has offset 1).

The definition of A374852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374852.P11494953044033864477

`1/3*A054640(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374852

/-- `1/3*A054640(n+1)` -/
def P11494953044033864477.Spec : Prop :=
  ∀ n, P11494953044033864477.a n = (A374852 (n + 1) : ℚ)

end A374852

/-! ## A374852.P3396617480808122498

`∏[record[∑{p}[2*n+1, #]+1]]`
-/

namespace A374852.P3396617480808122498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P3396617480808122498

namespace A374852

/-- `∏[record[∑{p}[2*n+1, #]+1]]` -/
def P3396617480808122498.Spec : Prop :=
  ∀ n, (P3396617480808122498.a n : ℤ) = A374852 (n + 1)

end A374852

/-! ## A374852.P10083137841519552530

`(eq[1, ∑{e}[n, #]]+1)*a(n-1)` with `a(0)=1`
-/

namespace A374852.P10083137841519552530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) * a (n - 1)

end

end A374852.P10083137841519552530

namespace A374852

/-- `(eq[1, ∑{e}[n, #]]+1)*a(n-1)` -/
def P10083137841519552530.Spec : Prop :=
  ∀ n, (P10083137841519552530.a n : ℤ) = A374852 (n + 1)

end A374852

/-! ## A374852.P13245011049962313056

`eq[1, ∑{e}[1-n, #]]*a(n-1)` with `a(0)=1`
-/

namespace A374852.P13245011049962313056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n * a (n - 1)

end

end A374852.P13245011049962313056

namespace A374852

/-- `eq[1, ∑{e}[1-n, #]]*a(n-1)` -/
def P13245011049962313056.Spec : Prop :=
  ∀ n, (P13245011049962313056.a n : ℤ) = A374852 (n + 1)

end A374852

/-! ## A374852.P3643380097212030530

`(1+record[∑{p}[n+2, #]])*a(n-1)` with `a(0)=1`
-/

namespace A374852.P3643380097212030530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (1 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * a (n - 1)

end

end A374852.P3643380097212030530

namespace A374852

/-- `(1+record[∑{p}[n+2, #]])*a(n-1)` -/
def P3643380097212030530.Spec : Prop :=
  ∀ n, (P3643380097212030530.a n : ℤ) = A374852 (n + 1)

end A374852

/-! ## A374852.P5142616844145073007

`(eq[n+1, ∑{d}[n, #]]+1)*a(n-1)` with `a(0)=1`
-/

namespace A374852.P5142616844145073007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) * a (n - 1)

end

end A374852.P5142616844145073007

namespace A374852

/-- `(eq[n+1, ∑{d}[n, #]]+1)*a(n-1)` -/
def P5142616844145073007.Spec : Prop :=
  ∀ n, (P5142616844145073007.a n : ℤ) = A374852 (n + 1)

end A374852

/-! ## A374852.P5599635032622017731

`∏[A055670(1+n)]`
-/

namespace A374852.P5599635032622017731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P5599635032622017731

namespace A374852

/-- `∏[A055670(1+n)]` -/
def P5599635032622017731.Spec : Prop :=
  ∀ n, P5599635032622017731.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P14368221559664260422

`record[A337204(1+n)]`
-/

namespace A374852.P14368221559664260422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337204 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374852.P14368221559664260422

namespace A374852

/-- `record[A337204(1+n)]` -/
def P14368221559664260422.Spec : Prop :=
  ∀ n, P14368221559664260422.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P11878423999836403143

`A054640(1+n)/3`
-/

namespace A374852.P11878423999836403143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 (1 + n) : ℚ) / 3

end

end A374852.P11878423999836403143

namespace A374852

/-- `A054640(1+n)/3` -/
def P11878423999836403143.Spec : Prop :=
  ∀ n, P11878423999836403143.a n = (A374852 (n + 1) : ℚ)

end A374852

/-! ## A374852.P9545077614650073730

`∏[record[A349344(n+1)]]`
-/

namespace A374852.P9545077614650073730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P9545077614650073730

namespace A374852

/-- `∏[record[A349344(n+1)]]` -/
def P9545077614650073730.Spec : Prop :=
  ∀ n, P9545077614650073730.a n = A374852 (n + 1)

end A374852

/-!
# A374854: a(n) = (1/30)*A028361(n) for n>=3.

The programs for A374854, there is no canonical definition to state claims against.
-/

/-! ## A374854.P12199444006657910099

`A060202(n+4)/180`
-/

namespace A374854.P12199444006657910099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060202 (n + 4) : ℚ) / 180

end

end A374854.P12199444006657910099

/-! ## A374854.P13512523634619992902

`1/30*A028361(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374854.P13512523634619992902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 30 * (A028361 (n + 3) : ℚ)

end

end A374854.P13512523634619992902

/-! ## A374854.P14455277628533488035

`∏[2^(n+2)+1]/5`
-/

namespace A374854.P14455277628533488035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5

end

end A374854.P14455277628533488035

/-! ## A374854.P4538327446219395401

`∏[or(4, 2^(n+2))-3]`
-/

namespace A374854.P4538327446219395401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (2 ^ (n + 2)) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374854.P4538327446219395401

/-! ## A374854.P3491153781908218298

`∏[abs(3-4*or(1, 2^n))]`
-/

namespace A374854.P3491153781908218298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (4 * Nat.lor 1 (2 ^ n) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374854.P3491153781908218298

/-!
# A374855: a(n) = (1/6)*Product_{k=0..n} F(k)+6, where F=A000045 (Fibonacci numbers).

The programs for A374855, there is no canonical definition to state claims against.
-/

/-! ## A374855.P1071962824806591774

`(((1+sqrt(5))^n-(1-sqrt(5))^n)/(2^n*sqrt(5))+6)*a(n-1)` with `a(0)=1`
-/

namespace A374855.P1071962824806591774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (((1 + Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (5 : ℝ)) + 6) * a (n - 1)

end

end A374855.P1071962824806591774

/-! ## A374855.P14094104173310598487

`a(n-1)*A187179(n)` with `a(0)=1`
-/

namespace A374855.P14094104173310598487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A187179 n

end

end A374855.P14094104173310598487

/-! ## A374855.P11090700737982411445

`record[(A103323(n)+6)*T(n-1,k)]` with `a(0)=1`
-/

namespace A374855.P11090700737982411445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (A103323 n + 6) * SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374855.P11090700737982411445

/-! ## A374855.P11759296528206166505

`round((6+A000045(n))*a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A374855.P11759296528206166505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 + A000045 n) * a (n - 1)

end

end A374855.P11759296528206166505

/-!
# A374856: a(n) is the least integer m such that the distance of x_m from its nearest integer is less than 1/n, where x_m is the m-th extrema of Gamma(x).

The programs for A374856, there is no canonical definition to state claims against.
-/

/-! ## A374856.P2427963103984907451

`A024024(n)-A321453(A354552(n))`
-/

namespace A374856.P2427963103984907451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n - A321453 (A354552 n).toNat

end

end A374856.P2427963103984907451

/-! ## A374856.P12975997611568687098

`∑[A368100(a(n-1)+n)]` with `a(0)=0`
-/

namespace A374856.P12975997611568687098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A368100 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374856.P12975997611568687098

/-!
# A374857: Obverse convolution (n)**(Fibonacci(n)); see Comments.

The programs for A374857, there is no canonical definition to state claims against.
-/

/-! ## A374857.P8216944690841031656

`n*A350944(n!)`
-/

namespace A374857.P8216944690841031656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A350944 (Nat.factorial n)

end

end A374857.P8216944690841031656

/-!
# A374858: Obverse convolution (n)**(Lucas(n)); see Comments.

The programs for A374858, there is no canonical definition to state claims against.
-/

/-! ## A374858.P9647365157556612884

`A000720(2*n+3)*A336475(A002110(n))`
-/

namespace A374858.P9647365157556612884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 3) * A336475 (A002110 n).toNat

end

end A374858.P9647365157556612884

/-! ## A374858.P7082242662556086880

`A056239(2*n+3)*A336475(A002110(n))`
-/

namespace A374858.P7082242662556086880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * n + 3) * A336475 (A002110 n).toNat

end

end A374858.P7082242662556086880

/-!
# A374859: Obverse convolution (n)**(2^n); see Comments.

The programs for A374859, there is no canonical definition to state claims against.
-/

/-! ## A374859.P15322372384562162636

`A332619(A053496(2*n)+n)`
-/

namespace A374859.P15322372384562162636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332619 (A053496 (2 * n) + (n : ℤ)).toNat

end

end A374859.P15322372384562162636

/-!
# A374860: Obverse convolution (1)**A000201; see Comments.

The programs for A374860, there is no canonical definition to state claims against.
-/

/-! ## A374860.P13496564955124120400

`∏[1+floor(ϕ*n)]`
-/

namespace A374860.P13496564955124120400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374860.P13496564955124120400

/-! ## A374860.P17605355320555047636

`ceil(ϕ*n)*a(n-1)` with `a(0)=1`
-/

namespace A374860.P17605355320555047636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ * a (n - 1)

end

end A374860.P17605355320555047636

/-! ## A374860.P6476915411898052429

`abs((floor(ϕ*n)+1)*a(n-1))` with `a(0)=1`
-/

namespace A374860.P6476915411898052429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(⌊Real.goldenRatio * (n : ℝ)⌋ + 1) * a (n - 1)|

end

end A374860.P6476915411898052429

/-! ## A374860.P7276657444920970040

`round((floor(ϕ*n)+1)*a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A374860.P7276657444920970040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (⌊Real.goldenRatio * (n : ℝ)⌋ + 1) * a (n - 1)

end

end A374860.P7276657444920970040

/-! ## A374860.P9488578811410640422

`lcm(2, (floor(ϕ*n)+1)*a(n-1))` with `a(0)=1`
-/

namespace A374860.P9488578811410640422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 2 ((⌊Real.goldenRatio * (n : ℝ)⌋ + 1) * (a (n - 1) : ℤ))

end

end A374860.P9488578811410640422

/-! ## A374860.P12406700912041241413

`floor(ϕ*n)*a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A374860.P12406700912041241413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ * a (n - 1) + a (n - 1)

end

end A374860.P12406700912041241413

/-! ## A374860.P4375767585548138167

`abs(∏[-A026351(n)])`
-/

namespace A374860.P4375767585548138167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A374860.P4375767585548138167

/-! ## A374860.P15607928275410744447

`a(n-1)*A004956(n)` with `a(0)=1`
-/

namespace A374860.P15607928275410744447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004956 n

end

end A374860.P15607928275410744447

/-! ## A374860.P2509087333928544430

`∏[A026351(n+1)]/A026351(n+1)`
-/

namespace A374860.P2509087333928544430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A026351 (n + 1) : ℚ)

end

end A374860.P2509087333928544430

/-!
# A374861: Obverse convolution (n)**A000201; see Comments.

The programs for A374861, there is no canonical definition to state claims against.
-/

/-! ## A374861.P9365336455516374520

`A001788(n)*A025052(A011782(n))`
-/

namespace A374861.P9365336455516374520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n * A025052 (A011782 n).toNat

end

end A374861.P9365336455516374520

/-! ## A374861.P13462155715540014593

`A001788(n)*A046523(A002294(n))`
-/

namespace A374861.P13462155715540014593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n * A046523 (A002294 n).toNat

end

end A374861.P13462155715540014593

/-!
# A374863: Obverse convolution A000201**A001950; see Comments.

The programs for A374863, there is no canonical definition to state claims against.
-/

/-! ## A374863.P2863683679484528331

`A121856(A002275(n))*A353547(n)`
-/

namespace A374863.P2863683679484528331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A002275 n).toNat * A353547 n

end

end A374863.P2863683679484528331

/-!
# A374864: Obverse convolution (1)**A001950; see Comments.

The programs for A374864, there is no canonical definition to state claims against.
-/

/-! ## A374864.P5247446148155227001

`∏[comp[ceil(ϕ*n)]]`
-/

namespace A374864.P5247446148155227001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374864.P5247446148155227001

/-! ## A374864.P17743480739757639628

`ceil(ϕ²*n)*a(n-1)` with `a(0)=1`
-/

namespace A374864.P17743480739757639628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (n : ℝ)⌉ * a (n - 1)

end

end A374864.P17743480739757639628

/-! ## A374864.P8466856351497428297

`a(n-1)*comp[ceil(ϕ*n)]` with `a(0)=1`
-/

namespace A374864.P8466856351497428297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374864.P8466856351497428297

/-! ## A374864.P82602272638066244

`and(∏[floor(ϕ*n)+n+1], -1)`
-/

namespace A374864.P82602272638066244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A374864.P82602272638066244

/-! ## A374864.P8726099113824516956

`round((ceil(ϕ*n)+n)*a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A374864.P8726099113824516956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (⌈Real.goldenRatio * (n : ℝ)⌉ + (n : ℤ)) * a (n - 1)

end

end A374864.P8726099113824516956

/-! ## A374864.P9608587428575122608

`a(n-1)*floor(n*ϕ²)+a(n-1)` with `a(0)=1`
-/

namespace A374864.P9608587428575122608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + a (n - 1)

end

end A374864.P9608587428575122608

/-! ## A374864.P5426639043560812157

`A000007(3*n+2)+∏[A026352(n)]`
-/

namespace A374864.P5426639043560812157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374864.P5426639043560812157

/-! ## A374864.P4298646788224478209

`∏[A004957(n+1)]/A004957(n+1)`
-/

namespace A374864.P4298646788224478209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A004957 (n + 1) : ℚ)

end

end A374864.P4298646788224478209

/-!
# A374865: Obverse convolution A000045**A000032; see Comments.

The programs for A374865, there is no canonical definition to state claims against.
-/

/-! ## A374865.P3278772146617459435

`A102489(A000009(n+4)*A020554(n))`
-/

namespace A374865.P3278772146617459435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A000009 (n + 4) * A020554 n).toNat

end

end A374865.P3278772146617459435

/-!
# A374866: Obverse convolution (n)**(3n+2); see Comments.

The programs for A374866, there is no canonical definition to state claims against.
-/

/-! ## A374866.P6524897577546986716

`(2+n)*A385440(n+1)`
-/

namespace A374866.P6524897577546986716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 + n : ℤ) * A385440 (n + 1)

end

end A374866.P6524897577546986716

/-! ## A374866.P11510742743098143877

`A006882(3*n+2)/A006882(n)`
-/

namespace A374866.P11510742743098143877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (3 * n + 2) : ℚ) / (A006882 n : ℚ)

end

end A374866.P11510742743098143877

/-! ## A374866.P14206783033442966565

`A370419(A184636(n+2))`
-/

namespace A374866.P14206783033442966565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A184636 (n + 2)).toNat

end

end A374866.P14206783033442966565

/-! ## A374866.P6316802785468790738

`A370419(A005843((n+2)²))`
-/

namespace A374866.P6316802785468790738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A005843 ((n + 2) ^ 2)).toNat

end

end A374866.P6316802785468790738

/-! ## A374866.P4365690268543391613

`A370419(A054000(n+2)+2)`
-/

namespace A374866.P4365690268543391613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A054000 (n + 2) + 2).toNat

end

end A374866.P4365690268543391613

/-!
# A374867: Obverse convolution (2n+1)**A000045; see Comments.

The programs for A374867, there is no canonical definition to state claims against.
-/

/-! ## A374867.P9579642690337662562

`A034448(C(n²+4, n))`
-/

namespace A374867.P9579642690337662562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Nat.choose (n ^ 2 + 4) n)

end

end A374867.P9579642690337662562

/-!
# A374871: Obverse convolution (n)**(n!); see Comments.

The programs for A374871, there is no canonical definition to state claims against.
-/

/-! ## A374871.P12936094911320217555

`A326438(A006527(n))`
-/

namespace A374871.P12936094911320217555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326438 (A006527 n).toNat

end

end A374871.P12936094911320217555

/-!
# A374872: Obverse convolution (2n+1)**(n!); see Comments.

The programs for A374872, there is no canonical definition to state claims against.
-/

/-! ## A374872.P9361931619668471644

`A000196(A019308(2*n))*A217757(n)`
-/

namespace A374872.P9361931619668471644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A019308 (2 * n)).toNat * A217757 n

end

end A374872.P9361931619668471644

/-!
# A374875: Obverse convolution (n!)**A000045; see Comments.

The programs for A374875, there is no canonical definition to state claims against.
-/

/-! ## A374875.P13213832532106348961

`(∑{e}[n+1, #]+1)*A357173(A034691(n))`
-/

namespace A374875.P13213832532106348961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) * A357173 (A034691 n).toNat

end

end A374875.P13213832532106348961

/-!
# A374877: Obverse convolution (3n+1)**(3n+1); see Comments.

The programs for A374877, the canonical program `A374877.P7559172055930114456` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374877 has offset 0).

The definition of A374877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374877.P7559172055930114456

`(3*n+2)^(n+1)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374877

/-- `(3*n+2)^(n+1)` -/
def P7559172055930114456.Spec : Prop :=
  ∀ n, (P7559172055930114456.a n : ℤ) = A374877 n

theorem P7559172055930114456.correct : P7559172055930114456.Spec := by
  intro n
  simp only [A374877]

end A374877

/-! ## A374877.P14658852932048702417

`or((Δ[n²]+1+n)^(n+1), char[1])`
-/

namespace A374877.P14658852932048702417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 + (n : ℤ)) ^ (n + 1)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A374877.P14658852932048702417

namespace A374877

/-- `or((Δ[n²]+1+n)^(n+1), char[1])` -/
def P14658852932048702417.Spec : Prop :=
  ∀ n, P14658852932048702417.a n = A374877 n

end A374877

/-! ## A374877.P13833818640275251115

`abs((-A016789(n))^(n+1))`
-/

namespace A374877.P13833818640275251115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A016789 n) ^ (n + 1)|

end

end A374877.P13833818640275251115

namespace A374877

/-- `abs((-A016789(n))^(n+1))` -/
def P13833818640275251115.Spec : Prop :=
  ∀ n, P13833818640275251115.a n = A374877 n

end A374877

/-! ## A374877.P17684197496874403785

`(3*n+2)*A274265(n+1)`
-/

namespace A374877.P17684197496874403785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A274265 (n + 1)

end

end A374877.P17684197496874403785

namespace A374877

/-- `(3*n+2)*A274265(n+1)` -/
def P17684197496874403785.Spec : Prop :=
  ∀ n, P17684197496874403785.a n = A374877 n

theorem P17684197496874403785.correct : P17684197496874403785.Spec := by
  intro n
  simp only [A374877, Nat.add_sub_cancel, A374877.P17684197496874403785.a, A374877.P7559172055930114456.a, A274265, A274265.P2356930073708972825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374877

/-! ## A374877.P3914420070016313761

`root(A023443(3*(n+1)), 1/(n+1))`
-/

namespace A374877.P3914420070016313761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023443 (3 * (n + 1)) : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

end

end A374877.P3914420070016313761

namespace A374877

/-- `root(A023443(3*(n+1)), 1/(n+1))` -/
def P3914420070016313761.Spec : Prop :=
  ∀ n, P3914420070016313761.a n = (A374877 n : ℝ)

end A374877

/-!
# A374878: Obverse convolution (3n+2)**(3n+2); see Comments.

The programs for A374878, the canonical program `A374878.P16956368285606481330` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374878 has offset 0).

The definition of A374878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374878.P16956368285606481330

`(3*n+4)^(n+1)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A374878

/-- `(3*n+4)^(n+1)` -/
def P16956368285606481330.Spec : Prop :=
  ∀ n, (P16956368285606481330.a n : ℤ) = A374878 n

theorem P16956368285606481330.correct : P16956368285606481330.Spec := by
  intro n
  simp only [A374878]

end A374878

/-! ## A374878.P2831968915979276730

`or((Δ[n²]+3+n)^(n+1), char[1])`
-/

namespace A374878.P2831968915979276730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3 + (n : ℤ)) ^ (n + 1)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A374878.P2831968915979276730

namespace A374878

/-- `or((Δ[n²]+3+n)^(n+1), char[1])` -/
def P2831968915979276730.Spec : Prop :=
  ∀ n, P2831968915979276730.a n = A374878 n

end A374878

/-! ## A374878.P6505201877744435926

`∑[abs(Δ[A016777(n)^n])]+1`
-/

namespace A374878.P6505201877744435926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A374878.P6505201877744435926

namespace A374878

/-- `∑[abs(Δ[A016777(n)^n])]+1` -/
def P6505201877744435926.Spec : Prop :=
  ∀ n, P6505201877744435926.a n = A374878 n

end A374878

/-! ## A374878.P11675938862914226460

`abs((-A016777(n+1))^(n+1))`
-/

namespace A374878.P11675938862914226460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A016777 (n + 1)) ^ (n + 1)|

end

end A374878.P11675938862914226460

namespace A374878

/-- `abs((-A016777(n+1))^(n+1))` -/
def P11675938862914226460.Spec : Prop :=
  ∀ n, P11675938862914226460.a n = A374878 n

end A374878

/-! ## A374878.P6349097712172337828

`root(A000290(3*n+4), 2/(n+1))`
-/

namespace A374878.P6349097712172337828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000290 (3 * n + 4) : ℝ) ^ (1 / (2 / (n + 1 : ℚ) : ℝ))

end

end A374878.P6349097712172337828

namespace A374878

/-- `root(A000290(3*n+4), 2/(n+1))` -/
def P6349097712172337828.Spec : Prop :=
  ∀ n, P6349097712172337828.a n = (A374878 n : ℝ)

end A374878

/-!
# A374880: Obverse convolution (floor(3n/2))**(floor(3n/2)); see Comments.

The programs for A374880, there is no canonical definition to state claims against.
-/

/-! ## A374880.P4246663502927318585

`A245092(A374862(n))`
-/

namespace A374880.P4246663502927318585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A374862 n).toNat

end

end A374880.P4246663502927318585

/-!
# A374881: Obverse convolution (n)**(n^2); see Comments.

The programs for A374881, there is no canonical definition to state claims against.
-/

/-! ## A374881.P4030418957446093533

`n*A004181(A292914(n))`
-/

namespace A374881.P4030418957446093533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004181 (A292914 n).toNat

end

end A374881.P4030418957446093533

/-!
# A374882: Expansion of e.g.f. exp( (1 - (1 - 9*x)^(1/3))/3 ).

The programs for A374882, there is no canonical definition to state claims against.
-/

/-! ## A374882.P3445154899338324846

`or(1, A358277(C(n², n)))`
-/

namespace A374882.P3445154899338324846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A358277 (Nat.choose (n ^ 2) n))

end

end A374882.P3445154899338324846

/-!
# A374883: Decimal expansion of phi*(2*phi + 1) (i.e., (7 + 3*sqrt(5))/2), where phi is the golden ratio.

The programs for A374883, there is no canonical definition to state claims against.
-/

/-! ## A374883.P8584801264455390626

`A090550(n)+A000038(n)/2`
-/

namespace A374883.P8584801264455390626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090550 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A374883.P8584801264455390626

/-! ## A374883.P9063444401601445618

`A378450(A007283(n))+A090550(n)`
-/

namespace A374883.P9063444401601445618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378450 (A007283 n).toNat + A090550 (n + 1)

end

end A374883.P9063444401601445618

/-!
# A374888: Obverse convolution (n^2)**(2^n-1); see Comments.

The programs for A374888, there is no canonical definition to state claims against.
-/

/-! ## A374888.P5221944826299095387

`A000217(n)*A101024(A005783(n))`
-/

namespace A374888.P5221944826299095387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A101024 (A005783 n).toNat

end

end A374888.P5221944826299095387

/-!
# A374890: Obverse convolution (n^2)**A000045; see Comments.

The programs for A374890, there is no canonical definition to state claims against.
-/

/-! ## A374890.P15431724308350120919

`A074400((n+2)*a(n-1))` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A374890.P15431724308350120919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  A074400 ((n + 2 : ℤ) * a (n - 1)).toNat

end

end A374890.P15431724308350120919

/-!
# A374891: Obverse convolution (1)**A000984; see Comments.

The programs for A374891, there is no canonical definition to state claims against.
-/

/-! ## A374891.P10072039154062310069

`∏[1+C(2*n, n)]`
-/

namespace A374891.P10072039154062310069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose (2 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374891.P10072039154062310069

/-! ## A374891.P16529138401266195087

`∏[C(n+n, n)+1]`
-/

namespace A374891.P16529138401266195087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + n) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374891.P16529138401266195087

/-! ## A374891.P4755700310707382055

`∏[(2*n)!/n!²+1]`
-/

namespace A374891.P4755700310707382055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374891.P4755700310707382055

/-! ## A374891.P4387847764885886394

`(1+C(2*n, n))*a(n-1)` with `a(0)=2`
-/

namespace A374891.P4387847764885886394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (1 + Nat.choose (2 * n) n) * a (n - 1)

end

end A374891.P4387847764885886394

/-! ## A374891.P13592139615854462520

`∏[A156763(∑[n])]`
-/

namespace A374891.P13592139615854462520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156763 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374891.P13592139615854462520

/-!
# A374892: Obverse convolution (n)**(n(n+1)/2); see Comments.

The programs for A374892, there is no canonical definition to state claims against.
-/

/-! ## A374892.P17359087041863859727

`lt[∑{e}[n, #], 2]*A034448(A182316(n))`
-/

namespace A374892.P17359087041863859727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ) * A034448 (A182316 n).toNat

end

end A374892.P17359087041863859727

/-!
# A374894: Obverse convolution (n)**(n*(-1)^n); see Comments.

The programs for A374894, there is no canonical definition to state claims against.
-/

/-! ## A374894.P8244768819741707727

`-C(∑{digits}[n, lcm(#, (-#)^#)], A022187(n+2))`
-/

namespace A374894.P8244768819741707727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.lcm (x : ℤ) ((-(x : ℤ)) ^ x)).sum (A022187 (n + 2)).toNat : ℤ)

end

end A374894.P8244768819741707727

/-!
# A374896: Array read by falling antidiagonals: T(n,k) = denominator(Sum_{x>0} (x^n)/(k^x)); n >= 0 and k >= 2.

The programs for A374896, there is no canonical definition to state claims against.
-/

/-! ## A374896.P13903111459713932952

`A004736(n+1)^A071625(A350946(3*n+2))`
-/

namespace A374896.P13903111459713932952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A071625 (A350946 (3 * n + 2)).toNat : ℤ)

end

end A374896.P13903111459713932952

/-! ## A374896.P17174532047277730174

`A051128(n+1)%A065091(A130534(2*(n+2)))`
-/

namespace A374896.P17174532047277730174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 (n + 1)) (A065091 (A130534 (2 * (n + 2))).toNat)

end

end A374896.P17174532047277730174

/-! ## A374896.P3434663817901537921

`gcd(A254791(n+1), A327086(n+1))`
-/

namespace A374896.P3434663817901537921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254791 (n + 1)) (A327086 (n + 1))

end

end A374896.P3434663817901537921

/-! ## A374896.P18268741388572949719

`(row(n)+1-col(n))^A269919(A048993(n))`
-/

namespace A374896.P18268741388572949719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ (A269919 (A048993 n).toNat : ℤ)

end

end A374896.P18268741388572949719

/-! ## A374896.P8482543371955049439

`gcd(A046308(A193649(n)), A103283(n))`
-/

namespace A374896.P8482543371955049439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046308 (A193649 n).toNat) (A103283 n)

end

end A374896.P8482543371955049439

/-!
# A374898: Index of the closure of a triangle group Delta, associated with billiards in a regular n-gon, in the adelic group Gamma = SL_2(O), where O is the profinite completion of Z[zeta + zeta^{-1}] and zeta is the n-th root of unity.

The programs for A374898, there is no canonical definition to state claims against.
-/

/-! ## A374898.P10959046023623376545

`A153583(A189228(n+1)+1)`
-/

namespace A374898.P10959046023623376545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153583 (A189228 (n + 1) + 1).toNat

end

end A374898.P10959046023623376545

