import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C001
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

The programs for A374812, the canonical program `A374812.P12842280590014895668` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374812 has offset 0).

The definition of A374812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374812.P12842280590014895668

`A013929(10^n)`

The canonical program, it is in `Seq.B004.C003`.
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

The programs for A374823, the canonical program `A374823.P1311388547321898954` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374823 has offset 1).

The definition of A374823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374823.P1311388547321898954

`p?[A377121(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374823

/-- `p?[A377121(n+1)]` -/
def P1311388547321898954.Spec : Prop :=
  ∀ n, P1311388547321898954.a n = A374823 (n + 1)

theorem P1311388547321898954.correct : P1311388547321898954.Spec := by
  intro n
  simp only [A374823, Nat.add_sub_cancel]

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

/-! ## A374825.P122548146739395711

`A087011(A266677(n)+A001653(n+1))`
-/

namespace A374825.P122548146739395711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A266677 n + A001653 (n + 1)).toNat

end

end A374825.P122548146739395711

/-! ## A374825.P5117156097974190818

`A114997(2*(n+1))-A351357(A000112(n))`
-/

namespace A374825.P5117156097974190818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114997 (2 * (n + 1)) - A351357 (A000112 n).toNat

end

end A374825.P5117156097974190818

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

/-! ## A374836.P13944170627831918911

`A296239(A071542(n)+A000142(n))`
-/

namespace A374836.P13944170627831918911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296239 (A071542 n + A000142 n).toNat

end

end A374836.P13944170627831918911

/-! ## A374836.P8307898333902238806

`A196149(A382650(n))%A000108(n)`
-/

namespace A374836.P8307898333902238806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196149 (A382650 n).toNat) (A000108 n)

end

end A374836.P8307898333902238806

/-! ## A374836.P5960373000545866125

`A296239(A000720(n+1)+A000142(n))`
-/

namespace A374836.P5960373000545866125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296239 (A000720 (n + 1) + A000142 n).toNat

end

end A374836.P5960373000545866125

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

/-! ## A374841.P13642584241058963671

`A209085((n+1)²+n²)`
-/

namespace A374841.P13642584241058963671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209085 ((n + 1) ^ 2 + n ^ 2)

end

end A374841.P13642584241058963671

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

/-! ## A374842.P384074093541418576

`A001205(abs(A242652(abs(2-n)+1)))`
-/

namespace A374842.P384074093541418576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 |(A242652 (|2 - (n : ℤ)| + 1).toNat)|.toNat

end

end A374842.P384074093541418576

/-! ## A374842.P5632252493448326849

`A001205(and(A008601(n), A034691(n)))`
-/

namespace A374842.P5632252493448326849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 (Int.land (A008601 n) (A034691 n)).toNat

end

end A374842.P5632252493448326849

/-!
# A374844: a(n) = n! * Sum_{k=1..n} k^k / k!.

The programs for A374844, the canonical program `A374844.P3064299584962008638` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374844 has offset 0).

The definition of A374844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374844.P3064299584962008638

`n*a(n-1)+n^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C047`.
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

/-! ## A374844.P4067842871122901900

`A000312(n)+a(n-1)/n^(-1)` with `a(0)=0`
-/

namespace A374844.P4067842871122901900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A000312 n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A374844.P4067842871122901900

namespace A374844

/-- `A000312(n)+a(n-1)/n^(-1)` -/
def P4067842871122901900.Spec : Prop :=
  ∀ n, P4067842871122901900.a n = (A374844 n : ℚ)

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

/-! ## A374845.P2718376340416608089

`A003967(A374846(n+2))`
-/

namespace A374845.P2718376340416608089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A374846 (n + 2)).toNat

end

end A374845.P2718376340416608089

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

/-! ## A374846.P16542178489163655662

`filter[A066499(n+1), A340371(#)]`
-/

namespace A374846.P16542178489163655662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A374846.P16542178489163655662

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

/-! ## A374846.P16721885266019331005

`filter[A066499(n+1), A374128(#)]`
-/

namespace A374846.P16721885266019331005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A374846.P16721885266019331005

/-! ## A374846.P17456004844172724161

`filter[A097987(n+3), A340371(#)]`
-/

namespace A374846.P17456004844172724161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A374846.P17456004844172724161

/-!
# A374847: Numbers k which can be written as k = r+s where r and s are elements of the Collatz trajectory of k.

The programs for A374847, there is no canonical definition to state claims against.
-/

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

/-! ## A374847.P11314980442044148980

`lt[A290536(A072861(n+1)), A139371(n+1)]`
-/

namespace A374847.P11314980442044148980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290536 (A072861 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374847.P11314980442044148980

/-!
# A374848: Obverse convolution A000045**A000045; see Comments.

The programs for A374848, there is no canonical definition to state claims against.
-/

/-! ## A374848.P4396422334069790163

`A375048(∑[n+1])`
-/

namespace A374848.P4396422334069790163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374848.P4396422334069790163

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

/-! ## A374848.P17665409302264674052

`record[A375048(n+1)/A224798(n)]`
-/

namespace A374848.P17665409302264674052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375048 (n + 1) : ℚ) / (A224798 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374848.P17665409302264674052

/-!
# A374849: In the binary expansion of n: collapse bits from most to least significant 10 -> 1, 01 -> 0, 00 -> nothing, 11 -> nothing.

The programs for A374849, there is no canonical definition to state claims against.
-/

/-! ## A374849.P15525868784852690779

`A306100(A324390(n+1)%A174269(3*n+5))`
-/

namespace A374849.P15525868784852690779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (Int.tmod (A324390 (n + 1)) (A174269 (3 * n + 5))).toNat

end

end A374849.P15525868784852690779

/-! ## A374849.P9377743709083399719

`A363946(A088887(n+1))`
-/

namespace A374849.P9377743709083399719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363946 (A088887 (n + 1)).toNat

end

end A374849.P9377743709083399719

/-! ## A374849.P4193484657366543652

`A363946(A140312(n+1))`
-/

namespace A374849.P4193484657366543652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363946 (A140312 (n + 1)).toNat

end

end A374849.P4193484657366543652

/-! ## A374849.P16838684941070121049

`A060495(n)%A001221(A033813(n+3))`
-/

namespace A374849.P16838684941070121049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060495 n) (A001221 (A033813 (n + 3)).toNat)

end

end A374849.P16838684941070121049

/-! ## A374849.P5228726825301961606

`A317088(A212486(n+3))%A342507(n+2)`
-/

namespace A374849.P5228726825301961606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317088 (A212486 (n + 3)).toNat) (A342507 (n + 2))

end

end A374849.P5228726825301961606

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

/-! ## A374852.P3582574337099421366

`∏[A055670(n+1)]`
-/

namespace A374852.P3582574337099421366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P3582574337099421366

namespace A374852

/-- `∏[A055670(n+1)]` -/
def P3582574337099421366.Spec : Prop :=
  ∀ n, P3582574337099421366.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P9870617420139778469

`record[A337204(n+1)]`
-/

namespace A374852.P9870617420139778469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374852.P9870617420139778469

namespace A374852

/-- `record[A337204(n+1)]` -/
def P9870617420139778469.Spec : Prop :=
  ∀ n, P9870617420139778469.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P15082504837031293550

`A054640(n+1)/3`
-/

namespace A374852.P15082504837031293550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 (n + 1) : ℚ) / 3

end

end A374852.P15082504837031293550

namespace A374852

/-- `A054640(n+1)/3` -/
def P15082504837031293550.Spec : Prop :=
  ∀ n, P15082504837031293550.a n = (A374852 (n + 1) : ℚ)

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

/-! ## A374852.P2640576304413294060

`∏[record[A349346(n+1)]]`
-/

namespace A374852.P2640576304413294060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P2640576304413294060

namespace A374852

/-- `∏[record[A349346(n+1)]]` -/
def P2640576304413294060.Spec : Prop :=
  ∀ n, P2640576304413294060.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P15970585268751770013

`∏[record[A353416(n+1)]]`
-/

namespace A374852.P15970585268751770013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353416 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P15970585268751770013

namespace A374852

/-- `∏[record[A353416(n+1)]]` -/
def P15970585268751770013.Spec : Prop :=
  ∀ n, P15970585268751770013.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P6149301397959821932

`∏[record[A055672(n+2)]]`
-/

namespace A374852.P6149301397959821932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P6149301397959821932

namespace A374852

/-- `∏[record[A055672(n+2)]]` -/
def P6149301397959821932.Spec : Prop :=
  ∀ n, P6149301397959821932.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P4197491053988123195

`∏[record[A193529(n+2)]]`
-/

namespace A374852.P4197491053988123195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193529 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P4197491053988123195

namespace A374852

/-- `∏[record[A193529(n+2)]]` -/
def P4197491053988123195.Spec : Prop :=
  ∀ n, P4197491053988123195.a n = A374852 (n + 1)

end A374852

/-! ## A374852.P9645029718762628596

`∏[record[A036288(2*n+1)]]`
-/

namespace A374852.P9645029718762628596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374852.P9645029718762628596

namespace A374852

/-- `∏[record[A036288(2*n+1)]]` -/
def P9645029718762628596.Spec : Prop :=
  ∀ n, P9645029718762628596.a n = A374852 (n + 1)

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

/-! ## A374854.P14135518611563305402

`(2^(n+2)+1)*a(n-1)` with `a(0)=1`
-/

namespace A374854.P14135518611563305402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 2) + 1) * a (n - 1)

end

end A374854.P14135518611563305402

/-!
# A374855: a(n) = (1/6)*Product_{k=0..n} F(k)+6, where F=A000045 (Fibonacci numbers).

The programs for A374855, there is no canonical definition to state claims against.
-/

/-! ## A374855.P14094104173310598487

`a(n-1)*A187179(n)` with `a(0)=1`
-/

namespace A374855.P14094104173310598487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A187179 n

end

end A374855.P14094104173310598487

/-! ## A374855.P10955544475862653613

`(A157729(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A374855.P10955544475862653613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A157729 n + 1) * a (n - 1)

end

end A374855.P10955544475862653613

/-! ## A374855.P18159143827347061516

`(A001611(n)+5)*a(n-1)` with `a(0)=1`
-/

namespace A374855.P18159143827347061516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A001611 n + 5) * a (n - 1)

end

end A374855.P18159143827347061516

/-! ## A374855.P6073439457253635612

`(A000045(n)+6)*a(n-1)` with `a(0)=1`
-/

namespace A374855.P6073439457253635612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000045 n + 6) * a (n - 1)

end

end A374855.P6073439457253635612

/-! ## A374855.P8771276934835641559

`∏[A168428(2*n)+A000045(n)]`
-/

namespace A374855.P8771276934835641559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168428 (2 * n) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374855.P8771276934835641559

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

/-! ## A374860.P866025976513976267

`∏[floor(ϕ*n)+1]`
-/

namespace A374860.P866025976513976267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374860.P866025976513976267

/-! ## A374860.P17605355320555047636

`ceil(ϕ*n)*a(n-1)` with `a(0)=1`
-/

namespace A374860.P17605355320555047636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ * a (n - 1)

end

end A374860.P17605355320555047636

/-! ## A374860.P16183153808333486304

`a(n-1)+floor(ϕ*n)*a(n-1)` with `a(0)=1`
-/

namespace A374860.P16183153808333486304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊Real.goldenRatio * (n : ℝ)⌋ * a (n - 1)

end

end A374860.P16183153808333486304

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

/-! ## A374861.P13462155715540014593

`A001788(n)*A046523(A002294(n))`
-/

namespace A374861.P13462155715540014593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n * A046523 (A002294 n).toNat

end

end A374861.P13462155715540014593

/-! ## A374861.P5282711959422710836

`A001788(n)*A052126(A002110(n))`
-/

namespace A374861.P5282711959422710836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n * A052126 (A002110 n).toNat

end

end A374861.P5282711959422710836

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

/-! ## A374864.P13761361650531152137

`ceil(n*ϕ²)*a(n-1)` with `a(0)=1`
-/

namespace A374864.P13761361650531152137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ * a (n - 1)

end

end A374864.P13761361650531152137

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

/-! ## A374866.P6097526139675674769

`(n+2)*A385440(n+1)`
-/

namespace A374866.P6097526139675674769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A385440 (n + 1)

end

end A374866.P6097526139675674769

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

/-! ## A374867.P15464702297732002137

`A346729(A008090(n))`
-/

namespace A374867.P15464702297732002137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (A008090 n).toNat

end

end A374867.P15464702297732002137

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

The programs for A374877, the canonical program `A374877.P7559172055930114456` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374877 has offset 0).

The definition of A374877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374877.P7559172055930114456

`(3*n+2)^(n+1)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374877

/-- `(3*n+2)^(n+1)` -/
def P7559172055930114456.Spec : Prop :=
  ∀ n, (P7559172055930114456.a n : ℤ) = A374877 n

theorem P7559172055930114456.correct : P7559172055930114456.Spec := by
  intro n
  simp only [A374877]

end A374877

/-! ## A374877.P4465611858217771934

`A206455(A236267(n))`
-/

namespace A374877.P4465611858217771934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 (A236267 n).toNat

end

end A374877.P4465611858217771934

namespace A374877

/-- `A206455(A236267(n))` -/
def P4465611858217771934.Spec : Prop :=
  ∀ n, P4465611858217771934.a n = A374877 n

end A374877

/-! ## A374877.P9418373825141836935

`A255616(A383465(n+1))`
-/

namespace A374877.P9418373825141836935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255616 (A383465 (n + 1)).toNat

end

end A374877.P9418373825141836935

namespace A374877

/-- `A255616(A383465(n+1))` -/
def P9418373825141836935.Spec : Prop :=
  ∀ n, P9418373825141836935.a n = A374877 n

end A374877

/-! ## A374877.P108474977386182103

`A079901(A022266(n+1))`
-/

namespace A374877.P108474977386182103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A022266 (n + 1)).toNat

end

end A374877.P108474977386182103

namespace A374877

/-- `A079901(A022266(n+1))` -/
def P108474977386182103.Spec : Prop :=
  ∀ n, P108474977386182103.a n = A374877 n

end A374877

/-!
# A374878: Obverse convolution (3n+2)**(3n+2); see Comments.

The programs for A374878, the canonical program `A374878.P16956368285606481330` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374878 has offset 0).

The definition of A374878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374878.P16956368285606481330

`(3*n+4)^(n+1)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A374878

/-- `(3*n+4)^(n+1)` -/
def P16956368285606481330.Spec : Prop :=
  ∀ n, (P16956368285606481330.a n : ℤ) = A374878 n

theorem P16956368285606481330.correct : P16956368285606481330.Spec := by
  intro n
  simp only [A374878]

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

/-! ## A374878.P15527685725802577445

`root(A000583(3*n+4), 4/(n+1))`
-/

namespace A374878.P15527685725802577445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000583 (3 * n + 4) : ℝ) ^ (1 / (4 / (n + 1 : ℚ) : ℝ))

end

end A374878.P15527685725802577445

namespace A374878

/-- `root(A000583(3*n+4), 4/(n+1))` -/
def P15527685725802577445.Spec : Prop :=
  ∀ n, P15527685725802577445.a n = (A374878 n : ℝ)

end A374878

/-! ## A374878.P9811390646226253798

`record[A189665(n+3)^A131732(n)]`
-/

namespace A374878.P9811390646226253798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189665 (n + 3) : ℚ) ^ (A131732 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374878.P9811390646226253798

namespace A374878

/-- `record[A189665(n+3)^A131732(n)]` -/
def P9811390646226253798.Spec : Prop :=
  ∀ n, P9811390646226253798.a n = (A374878 n : ℚ)

end A374878

/-! ## A374878.P5057880911424496734

`sqrt(A016778(n+1)^(n+1))`
-/

namespace A374878.P5057880911424496734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016778 (n + 1) ^ (n + 1) : ℝ)

end

end A374878.P5057880911424496734

namespace A374878

/-- `sqrt(A016778(n+1)^(n+1))` -/
def P5057880911424496734.Spec : Prop :=
  ∀ n, P5057880911424496734.a n = (A374878 n : ℝ)

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

/-! ## A374882.P6600148836883345180

`A007782(A026590(n))/2`
-/

namespace A374882.P6600148836883345180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007782 (A026590 n).toNat : ℚ) / 2

end

end A374882.P6600148836883345180

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

/-! ## A374891.P16875103634876864683

`∏[C(2*n, n)+1]`
-/

namespace A374891.P16875103634876864683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374891.P16875103634876864683

/-! ## A374891.P8231534167949951858

`(C(2*n, n)+1)*a(n-1)` with `a(0)=2`
-/

namespace A374891.P8231534167949951858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.choose (2 * n) n + 1) * a (n - 1)

end

end A374891.P8231534167949951858

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

/-! ## A374891.P824800125048656833

`∏[A157531(∑[n])]`
-/

namespace A374891.P824800125048656833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157531 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374891.P824800125048656833

/-! ## A374891.P5725110691289564224

`∏[A171824(∑[n])]`
-/

namespace A374891.P5725110691289564224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171824 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374891.P5725110691289564224

/-!
# A374892: Obverse convolution (n)**(n(n+1)/2); see Comments.

The programs for A374892, there is no canonical definition to state claims against.
-/

/-! ## A374892.P4130306260266626494

`n*(n+1)*2^(n-2)*A104445(A245730(n+1))`
-/

namespace A374892.P4130306260266626494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) * (A104445 (A245730 (n + 1)).toNat : ℚ)

end

end A374892.P4130306260266626494

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

/-! ## A374896.P8482543371955049439

`gcd(A046308(A193649(n)), A103283(n))`
-/

namespace A374896.P8482543371955049439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046308 (A193649 n).toNat) (A103283 n)

end

end A374896.P8482543371955049439

/-! ## A374896.P9341073594746203332

`A375400(A228832(n)*A375377(n+1))`
-/

namespace A374896.P9341073594746203332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375400 (A228832 n * A375377 (n + 1)).toNat

end

end A374896.P9341073594746203332

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

