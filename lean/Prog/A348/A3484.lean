import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A348400: a(1) = 1; a(n+1) = a(n) + n if the digit sum of a(n) is already in the sequence, otherwise a(n+1) = digitsum(a(n)).

The programs for A348400, there is no canonical definition to state claims against.
-/

/-! ## A348400.P11054388945661943820

`A000188((A000124(n)-A173068(n)²)²)`
-/

namespace A348400.P11054388945661943820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((A000124 n - A173068 n ^ 2) ^ 2).toNat

end

end A348400.P11054388945661943820

/-! ## A348400.P16991497239045722733

`A000196((A000124(n)-A173068(n)²)²)`
-/

namespace A348400.P16991497239045722733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A000124 n - A173068 n ^ 2) ^ 2).toNat

end

end A348400.P16991497239045722733

/-! ## A348400.P10685772501491979050

`(A000124(n)-A173068(n)²)*A001221(A030078(n+1))`
-/

namespace A348400.P10685772501491979050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n - A173068 n ^ 2) * A001221 (A030078 (n + 1)).toNat

end

end A348400.P10685772501491979050

/-! ## A348400.P4475164517055273832

`A000124(n)%A196041(A008292(n+1))`
-/

namespace A348400.P4475164517055273832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (A196041 (A008292 (n + 1)).toNat)

end

end A348400.P4475164517055273832

/-!
# A348401: a(n) is the least m > 0 such that n = m! / k! for some k <= m.

The programs for A348401, there is no canonical definition to state claims against.
-/

/-! ## A348401.P5389865017386218353

`gcd(n+1, A052330(A302784(n+1)))`
-/

namespace A348401.P5389865017386218353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A052330 (A302784 (n + 1)).toNat)

end

end A348401.P5389865017386218353

/-! ## A348401.P11416462498179101571

`gcd(A026741(lcm(6, (n+1)^3)/6), A119862(n+1))`
-/

namespace A348401.P11416462498179101571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat) (A119862 (n + 1))

end

end A348401.P11416462498179101571

/-!
# A348402: Number of unoriented polyomino rings of length 2n with twofold rotational symmetry.

The programs for A348402, there is no canonical definition to state claims against.
-/

/-! ## A348402.P11232157470882544928

`A348403(n+1)+A348404(n+1)`
-/

namespace A348402.P11232157470882544928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348403 (n + 1) + A348404 (n + 1)

end

end A348402.P11232157470882544928

/-! ## A348402.P1012536018035662819

`A345234(n+1)+A348404(n+1)-A003056(A345243(n+1))`
-/

namespace A348402.P1012536018035662819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345234 (n + 1) + (A348404 (n + 1) - A003056 (A345243 (n + 1)).toNat)

end

end A348402.P1012536018035662819

/-! ## A348402.P12066665205645864663

`A348404(n+1)+A325106(A074028(n+1))`
-/

namespace A348402.P12066665205645864663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348404 (n + 1) + A325106 (A074028 (n + 1)).toNat

end

end A348402.P12066665205645864663

/-! ## A348402.P17212274136806358660

`A348404(n+1)+A002266(floor(A309757(n)/5))`
-/

namespace A348402.P17212274136806358660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348404 (n + 1) + A002266 ⌊(A309757 n : ℚ) / 5⌋.toNat

end

end A348402.P17212274136806358660

/-!
# A348403: Number of chiral pairs of polyomino rings of length 2n with twofold rotational symmetry.

The programs for A348403, there is no canonical definition to state claims against.
-/

/-! ## A348403.P11222629639578853526

`A348402(n+1)-A348404(n+1)`
-/

namespace A348403.P11222629639578853526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348402 (n + 1) - A348404 (n + 1)

end

end A348403.P11222629639578853526

/-! ## A348403.P9553055172095494016

`A345234(n+1)-A003056(A345243(n+1))`
-/

namespace A348403.P9553055172095494016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345234 (n + 1) - A003056 (A345243 (n + 1)).toNat

end

end A348403.P9553055172095494016

/-! ## A348403.P7361881963229490272

`A088526(A304914(n))`
-/

namespace A348403.P7361881963229490272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (A304914 n).toNat

end

end A348403.P7361881963229490272

/-! ## A348403.P4471701837054235697

`∑[A123576(A000048(n))]`
-/

namespace A348403.P4471701837054235697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A000048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348403.P4471701837054235697

/-! ## A348403.P6349829572160257124

`∑[A126696(A157725(n))]`
-/

namespace A348403.P6349829572160257124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (A157725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348403.P6349829572160257124

/-!
# A348404: Number of achiral polyomino rings of length 2n with twofold rotational symmetry.

The programs for A348404, there is no canonical definition to state claims against.
-/

/-! ## A348404.P17256571105263499630

`A348402(n+1)-A348403(n+1)`
-/

namespace A348404.P17256571105263499630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348402 (n + 1) - A348403 (n + 1)

end

end A348404.P17256571105263499630

/-! ## A348404.P17591205524735336949

`A003056(A345243(n+1))+A348402(n+1)-A345234(n+1)`
-/

namespace A348404.P17591205524735336949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A345243 (n + 1)).toNat + (A348402 (n + 1) - A345234 (n + 1))

end

end A348404.P17591205524735336949

/-!
# A348405: a(0) = 1, a(n) + a(n+1) = round(2^n/9), n >= 0.

The programs for A348405, the canonical program `A348405.P16510536186273555448` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348405 has offset 0).

The definition of A348405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348405.P16510536186273555448

`A139797(n)+(-1)^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A348405

/-- `A139797(n)+(-1)^n` -/
def P16510536186273555448.Spec : Prop :=
  ∀ n, P16510536186273555448.a n = A348405 n

theorem P16510536186273555448.correct : P16510536186273555448.Spec := by
  intro n
  simp only [A348405]

end A348405

/-! ## A348405.P5085317829175345953

`A113405(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A348405.P5085317829175345953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113405 (n - 1) - a (n - 1)

end

end A348405.P5085317829175345953

namespace A348405

/-- `A113405(n-1)-a(n-1)` -/
def P5085317829175345953.Spec : Prop :=
  ∀ n, P5085317829175345953.a n = A348405 n

end A348405

/-! ## A348405.P11976213766659968056

`A253414(2*n)+A139797(n)`
-/

namespace A348405.P11976213766659968056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (2 * n) + A139797 n

end

end A348405.P11976213766659968056

namespace A348405

/-- `A253414(2*n)+A139797(n)` -/
def P11976213766659968056.Spec : Prop :=
  ∀ n, P11976213766659968056.a n = A348405 n

end A348405

/-! ## A348405.P14573809722957488733

`A004442(n)+A139797(n)-n`
-/

namespace A348405.P14573809722957488733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + (A139797 n - (n : ℤ))

end

end A348405.P14573809722957488733

namespace A348405

/-- `A004442(n)+A139797(n)-n` -/
def P14573809722957488733.Spec : Prop :=
  ∀ n, P14573809722957488733.a n = A348405 n

theorem P14573809722957488733.correct : P14573809722957488733.Spec := by
  intro n
  simp only [A348405, Nat.add_sub_cancel, A348405.P14573809722957488733.a, A348405.P16510536186273555448.a, A004442, A004442.P2439415777187857398.a, A139797, A139797.P5447272706688979556.a, A328284, A328284.P11134419020034761192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348405

/-! ## A348405.P5722101448068036695

`A104581(n)+Δ[A139797(n)]`
-/

namespace A348405.P5722101448068036695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 n + (f1 (n + 1) - f1 n)

end

end A348405.P5722101448068036695

namespace A348405

/-- `A104581(n)+Δ[A139797(n)]` -/
def P5722101448068036695.Spec : Prop :=
  ∀ n, P5722101448068036695.a n = A348405 n

end A348405

/-! ## A348405.P7558692988205831943

`Δ[A131090(n)-∑[A139797(n)]]`
-/

namespace A348405.P7558692988205831943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348405.P7558692988205831943

namespace A348405

/-- `Δ[A131090(n)-∑[A139797(n)]]` -/
def P7558692988205831943.Spec : Prop :=
  ∀ n, P7558692988205831943.a n = A348405 n

end A348405

/-! ## A348405.P2548607440180160199

`Δ[A131090(n)]-A139797(n+1)`
-/

namespace A348405.P2548607440180160199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139797 (n + 1)

end

end A348405.P2548607440180160199

namespace A348405

/-- `Δ[A131090(n)]-A139797(n+1)` -/
def P2548607440180160199.Spec : Prop :=
  ∀ n, P2548607440180160199.a n = A348405 n

end A348405

/-! ## A348405.P3546130191991823265

`A078008(n)-A139797(n+3)`
-/

namespace A348405.P3546130191991823265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - A139797 (n + 3)

end

end A348405.P3546130191991823265

namespace A348405

/-- `A078008(n)-A139797(n+3)` -/
def P3546130191991823265.Spec : Prop :=
  ∀ n, P3546130191991823265.a n = A348405 n

end A348405

/-!
# A348406: Number of vertices on the axis of symmetry of the symmetric representation of sigma(n) with subparts.

The programs for A348406, there is no canonical definition to state claims against.
-/

/-! ## A348406.P553780744694410481

`1+A067742(n+1)`
-/

namespace A348406.P553780744694410481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A067742 (n + 1)

end

end A348406.P553780744694410481

/-! ## A348406.P14357295017553563167

`A334954(n+1)-A067743(n+1)`
-/

namespace A348406.P14357295017553563167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A067743 (n + 1)

end

end A348406.P14357295017553563167

/-! ## A348406.P14518564177156626558

`A000005(n+1)+1-A067743(n+1)`
-/

namespace A348406.P14518564177156626558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A067743 (n + 1))

end

end A348406.P14518564177156626558

/-! ## A348406.P11818527056427024306

`A082647(n+1)+1-A131576(n+1)`
-/

namespace A348406.P11818527056427024306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1) + (1 - A131576 (n + 1))

end

end A348406.P11818527056427024306

/-! ## A348406.P10973154631519309999

`A001227(n+1)+1-A281009(n+1)`
-/

namespace A348406.P10973154631519309999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (1 - A281009 (n + 1))

end

end A348406.P10973154631519309999

/-! ## A348406.P10871816372048117037

`A020725(A000005(n+1))-A067743(n+1)`
-/

namespace A348406.P10871816372048117037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000005 (n + 1)).toNat - A067743 (n + 1)

end

end A348406.P10871816372048117037

/-! ## A348406.P4020016582553288119

`A005843(A082647(n+1))+1-A001227(n+1)`
-/

namespace A348406.P4020016582553288119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082647 (n + 1)).toNat + (1 - A001227 (n + 1))

end

end A348406.P4020016582553288119

/-! ## A348406.P7118157086977031036

`A001227(n+1)+1-A005843(A131576(n+1))`
-/

namespace A348406.P7118157086977031036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (1 - A005843 (A131576 (n + 1)).toNat)

end

end A348406.P7118157086977031036

/-! ## A348406.P446898010192584276

`Δ[A060831(n)]+1-A281009(n+1)`
-/

namespace A348406.P446898010192584276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A281009 (n + 1))

end

end A348406.P446898010192584276

/-! ## A348406.P10182960666064403143

`A069288(2*(n+1))+1-A341594(2*(n+1))`
-/

namespace A348406.P10182960666064403143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (2 * (n + 1)) + (1 - A341594 (2 * (n + 1)))

end

end A348406.P10182960666064403143

/-! ## A348406.P3869099148550801689

`A249223(A006463(n+2))+1`
-/

namespace A348406.P3869099148550801689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249223 (A006463 (n + 2)).toNat + 1

end

end A348406.P3869099148550801689

/-! ## A348406.P4625570602710257

`A249223(∑[A003056(n+1)])+1`
-/

namespace A348406.P4625570602710257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A348406.P4625570602710257

/-! ## A348406.P18171019872783863183

`A262045(A340520(n+1)+A003056(n))+1`
-/

namespace A348406.P18171019872783863183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262045 (A340520 (n + 1) + A003056 n).toNat + 1

end

end A348406.P18171019872783863183

/-! ## A348406.P9564070608217066856

`A358434(n+1)+A361561(n+1)+1`
-/

namespace A348406.P9564070608217066856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358434 (n + 1) + (A361561 (n + 1) + 1)

end

end A348406.P9564070608217066856

/-!
# A348407: a(n) = ((n+1)*3*2^(n+1) + 29*2^n + (-1)^n)/9.

The programs for A348407, the canonical program `A348407.P17745707699217768331` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348407 has offset 0).

The definition of A348407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348407.P17745707699217768331

`2^(n+2)+A113861(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348407

/-- `2^(n+2)+A113861(n+1)` -/
def P17745707699217768331.Spec : Prop :=
  ∀ n, P17745707699217768331.a n = A348407 n

theorem P17745707699217768331.correct : P17745707699217768331.Spec := by
  intro n
  simp only [A348407]

end A348407

/-! ## A348407.P8431592624596191341

`3*a(n-1)-4*a(n-3)` with `a(0)=4, a(1)=9, a(2)=21`
-/

namespace A348407.P8431592624596191341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 21] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3)

end

end A348407.P8431592624596191341

namespace A348407

/-- `3*a(n-1)-4*a(n-3)` -/
def P8431592624596191341.Spec : Prop :=
  ∀ n, P8431592624596191341.a n = A348407 n

end A348407

/-! ## A348407.P18164756852476952688

`2^(n+2)+n*2^n-A045883(n)`
-/

namespace A348407.P18164756852476952688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) + n * 2 ^ n : ℤ) - A045883 n

end

end A348407.P18164756852476952688

namespace A348407

/-- `2^(n+2)+n*2^n-A045883(n)` -/
def P18164756852476952688.Spec : Prop :=
  ∀ n, P18164756852476952688.a n = A348407 n

end A348407

/-! ## A348407.P3219245395225289947

`2^(n+2)+n*2^n-round((3*n+1)*2^n/9)`
-/

namespace A348407.P3219245395225289947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) + n * 2 ^ n : ℤ) - SequenceMachineLib.roundAway (((3 * n + 1) * 2 ^ n : ℚ) / 9)

end

end A348407.P3219245395225289947

namespace A348407

/-- `2^(n+2)+n*2^n-round((3*n+1)*2^n/9)` -/
def P3219245395225289947.Spec : Prop :=
  ∀ n, P3219245395225289947.a n = A348407 n

end A348407

/-! ## A348407.P17157534765932242987

`((n+1)*3*2^(n+1)+29*2^n+(-1)^n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348407.P17157534765932242987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * 3 * 2 ^ (n + 1) + 29 * 2 ^ n : ℤ) + (-1) ^ n : ℚ) / 9

end

end A348407.P17157534765932242987

namespace A348407

/-- `((n+1)*3*2^(n+1)+29*2^n+(-1)^n)/9` -/
def P17157534765932242987.Spec : Prop :=
  ∀ n, P17157534765932242987.a n = (A348407 n : ℚ)

end A348407

/-! ## A348407.P241617432390246419

`ogf((4-3x-6x^2)/(1-3x+4x^3))`
-/

namespace A348407.P241617432390246419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -6] [1, -3, 0, 4] n

end

end A348407.P241617432390246419

namespace A348407

/-- `ogf((4-3x-6x^2)/(1-3x+4x^3))` -/
def P241617432390246419.Spec : Prop :=
  ∀ n, P241617432390246419.a n = A348407 n

end A348407

/-!
# A348409: a(n) is the greatest k such that A307730(k) = n.

The programs for A348409, there is no canonical definition to state claims against.
-/

/-! ## A348409.P15596348638014552415

`A348246(n+1)+A348249(n+1)-1`
-/

namespace A348409.P15596348638014552415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (n + 1) + (A348249 (n + 1) - 1)

end

end A348409.P15596348638014552415

/-! ## A348409.P9865324272303288457

`A348246(n+1)+A348250(n+1)+n`
-/

namespace A348409.P9865324272303288457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (n + 1) + (A348250 (n + 1) + (n : ℤ))

end

end A348409.P9865324272303288457

/-! ## A348409.P18216410933614034558

`A348246(n+1)-A024000(A348249(n+1))`
-/

namespace A348409.P18216410933614034558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (n + 1) - A024000 (A348249 (n + 1)).toNat

end

end A348409.P18216410933614034558

/-! ## A348409.P11714352176567207946

`A348579(∑[n+1])`
-/

namespace A348409.P11714352176567207946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348409.P11714352176567207946

/-! ## A348409.P17771216843941711655

`A348579(A000217(n+1))%A069091(n+2)`
-/

namespace A348409.P17771216843941711655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348579 (A000217 (n + 1)).toNat) (A069091 (n + 2))

end

end A348409.P17771216843941711655

/-! ## A348409.P7315124717358121132

`A001222(A088732(n))*A348579(∑[ϕ²-(ϕ-n)])`
-/

namespace A348409.P7315124717358121132
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088732 n).toNat * A348579 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A348409.P7315124717358121132

/-! ## A348409.P14906250445905182759

`A348579(A000124(n))-A024000(A348249(n+1))`
-/

namespace A348409.P14906250445905182759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348579 (A000124 n).toNat - A024000 (A348249 (n + 1)).toNat

end

end A348409.P14906250445905182759

/-!
# A348410: Number of nonnegative integer solutions to n = Sum_{i=1..n} (a_i + b_i), with b_i even.

The programs for A348410, there is no canonical definition to state claims against.
-/

/-! ## A348410.P14477066278881577169

`A060086(∑[4*n])`
-/

namespace A348410.P14477066278881577169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348410.P14477066278881577169

/-! ## A348410.P15350422675250192400

`A158815(A004273(n²))`
-/

namespace A348410.P15350422675250192400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (A004273 (n ^ 2)).toNat

end

end A348410.P15350422675250192400

/-! ## A348410.P16175537027755345883

`A158815(A163985(n²))`
-/

namespace A348410.P16175537027755345883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (A163985 (n ^ 2)).toNat

end

end A348410.P16175537027755345883

/-! ## A348410.P3135611569540195582

`A158815(A004277(n²)-1)`
-/

namespace A348410.P3135611569540195582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (A004277 (n ^ 2) - 1).toNat

end

end A348410.P3135611569540195582

/-! ## A348410.P1895902253072033847

`A059594(A159797(2*n²))`
-/

namespace A348410.P1895902253072033847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 (A159797 (2 * n ^ 2)).toNat

end

end A348410.P1895902253072033847

/-! ## A348410.P10074399686872663693

`A158815(A057428(n)+A001105(n))`
-/

namespace A348410.P10074399686872663693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (A057428 n + A001105 n).toNat

end

end A348410.P10074399686872663693

/-! ## A348410.P12383486336355802778

`A158815(A001105(n)-A057427(n))`
-/

namespace A348410.P12383486336355802778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (A001105 n - A057427 n).toNat

end

end A348410.P12383486336355802778

/-! ## A348410.P16984510449628134626

`A158815(A001105(n)-A057428(n)²)`
-/

namespace A348410.P16984510449628134626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 (A001105 n - A057428 n ^ 2).toNat

end

end A348410.P16984510449628134626

/-! ## A348410.P11294007912059979118

`A158815((1-A001105(n))*A057428(n))`
-/

namespace A348410.P11294007912059979118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158815 ((1 - A001105 n) * A057428 n).toNat

end

end A348410.P11294007912059979118

/-!
# A348411: Numbers whose divisors have a harmonic mean with a denominator 2.

The programs for A348411, there is no canonical definition to state claims against.
-/

/-! ## A348411.P9344839727589299090

`eq[2, A099378(n+1)]+1`
-/

namespace A348411.P9344839727589299090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348411.P9344839727589299090

/-! ## A348411.P7212008062403051582

`eq[2, A099378(A028310(n))]`
-/

namespace A348411.P7212008062403051582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348411.P7212008062403051582

/-! ## A348411.P15903791831660283945

`A065475(eq[2, A099378(n+1)])`
-/

namespace A348411.P15903791831660283945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348411.P15903791831660283945

/-! ## A348411.P7494956904580411382

`A153152(eq[2, A099378(n+1)])`
-/

namespace A348411.P7494956904580411382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348411.P7494956904580411382

/-! ## A348411.P17021553068080737067

`eq[A324121(n+1), A324122(n+1)]+1`
-/

namespace A348411.P17021553068080737067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348411.P17021553068080737067

/-!
# A348412: Numbers whose even divisors have an integer harmonic mean.

The programs for A348412, there is no canonical definition to state claims against.
-/

/-! ## A348412.P8154372471007927670

`∏{e}[∏[A142702(∑[11*(n+1)]+3)+n], #+1]`
-/

namespace A348412.P8154372471007927670
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142702 (∑ j ∈ Finset.range (n + 1), f3 j + 3) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A348412.P8154372471007927670

/-! ## A348412.P9036755334533383715

`∑[record[A213624(A055500(n))]]`
-/

namespace A348412.P9036755334533383715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213624 (A055500 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348412.P9036755334533383715

/-! ## A348412.P17140812068340698743

`A234521(A220070(n+1)+n²)`
-/

namespace A348412.P17140812068340698743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234521 (A220070 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A348412.P17140812068340698743

/-!
# A348413: a(0) = A002858(1) = 1, followed by the greatest Ulam numbers A002858 to form a complete sequence (see algorithm below).

The programs for A348413, there is no canonical definition to state claims against.
-/

/-! ## A348413.P17684279806409020335

`xor(A046660(A057574(n)), A164236(n))`
-/

namespace A348413.P17684279806409020335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046660 (A057574 n).toNat) (A164236 n)

end

end A348413.P17684279806409020335

/-! ## A348413.P4638177969276228013

`A331935(A090905(n+1))`
-/

namespace A348413.P4638177969276228013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A090905 (n + 1)).toNat

end

end A348413.P4638177969276228013

/-! ## A348413.P12662727886328550755

`A331935(A293855(n+1))`
-/

namespace A348413.P12662727886328550755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A293855 (n + 1)).toNat

end

end A348413.P12662727886328550755

/-! ## A348413.P8633079637711433944

`A331935(A022858(n+2))`
-/

namespace A348413.P8633079637711433944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A022858 (n + 2)).toNat

end

end A348413.P8633079637711433944

/-!
# A348414: Numbers with record values of the denominator of the harmonic mean of their divisors.

The programs for A348414, there is no canonical definition to state claims against.
-/

/-! ## A348414.P13816004519787634639

`A051444(record[A057020(n+1)])`
-/

namespace A348414.P13816004519787634639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348414.P13816004519787634639

/-! ## A348414.P12460301873618921019

`A070982(record[A057020(n+1)])`
-/

namespace A348414.P12460301873618921019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348414.P12460301873618921019

/-! ## A348414.P2806917088739945189

`A051444(record[A099378(n+1)])`
-/

namespace A348414.P2806917088739945189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348414.P2806917088739945189

/-! ## A348414.P6026018849627625327

`A051444(record[A000203(n+1)/A324121(n+1)])`
-/

namespace A348414.P6026018849627625327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A348414.P6026018849627625327

/-! ## A348414.P10269678215515537809

`A051444(record[A324122(n+1)/A324121(n+1)+1])`
-/

namespace A348414.P10269678215515537809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324122 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A348414.P10269678215515537809

/-!
# A348416: For n >= 1; a(n) = gcd(n,w(n)) where w(n) is the binary weight of n, A000120(n).

The programs for A348416, the canonical program `A348416.P12963142797429791632` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348416 has offset 1).

The definition of A348416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348416.P12963142797429791632

`gcd(n+1, A000120(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A348416

/-- `gcd(n+1, A000120(n+1))` -/
def P12963142797429791632.Spec : Prop :=
  ∀ n, (P12963142797429791632.a n : ℤ) = A348416 (n + 1)

theorem P12963142797429791632.correct : P12963142797429791632.Spec := by
  intro n
  simp only [A348416, Nat.add_sub_cancel]

end A348416

/-! ## A348416.P2151520358721811854

`gcd(xor(n, -1), Δ[A000788(n)])`
-/

namespace A348416.P2151520358721811854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (f1 (n + 1) - f1 n)

end

end A348416.P2151520358721811854

namespace A348416

/-- `gcd(xor(n, -1), Δ[A000788(n)])` -/
def P2151520358721811854.Spec : Prop :=
  ∀ n, (P2151520358721811854.a n : ℤ) = A348416 (n + 1)

end A348416

/-! ## A348416.P10403774450984775997

`gcd(xor(n, -1), ∑[A085058(n)])`
-/

namespace A348416.P10403774450984775997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348416.P10403774450984775997

namespace A348416

/-- `gcd(xor(n, -1), ∑[A085058(n)])` -/
def P10403774450984775997.Spec : Prop :=
  ∀ n, (P10403774450984775997.a n : ℤ) = A348416 (n + 1)

end A348416

/-! ## A348416.P4800972274216743837

`gcd(n-log2(1/2), A011371(n+1))`
-/

namespace A348416.P4800972274216743837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A011371 (n + 1))

end

end A348416.P4800972274216743837

namespace A348416

/-- `gcd(n-log2(1/2), A011371(n+1))` -/
def P4800972274216743837.Spec : Prop :=
  ∀ n, (P4800972274216743837.a n : ℤ) = A348416 (n + 1)

end A348416

/-! ## A348416.P3804336527733561531

`gcd(∑[val(n+1, 2)], A000027(n+1))`
-/

namespace A348416.P3804336527733561531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000027 (n + 1))

end

end A348416.P3804336527733561531

namespace A348416

/-- `gcd(∑[val(n+1, 2)], A000027(n+1))` -/
def P3804336527733561531.Spec : Prop :=
  ∀ n, (P3804336527733561531.a n : ℤ) = A348416 (n + 1)

end A348416

/-! ## A348416.P4125270583427822089

`gcd(A005187(2*n+2), A056239(A000040(n+1)))`
-/

namespace A348416.P4125270583427822089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005187 (2 * n + 2)) (A056239 (A000040 (n + 1)).toNat)

end

end A348416.P4125270583427822089

namespace A348416

/-- `gcd(A005187(2*n+2), A056239(A000040(n+1)))` -/
def P4125270583427822089.Spec : Prop :=
  ∀ n, (P4125270583427822089.a n : ℤ) = A348416 (n + 1)

end A348416

/-! ## A348416.P17032343904302096126

`A067815(A134467(n+1))`
-/

namespace A348416.P17032343904302096126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (A134467 (n + 1)).toNat

end

end A348416.P17032343904302096126

namespace A348416

/-- `A067815(A134467(n+1))` -/
def P17032343904302096126.Spec : Prop :=
  ∀ n, P17032343904302096126.a n = A348416 (n + 1)

end A348416

/-! ## A348416.P4459097591637955046

`gcd(A115511(n+1), A352202(n+1))`
-/

namespace A348416.P4459097591637955046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115511 (n + 1)) (A352202 (n + 1))

end

end A348416.P4459097591637955046

namespace A348416

/-- `gcd(A115511(n+1), A352202(n+1))` -/
def P4459097591637955046.Spec : Prop :=
  ∀ n, (P4459097591637955046.a n : ℤ) = A348416 (n + 1)

end A348416

/-!
# A348417: Number of coprime squares modulo A081754(n): a(n) = A046073(A081754(n)).

The programs for A348417, the canonical program `A348417.P9331888440258440261` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348417 has offset 1).

The definition of A348417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046073, A081754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348417.P9331888440258440261

`A046073(A081754(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A348417

/-- `A046073(A081754(n+1))` -/
def P9331888440258440261.Spec : Prop :=
  ∀ n, P9331888440258440261.a n = A348417 (n + 1)

theorem P9331888440258440261.correct : P9331888440258440261.Spec := by
  intro n
  simp only [A348417, Nat.add_sub_cancel]

end A348417

/-! ## A348417.P14444173377787732122

`A000010(A081754(n+1))/A081755(n+1)`
-/

namespace A348417.P14444173377787732122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A081754 (n + 1)).toNat : ℚ) / (A081755 (n + 1) : ℚ)

end

end A348417.P14444173377787732122

namespace A348417

/-- `A000010(A081754(n+1))/A081755(n+1)` -/
def P14444173377787732122.Spec : Prop :=
  ∀ n, P14444173377787732122.a n = (A348417 (n + 1) : ℚ)

end A348417

/-! ## A348417.P14643251191451740272

`A046073(eq[1, A046073(n+1)%2]+1)`
-/

namespace A348417.P14643251191451740272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046073 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348417.P14643251191451740272

namespace A348417

/-- `A046073(eq[1, A046073(n+1)%2]+1)` -/
def P14643251191451740272.Spec : Prop :=
  ∀ n, P14643251191451740272.a n = A348417 (n + 1)

end A348417

/-! ## A348417.P1294777840376182985

`A046073(eq[1, and(1, A046073(n+1))]+1)`
-/

namespace A348417.P1294777840376182985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046073 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348417.P1294777840376182985

namespace A348417

/-- `A046073(eq[1, and(1, A046073(n+1))]+1)` -/
def P1294777840376182985.Spec : Prop :=
  ∀ n, P1294777840376182985.a n = A348417 (n + 1)

end A348417

/-! ## A348417.P7599720149969138484

`filter[A046073(n+1), A000035(#)]`
-/

namespace A348417.P7599720149969138484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A348417.P7599720149969138484

namespace A348417

/-- `filter[A046073(n+1), A000035(#)]` -/
def P7599720149969138484.Spec : Prop :=
  ∀ n, P7599720149969138484.a n = A348417 (n + 1)

end A348417

/-! ## A348417.P9192855743669187437

`A046073(eq[A060594(n+1), A073103(n+1)]+1)`
-/

namespace A348417.P9192855743669187437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A348417.P9192855743669187437

namespace A348417

/-- `A046073(eq[A060594(n+1), A073103(n+1)]+1)` -/
def P9192855743669187437.Spec : Prop :=
  ∀ n, P9192855743669187437.a n = A348417 (n + 1)

end A348417

/-! ## A348417.P6328273440099727667

`A046073(eq[A155828(n+1)+1, A073103(n+1)]+1)`
-/

namespace A348417.P6328273440099727667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A348417.P6328273440099727667

namespace A348417

/-- `A046073(eq[A155828(n+1)+1, A073103(n+1)]+1)` -/
def P6328273440099727667.Spec : Prop :=
  ∀ n, P6328273440099727667.a n = A348417 (n + 1)

end A348417

/-! ## A348417.P14759241411167536727

`A293485(2*A081754(n+1))`
-/

namespace A348417.P14759241411167536727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (2 * A081754 (n + 1)).toNat

end

end A348417.P14759241411167536727

namespace A348417

/-- `A293485(2*A081754(n+1))` -/
def P14759241411167536727.Spec : Prop :=
  ∀ n, P14759241411167536727.a n = A348417 (n + 1)

end A348417

/-! ## A348417.P15678180971651159002

`A250207(2*A081754(n+1))`
-/

namespace A348417.P15678180971651159002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250207 (2 * A081754 (n + 1)).toNat

end

end A348417.P15678180971651159002

namespace A348417

/-- `A250207(2*A081754(n+1))` -/
def P15678180971651159002.Spec : Prop :=
  ∀ n, P15678180971651159002.a n = A348417 (n + 1)

end A348417

/-!
# A348418: a(n) is the smallest k with rank((Z/kZ)*) = n such that there are an odd number of coprime squares modulo k.

The programs for A348418, there is no canonical definition to state claims against.
-/

/-! ## A348418.P4962460433175314456

`A132739(A302109(n))`
-/

namespace A348418.P4962460433175314456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A302109 n).toNat

end

end A348418.P4962460433175314456

/-! ## A348418.P15400893800192652888

`A235489(∏[∑[A072070(n)]])`
-/

namespace A348418.P15400893800192652888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348418.P15400893800192652888

/-!
# A348419: Triangular table read by rows: T(n,k) is the k-th entry of the main diagonal of the inverse Hilbert matrix of order n.

The programs for A348419, there is no canonical definition to state claims against.
-/

/-! ## A348419.P16629442496949770381

`A189765(A014370(n+1))`
-/

namespace A348419.P16629442496949770381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189765 (A014370 (n + 1)).toNat

end

end A348419.P16629442496949770381

/-! ## A348419.P9913577251638556448

`A189765(∑[A002260(n+1)])`
-/

namespace A348419.P9913577251638556448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348419.P9913577251638556448

/-! ## A348419.P1685147639989475951

`A189765(∑[A002262(n)+1])`
-/

namespace A348419.P1685147639989475951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348419.P1685147639989475951

/-! ## A348419.P17661968511912194558

`A189765(∑[sqrt(A133819(n+1))])`
-/

namespace A348419.P17661968511912194558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189765 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A348419.P17661968511912194558

/-! ## A348419.P10495630109900356562

`A189765(∑[A005408(n)-A061885(n)])`
-/

namespace A348419.P10495630109900356562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348419.P10495630109900356562

/-! ## A348419.P3485097885212473926

`A189765(∑[A127739(n+1)-A061579(n)])`
-/

namespace A348419.P3485097885212473926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348419.P3485097885212473926

/-! ## A348419.P6477481068752960088

`A189765(A332023(n)+1)`
-/

namespace A348419.P6477481068752960088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189765 (A332023 n + 1).toNat

end

end A348419.P6477481068752960088

/-!
# A348420: a(n) = Product_{k=1..n} (p_k - 1)/2 where p_1, p_2, ..., p_n are the first n primes congruent to 3 modulo 4.

The programs for A348420, there is no canonical definition to state claims against.
-/

/-! ## A348420.P24285210255753057

`a(n-1)*A104635(n)` with `a(0)=1`
-/

namespace A348420.P24285210255753057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A104635 n

end

end A348420.P24285210255753057

/-! ## A348420.P15451390192390583969

`∏[A004526(p?[or(3, 3*n)])]`
-/

namespace A348420.P15451390192390583969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348420.P15451390192390583969

/-! ## A348420.P5500791703741547015

`a(n-1)*eq[and(1, n), A001222(2*n+1)]` with `a(0)=1`
-/

namespace A348420.P5500791703741547015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348420.P5500791703741547015

/-! ## A348420.P1718568669204680034

`a(n-1)*eq[2/a(n-1), A000005(2*n+1)]` with `a(0)=1`
-/

namespace A348420.P1718568669204680034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A348420.P1718568669204680034

/-! ## A348420.P8344782039752139200

`∏[A104635(A028310(n))]`
-/

namespace A348420.P8344782039752139200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348420.P8344782039752139200

/-! ## A348420.P6582181385681460438

`∏[A004526(p?[A002516(n)])]`
-/

namespace A348420.P6582181385681460438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348420.P6582181385681460438

/-! ## A348420.P427441903600170240

`∏[A004525(p?[A053438(n)])]`
-/

namespace A348420.P427441903600170240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348420.P427441903600170240

/-! ## A348420.P7827283181434802857

`∏[A004525(p?[A059029(n)])]`
-/

namespace A348420.P7827283181434802857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348420.P7827283181434802857

/-! ## A348420.P16954872460290674873

`∏[A057979(p?[A059029(n)])]`
-/

namespace A348420.P16954872460290674873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348420.P16954872460290674873

/-! ## A348420.P1524221873094767670

`∏[A004525(A045326(n+1))]`
-/

namespace A348420.P1524221873094767670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A045326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348420.P1524221873094767670

/-!
# A348421: Primes p == 3 (mod 4) such that (p+3)/2 is not prime.

The programs for A348421, there is no canonical definition to state claims against.
-/

/-! ## A348421.P5805290066366775043

`2*A348423(n+1)-3`
-/

namespace A348421.P5805290066366775043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348423 (n + 1) - 3

end

end A348421.P5805290066366775043

/-! ## A348421.P5491343254687419705

`∩[A002145(n+1), A332078(n+1)]`
-/

namespace A348421.P5491343254687419705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P5491343254687419705

/-! ## A348421.P3460388922637258752

`∩[A045326(n+1), A332078(n+1)]`
-/

namespace A348421.P3460388922637258752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P3460388922637258752

/-! ## A348421.P10105109775682982542

`∩[A085760(n+1), A332078(n+1)]`
-/

namespace A348421.P10105109775682982542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P10105109775682982542

/-! ## A348421.P5808983337670075698

`∩[A197504(n+1), A332078(n+1)]`
-/

namespace A348421.P5808983337670075698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P5808983337670075698

/-! ## A348421.P5232643732710078137

`∩[A292762(n+1), A332078(n+1)]`
-/

namespace A348421.P5232643732710078137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P5232643732710078137

/-! ## A348421.P3959079456337176117

`∩[A332078(n+1), A332555(n+1)]`
-/

namespace A348421.P3959079456337176117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P3959079456337176117

/-! ## A348421.P16318001850500463107

`∩[A066499(n+1), A332078(n+1)]`
-/

namespace A348421.P16318001850500463107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P16318001850500463107

/-! ## A348421.P17008171812962220390

`∩[A097987(n+1), A332078(n+1)]`
-/

namespace A348421.P17008171812962220390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P17008171812962220390

/-! ## A348421.P13314072732673430208

`p?[4*n-A005171(2*n+1)]`
-/

namespace A348421.P13314072732673430208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A005171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348421.P13314072732673430208

/-! ## A348421.P14244541511576846677

`p?[4*n-A066247(2*n+1)]`
-/

namespace A348421.P14244541511576846677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A066247 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348421.P14244541511576846677

/-! ## A348421.P12153471792196570857

`∩[A094179(n+1), A332078(n+1)]`
-/

namespace A348421.P12153471792196570857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P12153471792196570857

/-! ## A348421.P8538539067672304249

`filter[A332078(n+1), A359152(#)]`
-/

namespace A348421.P8538539067672304249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A348421.P8538539067672304249

/-! ## A348421.P7562401829687648341

`∩[A332078(n+1), A380787(n+1)]`
-/

namespace A348421.P7562401829687648341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P7562401829687648341

/-! ## A348421.P14679167204599749698

`∩[A120127(n+1), A332078(n+1)]`
-/

namespace A348421.P14679167204599749698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P14679167204599749698

/-! ## A348421.P5703793213716349016

`∩[A167181(n+1), A332078(n+1)]`
-/

namespace A348421.P5703793213716349016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P5703793213716349016

/-! ## A348421.P13215156255381602298

`∩[A332078(n+1), A359153(n+1)]`
-/

namespace A348421.P13215156255381602298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P13215156255381602298

/-! ## A348421.P14223675036155275532

`∩[A309388(n+1), A332078(n+1)]`
-/

namespace A348421.P14223675036155275532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P14223675036155275532

/-! ## A348421.P2373712801123665638

`∩[A004614(n+1), A332078(n+1)]`
-/

namespace A348421.P2373712801123665638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348421.P2373712801123665638

/-! ## A348421.P18427111453169089542

`filter[A332078(n+1), A347871(#)]`
-/

namespace A348421.P18427111453169089542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A348421.P18427111453169089542

/-!
# A348422: Triangle of the Multiset Transformation of A060280.

The programs for A348422, there is no canonical definition to state claims against.
-/

/-! ## A348422.P6135447938725781913

`A212551(n*A184166(A130321(n)))`
-/

namespace A348422.P6135447938725781913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 ((n : ℤ) * A184166 (A130321 n).toNat).toNat

end

end A348422.P6135447938725781913

/-! ## A348422.P5459409375984329676

`A212551(n*A056594(A262616(n)))`
-/

namespace A348422.P5459409375984329676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 ((n : ℤ) * A056594 (A262616 n).toNat).toNat

end

end A348422.P5459409375984329676

/-! ## A348422.P4800041856408852671

`A060130(A116598(n)^A070564(n))`
-/

namespace A348422.P4800041856408852671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (SequenceMachineLib.roundAway ((A116598 n : ℚ) ^ (A070564 n : ℤ))).toNat

end

end A348422.P4800041856408852671

/-! ## A348422.P10751565571152722783

`A212551(n)^A019428(A133336(n))`
-/

namespace A348422.P10751565571152722783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212551 n : ℚ) ^ (A019428 (A133336 n).toNat : ℤ)

end

end A348422.P10751565571152722783

/-! ## A348422.P10606177874007119364

`A212551(n)^A289508(A134134(n+1))`
-/

namespace A348422.P10606177874007119364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212551 n : ℚ) ^ (A289508 (A134134 (n + 1)).toNat : ℤ)

end

end A348422.P10606177874007119364

/-!
# A348423: Odd composite numbers k such that 2*k-3 is prime.

The programs for A348423, there is no canonical definition to state claims against.
-/

/-! ## A348423.P12690906602749914010

`(A348421(n+1)+3)/2`
-/

namespace A348423.P12690906602749914010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348421 (n + 1) + 3 : ℚ) / 2

end

end A348423.P12690906602749914010

/-! ## A348423.P11567205246137404485

`filter[A090670(n+1), A005171(#)]`
-/

namespace A348423.P11567205246137404485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A348423.P11567205246137404485

/-! ## A348423.P8228354377265214497

`filter[A090670(n+1), A066247(#)]`
-/

namespace A348423.P8228354377265214497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A348423.P8228354377265214497

/-! ## A348423.P17092629066241862674

`filter[A090670(n+1), A202238(#)]`
-/

namespace A348423.P17092629066241862674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A348423.P17092629066241862674

/-! ## A348423.P17048047951986309526

`filter[A090670(n+1), A292438(#)]`
-/

namespace A348423.P17048047951986309526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A348423.P17048047951986309526

/-! ## A348423.P6428559374385872715

`filter[A090670(n+1), A323162(#)]`
-/

namespace A348423.P6428559374385872715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A348423.P6428559374385872715

/-! ## A348423.P17170906709016044078

`A000265(A348421(n+1)+3)`
-/

namespace A348423.P17170906709016044078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A348421 (n + 1) + 3).toNat

end

end A348423.P17170906709016044078

/-! ## A348423.P1496460531186378150

`record[A000265(A332078(n+1)+3)]`
-/

namespace A348423.P1496460531186378150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A332078 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348423.P1496460531186378150

/-! ## A348423.P3733796505996225156

`∩[A038509(n+1), A090670(n+1)]`
-/

namespace A348423.P3733796505996225156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P3733796505996225156

/-! ## A348423.P5833696883663018491

`∩[A038509(n+1), A098090(n+1)]`
-/

namespace A348423.P5833696883663018491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P5833696883663018491

/-! ## A348423.P1151034820022712892

`∩[A090670(n+1), A090818(n+1)]`
-/

namespace A348423.P1151034820022712892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P1151034820022712892

/-! ## A348423.P14171431379619115705

`∩[A067800(n+1), A090670(n+1)]`
-/

namespace A348423.P14171431379619115705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P14171431379619115705

/-! ## A348423.P7576847446543082322

`∩[A067800(n+1), A098090(n+1)]`
-/

namespace A348423.P7576847446543082322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P7576847446543082322

/-! ## A348423.P12031473635571797395

`∩[A067887(n+1), A090670(n+1)]`
-/

namespace A348423.P12031473635571797395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P12031473635571797395

/-! ## A348423.P4192873813560874071

`∩[A014076(n+1), A090670(n+1)]`
-/

namespace A348423.P4192873813560874071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P4192873813560874071

/-! ## A348423.P13639609110443306122

`∩[A014076(n+1), A098090(n+1)]`
-/

namespace A348423.P13639609110443306122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P13639609110443306122

/-! ## A348423.P17640857711816980806

`∩[A071904(n+1), A090670(n+1)]`
-/

namespace A348423.P17640857711816980806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P17640857711816980806

/-! ## A348423.P2459436496885375231

`∩[A071904(n+1), A098090(n+1)]`
-/

namespace A348423.P2459436496885375231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P2459436496885375231

/-! ## A348423.P6979555001252121149

`∩[A014076(n+1), A034784(n+1)+2]`
-/

namespace A348423.P6979555001252121149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P6979555001252121149

/-! ## A348423.P7539221703919561874

`∩[A005097(n+1)+2, A071904(n+1)]`
-/

namespace A348423.P7539221703919561874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348423.P7539221703919561874

/-!
# A348424: a(n) is the difference between the index of the prime p = A035345(n)-A002110(n) and n, or 0 if the difference is composite.

The programs for A348424, there is no canonical definition to state claims against.
-/

/-! ## A348424.P14743641403449148796

`A098168(C(2, n+1)+n)-(C(2, n+1)+n)`
-/

namespace A348424.P14743641403449148796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098168 (Nat.choose 2 (n + 1) + n) - (Nat.choose 2 (n + 1) + n : ℤ)

end

end A348424.P14743641403449148796

/-! ## A348424.P14354704238577291104

`A098168(n)-n*a(A000038(n))` with `a(0)=1`
-/

namespace A348424.P14354704238577291104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098168 n - (n : ℤ) * a (A000038 n).toNat

end

end A348424.P14354704238577291104

/-! ## A348424.P9141498776260626383

`(A098168(n)-n)*a(A060952(n))` with `a(0)=1`
-/

namespace A348424.P9141498776260626383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A098168 n - (n : ℤ)) * a (A060952 n).toNat

end

end A348424.P9141498776260626383

/-! ## A348424.P14549829275397356064

`A098168(round(sqrt(n²+1)))-A028310(n)`
-/

namespace A348424.P14549829275397356064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098168 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A028310 n

end

end A348424.P14549829275397356064

/-! ## A348424.P3622543669153146719

`A098168(A000007(a(n-1))+n)-n` with `a(0)=1`
-/

namespace A348424.P3622543669153146719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098168 (A000007 (a (n - 1)).toNat + (n : ℤ)).toNat - (n : ℤ)

end

end A348424.P3622543669153146719

/-! ## A348424.P10412037676817948429

`A098168(n)-n*a(a(A025427(n))-1)` with `a(0)=1`
-/

namespace A348424.P10412037676817948429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098168 n - (n : ℤ) * a (a (A025427 n).toNat - 1).toNat

end

end A348424.P10412037676817948429

/-! ## A348424.P10926753204097946387

`A098168(A000007(n)+n)-floor(sqrt(n²+1))`
-/

namespace A348424.P10926753204097946387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098168 (A000007 n + (n : ℤ)).toNat - (Nat.sqrt (n ^ 2 + 1) : ℤ)

end

end A348424.P10926753204097946387

/-! ## A348424.P11028262076447348526

`A098168(A233583(n+1))-A233583(n+1)`
-/

namespace A348424.P11028262076447348526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098168 (A233583 (n + 1)).toNat - A233583 (n + 1)

end

end A348424.P11028262076447348526

/-! ## A348424.P12871858094761098058

`abs(A000007(n)+n-A098168(A000007(n)+n))`
-/

namespace A348424.P12871858094761098058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n + (n : ℤ) - A098168 (A000007 n + (n : ℤ)).toNat|

end

end A348424.P12871858094761098058

/-! ## A348424.P6784720527393422072

`n-1+A098168(A000007(n)+n)-A004273(n)`
-/

namespace A348424.P6784720527393422072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A098168 (A000007 n + (n : ℤ)).toNat - A004273 n)

end

end A348424.P6784720527393422072

/-!
# A348425: Squares whose second arithmetic derivative is a square.

The programs for A348425, there is no canonical definition to state claims against.
-/

/-! ## A348425.P792251544799346422

`record[A007966(A140479(n))²]`
-/

namespace A348425.P792251544799346422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A140479 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348425.P792251544799346422

/-! ## A348425.P2393674572613829920

`record[A007966(A255594(n))²]`
-/

namespace A348425.P2393674572613829920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A255594 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348425.P2393674572613829920

/-! ## A348425.P9021272020960561618

`eq[A100346(n), A331048(n+2)]²`
-/

namespace A348425.P9021272020960561618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331048 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A348425.P9021272020960561618

/-!
# A348427: Composite k for which sigma(k) is divisible by the sum of the arithmetic derivatives of the divisors of k.

The programs for A348427, there is no canonical definition to state claims against.
-/

/-! ## A348427.P952624647132794713

`A239934(A026395(n))+A026345(2*(n+1))`
-/

namespace A348427.P952624647132794713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239934 (A026395 n).toNat + A026345 (2 * (n + 1))

end

end A348427.P952624647132794713

/-!
# A348428: Positive integers m that are equal to the determinant of the left circulant matrix formed by the decimal digits of m.

The programs for A348428, there is no canonical definition to state claims against.
-/

/-! ## A348428.P7829389242498851114

`A219327(A281724(n+1))`
-/

namespace A348428.P7829389242498851114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219327 (A281724 (n + 1)).toNat

end

end A348428.P7829389242498851114

/-! ## A348428.P807277184558302337

`A219326(A199343(n)+∑[A036598(n)])`
-/

namespace A348428.P807277184558302337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (A199343 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348428.P807277184558302337

/-! ## A348428.P4480728829884070112

`A219326(A128606(n+1)-A235943(n))`
-/

namespace A348428.P4480728829884070112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (A128606 (n + 1) - A235943 n).toNat

end

end A348428.P4480728829884070112

/-! ## A348428.P10594663017435333461

`A219327(lcm(A027828(n), A109795(n+1)))`
-/

namespace A348428.P10594663017435333461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219327 (Int.lcm (A027828 n) (A109795 (n + 1)))

end

end A348428.P10594663017435333461

/-! ## A348428.P18097701893916857891

`A219327(A109795(n+1)*A146711(n+2))`
-/

namespace A348428.P18097701893916857891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219327 (A109795 (n + 1) * A146711 (n + 2)).toNat

end

end A348428.P18097701893916857891

/-!
# A348429: Perfect powers m^k, m >= 1, k >= 2 such that m and m^k both are palindromes.

The programs for A348429, there is no canonical definition to state claims against.
-/

/-! ## A348429.P15300028898733847832

`A075786(∑[A283950(n+1)!])`
-/

namespace A348429.P15300028898733847832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A283950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075786 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348429.P15300028898733847832

/-! ## A348429.P17120564116996022907

`A075786(A138302(n+1))%A092047(3*n+2)`
-/

namespace A348429.P17120564116996022907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075786 (A138302 (n + 1)).toNat) (A092047 (3 * n + 2))

end

end A348429.P17120564116996022907

/-! ## A348429.P7666568928295215064

`filter[A075786(n+1), A105586(#)]`
-/

namespace A348429.P7666568928295215064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105586 (f1 j).toNat = 1) n)

end

end A348429.P7666568928295215064

/-! ## A348429.P8046255372769552327

`filter[A075786(n+1), A135947(#)]`
-/

namespace A348429.P8046255372769552327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A348429.P8046255372769552327

/-!
# A348431: a(n) = (n')^(n'), where ' is the arithmetic derivative of n.

The programs for A348431, there is no canonical definition to state claims against.
-/

/-! ## A348431.P9651503571322523054

`A000312(A003415(n))`
-/

namespace A348431.P9651503571322523054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A003415 n).toNat

end

end A348431.P9651503571322523054

/-! ## A348431.P14944724217967416163

`A110138(2*A003415(n))`
-/

namespace A348431.P14944724217967416163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (2 * A003415 n).toNat

end

end A348431.P14944724217967416163

/-! ## A348431.P12087015047954706426

`A000312(A168036(n)+n)`
-/

namespace A348431.P12087015047954706426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A168036 n + (n : ℤ)).toNat

end

end A348431.P12087015047954706426

/-! ## A348431.P5532768831268763698

`A000312(A129283(n)-n)`
-/

namespace A348431.P5532768831268763698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A129283 n - (n : ℤ)).toNat

end

end A348431.P5532768831268763698

/-! ## A348431.P4296160105618874541

`A003415(n)^(A129283(n)-n)`
-/

namespace A348431.P4296160105618874541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 n : ℚ) ^ (A129283 n - (n : ℤ) : ℤ)

end

end A348431.P4296160105618874541

/-!
# A348433: a(1) = 1; a(n+1) = 2*a(n) if the digit sum of a(n) is already in the sequence, otherwise a(n+1) = digitsum(a(n)).

The programs for A348433, there is no canonical definition to state claims against.
-/

/-! ## A348433.P1828584886658496834

`A309773(A114183(n+2))`
-/

namespace A348433.P1828584886658496834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309773 (A114183 (n + 2)).toNat

end

end A348433.P1828584886658496834

/-!
# A348438: Where prime(n) appears for the first time in A088177.

The programs for A348438, there is no canonical definition to state claims against.
-/

/-! ## A348438.P16485060767741205307

`A348437(p?[comp[n²]])`
-/

namespace A348438.P16485060767741205307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A348438.P16485060767741205307

/-! ## A348438.P13308309022414919900

`A348439(n+1)+log2(gcd(2, n))`
-/

namespace A348438.P13308309022414919900
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A348439 (n + 1) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A348438.P13308309022414919900

/-! ## A348438.P2177180259081983520

`A348437(∑{p}[p?[xor(1, n)+1], #])`
-/

namespace A348438.P2177180259081983520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A348438.P2177180259081983520

/-! ## A348438.P15749496470565808291

`A348437(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A348438.P15749496470565808291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A348438.P15749496470565808291

/-! ## A348438.P1292988812066960512

`record[A341492(n+2)]+and(1, n+1)`
-/

namespace A348438.P1292988812066960512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.land 1 (n + 1) : ℤ)

end

end A348438.P1292988812066960512

/-! ## A348438.P6607065258985235805

`A348437(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A348438.P6607065258985235805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A348438.P6607065258985235805

/-! ## A348438.P927932456620871674

`A348437(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A348438.P927932456620871674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A348438.P927932456620871674

/-! ## A348438.P10639477433022699552

`A348437(Δ[A007504(n)])`
-/

namespace A348438.P10639477433022699552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (f1 (n + 1) - f1 n).toNat

end

end A348438.P10639477433022699552

/-! ## A348438.P14734851157440159578

`A348437(A000040(n+1))`
-/

namespace A348438.P14734851157440159578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (A000040 (n + 1)).toNat

end

end A348438.P14734851157440159578

/-!
# A348439: Where prime(n) appears for the first time in A088178.

The programs for A348439, there is no canonical definition to state claims against.
-/

/-! ## A348439.P2903879801678439252

`record[A341492(n+2)]`
-/

namespace A348439.P2903879801678439252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348439.P2903879801678439252

/-! ## A348439.P9184634111801178246

`A348438(n+1)-log2(gcd(2, n))`
-/

namespace A348439.P9184634111801178246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A348438 (n + 1) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A348439.P9184634111801178246

/-! ## A348439.P236956716659186613

`A341492(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A348439.P236956716659186613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A348439.P236956716659186613

/-! ## A348439.P13596139081876496623

`A341492(Δ[A007504(n)])`
-/

namespace A348439.P13596139081876496623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (f1 (n + 1) - f1 n).toNat

end

end A348439.P13596139081876496623

/-! ## A348439.P14680611376570060266

`A341492(record[A162753(n)])`
-/

namespace A348439.P14680611376570060266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348439.P14680611376570060266

/-! ## A348439.P17972442284685258104

`A341492(A000040(n+1))`
-/

namespace A348439.P17972442284685258104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A000040 (n + 1)).toNat

end

end A348439.P17972442284685258104

/-! ## A348439.P16407635416032010938

`A341492(A008578(n+2))`
-/

namespace A348439.P16407635416032010938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A008578 (n + 2)).toNat

end

end A348439.P16407635416032010938

/-! ## A348439.P15646856205347000447

`A341492(A182986(n+2))`
-/

namespace A348439.P15646856205347000447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A182986 (n + 2)).toNat

end

end A348439.P15646856205347000447

/-! ## A348439.P5891114583609226805

`A341492(A324050(n+2))`
-/

namespace A348439.P5891114583609226805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A324050 (n + 2)).toNat

end

end A348439.P5891114583609226805

/-!
# A348440: Records in A088177.

The programs for A348440, the canonical program `A348440.P2216143150370968055` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348440 has offset 1).

The definition of A348440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348440.P2435995925605296702

`eq[A107286(n), A317086(A072480(n))]`
-/

namespace A348440.P2435995925605296702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 (A072480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348440.P2435995925605296702

namespace A348440

/-- `eq[A107286(n), A317086(A072480(n))]` -/
def P2435995925605296702.Spec : Prop :=
  ∀ n, (P2435995925605296702.a n : ℤ) = A348440 (n + 1)

end A348440

/-! ## A348440.P2216143150370968055

`record[gcd(n+1, A028557(A337246(n+1)))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348440

/-- `record[gcd(n+1, A028557(A337246(n+1)))]` -/
def P2216143150370968055.Spec : Prop :=
  ∀ n, (P2216143150370968055.a n : ℤ) = A348440 (n + 1)

theorem P2216143150370968055.correct : P2216143150370968055.Spec := by
  intro n
  simp only [A348440, Nat.add_sub_cancel]

end A348440

/-! ## A348440.P9567514843316417815

`eq[A211110(n)%A053989(n+1), A082024(n)]`
-/

namespace A348440.P9567514843316417815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211110 n) (A053989 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348440.P9567514843316417815

namespace A348440

/-- `eq[A211110(n)%A053989(n+1), A082024(n)]` -/
def P9567514843316417815.Spec : Prop :=
  ∀ n, (P9567514843316417815.a n : ℤ) = A348440 (n + 1)

end A348440

/-! ## A348440.P16143010145990344032

`eq[A133310(A082024(n)), A230850(n+1)]`
-/

namespace A348440.P16143010145990344032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A082024 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348440.P16143010145990344032

namespace A348440

/-- `eq[A133310(A082024(n)), A230850(n+1)]` -/
def P16143010145990344032.Spec : Prop :=
  ∀ n, (P16143010145990344032.a n : ℤ) = A348440 (n + 1)

end A348440

/-! ## A348440.P16059796351219009200

`record[A088177(n+1)]`
-/

namespace A348440.P16059796351219009200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348440.P16059796351219009200

namespace A348440

/-- `record[A088177(n+1)]` -/
def P16059796351219009200.Spec : Prop :=
  ∀ n, P16059796351219009200.a n = A348440 (n + 1)

end A348440

/-! ## A348440.P16738523040754642432

`A088177(A348441(n+1))`
-/

namespace A348440.P16738523040754642432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (A348441 (n + 1)).toNat

end

end A348440.P16738523040754642432

namespace A348440

/-- `A088177(A348441(n+1))` -/
def P16738523040754642432.Spec : Prop :=
  ∀ n, P16738523040754642432.a n = A348440 (n + 1)

end A348440

/-!
# A348441: Indices of records in A088177.

The programs for A348441, there is no canonical definition to state claims against.
-/

/-! ## A348441.P3485102864450374626

`A348437(A348440(n+1))`
-/

namespace A348441.P3485102864450374626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (A348440 (n + 1)).toNat

end

end A348441.P3485102864450374626

/-! ## A348441.P11870913156682089510

`A348437(eq[A211110(n)%A053989(n+1), A082024(n)])`
-/

namespace A348441.P11870913156682089510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211110 n) (A053989 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348441.P11870913156682089510

/-! ## A348441.P17612341469445451838

`A348437(record[A088177(n+1)])`
-/

namespace A348441.P17612341469445451838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348441.P17612341469445451838

/-! ## A348441.P1197393753639824549

`A348437(record[A088178(n)/a(n-1)])` with `a(0)=1`
-/

namespace A348441.P1197393753639824549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A088178 n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348437 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A348441.P1197393753639824549

/-!
# A348442: Records in A088178.

The programs for A348442, there is no canonical definition to state claims against.
-/

/-! ## A348442.P9000740842227392912

`record[A088178(n+1)]`
-/

namespace A348442.P9000740842227392912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348442.P9000740842227392912

/-! ## A348442.P16251641977572398340

`A088178(A348443(n+1))`
-/

namespace A348442.P16251641977572398340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088178 (A348443 (n + 1)).toNat

end

end A348442.P16251641977572398340

/-! ## A348442.P7959207219638288971

`record[A088177(n+1)*A088177(n+2)]`
-/

namespace A348442.P7959207219638288971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (n + 1) * A088177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348442.P7959207219638288971

/-! ## A348442.P14605085662627780547

`record[A088178(A028310(n))%A000954(n)]`
-/

namespace A348442.P14605085662627780547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088178 (A028310 n).toNat) (A000954 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348442.P14605085662627780547

/-! ## A348442.P4430293653866433956

`record[A088178(A028310(n))-A000035(2*n)]`
-/

namespace A348442.P4430293653866433956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088178 (A028310 n).toNat - A000035 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348442.P4430293653866433956

/-!
# A348443: Indices of records in A088178.

The programs for A348443, there is no canonical definition to state claims against.
-/

/-! ## A348443.P13896022393052270239

`A341492(A348442(n+1))`
-/

namespace A348443.P13896022393052270239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A348442 (n + 1)).toNat

end

end A348443.P13896022393052270239

/-! ## A348443.P15797552630004977411

`A341492(record[A088178(n+1)])`
-/

namespace A348443.P15797552630004977411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348443.P15797552630004977411

/-! ## A348443.P9599123745210118208

`A341492(record[A088177(n+1)*A088177(n+2)])`
-/

namespace A348443.P9599123745210118208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (n + 1) * A088177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348443.P9599123745210118208

/-!
# A348444: If A348243(n) = i, then a(n) = 1 + number of copies of i that have already appeared in A348243.

The programs for A348444, there is no canonical definition to state claims against.
-/

/-! ## A348444.P7953581345450721829

`A020639(A025586(A348249(n+1)-n))`
-/

namespace A348444.P7953581345450721829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025586 (A348249 (n + 1) - (n : ℤ)).toNat).toNat

end

end A348444.P7953581345450721829

/-! ## A348444.P8209186357284087649

`A169695(A348250(n+1)+n²)`
-/

namespace A348444.P8209186357284087649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A348250 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A348444.P8209186357284087649

/-! ## A348444.P5871747108231666114

`2-A100995(n+1)^A348250(n+1)`
-/

namespace A348444.P5871747108231666114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A100995 (n + 1) : ℚ) ^ (A348250 (n + 1) : ℤ)

end

end A348444.P5871747108231666114

/-! ## A348444.P18322747953053093807

`A000032(A100995(n+1)^A348250(n+1))`
-/

namespace A348444.P18322747953053093807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A100995 (n + 1) : ℚ) ^ (A348250 (n + 1) : ℤ))).toNat

end

end A348444.P18322747953053093807

/-! ## A348444.P7005772401426606024

`A054977(A100995(n+1)^A348250(n+1))`
-/

namespace A348444.P7005772401426606024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (SequenceMachineLib.roundAway ((A100995 (n + 1) : ℚ) ^ (A348250 (n + 1) : ℤ))).toNat

end

end A348444.P7005772401426606024

/-! ## A348444.P11444987776079424762

`A087204(A100995(n+1)^A348250(n+1))`
-/

namespace A348444.P11444987776079424762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (SequenceMachineLib.roundAway ((A100995 (n + 1) : ℚ) ^ (A348250 (n + 1) : ℤ))).toNat

end

end A348444.P11444987776079424762

/-! ## A348444.P11156981489446270647

`A000032(A348250(A008834(n+1))^A348250(n+1))`
-/

namespace A348444.P11156981489446270647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A348250 (A008834 (n + 1)).toNat : ℚ) ^ (A348250 (n + 1) : ℤ))).toNat

end

end A348444.P11156981489446270647

/-! ## A348444.P12689051142211555418

`A087204(A348250(A242965(n+1))^A348250(n+1))`
-/

namespace A348444.P12689051142211555418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (SequenceMachineLib.roundAway ((A348250 (A242965 (n + 1)).toNat : ℚ) ^ (A348250 (n + 1) : ℤ))).toNat

end

end A348444.P12689051142211555418

/-! ## A348444.P7354062404525013663

`A141310(A019428(A348250(n+1)))`
-/

namespace A348444.P7354062404525013663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A019428 (A348250 (n + 1)).toNat).toNat

end

end A348444.P7354062404525013663

/-! ## A348444.P10075121585401393037

`ceil(A348250(n+1)/A272263(n))+1`
-/

namespace A348444.P10075121585401393037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348250 (n + 1) : ℚ) / (A272263 n : ℚ)⌉ + 1

end

end A348444.P10075121585401393037

/-! ## A348444.P18382147011214176907

`A000124(ceil(A348250(n+1)/A272263(n)))`
-/

namespace A348444.P18382147011214176907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ⌈(A348250 (n + 1) : ℚ) / (A272263 n : ℚ)⌉.toNat

end

end A348444.P18382147011214176907

/-! ## A348444.P3355310479419358627

`A071585(ceil(A348250(n+1)/A272263(n)))`
-/

namespace A348444.P3355310479419358627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 ⌈(A348250 (n + 1) : ℚ) / (A272263 n : ℚ)⌉.toNat

end

end A348444.P3355310479419358627

/-! ## A348444.P1982779177069958181

`A000032(A094497(n)^A348250(n+1))`
-/

namespace A348444.P1982779177069958181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A094497 n : ℚ) ^ (A348250 (n + 1) : ℤ))).toNat

end

end A348444.P1982779177069958181

/-!
# A348445: Irregular triangle read by rows: T(n,k) (n >= 0) is the number of ways of selecting k objects from n objects arranged on a line with no two selected objects having unit separation (i.e. having exactly one object between them).

The programs for A348445, there is no canonical definition to state claims against.
-/

/-! ## A348445.P13743364364687602190

`A335964(lt[1, n*A335964(n)])`
-/

namespace A348445.P13743364364687602190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A335964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A348445.P13743364364687602190

/-! ## A348445.P12183767147541568326

`A335964(lt[char[n^3], A335964(n)])`
-/

namespace A348445.P12183767147541568326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A348445.P12183767147541568326

/-! ## A348445.P6336286174832214590

`A335964(lt[A269303(n+1), A001497(n)])`
-/

namespace A348445.P6336286174832214590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335964 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348445.P6336286174832214590

/-! ## A348445.P13425074902303244305

`A172119(lt[A259358(n), A111421(n+2)])`
-/

namespace A348445.P13425074902303244305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111421 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348445.P13425074902303244305

/-!
# A348446: a(n) = A307720(2*n-1) - A307220(2*n).

The programs for A348446, there is no canonical definition to state claims against.
-/

/-! ## A348446.P9590271390157880034

`A348241(n)-A348242(n+1)`
-/

namespace A348446.P9590271390157880034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 n - A348242 (n + 1)

end

end A348446.P9590271390157880034

/-! ## A348446.P17886540853859606935

`A348241(n)-A307720(2*(n+1))`
-/

namespace A348446.P17886540853859606935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 n - A307720 (2 * (n + 1))

end

end A348446.P17886540853859606935

/-! ## A348446.P8359160933048889225

`A307720(Δ[n²])-A348242(n+1)`
-/

namespace A348446.P8359160933048889225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A348242 (n + 1)

end

end A348446.P8359160933048889225

/-! ## A348446.P5937084110262631000

`A307720(Δ[n²])-A307720(2*(n+1))`
-/

namespace A348446.P5937084110262631000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A307720 (2 * (n + 1))

end

end A348446.P5937084110262631000

/-! ## A348446.P16605534216686069737

`A348241(n)-A307730(2*n+1)/A348241(n)`
-/

namespace A348446.P16605534216686069737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348241 n : ℚ) - (A307730 (2 * n + 1) : ℚ) / (A348241 n : ℚ)

end

end A348446.P16605534216686069737

/-!
# A348447: Irregular triangle read by rows: T(n,k) (n >= 0) is the number of ways of selecting k objects from n objects arranged in a circle with no two selected objects having unit separation (i.e. having exactly one object between them).

The programs for A348447, there is no canonical definition to state claims against.
-/

/-! ## A348447.P3689672548135682650

`A156251(n^A025429(n+4))`
-/

namespace A348447.P3689672548135682650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025429 (n + 4) : ℤ))).toNat

end

end A348447.P3689672548135682650

/-! ## A348447.P10887594441655719563

`A000374(A014085(n)^A002264(n))`
-/

namespace A348447.P10887594441655719563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (SequenceMachineLib.roundAway ((A014085 n : ℚ) ^ (A002264 n : ℤ))).toNat

end

end A348447.P10887594441655719563

/-! ## A348447.P7146358097522715260

`A007318(lt[A236343(n), A106506(n+1)])`
-/

namespace A348447.P7146358097522715260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348447.P7146358097522715260

/-! ## A348447.P12924090755897854915

`A152271(A049472(n+1)%A152638(n+1))`
-/

namespace A348447.P12924090755897854915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (Int.tmod (A049472 (n + 1)) (A152638 (n + 1))).toNat

end

end A348447.P12924090755897854915

/-! ## A348447.P12446906747053860237

`A152271(A064488(n+1)%A152638(n+1))`
-/

namespace A348447.P12446906747053860237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (Int.tmod (A064488 (n + 1)) (A152638 (n + 1))).toNat

end

end A348447.P12446906747053860237

/-!
# A348448: Records in A307730.

The programs for A348448, there is no canonical definition to state claims against.
-/

/-! ## A348448.P3760660565023050610

`record[A348243(n+1)]`
-/

namespace A348448.P3760660565023050610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348448.P3760660565023050610

/-! ## A348448.P5073011557644957803

`record[A348395(n+1)]`
-/

namespace A348448.P5073011557644957803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348448.P5073011557644957803

/-! ## A348448.P12577527378925905811

`record[A307730(n+1)]`
-/

namespace A348448.P12577527378925905811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348448.P12577527378925905811

/-! ## A348448.P2981389375150808456

`A307730(A348449(n+1))`
-/

namespace A348448.P2981389375150808456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (A348449 (n + 1)).toNat

end

end A348448.P2981389375150808456

/-! ## A348448.P17763872359365906036

`record[A348459(n+1)*A348460(n+1)]`
-/

namespace A348448.P17763872359365906036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348459 (n + 1) * A348460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348448.P17763872359365906036

/-!
# A348449: Indices of records in A307730.

The programs for A348449, there is no canonical definition to state claims against.
-/

/-! ## A348449.P8287690641067578954

`A348246(A348448(n+1))`
-/

namespace A348449.P8287690641067578954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A348448 (n + 1)).toNat

end

end A348449.P8287690641067578954

/-! ## A348449.P15298611624950399142

`A348246(record[A348243(n+1)])`
-/

namespace A348449.P15298611624950399142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348449.P15298611624950399142

/-! ## A348449.P911150854461054403

`A348246(record[A348395(n+1)])`
-/

namespace A348449.P911150854461054403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348449.P911150854461054403

/-! ## A348449.P12488805808466014552

`A348246(record[A307720(n+1)*A307720(n+2)])`
-/

namespace A348449.P12488805808466014552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1) * A307720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348449.P12488805808466014552

/-! ## A348449.P17434056412015263179

`A348246(record[A307730(n+1)])`
-/

namespace A348449.P17434056412015263179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348449.P17434056412015263179

/-!
# A348450: Partial sums of A307730.

The programs for A348450, there is no canonical definition to state claims against.
-/

/-! ## A348450.P863297560392343988

`∑[A307730(n+1)]`
-/

namespace A348450.P863297560392343988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348450.P863297560392343988

/-! ## A348450.P3021195499409976444

`∑[A307730(-xor(n, -1))]-(2*n)%2`
-/

namespace A348450.P3021195499409976444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 * n % 2 : ℕ) : ℤ)

end

end A348450.P3021195499409976444

/-! ## A348450.P2210808553351986777

`∑[A348459(n+1)*A348460(n+1)]`
-/

namespace A348450.P2210808553351986777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348459 (n + 1) * A348460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348450.P2210808553351986777

/-! ## A348450.P8134453436359914697

`∑[A307720(n+1)*A307720(n+2)]`
-/

namespace A348450.P8134453436359914697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1) * A307720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348450.P8134453436359914697

/-! ## A348450.P15577416021448688841

`A020985(n)²*∑[A307730(-xor(n, -1))]`
-/

namespace A348450.P15577416021448688841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348450.P15577416021448688841

/-! ## A348450.P4994304753937529559

`∑[A307730(-xor(n, -1))]%A020705(n)²`
-/

namespace A348450.P4994304753937529559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A020705 n ^ 2)

end

end A348450.P4994304753937529559

/-!
# A348451: Triangle read by rows: T(n,k) (1 <= k <= n) is the number of 3-extensions of an n-set over all choices of 3-partitions of the n-set.

The programs for A348451, there is no canonical definition to state claims against.
-/

/-! ## A348451.P7982164873435388925

`A153249(A248669(n+1))-2^∑{digits}[n, #%C(n, #)]`
-/

namespace A348451.P7982164873435388925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153249 (A248669 (n + 1)).toNat - (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum : ℤ)

end

end A348451.P7982164873435388925

/-! ## A348451.P17730847759136057946

`A039598(n)-A100910(A001519(n))`
-/

namespace A348451.P17730847759136057946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - A100910 (A001519 n).toNat

end

end A348451.P17730847759136057946

/-! ## A348451.P12086219474382578510

`A039598(n)-A011731(A097861(n))`
-/

namespace A348451.P12086219474382578510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - A011731 (A097861 n).toNat

end

end A348451.P12086219474382578510

/-! ## A348451.P4624833558878394093

`A039598(n)-A079365(A097710(n))`
-/

namespace A348451.P4624833558878394093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - A079365 (A097710 n).toNat

end

end A348451.P4624833558878394093

/-! ## A348451.P2086852955736981266

`A039598(n)-A184954(A126093(n))`
-/

namespace A348451.P2086852955736981266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - A184954 (A126093 n).toNat

end

end A348451.P2086852955736981266

/-!
# A348453: Irregular triangle read by rows: T(n,k) (n >= 1, 1 <= k <= number of divisors of n^2) is the number of ways to tile an n X n chessboard with d_k rook-connected polyominoes of equal area, where d_k is the k-th divisor of n^2.

The programs for A348453, there is no canonical definition to state claims against.
-/

/-! ## A348453.P5963668742697241009

`A348452(lt[A025469(n), A348452(n+1)]+1)`
-/

namespace A348453.P5963668742697241009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A348453.P5963668742697241009

/-! ## A348453.P17134535715512752871

`A348452(lt[A000007(3*n+4), A348452(n+1)]+1)`
-/

namespace A348453.P17134535715512752871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A348453.P17134535715512752871

/-! ## A348453.P14043135041340687611

`A348455(∑[A278657(n+1)])`
-/

namespace A348453.P14043135041340687611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348455 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348453.P14043135041340687611

/-! ## A348453.P17047856053111002149

`filter[A348452(n+1), A014578(#)]`
-/

namespace A348453.P17047856053111002149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A348453.P17047856053111002149

/-! ## A348453.P5776943843294573917

`A348455(∑[A103997(A099390(n+1))])`
-/

namespace A348453.P5776943843294573917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (A099390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348455 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348453.P5776943843294573917

/-!
# A348455: Irregular triangle read by rows: T(n,k) (n >= 1, 1 <= k <= number of divisors of n^2) is the number of ways to tile an n X n chessboard with rook-connected polyominoes of area d_k, where d_k is the k-th divisor of n^2.

The programs for A348455, there is no canonical definition to state claims against.
-/

/-! ## A348455.P1246790328470416676

`A348453(∑[A278657(n+1)])`
-/

namespace A348455.P1246790328470416676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348455.P1246790328470416676

/-! ## A348455.P6413231334303006659

`A348453(∑[A103997(A099390(n+1))])`
-/

namespace A348455.P6413231334303006659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (A099390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348455.P6413231334303006659

/-! ## A348455.P16208176633553910096

`A348453(A103997(A099390(n+1))+n)`
-/

namespace A348455.P16208176633553910096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348453 (A103997 (A099390 (n + 1)).toNat + (n : ℤ)).toNat

end

end A348455.P16208176633553910096

/-! ## A348455.P2493247545867192969

`A348453(A044917(n+1)%A328945(n+1))`
-/

namespace A348455.P2493247545867192969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348453 (Int.tmod (A044917 (n + 1)) (A328945 (n + 1))).toNat

end

end A348455.P2493247545867192969

/-!
# A348456: Number of ways to dissect a 2*n X 2*n chessboard into two polyominoes each of area 2*n^2.

The programs for A348456, there is no canonical definition to state claims against.
-/

/-! ## A348456.P13261060996652870149

`record[A348453(A357643(n))]`
-/

namespace A348456.P13261060996652870149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348453 (A357643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348456.P13261060996652870149

/-!
# A348458: Partial sums of A307720.

The programs for A348458, there is no canonical definition to state claims against.
-/

/-! ## A348458.P5532573478464565562

`∑[A307720(n+1)]`
-/

namespace A348458.P5532573478464565562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348458.P5532573478464565562

/-! ## A348458.P13000579962704839517

`∑[A307730(n)/a(n-1)]` with `a(0)=1`
-/

namespace A348458.P13000579962704839517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A307730 n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348458.P13000579962704839517

/-! ## A348458.P9802242520882321772

`a(n-1)+A307720(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A348458.P9802242520882321772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A307720 (n + 1) + A000038 n)

end

end A348458.P9802242520882321772

/-! ## A348458.P853685259489730167

`a(n-1)+A307720(n+1)/A060680(A060658(n+1))` with `a(0)=1`
-/

namespace A348458.P853685259489730167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A307720 (n + 1) : ℚ) / (A060680 (A060658 (n + 1)).toNat : ℚ)

end

end A348458.P853685259489730167

/-! ## A348458.P15193625205636581914

`a(n-1)+A307720(n+1)+A033684(A087475(n))` with `a(0)=1`
-/

namespace A348458.P15193625205636581914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A307720 (n + 1) + A033684 (A087475 n).toNat)

end

end A348458.P15193625205636581914

/-!
# A348459: a(n) = max(A307720(n), A307720(n+1)).

The programs for A348459, there is no canonical definition to state claims against.
-/

/-! ## A348459.P17247846580338910827

`A348582(A307730(n+1))`
-/

namespace A348459.P17247846580338910827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (A307730 (n + 1)).toNat

end

end A348459.P17247846580338910827

/-! ## A348459.P12622795253628914115

`A307730(n+1)/A348460(n+1)`
-/

namespace A348459.P12622795253628914115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307730 (n + 1) : ℚ) / (A348460 (n + 1) : ℚ)

end

end A348459.P12622795253628914115

/-! ## A348459.P13360090484021824212

`A348582(A307720(n+1)*A307720(n+2))`
-/

namespace A348459.P13360090484021824212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (A307720 (n + 1) * A307720 (n + 2)).toNat

end

end A348459.P13360090484021824212

/-! ## A348459.P13690375278780081867

`A307720(n+1)+A307720(n+2)-A348460(n+1)`
-/

namespace A348459.P13690375278780081867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1) + (A307720 (n + 2) - A348460 (n + 1))

end

end A348459.P13690375278780081867

/-! ## A348459.P2468288563742713216

`A307720(n+1)*A307720(n+2)/A348581(A307730(n+1))`
-/

namespace A348459.P2468288563742713216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307720 (n + 1) * A307720 (n + 2) : ℚ) / (A348581 (A307730 (n + 1)).toNat : ℚ)

end

end A348459.P2468288563742713216

/-! ## A348459.P7127160312831352846

`A348241(A307707(∑[n]+1))`
-/

namespace A348459.P7127160312831352846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 (A307707 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A348459.P7127160312831352846

/-! ## A348459.P17647157459087287706

`A307720(Δ[A110654((n+1)²)])`
-/

namespace A348459.P17647157459087287706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (f1 (n + 1) - f1 n).toNat

end

end A348459.P17647157459087287706

/-! ## A348459.P14265463911028352624

`A307720(A307707(A007590(2*n+3)))`
-/

namespace A348459.P14265463911028352624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (A307707 (A007590 (2 * n + 3)).toNat).toNat

end

end A348459.P14265463911028352624

/-! ## A348459.P13954618952591252376

`A033677(A307730(n+1))+A000007(A305340(n+1))`
-/

namespace A348459.P13954618952591252376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A307730 (n + 1)).toNat + A000007 (A305340 (n + 1)).toNat

end

end A348459.P13954618952591252376

/-!
# A348460: a(n) = min(A307720(n), A307720(n+1)).

The programs for A348460, there is no canonical definition to state claims against.
-/

/-! ## A348460.P17038200188903302837

`A348581(A307730(n+1))`
-/

namespace A348460.P17038200188903302837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348581 (A307730 (n + 1)).toNat

end

end A348460.P17038200188903302837

/-! ## A348460.P8650270079537039458

`A307730(n+1)/A348459(n+1)`
-/

namespace A348460.P8650270079537039458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307730 (n + 1) : ℚ) / (A348459 (n + 1) : ℚ)

end

end A348460.P8650270079537039458

/-! ## A348460.P9273085980229776021

`A348581(A307720(n+1)*A307720(n+2))`
-/

namespace A348460.P9273085980229776021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348581 (A307720 (n + 1) * A307720 (n + 2)).toNat

end

end A348460.P9273085980229776021

/-! ## A348460.P17099220697018060578

`A307720(n+1)+A307720(n+2)-A348459(n+1)`
-/

namespace A348460.P17099220697018060578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1) + (A307720 (n + 2) - A348459 (n + 1))

end

end A348460.P17099220697018060578

/-! ## A348460.P9212201251598464638

`A001222(A260218(n+1))*A348242(A008619(n))`
-/

namespace A348460.P9212201251598464638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A260218 (n + 1)).toNat * A348242 (A008619 n).toNat

end

end A348460.P9212201251598464638

/-! ## A348460.P12949714281541392787

`A307720(Δ[A008619((n+1)²)])`
-/

namespace A348460.P12949714281541392787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (f1 (n + 1) - f1 n).toNat

end

end A348460.P12949714281541392787

/-!
# A348461: Size of largest bipartite biregular Moore graph of diameter 4 and degrees n and n.

The programs for A348461, the canonical program `A348461.P14187767951026505327` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348461 has offset 2).

The definition of A348461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348461.P14187767951026505327

`2*A053698(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348461

/-- `2*A053698(n+1)` -/
def P14187767951026505327.Spec : Prop :=
  ∀ n, P14187767951026505327.a n = A348461 (n + 2)

theorem P14187767951026505327.correct : P14187767951026505327.Spec := by
  intro n
  simp only [A348461, Nat.add_sub_cancel]

end A348461

/-!
# A348462: Size of largest bipartite biregular Moore graph of diameter 6 and degrees n and 2.

The programs for A348462, there is no canonical definition to state claims against.
-/

/-! ## A348462.P3908751516583288459

`round((n+2-sin(6))^3)`
-/

namespace A348462.P3908751516583288459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2 : ℝ) - Real.sin (6 : ℝ)) ^ 3)

end

end A348462.P3908751516583288459

/-!
# A348463: Size of largest bipartite biregular Moore graph of diameter 6 and degrees n and n.

The programs for A348463, there is no canonical definition to state claims against.
-/

/-! ## A348463.P17327376118211352873

`2*(n+2)*ceil(((n+1)²+1/2)²)`
-/

namespace A348463.P17327376118211352873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℤ) * ⌈(((n + 1) ^ 2 : ℚ) + (1 : ℚ) / 2) ^ 2⌉)

end

end A348463.P17327376118211352873

/-!
# A348465: a(n) = minimum L such that a ternary linear code of length L, dimension 6, and minimum distance n exists.

The programs for A348465, there is no canonical definition to state claims against.
-/

/-! ## A348465.P18295314067492274172

`lt[Δ[record[A014320(n+1)+n]], n-2]`
-/

namespace A348465.P18295314067492274172
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A348465.P18295314067492274172

/-! ## A348465.P15730958954674038419

`A057716(A105590(n)+2+n)`
-/

namespace A348465.P15730958954674038419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (A105590 n + 2 + (n : ℤ)).toNat

end

end A348465.P15730958954674038419

/-! ## A348465.P14483938647355292893

`∑[A107345(A344616(3*n+1))]+5`
-/

namespace A348465.P14483938647355292893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 (A344616 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A348465.P14483938647355292893

/-! ## A348465.P9302779585079571500

`record[A219658(n+12)%A219651(n+12)]`
-/

namespace A348465.P9302779585079571500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219658 (n + 12)) (A219651 (n + 12))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348465.P9302779585079571500

/-! ## A348465.P505657814615889798

`A062300(n+3)+A043096(A172270(n+6))`
-/

namespace A348465.P505657814615889798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (n + 3) + A043096 (A172270 (n + 6)).toNat

end

end A348465.P505657814615889798

/-!
# A348468: Expansion of e.g.f. sqrt(exp(x)*(2-exp(x))).

The programs for A348468, there is no canonical definition to state claims against.
-/

/-! ## A348468.P1957712183449155985

`a(n-1)-A014307(n-1)` with `a(0)=1`
-/

namespace A348468.P1957712183449155985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A014307 (n - 1)

end

end A348468.P1957712183449155985

/-! ## A348468.P7074501208508565371

`A014307(n)+1-∑[A014307(n)]`
-/

namespace A348468.P7074501208508565371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348468.P7074501208508565371

/-! ## A348468.P4682792017575185683

`A014307(n)-A004483(∑[A014307(n)])`
-/

namespace A348468.P4682792017575185683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n - A004483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348468.P4682792017575185683

/-!
# A348469: Maximal number of squares that can be formed from the grid points in a qualifying circular region of the plane that contains exactly n points of a square grid.

The programs for A348469, there is no canonical definition to state claims against.
-/

/-! ## A348469.P13876242364869900239

`A011865(n)-A369427(A000045(n+1))`
-/

namespace A348469.P13876242364869900239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n - A369427 (A000045 (n + 1)).toNat

end

end A348469.P13876242364869900239

/-! ## A348469.P13696722523736192788

`A011865(n)-A121373(A036038(3*n+5))`
-/

namespace A348469.P13696722523736192788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n - A121373 (A036038 (3 * n + 5)).toNat

end

end A348469.P13696722523736192788

/-! ## A348469.P4042657924534919678

`A011865(n)-A336356(A049297(n+1))`
-/

namespace A348469.P4042657924534919678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n - A336356 (A049297 (n + 1)).toNat

end

end A348469.P4042657924534919678

/-!
# A348470: a(n) = lpf(EKG(n)) = A020639(A064413(n)).

The programs for A348470, there is no canonical definition to state claims against.
-/

/-! ## A348470.P10766789013212036495

`A020639(A064413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348470.P10766789013212036495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064413 (n + 1)).toNat

end

end A348470.P10766789013212036495

/-! ## A348470.P12892828683357359341

`A020639(sqrt(A104125(n+1)))`
-/

namespace A348470.P12892828683357359341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A348470.P12892828683357359341

/-! ## A348470.P6743047842298471356

`A020639(root(A104125(n+1), 2))`
-/

namespace A348470.P6743047842298471356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A104125 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A348470.P6743047842298471356

/-! ## A348470.P8883863970406394983

`A020639(A065519(n+1)+1+n)`
-/

namespace A348470.P8883863970406394983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A065519 (n + 1) + 1 + (n : ℤ)).toNat

end

end A348470.P8883863970406394983

/-! ## A348470.P9831307574513161622

`A020639(∑[A064426(n+1)]+1-A064426(n+1))`
-/

namespace A348470.P9831307574513161622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A064426 (n + 1))).toNat

end

end A348470.P9831307574513161622

/-! ## A348470.P11057091633610860362

`A014673(2*A064413(n+1))`
-/

namespace A348470.P11057091633610860362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A064413 (n + 1)).toNat

end

end A348470.P11057091633610860362

/-! ## A348470.P1609763218882167732

`A014673(A064413(n+1)+A064413(n+1))`
-/

namespace A348470.P1609763218882167732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A064413 (n + 1) + A064413 (n + 1)).toNat

end

end A348470.P1609763218882167732

/-! ## A348470.P13306093172865775536

`A020639(A185586(A185413(n+1)))`
-/

namespace A348470.P13306093172865775536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185586 (A185413 (n + 1)).toNat).toNat

end

end A348470.P13306093172865775536

/-! ## A348470.P17372395703074351267

`A020639(A104125(n+1))`
-/

namespace A348470.P17372395703074351267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104125 (n + 1)).toNat

end

end A348470.P17372395703074351267

/-! ## A348470.P11935987023584523019

`A074828(Δ[A065057(n)]²)`
-/

namespace A348470.P11935987023584523019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A348470.P11935987023584523019

/-! ## A348470.P16028584954949285591

`A107286(A064413(n+1)²)`
-/

namespace A348470.P16028584954949285591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A064413 (n + 1) ^ 2).toNat

end

end A348470.P16028584954949285591

/-! ## A348470.P15163597021189078495

`A107286(A064413(n+1)*A064413(n+1))`
-/

namespace A348470.P15163597021189078495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A064413 (n + 1) * A064413 (n + 1)).toNat

end

end A348470.P15163597021189078495

/-!
# A348471: One half of the even numbers without middle divisors.

The programs for A348471, the canonical program `A348471.P4748451350327565976` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348471 has offset 1).

The definition of A348471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348471.P13018332935985264412

`A319802(n+1)/2`
-/

namespace A348471.P13018332935985264412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319802 (n + 1) : ℚ) / 2

end

end A348471.P13018332935985264412

namespace A348471

/-- `A319802(n+1)/2` -/
def P13018332935985264412.Spec : Prop :=
  ∀ n, P13018332935985264412.a n = (A348471 (n + 1) : ℚ)

theorem P13018332935985264412.correct : P13018332935985264412.Spec := by
  intro n
  simp only [A348471, Nat.add_sub_cancel, A348471.P13018332935985264412.a, A348471.P4748451350327565976.f1, A348471.P4748451350327565976.f2, A348471.P4748451350327565976.a, A319802, A319802.P14391175377016966646.a, A347950, A347950.P18371532176146364720.f1, A347950.P18371532176146364720.a, A100345, A100345.P10218068871368461112.a, A004247, A004247.P14233945955703425283.a, A069011, A069011.P9337676359071489470.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A348471

/-! ## A348471.P15363941616577761961

`lt[A354452(n+1), 1]+1`
-/

namespace A348471.P15363941616577761961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354452 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348471.P15363941616577761961

namespace A348471

/-- `lt[A354452(n+1), 1]+1` -/
def P15363941616577761961.Spec : Prop :=
  ∀ n, (P15363941616577761961.a n : ℤ) = A348471 (n + 1)

end A348471

/-! ## A348471.P4748451350327565976

`eq[0, A347950(2*(n+1))]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348471

/-- `eq[0, A347950(2*(n+1))]+1` -/
def P4748451350327565976.Spec : Prop :=
  ∀ n, (P4748451350327565976.a n : ℤ) = A348471 (n + 1)

theorem P4748451350327565976.correct : P4748451350327565976.Spec := by
  intro n
  simp only [A348471, Nat.add_sub_cancel]

end A348471

/-! ## A348471.P9576100018632579111

`eq[1, A348327(2*(n+1))]+1`
-/

namespace A348471.P9576100018632579111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348471.P9576100018632579111

namespace A348471

/-- `eq[1, A348327(2*(n+1))]+1` -/
def P9576100018632579111.Spec : Prop :=
  ∀ n, (P9576100018632579111.a n : ℤ) = A348471 (n + 1)

end A348471

/-! ## A348471.P10242554770840876443

`eq[1, A348406(2*(n+1))]+1`
-/

namespace A348471.P10242554770840876443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348471.P10242554770840876443

namespace A348471

/-- `eq[1, A348406(2*(n+1))]+1` -/
def P10242554770840876443.Spec : Prop :=
  ∀ n, (P10242554770840876443.a n : ℤ) = A348471 (n + 1)

end A348471

/-! ## A348471.P17670198166794488738

`lt[A347950(2*n+2), 1]+1`
-/

namespace A348471.P17670198166794488738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348471.P17670198166794488738

namespace A348471

/-- `lt[A347950(2*n+2), 1]+1` -/
def P17670198166794488738.Spec : Prop :=
  ∀ n, (P17670198166794488738.a n : ℤ) = A348471 (n + 1)

end A348471

/-! ## A348471.P4564103364832122267

`1/2*A319802(-xor(n, -1))`
-/

namespace A348471.P4564103364832122267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A319802 (-Int.xor (n : ℤ) (-1)).toNat : ℚ)

end

end A348471.P4564103364832122267

namespace A348471

/-- `1/2*A319802(-xor(n, -1))` -/
def P4564103364832122267.Spec : Prop :=
  ∀ n, P4564103364832122267.a n = (A348471 (n + 1) : ℚ)

end A348471

/-! ## A348471.P15624620388627659226

`eq[1, A348364(2*(n+1))]+1`
-/

namespace A348471.P15624620388627659226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348471.P15624620388627659226

namespace A348471

/-- `eq[1, A348364(2*(n+1))]+1` -/
def P15624620388627659226.Spec : Prop :=
  ∀ n, (P15624620388627659226.a n : ℤ) = A348471 (n + 1)

end A348471

/-! ## A348471.P8808986675119284209

`eq[0, A067742(2*(n+1))]+1`
-/

namespace A348471.P8808986675119284209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348471.P8808986675119284209

namespace A348471

/-- `eq[0, A067742(2*(n+1))]+1` -/
def P8808986675119284209.Spec : Prop :=
  ∀ n, (P8808986675119284209.a n : ℤ) = A348471 (n + 1)

end A348471

/-! ## A348471.P3330690316946391004

`lt[A071090(2*(n+1)), 1]+1`
-/

namespace A348471.P3330690316946391004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348471.P3330690316946391004

namespace A348471

/-- `lt[A071090(2*(n+1)), 1]+1` -/
def P3330690316946391004.Spec : Prop :=
  ∀ n, (P3330690316946391004.a n : ℤ) = A348471 (n + 1)

end A348471

/-! ## A348471.P444727668827453957

`A001281(A319802(n+1))`
-/

namespace A348471.P444727668827453957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A319802 (n + 1)).toNat

end

end A348471.P444727668827453957

namespace A348471

/-- `A001281(A319802(n+1))` -/
def P444727668827453957.Spec : Prop :=
  ∀ n, P444727668827453957.a n = A348471 (n + 1)

end A348471

/-!
# A348472: A sequence of integers from an additive problem with prime numbers.

The programs for A348472, there is no canonical definition to state claims against.
-/

/-! ## A348472.P12876231964310335434

`A320634(A140741(n+2))`
-/

namespace A348472.P12876231964310335434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (A140741 (n + 2)).toNat

end

end A348472.P12876231964310335434

/-!
# A348473: a(n) = Sum_{k=1..A003056(n)} 2^(T(n,k)-1), where T(n,k) = k-th term in row n of A235791.

The programs for A348473, there is no canonical definition to state claims against.
-/

/-! ## A348473.P14847387633846649389

`∑{p}[A348475(n+1), A048675(#)]`
-/

namespace A348473.P14847387633846649389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A348473.P14847387633846649389

/-! ## A348473.P17893633453409791726

`∑{p}[A348475(n+1), A156552(#)]`
-/

namespace A348473.P17893633453409791726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A348473.P17893633453409791726

/-! ## A348473.P16163398728611002671

`∑{p}[A348475(n+1), A269856(#)]`
-/

namespace A348473.P16163398728611002671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A269856 p

end

end A348473.P16163398728611002671

/-! ## A348473.P16723670762645280270

`∑{p}[A348475(n+1), A285330(#)]`
-/

namespace A348473.P16723670762645280270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A348473.P16723670762645280270

/-! ## A348473.P10541227307985354984

`∑{p}[A348475(n+1), A297108(#)]`
-/

namespace A348473.P10541227307985354984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A348473.P10541227307985354984

/-!
# A348474: Number of compositions of n into exactly 2n nonnegative parts such that each positive i-th part is odd if i is odd.

The programs for A348474, there is no canonical definition to state claims against.
-/

/-! ## A348474.P2461255400766326864

`A172274(A005573(n))+1`
-/

namespace A348474.P2461255400766326864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172274 (A005573 n).toNat + 1

end

end A348474.P2461255400766326864

/-! ## A348474.P14366687840109476342

`A148851(n)+A002264(A001541(n))`
-/

namespace A348474.P14366687840109476342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148851 n + A002264 (A001541 n).toNat

end

end A348474.P14366687840109476342

/-!
# A348475: a(n) = Product_{k=1..A003056(n)} prime(T(n,k)), where T(n,k) = k-th term in row n of A235791.

The programs for A348475, there is no canonical definition to state claims against.
-/

/-! ## A348475.P644614056202215177

`A019565(A348473(n+1))`
-/

namespace A348475.P644614056202215177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A348473 (n + 1)).toNat

end

end A348475.P644614056202215177

/-! ## A348475.P10363940997223965500

`A329607(A348642(n+1))`
-/

namespace A348475.P10363940997223965500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A348642 (n + 1)).toNat

end

end A348475.P10363940997223965500

/-! ## A348475.P9124235842098501952

`A000040(n+1)*A049113(A022558(n))`
-/

namespace A348475.P9124235842098501952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A049113 (A022558 n).toNat

end

end A348475.P9124235842098501952

/-! ## A348475.P3131634878568947826

`A000040(n+1)*A283368(A027423(n))`
-/

namespace A348475.P3131634878568947826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A283368 (A027423 n).toNat

end

end A348475.P3131634878568947826

/-!
# A348476: Number of compositions of n into exactly n nonnegative parts such that all positive parts are odd.

The programs for A348476, there is no canonical definition to state claims against.
-/

/-! ## A348476.P4137984433325863032

`A078804(C(2*n, 2)-n+1)`
-/

namespace A348476.P4137984433325863032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078804 ((Nat.choose (2 * n) 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A348476.P4137984433325863032

/-! ## A348476.P13887212229531889296

`A078805(A058331(n))`
-/

namespace A348476.P13887212229531889296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (A058331 n).toNat

end

end A348476.P13887212229531889296

/-! ## A348476.P17617545144456418526

`A078805(A130883(n)+n)`
-/

namespace A348476.P17617545144456418526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (A130883 n + (n : ℤ)).toNat

end

end A348476.P17617545144456418526

/-! ## A348476.P11458683875430626495

`A078805(A002522(n)+n²)`
-/

namespace A348476.P11458683875430626495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (A002522 n + (n ^ 2 : ℤ)).toNat

end

end A348476.P11458683875430626495

/-!
# A348477: Drop all 1 but the first 1 in A035306.

The programs for A348477, there is no canonical definition to state claims against.
-/

/-! ## A348477.P16745709807470788140

`A027746(∑[A127194(n+1)²])`
-/

namespace A348477.P16745709807470788140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127194 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348477.P16745709807470788140

/-! ## A348477.P15369463066431431865

`A020639(A321728(n)+A312748(n))`
-/

namespace A348477.P15369463066431431865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A321728 n + A312748 n).toNat

end

end A348477.P15369463066431431865

/-! ## A348477.P14878108547578642483

`xor(A017905(n+1), A027746(A077168(n)))`
-/

namespace A348477.P14878108547578642483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A017905 (n + 1)) (A027746 (A077168 n).toNat)

end

end A348477.P14878108547578642483

/-! ## A348477.P17838999001013597805

`xor(A027746(n+1), A057427(A185254(n)))`
-/

namespace A348477.P17838999001013597805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A027746 (n + 1)) (A057427 (A185254 n).toNat)

end

end A348477.P17838999001013597805

/-! ## A348477.P11764312772440636911

`xor(A307746(n+1), A317748(A139550(n)))`
-/

namespace A348477.P11764312772440636911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A307746 (n + 1)) (A317748 (A139550 n).toNat)

end

end A348477.P11764312772440636911

/-!
# A348479: Number of interval posets of permutations with n minimal elements.

The programs for A348479, there is no canonical definition to state claims against.
-/

/-! ## A348479.P1811925409388969219

`A062300(∑[A227845(n)])`
-/

namespace A348479.P1811925409388969219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348479.P1811925409388969219

/-! ## A348479.P17297173913251074757

`A061017(A333093(n)-n²)`
-/

namespace A348479.P17297173913251074757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A333093 n - (n ^ 2 : ℤ)).toNat

end

end A348479.P17297173913251074757

/-! ## A348479.P7757287144449827975

`A061017(A352359(n+1)+A333093(n))-(n+1)`
-/

namespace A348479.P7757287144449827975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A352359 (n + 1) + A333093 n).toNat - (n + 1 : ℤ)

end

end A348479.P7757287144449827975

/-!
# A348482: Triangle read by rows: T(n,k) = (Sum_{i=k..n} i!)/(k!) for 0 <= k <= n.

The programs for A348482, the canonical program `A348482.P17332133400386320147` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348482 has offset 0).

The definition of A348482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348482.P17332133400386320147

`A143122(n)/A233543(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348482

/-- `A143122(n)/A233543(n)` -/
def P17332133400386320147.Spec : Prop :=
  ∀ n, P17332133400386320147.a n = (A348482 n : ℚ)

end A348482

/-! ## A348482.P11317188579015114701

`A143122(n)/A002262(n)!`
-/

namespace A348482.P11317188579015114701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A348482.P11317188579015114701

namespace A348482

/-- `A143122(n)/A002262(n)!` -/
def P11317188579015114701.Spec : Prop :=
  ∀ n, P11317188579015114701.a n = (A348482 n : ℚ)

end A348482

/-! ## A348482.P10601029744236805586

`A143122(n)/A144328(n+1)!`
-/

namespace A348482.P10601029744236805586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A348482.P10601029744236805586

namespace A348482

/-- `A143122(n)/A144328(n+1)!` -/
def P10601029744236805586.Spec : Prop :=
  ∀ n, P10601029744236805586.a n = (A348482 n : ℚ)

end A348482

/-! ## A348482.P2024118959574625531

`A143122(n)/A021009(A112367(n))`
-/

namespace A348482.P2024118959574625531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (A021009 (A112367 n).toNat : ℚ)

end

end A348482.P2024118959574625531

namespace A348482

/-- `A143122(n)/A021009(A112367(n))` -/
def P2024118959574625531.Spec : Prop :=
  ∀ n, P2024118959574625531.a n = (A348482 n : ℚ)

end A348482

/-! ## A348482.P12816574820032431942

`A002260(n+2)*A117396(n+1)`
-/

namespace A348482.P12816574820032431942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A117396 (n + 1)

end

end A348482.P12816574820032431942

namespace A348482

/-- `A002260(n+2)*A117396(n+1)` -/
def P12816574820032431942.Spec : Prop :=
  ∀ n, P12816574820032431942.a n = A348482 n

end A348482

/-! ## A348482.P13335698839619276215

`(A002262(n+1)+1)*A117396(n+1)`
-/

namespace A348482.P13335698839619276215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 (n + 1) + 1) * A117396 (n + 1)

end

end A348482.P13335698839619276215

namespace A348482

/-- `(A002262(n+1)+1)*A117396(n+1)` -/
def P13335698839619276215.Spec : Prop :=
  ∀ n, P13335698839619276215.a n = A348482 n

end A348482

/-! ## A348482.P6434569422417564007

`A143122(n)/A306512(A245300(n))`
-/

namespace A348482.P6434569422417564007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (A306512 (A245300 n).toNat : ℚ)

end

end A348482.P6434569422417564007

namespace A348482

/-- `A143122(n)/A306512(A245300(n))` -/
def P6434569422417564007.Spec : Prop :=
  ∀ n, P6434569422417564007.a n = (A348482 n : ℚ)

end A348482

/-! ## A348482.P2865242253326573749

`A143122(n)/A059590(A232089(n))`
-/

namespace A348482.P2865242253326573749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (A059590 (A232089 n).toNat : ℚ)

end

end A348482.P2865242253326573749

namespace A348482

/-- `A143122(n)/A059590(A232089(n))` -/
def P2865242253326573749.Spec : Prop :=
  ∀ n, P2865242253326573749.a n = (A348482 n : ℚ)

end A348482

/-! ## A348482.P14987995344421751001

`A143122(n)/A112624(A059268(n))`
-/

namespace A348482.P14987995344421751001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A348482.P14987995344421751001

namespace A348482

/-- `A143122(n)/A112624(A059268(n))` -/
def P14987995344421751001.Spec : Prop :=
  ∀ n, P14987995344421751001.a n = (A348482 n : ℚ)

end A348482

/-!
# A348484: Maximum number of squares on an n X n chessboard such that no two are two steps apart horizontally or vertically.

The programs for A348484, the canonical program `A348484.P3059255139491393033` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348484 has offset 1).

The definition of A348484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348484.P3059255139491393033

`∑[or(1, or(2, n)-1)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A348484

/-- `∑[or(1, or(2, n)-1)]` -/
def P3059255139491393033.Spec : Prop :=
  ∀ n, P3059255139491393033.a n = A348484 (n + 1)

theorem P3059255139491393033.correct : P3059255139491393033.Spec := by
  intro n
  simp only [A348484, Nat.add_sub_cancel]

end A348484

/-! ## A348484.P8018110741349593793

`∑[xor(n, (n+1)%4)]`
-/

namespace A348484.P8018110741349593793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n ((n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348484.P8018110741349593793

namespace A348484

/-- `∑[xor(n, (n+1)%4)]` -/
def P8018110741349593793.Spec : Prop :=
  ∀ n, (P8018110741349593793.a n : ℤ) = A348484 (n + 1)

end A348484

/-! ## A348484.P10126119012172064028

`∑[xor(n, and(3, n+1))]`
-/

namespace A348484.P10126119012172064028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 3 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348484.P10126119012172064028

namespace A348484

/-- `∑[xor(n, and(3, n+1))]` -/
def P10126119012172064028.Spec : Prop :=
  ∀ n, (P10126119012172064028.a n : ℤ) = A348484 (n + 1)

end A348484

/-! ## A348484.P606281768307720949

`∑[-or(1, -or(2, n))]`
-/

namespace A348484.P606281768307720949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(Nat.lor 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348484.P606281768307720949

namespace A348484

/-- `∑[-or(1, -or(2, n))]` -/
def P606281768307720949.Spec : Prop :=
  ∀ n, P606281768307720949.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P18207446421327608457

`∑[(n+2)%4+n-1]`
-/

namespace A348484.P18207446421327608457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) % 4 : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348484.P18207446421327608457

namespace A348484

/-- `∑[(n+2)%4+n-1]` -/
def P18207446421327608457.Spec : Prop :=
  ∀ n, P18207446421327608457.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P5633031427732978996

`∑[and(3, n+2)-1+n]`
-/

namespace A348484.P5633031427732978996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 (n + 2) : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348484.P5633031427732978996

namespace A348484

/-- `∑[and(3, n+2)-1+n]` -/
def P5633031427732978996.Spec : Prop :=
  ∀ n, P5633031427732978996.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P3392148461603177271

`∑[a(n-4)+4]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3`
-/

namespace A348484.P3392148461603177271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348484.P3392148461603177271

namespace A348484

/-- `∑[a(n-4)+4]` -/
def P3392148461603177271.Spec : Prop :=
  ∀ n, (P3392148461603177271.a n : ℤ) = A348484 (n + 1)

end A348484

/-! ## A348484.P5698885836303082568

`and(3, n+2)+a(n-1)+n-1` with `a(0)=1`
-/

namespace A348484.P5698885836303082568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 3 (n + 2) : ℤ) + (a (n - 1) + ((n : ℤ) - 1))

end

end A348484.P5698885836303082568

namespace A348484

/-- `and(3, n+2)+a(n-1)+n-1` -/
def P5698885836303082568.Spec : Prop :=
  ∀ n, P5698885836303082568.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P10143942097387383029

`((n+1)²+∑[(-1)^∑[n+1]]²)/2`
-/

namespace A348484.P10143942097387383029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A348484.P10143942097387383029

namespace A348484

/-- `((n+1)²+∑[(-1)^∑[n+1]]²)/2` -/
def P10143942097387383029.Spec : Prop :=
  ∀ n, P10143942097387383029.a n = (A348484 (n + 1) : ℚ)

end A348484

/-! ## A348484.P11214314846124085501

`∑[xor(n, A010873(n+1))]`
-/

namespace A348484.P11214314846124085501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A010873 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348484.P11214314846124085501

namespace A348484

/-- `∑[xor(n, A010873(n+1))]` -/
def P11214314846124085501.Spec : Prop :=
  ∀ n, P11214314846124085501.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P15913849687280294224

`A101455(n)+A080827(n+1)`
-/

namespace A348484.P15913849687280294224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n + A080827 (n + 1)

end

end A348484.P15913849687280294224

namespace A348484

/-- `A101455(n)+A080827(n+1)` -/
def P15913849687280294224.Spec : Prop :=
  ∀ n, P15913849687280294224.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P5472770957361207458

`A074148(n+1)-A201629(n)`
-/

namespace A348484.P5472770957361207458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) - A201629 n

end

end A348484.P5472770957361207458

namespace A348484

/-- `A074148(n+1)-A201629(n)` -/
def P5472770957361207458.Spec : Prop :=
  ∀ n, P5472770957361207458.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P18135723156057958466

`A000982(n)+or(n, A000034(n))`
-/

namespace A348484.P18135723156057958466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + Int.lor (n : ℤ) (A000034 n)

end

end A348484.P18135723156057958466

namespace A348484

/-- `A000982(n)+or(n, A000034(n))` -/
def P18135723156057958466.Spec : Prop :=
  ∀ n, P18135723156057958466.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P440354556291632

`A032528(n+1)-2*A194274(n)`
-/

namespace A348484.P440354556291632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (n + 1) - 2 * A194274 n

end

end A348484.P440354556291632

namespace A348484

/-- `A032528(n+1)-2*A194274(n)` -/
def P440354556291632.Spec : Prop :=
  ∀ n, P440354556291632.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P3462538401431706975

`and(A236283(n+1)+2, A236283(n+1))`
-/

namespace A348484.P3462538401431706975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A236283 (n + 1) + 2) (A236283 (n + 1))

end

end A348484.P3462538401431706975

namespace A348484

/-- `and(A236283(n+1)+2, A236283(n+1))` -/
def P3462538401431706975.Spec : Prop :=
  ∀ n, P3462538401431706975.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P11661161531451966922

`∑[A098180(A098180(n))]-A008624(n)`
-/

namespace A348484.P11661161531451966922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (A098180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008624 n

end

end A348484.P11661161531451966922

namespace A348484

/-- `∑[A098180(A098180(n))]-A008624(n)` -/
def P11661161531451966922.Spec : Prop :=
  ∀ n, P11661161531451966922.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P16669736025026277786

`A063489(n+2)-(A063489(n+1)+A009945(n+1))`
-/

namespace A348484.P16669736025026277786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 2) - (A063489 (n + 1) + A009945 (n + 1))

end

end A348484.P16669736025026277786

namespace A348484

/-- `A063489(n+2)-(A063489(n+1)+A009945(n+1))` -/
def P16669736025026277786.Spec : Prop :=
  ∀ n, P16669736025026277786.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P10587961206660905829

`A042948(A008811(n+1))`
-/

namespace A348484.P10587961206660905829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A008811 (n + 1)).toNat

end

end A348484.P10587961206660905829

namespace A348484

/-- `A042948(A008811(n+1))` -/
def P10587961206660905829.Spec : Prop :=
  ∀ n, P10587961206660905829.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P1173910003833357760

`and(A141725(n), A236283(n+1))`
-/

namespace A348484.P1173910003833357760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141725 n) (A236283 (n + 1))

end

end A348484.P1173910003833357760

namespace A348484

/-- `and(A141725(n), A236283(n+1))` -/
def P1173910003833357760.Spec : Prop :=
  ∀ n, P1173910003833357760.a n = A348484 (n + 1)

end A348484

/-! ## A348484.P10432462009144215587

`and(A236283(n+1), A267921(n))`
-/

namespace A348484.P10432462009144215587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A236283 (n + 1)) (A267921 n)

end

end A348484.P10432462009144215587

namespace A348484

/-- `and(A236283(n+1), A267921(n))` -/
def P10432462009144215587.Spec : Prop :=
  ∀ n, P10432462009144215587.a n = A348484 (n + 1)

end A348484

/-!
# A348485: Lexicographically earliest sequence of positive integers in which, for all positive k, there are exactly k contiguous pairs whose product is k, and a(k) * a(k+1) <> a(k+1) * a(k+2).

The programs for A348485, there is no canonical definition to state claims against.
-/

/-! ## A348485.P11814957899773961887

`A348486(n)/a(n-1)` with `a(0)=1`
-/

namespace A348485.P11814957899773961887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A348486 n : ℚ) / a (n - 1)

end

end A348485.P11814957899773961887

/-! ## A348485.P7488939683528448039

`A096492(A072031(n+1)+1)`
-/

namespace A348485.P7488939683528448039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (A072031 (n + 1) + 1).toNat

end

end A348485.P7488939683528448039

/-! ## A348485.P8350467815154932116

`A204988(A083937(n)*A205003(n+1))`
-/

namespace A348485.P8350467815154932116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A083937 n * A205003 (n + 1)).toNat

end

end A348485.P8350467815154932116

/-! ## A348485.P8262387502741345424

`A193330(lcm(A006093(n+1), A087475(n)))`
-/

namespace A348485.P8262387502741345424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (Int.lcm (A006093 (n + 1)) (A087475 n))

end

end A348485.P8262387502741345424

/-! ## A348485.P6737178530130001358

`A038374(A328594(n+1)+A111680(n+1))`
-/

namespace A348485.P6737178530130001358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A328594 (n + 1) + A111680 (n + 1)).toNat

end

end A348485.P6737178530130001358

/-!
# A348486: a(n) = A348485(n) * A348485(n+1).

The programs for A348486, there is no canonical definition to state claims against.
-/

/-! ## A348486.P688162564839937545

`A348485(n+1)*A348485(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348486.P688162564839937545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348485 (n + 1) * A348485 (n + 2)

end

end A348486.P688162564839937545

/-!
# A348487: Positive numbers whose square starts and ends with exactly one 1.

The programs for A348487, there is no canonical definition to state claims against.
-/

/-! ## A348487.P11077603567455464695

`eq[A086009(n), A110917(n+1)]`
-/

namespace A348487.P11077603567455464695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348487.P11077603567455464695

/-!
# A348488: Positive numbers whose square starts and ends with exactly one 4.

The programs for A348488, there is no canonical definition to state claims against.
-/

/-! ## A348488.P11411184843201410895

`record[and(A265545(3*n+2), A265547(2*(n+1)))]`
-/

namespace A348488.P11411184843201410895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265545 (3 * n + 2)) (A265547 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348488.P11411184843201410895

/-!
# A348490: Positive numbers whose square starts and ends with exactly one 6.

The programs for A348490, there is no canonical definition to state claims against.
-/

/-! ## A348490.P7917083355401314851

`∩[10*n-a(n-1), A305719(n+1)]` with `a(0)=4`
-/

namespace A348490.P7917083355401314851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  (10 * n : ℤ) - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348490.P7917083355401314851

/-!
# A348491: Positive numbers whose square starts and ends with exactly one 9.

The programs for A348491, there is no canonical definition to state claims against.
-/

/-! ## A348491.P17430166028702737934

`∩[A045863(n+1), A305719(n+1)]`
-/

namespace A348491.P17430166028702737934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348491.P17430166028702737934

/-!
# A348492: Greatest common divisor of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

The programs for A348492, the canonical program `A348492.P10916055508592838470` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348492 has offset 1).

The definition of A348492 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A018804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348492.P8820806997506584729

`A003557(n+1)*A348494(n+1)`
-/

namespace A348492.P8820806997506584729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A348494 (n + 1)

end

end A348492.P8820806997506584729

namespace A348492

/-- `A003557(n+1)*A348494(n+1)` -/
def P8820806997506584729.Spec : Prop :=
  ∀ n, P8820806997506584729.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P10916055508592838470

`gcd(A003415(n+1), A018804(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348492

/-- `gcd(A003415(n+1), A018804(n+1))` -/
def P10916055508592838470.Spec : Prop :=
  ∀ n, (P10916055508592838470.a n : ℤ) = A348492 (n + 1)

theorem P10916055508592838470.correct : P10916055508592838470.Spec := by
  intro n
  simp only [A348492, Nat.add_sub_cancel]

end A348492

/-! ## A348492.P6970999960568855925

`gcd(∑[A258057(n)], A018804(n+1))`
-/

namespace A348492.P6970999960568855925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A018804 (n + 1))

end

end A348492.P6970999960568855925

namespace A348492

/-- `gcd(∑[A258057(n)], A018804(n+1))` -/
def P6970999960568855925.Spec : Prop :=
  ∀ n, (P6970999960568855925.a n : ℤ) = A348492 (n + 1)

end A348492

/-! ## A348492.P7066010774433288617

`(A336551(n+1)+1)*A348494(n+1)`
-/

namespace A348492.P7066010774433288617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A348494 (n + 1)

end

end A348492.P7066010774433288617

namespace A348492

/-- `(A336551(n+1)+1)*A348494(n+1)` -/
def P7066010774433288617.Spec : Prop :=
  ∀ n, P7066010774433288617.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P10310118616550505563

`(1-A010848(n+1)+n)*A348494(n+1)`
-/

namespace A348492.P10310118616550505563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010848 (n + 1) + (n : ℤ)) * A348494 (n + 1)

end

end A348492.P10310118616550505563

namespace A348492

/-- `(1-A010848(n+1)+n)*A348494(n+1)` -/
def P10310118616550505563.Spec : Prop :=
  ∀ n, P10310118616550505563.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P8703481670894037370

`(n+1)/A007947(n+1)*A348494(n+1)`
-/

namespace A348492.P8703481670894037370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A348492.P8703481670894037370

namespace A348492

/-- `(n+1)/A007947(n+1)*A348494(n+1)` -/
def P8703481670894037370.Spec : Prop :=
  ∀ n, P8703481670894037370.a n = (A348492 (n + 1) : ℚ)

end A348492

/-! ## A348492.P18177712168877807526

`gcd(n+1, A069359(n+1))*A348494(n+1)`
-/

namespace A348492.P18177712168877807526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℤ) * A348494 (n + 1)

end

end A348492.P18177712168877807526

namespace A348492

/-- `gcd(n+1, A069359(n+1))*A348494(n+1)` -/
def P18177712168877807526.Spec : Prop :=
  ∀ n, P18177712168877807526.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P6761237317105032649

`A052126(A217434(n+1))*A348494(n+1)`
-/

namespace A348492.P6761237317105032649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A217434 (n + 1)).toNat * A348494 (n + 1)

end

end A348492.P6761237317105032649

namespace A348492

/-- `A052126(A217434(n+1))*A348494(n+1)` -/
def P6761237317105032649.Spec : Prop :=
  ∀ n, P6761237317105032649.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P9663595243766860716

`(A300719(n+1)+A300717(n+1))*A348494(n+1)`
-/

namespace A348492.P9663595243766860716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300719 (n + 1) + A300717 (n + 1)) * A348494 (n + 1)

end

end A348492.P9663595243766860716

namespace A348492

/-- `(A300719(n+1)+A300717(n+1))*A348494(n+1)` -/
def P9663595243766860716.Spec : Prop :=
  ∀ n, P9663595243766860716.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P11930540681104641028

`A001615(n+1)/A048250(n+1)*A348494(n+1)`
-/

namespace A348492.P11930540681104641028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A348492.P11930540681104641028

namespace A348492

/-- `A001615(n+1)/A048250(n+1)*A348494(n+1)` -/
def P11930540681104641028.Spec : Prop :=
  ∀ n, P11930540681104641028.a n = (A348492 (n + 1) : ℚ)

end A348492

/-! ## A348492.P6123632405510905509

`A000010(n+1)/A173557(n+1)*A348494(n+1)`
-/

namespace A348492.P6123632405510905509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A348492.P6123632405510905509

namespace A348492

/-- `A000010(n+1)/A173557(n+1)*A348494(n+1)` -/
def P6123632405510905509.Spec : Prop :=
  ∀ n, P6123632405510905509.a n = (A348492 (n + 1) : ℚ)

end A348492

/-! ## A348492.P17424378756453530589

`A018804(n+1)/A347128(n+1)*A348494(n+1)`
-/

namespace A348492.P17424378756453530589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A347128 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A348492.P17424378756453530589

namespace A348492

/-- `A018804(n+1)/A347128(n+1)*A348494(n+1)` -/
def P17424378756453530589.Spec : Prop :=
  ∀ n, P17424378756453530589.a n = (A348492 (n + 1) : ℚ)

end A348492

/-! ## A348492.P9480590843315397799

`A327251(n+1)/A347127(n+1)*A348494(n+1)`
-/

namespace A348492.P9480590843315397799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A347127 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A348492.P9480590843315397799

namespace A348492

/-- `A327251(n+1)/A347127(n+1)*A348494(n+1)` -/
def P9480590843315397799.Spec : Prop :=
  ∀ n, P9480590843315397799.a n = (A348492 (n + 1) : ℚ)

end A348492

/-! ## A348492.P12636698667257575145

`A348494(n+1)*A348495(n+1)/A348496(n+1)`
-/

namespace A348492.P12636698667257575145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348494 (n + 1) * A348495 (n + 1) : ℚ) / (A348496 (n + 1) : ℚ)

end

end A348492.P12636698667257575145

namespace A348492

/-- `A348494(n+1)*A348495(n+1)/A348496(n+1)` -/
def P12636698667257575145.Spec : Prop :=
  ∀ n, P12636698667257575145.a n = (A348492 (n + 1) : ℚ)

end A348492

/-! ## A348492.P2291511066729383875

`gcd(A342001(n+1), A347128(n+1))*A003557(n+1)`
-/

namespace A348492.P2291511066729383875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A342001 (n + 1)) (A347128 (n + 1)) : ℤ) * A003557 (n + 1)

end

end A348492.P2291511066729383875

namespace A348492

/-- `gcd(A342001(n+1), A347128(n+1))*A003557(n+1)` -/
def P2291511066729383875.Spec : Prop :=
  ∀ n, P2291511066729383875.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P1221736038158704434

`A290104(A064988(n+1))*A348494(n+1)`
-/

namespace A348492.P1221736038158704434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A064988 (n + 1)).toNat * A348494 (n + 1)

end

end A348492.P1221736038158704434

namespace A348492

/-- `A290104(A064988(n+1))*A348494(n+1)` -/
def P1221736038158704434.Spec : Prop :=
  ∀ n, P1221736038158704434.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P7653008002144519486

`A300719(A071892(n+1))*A348494(n+1)`
-/

namespace A348492.P7653008002144519486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A071892 (n + 1)).toNat * A348494 (n + 1)

end

end A348492.P7653008002144519486

namespace A348492

/-- `A300719(A071892(n+1))*A348494(n+1)` -/
def P7653008002144519486.Spec : Prop :=
  ∀ n, P7653008002144519486.a n = A348492 (n + 1)

end A348492

/-! ## A348492.P4338480976091380149

`A000188(A102631(n+1))*A348494(n+1)`
-/

namespace A348492.P4338480976091380149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A102631 (n + 1)).toNat * A348494 (n + 1)

end

end A348492.P4338480976091380149

namespace A348492

/-- `A000188(A102631(n+1))*A348494(n+1)` -/
def P4338480976091380149.Spec : Prop :=
  ∀ n, P4338480976091380149.a n = A348492 (n + 1)

end A348492

/-!
# A348493: a(n) = A003415(n) / gcd(A003415(n), A018804(n)), where A003415 is the arithmetic derivative and A018804 is Pillai's arithmetical function.

The programs for A348493, the canonical program `A348493.P12922612347308619464` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348493 has offset 1).

The definition of A348493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A348492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348493.P12922612347308619464

`A003415(n+1)/A348492(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348493

/-- `A003415(n+1)/A348492(n+1)` -/
def P12922612347308619464.Spec : Prop :=
  ∀ n, P12922612347308619464.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P2597645235893929352

`A003415(n+1)/gcd(A003415(n+1), A018804(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348493.P2597645235893929352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (Int.gcd (A003415 (n + 1)) (A018804 (n + 1)) : ℚ)

end

end A348493.P2597645235893929352

namespace A348493

/-- `A003415(n+1)/gcd(A003415(n+1), A018804(n+1))` -/
def P2597645235893929352.Spec : Prop :=
  ∀ n, P2597645235893929352.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P13510904251785192794

`∑[A258057(n)]/A348492(n+1)`
-/

namespace A348493.P13510904251785192794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P13510904251785192794

namespace A348493

/-- `∑[A258057(n)]/A348492(n+1)` -/
def P13510904251785192794.Spec : Prop :=
  ∀ n, P13510904251785192794.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P8495735164078167690

`A342001(n+1)/A348494(n+1)`
-/

namespace A348493.P8495735164078167690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A348494 (n + 1) : ℚ)

end

end A348493.P8495735164078167690

namespace A348493

/-- `A342001(n+1)/A348494(n+1)` -/
def P8495735164078167690.Spec : Prop :=
  ∀ n, P8495735164078167690.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P3193072406366423519

`A003415(n+1)/(A003557(n+1)*A348494(n+1))`
-/

namespace A348493.P3193072406366423519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) * A348494 (n + 1) : ℚ)

end

end A348493.P3193072406366423519

namespace A348493

/-- `A003415(n+1)/(A003557(n+1)*A348494(n+1))` -/
def P3193072406366423519.Spec : Prop :=
  ∀ n, P3193072406366423519.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P927077600113961872

`A003557(n+1)*A342001(n+1)/A348492(n+1)`
-/

namespace A348493.P927077600113961872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A342001 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P927077600113961872

namespace A348493

/-- `A003557(n+1)*A342001(n+1)/A348492(n+1)` -/
def P927077600113961872.Spec : Prop :=
  ∀ n, P927077600113961872.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P4892506972061342428

`A342413(n+1)*A342414(n+1)/A348492(n+1)`
-/

namespace A348493.P4892506972061342428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342413 (n + 1) * A342414 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P4892506972061342428

namespace A348493

/-- `A342413(n+1)*A342414(n+1)/A348492(n+1)` -/
def P4892506972061342428.Spec : Prop :=
  ∀ n, P4892506972061342428.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P14972310099903170753

`A342458(n+1)*A342919(n+1)/A348492(n+1)`
-/

namespace A348493.P14972310099903170753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) * A342919 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P14972310099903170753

namespace A348493

/-- `A342458(n+1)*A342919(n+1)/A348492(n+1)` -/
def P14972310099903170753.Spec : Prop :=
  ∀ n, P14972310099903170753.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P17012330977172998499

`A342001(n+1)/gcd(A342001(n+1), A347128(n+1))`
-/

namespace A348493.P17012330977172998499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (Int.gcd (A342001 (n + 1)) (A347128 (n + 1)) : ℚ)

end

end A348493.P17012330977172998499

namespace A348493

/-- `A342001(n+1)/gcd(A342001(n+1), A347128(n+1))` -/
def P17012330977172998499.Spec : Prop :=
  ∀ n, P17012330977172998499.a n = (A348493 (n + 1) : ℚ)

end A348493

/-! ## A348493.P10987879122839927456

`A319703(2*(n+1))/A348492(n+1)`
-/

namespace A348493.P10987879122839927456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (2 * (n + 1)) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P10987879122839927456

namespace A348493

/-- `A319703(2*(n+1))/A348492(n+1)` -/
def P10987879122839927456.Spec : Prop :=
  ∀ n, P10987879122839927456.a n = (A348493 (n + 1) : ℚ)

end A348493

/-!
# A348494: a(n) = A348492(n) / A003557(n), where A348492 is the GCD of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

The programs for A348494, the canonical program `A348494.P11005774710442910739` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348494 has offset 1).

The definition of A348494 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348492, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348494.P11005774710442910739

`A348492(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348494

/-- `A348492(n+1)/A003557(n+1)` -/
def P11005774710442910739.Spec : Prop :=
  ∀ n, P11005774710442910739.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P2470189780362181874

`gcd(A342001(n+1), A347128(n+1))`
-/

namespace A348494.P2470189780362181874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342001 (n + 1)) (A347128 (n + 1))

end

end A348494.P2470189780362181874

namespace A348494

/-- `gcd(A342001(n+1), A347128(n+1))` -/
def P2470189780362181874.Spec : Prop :=
  ∀ n, (P2470189780362181874.a n : ℤ) = A348494 (n + 1)

end A348494

/-! ## A348494.P16425061832577004462

`A348492(n+1)/(A336551(n+1)+1)`
-/

namespace A348494.P16425061832577004462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A336551 (n + 1) + 1 : ℚ)

end

end A348494.P16425061832577004462

namespace A348494

/-- `A348492(n+1)/(A336551(n+1)+1)` -/
def P16425061832577004462.Spec : Prop :=
  ∀ n, P16425061832577004462.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P13004035613060486463

`A348492(n+1)/gcd(n+1, A069359(n+1))`
-/

namespace A348494.P13004035613060486463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℚ)

end

end A348494.P13004035613060486463

namespace A348494

/-- `A348492(n+1)/gcd(n+1, A069359(n+1))` -/
def P13004035613060486463.Spec : Prop :=
  ∀ n, P13004035613060486463.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P3033118167659164283

`A348492(n+1)/A052126(A217434(n+1))`
-/

namespace A348494.P3033118167659164283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A052126 (A217434 (n + 1)).toNat : ℚ)

end

end A348494.P3033118167659164283

namespace A348494

/-- `A348492(n+1)/A052126(A217434(n+1))` -/
def P3033118167659164283.Spec : Prop :=
  ∀ n, P3033118167659164283.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P1227918038291423820

`A348492(n+1)/(A300719(n+1)+A300717(n+1))`
-/

namespace A348494.P1227918038291423820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A300719 (n + 1) + A300717 (n + 1) : ℚ)

end

end A348494.P1227918038291423820

namespace A348494

/-- `A348492(n+1)/(A300719(n+1)+A300717(n+1))` -/
def P1227918038291423820.Spec : Prop :=
  ∀ n, P1227918038291423820.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P15339886475496490678

`A348492(n+1)/(A076332(n+1)-A007947(n+1))`
-/

namespace A348494.P15339886475496490678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A076332 (n + 1) - A007947 (n + 1) : ℚ)

end

end A348494.P15339886475496490678

namespace A348494

/-- `A348492(n+1)/(A076332(n+1)-A007947(n+1))` -/
def P15339886475496490678.Spec : Prop :=
  ∀ n, P15339886475496490678.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P12804658175601991360

`A048250(n+1)/A001615(n+1)*A348492(n+1)`
-/

namespace A348494.P12804658175601991360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A348492 (n + 1) : ℚ)

end

end A348494.P12804658175601991360

namespace A348494

/-- `A048250(n+1)/A001615(n+1)*A348492(n+1)` -/
def P12804658175601991360.Spec : Prop :=
  ∀ n, P12804658175601991360.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P3596964349601342637

`A173557(n+1)/A000010(n+1)*A348492(n+1)`
-/

namespace A348494.P3596964349601342637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A348492 (n + 1) : ℚ)

end

end A348494.P3596964349601342637

namespace A348494

/-- `A173557(n+1)/A000010(n+1)*A348492(n+1)` -/
def P3596964349601342637.Spec : Prop :=
  ∀ n, P3596964349601342637.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P9141321826342527401

`A347128(n+1)/A018804(n+1)*A348492(n+1)`
-/

namespace A348494.P9141321826342527401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347128 (n + 1) : ℚ) / (A018804 (n + 1) : ℚ) * (A348492 (n + 1) : ℚ)

end

end A348494.P9141321826342527401

namespace A348494

/-- `A347128(n+1)/A018804(n+1)*A348492(n+1)` -/
def P9141321826342527401.Spec : Prop :=
  ∀ n, P9141321826342527401.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P10933652847324281272

`A342416(n+1)/A342413(n+1)*A348492(n+1)`
-/

namespace A348494.P10933652847324281272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342416 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ) * (A348492 (n + 1) : ℚ)

end

end A348494.P10933652847324281272

namespace A348494

/-- `A342416(n+1)/A342413(n+1)*A348492(n+1)` -/
def P10933652847324281272.Spec : Prop :=
  ∀ n, P10933652847324281272.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P17930868584284631590

`A342459(n+1)/A342458(n+1)*A348492(n+1)`
-/

namespace A348494.P17930868584284631590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342459 (n + 1) : ℚ) / (A342458 (n + 1) : ℚ) * (A348492 (n + 1) : ℚ)

end

end A348494.P17930868584284631590

namespace A348494

/-- `A342459(n+1)/A342458(n+1)*A348492(n+1)` -/
def P17930868584284631590.Spec : Prop :=
  ∀ n, P17930868584284631590.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P8727899701540363735

`A348492(n+1)/A348495(n+1)*A348496(n+1)`
-/

namespace A348494.P8727899701540363735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A348495 (n + 1) : ℚ) * (A348496 (n + 1) : ℚ)

end

end A348494.P8727899701540363735

namespace A348494

/-- `A348492(n+1)/A348495(n+1)*A348496(n+1)` -/
def P8727899701540363735.Spec : Prop :=
  ∀ n, P8727899701540363735.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P6765608212370669172

`gcd(A003415(n+1), A018804(n+1))/A003557(n+1)`
-/

namespace A348494.P6765608212370669172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A003415 (n + 1)) (A018804 (n + 1)) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348494.P6765608212370669172

namespace A348494

/-- `gcd(A003415(n+1), A018804(n+1))/A003557(n+1)` -/
def P6765608212370669172.Spec : Prop :=
  ∀ n, P6765608212370669172.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P17628468639707542017

`A348492(n+1)/A290106(A064988(n+1))`
-/

namespace A348494.P17628468639707542017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A290106 (A064988 (n + 1)).toNat : ℚ)

end

end A348494.P17628468639707542017

namespace A348494

/-- `A348492(n+1)/A290106(A064988(n+1))` -/
def P17628468639707542017.Spec : Prop :=
  ∀ n, P17628468639707542017.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P3319513425369192723

`A348492(n+1)/A300719(A071892(n+1))`
-/

namespace A348494.P3319513425369192723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A300719 (A071892 (n + 1)).toNat : ℚ)

end

end A348494.P3319513425369192723

namespace A348494

/-- `A348492(n+1)/A300719(A071892(n+1))` -/
def P3319513425369192723.Spec : Prop :=
  ∀ n, P3319513425369192723.a n = (A348494 (n + 1) : ℚ)

end A348494

/-! ## A348494.P11464733135758796291

`A348492(n+1)/A000188(A102631(n+1))`
-/

namespace A348494.P11464733135758796291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A000188 (A102631 (n + 1)).toNat : ℚ)

end

end A348494.P11464733135758796291

namespace A348494

/-- `A348492(n+1)/A000188(A102631(n+1))` -/
def P11464733135758796291.Spec : Prop :=
  ∀ n, P11464733135758796291.a n = (A348494 (n + 1) : ℚ)

end A348494

/-!
# A348495: a(n) = gcd(A018804(n), A347130(n)), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n (A003415), and A018804 is Pillai's arithmetical function.

The programs for A348495, the canonical program `A348495.P4852488823322459190` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348495 has offset 1).

The definition of A348495 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348495.P18208110120181984062

`A003557(n+1)*A348496(n+1)`
-/

namespace A348495.P18208110120181984062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A348496 (n + 1)

end

end A348495.P18208110120181984062

namespace A348495

/-- `A003557(n+1)*A348496(n+1)` -/
def P18208110120181984062.Spec : Prop :=
  ∀ n, P18208110120181984062.a n = A348495 (n + 1)

end A348495

/-! ## A348495.P4852488823322459190

`gcd(A018804(n+1), A347130(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348495

/-- `gcd(A018804(n+1), A347130(n+1))` -/
def P4852488823322459190.Spec : Prop :=
  ∀ n, (P4852488823322459190.a n : ℤ) = A348495 (n + 1)

theorem P4852488823322459190.correct : P4852488823322459190.Spec := by
  intro n
  simp only [A348495, Nat.add_sub_cancel]

end A348495

/-! ## A348495.P894310045871558733

`A052126(A217434(n+1))*A348496(n+1)`
-/

namespace A348495.P894310045871558733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A217434 (n + 1)).toNat * A348496 (n + 1)

end

end A348495.P894310045871558733

namespace A348495

/-- `A052126(A217434(n+1))*A348496(n+1)` -/
def P894310045871558733.Spec : Prop :=
  ∀ n, P894310045871558733.a n = A348495 (n + 1)

end A348495

/-! ## A348495.P9066580987350729947

`A018804(n+1)/A347128(n+1)*A348496(n+1)`
-/

namespace A348495.P9066580987350729947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A347128 (n + 1) : ℚ) * (A348496 (n + 1) : ℚ)

end

end A348495.P9066580987350729947

namespace A348495

/-- `A018804(n+1)/A347128(n+1)*A348496(n+1)` -/
def P9066580987350729947.Spec : Prop :=
  ∀ n, P9066580987350729947.a n = (A348495 (n + 1) : ℚ)

end A348495

/-! ## A348495.P5718644221767214806

`A327251(n+1)/A347127(n+1)*A348496(n+1)`
-/

namespace A348495.P5718644221767214806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A347127 (n + 1) : ℚ) * (A348496 (n + 1) : ℚ)

end

end A348495.P5718644221767214806

namespace A348495

/-- `A327251(n+1)/A347127(n+1)*A348496(n+1)` -/
def P5718644221767214806.Spec : Prop :=
  ∀ n, P5718644221767214806.a n = (A348495 (n + 1) : ℚ)

end A348495

/-! ## A348495.P4074694423524278853

`A348492(n+1)/A348494(n+1)*A348496(n+1)`
-/

namespace A348495.P4074694423524278853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A348494 (n + 1) : ℚ) * (A348496 (n + 1) : ℚ)

end

end A348495.P4074694423524278853

namespace A348495

/-- `A348492(n+1)/A348494(n+1)*A348496(n+1)` -/
def P4074694423524278853.Spec : Prop :=
  ∀ n, P4074694423524278853.a n = (A348495 (n + 1) : ℚ)

end A348495

/-! ## A348495.P11863655868093762463

`gcd(A347128(n+1), A347129(n+1))*A003557(n+1)`
-/

namespace A348495.P11863655868093762463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A347128 (n + 1)) (A347129 (n + 1)) : ℤ) * A003557 (n + 1)

end

end A348495.P11863655868093762463

namespace A348495

/-- `gcd(A347128(n+1), A347129(n+1))*A003557(n+1)` -/
def P11863655868093762463.Spec : Prop :=
  ∀ n, P11863655868093762463.a n = A348495 (n + 1)

end A348495

/-! ## A348495.P5268532871041113301

`A290104(A064988(n+1))*A348496(n+1)`
-/

namespace A348495.P5268532871041113301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A064988 (n + 1)).toNat * A348496 (n + 1)

end

end A348495.P5268532871041113301

namespace A348495

/-- `A290104(A064988(n+1))*A348496(n+1)` -/
def P5268532871041113301.Spec : Prop :=
  ∀ n, P5268532871041113301.a n = A348495 (n + 1)

end A348495

/-! ## A348495.P15244737478263548350

`A300719(A071892(n+1))*A348496(n+1)`
-/

namespace A348495.P15244737478263548350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A071892 (n + 1)).toNat * A348496 (n + 1)

end

end A348495.P15244737478263548350

namespace A348495

/-- `A300719(A071892(n+1))*A348496(n+1)` -/
def P15244737478263548350.Spec : Prop :=
  ∀ n, P15244737478263548350.a n = A348495 (n + 1)

end A348495

/-! ## A348495.P1640381889439331020

`A000188(A102631(n+1))*A348496(n+1)`
-/

namespace A348495.P1640381889439331020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A102631 (n + 1)).toNat * A348496 (n + 1)

end

end A348495.P1640381889439331020

namespace A348495

/-- `A000188(A102631(n+1))*A348496(n+1)` -/
def P1640381889439331020.Spec : Prop :=
  ∀ n, P1640381889439331020.a n = A348495 (n + 1)

end A348495

/-!
# A348496: a(n) = gcd(A018804(n), A347130(n)) / A003557(n).

The programs for A348496, the canonical program `A348496.P16814638509883304779` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348496 has offset 1).

The definition of A348496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348495, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348496.P16814638509883304779

`A348495(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348496

/-- `A348495(n+1)/A003557(n+1)` -/
def P16814638509883304779.Spec : Prop :=
  ∀ n, P16814638509883304779.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P9493988389172633990

`gcd(A347128(n+1), A347129(n+1))`
-/

namespace A348496.P9493988389172633990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A347128 (n + 1)) (A347129 (n + 1))

end

end A348496.P9493988389172633990

namespace A348496

/-- `gcd(A347128(n+1), A347129(n+1))` -/
def P9493988389172633990.Spec : Prop :=
  ∀ n, (P9493988389172633990.a n : ℤ) = A348496 (n + 1)

end A348496

/-! ## A348496.P11538348900721314596

`gcd(A018804(n+1), A347130(n+1))/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348496.P11538348900721314596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A018804 (n + 1)) (A347130 (n + 1)) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348496.P11538348900721314596

namespace A348496

/-- `gcd(A018804(n+1), A347130(n+1))/A003557(n+1)` -/
def P11538348900721314596.Spec : Prop :=
  ∀ n, P11538348900721314596.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P1907397598968412272

`A348495(n+1)/(A336551(n+1)+1)`
-/

namespace A348496.P1907397598968412272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A336551 (n + 1) + 1 : ℚ)

end

end A348496.P1907397598968412272

namespace A348496

/-- `A348495(n+1)/(A336551(n+1)+1)` -/
def P1907397598968412272.Spec : Prop :=
  ∀ n, P1907397598968412272.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P4860156185985410542

`A348495(n+1)/gcd(n+1, A069359(n+1))`
-/

namespace A348496.P4860156185985410542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℚ)

end

end A348496.P4860156185985410542

namespace A348496

/-- `A348495(n+1)/gcd(n+1, A069359(n+1))` -/
def P4860156185985410542.Spec : Prop :=
  ∀ n, P4860156185985410542.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P11758675498952735865

`A348495(n+1)/A052126(A217434(n+1))`
-/

namespace A348496.P11758675498952735865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A052126 (A217434 (n + 1)).toNat : ℚ)

end

end A348496.P11758675498952735865

namespace A348496

/-- `A348495(n+1)/A052126(A217434(n+1))` -/
def P11758675498952735865.Spec : Prop :=
  ∀ n, P11758675498952735865.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P7921950431737131140

`A348495(n+1)/(A300719(n+1)+A300717(n+1))`
-/

namespace A348496.P7921950431737131140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A300719 (n + 1) + A300717 (n + 1) : ℚ)

end

end A348496.P7921950431737131140

namespace A348496

/-- `A348495(n+1)/(A300719(n+1)+A300717(n+1))` -/
def P7921950431737131140.Spec : Prop :=
  ∀ n, P7921950431737131140.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P16060331224979499654

`A048250(n+1)/A001615(n+1)*A348495(n+1)`
-/

namespace A348496.P16060331224979499654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A348495 (n + 1) : ℚ)

end

end A348496.P16060331224979499654

namespace A348496

/-- `A048250(n+1)/A001615(n+1)*A348495(n+1)` -/
def P16060331224979499654.Spec : Prop :=
  ∀ n, P16060331224979499654.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P6450543892986164857

`A173557(n+1)/A000010(n+1)*A348495(n+1)`
-/

namespace A348496.P6450543892986164857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A348495 (n + 1) : ℚ)

end

end A348496.P6450543892986164857

namespace A348496

/-- `A173557(n+1)/A000010(n+1)*A348495(n+1)` -/
def P6450543892986164857.Spec : Prop :=
  ∀ n, P6450543892986164857.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P8172558709951114046

`A347128(n+1)/A018804(n+1)*A348495(n+1)`
-/

namespace A348496.P8172558709951114046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347128 (n + 1) : ℚ) / (A018804 (n + 1) : ℚ) * (A348495 (n + 1) : ℚ)

end

end A348496.P8172558709951114046

namespace A348496

/-- `A347128(n+1)/A018804(n+1)*A348495(n+1)` -/
def P8172558709951114046.Spec : Prop :=
  ∀ n, P8172558709951114046.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P16255136117791468378

`A348494(n+1)/A348492(n+1)*A348495(n+1)`
-/

namespace A348496.P16255136117791468378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348494 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ) * (A348495 (n + 1) : ℚ)

end

end A348496.P16255136117791468378

namespace A348496

/-- `A348494(n+1)/A348492(n+1)*A348495(n+1)` -/
def P16255136117791468378.Spec : Prop :=
  ∀ n, P16255136117791468378.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P5631546419452505484

`A348495(n+1)/A290104(A064988(n+1))`
-/

namespace A348496.P5631546419452505484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A290104 (A064988 (n + 1)).toNat : ℚ)

end

end A348496.P5631546419452505484

namespace A348496

/-- `A348495(n+1)/A290104(A064988(n+1))` -/
def P5631546419452505484.Spec : Prop :=
  ∀ n, P5631546419452505484.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P5948918721452451182

`A348495(n+1)/A300719(A071892(n+1))`
-/

namespace A348496.P5948918721452451182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A300719 (A071892 (n + 1)).toNat : ℚ)

end

end A348496.P5948918721452451182

namespace A348496

/-- `A348495(n+1)/A300719(A071892(n+1))` -/
def P5948918721452451182.Spec : Prop :=
  ∀ n, P5948918721452451182.a n = (A348496 (n + 1) : ℚ)

end A348496

/-! ## A348496.P16231540427731374774

`A348495(n+1)/A000188(A102631(n+1))`
-/

namespace A348496.P16231540427731374774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A000188 (A102631 (n + 1)).toNat : ℚ)

end

end A348496.P16231540427731374774

namespace A348496

/-- `A348495(n+1)/A000188(A102631(n+1))` -/
def P16231540427731374774.Spec : Prop :=
  ∀ n, P16231540427731374774.a n = (A348496 (n + 1) : ℚ)

end A348496

/-!
# A348497: a(n) = gcd(A003415(n), A347130(n)), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

The programs for A348497, the canonical program `A348497.P15920549700664225963` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348497 has offset 1).

The definition of A348497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348497.P17636032033753838393

`A003557(n+1)*A348498(n+1)`
-/

namespace A348497.P17636032033753838393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A348498 (n + 1)

end

end A348497.P17636032033753838393

namespace A348497

/-- `A003557(n+1)*A348498(n+1)` -/
def P17636032033753838393.Spec : Prop :=
  ∀ n, P17636032033753838393.a n = A348497 (n + 1)

end A348497

/-! ## A348497.P15920549700664225963

`gcd(A003415(n+1), A347130(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348497

/-- `gcd(A003415(n+1), A347130(n+1))` -/
def P15920549700664225963.Spec : Prop :=
  ∀ n, (P15920549700664225963.a n : ℤ) = A348497 (n + 1)

theorem P15920549700664225963.correct : P15920549700664225963.Spec := by
  intro n
  simp only [A348497, Nat.add_sub_cancel]

end A348497

/-! ## A348497.P10902048571268108016

`∑[A258057(n)]/Δ[A028392(n)]`
-/

namespace A348497.P10902048571268108016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A348497.P10902048571268108016

namespace A348497

/-- `∑[A258057(n)]/Δ[A028392(n)]` -/
def P10902048571268108016.Spec : Prop :=
  ∀ n, P10902048571268108016.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P3145865005631485007

`A003415(n+1)/Δ[A028392(n)]`
-/

namespace A348497.P3145865005631485007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A348497.P3145865005631485007

namespace A348497

/-- `A003415(n+1)/Δ[A028392(n)]` -/
def P3145865005631485007.Spec : Prop :=
  ∀ n, P3145865005631485007.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P100627127751789641

`gcd(∑[A258057(n)], A347130(n+1))`
-/

namespace A348497.P100627127751789641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A347130 (n + 1))

end

end A348497.P100627127751789641

namespace A348497

/-- `gcd(∑[A258057(n)], A347130(n+1))` -/
def P100627127751789641.Spec : Prop :=
  ∀ n, (P100627127751789641.a n : ℤ) = A348497 (n + 1)

end A348497

/-! ## A348497.P2446755529785831972

`A003415(n+1)*A275437(n)/2`
-/

namespace A348497.P2446755529785831972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) * A275437 n : ℚ) / 2

end

end A348497.P2446755529785831972

namespace A348497

/-- `A003415(n+1)*A275437(n)/2` -/
def P2446755529785831972.Spec : Prop :=
  ∀ n, P2446755529785831972.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P10260472778159879791

`A003415(n+1)/(Δ[A000196(n)]+1)`
-/

namespace A348497.P10260472778159879791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A348497.P10260472778159879791

namespace A348497

/-- `A003415(n+1)/(Δ[A000196(n)]+1)` -/
def P10260472778159879791.Spec : Prop :=
  ∀ n, P10260472778159879791.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P1679248725323299967

`A003415(n+1)/(A010052(n+1)+1)`
-/

namespace A348497.P1679248725323299967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A010052 (n + 1) + 1 : ℚ)

end

end A348497.P1679248725323299967

namespace A348497

/-- `A003415(n+1)/(A010052(n+1)+1)` -/
def P1679248725323299967.Spec : Prop :=
  ∀ n, P1679248725323299967.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P12583453754884914679

`∑[A258057(n)]/A000034(A000005(n+1))`
-/

namespace A348497.P12583453754884914679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 (A000005 (n + 1)).toNat : ℚ)

end

end A348497.P12583453754884914679

namespace A348497

/-- `∑[A258057(n)]/A000034(A000005(n+1))` -/
def P12583453754884914679.Spec : Prop :=
  ∀ n, P12583453754884914679.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P8075902939398861643

`(A076332(n+1)-A007947(n+1))*A348498(n+1)`
-/

namespace A348497.P8075902939398861643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076332 (n + 1) - A007947 (n + 1)) * A348498 (n + 1)

end

end A348497.P8075902939398861643

namespace A348497

/-- `(A076332(n+1)-A007947(n+1))*A348498(n+1)` -/
def P8075902939398861643.Spec : Prop :=
  ∀ n, P8075902939398861643.a n = A348497 (n + 1)

end A348497

/-! ## A348497.P4545157545361463213

`A018804(n+1)/A347128(n+1)*A348498(n+1)`
-/

namespace A348497.P4545157545361463213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A347128 (n + 1) : ℚ) * (A348498 (n + 1) : ℚ)

end

end A348497.P4545157545361463213

namespace A348497

/-- `A018804(n+1)/A347128(n+1)*A348498(n+1)` -/
def P4545157545361463213.Spec : Prop :=
  ∀ n, P4545157545361463213.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P4315592499278757644

`A348492(n+1)/A348494(n+1)*A348498(n+1)`
-/

namespace A348497.P4315592499278757644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A348494 (n + 1) : ℚ) * (A348498 (n + 1) : ℚ)

end

end A348497.P4315592499278757644

namespace A348497

/-- `A348492(n+1)/A348494(n+1)*A348498(n+1)` -/
def P4315592499278757644.Spec : Prop :=
  ∀ n, P4315592499278757644.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P10880751766721850107

`A348495(n+1)/A348496(n+1)*A348498(n+1)`
-/

namespace A348497.P10880751766721850107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A348496 (n + 1) : ℚ) * (A348498 (n + 1) : ℚ)

end

end A348497.P10880751766721850107

namespace A348497

/-- `A348495(n+1)/A348496(n+1)*A348498(n+1)` -/
def P10880751766721850107.Spec : Prop :=
  ∀ n, P10880751766721850107.a n = (A348497 (n + 1) : ℚ)

end A348497

/-! ## A348497.P1067138966900176044

`A001281(A003415(n+1)*A275437(n))`
-/

namespace A348497.P1067138966900176044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A003415 (n + 1) * A275437 n).toNat

end

end A348497.P1067138966900176044

namespace A348497

/-- `A001281(A003415(n+1)*A275437(n))` -/
def P1067138966900176044.Spec : Prop :=
  ∀ n, P1067138966900176044.a n = A348497 (n + 1)

end A348497

/-! ## A348497.P4231762729033045113

`A004525(A003415(n+1)*A275437(n))`
-/

namespace A348497.P4231762729033045113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003415 (n + 1) * A275437 n).toNat

end

end A348497.P4231762729033045113

namespace A348497

/-- `A004525(A003415(n+1)*A275437(n))` -/
def P4231762729033045113.Spec : Prop :=
  ∀ n, P4231762729033045113.a n = A348497 (n + 1)

end A348497

/-! ## A348497.P14754349670486190824

`A004526(A003415(n+1)*A275437(n))`
-/

namespace A348497.P14754349670486190824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003415 (n + 1) * A275437 n).toNat

end

end A348497.P14754349670486190824

namespace A348497

/-- `A004526(A003415(n+1)*A275437(n))` -/
def P14754349670486190824.Spec : Prop :=
  ∀ n, P14754349670486190824.a n = A348497 (n + 1)

end A348497

/-! ## A348497.P8103660112274395004

`A025480(A003415(n+1)*A275437(n))`
-/

namespace A348497.P8103660112274395004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A003415 (n + 1) * A275437 n).toNat

end

end A348497.P8103660112274395004

namespace A348497

/-- `A025480(A003415(n+1)*A275437(n))` -/
def P8103660112274395004.Spec : Prop :=
  ∀ n, P8103660112274395004.a n = A348497 (n + 1)

end A348497

/-!
# A348498: a(n) = gcd(A003415(n), A347130(n)) / A003557(n), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

The programs for A348498, the canonical program `A348498.P5884788677903140983` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348498 has offset 1).

The definition of A348498 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A347129, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348498.P3453517289745191146

`A348497(n+1)/A003557(n+1)`
-/

namespace A348498.P3453517289745191146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348497 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348498.P3453517289745191146

namespace A348498

/-- `A348497(n+1)/A003557(n+1)` -/
def P3453517289745191146.Spec : Prop :=
  ∀ n, P3453517289745191146.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P5884788677903140983

`gcd(A342001(n+1), A347129(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348498

/-- `gcd(A342001(n+1), A347129(n+1))` -/
def P5884788677903140983.Spec : Prop :=
  ∀ n, (P5884788677903140983.a n : ℤ) = A348498 (n + 1)

theorem P5884788677903140983.correct : P5884788677903140983.Spec := by
  intro n
  simp only [A348498, Nat.add_sub_cancel]

end A348498

/-! ## A348498.P646234575618609173

`gcd(A003415(n+1), A347130(n+1))/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348498.P646234575618609173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A003415 (n + 1)) (A347130 (n + 1)) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348498.P646234575618609173

namespace A348498

/-- `gcd(A003415(n+1), A347130(n+1))/A003557(n+1)` -/
def P646234575618609173.Spec : Prop :=
  ∀ n, P646234575618609173.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P8207188618259740516

`A342001(n+1)/Δ[A028392(n)]`
-/

namespace A348498.P8207188618259740516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A348498.P8207188618259740516

namespace A348498

/-- `A342001(n+1)/Δ[A028392(n)]` -/
def P8207188618259740516.Spec : Prop :=
  ∀ n, P8207188618259740516.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P15972541940873723059

`A342001(n+1)/2*A275437(n)`
-/

namespace A348498.P15972541940873723059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / 2 * (A275437 n : ℚ)

end

end A348498.P15972541940873723059

namespace A348498

/-- `A342001(n+1)/2*A275437(n)` -/
def P15972541940873723059.Spec : Prop :=
  ∀ n, P15972541940873723059.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P267115368536467370

`A342001(n+1)/ceil(acot(A082375(n)))`
-/

namespace A348498.P267115368536467370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (A082375 n : ℝ)⌉ : ℚ)

end

end A348498.P267115368536467370

namespace A348498

/-- `A342001(n+1)/ceil(acot(A082375(n)))` -/
def P267115368536467370.Spec : Prop :=
  ∀ n, P267115368536467370.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P5241879420523062674

`A342001(n+1)/A000122(n+1)!`
-/

namespace A348498.P5241879420523062674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (Nat.factorial (A000122 (n + 1)).toNat : ℚ)

end

end A348498.P5241879420523062674

namespace A348498

/-- `A342001(n+1)/A000122(n+1)!` -/
def P5241879420523062674.Spec : Prop :=
  ∀ n, P5241879420523062674.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P16045871220494983471

`A014682(A275437(n)*A342001(n+1))`
-/

namespace A348498.P16045871220494983471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P16045871220494983471

namespace A348498

/-- `A014682(A275437(n)*A342001(n+1))` -/
def P16045871220494983471.Spec : Prop :=
  ∀ n, P16045871220494983471.a n = A348498 (n + 1)

end A348498

/-! ## A348498.P13747755426004256977

`A348494(n+1)/A348492(n+1)*A348497(n+1)`
-/

namespace A348498.P13747755426004256977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348494 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ) * (A348497 (n + 1) : ℚ)

end

end A348498.P13747755426004256977

namespace A348498

/-- `A348494(n+1)/A348492(n+1)*A348497(n+1)` -/
def P13747755426004256977.Spec : Prop :=
  ∀ n, P13747755426004256977.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P11943712802159403594

`A348496(n+1)/A348495(n+1)*A348497(n+1)`
-/

namespace A348498.P11943712802159403594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348496 (n + 1) : ℚ) / (A348495 (n + 1) : ℚ) * (A348497 (n + 1) : ℚ)

end

end A348498.P11943712802159403594

namespace A348498

/-- `A348496(n+1)/A348495(n+1)*A348497(n+1)` -/
def P11943712802159403594.Spec : Prop :=
  ∀ n, P11943712802159403594.a n = (A348498 (n + 1) : ℚ)

end A348498

/-! ## A348498.P5318795340752145221

`A001281(A275437(n)*A342001(n+1))`
-/

namespace A348498.P5318795340752145221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P5318795340752145221

namespace A348498

/-- `A001281(A275437(n)*A342001(n+1))` -/
def P5318795340752145221.Spec : Prop :=
  ∀ n, P5318795340752145221.a n = A348498 (n + 1)

end A348498

/-! ## A348498.P18282544925436817024

`A004525(A275437(n)*A342001(n+1))`
-/

namespace A348498.P18282544925436817024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P18282544925436817024

namespace A348498

/-- `A004525(A275437(n)*A342001(n+1))` -/
def P18282544925436817024.Spec : Prop :=
  ∀ n, P18282544925436817024.a n = A348498 (n + 1)

end A348498

/-! ## A348498.P17916655122130435141

`A004526(A275437(n)*A342001(n+1))`
-/

namespace A348498.P17916655122130435141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P17916655122130435141

namespace A348498

/-- `A004526(A275437(n)*A342001(n+1))` -/
def P17916655122130435141.Spec : Prop :=
  ∀ n, P17916655122130435141.a n = A348498 (n + 1)

end A348498

/-! ## A348498.P18207758796962103214

`A025480(A275437(n)*A342001(n+1))`
-/

namespace A348498.P18207758796962103214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P18207758796962103214

namespace A348498

/-- `A025480(A275437(n)*A342001(n+1))` -/
def P18207758796962103214.Spec : Prop :=
  ∀ n, P18207758796962103214.a n = A348498 (n + 1)

end A348498

/-! ## A348498.P16687278247835256512

`A026741(A275437(n)*A342001(n+1))`
-/

namespace A348498.P16687278247835256512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P16687278247835256512

namespace A348498

/-- `A026741(A275437(n)*A342001(n+1))` -/
def P16687278247835256512.Spec : Prop :=
  ∀ n, P16687278247835256512.a n = A348498 (n + 1)

end A348498

/-! ## A348498.P14019469605281449302

`A110654(A275437(n)*A342001(n+1))`
-/

namespace A348498.P14019469605281449302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P14019469605281449302

namespace A348498

/-- `A110654(A275437(n)*A342001(n+1))` -/
def P14019469605281449302.Spec : Prop :=
  ∀ n, P14019469605281449302.a n = A348498 (n + 1)

end A348498

/-! ## A348498.P7114068574328614737

`A142150(A275437(n)*A342001(n+1))`
-/

namespace A348498.P7114068574328614737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P7114068574328614737

namespace A348498

/-- `A142150(A275437(n)*A342001(n+1))` -/
def P7114068574328614737.Spec : Prop :=
  ∀ n, P7114068574328614737.a n = A348498 (n + 1)

end A348498

/-!
# A348499: Numbers k such that A003968(k) is a multiple of k, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

The programs for A348499, the canonical program `A348499.P15953231188043729446` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348499 has offset 1).

The definition of A348499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348499.P7333741501742889606

`record[A348036(n+1)]`
-/

namespace A348499.P7333741501742889606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348499.P7333741501742889606

namespace A348499

/-- `record[A348036(n+1)]` -/
def P7333741501742889606.Spec : Prop :=
  ∀ n, P7333741501742889606.a n = A348499 (n + 1)

end A348499

/-! ## A348499.P10065200188449660593

`eq[1, A348037(n+1)]+1`
-/

namespace A348499.P10065200188449660593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348499.P10065200188449660593

namespace A348499

/-- `eq[1, A348037(n+1)]+1` -/
def P10065200188449660593.Spec : Prop :=
  ∀ n, (P10065200188449660593.a n : ℤ) = A348499 (n + 1)

end A348499

/-! ## A348499.P10854615205917314582

`record[A007947(n+1)*A348039(n+1)]`
-/

namespace A348499.P10854615205917314582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A348039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348499.P10854615205917314582

namespace A348499

/-- `record[A007947(n+1)*A348039(n+1)]` -/
def P10854615205917314582.Spec : Prop :=
  ∀ n, P10854615205917314582.a n = A348499 (n + 1)

end A348499

/-! ## A348499.P15061233768645156240

`lt[A348037(n+1), A020639(or(1, n)+1)]+1`
-/

namespace A348499.P15061233768645156240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348499.P15061233768645156240

namespace A348499

/-- `lt[A348037(n+1), A020639(or(1, n)+1)]+1` -/
def P15061233768645156240.Spec : Prop :=
  ∀ n, (P15061233768645156240.a n : ℤ) = A348499 (n + 1)

end A348499

/-! ## A348499.P4988924455723044004

`filter[A119316(n+1), A353559(#)]`
-/

namespace A348499.P4988924455723044004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A348499.P4988924455723044004

namespace A348499

/-- `filter[A119316(n+1), A353559(#)]` -/
def P4988924455723044004.Spec : Prop :=
  ∀ n, P4988924455723044004.a n = A348499 (n + 1)

end A348499

/-! ## A348499.P6955472148718762184

`filter[A242031(n+1), A353559(#)]`
-/

namespace A348499.P6955472148718762184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A348499.P6955472148718762184

namespace A348499

/-- `filter[A242031(n+1), A353559(#)]` -/
def P6955472148718762184.Spec : Prop :=
  ∀ n, P6955472148718762184.a n = A348499 (n + 1)

end A348499

/-! ## A348499.P3187465460136481271

`filter[A213367(n+1), A353559(#)]`
-/

namespace A348499.P3187465460136481271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A348499.P3187465460136481271

namespace A348499

/-- `filter[A213367(n+1), A353559(#)]` -/
def P3187465460136481271.Spec : Prop :=
  ∀ n, P3187465460136481271.a n = A348499 (n + 1)

end A348499

/-! ## A348499.P1261732033328330123

`filter[n+1, A353559(#)]`
-/

namespace A348499.P1261732033328330123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j) = 1) n)

end

end A348499.P1261732033328330123

namespace A348499

/-- `filter[n+1, A353559(#)]` -/
def P1261732033328330123.Spec : Prop :=
  ∀ n, (P1261732033328330123.a n : ℤ) = A348499 (n + 1)

end A348499

/-! ## A348499.P15953231188043729446

`record[gcd(n+1, A003968(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348499

/-- `record[gcd(n+1, A003968(n+1))]` -/
def P15953231188043729446.Spec : Prop :=
  ∀ n, (P15953231188043729446.a n : ℤ) = A348499 (n + 1)

theorem P15953231188043729446.correct : P15953231188043729446.Spec := by
  intro n
  simp only [A348499, Nat.add_sub_cancel]

end A348499

/-! ## A348499.P16003617955519757830

`record[A003968(n+1)/A348038(n+1)]`
-/

namespace A348499.P16003617955519757830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A348038 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348499.P16003617955519757830

namespace A348499

/-- `record[A003968(n+1)/A348038(n+1)]` -/
def P16003617955519757830.Spec : Prop :=
  ∀ n, P16003617955519757830.a n = (A348499 (n + 1) : ℚ)

end A348499

/-! ## A348499.P10303713866772178982

`record[A028310(n/A348037(A028310(n)))]`
-/

namespace A348499.P10303713866772178982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A348037 (A028310 n).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348499.P10303713866772178982

namespace A348499

/-- `record[A028310(n/A348037(A028310(n)))]` -/
def P10303713866772178982.Spec : Prop :=
  ∀ n, P10303713866772178982.a n = A348499 (n + 1)

end A348499

