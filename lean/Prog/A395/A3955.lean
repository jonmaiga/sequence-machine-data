import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A395500: Number of derangements of [2*n] with n ascents.

The programs for A395500, there is no canonical definition to state claims against.
-/

/-! ## A395500.P7552610862883166708

`A395497(∑[4*n])`
-/

namespace A395500.P7552610862883166708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395500.P7552610862883166708

/-! ## A395500.P6669927991445197906

`A219836(A132209(n))`
-/

namespace A395500.P6669927991445197906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A132209 n).toNat

end

end A395500.P6669927991445197906

/-!
# A395502: Iteration numbers k such that SHA1^{k}(160 bits of 1) is a record low value.

The programs for A395502, there is no canonical definition to state claims against.
-/

/-! ## A395502.P2001167835601168363

`A340858(A038579(n))`
-/

namespace A395502.P2001167835601168363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340858 (A038579 n).toNat

end

end A395502.P2001167835601168363

/-!
# A395506: Two players, Black and Red, take turns on a square spiral. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. We then consider the cells that are eventually occupied: a(n) tells at which turn the n-th such cell has been occupied.

The programs for A395506, there is no canonical definition to state claims against.
-/

/-! ## A395506.P1687287155076619973

`A395364(lt[0, A395364(n)])`
-/

namespace A395506.P1687287155076619973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A395506.P1687287155076619973

/-! ## A395506.P12842857963678248225

`A395364(record[abs(A395357(n))])`
-/

namespace A395506.P12842857963678248225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A395357 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A395506.P12842857963678248225

/-! ## A395506.P4912706677146868080

`A395364(comp[A392179(n+1)])`
-/

namespace A395506.P4912706677146868080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392179 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A395506.P4912706677146868080

/-! ## A395506.P3146206619288433460

`A395364(∪[A392177(n+1), A392178(n+1)])`
-/

namespace A395506.P3146206619288433460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392178 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395364 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A395506.P3146206619288433460

/-! ## A395506.P10332511573305261441

`and(A387410(n+1), A395507(n+1))`
-/

namespace A395506.P10332511573305261441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A395507 (n + 1))

end

end A395506.P10332511573305261441

/-!
# A395510: Number of derangements of [2*n+1] with n ascents.

The programs for A395510, there is no canonical definition to state claims against.
-/

/-! ## A395510.P13328721204395816463

`A219836(A056220(n+1))`
-/

namespace A395510.P13328721204395816463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A056220 (n + 1)).toNat

end

end A395510.P13328721204395816463

/-!
# A395512: Number of lcm-closed subsets of [n].

The programs for A395512, there is no canonical definition to state claims against.
-/

/-! ## A395512.P18191178806101171073

`∑[A034444(A215928(n))]`
-/

namespace A395512.P18191178806101171073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A215928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395512.P18191178806101171073

/-! ## A395512.P6991182721974630432

`∑[A034444(A385440(∏{e}[n, #+1]))]`
-/

namespace A395512.P6991182721974630432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A385440 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395512.P6991182721974630432

/-! ## A395512.P14867457486631551144

`∑[A070939(A292935(∑{d}[n, 2%#²]))]`
-/

namespace A395512.P14867457486631551144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A292935 (∑ d ∈ Nat.divisors (f2 n), 2 % d ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395512.P14867457486631551144

/-! ## A395512.P9891677285284725532

`∑[A144926(A075323(n+1))^A032741(n)]`
-/

namespace A395512.P9891677285284725532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144926 (A075323 (n + 1)).toNat : ℚ) ^ (A032741 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395512.P9891677285284725532

/-! ## A395512.P15025372110235599561

`∑[A034444(∏{p}[A003462(n), #])]`
-/

namespace A395512.P15025372110235599561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395512.P15025372110235599561

/-!
# A395514: Partial sums of A394760.

The programs for A395514, there is no canonical definition to state claims against.
-/

/-! ## A395514.P160802076847372399

`∑[A394760(n+1)]`
-/

namespace A395514.P160802076847372399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395514.P160802076847372399

/-! ## A395514.P7189448436601275310

`A188158(A342515(a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A395514.P7189448436601275310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A188158 (A342515 (a (n - 2)).toNat).toNat

end

end A395514.P7189448436601275310

/-! ## A395514.P13376040167358735223

`A334274(A028310(n)+A000204(n+1))`
-/

namespace A395514.P13376040167358735223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (A028310 n + A000204 (n + 1)).toNat

end

end A395514.P13376040167358735223

/-! ## A395514.P12582515916273846474

`A274346(A259386(n+1))+A000225(n)`
-/

namespace A395514.P12582515916273846474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274346 (A259386 (n + 1)).toNat + A000225 n

end

end A395514.P12582515916273846474

/-!
# A395520: First differences of A036349.

The programs for A395520, the canonical program `A395520.P8890934817172298303` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395520 has offset 1).

The definition of A395520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395520.P8890934817172298303

`A036349(n+2)-A036349(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A395520

/-- `A036349(n+2)-A036349(n+1)` -/
def P8890934817172298303.Spec : Prop :=
  ∀ n, P8890934817172298303.a n = A395520 (n + 1)

theorem P8890934817172298303.correct : P8890934817172298303.Spec := by
  intro n
  simp only [A395520, Nat.add_sub_cancel]

end A395520

/-! ## A395520.P5107390528954258226

`Δ[A036349(n+1)]`
-/

namespace A395520.P5107390528954258226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395520.P5107390528954258226

namespace A395520

/-- `Δ[A036349(n+1)]` -/
def P5107390528954258226.Spec : Prop :=
  ∀ n, P5107390528954258226.a n = A395520 (n + 1)

theorem P5107390528954258226.correct : P5107390528954258226.Spec := by
  intro n
  simp only [A395520, Nat.add_sub_cancel, A395520.P5107390528954258226.f1, A395520.P5107390528954258226.a, A395520.P8890934817172298303.a, SequenceMachineLib.memo_apply]

end A395520

/-! ## A395520.P5260835350438782747

`runs[∑[A356163(n+1)]]`
-/

namespace A395520.P5260835350438782747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395520.P5260835350438782747

namespace A395520

/-- `runs[∑[A356163(n+1)]]` -/
def P5260835350438782747.Spec : Prop :=
  ∀ n, (P5260835350438782747.a n : ℤ) = A395520 (n + 1)

end A395520

/-! ## A395520.P5584679595465651261

`Δ[eq[(-1)^val(n+1, 2), A008836(n+1)]]`
-/

namespace A395520.P5584679595465651261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A395520.P5584679595465651261

namespace A395520

/-- `Δ[eq[(-1)^val(n+1, 2), A008836(n+1)]]` -/
def P5584679595465651261.Spec : Prop :=
  ∀ n, P5584679595465651261.a n = A395520 (n + 1)

end A395520

/-! ## A395520.P12794968080811482488

`runs[∑[A369001(A000265(n+1))]]`
-/

namespace A395520.P12794968080811482488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395520.P12794968080811482488

namespace A395520

/-- `runs[∑[A369001(A000265(n+1))]]` -/
def P12794968080811482488.Spec : Prop :=
  ∀ n, (P12794968080811482488.a n : ℤ) = A395520 (n + 1)

end A395520

/-! ## A395520.P7896128153924571552

`runs[∑[A126120(A001414(n+1))]]`
-/

namespace A395520.P7896128153924571552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A001414 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395520.P7896128153924571552

namespace A395520

/-- `runs[∑[A126120(A001414(n+1))]]` -/
def P7896128153924571552.Spec : Prop :=
  ∀ n, (P7896128153924571552.a n : ℤ) = A395520 (n + 1)

end A395520

/-!
# A395521: Number of non-isomorphic abelian groups appearing as the sandpile group K(G) of a connected graph on n vertices.

The programs for A395521, there is no canonical definition to state claims against.
-/

/-! ## A395521.P10094597436646995959

`A092199(A325455(n+3))+A000522(n)`
-/

namespace A395521.P10094597436646995959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092199 (A325455 (n + 3)).toNat + A000522 n

end

end A395521.P10094597436646995959

/-!
# A395523: a(n) is the period of {F^(m) mod n} (a sequence of functions Z -> Z/nZ), where F^(m) means the m-th iteration of the Fibonacci sequence (A000045).

The programs for A395523, there is no canonical definition to state claims against.
-/

/-! ## A395523.P3530727408758723023

`A175185(A175286(A175183(n+1)))`
-/

namespace A395523.P3530727408758723023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175185 (A175286 (A175183 (n + 1)).toNat).toNat

end

end A395523.P3530727408758723023

/-! ## A395523.P3912045679586666780

`A175185(A175286(A175185(A001175(n+1))))`
-/

namespace A395523.P3912045679586666780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175185 (A175286 (A175185 (A001175 (n + 1)).toNat).toNat).toNat

end

end A395523.P3912045679586666780

/-!
# A395528: Triangle read by rows: T(n,k) is the number of unlabeled trees with n vertices and burning number k, for k = 1..ceiling(sqrt(n)).

The programs for A395528, there is no canonical definition to state claims against.
-/

/-! ## A395528.P10869706092478068873

`A103863(A369278(n+1))`
-/

namespace A395528.P10869706092478068873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (A369278 (n + 1)).toNat

end

end A395528.P10869706092478068873

/-! ## A395528.P7316398973119530468

`A053692(A291532(n))*A341975(n)`
-/

namespace A395528.P7316398973119530468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (A291532 n).toNat * A341975 (n + 11)

end

end A395528.P7316398973119530468

/-! ## A395528.P763580922559355693

`A144157(A091515(n+1)-2)`
-/

namespace A395528.P763580922559355693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144157 (A091515 (n + 1) - 2).toNat

end

end A395528.P763580922559355693

/-! ## A395528.P2230557616143867135

`A355744(or(A031404(3*(n+1)), A045924(n+1)))`
-/

namespace A395528.P2230557616143867135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355744 (Int.lor (A031404 (3 * (n + 1))) (A045924 (n + 1))).toNat

end

end A395528.P2230557616143867135

/-! ## A395528.P17721337365322152176

`∑[A056654(n+2)]%3`
-/

namespace A395528.P17721337365322152176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A395528.P17721337365322152176

/-!
# A395530: a(n) is the least number of 5-smooth numbers that add up to n.

The programs for A395530, there is no canonical definition to state claims against.
-/

/-! ## A395530.P1097029298663298295

`A334733(A006530(n+1))/A006530(n+1)`
-/

namespace A395530.P1097029298663298295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334733 (A006530 (n + 1)).toNat : ℚ) / (A006530 (n + 1) : ℚ)

end

end A395530.P1097029298663298295

/-! ## A395530.P600021380577767950

`A361328(A366643(n+1)%A348385(n+2))`
-/

namespace A395530.P600021380577767950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361328 (Int.tmod (A366643 (n + 1)) (A348385 (n + 2))).toNat

end

end A395530.P600021380577767950

/-! ## A395530.P2967626902756472393

`∏{p}[A118967(n+1), A154325(#)]`
-/

namespace A395530.P2967626902756472393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A154325 p

end

end A395530.P2967626902756472393

/-! ## A395530.P4853603798186165459

`A287170(6*A367859(n+1))`
-/

namespace A395530.P4853603798186165459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (6 * A367859 (n + 1)).toNat

end

end A395530.P4853603798186165459

/-! ## A395530.P17209666054134390394

`A356229(6*A367859(n+1))`
-/

namespace A395530.P17209666054134390394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356229 (6 * A367859 (n + 1)).toNat

end

end A395530.P17209666054134390394

/-! ## A395530.P16091444366853326826

`A000005(A366643(n+1)%A183971(n+1))`
-/

namespace A395530.P16091444366853326826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A366643 (n + 1)) (A183971 (n + 1))).toNat

end

end A395530.P16091444366853326826

/-! ## A395530.P357359149406756487

`A085738(A183971(n+1)%A366643(n+1))`
-/

namespace A395530.P357359149406756487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (Int.tmod (A183971 (n + 1)) (A366643 (n + 1))).toNat

end

end A395530.P357359149406756487

/-! ## A395530.P14278100224897660758

`A001221(A005384(n+1)*A165725(n+1))`
-/

namespace A395530.P14278100224897660758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005384 (n + 1) * A165725 (n + 1)).toNat

end

end A395530.P14278100224897660758

/-! ## A395530.P7783744092538520042

`A001221(A165725(n+1)*A261311(n+1))`
-/

namespace A395530.P7783744092538520042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A165725 (n + 1) * A261311 (n + 1)).toNat

end

end A395530.P7783744092538520042

/-!
# A395531: Lay down bricks of length 1, 2, 3, ... on the top-right quadrant of the x-y plane. Place a brick as close to x=0 as possible, and on the highest row with bricks directly underneath where the new brick does not overhang. a(n) is the length of the leftmost brick on each row.

The programs for A395531, there is no canonical definition to state claims against.
-/

/-! ## A395531.P8233349354598760850

`eq[0, A233380(n+1)]+1`
-/

namespace A395531.P8233349354598760850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A395531.P8233349354598760850

/-! ## A395531.P13303604991425639351

`eq[0, A233380(A000038(n)+n)]`
-/

namespace A395531.P13303604991425639351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233380 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395531.P13303604991425639351

/-! ## A395531.P11604428095593103191

`lt[A233380(n+1), A011776(n+1)]+1`
-/

namespace A395531.P11604428095593103191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A395531.P11604428095593103191

/-! ## A395531.P14154532176052826252

`A233380(lt[A233380(n+1), A001221(n+1)])`
-/

namespace A395531.P14154532176052826252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395531.P14154532176052826252

/-! ## A395531.P15338278079019302126

`A233380(lt[A233380(n+1), A001222(n+1)])`
-/

namespace A395531.P15338278079019302126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395531.P15338278079019302126

/-!
# A395535: a(n) = (n XOR n*2+1) for odd n, (n XOR n/2) for even n.

The programs for A395535, the canonical program `A395535.P38086071388283955` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395535 has offset 0).

The definition of A395535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395535.P9112847520551011885

`(1+n%2)*xor(n, floor(n/2))`
-/

namespace A395535.P9112847520551011885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n % 2 : ℕ) : ℤ) * Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A395535.P9112847520551011885

namespace A395535

/-- `(1+n%2)*xor(n, floor(n/2))` -/
def P9112847520551011885.Spec : Prop :=
  ∀ n, P9112847520551011885.a n = A395535 n

end A395535

/-! ## A395535.P102352147249226312

`lcm(2^val(n+1, 2), xor(n, floor(n/2)))`
-/

namespace A395535.P102352147249226312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A395535.P102352147249226312

namespace A395535

/-- `lcm(2^val(n+1, 2), xor(n, floor(n/2)))` -/
def P102352147249226312.Spec : Prop :=
  ∀ n, (P102352147249226312.a n : ℤ) = A395535 n

end A395535

/-! ## A395535.P10356651117962152505

`xor(n, floor(n/2))*Δ[floor(3*n/2)]`
-/

namespace A395535.P10356651117962152505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ * (f1 (n + 1) - f1 n)

end

end A395535.P10356651117962152505

namespace A395535

/-- `xor(n, floor(n/2))*Δ[floor(3*n/2)]` -/
def P10356651117962152505.Spec : Prop :=
  ∀ n, P10356651117962152505.a n = A395535 n

end A395535

/-! ## A395535.P3778953712335992591

`(1+n%2)*A003188(n)`
-/

namespace A395535.P3778953712335992591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n % 2 : ℕ) : ℤ) * A003188 n

end

end A395535.P3778953712335992591

namespace A395535

/-- `(1+n%2)*A003188(n)` -/
def P3778953712335992591.Spec : Prop :=
  ∀ n, P3778953712335992591.a n = A395535 n

end A395535

/-! ## A395535.P3099452816939708963

`(A010693(n)-1)*xor(n, floor(n/2))`
-/

namespace A395535.P3099452816939708963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010693 n - 1) * Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A395535.P3099452816939708963

namespace A395535

/-- `(A010693(n)-1)*xor(n, floor(n/2))` -/
def P3099452816939708963.Spec : Prop :=
  ∀ n, P3099452816939708963.a n = A395535 n

end A395535

/-! ## A395535.P38086071388283955

`A003188(A059029(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395535

/-- `A003188(A059029(n))` -/
def P38086071388283955.Spec : Prop :=
  ∀ n, P38086071388283955.a n = A395535 n

theorem P38086071388283955.correct : P38086071388283955.Spec := by
  intro n
  simp only [A395535]

end A395535

/-! ## A395535.P2424048845343339725

`A000034(n)*A003188(n)`
-/

namespace A395535.P2424048845343339725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A003188 n

end

end A395535.P2424048845343339725

namespace A395535

/-- `A000034(n)*A003188(n)` -/
def P2424048845343339725.Spec : Prop :=
  ∀ n, P2424048845343339725.a n = A395535 n

end A395535

/-! ## A395535.P9514617628913298608

`xor(A026741(n), A059029(n))`
-/

namespace A395535.P9514617628913298608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026741 n) (A059029 n)

end

end A395535.P9514617628913298608

namespace A395535

/-- `xor(A026741(n), A059029(n))` -/
def P9514617628913298608.Spec : Prop :=
  ∀ n, P9514617628913298608.a n = A395535 n

end A395535

/-! ## A395535.P11928933708455939038

`xor(A052928(n), A064680(n))`
-/

namespace A395535.P11928933708455939038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052928 n) (A064680 n)

end

end A395535.P11928933708455939038

namespace A395535

/-- `xor(A052928(n), A064680(n))` -/
def P11928933708455939038.Spec : Prop :=
  ∀ n, P11928933708455939038.a n = A395535 n

end A395535

/-! ## A395535.P16290798635981338485

`xor(A029578(n), A109043(n))`
-/

namespace A395535.P16290798635981338485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A029578 n) (A109043 n)

end

end A395535.P16290798635981338485

namespace A395535

/-- `xor(A029578(n), A109043(n))` -/
def P16290798635981338485.Spec : Prop :=
  ∀ n, P16290798635981338485.a n = A395535 n

end A395535

/-! ## A395535.P2057746369595452600

`lcm(A003188(n), A006519(n+1))`
-/

namespace A395535.P2057746369595452600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003188 n) (A006519 (n + 1))

end

end A395535.P2057746369595452600

namespace A395535

/-- `lcm(A003188(n), A006519(n+1))` -/
def P2057746369595452600.Spec : Prop :=
  ∀ n, (P2057746369595452600.a n : ℤ) = A395535 n

end A395535

/-! ## A395535.P3910753572986977770

`A003188(n)+A003188(n*A000035(n))`
-/

namespace A395535.P3910753572986977770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n + A003188 ((n : ℤ) * A000035 n).toNat

end

end A395535.P3910753572986977770

namespace A395535

/-- `A003188(n)+A003188(n*A000035(n))` -/
def P3910753572986977770.Spec : Prop :=
  ∀ n, P3910753572986977770.a n = A395535 n

end A395535

/-! ## A395535.P9825811392936694612

`A003188(n)*A090079(A340632(n+1))`
-/

namespace A395535.P9825811392936694612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n * A090079 (A340632 (n + 1)).toNat

end

end A395535.P9825811392936694612

namespace A395535

/-- `A003188(n)*A090079(A340632(n+1))` -/
def P9825811392936694612.Spec : Prop :=
  ∀ n, P9825811392936694612.a n = A395535 n

end A395535

/-! ## A395535.P12761059209958154861

`A029578(xor(n, 2*n))`
-/

namespace A395535.P12761059209958154861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Nat.xor n (2 * n))

end

end A395535.P12761059209958154861

namespace A395535

/-- `A029578(xor(n, 2*n))` -/
def P12761059209958154861.Spec : Prop :=
  ∀ n, P12761059209958154861.a n = A395535 n

end A395535

/-! ## A395535.P16972767469716481089

`A029578(A048724(n))`
-/

namespace A395535.P16972767469716481089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A048724 n).toNat

end

end A395535.P16972767469716481089

namespace A395535

/-- `A029578(A048724(n))` -/
def P16972767469716481089.Spec : Prop :=
  ∀ n, P16972767469716481089.a n = A395535 n

end A395535

/-!
# A395540: a(n) = floor(log_2(n)) + floor(log_2(2*n/3)) + 3.

The programs for A395540, the canonical program `A395540.P3552911399672935764` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395540 has offset 1).

The definition of A395540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` (program `A395540.P3552911399672935764`, by `A395540.P3552911399672935764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395540.P3552911399672935764

`floor(log2(n+1))+floor(log2(2*(n+1)/3))+3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395540

/-- `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` -/
def P3552911399672935764.Spec : Prop :=
  ∀ n, P3552911399672935764.a n = A395540 (n + 1)

theorem P3552911399672935764.correct : P3552911399672935764.Spec := by
  intro n
  simp only [A395540, Nat.add_sub_cancel]

end A395540

/-! ## A395540.P372328196411286099

`A396686(A342126(n+1))`
-/

namespace A395540.P372328196411286099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396686 (A342126 (n + 1)).toNat

end

end A395540.P372328196411286099

namespace A395540

/-- `A396686(A342126(n+1))` -/
def P372328196411286099.Spec : Prop :=
  ∀ n, P372328196411286099.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P11319190788155221143

`A294991(A130773(n+1))`
-/

namespace A395540.P11319190788155221143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294991 (A130773 (n + 1)).toNat

end

end A395540.P11319190788155221143

namespace A395540

/-- `A294991(A130773(n+1))` -/
def P11319190788155221143.Spec : Prop :=
  ∀ n, P11319190788155221143.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P6160121256354943488

`A294991(A140139(n+2))`
-/

namespace A395540.P6160121256354943488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294991 (A140139 (n + 2)).toNat

end

end A395540.P6160121256354943488

namespace A395540

/-- `A294991(A140139(n+2))` -/
def P6160121256354943488.Spec : Prop :=
  ∀ n, P6160121256354943488.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P12504002950799206473

`ceil(log2(A080075(2*n+1)))`
-/

namespace A395540.P12504002950799206473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A080075 (2 * n + 1) : ℝ)⌉

end

end A395540.P12504002950799206473

namespace A395540

/-- `ceil(log2(A080075(2*n+1)))` -/
def P12504002950799206473.Spec : Prop :=
  ∀ n, P12504002950799206473.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P3183310884995379471

`A130245(A062879(n+2))`
-/

namespace A395540.P3183310884995379471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A062879 (n + 2)).toNat

end

end A395540.P3183310884995379471

namespace A395540

/-- `A130245(A062879(n+2))` -/
def P3183310884995379471.Spec : Prop :=
  ∀ n, P3183310884995379471.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P370531269208026069

`ceil(log2(A246520(n+1)))`
-/

namespace A395540.P370531269208026069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A246520 (n + 1) : ℝ)⌉

end

end A395540.P370531269208026069

namespace A395540

/-- `ceil(log2(A246520(n+1)))` -/
def P370531269208026069.Spec : Prop :=
  ∀ n, P370531269208026069.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P2037662507889527315

`A329194(A191108(n+2))`
-/

namespace A395540.P2037662507889527315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329194 (A191108 (n + 2)).toNat

end

end A395540.P2037662507889527315

namespace A395540

/-- `A329194(A191108(n+2))` -/
def P2037662507889527315.Spec : Prop :=
  ∀ n, P2037662507889527315.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P1787058429253426628

`A070941(A161644(n+1))`
-/

namespace A395540.P1787058429253426628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A161644 (n + 1)).toNat

end

end A395540.P1787058429253426628

namespace A395540

/-- `A070941(A161644(n+1))` -/
def P1787058429253426628.Spec : Prop :=
  ∀ n, P1787058429253426628.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P12755614236232478116

`A137397(A175543(n+1))`
-/

namespace A395540.P12755614236232478116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137397 (A175543 (n + 1)).toNat

end

end A395540.P12755614236232478116

namespace A395540

/-- `A137397(A175543(n+1))` -/
def P12755614236232478116.Spec : Prop :=
  ∀ n, P12755614236232478116.a n = A395540 (n + 1)

end A395540

/-!
# A395541: Largest integer of the form r^k whose product of nonzero base-n digits is r and whose number of base-n digits is k.

The programs for A395541, there is no canonical definition to state claims against.
-/

/-! ## A395541.P5271289900220530316

`4^((a(n-2)+5)/a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A395541.P5271289900220530316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (4 : ℝ) ^ ((a (n - 2) + 5) / a (n - 3))

end

end A395541.P5271289900220530316

/-!
# A395542: Numbers whose number of nonzero digits is identical in base 2 and 5.

The programs for A395542, the canonical program `A395542.P7948443198613962418` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395542 has offset 1).

The definition of A395542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395542.P7948443198613962418

`eq[A000120(n), A276134(n)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395542

/-- `eq[A000120(n), A276134(n)]` -/
def P7948443198613962418.Spec : Prop :=
  ∀ n, (P7948443198613962418.a n : ℤ) = A395542 (n + 1)

theorem P7948443198613962418.correct : P7948443198613962418.Spec := by
  intro n
  simp only [A395542, Nat.add_sub_cancel]

end A395542

/-! ## A395542.P16657310833194444729

`eq[A000120(n), A102673(A001744(n+1))]`
-/

namespace A395542.P16657310833194444729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395542.P16657310833194444729

namespace A395542

/-- `eq[A000120(n), A102673(A001744(n+1))]` -/
def P16657310833194444729.Spec : Prop :=
  ∀ n, (P16657310833194444729.a n : ℤ) = A395542 (n + 1)

end A395542

/-! ## A395542.P5424348531677326766

`A347696(A181806(n+1))`
-/

namespace A395542.P5424348531677326766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347696 (A181806 (n + 1)).toNat

end

end A395542.P5424348531677326766

namespace A395542

/-- `A347696(A181806(n+1))` -/
def P5424348531677326766.Spec : Prop :=
  ∀ n, P5424348531677326766.a n = A395542 (n + 1)

end A395542

/-!
# A395543: a(n) = denominator((n-1)!/n^n).

The programs for A395543, there is no canonical definition to state claims against.
-/

/-! ## A395543.P5808889180139682581

`(1+n)*A036505(n)`
-/

namespace A395543.P5808889180139682581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A036505 n

end

end A395543.P5808889180139682581

/-! ## A395543.P15341382637385347704

`(n+1)*abs(A264234(n+1))`
-/

namespace A395543.P15341382637385347704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A264234 (n + 1)|

end

end A395543.P15341382637385347704

/-! ## A395543.P11851936625262601670

`(n+1)²*A036504(n+1)`
-/

namespace A395543.P11851936625262601670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A036504 (n + 1)

end

end A395543.P11851936625262601670

/-! ## A395543.P7255718133778518326

`A226931(n+1)-A090878(n+1)`
-/

namespace A395543.P7255718133778518326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226931 (n + 1) - A090878 (n + 1)

end

end A395543.P7255718133778518326

/-! ## A395543.P17068479293170265437

`(n+1)^(n+1)/A062763(n+1)`
-/

namespace A395543.P17068479293170265437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) / (A062763 (n + 1) : ℚ)

end

end A395543.P17068479293170265437

/-!
# A395544: Number of transitive relations on an n-set with at most eight ordered pairs.

The programs for A395544, there is no canonical definition to state claims against.
-/

/-! ## A395544.P17292841978774726024

`A395093(n)+A393925(n)`
-/

namespace A395544.P17292841978774726024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395093 n + A393925 n

end

end A395544.P17292841978774726024

/-!
# A395545: Square array A(n,k), n>=1, k>=1, read by descending antidiagonals A(n,k) = Sum_{i=0..k} binomial(n-i, i)*binomial(k+i, 2*i+1).

The programs for A395545, the canonical program `A395545.P15579963919349181400` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395545 has offset 1).

The definition of A395545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395545.P15579963919349181400

`C(row(n)+2, col(n))-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395545

/-- `C(row(n)+2, col(n))-T(n-1,k-1)` -/
def P15579963919349181400.Spec : Prop :=
  ∀ n, P15579963919349181400.a n = A395545 (n + 1)

theorem P15579963919349181400.correct : P15579963919349181400.Spec := by
  intro n
  simp only [A395545, Nat.add_sub_cancel]

end A395545

/-! ## A395545.P3446119939979714047

`A035317(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A395545.P3446119939979714047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035317 n + SequenceMachineLib.triUpLeft a n

end

end A395545.P3446119939979714047

namespace A395545

/-- `A035317(n)+T(n-1,k-1)` -/
def P3446119939979714047.Spec : Prop :=
  ∀ n, P3446119939979714047.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P15257244562184172775

`A035317(row(n)+1+n)`
-/

namespace A395545.P15257244562184172775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (SequenceMachineLib.triRow n + 1 + n)

end

end A395545.P15257244562184172775

namespace A395545

/-- `A035317(row(n)+1+n)` -/
def P15257244562184172775.Spec : Prop :=
  ∀ n, P15257244562184172775.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P15557913765270594843

`A035317(A007401(1+n))`
-/

namespace A395545.P15557913765270594843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A007401 (1 + n)).toNat

end

end A395545.P15557913765270594843

namespace A395545

/-- `A035317(A007401(1+n))` -/
def P15557913765270594843.Spec : Prop :=
  ∀ n, P15557913765270594843.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P14959226967855435944

`A035317(eq[1, A023532(n)])`
-/

namespace A395545.P14959226967855435944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A395545.P14959226967855435944

namespace A395545

/-- `A035317(eq[1, A023532(n)])` -/
def P14959226967855435944.Spec : Prop :=
  ∀ n, P14959226967855435944.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P3918257642119984988

`A035317(lt[A023531(n), 1])`
-/

namespace A395545.P3918257642119984988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A395545.P3918257642119984988

namespace A395545

/-- `A035317(lt[A023531(n), 1])` -/
def P3918257642119984988.Spec : Prop :=
  ∀ n, P3918257642119984988.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P12696007126887477139

`A035317(comp[A000217(n)-1])`
-/

namespace A395545.P12696007126887477139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A395545.P12696007126887477139

namespace A395545

/-- `A035317(comp[A000217(n)-1])` -/
def P12696007126887477139.Spec : Prop :=
  ∀ n, P12696007126887477139.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P17427395854309486670

`A035317(A014132(n+1)-1)`
-/

namespace A395545.P17427395854309486670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A014132 (n + 1) - 1).toNat

end

end A395545.P17427395854309486670

namespace A395545

/-- `A035317(A014132(n+1)-1)` -/
def P17427395854309486670.Spec : Prop :=
  ∀ n, P17427395854309486670.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P16654641653586397085

`A035317(A002024(n+1)+n)`
-/

namespace A395545.P16654641653586397085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A395545.P16654641653586397085

namespace A395545

/-- `A035317(A002024(n+1)+n)` -/
def P16654641653586397085.Spec : Prop :=
  ∀ n, P16654641653586397085.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P18153536780686172886

`A059259(lt[A030528(n+1), A007318(n)])`
-/

namespace A395545.P18153536780686172886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395545.P18153536780686172886

namespace A395545

/-- `A059259(lt[A030528(n+1), A007318(n)])` -/
def P18153536780686172886.Spec : Prop :=
  ∀ n, P18153536780686172886.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P4653830764229891363

`A059259(lt[A001221(n+1), A059259(n+1)])`
-/

namespace A395545.P4653830764229891363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395545.P4653830764229891363

namespace A395545

/-- `A059259(lt[A001221(n+1), A059259(n+1)])` -/
def P4653830764229891363.Spec : Prop :=
  ∀ n, P4653830764229891363.a n = A395545 (n + 1)

end A395545

/-! ## A395545.P17386686885260587160

`A035317(lt[1, A322427(n+1)])`
-/

namespace A395545.P17386686885260587160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A395545.P17386686885260587160

namespace A395545

/-- `A035317(lt[1, A322427(n+1)])` -/
def P17386686885260587160.Spec : Prop :=
  ∀ n, P17386686885260587160.a n = A395545 (n + 1)

end A395545

/-!
# A395546: Number of satisfiable 3-SAT formulas with n variables and 5 clauses in the multiset clause model.

The programs for A395546, there is no canonical definition to state claims against.
-/

/-! ## A395546.P8812889059528893859

`C(C(2*(n+1)+2, 3)+4, 5)-A396491(n+1)`
-/

namespace A395546.P8812889059528893859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (2 * (n + 1) + 2) 3 + 4) 5 : ℤ) - A396491 (n + 1)

end

end A395546.P8812889059528893859

/-!
# A395552: Number of free polyhexes of n cells (up to the symmetries of the hexagon) that contain a saturated cell (a cell all six of whose edge-neighbors are present).

The programs for A395552, there is no canonical definition to state claims against.
-/

/-! ## A395552.P14812288239335498668

`A102748(A251704(n))`
-/

namespace A395552.P14812288239335498668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102748 (A251704 n).toNat

end

end A395552.P14812288239335498668

/-! ## A395552.P17627617050886922370

`A284974(A391562(n))`
-/

namespace A395552.P17627617050886922370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284974 (A391562 n).toNat

end

end A395552.P17627617050886922370

/-! ## A395552.P14112929180174087059

`A102748(A146246(n+1))`
-/

namespace A395552.P14112929180174087059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102748 (A146246 (n + 1)).toNat

end

end A395552.P14112929180174087059

/-! ## A395552.P7007898727859098237

`A239514(A112805(n+1))`
-/

namespace A395552.P7007898727859098237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239514 (A112805 (n + 1)).toNat

end

end A395552.P7007898727859098237

/-! ## A395552.P1898870084156275433

`A357097(A052471(n+1))`
-/

namespace A395552.P1898870084156275433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357097 (A052471 (n + 1)).toNat

end

end A395552.P1898870084156275433

/-!
# A395553: Number of no-overhang stacked partitions (teeth) of base 4 and total size n.

The programs for A395553, there is no canonical definition to state claims against.
-/

/-! ## A395553.P10666028929151624314

`A072704(∑[3+n]+7)`
-/

namespace A395553.P10666028929151624314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072704 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A395553.P10666028929151624314

/-!
# A395554: Number of no-overhang stacked partitions (teeth) of base 5 and total size n.

The programs for A395554, there is no canonical definition to state claims against.
-/

/-! ## A395554.P13249308184765804272

`A072704(A000217(n+4)+5)`
-/

namespace A395554.P13249308184765804272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072704 (A000217 (n + 4) + 5).toNat

end

end A395554.P13249308184765804272

/-!
# A395557: a(n) = Sum_{k=0..n} binomial(3*n+2*k,k).

The programs for A395557, the canonical program `A395557.P6591345533474583780` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395557 has offset 0).

The definition of A395557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+2*#, #)]` (program `A395557.P6591345533474583780`, by `A395557.P6591345533474583780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395557.P6591345533474583780

`∑{#}[n, C(3*n+2*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395557

/-- `∑{#}[n, C(3*n+2*#, #)]` -/
def P6591345533474583780.Spec : Prop :=
  ∀ n, (P6591345533474583780.a n : ℤ) = A395557 n

theorem P6591345533474583780.correct : P6591345533474583780.Spec := by
  intro n
  simp only [A395557]

end A395557

/-! ## A395557.P11503464203209100733

`A361654(A360417(n+1))`
-/

namespace A395557.P11503464203209100733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A360417 (n + 1)).toNat

end

end A395557.P11503464203209100733

namespace A395557

/-- `A361654(A360417(n+1))` -/
def P11503464203209100733.Spec : Prop :=
  ∀ n, P11503464203209100733.a n = A395557 n

end A395557

/-!
# A395558: Primes of the form (x^2 + y^2 + z^2) / (x*y - x*z + y*z) with integer x, y, z.

The programs for A395558, there is no canonical definition to state claims against.
-/

/-! ## A395558.P18424996908082503608

`p?[A392201(n+1)]`
-/

namespace A395558.P18424996908082503608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A395558.P18424996908082503608

/-! ## A395558.P13121864630838138384

`∩[A040101(n+1), A392201(n+1)]`
-/

namespace A395558.P13121864630838138384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P13121864630838138384

/-! ## A395558.P11608033091171214360

`∩[A040124(n+1), A392201(n+1)]`
-/

namespace A395558.P11608033091171214360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P11608033091171214360

/-! ## A395558.P6296483530548010136

`∩[A040994(n+1), A392201(n+1)]`
-/

namespace A395558.P6296483530548010136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P6296483530548010136

/-! ## A395558.P11516789958336564747

`∩[A045317(n+1), A392201(n+1)]`
-/

namespace A395558.P11516789958336564747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P11516789958336564747

/-! ## A395558.P10627980288615306737

`∩[A095282(n+1), A392201(n+1)]`
-/

namespace A395558.P10627980288615306737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P10627980288615306737

/-! ## A395558.P12486348219403203089

`∩[A141123(n+1), A392201(n+1)]`
-/

namespace A395558.P12486348219403203089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P12486348219403203089

/-! ## A395558.P14588056950601046208

`∩[A038874(n+1), A392201(n+1)]`
-/

namespace A395558.P14588056950601046208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P14588056950601046208

/-! ## A395558.P10625167800456171735

`∩[A045309(n+1), A392201(n+1)]`
-/

namespace A395558.P10625167800456171735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P10625167800456171735

/-! ## A395558.P1687738487604397716

`∩[A045326(n+1), A392201(n+1)]`
-/

namespace A395558.P1687738487604397716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P1687738487604397716

/-! ## A395558.P15066420930393971823

`∩[A078403(n+1), A392201(n+1)]`
-/

namespace A395558.P15066420930393971823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P15066420930393971823

/-! ## A395558.P12708421202309184201

`∩[A391369(n+1), A392201(n+1)]`
-/

namespace A395558.P12708421202309184201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P12708421202309184201

/-! ## A395558.P10953934330180736636

`∩[A091310(n+1), A392201(n+1)]`
-/

namespace A395558.P10953934330180736636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P10953934330180736636

/-! ## A395558.P11018420719128816880

`∩[A049596(n+1), A392201(n+1)]`
-/

namespace A395558.P11018420719128816880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P11018420719128816880

/-! ## A395558.P11912792959805219402

`∩[A040028(n+1), A392201(n+1)]`
-/

namespace A395558.P11912792959805219402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P11912792959805219402

/-! ## A395558.P1085038921195991990

`∩[A040036(n+1), A392201(n+1)]`
-/

namespace A395558.P1085038921195991990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P1085038921195991990

/-! ## A395558.P1444365061443047492

`∩[A040044(n+1), A392201(n+1)]`
-/

namespace A395558.P1444365061443047492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P1444365061443047492

/-! ## A395558.P10135556786569961580

`∩[A040046(n+1), A392201(n+1)]`
-/

namespace A395558.P10135556786569961580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P10135556786569961580

/-! ## A395558.P18205893772111166950

`∩[A040049(n+1), A392201(n+1)]`
-/

namespace A395558.P18205893772111166950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P18205893772111166950

/-! ## A395558.P3115104031140992032

`∩[A040054(n+1), A392201(n+1)]`
-/

namespace A395558.P3115104031140992032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395558.P3115104031140992032

/-!
# A395560: 1 = Sum_{n>=0} a(n) * x^n * (1 - (3*n+1)*x)^2.

The programs for A395560, the canonical program `A395560.P12810589271726075161` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395560 has offset 0).

The definition of A395560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395560.P12810589271726075161

`2*(3*n-2)*a(n-1)-(3*n-5)²*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395560

/-- `2*(3*n-2)*a(n-1)-(3*n-5)²*a(n-2)` -/
def P12810589271726075161.Spec : Prop :=
  ∀ n, P12810589271726075161.a n = A395560 n

theorem P12810589271726075161.correct : P12810589271726075161.Spec := by
  intro n
  simp only [A395560]

end A395560

/-!
# A395563: Indices of 2 in A395473: Number k such that Q(chi) takes 2 different fields for chi running through the Dirichlet characters modulo k, where Q(chi) is the field generated by the values of chi.

The programs for A395563, there is no canonical definition to state claims against.
-/

/-! ## A395563.P1479447132721709724

`eq[A020639(2*(n+1)), A191613(n+1)]+1`
-/

namespace A395563.P1479447132721709724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A395563.P1479447132721709724

/-! ## A395563.P10840227969222345473

`eq[2, A191613(n^abs(A057428(n)))]`
-/

namespace A395563.P10840227969222345473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|A057428 n| : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395563.P10840227969222345473

/-! ## A395563.P8874834755767142365

`eq[2, A001055(A002322(n+1))]+1`
-/

namespace A395563.P8874834755767142365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A395563.P8874834755767142365

/-!
# A395565: Primes p preceded and followed by primes whose difference is greater than 2*log(p).

The programs for A395565, there is no canonical definition to state claims against.
-/

/-! ## A395565.P5056281200684095712

`eq[A194294(n+1), A357618(n)]`
-/

namespace A395565.P5056281200684095712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395565.P5056281200684095712

/-! ## A395565.P3715431440298225571

`∪[A046869(A032555(2*n+1)), A191377(n+1)]`
-/

namespace A395565.P3715431440298225571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (A032555 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395565.P3715431440298225571

/-!
# A395567: Primes of the form (x^2 + y^2 + z^2) / (x*y + x*z + y*z) with integer x, y, z.

The programs for A395567, there is no canonical definition to state claims against.
-/

/-! ## A395567.P4919430677339462626

`p?[A331605(n+1)]`
-/

namespace A395567.P4919430677339462626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A395567.P4919430677339462626

/-! ## A395567.P9945053247462880921

`∩[A002313(n+1), A331605(n+1)]`
-/

namespace A395567.P9945053247462880921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P9945053247462880921

/-! ## A395567.P7062449448648475790

`∩[A331605(n+1), A348283(n+1)]`
-/

namespace A395567.P7062449448648475790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P7062449448648475790

/-! ## A395567.P3165379984336052089

`∩[A109515(n+1), A331605(n+1)]`
-/

namespace A395567.P3165379984336052089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P3165379984336052089

/-! ## A395567.P5168409889418590475

`∩[A266987(n+1), A331605(n+1)]`
-/

namespace A395567.P5168409889418590475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P5168409889418590475

/-! ## A395567.P14222876787494595874

`∩[A042998(n+1), A331605(n+1)]`
-/

namespace A395567.P14222876787494595874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P14222876787494595874

/-! ## A395567.P16111185513200806756

`∩[A045352(n+1), A331605(n+1)]`
-/

namespace A395567.P16111185513200806756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P16111185513200806756

/-! ## A395567.P6122508388854140597

`∩[A270617(n+1), A331605(n+1)]`
-/

namespace A395567.P6122508388854140597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P6122508388854140597

/-! ## A395567.P2317109291759398398

`∩[A049573(n+1), A331605(n+1)]`
-/

namespace A395567.P2317109291759398398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P2317109291759398398

/-! ## A395567.P3392213666137666613

`∩[A049585(n+1), A331605(n+1)]`
-/

namespace A395567.P3392213666137666613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P3392213666137666613

/-! ## A395567.P8220057458343060301

`∩[A000040(n+1), A331605(n+1)]`
-/

namespace A395567.P8220057458343060301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P8220057458343060301

/-! ## A395567.P8853567756107689355

`∩[A045344(n+1), A331605(n+1)]`
-/

namespace A395567.P8853567756107689355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P8853567756107689355

/-! ## A395567.P11270012512917318443

`∩[A051948(n+1), A331605(n+1)]`
-/

namespace A395567.P11270012512917318443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P11270012512917318443

/-! ## A395567.P17009102206118471382

`∩[A053813(n+1), A331605(n+1)]`
-/

namespace A395567.P17009102206118471382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P17009102206118471382

/-! ## A395567.P1649395491401380485

`∩[A116974(n+1), A331605(n+1)]`
-/

namespace A395567.P1649395491401380485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P1649395491401380485

/-! ## A395567.P4918693209835885245

`∩[A138837(n+1), A331605(n+1)]`
-/

namespace A395567.P4918693209835885245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P4918693209835885245

/-! ## A395567.P18168530535179536617

`∩[A175787(n+1), A331605(n+1)]`
-/

namespace A395567.P18168530535179536617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P18168530535179536617

/-! ## A395567.P3178266840663052216

`∩[A182140(n+1), A331605(n+1)]`
-/

namespace A395567.P3178266840663052216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P3178266840663052216

/-! ## A395567.P9904354291907823666

`∩[A182986(n+1), A331605(n+1)]`
-/

namespace A395567.P9904354291907823666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P9904354291907823666

/-! ## A395567.P7783540407343302047

`∩[A261123(n+1), A331605(n+1)]`
-/

namespace A395567.P7783540407343302047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395567.P7783540407343302047

/-!
# A395568: Largest prime of the form x*y + x*z + x*t + y*z + y*t + z*t for integers 0 <= x <= y <= z <= t <= n.

The programs for A395568, there is no canonical definition to state claims against.
-/

/-! ## A395568.P17826384497622312126

`A155801(A153663(n+1))`
-/

namespace A395568.P17826384497622312126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155801 (A153663 (n + 1)).toNat

end

end A395568.P17826384497622312126

/-!
# A395569: Moebius transform of A396683 = d(A006863), where d = A000005 is the divisor function.

The programs for A395569, there is no canonical definition to state claims against.
-/

/-! ## A395569.P3259823897852403792

`A321713(2*(n+1))+A270562(2*n+1)`
-/

namespace A395569.P3259823897852403792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (2 * (n + 1)) + A270562 (2 * n + 1)

end

end A395569.P3259823897852403792

/-! ## A395569.P10355461394594419169

`A321713(2*n+1)+A321713(2*(n+1))`
-/

namespace A395569.P10355461394594419169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (2 * n + 1) + A321713 (2 * (n + 1))

end

end A395569.P10355461394594419169

/-!
# A395571: Triangle read by rows: coefficients of reciprocal polynomials refining A007334.

The programs for A395571, there is no canonical definition to state claims against.
-/

/-! ## A395571.P11663648845124621221

`A055086(A022176(n))`
-/

namespace A395571.P11663648845124621221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A022176 n).toNat

end

end A395571.P11663648845124621221

/-! ## A395571.P6026914476487356083

`A064764(A056940(n))`
-/

namespace A395571.P6026914476487356083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064764 (A056940 n).toNat

end

end A395571.P6026914476487356083

/-! ## A395571.P6326611751830969042

`A064797(A099759(n))`
-/

namespace A395571.P6326611751830969042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064797 (A099759 n).toNat

end

end A395571.P6326611751830969042

/-! ## A395571.P6665641325129322264

`A064764(A152602(n))`
-/

namespace A395571.P6665641325129322264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064764 (A152602 n).toNat

end

end A395571.P6665641325129322264

/-! ## A395571.P18001884761020684397

`A064764(A154980(n))`
-/

namespace A395571.P18001884761020684397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064764 (A154980 n).toNat

end

end A395571.P18001884761020684397

/-!
# A395572: Array read by ascending antidiagonals: A(n, k) = Sum_{j=0..n} Stirling2(n, j)*4^j*(k)_j.

The programs for A395572, there is no canonical definition to state claims against.
-/

/-! ## A395572.P9720285693066369305

`A182635(A395762(n))`
-/

namespace A395572.P9720285693066369305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182635 (A395762 n).toNat

end

end A395572.P9720285693066369305

/-! ## A395572.P9801982646156939408

`A134653(A395570(n)²)`
-/

namespace A395572.P9801982646156939408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134653 (A395570 n ^ 2).toNat

end

end A395572.P9801982646156939408

/-! ## A395572.P3255799812125615995

`A086599(A271339(n+2))`
-/

namespace A395572.P3255799812125615995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 (A271339 (n + 2)).toNat

end

end A395572.P3255799812125615995

/-! ## A395572.P9693095948311499955

`A339444(A209576(n+2))`
-/

namespace A395572.P9693095948311499955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339444 (A209576 (n + 2)).toNat

end

end A395572.P9693095948311499955

/-! ## A395572.P2265810034700733622

`A134653(A395570(n)*A395570(n))`
-/

namespace A395572.P2265810034700733622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134653 (A395570 n * A395570 n).toNat

end

end A395572.P2265810034700733622

/-!
# A395573: a(n) is the permanent of the symmetric n X n matrix M defined by M(i,j) = min(i!,j!) for 1 <= i,j <= n.

The programs for A395573, there is no canonical definition to state claims against.
-/

/-! ## A395573.P14944146733494413956

`A218859(A029976(n!))`
-/

namespace A395573.P14944146733494413956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218859 (A029976 (Nat.factorial n)).toNat

end

end A395573.P14944146733494413956

/-!
# A395574: 1 = Sum_{n>=0} a(n) * x^n * (1 - (2*n+1)*x)^(n+1).

The programs for A395574, there is no canonical definition to state claims against.
-/

/-! ## A395574.P5685485396617262655

`A219636(A000364(n)+A000105(n))`
-/

namespace A395574.P5685485396617262655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (A000364 n + A000105 n).toNat

end

end A395574.P5685485396617262655

/-!
# A395575: 1 = Sum_{n>=0} a(n) * x^n * (1 - (n+1)*x)^(2*n+1).

The programs for A395575, there is no canonical definition to state claims against.
-/

/-! ## A395575.P9144134482423545424

`A102750(A385945(n))-1`
-/

namespace A395575.P9144134482423545424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (A385945 n).toNat - 1

end

end A395575.P9144134482423545424

/-!
# A395577: 1 = Sum_{n>=0} a(n) * x^n * (1 - (4*n+1)*x)^2.

The programs for A395577, the canonical program `A395577.P15864192331152809571` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395577 has offset 0).

The definition of A395577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395577.P15864192331152809571

`2*(4*n-3)*a(n-1)-(4*n-7)²*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395577

/-- `2*(4*n-3)*a(n-1)-(4*n-7)²*a(n-2)` -/
def P15864192331152809571.Spec : Prop :=
  ∀ n, P15864192331152809571.a n = A395577 n

theorem P15864192331152809571.correct : P15864192331152809571.Spec := by
  intro n
  simp only [A395577]

end A395577

/-!
# A395578: Squarefree kernel of A303606(n).

The programs for A395578, there is no canonical definition to state claims against.
-/

/-! ## A395578.P16279630776198471704

`A007947(A303606(n+1))`
-/

namespace A395578.P16279630776198471704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A303606 (n + 1)).toNat

end

end A395578.P16279630776198471704

/-! ## A395578.P17516912230096373491

`filter[A025478(n+1), A354353(#)]`
-/

namespace A395578.P17516912230096373491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A395578.P17516912230096373491

/-! ## A395578.P8155055677240837019

`filter[A025478(n+2), A354819(#)]`
-/

namespace A395578.P8155055677240837019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A395578.P8155055677240837019

/-! ## A395578.P17601028377910505150

`filter[A392986(n+2), A354819(#)]`
-/

namespace A395578.P17601028377910505150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A395578.P17601028377910505150

/-! ## A395578.P11451378299211929114

`∏{p}[A303606(n+1), #]`
-/

namespace A395578.P11451378299211929114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A395578.P11451378299211929114

/-! ## A395578.P6704450533296703811

`∏{p}[sqrt(A389776(n+1)), #]`
-/

namespace A395578.P6704450533296703811
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A389776 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A395578.P6704450533296703811

/-! ## A395578.P8983937625809481832

`A052410(A303606(2*n+1-n))`
-/

namespace A395578.P8983937625809481832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A303606 (2 * n + 1 - n)).toNat

end

end A395578.P8983937625809481832

/-! ## A395578.P10031520526247451634

`A052410(A052410(A303606(n+1))²)`
-/

namespace A395578.P10031520526247451634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A052410 (A303606 (n + 1)).toNat ^ 2).toNat

end

end A395578.P10031520526247451634

/-!
# A395579: Product of the least factors in all factorizations of n, up to permutation of factors, into factors > 1, a(1) = 1 by convention.

The programs for A395579, there is no canonical definition to state claims against.
-/

/-! ## A395579.P2428013443657207652

`(n+1)*A396079(n+1)`
-/

namespace A395579.P2428013443657207652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A396079 (n + 1)

end

end A395579.P2428013443657207652

/-!
# A395580: Number of axially symmetric tilings of an L-tromino of order n by elementary L-trominoes.

The programs for A395580, there is no canonical definition to state claims against.
-/

/-! ## A395580.P13644329096562531545

`A233530(A233521(n+1)^A233520(n+1))`
-/

namespace A395580.P13644329096562531545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (SequenceMachineLib.roundAway ((A233521 (n + 1) : ℚ) ^ (A233520 (n + 1) : ℤ))).toNat

end

end A395580.P13644329096562531545

/-!
# A395581: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 1 + sqrt(2).

The programs for A395581, the canonical program `A395581.P5928758976938920943` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395581 has offset 0).

The definition of A395581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395581.P5928758976938920943

`A003151(a(n-1))+A003151(a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395581

/-- `A003151(a(n-1))+A003151(a(n-2))` -/
def P5928758976938920943.Spec : Prop :=
  ∀ n, P5928758976938920943.a n = A395581 n

theorem P5928758976938920943.correct : P5928758976938920943.Spec := by
  intro n
  simp only [A395581]

end A395581

/-! ## A395581.P2150328003010831047

`A071841(A246036(n))`
-/

namespace A395581.P2150328003010831047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (A246036 n).toNat

end

end A395581.P2150328003010831047

namespace A395581

/-- `A071841(A246036(n))` -/
def P2150328003010831047.Spec : Prop :=
  ∀ n, P2150328003010831047.a n = A395581 n

end A395581

/-! ## A395581.P4618448497738307189

`A066490(A149218(n+1))`
-/

namespace A395581.P4618448497738307189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A149218 (n + 1)).toNat

end

end A395581.P4618448497738307189

namespace A395581

/-- `A066490(A149218(n+1))` -/
def P4618448497738307189.Spec : Prop :=
  ∀ n, P4618448497738307189.a n = A395581 n

end A395581

/-!
# A395582: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

The programs for A395582, the canonical program `A395582.P2622982355169417460` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395582 has offset 0).

The definition of A395582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395582.P2622982355169417460

`A080081(a(n-1))+A080081(a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395582

/-- `A080081(a(n-1))+A080081(a(n-2))` -/
def P2622982355169417460.Spec : Prop :=
  ∀ n, P2622982355169417460.a n = A395582 n

theorem P2622982355169417460.correct : P2622982355169417460.Spec := by
  intro n
  simp only [A395582]

end A395582

/-! ## A395582.P10687041996598833122

`A194247(A150466(n))`
-/

namespace A395582.P10687041996598833122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194247 (A150466 n).toNat

end

end A395582.P10687041996598833122

namespace A395582

/-- `A194247(A150466(n))` -/
def P10687041996598833122.Spec : Prop :=
  ∀ n, P10687041996598833122.a n = A395582 n

end A395582

/-!
# A395583: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

The programs for A395583, the canonical program `A395583.P8867304325575678550` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395583 has offset 0).

The definition of A395583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395583.P12218548838063138845

`ogf((x-x^2-x^3-x^4)/(1-5x-x^2+3x^3+x^4+x^5))`
-/

namespace A395583.P12218548838063138845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1, -1] [1, -5, -1, 3, 1, 1] n

end

end A395583.P12218548838063138845

namespace A395583

/-- `ogf((x-x^2-x^3-x^4)/(1-5x-x^2+3x^3+x^4+x^5))` -/
def P12218548838063138845.Spec : Prop :=
  ∀ n, P12218548838063138845.a n = A395583 n

end A395583

/-! ## A395583.P8867304325575678550

`A004976(a(n-1))+A004976(a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395583

/-- `A004976(a(n-1))+A004976(a(n-2))` -/
def P8867304325575678550.Spec : Prop :=
  ∀ n, P8867304325575678550.a n = A395583 n

theorem P8867304325575678550.correct : P8867304325575678550.Spec := by
  intro n
  simp only [A395583]

end A395583

/-!
# A395584: Least k >= 3 such that psi(k)/2 has exactly n divisors, where psi = A002322 is the reduced totient function.

The programs for A395584, there is no canonical definition to state claims against.
-/

/-! ## A395584.P18065361323084497797

`or(A286602(A097172(n+3)), A358605(n))`
-/

namespace A395584.P18065361323084497797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286602 (A097172 (n + 3)).toNat) (A358605 n)

end

end A395584.P18065361323084497797

/-!
# A395585: a(n) = floor(r*(a(n-1) + a(n-2))), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

The programs for A395585, the canonical program `A395585.P1910700753436105600` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395585 has offset 0).

The definition of A395585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395585.P8476635665801672096

`ogf((x-x^2-x^4)/(1-4x-x^2+2x^3+x^4+x^5))`
-/

namespace A395585.P8476635665801672096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 0, -1] [1, -4, -1, 2, 1, 1] n

end

end A395585.P8476635665801672096

namespace A395585

/-- `ogf((x-x^2-x^4)/(1-4x-x^2+2x^3+x^4+x^5))` -/
def P8476635665801672096.Spec : Prop :=
  ∀ n, P8476635665801672096.a n = A395585 n

end A395585

/-! ## A395585.P7998203129721931091

`floor((3+sqrt(13))*(a(n-1)+a(n-2))/2)` with `a(0)=0, a(1)=1`
-/

namespace A395585.P7998203129721931091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(3 + Real.sqrt (13 : ℝ)) * (a (n - 1) + a (n - 2) : ℝ) / 2⌋

end

end A395585.P7998203129721931091

namespace A395585

/-- `floor((3+sqrt(13))*(a(n-1)+a(n-2))/2)` -/
def P7998203129721931091.Spec : Prop :=
  ∀ n, P7998203129721931091.a n = A395585 n

end A395585

/-! ## A395585.P1910700753436105600

`A080081(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395585

/-- `A080081(a(n-1)+a(n-2))` -/
def P1910700753436105600.Spec : Prop :=
  ∀ n, P1910700753436105600.a n = A395585 n

theorem P1910700753436105600.correct : P1910700753436105600.Spec := by
  intro n
  simp only [A395585]

end A395585

/-!
# A395586: a(n) = floor(r*(a(n-1)+a(n-2))), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

The programs for A395586, the canonical program `A395586.P13069080438315574656` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395586 has offset 0).

The definition of A395586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395586.P10032896241601181710

`ogf((x-x^2-x^4)/(1-5x-x^2+3x^3+x^4+x^5))`
-/

namespace A395586.P10032896241601181710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 0, -1] [1, -5, -1, 3, 1, 1] n

end

end A395586.P10032896241601181710

namespace A395586

/-- `ogf((x-x^2-x^4)/(1-5x-x^2+3x^3+x^4+x^5))` -/
def P10032896241601181710.Spec : Prop :=
  ∀ n, P10032896241601181710.a n = A395586 n

end A395586

/-! ## A395586.P13069080438315574656

`A004976(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395586

/-- `A004976(a(n-1)+a(n-2))` -/
def P13069080438315574656.Spec : Prop :=
  ∀ n, P13069080438315574656.a n = A395586 n

theorem P13069080438315574656.correct : P13069080438315574656.Spec := by
  intro n
  simp only [A395586]

end A395586

/-!
# A395588: Maximum orbit size of the topdrop map on permutations of the positive integers 1 through n.

The programs for A395588, there is no canonical definition to state claims against.
-/

/-! ## A395588.P164388610580098087

`filter[A307889(n), A182741(#)]`
-/

namespace A395588.P164388610580098087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182741 (f1 j).toNat = 1) n)

end

end A395588.P164388610580098087

/-! ## A395588.P9192465688271842846

`filter[A307889(n), A275606(#)]`
-/

namespace A395588.P9192465688271842846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A275606 (f1 j).toNat = 1) n)

end

end A395588.P9192465688271842846

/-! ## A395588.P16091622118445618094

`A371591(A336414(n))`
-/

namespace A395588.P16091622118445618094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371591 (A336414 n).toNat

end

end A395588.P16091622118445618094

/-! ## A395588.P2418475395049678860

`A375347(A377368(n+1))`
-/

namespace A395588.P2418475395049678860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375347 (A377368 (n + 1)).toNat

end

end A395588.P2418475395049678860

/-! ## A395588.P12725533622873782548

`filter[A307889(n), A140865(#)]`
-/

namespace A395588.P12725533622873782548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140865 (f1 j).toNat = 1) n)

end

end A395588.P12725533622873782548

/-!
# A395593: a(n) = a(n-1) + a(n-3) + a(n-4), a(0)=1, a(1)=8, a(2)=64, a(3)=72.

The programs for A395593, the canonical program `A395593.P5978937968690005499` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395593 has offset 0).

The definition of A395593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395593.P5978937968690005499`, by `A395593.P5978937968690005499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395593.P4416161880674006354

`ogf((1+7x+56x^2+7x^3)/(1-x-x^3-x^4))`
-/

namespace A395593.P4416161880674006354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 56, 7] [1, -1, 0, -1, -1] n

end

end A395593.P4416161880674006354

namespace A395593

/-- `ogf((1+7x+56x^2+7x^3)/(1-x-x^3-x^4))` -/
def P4416161880674006354.Spec : Prop :=
  ∀ n, P4416161880674006354.a n = A395593 n

end A395593

/-! ## A395593.P5978937968690005499

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=64, a(3)=72`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395593

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P5978937968690005499.Spec : Prop :=
  ∀ n, (P5978937968690005499.a n : ℤ) = A395593 n

theorem P5978937968690005499.correct : P5978937968690005499.Spec := by
  intro n
  simp only [A395593]

end A395593

/-!
# A395594: a(n) = a(n-1) + a(n-3) + a(n-4), a(0)=1, a(1)=9, a(2)=81, a(3)=90.

The programs for A395594, the canonical program `A395594.P17449777468984067767` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395594 has offset 0).

The definition of A395594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395594.P17449777468984067767`, by `A395594.P17449777468984067767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395594.P17449777468984067767

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=9, a(2)=81, a(3)=90`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395594

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P17449777468984067767.Spec : Prop :=
  ∀ n, (P17449777468984067767.a n : ℤ) = A395594 n

theorem P17449777468984067767.correct : P17449777468984067767.Spec := by
  intro n
  simp only [A395594]

end A395594

/-!
# A395595: Number of orbits of rowmotion on the order ideals of the Boolean lattice B_n.

The programs for A395595, there is no canonical definition to state claims against.
-/

/-! ## A395595.P5386618465630118400

`A361849(A323583(n))+A355739(n+1)`
-/

namespace A395595.P5386618465630118400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361849 (A323583 n).toNat + A355739 (n + 1)

end

end A395595.P5386618465630118400

/-!
# A395596: Nearest integer to n*(phi-1) which is coprime with n, where phi is the golden ratio.

The programs for A395596, there is no canonical definition to state claims against.
-/

/-! ## A395596.P12550299102729220252

`or(A004001(n+1), A010060(A000225(n)))`
-/

namespace A395596.P12550299102729220252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (n + 1)) (A010060 (A000225 n).toNat)

end

end A395596.P12550299102729220252

/-! ## A395596.P16783689157318093198

`or(A004001(n+1), A010052(A011782(n)))`
-/

namespace A395596.P16783689157318093198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (n + 1)) (A010052 (A011782 n).toNat)

end

end A395596.P16783689157318093198

