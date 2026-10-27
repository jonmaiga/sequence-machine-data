import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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

/-! ## A395506.P10332511573305261441

`and(A387410(n+1), A395507(n+1))`
-/

namespace A395506.P10332511573305261441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A395507 (n + 1))

end

end A395506.P10332511573305261441

/-! ## A395506.P14154999644832067196

`A395507(n+1)%A372566(A080859(n))`
-/

namespace A395506.P14154999644832067196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395507 (n + 1)) (A372566 (A080859 n).toNat)

end

end A395506.P14154999644832067196

/-! ## A395506.P5052900544556482247

`and(A387415(n+1), A395507(n+1))`
-/

namespace A395506.P5052900544556482247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387415 (n + 1)) (A395507 (n + 1))

end

end A395506.P5052900544556482247

/-! ## A395506.P16053857172059047928

`and(A387418(n+1), A395507(n+1))`
-/

namespace A395506.P16053857172059047928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387418 (n + 1)) (A395507 (n + 1))

end

end A395506.P16053857172059047928

/-! ## A395506.P15872932990429022029

`A395507(n+1)+A318982(A257417(n+1))`
-/

namespace A395506.P15872932990429022029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395507 (n + 1) + A318982 (A257417 (n + 1)).toNat

end

end A395506.P15872932990429022029

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

/-! ## A395512.P13122992927012252693

`A036580(A133529(n+5))+A002491(n+1)`
-/

namespace A395512.P13122992927012252693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A133529 (n + 5)).toNat + A002491 (n + 1)

end

end A395512.P13122992927012252693

/-! ## A395512.P16063650350891571706

`∑[A034444(A261547(n))]`
-/

namespace A395512.P16063650350891571706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A261547 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395512.P16063650350891571706

/-! ## A395512.P8172849822126707503

`∑[A308621(A002322(n+1)!)]`
-/

namespace A395512.P8172849822126707503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308621 (Nat.factorial (A002322 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395512.P8172849822126707503

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

/-! ## A395514.P10104572728977159120

`A056767(n+1)-A358458(A004111(n+2))`
-/

namespace A395514.P10104572728977159120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056767 (n + 1) - A358458 (A004111 (n + 2)).toNat

end

end A395514.P10104572728977159120

/-!
# A395520: First differences of A036349.

The programs for A395520, the canonical program `A395520.P8890934817172298303` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395520 has offset 1).

The definition of A395520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395520.P8890934817172298303

`A036349(n+2)-A036349(n+1)`

The canonical program, it is in `Seq.B002.C008`.
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

/-! ## A395528.P1867821061640284817

`∑[A002267(n+4)]%3`
-/

namespace A395528.P1867821061640284817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A395528.P1867821061640284817

/-! ## A395528.P2491260888837784824

`A257511(A265054(n))`
-/

namespace A395528.P2491260888837784824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A265054 n).toNat

end

end A395528.P2491260888837784824

/-! ## A395528.P3749611402753148700

`A120614(A135790(n+1))`
-/

namespace A395528.P3749611402753148700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120614 (A135790 (n + 1)).toNat

end

end A395528.P3749611402753148700

/-!
# A395530: a(n) is the least number of 5-smooth numbers that add up to n.

The programs for A395530, there is no canonical definition to state claims against.
-/

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

/-! ## A395531.P3988749347537983452

`∑[A094673((n+1)²)+n]`
-/

namespace A395531.P3988749347537983452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094673 ((n + 1) ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395531.P3988749347537983452

/-!
# A395535: a(n) = (n XOR n*2+1) for odd n, (n XOR n/2) for even n.

The programs for A395535, the canonical program `A395535.P38086071388283955` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395535 has offset 0).

The definition of A395535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395535.P38086071388283955

`A003188(A059029(n))`

The canonical program, it is in `Seq.B001.C013`.
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

The programs for A395540, the canonical program `A395540.P3552911399672935764` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395540 has offset 1).

The definition of A395540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` (program `A395540.P3552911399672935764`, by `A395540.P3552911399672935764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395540.P3552911399672935764

`floor(log2(n+1))+floor(log2(2*(n+1)/3))+3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A395540

/-- `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` -/
def P3552911399672935764.Spec : Prop :=
  ∀ n, P3552911399672935764.a n = A395540 (n + 1)

theorem P3552911399672935764.correct : P3552911399672935764.Spec := by
  intro n
  simp only [A395540, Nat.add_sub_cancel]

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

/-! ## A395540.P8661187088601878910

`A029837(A246520(n+1))`
-/

namespace A395540.P8661187088601878910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A246520 (n + 1)).toNat

end

end A395540.P8661187088601878910

namespace A395540

/-- `A029837(A246520(n+1))` -/
def P8661187088601878910.Spec : Prop :=
  ∀ n, P8661187088601878910.a n = A395540 (n + 1)

end A395540

/-! ## A395540.P8325197194426048650

`A100006(A138768(n+1))`
-/

namespace A395540.P8325197194426048650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (A138768 (n + 1)).toNat

end

end A395540.P8325197194426048650

namespace A395540

/-- `A100006(A138768(n+1))` -/
def P8325197194426048650.Spec : Prop :=
  ∀ n, P8325197194426048650.a n = A395540 (n + 1)

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

The programs for A395542, the canonical program `A395542.P7948443198613962418` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395542 has offset 1).

The definition of A395542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395542.P7948443198613962418

`eq[A000120(n), A276134(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A395542

/-- `eq[A000120(n), A276134(n)]` -/
def P7948443198613962418.Spec : Prop :=
  ∀ n, (P7948443198613962418.a n : ℤ) = A395542 (n + 1)

theorem P7948443198613962418.correct : P7948443198613962418.Spec := by
  intro n
  simp only [A395542, Nat.add_sub_cancel]

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

/-! ## A395543.P4345783828704819145

`(n+1)*A036505(n)`
-/

namespace A395543.P4345783828704819145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036505 n

end

end A395543.P4345783828704819145

/-! ## A395543.P1355494977613336331

`(n+1)*(n+1)*A036504(n+1)`
-/

namespace A395543.P1355494977613336331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A036504 (n + 1))

end

end A395543.P1355494977613336331

/-! ## A395543.P17068479293170265437

`(n+1)^(n+1)/A062763(n+1)`
-/

namespace A395543.P17068479293170265437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) / (A062763 (n + 1) : ℚ)

end

end A395543.P17068479293170265437

/-! ## A395543.P18180672215285199922

`A055774(n+1)/A000142(n)`
-/

namespace A395543.P18180672215285199922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055774 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A395543.P18180672215285199922

/-! ## A395543.P239920992679898773

`A055774(n+1)/(A062763(n+1)*A095996(n+1))`
-/

namespace A395543.P239920992679898773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055774 (n + 1) : ℚ) / (A062763 (n + 1) * A095996 (n + 1) : ℚ)

end

end A395543.P239920992679898773

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

The programs for A395545, the canonical program `A395545.P10009443539781568918` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395545 has offset 1).

The definition of A395545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395545.P10009443539781568918

`A035317(A007401(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A395545

/-- `A035317(A007401(n+1))` -/
def P10009443539781568918.Spec : Prop :=
  ∀ n, P10009443539781568918.a n = A395545 (n + 1)

theorem P10009443539781568918.correct : P10009443539781568918.Spec := by
  intro n
  simp only [A395545, Nat.add_sub_cancel]

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

/-! ## A395545.P1226124321439498902

`A059259(lt[1, A169940(n+1)])`
-/

namespace A395545.P1226124321439498902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A395545.P1226124321439498902

namespace A395545

/-- `A059259(lt[1, A169940(n+1)])` -/
def P1226124321439498902.Spec : Prop :=
  ∀ n, P1226124321439498902.a n = A395545 (n + 1)

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

/-! ## A395553.P5834768445729101072

`A072704(A000217(n+4)-n)`
-/

namespace A395553.P5834768445729101072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072704 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A395553.P5834768445729101072

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

The programs for A395557, there is no canonical definition to state claims against.
-/

/-! ## A395557.P11503464203209100733

`A361654(A360417(n+1))`
-/

namespace A395557.P11503464203209100733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A360417 (n + 1)).toNat

end

end A395557.P11503464203209100733

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

The programs for A395560, the canonical program `A395560.P12810589271726075161` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395560 has offset 0).

The definition of A395560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395560.P12810589271726075161

`2*(3*n-2)*a(n-1)-(3*n-5)²*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C040`.
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

/-! ## A395568.P17301050003053408233

`A236675(A018252(A097457(A008578(2*n+1))))`
-/

namespace A395568.P17301050003053408233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236675 (A018252 (A097457 (A008578 (2 * n + 1)).toNat).toNat).toNat

end

end A395568.P17301050003053408233

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

/-! ## A395572.P5543832764237345610

`A022998(A395140(n)^A240850(n))`
-/

namespace A395572.P5543832764237345610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway ((A395140 n : ℚ) ^ (A240850 n : ℤ))).toNat

end

end A395572.P5543832764237345610

/-! ## A395572.P12783389454424328903

`A026998(n)-A003849(A324886(n+3))`
-/

namespace A395572.P12783389454424328903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026998 n - A003849 (A324886 (n + 3)).toNat

end

end A395572.P12783389454424328903

/-!
# A395573: a(n) is the permanent of the symmetric n X n matrix M defined by M(i,j) = min(i!,j!) for 1 <= i,j <= n.

The programs for A395573, there is no canonical definition to state claims against.
-/

/-! ## A395573.P9490467396202661897

`A396190(A004127(n+1))+1`
-/

namespace A395573.P9490467396202661897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396190 (A004127 (n + 1)).toNat + 1

end

end A395573.P9490467396202661897

/-!
# A395574: 1 = Sum_{n>=0} a(n) * x^n * (1 - (2*n+1)*x)^(n+1).

The programs for A395574, there is no canonical definition to state claims against.
-/

/-! ## A395574.P13318448236320562978

`A317277(n)-A317302(A093751(n+1))`
-/

namespace A395574.P13318448236320562978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317277 n - A317302 (A093751 (n + 1)).toNat

end

end A395574.P13318448236320562978

/-!
# A395575: 1 = Sum_{n>=0} a(n) * x^n * (1 - (n+1)*x)^(2*n+1).

The programs for A395575, there is no canonical definition to state claims against.
-/

/-! ## A395575.P13766043370458975799

`A333472(n)*A353852(A155069(n))`
-/

namespace A395575.P13766043370458975799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333472 n * A353852 (A155069 n).toNat

end

end A395575.P13766043370458975799

/-!
# A395577: 1 = Sum_{n>=0} a(n) * x^n * (1 - (4*n+1)*x)^2.

The programs for A395577, the canonical program `A395577.P15864192331152809571` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395577 has offset 0).

The definition of A395577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395577.P15864192331152809571

`2*(4*n-3)*a(n-1)-(4*n-7)²*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C040`.
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

/-! ## A395578.P16136165300998009251

`∏{p}[A303606(A000027(n+1)), #]`
-/

namespace A395578.P16136165300998009251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A395578.P16136165300998009251

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

/-! ## A395580.P4663953141722144578

`A118083(A216445(n))`
-/

namespace A395580.P4663953141722144578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118083 (A216445 n).toNat

end

end A395580.P4663953141722144578

/-!
# A395581: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 1 + sqrt(2).

The programs for A395581, the canonical program `A395581.P5928758976938920943` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395581 has offset 0).

The definition of A395581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395581.P5928758976938920943

`A003151(a(n-1))+A003151(a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C013`.
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

The programs for A395582, the canonical program `A395582.P2622982355169417460` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395582 has offset 0).

The definition of A395582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395582.P2622982355169417460

`A080081(a(n-1))+A080081(a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B001.C013`.
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

The programs for A395583, the canonical program `A395583.P8867304325575678550` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395583 has offset 0).

The definition of A395583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395583.P8867304325575678550

`A004976(a(n-1))+A004976(a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C013`.
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

/-! ## A395584.P17360324102626466685

`A269526(A191461(n+3)+A003945(3*n))`
-/

namespace A395584.P17360324102626466685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (A191461 (n + 3) + A003945 (3 * n)).toNat

end

end A395584.P17360324102626466685

/-!
# A395585: a(n) = floor(r*(a(n-1) + a(n-2))), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

The programs for A395585, the canonical program `A395585.P1910700753436105600` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395585 has offset 0).

The definition of A395585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

The canonical program, it is in `Seq.B001.C013`.
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

The programs for A395586, the canonical program `A395586.P13069080438315574656` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395586 has offset 0).

The definition of A395586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395586.P13069080438315574656

`A004976(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C013`.
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

The programs for A395593, the canonical program `A395593.P5978937968690005499` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395593 has offset 0).

The definition of A395593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395593.P5978937968690005499`, by `A395593.P5978937968690005499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395593.P5978937968690005499

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=64, a(3)=72`

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A395594, the canonical program `A395594.P17449777468984067767` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395594 has offset 0).

The definition of A395594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395594.P17449777468984067767`, by `A395594.P17449777468984067767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395594.P17449777468984067767

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=9, a(2)=81, a(3)=90`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A395594

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P17449777468984067767.Spec : Prop :=
  ∀ n, (P17449777468984067767.a n : ℤ) = A395594 n

theorem P17449777468984067767.correct : P17449777468984067767.Spec := by
  intro n
  simp only [A395594]

end A395594

