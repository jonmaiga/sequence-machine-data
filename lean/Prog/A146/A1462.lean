import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A146205: Number of paths of the simple random walk on condition that the median applied to the partial sums S_0=0, S_1,...,S_n, n odd (n=15 in this example), is equal to half-integer values k+1/2, -[n/2]-1<=k<=[n/2].

The programs for A146205, there is no canonical definition to state claims against.
-/

/-! ## A146205.P8946548469005302810

`35*A131893(A008619(n))`
-/

namespace A146205.P8946548469005302810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A131893 (A008619 n).toNat

end

end A146205.P8946548469005302810

/-! ## A146205.P14190324958639056362

`35*A173676(A004526(n))`
-/

namespace A146205.P14190324958639056362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A173676 (A004526 n).toNat

end

end A146205.P14190324958639056362

/-!
# A146206: Number of paths of the simple random walk on condition that the median applied to the partial sums S_0=0, S_1,...,S_n, n odd (n=15 in this example), is equal to integer values k, -[n/2]<=k<=[n/2].

The programs for A146206, there is no canonical definition to state claims against.
-/

/-! ## A146206.P15652344187384717748

`A146207(n+1)-A146205(n+1)`
-/

namespace A146206.P15652344187384717748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146207 (n + 1) - A146205 (n + 1)

end

end A146206.P15652344187384717748

/-!
# A146208: a(n) is the number of arithmetic progressions of 2 or more integers with product = n.

The programs for A146208, there is no canonical definition to state claims against.
-/

/-! ## A146208.P14965866349690524726

`A062011(n+2)+A361015(n+2)`
-/

namespace A146208.P14965866349690524726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 2) + A361015 (n + 2)

end

end A146208.P14965866349690524726

/-! ## A146208.P16569073884785556788

`A361015(n+2)+A131089(n+2)`
-/

namespace A146208.P16569073884785556788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361015 (n + 2) + A131089 (n + 2)

end

end A146208.P16569073884785556788

/-! ## A146208.P13684808801507351085

`A000005(n+2)+A361015(n+2)+A000005(n+2)`
-/

namespace A146208.P13684808801507351085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + (A361015 (n + 2) + A000005 (n + 2))

end

end A146208.P13684808801507351085

/-! ## A146208.P15088948157448919231

`A060710(n+2)+A361015(n+2)-A183063(n+2)`
-/

namespace A146208.P15088948157448919231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060710 (n + 2) + (A361015 (n + 2) - A183063 (n + 2))

end

end A146208.P15088948157448919231

/-!
# A146209: Integers a(n) for which the factorization in the real quadratic field Q(sqrt(a(n))) is not unique.

The programs for A146209, there is no canonical definition to state claims against.
-/

/-! ## A146209.P17503782744641055335

`record[∏{p}[A276541(n+1), #]]`
-/

namespace A146209.P17503782744641055335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276541 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146209.P17503782744641055335

/-! ## A146209.P3281323454358000812

`record[A007913(A276541(n+1))]`
-/

namespace A146209.P3281323454358000812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A276541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146209.P3281323454358000812

/-! ## A146209.P12228053330286323886

`filter[A276541(n+1), A008966(#)]`
-/

namespace A146209.P12228053330286323886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A146209.P12228053330286323886

/-! ## A146209.P3709005829305690588

`filter[A276541(n+1), A323154(#)]`
-/

namespace A146209.P3709005829305690588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A146209.P3709005829305690588

/-! ## A146209.P9459784944343508403

`filter[A276541(n+1), A340369(#)]`
-/

namespace A146209.P9459784944343508403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A146209.P9459784944343508403

/-!
# A146211: Fermat quotient of the n-th prime with base 3.

The programs for A146211, there is no canonical definition to state claims against.
-/

/-! ## A146211.P16283296004998596846

`A046211(A000040(n+3))`
-/

namespace A146211.P16283296004998596846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046211 (A000040 (n + 3)).toNat

end

end A146211.P16283296004998596846

/-! ## A146211.P7861190693201427226

`A121823(n+1)-1`
-/

namespace A146211.P7861190693201427226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121823 (n + 1) - 1

end

end A146211.P7861190693201427226

/-! ## A146211.P8464326508117050029

`A046209(A020621(n+1))`
-/

namespace A146211.P8464326508117050029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046209 (A020621 (n + 1)).toNat

end

end A146211.P8464326508117050029

/-! ## A146211.P7601318883497470635

`A046209(A020624(n+1))`
-/

namespace A146211.P7601318883497470635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046209 (A020624 (n + 1)).toNat

end

end A146211.P7601318883497470635

/-! ## A146211.P3522504152389246391

`A046209(A020626(n+1))`
-/

namespace A146211.P3522504152389246391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046209 (A020626 (n + 1)).toNat

end

end A146211.P3522504152389246391

/-!
# A146212: Number of intersection points of all lines through pairs of vertices of a regular n-gon.

The programs for A146212, there is no canonical definition to state claims against.
-/

/-! ## A146212.P16319039122534672511

`A146213(n+3)+A007569(n+3)`
-/

namespace A146212.P16319039122534672511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146213 (n + 3) + A007569 (n + 3)

end

end A146212.P16319039122534672511

/-! ## A146212.P14827845429169666189

`A344899(n+3)+1-A344857(n+3)`
-/

namespace A146212.P14827845429169666189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344899 (n + 3) + 1 - A344857 (n + 3)

end

end A146212.P14827845429169666189

/-! ## A146212.P6033683543237519607

`A383461(n+3)-A059841(n)`
-/

namespace A146212.P6033683543237519607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383461 (n + 3) - A059841 n

end

end A146212.P6033683543237519607

/-! ## A146212.P14545984990442695404

`A383461(n+3)-A374134(n+1)`
-/

namespace A146212.P14545984990442695404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383461 (n + 3) - A374134 (n + 1)

end

end A146212.P14545984990442695404

/-!
# A146213: Number of intersection points outside the n-gon of all lines through pairs of vertices of a regular n-gon.

The programs for A146213, there is no canonical definition to state claims against.
-/

/-! ## A146213.P3126227802262157881

`A146212(n+3)-A007569(n+3)`
-/

namespace A146213.P3126227802262157881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146212 (n + 3) - A007569 (n + 3)

end

end A146213.P3126227802262157881

/-! ## A146213.P12347865433742899795

`A146212(n+3)-(A300550(n+3)+A300531(n+3))`
-/

namespace A146213.P12347865433742899795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146212 (n + 3) - (A300550 (n + 3) + A300531 (n + 3))

end

end A146213.P12347865433742899795

/-! ## A146213.P13514940604463880240

`A056239(A121774(n))*A121818(n+2)`
-/

namespace A146213.P13514940604463880240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A121774 n).toNat * A121818 (n + 2)

end

end A146213.P13514940604463880240

/-!
# A146214: a(n) = (10^n)-th lower twin prime.

The programs for A146214, the canonical program `A146214.P6156747196117573182` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146214 has offset 0).

The definition of A146214 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A146214.P6156747196117573182

`A001359(10^n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A146214

/-- `A001359(10^n)` -/
def P6156747196117573182.Spec : Prop :=
  ∀ n, P6156747196117573182.a n = A146214 n

theorem P6156747196117573182.correct : P6156747196117573182.Spec := by
  intro n
  simp only [A146214]

end A146214

/-! ## A146214.P8108868573507501504

`record[A001359(A038303(n))]`
-/

namespace A146214.P8108868573507501504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A038303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146214.P8108868573507501504

namespace A146214

/-- `record[A001359(A038303(n))]` -/
def P8108868573507501504.Spec : Prop :=
  ∀ n, P8108868573507501504.a n = A146214 n

end A146214

/-!
# A146215: a(1) = 1, a(n+1) = a(n) + mod(a(n), p), where p is the lowest prime such that mod(a(n), p) is nonzero.

The programs for A146215, there is no canonical definition to state claims against.
-/

/-! ## A146215.P3218596013940914707

`eq[A365721(A332998(n)), A378005(n)]`
-/

namespace A146215.P3218596013940914707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365721 (A332998 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146215.P3218596013940914707

/-! ## A146215.P11361447825875867552

`eq[A332998(n), A378005(n)]`
-/

namespace A146215.P11361447825875867552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146215.P11361447825875867552

/-! ## A146215.P639465667111580312

`lt[A252867(A034370(n+1)), A326140(n+1)]`
-/

namespace A146215.P639465667111580312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252867 (A034370 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A146215.P639465667111580312

/-! ## A146215.P17426064549672671150

`lt[A171852(A171870(n+1)), A171850(3*(n+1))]`
-/

namespace A146215.P17426064549672671150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171852 (A171870 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171850 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A146215.P17426064549672671150

/-!
# A146216: Number of n X n binary arrays with all ones connected only in a 101-111-010 pattern in any orientation.

The programs for A146216, there is no canonical definition to state claims against.
-/

/-! ## A146216.P6460727171816962729

`A146218(2*(n+2))`
-/

namespace A146216.P6460727171816962729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146218 (2 * (n + 2))

end

end A146216.P6460727171816962729

/-! ## A146216.P1728681202584387508

`A001481(A031141(ceil(2^(n-1))))`
-/

namespace A146216.P1728681202584387508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (A031141 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A146216.P1728681202584387508

/-!
# A146217: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 101-111-010 pattern in any orientation.

The programs for A146217, there is no canonical definition to state claims against.
-/

/-! ## A146217.P12266553954884365384

`A360189(A360089(n)²)`
-/

namespace A146217.P12266553954884365384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (A360089 n ^ 2).toNat

end

end A146217.P12266553954884365384

/-! ## A146217.P8282787223566254554

`A135086(A038949(n+2))`
-/

namespace A146217.P8282787223566254554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135086 (A038949 (n + 2)).toNat

end

end A146217.P8282787223566254554

/-! ## A146217.P10002665044289319863

`A135086(A124854(n+2))`
-/

namespace A146217.P10002665044289319863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135086 (A124854 (n + 2)).toNat

end

end A146217.P10002665044289319863

/-!
# A146218: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 101-111-010 pattern in any orientation.

The programs for A146218, there is no canonical definition to state claims against.
-/

/-! ## A146218.P8845194566010660494

`A146266(A084192(∑[n]))`
-/

namespace A146218.P8845194566010660494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146266 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A146218.P8845194566010660494

/-! ## A146218.P5614157645571881784

`A146266(A043317(n+1))`
-/

namespace A146218.P5614157645571881784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146266 (A043317 (n + 1)).toNat

end

end A146218.P5614157645571881784

/-! ## A146218.P9030183604670845984

`A146266(A044914(n+1))`
-/

namespace A146218.P9030183604670845984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146266 (A044914 (n + 1)).toNat

end

end A146218.P9030183604670845984

/-! ## A146218.P12189676004907700943

`A146266(A055648(n+1))`
-/

namespace A146218.P12189676004907700943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146266 (A055648 (n + 1)).toNat

end

end A146218.P12189676004907700943

/-! ## A146218.P13724563716362701739

`A146266(A061921(n+1))`
-/

namespace A146218.P13724563716362701739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146266 (A061921 (n + 1)).toNat

end

end A146218.P13724563716362701739

/-!
# A146219: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 101-111-010 pattern in any orientation.

The programs for A146219, there is no canonical definition to state claims against.
-/

/-! ## A146219.P9070581890685978574

`A146221(2*(n+2))`
-/

namespace A146219.P9070581890685978574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146221 (2 * (n + 2))

end

end A146219.P9070581890685978574

/-!
# A146220: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 101-111-010 pattern in any orientation.

The programs for A146220, there is no canonical definition to state claims against.
-/

/-! ## A146220.P8325207411054510720

`A265562(A275072(n))`
-/

namespace A146220.P8325207411054510720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 (A275072 n).toNat

end

end A146220.P8325207411054510720

/-! ## A146220.P12651214404724602513

`A265562(A336010(n))`
-/

namespace A146220.P12651214404724602513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 (A336010 n).toNat

end

end A146220.P12651214404724602513

/-! ## A146220.P9474007342113395319

`A018315(∑[A017852(n)])`
-/

namespace A146220.P9474007342113395319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018315 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146220.P9474007342113395319

/-! ## A146220.P4565268374338327937

`A018315(∑[A017853(n)])`
-/

namespace A146220.P4565268374338327937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018315 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146220.P4565268374338327937

/-! ## A146220.P5696680448647309889

`A018315(∑[A017854(n)])`
-/

namespace A146220.P5696680448647309889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018315 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146220.P5696680448647309889

/-!
# A146222: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 101-111-010 pattern in any orientation.

The programs for A146222, there is no canonical definition to state claims against.
-/

/-! ## A146222.P18189913130638330439

`A363287(A146270(n+1))`
-/

namespace A146222.P18189913130638330439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (A146270 (n + 1)).toNat

end

end A146222.P18189913130638330439

/-! ## A146222.P12053729333411370775

`A273237(C(A274147(n), A274153(n)))`
-/

namespace A146222.P12053729333411370775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273237 (Nat.choose (A274147 n).toNat (A274153 n).toNat)

end

end A146222.P12053729333411370775

/-! ## A146222.P16350047116209668792

`A273237(A274147(n)^A252976(n+1))`
-/

namespace A146222.P16350047116209668792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273237 (SequenceMachineLib.roundAway ((A274147 n : ℚ) ^ (A252976 (n + 1) : ℤ))).toNat

end

end A146222.P16350047116209668792

/-! ## A146222.P11500850594609902727

`A273237(C(A274147(n), A252976(n+1)))`
-/

namespace A146222.P11500850594609902727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273237 (Nat.choose (A274147 n).toNat (A252976 (n + 1)).toNat)

end

end A146222.P11500850594609902727

/-!
# A146224: Number of n X n binary arrays with all ones connected only in a 1100-1111 pattern in any orientation.

The programs for A146224, there is no canonical definition to state claims against.
-/

/-! ## A146224.P17246144487208565971

`A146226(2*(n+2))`
-/

namespace A146224.P17246144487208565971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146226 (2 * (n + 2))

end

end A146224.P17246144487208565971

/-! ## A146224.P18080789315713829162

`A146226(A054406(n+1))^A146226(n+1)`
-/

namespace A146224.P18080789315713829162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146226 (A054406 (n + 1)).toNat : ℚ) ^ (A146226 (n + 1) : ℤ)

end

end A146224.P18080789315713829162

/-! ## A146224.P2785770540402576029

`A146226(A186345(n+1))^A146226(n+1)`
-/

namespace A146224.P2785770540402576029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146226 (A186345 (n + 1)).toNat : ℚ) ^ (A146226 (n + 1) : ℤ)

end

end A146224.P2785770540402576029

/-! ## A146224.P4060869410393204772

`A146226(A054406(n+1))/A146226(A146226(n+1)²)`
-/

namespace A146224.P4060869410393204772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146226 (A054406 (n + 1)).toNat : ℚ) / (A146226 (A146226 (n + 1) ^ 2).toNat : ℚ)

end

end A146224.P4060869410393204772

/-!
# A146226: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-1111 pattern in any orientation.

The programs for A146226, there is no canonical definition to state claims against.
-/

/-! ## A146226.P4462972778566144551

`A059319(A056456(n+1))`
-/

namespace A146226.P4462972778566144551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059319 (A056456 (n + 1)).toNat

end

end A146226.P4462972778566144551

/-! ## A146226.P9734264652876293176

`A059319(A056466(n+1))`
-/

namespace A146226.P9734264652876293176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059319 (A056466 (n + 1)).toNat

end

end A146226.P9734264652876293176

/-! ## A146226.P8774201857253584823

`A334894(A146274(n+1))`
-/

namespace A146226.P8774201857253584823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334894 (A146274 (n + 1)).toNat

end

end A146226.P8774201857253584823

/-! ## A146226.P15689944655362667039

`A321620(A084610(3*n+2)+A000073(n))`
-/

namespace A146226.P15689944655362667039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321620 (A084610 (3 * n + 2) + A000073 n).toNat

end

end A146226.P15689944655362667039

/-!
# A146227: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111 pattern in any orientation.

The programs for A146227, there is no canonical definition to state claims against.
-/

/-! ## A146227.P12884710604585986610

`A146229(2*(n+2))`
-/

namespace A146227.P12884710604585986610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146229 (2 * (n + 2))

end

end A146227.P12884710604585986610

/-! ## A146227.P1414830319067530678

`or(1, A146229(A182318(n+1)))`
-/

namespace A146227.P1414830319067530678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146229 (A182318 (n + 1)).toNat)

end

end A146227.P1414830319067530678

/-! ## A146227.P16134722766918870809

`lcm(A146229(n+1), A146229(A182318(n+1)))`
-/

namespace A146227.P16134722766918870809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146229 (n + 1)) (A146229 (A182318 (n + 1)).toNat)

end

end A146227.P16134722766918870809

/-! ## A146227.P12861465104958223516

`A087062(A065850(n+1)+A000108(n))`
-/

namespace A146227.P12861465104958223516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (A065850 (n + 1) + A000108 n).toNat

end

end A146227.P12861465104958223516

/-!
# A146228: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111 pattern in any orientation.

The programs for A146228, there is no canonical definition to state claims against.
-/

/-! ## A146228.P5370825419205556679

`A099258(A068041(n))`
-/

namespace A146228.P5370825419205556679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099258 (A068041 n).toNat

end

end A146228.P5370825419205556679

/-! ## A146228.P15974293900246096211

`A097285(A068041(n)²)`
-/

namespace A146228.P15974293900246096211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A068041 n ^ 2).toNat

end

end A146228.P15974293900246096211

/-! ## A146228.P12412097886713331284

`A287415(A023422(n+1))`
-/

namespace A146228.P12412097886713331284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287415 (A023422 (n + 1)).toNat

end

end A146228.P12412097886713331284

/-! ## A146228.P6324770087354768718

`A336898(A068041(n)+1)`
-/

namespace A146228.P6324770087354768718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 (A068041 n + 1).toNat

end

end A146228.P6324770087354768718

/-! ## A146228.P5511189668012085363

`A287415(A344493(n+1))`
-/

namespace A146228.P5511189668012085363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287415 (A344493 (n + 1)).toNat

end

end A146228.P5511189668012085363

/-!
# A146229: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-1111 pattern in any orientation.

The programs for A146229, there is no canonical definition to state claims against.
-/

/-! ## A146229.P11104444116375552682

`A090929(A146185(n+1))`
-/

namespace A146229.P11104444116375552682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A146185 (n + 1)).toNat

end

end A146229.P11104444116375552682

/-! ## A146229.P4117487461028106144

`A089190(A146068(n+1))`
-/

namespace A146229.P4117487461028106144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089190 (A146068 (n + 1)).toNat

end

end A146229.P4117487461028106144

/-! ## A146229.P9190583387700766361

`A097290(A146458(n+1))`
-/

namespace A146229.P9190583387700766361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097290 (A146458 (n + 1)).toNat

end

end A146229.P9190583387700766361

/-! ## A146229.P5983163020081675089

`A128010(A146474(n+1))`
-/

namespace A146229.P5983163020081675089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128010 (A146474 (n + 1)).toNat

end

end A146229.P5983163020081675089

/-! ## A146229.P11018197002835780958

`A138372(A146237(n+1))`
-/

namespace A146229.P11018197002835780958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138372 (A146237 (n + 1)).toNat

end

end A146229.P11018197002835780958

/-!
# A146230: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1111 pattern in any orientation.

The programs for A146230, there is no canonical definition to state claims against.
-/

/-! ## A146230.P1521152153841838353

`A329453(A081157(n))+1`
-/

namespace A146230.P1521152153841838353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 (A081157 n).toNat + 1

end

end A146230.P1521152153841838353

/-! ## A146230.P13840599283408705759

`A317709(A146184(n+2))`
-/

namespace A146230.P13840599283408705759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (A146184 (n + 2)).toNat

end

end A146230.P13840599283408705759

/-! ## A146230.P2999457390925081664

`or(1, A088434(A048855(n)))`
-/

namespace A146230.P2999457390925081664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A088434 (A048855 n).toNat)

end

end A146230.P2999457390925081664

/-! ## A146230.P1130788892339046408

`A147137(A001104(n+1)+1)`
-/

namespace A146230.P1130788892339046408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147137 (A001104 (n + 1) + 1).toNat

end

end A146230.P1130788892339046408

/-! ## A146230.P13381094304865220827

`A147137(A032555(n+1)+1)`
-/

namespace A146230.P13381094304865220827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147137 (A032555 (n + 1) + 1).toNat

end

end A146230.P13381094304865220827

/-!
# A146231: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1111 pattern in any orientation.

The programs for A146231, there is no canonical definition to state claims against.
-/

/-! ## A146231.P686634993029452343

`A145819(A084386(n))`
-/

namespace A146231.P686634993029452343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145819 (A084386 n).toNat

end

end A146231.P686634993029452343

/-! ## A146231.P7665144341626797611

`A228357(∏[A046682(n)])`
-/

namespace A146231.P7665144341626797611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228357 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146231.P7665144341626797611

/-! ## A146231.P3129567748254683865

`A228357(∏[A321729(n)])`
-/

namespace A146231.P3129567748254683865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228357 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146231.P3129567748254683865

/-!
# A146232: Number of n X n binary arrays with all ones connected only in a 110-111-001 pattern in any orientation.

The programs for A146232, there is no canonical definition to state claims against.
-/

/-! ## A146232.P3578632030727805395

`A146234(2*(n+2))`
-/

namespace A146232.P3578632030727805395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146234 (2 * (n + 2))

end

end A146232.P3578632030727805395

/-! ## A146232.P10688092548099309616

`A146234(A007617(n+1))^A146233(n+1)`
-/

namespace A146232.P10688092548099309616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146234 (A007617 (n + 1)).toNat : ℚ) ^ (A146233 (n + 1) : ℤ)

end

end A146232.P10688092548099309616

/-!
# A146234: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 110-111-001 pattern in any orientation.

The programs for A146234, there is no canonical definition to state claims against.
-/

/-! ## A146234.P1241523354262555799

`A146232(∏{e}[2^floor(n/2), #])`
-/

namespace A146234.P1241523354262555799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146232 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A146234.P1241523354262555799

/-! ## A146234.P12022542157173247481

`A146232(floor(n/2)^floor(atan(n)))`
-/

namespace A146234.P12022542157173247481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146232 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A146234.P12022542157173247481

/-! ## A146234.P8265974393334417717

`A146232(floor(n/2)+C(n, n²))`
-/

namespace A146234.P8265974393334417717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146232 (⌊(n : ℚ) / 2⌋ + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A146234.P8265974393334417717

/-! ## A146234.P14784611773555212778

`A146232(gcd(C(n, n²), floor(n/2)))`
-/

namespace A146234.P14784611773555212778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146232 (Int.gcd (Nat.choose n (n ^ 2) : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A146234.P14784611773555212778

/-! ## A146234.P9093572117765908812

`A146232(or(C(n, n²), floor(n/2)))`
-/

namespace A146234.P9093572117765908812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146232 (Int.lor (Nat.choose n (n ^ 2) : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A146234.P9093572117765908812

/-!
# A146235: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-111-001 pattern in any orientation.

The programs for A146235, there is no canonical definition to state claims against.
-/

/-! ## A146235.P6429640084028693713

`A146237(2*n+3)`
-/

namespace A146235.P6429640084028693713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146237 (2 * n + 3)

end

end A146235.P6429640084028693713

/-! ## A146235.P6053754655546401482

`or(1, A146237(A144396(n+1)))`
-/

namespace A146235.P6053754655546401482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146237 (A144396 (n + 1)).toNat)

end

end A146235.P6053754655546401482

/-! ## A146235.P4611951578162174929

`or(1, A146237(Δ[A347535(n+1)]))`
-/

namespace A146235.P4611951578162174929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146237 (f1 (n + 1) - f1 n).toNat)

end

end A146235.P4611951578162174929

/-! ## A146235.P7521835439203936350

`A146237(A144396(n+1))+A025442(n)`
-/

namespace A146235.P7521835439203936350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146237 (A144396 (n + 1)).toNat + A025442 n

end

end A146235.P7521835439203936350

/-! ## A146235.P3233839110248860246

`A185255(n)+A146237(A144396(n+1))`
-/

namespace A146235.P3233839110248860246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A146237 (A144396 (n + 1)).toNat

end

end A146235.P3233839110248860246

/-!
# A146236: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 110-111-001 pattern in any orientation.

The programs for A146236, there is no canonical definition to state claims against.
-/

/-! ## A146236.P16265046467041181656

`A197344(A237757(n+3)%A093188(n+3))`
-/

namespace A146236.P16265046467041181656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197344 (Int.tmod (A237757 (n + 3)) (A093188 (n + 3))).toNat

end

end A146236.P16265046467041181656

/-! ## A146236.P9277288326968854675

`and(A069131(A334458(n+2)+1), A146379(n+1))`
-/

namespace A146236.P9277288326968854675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069131 (A334458 (n + 2) + 1).toNat) (A146379 (n + 1))

end

end A146236.P9277288326968854675

/-! ## A146236.P4835462493190055688

`and(A047273(A147089(n+1)+1), A147128(2*n+1))`
-/

namespace A146236.P4835462493190055688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047273 (A147089 (n + 1) + 1).toNat) (A147128 (2 * n + 1))

end

end A146236.P4835462493190055688

/-! ## A146236.P3101953961623299717

`A196416(floor((n+1)^(n/5)))`
-/

namespace A146236.P3101953961623299717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 ⌊(n + 1 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋.toNat

end

end A146236.P3101953961623299717

/-! ## A146236.P1288955425592913103

`A260113(A060455(n))`
-/

namespace A146236.P1288955425592913103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (A060455 n).toNat

end

end A146236.P1288955425592913103

/-!
# A146237: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 110-111-001 pattern in any orientation.

The programs for A146237, there is no canonical definition to state claims against.
-/

/-! ## A146237.P8180819246818842432

`A093413(A146068(n+1))`
-/

namespace A146237.P8180819246818842432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A146068 (n + 1)).toNat

end

end A146237.P8180819246818842432

/-! ## A146237.P18310694320965554682

`A156724(A147340(n+1))`
-/

namespace A146237.P18310694320965554682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A147340 (n + 1)).toNat

end

end A146237.P18310694320965554682

/-! ## A146237.P11427430182850623120

`A207873(A147096(n+1))`
-/

namespace A146237.P11427430182850623120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207873 (A147096 (n + 1)).toNat

end

end A146237.P11427430182850623120

/-! ## A146237.P5153981105005724511

`A261017(A146185(n+1))`
-/

namespace A146237.P5153981105005724511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261017 (A146185 (n + 1)).toNat

end

end A146237.P5153981105005724511

/-! ## A146237.P10148732405914863667

`A146876(A329299(n+1)+1)`
-/

namespace A146237.P10148732405914863667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146876 (A329299 (n + 1) + 1).toNat

end

end A146237.P10148732405914863667

/-!
# A146238: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-111-001 pattern in any orientation.

The programs for A146238, there is no canonical definition to state claims against.
-/

/-! ## A146238.P14145657406697583770

`2*A147342(round(2*n/3)+1+n)-1`
-/

namespace A146238.P14145657406697583770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147342 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1 + (n : ℤ)).toNat - 1

end

end A146238.P14145657406697583770

/-! ## A146238.P3575551749587210066

`A136640(A346114(n+2))`
-/

namespace A146238.P3575551749587210066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136640 (A346114 (n + 2)).toNat

end

end A146238.P3575551749587210066

/-! ## A146238.P7387603750276104092

`A326454(or(n, A279786(n)))`
-/

namespace A146238.P7387603750276104092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326454 (Int.lor (n : ℤ) (A279786 n)).toNat

end

end A146238.P7387603750276104092

/-! ## A146238.P14967505095214410927

`2*A060394(A004149(n))-1`
-/

namespace A146238.P14967505095214410927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060394 (A004149 n).toNat - 1

end

end A146238.P14967505095214410927

/-! ## A146238.P5202401282909981973

`2*A060394(A126683(n))-1`
-/

namespace A146238.P5202401282909981973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060394 (A126683 n).toNat - 1

end

end A146238.P5202401282909981973

/-!
# A146239: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 110-111-001 pattern in any orientation.

The programs for A146239, there is no canonical definition to state claims against.
-/

/-! ## A146239.P17190999816796147217

`A346002(a(n-1)+a(n-2)+a(n-3))+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A146239.P17190999816796147217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A346002 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat + 1

end

end A146239.P17190999816796147217

/-! ## A146239.P6195760066747636462

`A317742(A000959(n!))`
-/

namespace A146239.P6195760066747636462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317742 (A000959 (Nat.factorial n)).toNat

end

end A146239.P6195760066747636462

/-!
# A146240: Number of n X n binary arrays with all ones connected only in a 110-111-010 pattern in any orientation.

The programs for A146240, there is no canonical definition to state claims against.
-/

/-! ## A146240.P4681516429530758311

`A146242(A026491(n+1))`
-/

namespace A146240.P4681516429530758311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146242 (A026491 (n + 1)).toNat

end

end A146240.P4681516429530758311

/-! ## A146240.P16790788562062798117

`A146242(A077797(n+1))`
-/

namespace A146240.P16790788562062798117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146242 (A077797 (n + 1)).toNat

end

end A146240.P16790788562062798117

/-! ## A146240.P7256994992740407807

`A146242(A081874(n+1))`
-/

namespace A146240.P7256994992740407807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146242 (A081874 (n + 1)).toNat

end

end A146240.P7256994992740407807

/-! ## A146240.P4832818886790790737

`A146242(A082453(n+1))`
-/

namespace A146240.P4832818886790790737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146242 (A082453 (n + 1)).toNat

end

end A146240.P4832818886790790737

/-! ## A146240.P12811535128550760901

`A146242(A100832(n+1))`
-/

namespace A146240.P12811535128550760901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146242 (A100832 (n + 1)).toNat

end

end A146240.P12811535128550760901

/-!
# A146242: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 110-111-010 pattern in any orientation.

The programs for A146242, there is no canonical definition to state claims against.
-/

/-! ## A146242.P15072096906489077983

`A146240(∏{e}[2^floor(n/2), #])`
-/

namespace A146242.P15072096906489077983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146240 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A146242.P15072096906489077983

/-! ## A146242.P13482146150874261760

`A053615(or(n, 5^floor(n/2)))`
-/

namespace A146242.P13482146150874261760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))).toNat

end

end A146242.P13482146150874261760

/-! ## A146242.P100241081298463466

`A347498(A325859(n))`
-/

namespace A146242.P100241081298463466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347498 (A325859 n).toNat

end

end A146242.P100241081298463466

/-! ## A146242.P12219717214475545059

`A113006(A146065(n+1))`
-/

namespace A146242.P12219717214475545059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (A146065 (n + 1)).toNat

end

end A146242.P12219717214475545059

/-! ## A146242.P2615103813629874664

`A146065(n+1)+A146026(A146068(n+1))`
-/

namespace A146242.P2615103813629874664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146065 (n + 1) + A146026 (A146068 (n + 1)).toNat

end

end A146242.P2615103813629874664

/-!
# A146243: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-111-010 pattern in any orientation.

The programs for A146243, there is no canonical definition to state claims against.
-/

/-! ## A146243.P5618774758840825447

`A146245(2*(n+2))`
-/

namespace A146243.P5618774758840825447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146245 (2 * (n + 2))

end

end A146243.P5618774758840825447

/-! ## A146243.P2626740372084497553

`or(floor(∑[2^n/3]), A140437(2^n))`
-/

namespace A146243.P2626740372084497553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ (A140437 (2 ^ n))

end

end A146243.P2626740372084497553

/-! ## A146243.P10590604041454442263

`A007305(A060146(n+1)+1)`
-/

namespace A146243.P10590604041454442263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A060146 (n + 1) + 1).toNat

end

end A146243.P10590604041454442263

/-!
# A146244: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 110-111-010 pattern in any orientation.

The programs for A146244, there is no canonical definition to state claims against.
-/

/-! ## A146244.P5054046928873041150

`or(A033182(A014742(n)), A271498(n+1))`
-/

namespace A146244.P5054046928873041150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033182 (A014742 n).toNat) (A271498 (n + 1))

end

end A146244.P5054046928873041150

/-! ## A146244.P13994392846625523026

`A353685(A112837(n))`
-/

namespace A146244.P13994392846625523026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353685 (A112837 n).toNat

end

end A146244.P13994392846625523026

/-! ## A146244.P7142980524528215031

`A133512(A191389(n)+1)`
-/

namespace A146244.P7142980524528215031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133512 (A191389 n + 1).toNat

end

end A146244.P7142980524528215031

/-! ## A146244.P218980280351985391

`A325129(A014981(n+1))`
-/

namespace A146244.P218980280351985391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325129 (A014981 (n + 1)).toNat

end

end A146244.P218980280351985391

/-!
# A146245: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 110-111-010 pattern in any orientation.

The programs for A146245, there is no canonical definition to state claims against.
-/

/-! ## A146245.P10080295483336166395

`A146243(gcd(A075059(n)-1, floor(n/2)))`
-/

namespace A146245.P10080295483336166395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146243 (Int.gcd (A075059 n - 1) ⌊(n : ℚ) / 2⌋)

end

end A146245.P10080295483336166395

/-! ## A146245.P11824145610606103288

`A146243(A123108(n)+A019590(n+1))`
-/

namespace A146245.P11824145610606103288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146243 (A123108 n + A019590 (n + 1)).toNat

end

end A146245.P11824145610606103288

/-! ## A146245.P12728012477924561436

`A146243(gcd(A025560(n+1), A123108(n)))`
-/

namespace A146245.P12728012477924561436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146243 (Int.gcd (A025560 (n + 1)) (A123108 n))

end

end A146245.P12728012477924561436

/-!
# A146246: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-111-010 pattern in any orientation.

The programs for A146246, there is no canonical definition to state claims against.
-/

/-! ## A146246.P11514423820403255578

`A046074(A178579(n+1)+A118871(n))`
-/

namespace A146246.P11514423820403255578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A178579 (n + 1) + A118871 n).toNat

end

end A146246.P11514423820403255578

/-! ## A146246.P7220751365590020010

`A300362(A192921(n))`
-/

namespace A146246.P7220751365590020010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A192921 n).toNat

end

end A146246.P7220751365590020010

/-! ## A146246.P17452520377031972267

`A366522(A148961(n))`
-/

namespace A146246.P17452520377031972267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366522 (A148961 n).toNat

end

end A146246.P17452520377031972267

/-! ## A146246.P15759402041526877323

`A110338(A146624(n+1))`
-/

namespace A146246.P15759402041526877323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110338 (A146624 (n + 1)).toNat

end

end A146246.P15759402041526877323

/-! ## A146246.P16307568370306784723

`A358612(A126683(n+1))`
-/

namespace A146246.P16307568370306784723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358612 (A126683 (n + 1)).toNat

end

end A146246.P16307568370306784723

/-!
# A146247: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 110-111-010 pattern in any orientation.

The programs for A146247, there is no canonical definition to state claims against.
-/

/-! ## A146247.P4732525902202237010

`A037203(xor(A005809(n)/(2*n+1), A074400(n+1)))`
-/

namespace A146247.P4732525902202237010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (Int.xor (SequenceMachineLib.roundAway ((A005809 n : ℚ) / (2 * n + 1 : ℚ))) (A074400 (n + 1))).toNat

end

end A146247.P4732525902202237010

/-!
# A146248: Number of n X n binary arrays with all ones connected only in a 110-111-011 pattern in any orientation.

The programs for A146248, there is no canonical definition to state claims against.
-/

/-! ## A146248.P12361705620171710726

`A146250(2*(n+2))`
-/

namespace A146248.P12361705620171710726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146250 (2 * (n + 2))

end

end A146248.P12361705620171710726

/-! ## A146248.P7835171820728742104

`A146250(A004277(n+2))%A097374(n+1)`
-/

namespace A146248.P7835171820728742104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146250 (A004277 (n + 2)).toNat) (A097374 (n + 1))

end

end A146248.P7835171820728742104

/-! ## A146248.P3103970123619457598

`A026741(A146250(comp[(n-1)^(n%2)]))`
-/

namespace A146248.P3103970123619457598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A146250 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A146248.P3103970123619457598

/-!
# A146249: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 110-111-011 pattern in any orientation.

The programs for A146249, there is no canonical definition to state claims against.
-/

/-! ## A146249.P12826265243169408947

`A208239(A208220(n)*A208280(n))`
-/

namespace A146249.P12826265243169408947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208239 (A208220 n * A208280 n).toNat

end

end A146249.P12826265243169408947

/-! ## A146249.P6419518263913882459

`A201162(∪[A029874(n), A029907(n)])`
-/

namespace A146249.P6419518263913882459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201162 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A146249.P6419518263913882459

/-! ## A146249.P9187110822789401761

`A193592(lcm(A056884(n+1), A056902(n)))`
-/

namespace A146249.P9187110822789401761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.lcm (A056884 (n + 1)) (A056902 n))

end

end A146249.P9187110822789401761

/-! ## A146249.P13613361551319926949

`A030777(xor(A016885(2*(n+2)), A317408(n)))`
-/

namespace A146249.P13613361551319926949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (Int.xor (A016885 (2 * (n + 2))) (A317408 n)).toNat

end

end A146249.P13613361551319926949

/-!
# A146250: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 110-111-011 pattern in any orientation.

The programs for A146250, there is no canonical definition to state claims against.
-/

/-! ## A146250.P3586283869894686605

`A146248(floor(n/2)^floor(atan(n)))`
-/

namespace A146250.P3586283869894686605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146248 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A146250.P3586283869894686605

/-! ## A146250.P4621176164519129976

`A146248(A051715(C(floor(n/2), 2)))`
-/

namespace A146250.P4621176164519129976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146248 (A051715 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2)).toNat

end

end A146250.P4621176164519129976

/-! ## A146250.P18152105394074515734

`A347624(A146035(n+1))`
-/

namespace A146250.P18152105394074515734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A146035 (n + 1)).toNat

end

end A146250.P18152105394074515734

/-! ## A146250.P8977156383192702059

`A146911(A077168(n)+2)`
-/

namespace A146250.P8977156383192702059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146911 (A077168 n + 2).toNat

end

end A146250.P8977156383192702059

/-! ## A146250.P2116343672058190144

`A078705(A146471(n+3))`
-/

namespace A146250.P2116343672058190144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A146471 (n + 3)).toNat

end

end A146250.P2116343672058190144

/-!
# A146251: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-111-011 pattern in any orientation.

The programs for A146251, there is no canonical definition to state claims against.
-/

/-! ## A146251.P18295401299783117031

`A146253(2*(n+2))`
-/

namespace A146251.P18295401299783117031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146253 (2 * (n + 2))

end

end A146251.P18295401299783117031

/-! ## A146251.P8511624330344405197

`or(1, A146253(A144396(n+1)))`
-/

namespace A146251.P8511624330344405197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146253 (A144396 (n + 1)).toNat)

end

end A146251.P8511624330344405197

/-! ## A146251.P16191882006222525816

`lcm(A087960(n), A146253(A144396(n+1)))`
-/

namespace A146251.P16191882006222525816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A146253 (A144396 (n + 1)).toNat)

end

end A146251.P16191882006222525816

/-! ## A146251.P3721406437935336845

`A146253(A144396(n+1))%A204860(n+1)`
-/

namespace A146251.P3721406437935336845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146253 (A144396 (n + 1)).toNat) (A204860 (n + 1))

end

end A146251.P3721406437935336845

/-!
# A146252: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 110-111-011 pattern in any orientation.

The programs for A146252, there is no canonical definition to state claims against.
-/

/-! ## A146252.P4672564564057935861

`A189891(A146913(n+2))`
-/

namespace A146252.P4672564564057935861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189891 (A146913 (n + 2)).toNat

end

end A146252.P4672564564057935861

/-! ## A146252.P11365392731854668526

`or(A128731(n), A128735(A034349(n+1)))`
-/

namespace A146252.P11365392731854668526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128731 n) (A128735 (A034349 (n + 1)).toNat)

end

end A146252.P11365392731854668526

/-!
# A146253: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 110-111-011 pattern in any orientation.

The programs for A146253, there is no canonical definition to state claims against.
-/

/-! ## A146253.P5103049290917890715

`A146251(floor(n/2)^floor(atan(n)))`
-/

namespace A146253.P5103049290917890715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146251 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A146253.P5103049290917890715

/-! ## A146253.P38410946387071432

`A146251(gcd(A075059(n)-1, floor(n/2)))`
-/

namespace A146253.P38410946387071432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146251 (Int.gcd (A075059 n - 1) ⌊(n : ℚ) / 2⌋)

end

end A146253.P38410946387071432

/-! ## A146253.P11504053158209727229

`A146251(A123108(2*A123108(n)))`
-/

namespace A146253.P11504053158209727229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146251 (A123108 (2 * A123108 n).toNat).toNat

end

end A146253.P11504053158209727229

/-! ## A146253.P1975105267197998673

`A146251(gcd(A000142(n), A004526(n)))`
-/

namespace A146253.P1975105267197998673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146251 (Int.gcd (A000142 n) (A004526 n))

end

end A146253.P1975105267197998673

/-! ## A146253.P14343539519631487577

`A146251(or(A004526(n), A036987(n)))`
-/

namespace A146253.P14343539519631487577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146251 (Int.lor (A004526 n) (A036987 n)).toNat

end

end A146253.P14343539519631487577

/-!
# A146254: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-111-011 pattern in any orientation.

The programs for A146254, there is no canonical definition to state claims against.
-/

/-! ## A146254.P18272315700318367409

`A374435(A036969(n+1))+A326548(3*n)`
-/

namespace A146254.P18272315700318367409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374435 (A036969 (n + 1)).toNat + A326548 (3 * n)

end

end A146254.P18272315700318367409

/-! ## A146254.P5328821675663814616

`or(A147041(n+1), A327704(A147041(n+2)))`
-/

namespace A146254.P5328821675663814616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147041 (n + 1)) (A327704 (A147041 (n + 2)).toNat)

end

end A146254.P5328821675663814616

/-!
# A146256: Number of n X n binary arrays with all ones connected only in a 110-111-101 pattern in any orientation.

The programs for A146256, there is no canonical definition to state claims against.
-/

/-! ## A146256.P10387875091246664843

`A146258(2*(n+2))`
-/

namespace A146256.P10387875091246664843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146258 (2 * (n + 2))

end

end A146256.P10387875091246664843

/-! ## A146256.P15999439315535930336

`or(1, A146258(A257586(n+1)))`
-/

namespace A146256.P15999439315535930336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146258 (A257586 (n + 1)).toNat)

end

end A146256.P15999439315535930336

/-! ## A146256.P7225754425554685481

`or(1, A146258(A005843(n+2)))`
-/

namespace A146256.P7225754425554685481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146258 (A005843 (n + 2)).toNat)

end

end A146256.P7225754425554685481

/-! ## A146256.P6786734886389292435

`A146258(A005843(n+2))+A035585(n)`
-/

namespace A146256.P6786734886389292435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146258 (A005843 (n + 2)).toNat + A035585 n

end

end A146256.P6786734886389292435

/-! ## A146256.P8517048726603466948

`A146258(A005843(n+2))^A178489(n)`
-/

namespace A146256.P8517048726603466948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146258 (A005843 (n + 2)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A146256.P8517048726603466948

/-!
# A146257: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 110-111-101 pattern in any orientation.

The programs for A146257, there is no canonical definition to state claims against.
-/

/-! ## A146257.P12343128336428870927

`A066657((∑[C(n, 3)+n]+1)*C(n, 4))`
-/

namespace A146257.P12343128336428870927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.choose n 4)

end

end A146257.P12343128336428870927

/-! ## A146257.P16388867913706142122

`A077028(A241318(n²+n))`
-/

namespace A146257.P16388867913706142122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A241318 (n ^ 2 + n)).toNat

end

end A146257.P16388867913706142122

/-! ## A146257.P16828800687524738983

`A066657((∑[C(n, 3)+n]+1)*A000332(n))`
-/

namespace A146257.P16828800687524738983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A000332 n).toNat

end

end A146257.P16828800687524738983

/-! ## A146257.P8443314176111155454

`A259575(A052762(n)+A000111(n))`
-/

namespace A146257.P8443314176111155454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259575 (A052762 n + A000111 n).toNat

end

end A146257.P8443314176111155454

/-!
# A146258: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 110-111-101 pattern in any orientation.

The programs for A146258, there is no canonical definition to state claims against.
-/

/-! ## A146258.P2550880264489226470

`A146256(floor(n/2)^floor(atan(n)))`
-/

namespace A146258.P2550880264489226470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146256 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A146258.P2550880264489226470

/-! ## A146258.P4866567053442233162

`A241263(A146250(n+1))`
-/

namespace A146258.P4866567053442233162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241263 (A146250 (n + 1)).toNat

end

end A146258.P4866567053442233162

/-! ## A146258.P4041448109011375495

`A160416(A309686(n))+1`
-/

namespace A146258.P4041448109011375495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160416 (A309686 n).toNat + 1

end

end A146258.P4041448109011375495

/-! ## A146258.P721723887204046318

`A146825(A004186(n)+3)`
-/

namespace A146258.P721723887204046318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146825 (A004186 n + 3).toNat

end

end A146258.P721723887204046318

/-! ## A146258.P793442295317400792

`filter[A146825(n+3), A014577(#)]`
-/

namespace A146258.P793442295317400792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146825 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A146258.P793442295317400792

/-!
# A146259: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-111-101 pattern in any orientation.

The programs for A146259, there is no canonical definition to state claims against.
-/

/-! ## A146259.P9577085423377632740

`A146261(2*n+3)`
-/

namespace A146259.P9577085423377632740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146261 (2 * n + 3)

end

end A146259.P9577085423377632740

/-! ## A146259.P9392775238307182590

`or(1, A146261(A144396(n+1)))`
-/

namespace A146259.P9392775238307182590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146261 (A144396 (n + 1)).toNat)

end

end A146259.P9392775238307182590

/-! ## A146259.P17978799363368672928

`∏{d}[A144396(n+1), A146261(#)]`
-/

namespace A146259.P17978799363368672928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146261 d

end

end A146259.P17978799363368672928

/-! ## A146259.P6113563424128138307

`gcd(A146261(A144396(n+1)), A151909(n))`
-/

namespace A146259.P6113563424128138307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146261 (A144396 (n + 1)).toNat) (A151909 n)

end

end A146259.P6113563424128138307

/-! ## A146259.P10503341956478286571

`A146261(A144396(n+1))/A147032(n+1)`
-/

namespace A146259.P10503341956478286571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146261 (A144396 (n + 1)).toNat : ℚ) / (A147032 (n + 1) : ℚ)

end

end A146259.P10503341956478286571

/-!
# A146261: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 110-111-101 pattern in any orientation.

The programs for A146261, there is no canonical definition to state claims against.
-/

/-! ## A146261.P4820083221013433893

`filter[A147032(n+3), A008966(#)]`
-/

namespace A146261.P4820083221013433893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147032 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A146261.P4820083221013433893

/-! ## A146261.P6054711226030908791

`filter[A147032(n+3), A030308(#)]`
-/

namespace A146261.P6054711226030908791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147032 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030308 (f1 j).toNat = 1) n)

end

end A146261.P6054711226030908791

/-! ## A146261.P14619176364501035035

`filter[A147032(n+3), A030317(#)]`
-/

namespace A146261.P14619176364501035035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147032 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030317 (f1 j).toNat = 1) n)

end

end A146261.P14619176364501035035

/-! ## A146261.P10539777886211088923

`filter[A147032(n+3), A030658(#)]`
-/

namespace A146261.P10539777886211088923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147032 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030658 (f1 j).toNat = 1) n)

end

end A146261.P10539777886211088923

/-! ## A146261.P12269057208176402237

`filter[A147032(n+3), A039983(#)]`
-/

namespace A146261.P12269057208176402237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147032 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039983 (f1 j).toNat = 1) n)

end

end A146261.P12269057208176402237

/-!
# A146262: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-111-101 pattern in any orientation.

The programs for A146262, there is no canonical definition to state claims against.
-/

/-! ## A146262.P862094445216575206

`A294748(A146278(n+1))`
-/

namespace A146262.P862094445216575206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A146278 (n + 1)).toNat

end

end A146262.P862094445216575206

/-! ## A146262.P17769970688029767302

`A353991(A271955(3*n+1))-3`
-/

namespace A146262.P17769970688029767302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353991 (A271955 (3 * n + 1)).toNat - 3

end

end A146262.P17769970688029767302

/-! ## A146262.P8144161643330918597

`A032568(A283513(n+1))`
-/

namespace A146262.P8144161643330918597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A283513 (n + 1)).toNat

end

end A146262.P8144161643330918597

/-! ## A146262.P12964550241270094167

`A170885(A332833(n))+1`
-/

namespace A146262.P12964550241270094167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170885 (A332833 n).toNat + 1

end

end A146262.P12964550241270094167

/-! ## A146262.P13573086506504917150

`or(1, A193592(A099623(n)))`
-/

namespace A146262.P13573086506504917150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193592 (A099623 n).toNat)

end

end A146262.P13573086506504917150

/-!
# A146263: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 110-111-101 pattern in any orientation.

The programs for A146263, there is no canonical definition to state claims against.
-/

/-! ## A146263.P11627849915921545922

`A002487((C(n, 2)-n)^4+1)`
-/

namespace A146263.P11627849915921545922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (((Nat.choose n 2 : ℤ) - (n : ℤ)) ^ 4 + 1).toNat

end

end A146263.P11627849915921545922

/-! ## A146263.P719985785653772881

`A002487((C(n, 2)-n)²²+1)`
-/

namespace A146263.P719985785653772881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((((Nat.choose n 2 : ℤ) - (n : ℤ)) ^ 2) ^ 2 + 1).toNat

end

end A146263.P719985785653772881

/-! ## A146263.P5009660026025785034

`A002487((∑[n-2]+2)²²+1)`
-/

namespace A146263.P5009660026025785034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (((∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2) ^ 2 + 1).toNat

end

end A146263.P5009660026025785034

/-!
# A146264: Number of n X n binary arrays with all ones connected only in a 110-111-110 pattern in any orientation.

The programs for A146264, there is no canonical definition to state claims against.
-/

/-! ## A146264.P16214543244516436789

`A146266(2*(n+2))`
-/

namespace A146264.P16214543244516436789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146266 (2 * (n + 2))

end

end A146264.P16214543244516436789

/-! ## A146264.P7718320672345526232

`A097538(A128055(n))`
-/

namespace A146264.P7718320672345526232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097538 (A128055 n).toNat

end

end A146264.P7718320672345526232

/-!
# A146265: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 110-111-110 pattern in any orientation.

The programs for A146265, there is no canonical definition to state claims against.
-/

/-! ## A146265.P12899649550381619616

`A070039(A166990(n)+1)`
-/

namespace A146265.P12899649550381619616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (A166990 n + 1).toNat

end

end A146265.P12899649550381619616

/-! ## A146265.P7219205190182815739

`A003557(A296227(n)+1)`
-/

namespace A146265.P7219205190182815739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A296227 n + 1).toNat

end

end A146265.P7219205190182815739

/-! ## A146265.P16435463623762408715

`A242409(A180733(n+2))`
-/

namespace A146265.P16435463623762408715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242409 (A180733 (n + 2)).toNat

end

end A146265.P16435463623762408715

/-!
# A146267: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-111-110 pattern in any orientation.

The programs for A146267, there is no canonical definition to state claims against.
-/

/-! ## A146267.P2580674437791401171

`A146269(2*(n+2))`
-/

namespace A146267.P2580674437791401171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146269 (2 * (n + 2))

end

end A146267.P2580674437791401171

/-!
# A146268: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 110-111-110 pattern in any orientation.

The programs for A146268, there is no canonical definition to state claims against.
-/

/-! ## A146268.P10949738001629753220

`A302496(A146921(n+2))`
-/

namespace A146268.P10949738001629753220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (A146921 (n + 2)).toNat

end

end A146268.P10949738001629753220

/-!
# A146270: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-111-110 pattern in any orientation.

The programs for A146270, there is no canonical definition to state claims against.
-/

/-! ## A146270.P8631457318517298604

`and(A004449(A146233(n+1)), A146222(n+1))`
-/

namespace A146270.P8631457318517298604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004449 (A146233 (n + 1)).toNat) (A146222 (n + 1))

end

end A146270.P8631457318517298604

/-! ## A146270.P5146062988823102205

`and(A007931(A146223(n+1)), A146222(n+1))`
-/

namespace A146270.P5146062988823102205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007931 (A146223 (n + 1)).toNat) (A146222 (n + 1))

end

end A146270.P5146062988823102205

/-! ## A146270.P16874485725317730035

`and(A146222(A085908(n+1)), A255622(n+1))`
-/

namespace A146270.P16874485725317730035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146222 (A085908 (n + 1)).toNat) (A255622 (n + 1))

end

end A146270.P16874485725317730035

/-!
# A146271: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 110-111-110 pattern in any orientation.

The programs for A146271, there is no canonical definition to state claims against.
-/

/-! ## A146271.P16831643831747554341

`A063987(A192744(n)-A309656(n+4))`
-/

namespace A146271.P16831643831747554341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063987 (A192744 n - A309656 (n + 4)).toNat

end

end A146271.P16831643831747554341

/-!
# A146272: Number of n X n binary arrays with all ones connected only in a 110-111-111 pattern in any orientation.

The programs for A146272, there is no canonical definition to state claims against.
-/

/-! ## A146272.P15255681801502317742

`A146274(2*n+3)`
-/

namespace A146272.P15255681801502317742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146274 (2 * n + 3)

end

end A146272.P15255681801502317742

/-! ## A146272.P930725437182696620

`gcd(A000038(n), A146274(A005408(n+1)))`
-/

namespace A146272.P930725437182696620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A146274 (A005408 (n + 1)).toNat)

end

end A146272.P930725437182696620

/-! ## A146272.P5568043893200980317

`A146274(A005408(n+1))+A000038(n+1)`
-/

namespace A146272.P5568043893200980317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146274 (A005408 (n + 1)).toNat + A000038 (n + 1)

end

end A146272.P5568043893200980317

/-! ## A146272.P11981455448914150510

`A146274(A005408(n+1))%A000169(n+2)`
-/

namespace A146272.P11981455448914150510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146274 (A005408 (n + 1)).toNat) (A000169 (n + 2))

end

end A146272.P11981455448914150510

/-!
# A146274: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 110-111-111 pattern in any orientation.

The programs for A146274, there is no canonical definition to state claims against.
-/

/-! ## A146274.P3814437011759098250

`A146272(∏{e}[2^floor(n/2), #])`
-/

namespace A146274.P3814437011759098250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146272 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A146274.P3814437011759098250

/-! ## A146274.P9720996153652336946

`and(A135631(A146234(n+1)), A146242(n+1))`
-/

namespace A146274.P9720996153652336946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135631 (A146234 (n + 1)).toNat) (A146242 (n + 1))

end

end A146274.P9720996153652336946

/-! ## A146274.P781998625591216055

`floor(root(A139019(n+3), 10))`
-/

namespace A146274.P781998625591216055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139019 (n + 3) : ℝ) ^ (1 / (10 : ℝ))⌋

end

end A146274.P781998625591216055

/-! ## A146274.P853096629153585816

`A038124(A146250(n+1))`
-/

namespace A146274.P853096629153585816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (A146250 (n + 1)).toNat

end

end A146274.P853096629153585816

/-! ## A146274.P14096383570167726670

`A111622(A146035(n+1))`
-/

namespace A146274.P14096383570167726670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111622 (A146035 (n + 1)).toNat

end

end A146274.P14096383570167726670

/-!
# A146275: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-111-111 pattern in any orientation.

The programs for A146275, there is no canonical definition to state claims against.
-/

/-! ## A146275.P16963804566528288929

`A146277(2*n+3)`
-/

namespace A146275.P16963804566528288929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146277 (2 * n + 3)

end

end A146275.P16963804566528288929

/-! ## A146275.P10938936927643195329

`or(1, A146277(A004273(n+2)))`
-/

namespace A146275.P10938936927643195329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146277 (A004273 (n + 2)).toNat)

end

end A146275.P10938936927643195329

/-! ## A146275.P2425053674999897065

`lcm(A020985(n), A146277(A004273(n+2)))`
-/

namespace A146275.P2425053674999897065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A146277 (A004273 (n + 2)).toNat)

end

end A146275.P2425053674999897065

/-! ## A146275.P4624194875698514155

`A178333(n+2)+A146277(A004273(n+2))`
-/

namespace A146275.P4624194875698514155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (n + 2) + A146277 (A004273 (n + 2)).toNat

end

end A146275.P4624194875698514155

/-! ## A146275.P10797741143243503985

`or(A146261(n+1), A146277(A004275(n+3)))`
-/

namespace A146275.P10797741143243503985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146261 (n + 1)) (A146277 (A004275 (n + 3)).toNat)

end

end A146275.P10797741143243503985

/-!
# A146276: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 110-111-111 pattern in any orientation.

The programs for A146276, there is no canonical definition to state claims against.
-/

/-! ## A146276.P4242707838149935564

`or(A000200(n), A038124(A036653(n)))`
-/

namespace A146276.P4242707838149935564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000200 n) (A038124 (A036653 n).toNat)

end

end A146276.P4242707838149935564

/-! ## A146276.P13792260050932841824

`or(A106801(A118330(n)), A122584(n+1))`
-/

namespace A146276.P13792260050932841824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106801 (A118330 n).toNat) (A122584 (n + 1))

end

end A146276.P13792260050932841824

/-! ## A146276.P2998305139018058389

`A101435(A026768(n))`
-/

namespace A146276.P2998305139018058389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A026768 n).toNat

end

end A146276.P2998305139018058389

/-! ## A146276.P4921648219100557950

`A102451(A068013(n))`
-/

namespace A146276.P4921648219100557950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102451 (A068013 n).toNat

end

end A146276.P4921648219100557950

/-! ## A146276.P9955411206484744500

`A101435(A217615(n))`
-/

namespace A146276.P9955411206484744500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A217615 n).toNat

end

end A146276.P9955411206484744500

/-!
# A146277: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 110-111-111 pattern in any orientation.

The programs for A146277, there is no canonical definition to state claims against.
-/

/-! ## A146277.P9234304347061719153

`A146275(floor(log2(A136417(n))))`
-/

namespace A146277.P9234304347061719153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146275 (Nat.log 2 (A136417 n).toNat)

end

end A146277.P9234304347061719153

/-! ## A146277.P7920099160850366011

`A146275(A028310(floor(n/2)))`
-/

namespace A146277.P7920099160850366011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146275 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146277.P7920099160850366011

/-! ## A146277.P11228385367334836679

`A146275(A220658(p?[floor(n/2)]))`
-/

namespace A146277.P11228385367334836679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146275 (A220658 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A146277.P11228385367334836679

/-! ## A146277.P14796839336680944937

`A146275(∑[char[A163300(n+1)]])`
-/

namespace A146277.P14796839336680944937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146277.P14796839336680944937

/-! ## A146277.P5503994730186841504

`A146275(A233583(∑[and(1, n+1)]))`
-/

namespace A146277.P5503994730186841504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146275 (A233583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A146277.P5503994730186841504

/-!
# A146278: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-111-111 pattern in any orientation.

The programs for A146278, there is no canonical definition to state claims against.
-/

/-! ## A146278.P17428081807455057676

`A345965(A147374(n+2))`
-/

namespace A146278.P17428081807455057676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345965 (A147374 (n + 2)).toNat

end

end A146278.P17428081807455057676

/-! ## A146278.P15066518043892467771

`∑[2*A174709(n)*∑{e}[A097204(n)+1, #]]+1`
-/

namespace A146278.P15066518043892467771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097204 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 n * ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A146278.P15066518043892467771

/-! ## A146278.P13435410397248021434

`A028234(A225394(2*(n+1)))%A048448(n)`
-/

namespace A146278.P13435410397248021434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (A225394 (2 * (n + 1))).toNat) (A048448 n)

end

end A146278.P13435410397248021434

/-! ## A146278.P381075260500359003

`or(A112395(2*n+1), A138707(A253776(n+1)))`
-/

namespace A146278.P381075260500359003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112395 (2 * n + 1)) (A138707 (A253776 (n + 1)).toNat)

end

end A146278.P381075260500359003

/-! ## A146278.P16981973605133784911

`or(A112395(2*n+1), A168184(A023426(2*n)))`
-/

namespace A146278.P16981973605133784911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112395 (2 * n + 1)) (A168184 (A023426 (2 * n)).toNat)

end

end A146278.P16981973605133784911

/-!
# A146279: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 110-111-111 pattern in any orientation.

The programs for A146279, there is no canonical definition to state claims against.
-/

/-! ## A146279.P10469476650598378780

`floor(log(A208208(n)))+1`
-/

namespace A146279.P10469476650598378780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A208208 n : ℝ)⌋ + 1

end

end A146279.P10469476650598378780

/-! ## A146279.P15235574342376437536

`A335075(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A146279.P15235574342376437536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 3] fun n a =>
  A335075 (a (n - 1) + a (n - 3)).toNat

end

end A146279.P15235574342376437536

/-! ## A146279.P14728956059721539640

`A329629(A287213(∑[n]))`
-/

namespace A146279.P14728956059721539640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (A287213 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A146279.P14728956059721539640

/-! ## A146279.P4934106902851728730

`or(1, A254011(A059278(n)))`
-/

namespace A146279.P4934106902851728730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A254011 (A059278 n).toNat)

end

end A146279.P4934106902851728730

/-!
# A146280: Number of n X n binary arrays with all ones connected only in a 111-110-111 pattern in any orientation.

The programs for A146280, there is no canonical definition to state claims against.
-/

/-! ## A146280.P6306407468840490822

`A146282(2*(n+2))`
-/

namespace A146280.P6306407468840490822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146282 (2 * (n + 2))

end

end A146280.P6306407468840490822

/-! ## A146280.P7455819722540249514

`A325395((floor(∑[n/3])+1)²)`
-/

namespace A146280.P7455819722540249514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 ((⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1) ^ 2).toNat

end

end A146280.P7455819722540249514

/-!
# A146283: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 111-110-111 pattern in any orientation.

The programs for A146283, there is no canonical definition to state claims against.
-/

/-! ## A146283.P4729098091570854047

`A146285(2*(n+2))`
-/

namespace A146283.P4729098091570854047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146285 (2 * (n + 2))

end

end A146283.P4729098091570854047

/-! ## A146283.P1739083920382894820

`or(1, A146285(A193175(n+1)))`
-/

namespace A146283.P1739083920382894820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146285 (A193175 (n + 1)).toNat)

end

end A146283.P1739083920382894820

/-! ## A146283.P16388914651204363357

`A146285(A193175(n+1))%A001348(n+1)`
-/

namespace A146283.P16388914651204363357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146285 (A193175 (n + 1)).toNat) (A001348 (n + 1))

end

end A146283.P16388914651204363357

/-! ## A146283.P7747012428567471762

`A146285(A193175(n+1))/A007318(C(2, n))`
-/

namespace A146283.P7747012428567471762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146285 (A193175 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A146283.P7747012428567471762

/-! ## A146283.P8611842349217313299

`A146285(A193175(n+1))^A014963(∑[n+1])`
-/

namespace A146283.P8611842349217313299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146285 (A193175 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A146283.P8611842349217313299

/-!
# A146286: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 111-110-111 pattern in any orientation.

The programs for A146286, there is no canonical definition to state claims against.
-/

/-! ## A146286.P2208494711011044335

`A053615(A072881(n+1))`
-/

namespace A146286.P2208494711011044335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A072881 (n + 1)).toNat

end

end A146286.P2208494711011044335

/-! ## A146286.P3171825779342319731

`A088861(A146278(n+1))`
-/

namespace A146286.P3171825779342319731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088861 (A146278 (n + 1)).toNat

end

end A146286.P3171825779342319731

/-! ## A146286.P12374376271694878695

`A254068(A325553(n+1))`
-/

namespace A146286.P12374376271694878695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254068 (A325553 (n + 1)).toNat

end

end A146286.P12374376271694878695

/-! ## A146286.P2638437632995356969

`A194697(A350504(n))-3`
-/

namespace A146286.P2638437632995356969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194697 (A350504 n).toNat - 3

end

end A146286.P2638437632995356969

/-! ## A146286.P13036051071232241136

`or(1, A282289(A342528(n)))`
-/

namespace A146286.P13036051071232241136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A282289 (A342528 n).toNat)

end

end A146286.P13036051071232241136

/-!
# A146287: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 111-110-111 pattern in any orientation.

The programs for A146287, there is no canonical definition to state claims against.
-/

/-! ## A146287.P7265383163467109326

`A094525(A080889(n))`
-/

namespace A146287.P7265383163467109326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (A080889 n).toNat

end

end A146287.P7265383163467109326

/-! ## A146287.P5499208076185052561

`A094525(A224364(n))`
-/

namespace A146287.P5499208076185052561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (A224364 n).toNat

end

end A146287.P5499208076185052561

/-! ## A146287.P11394358201731884872

`A094525(A227363(n))`
-/

namespace A146287.P11394358201731884872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (A227363 n).toNat

end

end A146287.P11394358201731884872

/-! ## A146287.P17603624252386468004

`A094525(A334954(n!))`
-/

namespace A146287.P17603624252386468004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (A334954 (Nat.factorial n)).toNat

end

end A146287.P17603624252386468004

/-!
# A146288: Number of divisors of the n-th prime signature number (A025487(n)).

The programs for A146288, there is no canonical definition to state claims against.
-/

/-! ## A146288.P9228751365966139900

`A000005(A025487(n+1))`
-/

namespace A146288.P9228751365966139900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025487 (n + 1)).toNat

end

end A146288.P9228751365966139900

/-! ## A146288.P7304173183482333171

`A064553(A181820(n+1))`
-/

namespace A146288.P7304173183482333171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A181820 (n + 1)).toNat

end

end A146288.P7304173183482333171

/-! ## A146288.P6003369212296917486

`∏{e}[record[A329899(n+1)], #+1]`
-/

namespace A146288.P6003369212296917486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A146288.P6003369212296917486

/-! ## A146288.P13108448640646158535

`∏{e}[record[A051466(n+2)], #+1]`
-/

namespace A146288.P13108448640646158535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A146288.P13108448640646158535

/-! ## A146288.P14997000909253130672

`∏{e}[A051466(A329898(n+1)), #+1]`
-/

namespace A146288.P14997000909253130672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A146288.P14997000909253130672

/-! ## A146288.P3256404641619078333

`∏{e}[A055932(A331119(n+1)), #+1]`
-/

namespace A146288.P3256404641619078333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A146288.P3256404641619078333

/-! ## A146288.P257270850225150887

`∑{d}[A025487(n+1), A000010(A025487(n+1)%#+1)]`
-/

namespace A146288.P257270850225150887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (Int.tmod (A025487 (n + 1)) (d : ℤ) + 1).toNat

end

end A146288.P257270850225150887

/-! ## A146288.P16984350323480069999

`∏{e}[A329899(A330683(n+1)), #+1]`
-/

namespace A146288.P16984350323480069999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A146288.P16984350323480069999

/-! ## A146288.P3145383465950213594

`A000005(record[A329899(n+1)])`
-/

namespace A146288.P3145383465950213594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146288.P3145383465950213594

/-! ## A146288.P2213774879310290918

`A000005(record[A051466(n+2)])`
-/

namespace A146288.P2213774879310290918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146288.P2213774879310290918

/-! ## A146288.P11645260599128752003

`A000005(A051466(A329898(n+1)))`
-/

namespace A146288.P11645260599128752003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051466 (A329898 (n + 1)).toNat).toNat

end

end A146288.P11645260599128752003

/-! ## A146288.P11900494047486481160

`A000005(A055932(A331119(n+1)))`
-/

namespace A146288.P11900494047486481160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055932 (A331119 (n + 1)).toNat).toNat

end

end A146288.P11900494047486481160

/-! ## A146288.P1832497514848679940

`A000005(record[A328479(n+1)])`
-/

namespace A146288.P1832497514848679940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A146288.P1832497514848679940

/-! ## A146288.P17094407478147948596

`A000005(A329887(A329905(n+1)))`
-/

namespace A146288.P17094407478147948596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329887 (A329905 (n + 1)).toNat).toNat

end

end A146288.P17094407478147948596

/-!
# A146289: Triangle T(n,m) read by rows (n >= 1, 0 <= m <= A001221(n)), giving the number of divisors of n with m distinct prime factors.

The programs for A146289, there is no canonical definition to state claims against.
-/

/-! ## A146289.P10519505515874299295

`and(A072931(n+4), A329597(2*n+1))+1`
-/

namespace A146289.P10519505515874299295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072931 (n + 4)) (A329597 (2 * n + 1)) + 1

end

end A146289.P10519505515874299295

/-! ## A146289.P4444321753251491444

`A334607(n+2)-A045698(A051128(2*(n+1)))`
-/

namespace A146289.P4444321753251491444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334607 (n + 2) - A045698 (A051128 (2 * (n + 1))).toNat

end

end A146289.P4444321753251491444

/-! ## A146289.P6850440787701722937

`A001222(or(9, p?[A039924(n)]))`
-/

namespace A146289.P6850440787701722937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 9 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A146289.P6850440787701722937

/-! ## A146289.P9218939658771353128

`A382460(and(A057059(n+1), A337833(n)))`
-/

namespace A146289.P9218939658771353128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382460 (Int.land (A057059 (n + 1)) (A337833 n)).toNat

end

end A146289.P9218939658771353128

/-! ## A146289.P2086562448536163408

`A374683(and(A001222(n+1), A344741(2*n+1)))`
-/

namespace A146289.P2086562448536163408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 (Int.land (A001222 (n + 1)) (A344741 (2 * n + 1))).toNat

end

end A146289.P2086562448536163408

/-!
# A146290: Triangle T(n,m) read by rows (n >= 1, 0 <= m <= A061394(n)), giving the number of divisors of A025487(n) with m distinct prime factors.

The programs for A146290, there is no canonical definition to state claims against.
-/

/-! ## A146290.P13467763503887708944

`gcd(A112738(A000009(n)), A116939(n))`
-/

namespace A146290.P13467763503887708944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112738 (A000009 n).toNat) (A116939 n)

end

end A146290.P13467763503887708944

/-! ## A146290.P1145725969123367099

`gcd(A055642(A221944(n)), A328841(n))`
-/

namespace A146290.P1145725969123367099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A221944 n).toNat) (A328841 n)

end

end A146290.P1145725969123367099

/-! ## A146290.P11929663891097010269

`gcd(A055642(A295719(n)), A276008(n))`
-/

namespace A146290.P11929663891097010269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A295719 n).toNat) (A276008 n)

end

end A146290.P11929663891097010269

/-! ## A146290.P8249635623060363818

`gcd(A275850(A056759(n+1)), A280568(n))`
-/

namespace A146290.P8249635623060363818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275850 (A056759 (n + 1)).toNat) (A280568 n)

end

end A146290.P8249635623060363818

/-! ## A146290.P1331615592203606140

`A008289(lt[A280443(3*n), A048671(2*(n+1))])`
-/

namespace A146290.P1331615592203606140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280443 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A146290.P1331615592203606140

/-!
# A146291: Triangle T(n,m) read by rows (n >= 1, 0 <= m <= A001222(n)), giving the number of divisors of n with m prime factors (counted with multiplicity).

The programs for A146291, there is no canonical definition to state claims against.
-/

/-! ## A146291.P10955005045668643100

`gcd(A040823(n), A136420(n+1))`
-/

namespace A146291.P10955005045668643100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040823 n) (A136420 (n + 1))

end

end A146291.P10955005045668643100

/-! ## A146291.P12294381301118694373

`A351202(A210208(n+1)*A210208(n+2))`
-/

namespace A146291.P12294381301118694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (A210208 (n + 1) * A210208 (n + 2)).toNat

end

end A146291.P12294381301118694373

/-! ## A146291.P10827919041099403891

`A043290(∑[A193923(A065033(n))]²)`
-/

namespace A146291.P10827919041099403891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A146291.P10827919041099403891

/-! ## A146291.P14143951010529515034

`A106751(A397205(n+1))`
-/

namespace A146291.P14143951010529515034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106751 (A397205 (n + 1)).toNat

end

end A146291.P14143951010529515034

/-! ## A146291.P987344015079439102

`gcd(A301391(n+1), A317537(n+1))`
-/

namespace A146291.P987344015079439102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301391 (n + 1)) (A317537 (n + 1))

end

end A146291.P987344015079439102

/-!
# A146296: Integers which are not the sum of a 5-almost prime and a prime.

The programs for A146296, there is no canonical definition to state claims against.
-/

/-! ## A146296.P436049492303972786

`lt[A362778(n+5), A145018(A358507(n+1))]`
-/

namespace A146296.P436049492303972786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362778 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (A358507 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A146296.P436049492303972786

/-! ## A146296.P5100619867655580230

`lt[lcm(2, A320348(n+1)), A055932(n+1)]`
-/

namespace A146296.P5100619867655580230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A320348 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A146296.P5100619867655580230

/-! ## A146296.P5779638368488167290

`lt[A143240(A143287(n)), n]`
-/

namespace A146296.P5779638368488167290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143240 (A143287 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A146296.P5779638368488167290

/-! ## A146296.P16119137539412582774

`lt[A006370(A078658(n)), A002053(n)]`
-/

namespace A146296.P16119137539412582774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A078658 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A146296.P16119137539412582774

/-! ## A146296.P17004358015984072027

`lt[A284255(A175782(2*n+3)), A001318(n)]`
-/

namespace A146296.P17004358015984072027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (A175782 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A146296.P17004358015984072027

/-!
# A146297: Integers which are not the sum of a 6-almost prime and a prime.

The programs for A146297, there is no canonical definition to state claims against.
-/

/-! ## A146297.P1080925212393927316

`A108421(C(n, 64)+2)+n`
-/

namespace A146297.P1080925212393927316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108421 (Nat.choose n 64 + 2) + (n : ℤ)

end

end A146297.P1080925212393927316

/-! ## A146297.P12525255698833634508

`A066743(C(n, 64)+2)+1+n`
-/

namespace A146297.P12525255698833634508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066743 (Nat.choose n 64 + 2) + 1 + (n : ℤ)

end

end A146297.P12525255698833634508

/-! ## A146297.P14426940863777921507

`A317963(A288228(C(n, 64)+1)-1)+a(n-1)` with `a(0)=2`
-/

namespace A146297.P14426940863777921507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A317963 (A288228 (Nat.choose n 64 + 1) - 1).toNat + a (n - 1)

end

end A146297.P14426940863777921507

/-! ## A146297.P5102218038285535072

`A001221(or(62, C(n, 62)))+n`
-/

namespace A146297.P5102218038285535072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lor 62 (Nat.choose n 62)) + (n : ℤ)

end

end A146297.P5102218038285535072

/-! ## A146297.P9130887629065843155

`A113311(C(n, 64)²)+1+n`
-/

namespace A146297.P9130887629065843155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (Nat.choose n 64 ^ 2) + 1 + (n : ℤ)

end

end A146297.P9130887629065843155

/-! ## A146297.P10114386427525811698

`A343721(A054353(C(n, 64)+1)+1)+n`
-/

namespace A146297.P10114386427525811698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343721 (A054353 (Nat.choose n 64 + 1) + 1).toNat + (n : ℤ)

end

end A146297.P10114386427525811698

/-! ## A146297.P13195028710061916855

`A337980(A322386(C(n, 64)+1)+2)+n+2`
-/

namespace A146297.P13195028710061916855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (A322386 (Nat.choose n 64 + 1) + 2).toNat + (n + 2 : ℤ)

end

end A146297.P13195028710061916855

/-! ## A146297.P10839468186054390964

`A239700(xor(n, A210447(n+1))+1)+n+1`
-/

namespace A146297.P10839468186054390964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (Int.xor (n : ℤ) (A210447 (n + 1)) + 1).toNat + (n + 1 : ℤ)

end

end A146297.P10839468186054390964

/-! ## A146297.P12068208681117646812

`A118759(A001221(or(62, C(n, 62)))-(n-2*n))`
-/

namespace A146297.P12068208681117646812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A001221 (Nat.lor 62 (Nat.choose n 62)) - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A146297.P12068208681117646812

/-! ## A146297.P1312987021977098951

`A000203(A153675(4*A153675(n+1)+1))+n+1`
-/

namespace A146297.P1312987021977098951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A153675 (4 * A153675 (n + 1) + 1).toNat).toNat + (n + 1 : ℤ)

end

end A146297.P1312987021977098951

/-!
# A146298: Difference between the cubes and 2*tetrahedral numbers; A000578(n) - 2*A000292(n).

The programs for A146298, the canonical program `A146298.P11485159301145568755` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146298 has offset 0).

The definition of A146298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000578(n)-2*A000292(n)` (program `A146298.P11485159301145568755`, by `A146298.P11485159301145568755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146298.P6615606876900268007

`(n-2)*n*(2*n+1)/3`
-/

namespace A146298.P6615606876900268007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * (n : ℤ) * (2 * n + 1 : ℤ) : ℚ) / 3

end

end A146298.P6615606876900268007

namespace A146298

/-- `(n-2)*n*(2*n+1)/3` -/
def P6615606876900268007.Spec : Prop :=
  ∀ n, P6615606876900268007.a n = (A146298 n : ℚ)

theorem P6615606876900268007.correct : P6615606876900268007.Spec := by
  intro n
  simp only [A146298, Nat.add_sub_cancel, A146298.P6615606876900268007.a, A146298.P11485159301145568755.a, A000292, A000292.P18322089543142633594.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A146298

/-! ## A146298.P12554066477607207260

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=0, a(3)=7`
-/

namespace A146298.P12554066477607207260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 0, 7] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A146298.P12554066477607207260

namespace A146298

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12554066477607207260.Spec : Prop :=
  ∀ n, P12554066477607207260.a n = A146298 n

end A146298

/-! ## A146298.P11485159301145568755

`A000578(n)-2*A000292(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A146298

/-- `A000578(n)-2*A000292(n)` -/
def P11485159301145568755.Spec : Prop :=
  ∀ n, P11485159301145568755.a n = A146298 n

theorem P11485159301145568755.correct : P11485159301145568755.Spec := by
  intro n
  simp only [A146298]

end A146298

/-! ## A146298.P6115689682396046402

`C(2*n, 3)/2-n`
-/

namespace A146298.P6115689682396046402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℚ) / 2 - (n : ℚ)

end

end A146298.P6115689682396046402

namespace A146298

/-- `C(2*n, 3)/2-n` -/
def P6115689682396046402.Spec : Prop :=
  ∀ n, P6115689682396046402.a n = (A146298 n : ℚ)

theorem P6115689682396046402.correct : P6115689682396046402.Spec := by
  intro n
  simp only [A146298, Nat.add_sub_cancel, A146298.P6115689682396046402.a, A146298.P11485159301145568755.a, A000292, A000292.P18322089543142633594.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A146298

/-! ## A146298.P9815680841970291132

`∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A146298.P9815680841970291132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P9815680841970291132

namespace A146298

/-- `∑[∑[a(n-1)+4]]` -/
def P9815680841970291132.Spec : Prop :=
  ∀ n, P9815680841970291132.a n = A146298 n

end A146298

/-! ## A146298.P9496057869582524179

`n-∑[∑[a(n-1)-4]]` with `a(0)=0, a(1)=2`
-/

namespace A146298.P9496057869582524179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P9496057869582524179

namespace A146298

/-- `n-∑[∑[a(n-1)-4]]` -/
def P9496057869582524179.Spec : Prop :=
  ∀ n, P9496057869582524179.a n = A146298 n

end A146298

/-! ## A146298.P6125363230950042356

`∑[∑[record[n*gcd(2, n)]]-2*n]`
-/

namespace A146298.P6125363230950042356
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P6125363230950042356

namespace A146298

/-- `∑[∑[record[n*gcd(2, n)]]-2*n]` -/
def P6125363230950042356.Spec : Prop :=
  ∀ n, P6125363230950042356.a n = A146298 n

end A146298

/-! ## A146298.P580041395108249559

`∑[(n²+1)*ceil(atan(n+1))-(4*n+1)]`
-/

namespace A146298.P580041395108249559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉ - (4 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P580041395108249559

namespace A146298

/-- `∑[(n²+1)*ceil(atan(n+1))-(4*n+1)]` -/
def P580041395108249559.Spec : Prop :=
  ∀ n, P580041395108249559.a n = A146298 n

end A146298

/-! ## A146298.P11215563198063560855

`A037235(n)-2*n`
-/

namespace A146298.P11215563198063560855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037235 n - (2 * n : ℤ)

end

end A146298.P11215563198063560855

namespace A146298

/-- `A037235(n)-2*n` -/
def P11215563198063560855.Spec : Prop :=
  ∀ n, P11215563198063560855.a n = A146298 n

end A146298

/-! ## A146298.P17339973491762240440

`A160378(n)-∑[n²]`
-/

namespace A146298.P17339973491762240440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A146298.P17339973491762240440

namespace A146298

/-- `A160378(n)-∑[n²]` -/
def P17339973491762240440.Spec : Prop :=
  ∀ n, P17339973491762240440.a n = A146298 n

end A146298

/-! ## A146298.P6559935964812737715

`∑[C(A004273(n), 2)-n]`
-/

namespace A146298.P6559935964812737715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A004273 n).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P6559935964812737715

namespace A146298

/-- `∑[C(A004273(n), 2)-n]` -/
def P6559935964812737715.Spec : Prop :=
  ∀ n, P6559935964812737715.a n = A146298 n

end A146298

/-! ## A146298.P2955920233395123521

`A005900(n)-(n²+n)`
-/

namespace A146298.P2955920233395123521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - (n ^ 2 + n : ℤ)

end

end A146298.P2955920233395123521

namespace A146298

/-- `A005900(n)-(n²+n)` -/
def P2955920233395123521.Spec : Prop :=
  ∀ n, P2955920233395123521.a n = A146298 n

end A146298

/-! ## A146298.P3202525266884387344

`A035291(n+1)-n²²`
-/

namespace A146298.P3202525266884387344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035291 (n + 1) - ((n ^ 2) ^ 2 : ℤ)

end

end A146298.P3202525266884387344

namespace A146298

/-- `A035291(n+1)-n²²` -/
def P3202525266884387344.Spec : Prop :=
  ∀ n, P3202525266884387344.a n = A146298 n

end A146298

/-! ## A146298.P2191253299057655375

`∑[A005893(n)-(4*n+1)]`
-/

namespace A146298.P2191253299057655375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - (4 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P2191253299057655375

namespace A146298

/-- `∑[A005893(n)-(4*n+1)]` -/
def P2191253299057655375.Spec : Prop :=
  ∀ n, P2191253299057655375.a n = A146298 n

end A146298

/-! ## A146298.P15884976968689619871

`∑[A014107(n)-(n-1)%(n+1)]`
-/

namespace A146298.P15884976968689619871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n - Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P15884976968689619871

namespace A146298

/-- `∑[A014107(n)-(n-1)%(n+1)]` -/
def P15884976968689619871.Spec : Prop :=
  ∀ n, P15884976968689619871.a n = A146298 n

end A146298

/-! ## A146298.P4947147347562896187

`∑[lcm(n-1, A004277(n)-1)-n]`
-/

namespace A146298.P4947147347562896187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (A004277 n - 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146298.P4947147347562896187

namespace A146298

/-- `∑[lcm(n-1, A004277(n)-1)-n]` -/
def P4947147347562896187.Spec : Prop :=
  ∀ n, P4947147347562896187.a n = A146298 n

end A146298

/-! ## A146298.P1250106334872266237

`A000447(n)-A006331(n)`
-/

namespace A146298.P1250106334872266237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - A006331 n

end

end A146298.P1250106334872266237

namespace A146298

/-- `A000447(n)-A006331(n)` -/
def P1250106334872266237.Spec : Prop :=
  ∀ n, P1250106334872266237.a n = A146298 n

end A146298

/-! ## A146298.P1016689776991880918

`A002412(n)-A005449(n)`
-/

namespace A146298.P1016689776991880918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n - A005449 n

end

end A146298.P1016689776991880918

namespace A146298

/-- `A002412(n)-A005449(n)` -/
def P1016689776991880918.Spec : Prop :=
  ∀ n, P1016689776991880918.a n = A146298 n

end A146298

/-! ## A146298.P9253614212958616624

`A004126(n)-A006002(n)`
-/

namespace A146298.P9253614212958616624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n - A006002 n

end

end A146298.P9253614212958616624

namespace A146298

/-- `A004126(n)-A006002(n)` -/
def P9253614212958616624.Spec : Prop :=
  ∀ n, P9253614212958616624.a n = A146298 n

end A146298

/-! ## A146298.P13161445375929348285

`A004466(n)-A011379(n)`
-/

namespace A146298.P13161445375929348285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n - A011379 n

end

end A146298.P13161445375929348285

namespace A146298

/-- `A004466(n)-A011379(n)` -/
def P13161445375929348285.Spec : Prop :=
  ∀ n, P13161445375929348285.a n = A146298 n

end A146298

