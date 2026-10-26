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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A008202: Coordination sequence T7 for Zeolite Code MTW.

The programs for A008202, there is no canonical definition to state claims against.
-/

/-! ## A008202.P13540575923060773122

`A301225(n)-A185037((2-n)²)`
-/

namespace A008202.P13540575923060773122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301225 n - A185037 ((2 - (n : ℤ)) ^ 2).toNat

end

end A008202.P13540575923060773122

/-! ## A008202.P11775330089624688854

`∑[∑[A267108(A092991(3*n+4))]]`
-/

namespace A008202.P11775330089624688854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267108 (A092991 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008202.P11775330089624688854

/-! ## A008202.P17931813558310095293

`A236325(A041658(n))+A001105(n)`
-/

namespace A008202.P17931813558310095293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236325 (A041658 n).toNat + A001105 n

end

end A008202.P17931813558310095293

/-! ## A008202.P17761899148581790936

`A301225(n)+A047885(A039907(n))`
-/

namespace A008202.P17761899148581790936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301225 n + A047885 (A039907 n).toNat

end

end A008202.P17761899148581790936

/-!
# A008203: Coordination sequence T1 for Zeolite Code NAT.

The programs for A008203, there is no canonical definition to state claims against.
-/

/-! ## A008203.P13270375704689945192

`A008000(n)-A353836(ceil(2^(n-1)))`
-/

namespace A008203.P13270375704689945192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A353836 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A008203.P13270375704689945192

/-! ## A008203.P6483818841203496196

`A008000(n)-A105700(A000088(n))`
-/

namespace A008203.P6483818841203496196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A105700 (A000088 n).toNat

end

end A008203.P6483818841203496196

/-! ## A008203.P14064643529134401358

`A008000(n)-A287516(A177527(n))`
-/

namespace A008203.P14064643529134401358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A287516 (A177527 n).toNat

end

end A008203.P14064643529134401358

/-! ## A008203.P4936356142236811310

`A008000(n)-A065339(A079309(n+1))`
-/

namespace A008203.P4936356142236811310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A065339 (A079309 (n + 1)).toNat

end

end A008203.P4936356142236811310

/-!
# A008205: Coordination sequence T1 for Zeolite Code NES.

The programs for A008205, there is no canonical definition to state claims against.
-/

/-! ## A008205.P4867568497409592061

`A008095(n)-A117707(A000389(n))`
-/

namespace A008205.P4867568497409592061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008095 n - A117707 (A000389 n).toNat

end

end A008205.P4867568497409592061

/-! ## A008205.P8209345374155615036

`A341193(n+4)+A001222(A085632(n+1))`
-/

namespace A008205.P8209345374155615036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341193 (n + 4) + A001222 (A085632 (n + 1)).toNat

end

end A008205.P8209345374155615036

/-!
# A008206: Coordination sequence T2 for Zeolite Code NES.

The programs for A008206, there is no canonical definition to state claims against.
-/

/-! ## A008206.P16632140559180730158

`∑[∑[A111986(A182751(n+1))]]`
-/

namespace A008206.P16632140559180730158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111986 (A182751 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008206.P16632140559180730158

/-! ## A008206.P10153950390046638819

`A035936(A027810(n))-A000035(n)`
-/

namespace A008206.P10153950390046638819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A027810 n).toNat - A000035 n

end

end A008206.P10153950390046638819

/-! ## A008206.P14247808192989940551

`A301209(n)+A099859(A099881(n+1))`
-/

namespace A008206.P14247808192989940551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301209 n + A099859 (A099881 (n + 1)).toNat

end

end A008206.P14247808192989940551

/-!
# A008209: Coordination sequence T5 for Zeolite Code NES.

The programs for A008209, there is no canonical definition to state claims against.
-/

/-! ## A008209.P15104256221520190269

`A335881(A002293(n))+A084849(n)`
-/

namespace A008209.P15104256221520190269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (A002293 n).toNat + A084849 n

end

end A008209.P15104256221520190269

/-!
# A008210: Coordination sequence T6 for Zeolite Code NES.

The programs for A008210, there is no canonical definition to state claims against.
-/

/-! ## A008210.P17712021503854331639

`xor(A016424(A033816(n+3)), A016439(n))`
-/

namespace A008210.P17712021503854331639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016424 (A033816 (n + 3)).toNat) (A016439 n)

end

end A008210.P17712021503854331639

/-!
# A008212: Coordination sequence T1 for Zeolite Code NON.

The programs for A008212, there is no canonical definition to state claims against.
-/

/-! ## A008212.P15408842160204922986

`A241425(A000142(n))+A008158(n)`
-/

namespace A008212.P15408842160204922986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (A000142 n).toNat + A008158 n

end

end A008212.P15408842160204922986

/-! ## A008212.P268462996126011268

`A347870(A115088(n))+A008158(n)`
-/

namespace A008212.P268462996126011268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A115088 n).toNat + A008158 n

end

end A008212.P268462996126011268

/-! ## A008212.P6282330293936994115

`A191152(A362389(n))+A008158(n)`
-/

namespace A008212.P6282330293936994115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191152 (A362389 n).toNat + A008158 n

end

end A008212.P6282330293936994115

/-! ## A008212.P7353286795885297247

`or(A008158(n), A345197(A008128(n)))`
-/

namespace A008212.P7353286795885297247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008158 n) (A345197 (A008128 n).toNat)

end

end A008212.P7353286795885297247

/-!
# A008215: Coordination sequence T4 for Zeolite Code NON.

The programs for A008215, there is no canonical definition to state claims against.
-/

/-! ## A008215.P1409103239560415895

`∑[∑[dr(A271484(A271493(n+1)²)+2^n)]]`
-/

namespace A008215.P1409103239560415895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A271484 (A271493 (n + 1) ^ 2).toNat + (2 ^ n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008215.P1409103239560415895

/-! ## A008215.P15966972900697216143

`xor(A008778(n), A163352(A000975(n)))`
-/

namespace A008215.P15966972900697216143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008778 n) (A163352 (A000975 n).toNat)

end

end A008215.P15966972900697216143

/-!
# A008217: a(n) = floor(n/4)*floor((n+1)/4).

The programs for A008217, the canonical program `A008217.P7965013478255752615` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008217 has offset 0).

The definition of A008217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*floor((n+1)/4)` (program `A008217.P7965013478255752615`, by `A008217.P7965013478255752615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008217.P7965013478255752615

`floor(n/4)*floor((n+1)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008217

/-- `floor(n/4)*floor((n+1)/4)` -/
def P7965013478255752615.Spec : Prop :=
  ∀ n, P7965013478255752615.a n = A008217 n

theorem P7965013478255752615.correct : P7965013478255752615.Spec := by
  intro n
  simp only [A008217]

end A008217

/-! ## A008217.P4733948302832309118

`floor((∑[∑[n]%2]-n)²/4)`
-/

namespace A008217.P4733948302832309118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 4⌋

end

end A008217.P4733948302832309118

namespace A008217

/-- `floor((∑[∑[n]%2]-n)²/4)` -/
def P4733948302832309118.Spec : Prop :=
  ∀ n, P4733948302832309118.a n = A008217 n

end A008217

/-! ## A008217.P4509025799487465532

`floor((A004524(n)/2)²)`
-/

namespace A008217.P4509025799487465532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A004524 n : ℚ) / 2) ^ 2⌋

end

end A008217.P4509025799487465532

namespace A008217

/-- `floor((A004524(n)/2)²)` -/
def P4509025799487465532.Spec : Prop :=
  ∀ n, P4509025799487465532.a n = A008217 n

end A008217

/-! ## A008217.P11532943871672596932

`A002620(∑[char[or(2, n)+1]])`
-/

namespace A008217.P11532943871672596932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008217.P11532943871672596932

namespace A008217

/-- `A002620(∑[char[or(2, n)+1]])` -/
def P11532943871672596932.Spec : Prop :=
  ∀ n, P11532943871672596932.a n = A008217 n

end A008217

/-! ## A008217.P9988022522621320829

`A002620(n-∑[∑[n]%2])`
-/

namespace A008217.P9988022522621320829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008217.P9988022522621320829

namespace A008217

/-- `A002620(n-∑[∑[n]%2])` -/
def P9988022522621320829.Spec : Prop :=
  ∀ n, P9988022522621320829.a n = A008217 n

end A008217

/-! ## A008217.P17971654769408040027

`A159915(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A008217.P17971654769408040027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A159915 (n - 1) - a (n - 1)

end

end A008217.P17971654769408040027

namespace A008217

/-- `A159915(n-1)-a(n-1)` -/
def P17971654769408040027.Spec : Prop :=
  ∀ n, P17971654769408040027.a n = A008217 n

end A008217

/-! ## A008217.P13340987379032057936

`A002620(A004524(n))`
-/

namespace A008217.P13340987379032057936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004524 n).toNat

end

end A008217.P13340987379032057936

namespace A008217

/-- `A002620(A004524(n))` -/
def P13340987379032057936.Spec : Prop :=
  ∀ n, P13340987379032057936.a n = A008217 n

end A008217

/-! ## A008217.P4763184662340066515

`A008133(A057353(n))`
-/

namespace A008217.P4763184662340066515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A057353 n).toNat

end

end A008217.P4763184662340066515

namespace A008217

/-- `A008133(A057353(n))` -/
def P4763184662340066515.Spec : Prop :=
  ∀ n, P4763184662340066515.a n = A008217 n

end A008217

/-! ## A008217.P214028876158196291

`A008133(A130766(n))`
-/

namespace A008217.P214028876158196291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A130766 n).toNat

end

end A008217.P214028876158196291

namespace A008217

/-- `A008133(A130766(n))` -/
def P214028876158196291.Spec : Prop :=
  ∀ n, P214028876158196291.a n = A008217 n

end A008217

/-! ## A008217.P7809883449395890031

`A008797(A290561(n))`
-/

namespace A008217.P7809883449395890031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (A290561 n).toNat

end

end A008217.P7809883449395890031

namespace A008217

/-- `A008797(A290561(n))` -/
def P7809883449395890031.Spec : Prop :=
  ∀ n, P7809883449395890031.a n = A008217 n

end A008217

/-! ## A008217.P10190251766217723944

`A008130(A130766(n)-1)`
-/

namespace A008217.P10190251766217723944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A130766 n - 1).toNat

end

end A008217.P10190251766217723944

namespace A008217

/-- `A008130(A130766(n)-1)` -/
def P10190251766217723944.Spec : Prop :=
  ∀ n, P10190251766217723944.a n = A008217 n

end A008217

/-! ## A008217.P10092790344795890548

`A038715(n)-A002265(n)`
-/

namespace A008217.P10092790344795890548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 n - A002265 n

end

end A008217.P10092790344795890548

namespace A008217

/-- `A038715(n)-A002265(n)` -/
def P10092790344795890548.Spec : Prop :=
  ∀ n, P10092790344795890548.a n = A008217 n

end A008217

/-! ## A008217.P15141821696892698091

`A002620(A004525(n+1)-1)`
-/

namespace A008217.P15141821696892698091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004525 (n + 1) - 1).toNat

end

end A008217.P15141821696892698091

namespace A008217

/-- `A002620(A004525(n+1)-1)` -/
def P15141821696892698091.Spec : Prop :=
  ∀ n, P15141821696892698091.a n = A008217 n

end A008217

/-! ## A008217.P17056599217636638516

`A038715(n)+1-A008621(n)`
-/

namespace A008217.P17056599217636638516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 n + (1 - A008621 n)

end

end A008217.P17056599217636638516

namespace A008217

/-- `A038715(n)+1-A008621(n)` -/
def P17056599217636638516.Spec : Prop :=
  ∀ n, P17056599217636638516.a n = A008217 n

end A008217

/-! ## A008217.P9871866028682927488

`A002620(A047237(n+1)-n)`
-/

namespace A008217.P9871866028682927488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A047237 (n + 1) - (n : ℤ)).toNat

end

end A008217.P9871866028682927488

namespace A008217

/-- `A002620(A047237(n+1)-n)` -/
def P9871866028682927488.Spec : Prop :=
  ∀ n, P9871866028682927488.a n = A008217 n

end A008217

/-! ## A008217.P11633869443773413606

`A008238(n-A010873(A140201(n)))`
-/

namespace A008217.P11633869443773413606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 ((n : ℤ) - A010873 (A140201 n).toNat).toNat

end

end A008217.P11633869443773413606

namespace A008217

/-- `A008238(n-A010873(A140201(n)))` -/
def P11633869443773413606.Spec : Prop :=
  ∀ n, P11633869443773413606.a n = A008217 n

end A008217

/-! ## A008217.P13730746898746166920

`sqrt(A295643(n+1)*A295643(n))`
-/

namespace A008217.P13730746898746166920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295643 (n + 1) * A295643 n : ℝ)

end

end A008217.P13730746898746166920

namespace A008217

/-- `sqrt(A295643(n+1)*A295643(n))` -/
def P13730746898746166920.Spec : Prop :=
  ∀ n, P13730746898746166920.a n = (A008217 n : ℝ)

end A008217

/-! ## A008217.P8230326302557419901

`A008238(n+1)-A002265(n+1)`
-/

namespace A008217.P8230326302557419901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (n + 1) - A002265 (n + 1)

end

end A008217.P8230326302557419901

namespace A008217

/-- `A008238(n+1)-A002265(n+1)` -/
def P8230326302557419901.Spec : Prop :=
  ∀ n, P8230326302557419901.a n = A008217 n

end A008217

/-! ## A008217.P6579813026664696224

`A008238(n+1)+1-A008621(n+1)`
-/

namespace A008217.P6579813026664696224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (n + 1) + (1 - A008621 (n + 1))

end

end A008217.P6579813026664696224

namespace A008217

/-- `A008238(n+1)+1-A008621(n+1)` -/
def P6579813026664696224.Spec : Prop :=
  ∀ n, P6579813026664696224.a n = A008217 n

end A008217

/-! ## A008217.P12238121635558945956

`A002620(A002265(n+1)+A002265(n))`
-/

namespace A008217.P12238121635558945956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002265 (n + 1) + A002265 n).toNat

end

end A008217.P12238121635558945956

namespace A008217

/-- `A002620(A002265(n+1)+A002265(n))` -/
def P12238121635558945956.Spec : Prop :=
  ∀ n, P12238121635558945956.a n = A008217 n

end A008217

/-!
# A008218: a(n) = floor(n/4)*floor((n+1)/4)*floor((n+2)/4).

The programs for A008218, the canonical program `A008218.P12475591354940760582` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008218 has offset 0).

The definition of A008218 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*floor((n+1)/4)*floor((n+2)/4)` (program `A008218.P12475591354940760582`, by `A008218.P12475591354940760582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008218.P12475591354940760582

`floor(n/4)*floor((n+1)/4)*floor((n+2)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008218

/-- `floor(n/4)*floor((n+1)/4)*floor((n+2)/4)` -/
def P12475591354940760582.Spec : Prop :=
  ∀ n, P12475591354940760582.a n = A008218 n

theorem P12475591354940760582.correct : P12475591354940760582.Spec := by
  intro n
  simp only [A008218]

end A008218

/-! ## A008218.P3792498790614817651

`Δ[A008233(abs(1-n))]`
-/

namespace A008218.P3792498790614817651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008218.P3792498790614817651

namespace A008218

/-- `Δ[A008233(abs(1-n))]` -/
def P3792498790614817651.Spec : Prop :=
  ∀ n, P3792498790614817651.a n = A008218 n

end A008218

/-! ## A008218.P17787513689492743274

`A008233(n)/A065033(A065033(n))`
-/

namespace A008218.P17787513689492743274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008233 n : ℚ) / (A065033 (A065033 n).toNat : ℚ)

end

end A008218.P17787513689492743274

namespace A008218

/-- `A008233(n)/A065033(A065033(n))` -/
def P17787513689492743274.Spec : Prop :=
  ∀ n, P17787513689492743274.a n = (A008218 n : ℚ)

end A008218

/-! ## A008218.P15284459776668473107

`A008233(n)-A008233(A004273(n)-n)`
-/

namespace A008218.P15284459776668473107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 n - A008233 (A004273 n - (n : ℤ)).toNat

end

end A008218.P15284459776668473107

namespace A008218

/-- `A008233(n)-A008233(A004273(n)-n)` -/
def P15284459776668473107.Spec : Prop :=
  ∀ n, P15284459776668473107.a n = A008218 n

end A008218

/-! ## A008218.P18137093610814865671

`A008233(n)-A008233(A163985(n)-n)`
-/

namespace A008218.P18137093610814865671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 n - A008233 (A163985 n - (n : ℤ)).toNat

end

end A008218.P18137093610814865671

namespace A008218

/-- `A008233(n)-A008233(A163985(n)-n)` -/
def P18137093610814865671.Spec : Prop :=
  ∀ n, P18137093610814865671.a n = A008218 n

end A008218

/-! ## A008218.P10426205408144464032

`A008233(n)-A008233(A004280(n+1)-n)`
-/

namespace A008218.P10426205408144464032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 n - A008233 (A004280 (n + 1) - (n : ℤ)).toNat

end

end A008218.P10426205408144464032

namespace A008218

/-- `A008233(n)-A008233(A004280(n+1)-n)` -/
def P10426205408144464032.Spec : Prop :=
  ∀ n, P10426205408144464032.a n = A008218 n

end A008218

/-! ## A008218.P8334426624295547022

`A008233(n)/(A110654(n)-A123108(A110654(n)))`
-/

namespace A008218.P8334426624295547022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008233 n : ℚ) / (A110654 n - A123108 (A110654 n).toNat : ℚ)

end

end A008218.P8334426624295547022

namespace A008218

/-- `A008233(n)/(A110654(n)-A123108(A110654(n)))` -/
def P8334426624295547022.Spec : Prop :=
  ∀ n, P8334426624295547022.a n = (A008218 n : ℚ)

end A008218

/-! ## A008218.P14080487441351224940

`A008496(A160186(n))`
-/

namespace A008218.P14080487441351224940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (A160186 n).toNat

end

end A008218.P14080487441351224940

namespace A008218

/-- `A008496(A160186(n))` -/
def P14080487441351224940.Spec : Prop :=
  ∀ n, P14080487441351224940.a n = A008218 n

end A008218

/-! ## A008218.P18409075776068175508

`A008496(A047201(n+1))`
-/

namespace A008218.P18409075776068175508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (A047201 (n + 1)).toNat

end

end A008218.P18409075776068175508

namespace A008218

/-- `A008496(A047201(n+1))` -/
def P18409075776068175508.Spec : Prop :=
  ∀ n, P18409075776068175508.a n = A008218 n

end A008218

/-! ## A008218.P11034325891510611130

`A008496(A047203(n+1))`
-/

namespace A008218.P11034325891510611130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (A047203 (n + 1)).toNat

end

end A008218.P11034325891510611130

namespace A008218

/-- `A008496(A047203(n+1))` -/
def P11034325891510611130.Spec : Prop :=
  ∀ n, P11034325891510611130.a n = A008218 n

end A008218

/-! ## A008218.P15694151159979887019

`A008496(A047207(n+1))`
-/

namespace A008218.P15694151159979887019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (A047207 (n + 1)).toNat

end

end A008218.P15694151159979887019

namespace A008218

/-- `A008496(A047207(n+1))` -/
def P15694151159979887019.Spec : Prop :=
  ∀ n, P15694151159979887019.a n = A008218 n

end A008218

/-! ## A008218.P5908663852280555803

`A008496(A002265(n)+1+n)`
-/

namespace A008218.P5908663852280555803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (A002265 n + 1 + (n : ℤ)).toNat

end

end A008218.P5908663852280555803

namespace A008218

/-- `A008496(A002265(n)+1+n)` -/
def P5908663852280555803.Spec : Prop :=
  ∀ n, P5908663852280555803.a n = A008218 n

end A008218

/-! ## A008218.P3368481592234582953

`A008496(A004526(A004526(n))+n+1)`
-/

namespace A008218.P3368481592234582953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (A004526 (A004526 n).toNat + (n + 1 : ℤ)).toNat

end

end A008218.P3368481592234582953

namespace A008218

/-- `A008496(A004526(A004526(n))+n+1)` -/
def P3368481592234582953.Spec : Prop :=
  ∀ n, P3368481592234582953.a n = A008218 n

end A008218

/-! ## A008218.P399476603527548737

`A008496(n-(A002265(n)-A004526(n)))`
-/

namespace A008218.P399476603527548737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 ((n : ℤ) - (A002265 n - A004526 n)).toNat

end

end A008218.P399476603527548737

namespace A008218

/-- `A008496(n-(A002265(n)-A004526(n)))` -/
def P399476603527548737.Spec : Prop :=
  ∀ n, P399476603527548737.a n = A008218 n

end A008218

/-! ## A008218.P2056249984014645675

`A008496(A132292(2*n+1)+n+1)`
-/

namespace A008218.P2056249984014645675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 (A132292 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A008218.P2056249984014645675

namespace A008218

/-- `A008496(A132292(2*n+1)+n+1)` -/
def P2056249984014645675.Spec : Prop :=
  ∀ n, P2056249984014645675.a n = A008218 n

end A008218

/-! ## A008218.P2692464341091670677

`sqrt(A295643(A295643(2*n))*A295643(n+1))`
-/

namespace A008218.P2692464341091670677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295643 (A295643 (2 * n)).toNat * A295643 (n + 1) : ℝ)

end

end A008218.P2692464341091670677

namespace A008218

/-- `sqrt(A295643(A295643(2*n))*A295643(n+1))` -/
def P2692464341091670677.Spec : Prop :=
  ∀ n, P2692464341091670677.a n = (A008218 n : ℝ)

end A008218

/-!
# A008219: Coordination sequence T1 for Zeolite Code PAU.

The programs for A008219, there is no canonical definition to state claims against.
-/

/-! ## A008219.P9013690777784067880

`∑[∑[A001222(A240296(n+1))]]`
-/

namespace A008219.P9013690777784067880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A240296 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008219.P9013690777784067880

/-! ## A008219.P6236666222034080010

`xor(A299274(n), A369055(A006319(n)))`
-/

namespace A008219.P6236666222034080010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A299274 n) (A369055 (A006319 n).toNat)

end

end A008219.P6236666222034080010

/-!
# A008220: Coordination sequence T2 for Zeolite Code PAU.

The programs for A008220, there is no canonical definition to state claims against.
-/

/-! ## A008220.P16701385028427902293

`A257679(10*C(n, 6))+A008160(n)`
-/

namespace A008220.P16701385028427902293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (10 * Nat.choose n 6) + A008160 n

end

end A008220.P16701385028427902293

/-! ## A008220.P12763988705384015235

`∑[∑[A325276(A182747(n))]]`
-/

namespace A008220.P12763988705384015235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325276 (A182747 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008220.P12763988705384015235

/-! ## A008220.P10585341542925302906

`∑[∑[A325276(A002865(2*n+1))]]`
-/

namespace A008220.P10585341542925302906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325276 (A002865 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008220.P10585341542925302906

/-!
# A008221: Coordination sequence T3 for Zeolite Code PAU.

The programs for A008221, there is no canonical definition to state claims against.
-/

/-! ## A008221.P15789495679004837805

`A103128((ceil((2*n)²/3)+1)²)`
-/

namespace A008221.P15789495679004837805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 ((⌈((2 * n) ^ 2 : ℚ) / 3⌉ + 1) ^ 2).toNat

end

end A008221.P15789495679004837805

/-! ## A008221.P864408768898435740

`A123578(A147623(n)²)+1`
-/

namespace A008221.P864408768898435740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A147623 n ^ 2).toNat + 1

end

end A008221.P864408768898435740

/-! ## A008221.P6439727672749386410

`A096220(n)+∑[A130385(n)]`
-/

namespace A008221.P6439727672749386410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096220 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008221.P6439727672749386410

/-! ## A008221.P17752201336892022109

`A301199(n)+A178780(n²+4)`
-/

namespace A008221.P17752201336892022109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301199 n + A178780 (n ^ 2 + 4)

end

end A008221.P17752201336892022109

/-! ## A008221.P5152780867917448556

`∑[∑[A000120(A239851(2*n+5))]]`
-/

namespace A008221.P5152780867917448556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A239851 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008221.P5152780867917448556

/-!
# A008222: Coordination sequence T4 for Zeolite Code PAU.

The programs for A008222, there is no canonical definition to state claims against.
-/

/-! ## A008222.P9058203203241109951

`A016389(A008266(n))+A008266(n)`
-/

namespace A008222.P9058203203241109951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A008266 n).toNat + A008266 n

end

end A008222.P9058203203241109951

/-! ## A008222.P6733630923301167363

`A102683(A038205(n))+A008266(n)`
-/

namespace A008222.P6733630923301167363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A038205 n).toNat + A008266 n

end

end A008222.P6733630923301167363

/-! ## A008222.P1981429748985231562

`A185238(A007590(n))+A008266(n)`
-/

namespace A008222.P1981429748985231562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A007590 n).toNat + A008266 n

end

end A008222.P1981429748985231562

/-! ## A008222.P17148630978351111306

`A301200(n)+A102683(A038205(n))`
-/

namespace A008222.P17148630978351111306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301200 n + A102683 (A038205 n).toNat

end

end A008222.P17148630978351111306

/-! ## A008222.P3874926754151552552

`A318499(A318185(3*(n+1)))+A008266(n)`
-/

namespace A008222.P3874926754151552552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318499 (A318185 (3 * (n + 1))).toNat + A008266 n

end

end A008222.P3874926754151552552

/-!
# A008223: Coordination sequence T5 for Zeolite Code PAU.

The programs for A008223, there is no canonical definition to state claims against.
-/

/-! ## A008223.P2026329479901838992

`A029837(A048855(n))+A008137(n)`
-/

namespace A008223.P2026329479901838992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A048855 n).toNat + A008137 n

end

end A008223.P2026329479901838992

/-! ## A008223.P3858583443717707278

`A008000(n)-A347102(A000142(n))`
-/

namespace A008223.P3858583443717707278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A347102 (A000142 n).toNat

end

end A008223.P3858583443717707278

/-! ## A008223.P3059465758776085606

`A008000(n)-A304793(A060725(n))`
-/

namespace A008223.P3059465758776085606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A304793 (A060725 n).toNat

end

end A008223.P3059465758776085606

/-! ## A008223.P15264095809979576336

`A007077(n+1)-A288633(A000110(n))`
-/

namespace A008223.P15264095809979576336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007077 (n + 1) - A288633 (A000110 n).toNat

end

end A008223.P15264095809979576336

/-! ## A008223.P16134228846772769697

`∑[A228853(n+1)+A001222(A055841(n))]`
-/

namespace A008223.P16134228846772769697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228853 (n + 1) + A001222 (A055841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008223.P16134228846772769697

/-!
# A008224: Coordination sequence T6 for Zeolite Code PAU.

The programs for A008224, there is no canonical definition to state claims against.
-/

/-! ## A008224.P866778962359003096

`∑[∑[A077982(A045623(n))]]`
-/

namespace A008224.P866778962359003096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A045623 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008224.P866778962359003096

/-! ## A008224.P2499662632661670228

`∑[∑[∑[(A288954(n+2)^n)%3]]]`
-/

namespace A008224.P2499662632661670228
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288954 (n + 2) ^ n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008224.P2499662632661670228

/-! ## A008224.P5860285865792447231

`A048147(A342354(∑[n]))`
-/

namespace A008224.P5860285865792447231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A342354 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008224.P5860285865792447231

/-! ## A008224.P11746730497742909053

`∑[∑[A010096(A002356(n))]]`
-/

namespace A008224.P11746730497742909053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010096 (A002356 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008224.P11746730497742909053

/-! ## A008224.P3716672940086246195

`∑[∑[A077982(A018010(n))]]`
-/

namespace A008224.P3716672940086246195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A018010 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008224.P3716672940086246195

/-!
# A008225: Coordination sequence T7 for Zeolite Code PAU.

The programs for A008225, there is no canonical definition to state claims against.
-/

/-! ## A008225.P11493945818784062820

`A008003(n)+A007968(A192162(n+1))`
-/

namespace A008225.P11493945818784062820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008003 n + A007968 (A192162 (n + 1)).toNat

end

end A008225.P11493945818784062820

/-! ## A008225.P16872846254699021278

`∑[∑[A275024(A017545(n))]]`
-/

namespace A008225.P16872846254699021278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A017545 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008225.P16872846254699021278

/-! ## A008225.P499279417530780143

`∑[∑[A275024(A304799(3*n))]]`
-/

namespace A008225.P499279417530780143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A304799 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008225.P499279417530780143

/-! ## A008225.P8745344271687506964

`A277576(2*(n+1))-A070939(A000110(n))`
-/

namespace A008225.P8745344271687506964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277576 (2 * (n + 1)) - A070939 (A000110 n).toNat

end

end A008225.P8745344271687506964

/-!
# A008226: Coordination sequence T8 for Zeolite Code PAU.

The programs for A008226, there is no canonical definition to state claims against.
-/

/-! ## A008226.P16582900261971074032

`A184421(A293503(n)+1)`
-/

namespace A008226.P16582900261971074032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A293503 n + 1).toNat

end

end A008226.P16582900261971074032

/-! ## A008226.P6630902049810128956

`or(A008221(n), A239003(A071743(n)))`
-/

namespace A008226.P6630902049810128956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008221 n) (A239003 (A071743 n).toNat)

end

end A008226.P6630902049810128956

/-! ## A008226.P6653214446285845554

`or(A301199(n), A348691(A014488(n)))`
-/

namespace A008226.P6653214446285845554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301199 n) (A348691 (A014488 n).toNat)

end

end A008226.P6653214446285845554

/-! ## A008226.P7432029736898928742

`A025469(A173548(n+4))+A008221(n)`
-/

namespace A008226.P7432029736898928742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A173548 (n + 4)).toNat + A008221 n

end

end A008226.P7432029736898928742

/-!
# A008227: Coordination sequence T1 for Zeolite Code PHI.

The programs for A008227, there is no canonical definition to state claims against.
-/

/-! ## A008227.P10625163662718969725

`A008026(n)+A244465(A244448(n))+A118015(n)`
-/

namespace A008227.P10625163662718969725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008026 n + (A244465 (A244448 n).toNat + A118015 n)

end

end A008227.P10625163662718969725

/-! ## A008227.P1374599427213980210

`∑[∑[A329317(A164457(n))]]`
-/

namespace A008227.P1374599427213980210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329317 (A164457 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008227.P1374599427213980210

/-!
# A008228: Coordination sequence T2 for Zeolite Code PHI.

The programs for A008228, there is no canonical definition to state claims against.
-/

/-! ## A008228.P9661643172609957756

`∑[∑[A316398(A102942(n+1))]]`
-/

namespace A008228.P9661643172609957756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316398 (A102942 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008228.P9661643172609957756

/-! ## A008228.P17640923719381590250

`A353355(A204631(n)+A000217(n))`
-/

namespace A008228.P17640923719381590250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353355 (A204631 n + A000217 n).toNat

end

end A008228.P17640923719381590250

/-!
# A008229: Coordination sequence T1 for Zeolite Code SGT.

The programs for A008229, there is no canonical definition to state claims against.
-/

/-! ## A008229.P1813899823061728346

`∑[∑[A286605(A100230(n))]]`
-/

namespace A008229.P1813899823061728346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (A100230 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008229.P1813899823061728346

/-!
# A008230: Coordination sequence T2 for Zeolite Code SGT.

The programs for A008230, there is no canonical definition to state claims against.
-/

/-! ## A008230.P5431268757748131107

`xor(A110611(n+1), A347689(A131577(n)))`
-/

namespace A008230.P5431268757748131107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110611 (n + 1)) (A347689 (A131577 n).toNat)

end

end A008230.P5431268757748131107

/-!
# A008233: a(n) = floor(n/4)*floor((n+1)/4)*floor((n+2)/4)*floor((n+3)/4).

The programs for A008233, the canonical program `A008233.P17530761263963221129` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008233 has offset 0).

The definition of A008233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*floor((n+1)/4)*floor((n+2)/4)*floor((n+3)/4)` (program `A008233.P17530761263963221129`, by `A008233.P17530761263963221129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008233.P17530761263963221129

`floor(n/4)*floor((n+1)/4)*floor((n+2)/4)*floor((n+3)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008233

/-- `floor(n/4)*floor((n+1)/4)*floor((n+2)/4)*floor((n+3)/4)` -/
def P17530761263963221129.Spec : Prop :=
  ∀ n, P17530761263963221129.a n = A008233 n

theorem P17530761263963221129.correct : P17530761263963221129.Spec := by
  intro n
  simp only [A008233]

end A008233

/-! ## A008233.P2893011471165559672

`∑[A008218(n)]`
-/

namespace A008233.P2893011471165559672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008233.P2893011471165559672

namespace A008233

/-- `∑[A008218(n)]` -/
def P2893011471165559672.Spec : Prop :=
  ∀ n, P2893011471165559672.a n = A008233 n

end A008233

/-! ## A008233.P17433515626418637939

`A008218(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A008233.P17433515626418637939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008218 n + a (A023443 n).toNat

end

end A008233.P17433515626418637939

namespace A008233

/-- `A008218(n)+a(A023443(n))` -/
def P17433515626418637939.Spec : Prop :=
  ∀ n, P17433515626418637939.a n = A008233 n

end A008233

/-! ## A008233.P13940079451660765571

`∑[A002265(n)*A002620(A004524(n+1))]`
-/

namespace A008233.P13940079451660765571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n * A002620 (A004524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008233.P13940079451660765571

namespace A008233

/-- `∑[A002265(n)*A002620(A004524(n+1))]` -/
def P13940079451660765571.Spec : Prop :=
  ∀ n, P13940079451660765571.a n = A008233 n

end A008233

/-! ## A008233.P3679375046626170967

`∑[A008496(ceil(5*n/4))]`
-/

namespace A008233.P3679375046626170967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008496 ⌈5 * ((n : ℚ) / 4)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008233.P3679375046626170967

namespace A008233

/-- `∑[A008496(ceil(5*n/4))]` -/
def P3679375046626170967.Spec : Prop :=
  ∀ n, P3679375046626170967.a n = A008233 n

end A008233

/-! ## A008233.P6426247441212425140

`A008381(A047201(n+1))`
-/

namespace A008233.P6426247441212425140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047201 (n + 1)).toNat

end

end A008233.P6426247441212425140

namespace A008233

/-- `A008381(A047201(n+1))` -/
def P6426247441212425140.Spec : Prop :=
  ∀ n, P6426247441212425140.a n = A008233 n

end A008233

/-! ## A008233.P12950869483572227565

`A008381(A047203(n+1))`
-/

namespace A008233.P12950869483572227565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A047203 (n + 1)).toNat

end

end A008233.P12950869483572227565

namespace A008233

/-- `A008381(A047203(n+1))` -/
def P12950869483572227565.Spec : Prop :=
  ∀ n, P12950869483572227565.a n = A008233 n

end A008233

/-! ## A008233.P9386961265805069444

`A008381(A002265(n)+1+n)`
-/

namespace A008233.P9386961265805069444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A002265 n + 1 + (n : ℤ)).toNat

end

end A008233.P9386961265805069444

namespace A008233

/-- `A008381(A002265(n)+1+n)` -/
def P9386961265805069444.Spec : Prop :=
  ∀ n, P9386961265805069444.a n = A008233 n

end A008233

/-! ## A008233.P1713306823194658573

`A008381(A004526(A004526(n))+n+1)`
-/

namespace A008233.P1713306823194658573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 (A004526 (A004526 n).toNat + (n + 1 : ℤ)).toNat

end

end A008233.P1713306823194658573

namespace A008233

/-- `A008381(A004526(A004526(n))+n+1)` -/
def P1713306823194658573.Spec : Prop :=
  ∀ n, P1713306823194658573.a n = A008233 n

end A008233

/-! ## A008233.P10331793318611229846

`sqrt(A009694(2*n))`
-/

namespace A008233.P10331793318611229846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A009694 (2 * n) : ℝ)

end

end A008233.P10331793318611229846

namespace A008233

/-- `sqrt(A009694(2*n))` -/
def P10331793318611229846.Spec : Prop :=
  ∀ n, P10331793318611229846.a n = (A008233 n : ℝ)

end A008233

/-! ## A008233.P14284276700104833793

`∑[A002265(n+1)*A002620(A002265(2*n))]`
-/

namespace A008233.P14284276700104833793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) * A002620 (A002265 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008233.P14284276700104833793

namespace A008233

/-- `∑[A002265(n+1)*A002620(A002265(2*n))]` -/
def P14284276700104833793.Spec : Prop :=
  ∀ n, P14284276700104833793.a n = A008233 n

end A008233

/-! ## A008233.P13857673350717913786

`A298368(A117142(n+1))`
-/

namespace A008233.P13857673350717913786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298368 (A117142 (n + 1)).toNat

end

end A008233.P13857673350717913786

namespace A008233

/-- `A298368(A117142(n+1))` -/
def P13857673350717913786.Spec : Prop :=
  ∀ n, P13857673350717913786.a n = A008233 n

end A008233

/-! ## A008233.P8902206439324488675

`A307510(A008811(n))`
-/

namespace A008233.P8902206439324488675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307510 (A008811 n).toNat

end

end A008233.P8902206439324488675

namespace A008233

/-- `A307510(A008811(n))` -/
def P8902206439324488675.Spec : Prop :=
  ∀ n, P8902206439324488675.a n = A008233 n

end A008233

/-!
# A008234: Coordination sequence T1 for Zeolite Code STI.

The programs for A008234, there is no canonical definition to state claims against.
-/

/-! ## A008234.P5575449325416414320

`A301044(n)-A000523(A000142(n))`
-/

namespace A008234.P5575449325416414320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301044 n - A000523 (A000142 n).toNat

end

end A008234.P5575449325416414320

/-! ## A008234.P8329215192853836605

`A347252(n)-A347249(A110043(n))`
-/

namespace A008234.P8329215192853836605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347252 n - A347249 (A110043 n).toNat

end

end A008234.P8329215192853836605

/-! ## A008234.P7933997631046579639

`xor(A008114(n), A257994(A177249(n)))`
-/

namespace A008234.P7933997631046579639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008114 n) (A257994 (A177249 n).toNat)

end

end A008234.P7933997631046579639

/-!
# A008236: Coordination sequence T3 for Zeolite Code STI.

The programs for A008236, there is no canonical definition to state claims against.
-/

/-! ## A008236.P10665094542398864761

`A003056(record[A005132((n+1)*C(n+3, 3))])`
-/

namespace A008236.P10665094542398864761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((n + 1) * Nat.choose (n + 3) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008236.P10665094542398864761

/-! ## A008236.P5795422163784927705

`A003056(record[A005132((n+1)/C(n+3, 3)^-1)])`
-/

namespace A008236.P5795422163784927705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.choose (n + 3) 3 : ℚ) ^ (-1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008236.P5795422163784927705

/-!
# A008238: a(n) = floor(n/4)*ceiling(n/4).

The programs for A008238, the canonical program `A008238.P2207616326505647151` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008238 has offset 0).

The definition of A008238 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil(n/4)` (program `A008238.P2207616326505647151`, by `A008238.P2207616326505647151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008238.P2207616326505647151

`floor(n/4)*ceil(n/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008238

/-- `floor(n/4)*ceil(n/4)` -/
def P2207616326505647151.Spec : Prop :=
  ∀ n, P2207616326505647151.a n = A008238 n

theorem P2207616326505647151.correct : P2207616326505647151.Spec := by
  intro n
  simp only [A008238]

end A008238

/-! ## A008238.P6468375857386532247

`∑[floor(gcd(n, and(2, n))/4)]`
-/

namespace A008238.P6468375857386532247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (Nat.land 2 n) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P6468375857386532247

namespace A008238

/-- `∑[floor(gcd(n, and(2, n))/4)]` -/
def P6468375857386532247.Spec : Prop :=
  ∀ n, P6468375857386532247.a n = A008238 n

end A008238

/-! ## A008238.P18446493010172338819

`∑[and(n, and(2, n)-2)/4]`
-/

namespace A008238.P18446493010172338819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((Nat.land 2 n : ℤ) - 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P18446493010172338819

namespace A008238

/-- `∑[and(n, and(2, n)-2)/4]` -/
def P18446493010172338819.Spec : Prop :=
  ∀ n, P18446493010172338819.a n = (A008238 n : ℚ)

end A008238

/-! ## A008238.P8030907415630697471

`∑[floor(n/4)*char[and(n, -3)]]`
-/

namespace A008238.P8030907415630697471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P8030907415630697471

namespace A008238

/-- `∑[floor(n/4)*char[and(n, -3)]]` -/
def P8030907415630697471.Spec : Prop :=
  ∀ n, P8030907415630697471.a n = A008238 n

end A008238

/-! ## A008238.P15720748078767087138

`∑[floor(n/4-a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A008238.P15720748078767087138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ⌊(n : ℚ) / 4 - (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P15720748078767087138

namespace A008238

/-- `∑[floor(n/4-a(n-2))]` -/
def P15720748078767087138.Spec : Prop :=
  ∀ n, P15720748078767087138.a n = A008238 n

end A008238

/-! ## A008238.P11310181599857862302

`∑[∑[char[2*n]]%ceil((n+1)/4)]`
-/

namespace A008238.P11310181599857862302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ⌈(n + 1 : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P11310181599857862302

namespace A008238

/-- `∑[∑[char[2*n]]%ceil((n+1)/4)]` -/
def P11310181599857862302.Spec : Prop :=
  ∀ n, P11310181599857862302.a n = A008238 n

end A008238

/-! ## A008238.P4769727027152054251

`∑[1-a(n-2)]+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A008238.P4769727027152054251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 4)

end

end A008238.P4769727027152054251

namespace A008238

/-- `∑[1-a(n-2)]+a(n-4)` -/
def P4769727027152054251.Spec : Prop :=
  ∀ n, P4769727027152054251.a n = A008238 n

end A008238

/-! ## A008238.P1337992201002949466

`floor((A004525(n)/2)²)`
-/

namespace A008238.P1337992201002949466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A004525 n : ℚ) / 2) ^ 2⌋

end

end A008238.P1337992201002949466

namespace A008238

/-- `floor((A004525(n)/2)²)` -/
def P1337992201002949466.Spec : Prop :=
  ∀ n, P1337992201002949466.a n = A008238 n

end A008238

/-! ## A008238.P14552159877646389754

`∑[A142150(floor(n/2))]`
-/

namespace A008238.P14552159877646389754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P14552159877646389754

namespace A008238

/-- `∑[A142150(floor(n/2))]` -/
def P14552159877646389754.Spec : Prop :=
  ∀ n, P14552159877646389754.a n = A008238 n

end A008238

/-! ## A008238.P17412192641315908250

`∑[A002265(n%or(2, n))]`
-/

namespace A008238.P17412192641315908250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n % Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P17412192641315908250

namespace A008238

/-- `∑[A002265(n%or(2, n))]` -/
def P17412192641315908250.Spec : Prop :=
  ∀ n, P17412192641315908250.a n = A008238 n

end A008238

/-! ## A008238.P10151476302378362710

`A130519(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A008238.P10151476302378362710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A130519 n - a (n - 2)

end

end A008238.P10151476302378362710

namespace A008238

/-- `A130519(n)-a(n-2)` -/
def P10151476302378362710.Spec : Prop :=
  ∀ n, P10151476302378362710.a n = A008238 n

end A008238

/-! ## A008238.P13074999946112519260

`∑[A002265(and(n, 1-and(3, n+2)))]`
-/

namespace A008238.P13074999946112519260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.land (n : ℤ) (1 - (Nat.land 3 (n + 2) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P13074999946112519260

namespace A008238

/-- `∑[A002265(and(n, 1-and(3, n+2)))]` -/
def P13074999946112519260.Spec : Prop :=
  ∀ n, P13074999946112519260.a n = A008238 n

end A008238

/-! ## A008238.P6322183875379655307

`∑[A057979(ceil(2*(n+1)/4)+2)-1]`
-/

namespace A008238.P6322183875379655307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (⌈(2 * (n + 1) : ℚ) / 4⌉ + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P6322183875379655307

namespace A008238

/-- `∑[A057979(ceil(2*(n+1)/4)+2)-1]` -/
def P6322183875379655307.Spec : Prop :=
  ∀ n, P6322183875379655307.a n = A008238 n

end A008238

/-! ## A008238.P5754851332110628816

`A002620(A004525(n))`
-/

namespace A008238.P5754851332110628816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004525 n).toNat

end

end A008238.P5754851332110628816

namespace A008238

/-- `A002620(A004525(n))` -/
def P5754851332110628816.Spec : Prop :=
  ∀ n, P5754851332110628816.a n = A008238 n

end A008238

/-! ## A008238.P9764599495864865827

`∑[A152271(A008619(n))-1]`
-/

namespace A008238.P9764599495864865827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A008619 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P9764599495864865827

namespace A008238

/-- `∑[A152271(A008619(n))-1]` -/
def P9764599495864865827.Spec : Prop :=
  ∀ n, P9764599495864865827.a n = A008238 n

end A008238

/-! ## A008238.P3761977808913937465

`∑[A002265(n*A133872(n))]`
-/

namespace A008238.P3761977808913937465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n : ℤ) * A133872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008238.P3761977808913937465

namespace A008238

/-- `∑[A002265(n*A133872(n))]` -/
def P3761977808913937465.Spec : Prop :=
  ∀ n, P3761977808913937465.a n = A008238 n

end A008238

/-! ## A008238.P7850828475839278399

`A008130((A293990(n)-1)/2)`
-/

namespace A008238.P7850828475839278399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (SequenceMachineLib.roundAway ((A293990 n - 1 : ℚ) / 2)).toNat

end

end A008238.P7850828475839278399

namespace A008238

/-- `A008130((A293990(n)-1)/2)` -/
def P7850828475839278399.Spec : Prop :=
  ∀ n, P7850828475839278399.a n = A008238 n

end A008238

/-! ## A008238.P3912739623739501980

`A008217(A047582(n+1)-(n+1))`
-/

namespace A008238.P3912739623739501980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A047582 (n + 1) - (n + 1 : ℤ)).toNat

end

end A008238.P3912739623739501980

namespace A008238

/-- `A008217(A047582(n+1)-(n+1))` -/
def P3912739623739501980.Spec : Prop :=
  ∀ n, P3912739623739501980.a n = A008238 n

end A008238

/-! ## A008238.P1579711374244138376

`A002620(2*n+1-A047237(n+2))`
-/

namespace A008238.P1579711374244138376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((2 * n + 1 : ℤ) - A047237 (n + 2)).toNat

end

end A008238.P1579711374244138376

namespace A008238

/-- `A002620(2*n+1-A047237(n+2))` -/
def P1579711374244138376.Spec : Prop :=
  ∀ n, P1579711374244138376.a n = A008238 n

end A008238

/-! ## A008238.P9692015210809709239

`A002620(or(A004526(n), A166486(n)))`
-/

namespace A008238.P9692015210809709239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Int.lor (A004526 n) (A166486 n)).toNat

end

end A008238.P9692015210809709239

namespace A008238

/-- `A002620(or(A004526(n), A166486(n)))` -/
def P9692015210809709239.Spec : Prop :=
  ∀ n, P9692015210809709239.a n = A008238 n

end A008238

/-!
# A008239: Coordination sequence T2 for Zeolite Code THO.

The programs for A008239, there is no canonical definition to state claims against.
-/

/-! ## A008239.P15504464814997602289

`A008000(n)-A109129(A058254(n))`
-/

namespace A008239.P15504464814997602289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A109129 (A058254 n).toNat

end

end A008239.P15504464814997602289

/-! ## A008239.P4367470011410077251

`A190427(A296279(n))+A001105(n)`
-/

namespace A008239.P4367470011410077251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A296279 n).toNat + A001105 n

end

end A008239.P4367470011410077251

/-! ## A008239.P14348505159421985333

`A008000(n)-A109129(A213427(n+1))`
-/

namespace A008239.P14348505159421985333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A109129 (A213427 (n + 1)).toNat

end

end A008239.P14348505159421985333

/-!
# A008244: Coordination sequence T4 for Zeolite Code TON.

The programs for A008244, there is no canonical definition to state claims against.
-/

/-! ## A008244.P8961773053034891084

`A008109(n)-A079978(A026558(n))`
-/

namespace A008244.P8961773053034891084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008109 n - A079978 (A026558 n).toNat

end

end A008244.P8961773053034891084

/-!
# A008245: Coordination sequence T1 for Zeolite Code VFI.

The programs for A008245, there is no canonical definition to state claims against.
-/

/-! ## A008245.P2087241148826639506

`∑[∑[A367912(A306070(n+5))]]`
-/

namespace A008245.P2087241148826639506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367912 (A306070 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008245.P2087241148826639506

/-! ## A008245.P11547065553081509286

`A103677(A146449(n+1))+∑[A045572(n+1)]`
-/

namespace A008245.P11547065553081509286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103677 (A146449 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008245.P11547065553081509286

/-! ## A008245.P15336551116335438833

`∑[∑[A302242(A209657(n+4))]]`
-/

namespace A008245.P15336551116335438833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A209657 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008245.P15336551116335438833

/-! ## A008245.P7285023167845816168

`∑[∑[A302242(A209660(n+4))]]`
-/

namespace A008245.P7285023167845816168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A209660 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008245.P7285023167845816168

/-! ## A008245.P3668458893817198781

`∑[∑[A302242(A210567(n+4))]]`
-/

namespace A008245.P3668458893817198781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A210567 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008245.P3668458893817198781

/-!
# A008246: Coordination sequence T2 for Zeolite Code VFI.

The programs for A008246, there is no canonical definition to state claims against.
-/

/-! ## A008246.P10013722358382210766

`A004275(∑[record[A232479(n+1)]])`
-/

namespace A008246.P10013722358382210766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008246.P10013722358382210766

/-! ## A008246.P16885517956021509936

`∑[∑[A085029(A352156(3*n+1))]]`
-/

namespace A008246.P16885517956021509936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085029 (A352156 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008246.P16885517956021509936

/-!
# A008247: Coordination sequence T1 for Zeolite Code YUG.

The programs for A008247, there is no canonical definition to state claims against.
-/

/-! ## A008247.P10585074272406456793

`∑[A313297(n)-n-A005089(A027412(n))]`
-/

namespace A008247.P10585074272406456793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313297 n - (n : ℤ) - A005089 (A027412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008247.P10585074272406456793

/-! ## A008247.P3803785721550014612

`ceil(∑[atan(A085633(n+1))]²)`
-/

namespace A008247.P3803785721550014612
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A085633 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌉

end

end A008247.P3803785721550014612

/-! ## A008247.P6828057334674065057

`∑[∑[A008687(A038523(n))]]`
-/

namespace A008247.P6828057334674065057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A038523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008247.P6828057334674065057

/-! ## A008247.P5107918626886941806

`∑[∑[A126302(A360297(n+1))]]`
-/

namespace A008247.P5107918626886941806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A360297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008247.P5107918626886941806

/-!
# A008248: Coordination sequence T2 for Zeolite Code YUG.

The programs for A008248, there is no canonical definition to state claims against.
-/

/-! ## A008248.P6713412464230824958

`or(∑[A095041(2*n+1)], A095059(2*n+1))`
-/

namespace A008248.P6713412464230824958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095041 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A095059 (2 * n + 1))

end

end A008248.P6713412464230824958

/-! ## A008248.P11816982054455544139

`A119466(A192415(n))+A008000(n)`
-/

namespace A008248.P11816982054455544139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119466 (A192415 n).toNat + A008000 n

end

end A008248.P11816982054455544139

/-! ## A008248.P1418824911767101796

`A079079(n+1)-A067694(A096686(n+1))`
-/

namespace A008248.P1418824911767101796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1) - A067694 (A096686 (n + 1)).toNat

end

end A008248.P1418824911767101796

/-!
# A008249: Coordination sequence T1 for Banalsite.

The programs for A008249, there is no canonical definition to state claims against.
-/

/-! ## A008249.P3312284235820125476

`A194315(A006529(n+1))`
-/

namespace A008249.P3312284235820125476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194315 (A006529 (n + 1)).toNat

end

end A008249.P3312284235820125476

/-!
# A008250: Coordination sequence T2 for Banalsite.

The programs for A008250, there is no canonical definition to state claims against.
-/

/-! ## A008250.P7568236336207280015

`A008130(n)+A003056(A072474(n+1))`
-/

namespace A008250.P7568236336207280015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + A003056 (A072474 (n + 1)).toNat

end

end A008250.P7568236336207280015

/-! ## A008250.P15109470877292282261

`A003056(A328994(n+1))-A095407(n+1)`
-/

namespace A008250.P15109470877292282261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A328994 (n + 1)).toNat - A095407 (n + 1)

end

end A008250.P15109470877292282261

/-! ## A008250.P6843587994384256955

`A036037(A071728(n))+∑[A203623(2*n+1)]`
-/

namespace A008250.P6843587994384256955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A071728 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008250.P6843587994384256955

/-!
# A008253: Coordination sequence for diamond.

The programs for A008253, the canonical program `A008253.P16794731694829351209` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008253 has offset 0).

The definition of A008253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008253.P16794731694829351209

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=24, a(4)=42`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008253

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16794731694829351209.Spec : Prop :=
  ∀ n, P16794731694829351209.a n = A008253 n

theorem P16794731694829351209.correct : P16794731694829351209.Spec := by
  intro n
  simp only [A008253]

end A008253

/-! ## A008253.P2096661428560194756

`∑[a(n-2)+10]` with `a(0)=1, a(1)=3, a(2)=8, a(3)=12`
-/

namespace A008253.P2096661428560194756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8, 12] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008253.P2096661428560194756

namespace A008253

/-- `∑[a(n-2)+10]` -/
def P2096661428560194756.Spec : Prop :=
  ∀ n, (P2096661428560194756.a n : ℤ) = A008253 n

end A008253

/-! ## A008253.P4296604127689402891

`∑[∑[floor(a(n-2))]]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A008253.P4296604127689402891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 4, 6] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008253.P4296604127689402891

namespace A008253

/-- `∑[∑[floor(a(n-2))]]` -/
def P4296604127689402891.Spec : Prop :=
  ∀ n, (P4296604127689402891.a n : ℤ) = A008253 n

end A008253

/-! ## A008253.P15362260197687875985

`round((n²-(1-(2*n)²))/2)+2`
-/

namespace A008253.P15362260197687875985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - (1 - ((2 * n) ^ 2 : ℤ)) : ℚ) / 2) + 2

end

end A008253.P15362260197687875985

namespace A008253

/-- `round((n²-(1-(2*n)²))/2)+2` -/
def P15362260197687875985.Spec : Prop :=
  ∀ n, P15362260197687875985.a n = A008253 n

end A008253

/-! ## A008253.P12299018490806949320

`ceil((A010001(n)+1)/2)`
-/

namespace A008253.P12299018490806949320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010001 n + 1 : ℚ) / 2⌉

end

end A008253.P12299018490806949320

namespace A008253

/-- `ceil((A010001(n)+1)/2)` -/
def P12299018490806949320.Spec : Prop :=
  ∀ n, P12299018490806949320.a n = A008253 n

end A008253

/-! ## A008253.P2836466712370166963

`A009926(n)/A000034(n)`
-/

namespace A008253.P2836466712370166963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009926 n : ℚ) / (A000034 n : ℚ)

end

end A008253.P2836466712370166963

namespace A008253

/-- `A009926(n)/A000034(n)` -/
def P2836466712370166963.Spec : Prop :=
  ∀ n, P2836466712370166963.a n = (A008253 n : ℚ)

end A008253

/-! ## A008253.P6673061305610430540

`(A040001(n)+A010001(n))/2`
-/

namespace A008253.P6673061305610430540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040001 n + A010001 n : ℚ) / 2

end

end A008253.P6673061305610430540

namespace A008253

/-- `(A040001(n)+A010001(n))/2` -/
def P6673061305610430540.Spec : Prop :=
  ∀ n, P6673061305610430540.a n = (A008253 n : ℚ)

end A008253

/-! ## A008253.P8092160311178477143

`A000027(A007590(n)+A005893(n))`
-/

namespace A008253.P8092160311178477143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007590 n + A005893 n).toNat

end

end A008253.P8092160311178477143

namespace A008253

/-- `A000027(A007590(n)+A005893(n))` -/
def P8092160311178477143.Spec : Prop :=
  ∀ n, P8092160311178477143.a n = A008253 n

end A008253

/-! ## A008253.P5845230961817354992

`A298468(n²)`
-/

namespace A008253.P5845230961817354992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298468 (n ^ 2)

end

end A008253.P5845230961817354992

namespace A008253

/-- `A298468(n²)` -/
def P5845230961817354992.Spec : Prop :=
  ∀ n, P5845230961817354992.a n = A008253 n

end A008253

/-! ## A008253.P16652844825082739097

`A235700(A010000(n))`
-/

namespace A008253.P16652844825082739097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (A010000 n).toNat

end

end A008253.P16652844825082739097

namespace A008253

/-- `A235700(A010000(n))` -/
def P16652844825082739097.Spec : Prop :=
  ∀ n, P16652844825082739097.a n = A008253 n

end A008253

/-!
# A008254: Coordination sequence T1 for feldspar.

The programs for A008254, there is no canonical definition to state claims against.
-/

/-! ## A008254.P15606611251477073356

`n²+A038620(n)-A008130(n)`
-/

namespace A008254.P15606611251477073356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A038620 n - A008130 n)

end

end A008254.P15606611251477073356

/-! ## A008254.P8964882762540575939

`A005918(n)+A038620(n)-A008000(n)`
-/

namespace A008254.P8964882762540575939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n + (A038620 n - A008000 n)

end

end A008254.P8964882762540575939

/-! ## A008254.P12277087455990191914

`n²-(A000007(A098985(n))-(A038620(n)-A008130(n)))`
-/

namespace A008254.P12277087455990191914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A000007 (A098985 n).toNat - (A038620 n - A008130 n))

end

end A008254.P12277087455990191914

/-! ## A008254.P3612956853835594157

`∑[∑[A308623(A051759(n+2))]]`
-/

namespace A008254.P3612956853835594157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308623 (A051759 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008254.P3612956853835594157

/-!
# A008255: Coordination sequence T2 for feldspar.

The programs for A008255, the canonical program `A008255.P12648646354425310951` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008255 has offset 0).

The definition of A008255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008255.P12648646354425310951

`A008000(n)+floor(n/3)*ceil(n/3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008255

/-- `A008000(n)+floor(n/3)*ceil(n/3)` -/
def P12648646354425310951.Spec : Prop :=
  ∀ n, P12648646354425310951.a n = A008255 n

theorem P12648646354425310951.correct : P12648646354425310951.Spec := by
  intro n
  simp only [A008255]

end A008255

/-! ## A008255.P7797707876102100137

`A008130(n)+A008000(n)`
-/

namespace A008255.P7797707876102100137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + A008000 n

end

end A008255.P7797707876102100137

namespace A008255

/-- `A008130(n)+A008000(n)` -/
def P7797707876102100137.Spec : Prop :=
  ∀ n, P7797707876102100137.a n = A008255 n

theorem P7797707876102100137.correct : P7797707876102100137.Spec := by
  intro n
  simp only [A008255, Nat.add_sub_cancel, A008255.P7797707876102100137.a, A008255.P12648646354425310951.a, A008000, A008000.P14598701383781270205.a, A008130, A008130.P6850248859462288160.a, A005893, A005893.P12560717778126936227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008255

/-! ## A008255.P15004053714427577266

`A005893(n)+2*A008130(n)`
-/

namespace A008255.P15004053714427577266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + 2 * A008130 n

end

end A008255.P15004053714427577266

namespace A008255

/-- `A005893(n)+2*A008130(n)` -/
def P15004053714427577266.Spec : Prop :=
  ∀ n, P15004053714427577266.a n = A008255 n

theorem P15004053714427577266.correct : P15004053714427577266.Spec := by
  intro n
  simp only [A008255, Nat.add_sub_cancel, A008255.P15004053714427577266.a, A008255.P12648646354425310951.a, A005893, A005893.P12560717778126936227.a, A008000, A008000.P14598701383781270205.a, A008130, A008130.P6850248859462288160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008255

/-! ## A008255.P10877160785746171073

`2*A008000(n)-A005893(n)`
-/

namespace A008255.P10877160785746171073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008000 n - A005893 n

end

end A008255.P10877160785746171073

namespace A008255

/-- `2*A008000(n)-A005893(n)` -/
def P10877160785746171073.Spec : Prop :=
  ∀ n, P10877160785746171073.a n = A008255 n

theorem P10877160785746171073.correct : P10877160785746171073.Spec := by
  intro n
  simp only [A008255, Nat.add_sub_cancel, A008255.P10877160785746171073.a, A008255.P12648646354425310951.a, A005893, A005893.P12560717778126936227.a, A008000, A008000.P14598701383781270205.a, A008130, A008130.P6850248859462288160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008255

/-! ## A008255.P3240403411033494825

`A007590(A004396(n))+A005893(n)`
-/

namespace A008255.P3240403411033494825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A004396 n).toNat + A005893 n

end

end A008255.P3240403411033494825

namespace A008255

/-- `A007590(A004396(n))+A005893(n)` -/
def P3240403411033494825.Spec : Prop :=
  ∀ n, P3240403411033494825.a n = A008255 n

end A008255

/-! ## A008255.P12859358067061491444

`A008130(n)+A008259(n)-A000212(n)`
-/

namespace A008255.P12859358067061491444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + (A008259 n - A000212 n)

end

end A008255.P12859358067061491444

namespace A008255

/-- `A008130(n)+A008259(n)-A000212(n)` -/
def P12859358067061491444.Spec : Prop :=
  ∀ n, P12859358067061491444.a n = A008255 n

end A008255

/-! ## A008255.P1839375527125301916

`A005893(n)+A005843(A008130(n))`
-/

namespace A008255.P1839375527125301916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + A005843 (A008130 n).toNat

end

end A008255.P1839375527125301916

namespace A008255

/-- `A005893(n)+A005843(A008130(n))` -/
def P1839375527125301916.Spec : Prop :=
  ∀ n, P1839375527125301916.a n = A008255 n

end A008255

/-! ## A008255.P9554997185294936330

`A004277(A008000(n))-A005893(n)`
-/

namespace A008255.P9554997185294936330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008000 n).toNat - A005893 n

end

end A008255.P9554997185294936330

namespace A008255

/-- `A004277(A008000(n))-A005893(n)` -/
def P9554997185294936330.Spec : Prop :=
  ∀ n, P9554997185294936330.a n = A008255 n

end A008255

/-!
# A008258: Coordination sequence T1 for Moganite.

The programs for A008258, the canonical program `A008258.P8675262695628927288` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008258 has offset 0).

The definition of A008258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008258.P8675262695628927288

`A008130(2*gcd(n, C(2, n)))+A005893(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008258

/-- `A008130(2*gcd(n, C(2, n)))+A005893(n)` -/
def P8675262695628927288.Spec : Prop :=
  ∀ n, P8675262695628927288.a n = A008258 n

theorem P8675262695628927288.correct : P8675262695628927288.Spec := by
  intro n
  simp only [A008258]

end A008258

/-! ## A008258.P15306209145954826983

`A100417(∑[∑[A308584(2*n+1)]])`
-/

namespace A008258.P15306209145954826983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308584 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008258.P15306209145954826983

namespace A008258

/-- `A100417(∑[∑[A308584(2*n+1)]])` -/
def P15306209145954826983.Spec : Prop :=
  ∀ n, P15306209145954826983.a n = A008258 n

end A008258

/-! ## A008258.P3355739372331053501

`A110533(2*n)+A301081(n)-A275964(A026770(n))`
-/

namespace A008258.P3355739372331053501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110533 (2 * n) + (A301081 n - A275964 (A026770 n).toNat)

end

end A008258.P3355739372331053501

namespace A008258

/-- `A110533(2*n)+A301081(n)-A275964(A026770(n))` -/
def P3355739372331053501.Spec : Prop :=
  ∀ n, P3355739372331053501.a n = A008258 n

end A008258

/-!
# A008259: Coordination sequence T2 for Moganite, also for BGB1.

The programs for A008259, the canonical program `A008259.P8640376944548637785` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008259 has offset 0).

The definition of A008259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008259.P8640376944548637785

`floor(A008000(n)+n²/3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008259

/-- `floor(A008000(n)+n²/3)` -/
def P8640376944548637785.Spec : Prop :=
  ∀ n, P8640376944548637785.a n = A008259 n

theorem P8640376944548637785.correct : P8640376944548637785.Spec := by
  intro n
  simp only [A008259]

end A008259

/-! ## A008259.P15428185603271993043

`A008000(n)+A000212(n)`
-/

namespace A008259.P15428185603271993043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n + A000212 n

end

end A008259.P15428185603271993043

namespace A008259

/-- `A008000(n)+A000212(n)` -/
def P15428185603271993043.Spec : Prop :=
  ∀ n, P15428185603271993043.a n = A008259 n

end A008259

/-! ## A008259.P14071223651462253034

`A008000(n)+∑[A004523(n)]`
-/

namespace A008259.P14071223651462253034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008259.P14071223651462253034

namespace A008259

/-- `A008000(n)+∑[A004523(n)]` -/
def P14071223651462253034.Spec : Prop :=
  ∀ n, P14071223651462253034.a n = A008259 n

end A008259

/-! ## A008259.P13832621592515416505

`round(A008000(n)+A000290(n)/3)`
-/

namespace A008259.P13832621592515416505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008000 n : ℚ) + (A000290 n : ℚ) / 3)

end

end A008259.P13832621592515416505

namespace A008259

/-- `round(A008000(n)+A000290(n)/3)` -/
def P13832621592515416505.Spec : Prop :=
  ∀ n, P13832621592515416505.a n = A008259 n

end A008259

/-! ## A008259.P1706533714151901388

`A000212(n)+A008130(n)+A005893(n)`
-/

namespace A008259.P1706533714151901388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + (A008130 n + A005893 n)

end

end A008259.P1706533714151901388

namespace A008259

/-- `A000212(n)+A008130(n)+A005893(n)` -/
def P1706533714151901388.Spec : Prop :=
  ∀ n, P1706533714151901388.a n = A008259 n

end A008259

/-! ## A008259.P4119639902189602918

`A000212(n)+A008255(n)-A008130(n)`
-/

namespace A008259.P4119639902189602918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + (A008255 n - A008130 n)

end

end A008259.P4119639902189602918

namespace A008259

/-- `A000212(n)+A008255(n)-A008130(n)` -/
def P4119639902189602918.Spec : Prop :=
  ∀ n, P4119639902189602918.a n = A008259 n

end A008259

/-! ## A008259.P15116097815813504395

`A000212(n)+(A008255(n)+A005893(n))/2`
-/

namespace A008259.P15116097815813504395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000212 n : ℚ) + (A008255 n + A005893 n : ℚ) / 2

end

end A008259.P15116097815813504395

namespace A008259

/-- `A000212(n)+(A008255(n)+A005893(n))/2` -/
def P15116097815813504395.Spec : Prop :=
  ∀ n, P15116097815813504395.a n = (A008259 n : ℚ)

end A008259

/-! ## A008259.P16065960476727957589

`A000212(n)+n²+A010000(n)+A008130(n)`
-/

namespace A008259.P16065960476727957589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + ((n ^ 2 : ℤ) + (A010000 n + A008130 n))

end

end A008259.P16065960476727957589

namespace A008259

/-- `A000212(n)+n²+A010000(n)+A008130(n)` -/
def P16065960476727957589.Spec : Prop :=
  ∀ n, P16065960476727957589.a n = A008259 n

end A008259

/-! ## A008259.P3937823557888102350

`A069905(2*n)+A008000(n)`
-/

namespace A008259.P3937823557888102350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 * n) + A008000 n

end

end A008259.P3937823557888102350

namespace A008259

/-- `A069905(2*n)+A008000(n)` -/
def P3937823557888102350.Spec : Prop :=
  ∀ n, P3937823557888102350.a n = A008259 n

end A008259

/-!
# A008260: Coordination sequence for Paracelsian.

The programs for A008260, the canonical program `A008260.P12432211607988489352` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008260 has offset 0).

The definition of A008260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008260.P12432211607988489352

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21, a(4)=37, a(5)=57, a(6)=81, a(7)=109`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008260

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P12432211607988489352.Spec : Prop :=
  ∀ n, P12432211607988489352.a n = A008260 n

theorem P12432211607988489352.correct : P12432211607988489352.Spec := by
  intro n
  simp only [A008260]

end A008260

/-! ## A008260.P7675181885756295353

`A008160(n)+A000212(n)`
-/

namespace A008260.P7675181885756295353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008160 n + A000212 n

end

end A008260.P7675181885756295353

namespace A008260

/-- `A008160(n)+A000212(n)` -/
def P7675181885756295353.Spec : Prop :=
  ∀ n, P7675181885756295353.a n = A008260 n

theorem P7675181885756295353.correct : P7675181885756295353.Spec := by
  intro n
  simp only [A008260, Nat.add_sub_cancel, A008260.P7675181885756295353.a, A008260.P12432211607988489352.a, A000212, A000212.P16185420776839342687.a, A008160, A008160.P193104279552154710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008260

/-! ## A008260.P2002478663396903889

`A118015(n)+A005893(n)`
-/

namespace A008260.P2002478663396903889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n + A005893 n

end

end A008260.P2002478663396903889

namespace A008260

/-- `A118015(n)+A005893(n)` -/
def P2002478663396903889.Spec : Prop :=
  ∀ n, P2002478663396903889.a n = A008260 n

end A008260

/-! ## A008260.P8758994622626426959

`A008160(n)+∑[A004523(n)]`
-/

namespace A008260.P8758994622626426959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008160 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008260.P8758994622626426959

namespace A008260

/-- `A008160(n)+∑[A004523(n)]` -/
def P8758994622626426959.Spec : Prop :=
  ∀ n, P8758994622626426959.a n = A008260 n

end A008260

/-! ## A008260.P12712517996335256088

`A118015(n)+∑[A113127(n)]`
-/

namespace A008260.P12712517996335256088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008260.P12712517996335256088

namespace A008260

/-- `A118015(n)+∑[A113127(n)]` -/
def P12712517996335256088.Spec : Prop :=
  ∀ n, P12712517996335256088.a n = A008260 n

end A008260

/-! ## A008260.P17098770368979217146

`floor(A005893(n)+A005901(n)/50)`
-/

namespace A008260.P17098770368979217146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005893 n : ℚ) + (A005901 n : ℚ) / 50⌋

end

end A008260.P17098770368979217146

namespace A008260

/-- `floor(A005893(n)+A005901(n)/50)` -/
def P17098770368979217146.Spec : Prop :=
  ∀ n, P17098770368979217146.a n = A008260 n

end A008260

/-! ## A008260.P4971894187846916661

`A008160(n)+∑[A004396(n+1)-1]`
-/

namespace A008260.P4971894187846916661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008160 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008260.P4971894187846916661

namespace A008260

/-- `A008160(n)+∑[A004396(n+1)-1]` -/
def P4971894187846916661.Spec : Prop :=
  ∀ n, P4971894187846916661.a n = A008260 n

end A008260

/-! ## A008260.P6494686541896198545

`A008160(n)+A002264(n²)`
-/

namespace A008260.P6494686541896198545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008160 n + A002264 (n ^ 2)

end

end A008260.P6494686541896198545

namespace A008260

/-- `A008160(n)+A002264(n²)` -/
def P6494686541896198545.Spec : Prop :=
  ∀ n, P6494686541896198545.a n = A008260 n

theorem P6494686541896198545.correct : P6494686541896198545.Spec := by
  intro n
  simp only [A008260, Nat.add_sub_cancel, A008260.P6494686541896198545.a, A008260.P12432211607988489352.a, A002264, A002264.P5647656940077635922.a, A008160, A008160.P193104279552154710.a, A000212, A000212.P16185420776839342687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008260

/-! ## A008260.P7930321836572377693

`A105343(2*n)+A002266(n²)`
-/

namespace A008260.P7930321836572377693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (2 * n) + A002266 (n ^ 2)

end

end A008260.P7930321836572377693

namespace A008260

/-- `A105343(2*n)+A002266(n²)` -/
def P7930321836572377693.Spec : Prop :=
  ∀ n, P7930321836572377693.a n = A008260 n

end A008260

/-! ## A008260.P2461496497764403647

`A092534(2*n+1)+A002266(n²)`
-/

namespace A008260.P2461496497764403647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092534 (2 * n + 1) + A002266 (n ^ 2)

end

end A008260.P2461496497764403647

namespace A008260

/-- `A092534(2*n+1)+A002266(n²)` -/
def P2461496497764403647.Spec : Prop :=
  ∀ n, P2461496497764403647.a n = A008260 n

end A008260

/-!
# A008261: Coordination sequence for quartz.

The programs for A008261, the canonical program `A008261.P12731544082812599068` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008261 has offset 0).

The definition of A008261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008261.P12731544082812599068

`A005843(A069905(n))+A288699(n)+3*n²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008261

/-- `A005843(A069905(n))+A288699(n)+3*n²` -/
def P12731544082812599068.Spec : Prop :=
  ∀ n, P12731544082812599068.a n = A008261 n

theorem P12731544082812599068.correct : P12731544082812599068.Spec := by
  intro n
  simp only [A008261]

end A008261

/-! ## A008261.P12271528372089346679

`A005843(A069905(n))+A056107(n)+A288699(n)-1`
-/

namespace A008261.P12271528372089346679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069905 n).toNat + (A056107 n + (A288699 n - 1))

end

end A008261.P12271528372089346679

namespace A008261

/-- `A005843(A069905(n))+A056107(n)+A288699(n)-1` -/
def P12271528372089346679.Spec : Prop :=
  ∀ n, P12271528372089346679.a n = A008261 n

theorem P12271528372089346679.correct : P12271528372089346679.Spec := by
  intro n
  simp only [A008261, Nat.add_sub_cancel, A008261.P12271528372089346679.a, A008261.P12731544082812599068.a, A005843, A005843.P3167286115683555970.a, A056107, A056107.P16256314836093114361.a, A069905, A069905.P9161905402948910103.a, A288699, A288699.P6171938525442146434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008261

/-! ## A008261.P17507115843825094885

`A005843(A069905(n))+A049450(n)+A288699(n)+n`
-/

namespace A008261.P17507115843825094885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069905 n).toNat + (A049450 n + (A288699 n + (n : ℤ)))

end

end A008261.P17507115843825094885

namespace A008261

/-- `A005843(A069905(n))+A049450(n)+A288699(n)+n` -/
def P17507115843825094885.Spec : Prop :=
  ∀ n, P17507115843825094885.a n = A008261 n

theorem P17507115843825094885.correct : P17507115843825094885.Spec := by
  intro n
  simp only [A008261, Nat.add_sub_cancel, A008261.P17507115843825094885.a, A008261.P12731544082812599068.a, A005843, A005843.P3167286115683555970.a, A049450, A049450.P1815257678583562472.a, A069905, A069905.P9161905402948910103.a, A288699, A288699.P6171938525442146434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008261

/-! ## A008261.P2219665144558266724

`A342235(n)+2*A069905(n)`
-/

namespace A008261.P2219665144558266724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342235 n + 2 * A069905 n

end

end A008261.P2219665144558266724

namespace A008261

/-- `A342235(n)+2*A069905(n)` -/
def P2219665144558266724.Spec : Prop :=
  ∀ n, P2219665144558266724.a n = A008261 n

end A008261

/-! ## A008261.P18340680883728680123

`A342235(n)+A005843(A069905(n))`
-/

namespace A008261.P18340680883728680123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342235 n + A005843 (A069905 n).toNat

end

end A008261.P18340680883728680123

namespace A008261

/-- `A342235(n)+A005843(A069905(n))` -/
def P18340680883728680123.Spec : Prop :=
  ∀ n, P18340680883728680123.a n = A008261 n

theorem P18340680883728680123.correct : P18340680883728680123.Spec := by
  intro n
  simp only [A008261, Nat.add_sub_cancel, A008261.P18340680883728680123.a, A008261.P12731544082812599068.a, A005843, A005843.P3167286115683555970.a, A069905, A069905.P9161905402948910103.a, A288699, A288699.P6171938525442146434.a, A342235, A342235.P6074913570153502342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008261

/-! ## A008261.P5536480762350886343

`A342235(n)+A008612(A002522(n))`
-/

namespace A008261.P5536480762350886343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342235 n + A008612 (A002522 n).toNat

end

end A008261.P5536480762350886343

namespace A008261

/-- `A342235(n)+A008612(A002522(n))` -/
def P5536480762350886343.Spec : Prop :=
  ∀ n, P5536480762350886343.a n = A008261 n

end A008261

/-!
# A008264: Coordination sequence for tridymite, lonsdaleite, and wurtzite.

The programs for A008264, the canonical program `A008264.P7189986199445051567` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008264 has offset 0).

The definition of A008264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008264.P13333822131856140563

`round(42/(4*acot(n))²)`
-/

namespace A008264.P13333822131856140563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (42 / (4 * SequenceMachineLib.acot (n : ℝ)) ^ 2)

end

end A008264.P13333822131856140563

namespace A008264

/-- `round(42/(4*acot(n))²)` -/
def P13333822131856140563.Spec : Prop :=
  ∀ n, P13333822131856140563.a n = A008264 n

end A008264

/-! ## A008264.P7189986199445051567

`ceil((A007899(n)+3)/4)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008264

/-- `ceil((A007899(n)+3)/4)` -/
def P7189986199445051567.Spec : Prop :=
  ∀ n, P7189986199445051567.a n = A008264 n

theorem P7189986199445051567.correct : P7189986199445051567.Spec := by
  intro n
  simp only [A008264]

end A008264

/-! ## A008264.P2198407976284712177

`A005893(n)+∑[A187322(n)]`
-/

namespace A008264.P2198407976284712177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008264.P2198407976284712177

namespace A008264

/-- `A005893(n)+∑[A187322(n)]` -/
def P2198407976284712177.Spec : Prop :=
  ∀ n, P2198407976284712177.a n = A008264 n

end A008264

/-! ## A008264.P5049476516244356217

`A008253(n)+∑[A002265(n+1)]`
-/

namespace A008264.P5049476516244356217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008264.P5049476516244356217

namespace A008264

/-- `A008253(n)+∑[A002265(n+1)]` -/
def P5049476516244356217.Spec : Prop :=
  ∀ n, P5049476516244356217.a n = A008264 n

end A008264

/-! ## A008264.P2422361465555869166

`A008253(n)+∑[A004526(A004526(n+1))]`
-/

namespace A008264.P2422361465555869166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008264.P2422361465555869166

namespace A008264

/-- `A008253(n)+∑[A004526(A004526(n+1))]` -/
def P2422361465555869166.Spec : Prop :=
  ∀ n, P2422361465555869166.a n = A008264 n

end A008264

/-! ## A008264.P673061242013312328

`A008253(n)+A004526(A002620(n))`
-/

namespace A008264.P673061242013312328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + A004526 (A002620 n).toNat

end

end A008264.P673061242013312328

namespace A008264

/-- `A008253(n)+A004526(A002620(n))` -/
def P673061242013312328.Spec : Prop :=
  ∀ n, P673061242013312328.a n = A008264 n

end A008264

/-! ## A008264.P14434848990737792311

`A008253(n)+A004526(A004652(n))`
-/

namespace A008264.P14434848990737792311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + A004526 (A004652 n).toNat

end

end A008264.P14434848990737792311

namespace A008264

/-- `A008253(n)+A004526(A004652(n))` -/
def P14434848990737792311.Spec : Prop :=
  ∀ n, P14434848990737792311.a n = A008264 n

end A008264

/-! ## A008264.P6666898616600603288

`A008253(n)+A004526(∑[A004526(n)])`
-/

namespace A008264.P6666898616600603288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008264.P6666898616600603288

namespace A008264

/-- `A008253(n)+A004526(∑[A004526(n)])` -/
def P6666898616600603288.Spec : Prop :=
  ∀ n, P6666898616600603288.a n = A008264 n

end A008264

/-! ## A008264.P6488942932011885125

`A084684(2*n)-A140106(A084684(n))`
-/

namespace A008264.P6488942932011885125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 (2 * n) - A140106 (A084684 n).toNat

end

end A008264.P6488942932011885125

namespace A008264

/-- `A084684(2*n)-A140106(A084684(n))` -/
def P6488942932011885125.Spec : Prop :=
  ∀ n, P6488942932011885125.a n = A008264 n

end A008264

/-!
# A008265: Coordination sequence T1 for Zeolite Code ATO.

The programs for A008265, the canonical program `A008265.P14370154735591299047` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008265 has offset 0).

The definition of A008265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008265.P14370154735591299047

`A008738(n)+A008013(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008265

/-- `A008738(n)+A008013(n)` -/
def P14370154735591299047.Spec : Prop :=
  ∀ n, P14370154735591299047.a n = A008265 n

theorem P14370154735591299047.correct : P14370154735591299047.Spec := by
  intro n
  simp only [A008265]

end A008265

/-! ## A008265.P11918085952845630132

`A008013(n)+∑[A288156(n)]`
-/

namespace A008265.P11918085952845630132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008013 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008265.P11918085952845630132

namespace A008265

/-- `A008013(n)+∑[A288156(n)]` -/
def P11918085952845630132.Spec : Prop :=
  ∀ n, P11918085952845630132.a n = A008265 n

end A008265

/-! ## A008265.P9096264471613207233

`A008013(n)+∑[A289195(n)/2]`
-/

namespace A008265.P9096264471613207233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289195 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008013 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008265.P9096264471613207233

namespace A008265

/-- `A008013(n)+∑[A289195(n)/2]` -/
def P9096264471613207233.Spec : Prop :=
  ∀ n, P9096264471613207233.a n = (A008265 n : ℚ)

end A008265

/-! ## A008265.P3933987614158048172

`A056834(A047363(n+1))+A005893(n)`
-/

namespace A008265.P3933987614158048172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056834 (A047363 (n + 1)).toNat + A005893 n

end

end A008265.P3933987614158048172

namespace A008265

/-- `A056834(A047363(n+1))+A005893(n)` -/
def P3933987614158048172.Spec : Prop :=
  ∀ n, P3933987614158048172.a n = A008265 n

end A008265

/-! ## A008265.P4237831831644982643

`A008798(2*n+1)+A008013(n)`
-/

namespace A008265.P4237831831644982643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008798 (2 * n + 1) + A008013 n

end

end A008265.P4237831831644982643

namespace A008265

/-- `A008798(2*n+1)+A008013(n)` -/
def P4237831831644982643.Spec : Prop :=
  ∀ n, P4237831831644982643.a n = A008265 n

end A008265

/-! ## A008265.P15262593948468508020

`A059995(A005893(n))+A008013(n)`
-/

namespace A008265.P15262593948468508020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A005893 n).toNat + A008013 n

end

end A008265.P15262593948468508020

namespace A008265

/-- `A059995(A005893(n))+A008013(n)` -/
def P15262593948468508020.Spec : Prop :=
  ∀ n, P15262593948468508020.a n = A008265 n

end A008265

/-!
# A008266: Coordination sequence T1 for Zeolite Code GIS.

The programs for A008266, there is no canonical definition to state claims against.
-/

/-! ## A008266.P3863881246426527810

`A004396(A084684(n)+A008084(n))`
-/

namespace A008266.P3863881246426527810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A084684 n + A008084 n).toNat

end

end A008266.P3863881246426527810

/-! ## A008266.P7487872719601357453

`A285872(A008253(n)+A002620(n))`
-/

namespace A008266.P7487872719601357453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (A008253 n + A002620 n).toNat

end

end A008266.P7487872719601357453

/-! ## A008266.P4004042901590889887

`A301200(n)-A085856(A324093(n+1))`
-/

namespace A008266.P4004042901590889887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301200 n - A085856 (A324093 (n + 1)).toNat

end

end A008266.P4004042901590889887

/-! ## A008266.P14629145389102581095

`A301200(A087051(n))`
-/

namespace A008266.P14629145389102581095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301200 (A087051 n).toNat

end

end A008266.P14629145389102581095

/-! ## A008266.P6902308310124433685

`A301200(A227549(n+1))`
-/

namespace A008266.P6902308310124433685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301200 (A227549 (n + 1)).toNat

end

end A008266.P6902308310124433685

/-!
# A008267: Coordination sequence T1 for Coesite.

The programs for A008267, there is no canonical definition to state claims against.
-/

/-! ## A008267.P8966352148864505169

`∑[∑[A317205(A116757(n+1))]]`
-/

namespace A008267.P8966352148864505169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317205 (A116757 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008267.P8966352148864505169

/-! ## A008267.P5306386807289805937

`∑[eq[1, A136394(n)+A127805(n)]]`
-/

namespace A008267.P5306386807289805937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136394 n + A127805 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008267.P5306386807289805937

/-!
# A008268: Coordination sequence T2 for Coesite.

The programs for A008268, there is no canonical definition to state claims against.
-/

/-! ## A008268.P18057923463049082672

`A316465(A009878(n))`
-/

namespace A008268.P18057923463049082672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A009878 n).toNat

end

end A008268.P18057923463049082672

/-! ## A008268.P9977307030239864922

`A316465(A057316(n))`
-/

namespace A008268.P9977307030239864922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A057316 n).toNat

end

end A008268.P9977307030239864922

/-! ## A008268.P1589456320893102643

`A008267(n)+A001842(A000272(n))`
-/

namespace A008268.P1589456320893102643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008267 n + A001842 (A000272 n).toNat

end

end A008268.P1589456320893102643

/-!
# A008269: Number of strings on n symbols in Stockhausen problem.

The programs for A008269, there is no canonical definition to state claims against.
-/

/-! ## A008269.P189504812277494440

`n*A173022(A000045(∑[2*n]))+1`
-/

namespace A008269.P189504812277494440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A173022 (A000045 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A008269.P189504812277494440

/-!
# A008275: Triangle read by rows of Stirling numbers of first kind, s(n,k), n >= 1, 1 <= k <= n.

The programs for A008275, the canonical program `A008275.P13843969121220869463` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008275 has offset 1).

The definition of A008275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008275.P13843969121220869463

`T(n-1,k-1)-row(n)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008275

/-- `T(n-1,k-1)-row(n)*T(n-1,k)` -/
def P13843969121220869463.Spec : Prop :=
  ∀ n, P13843969121220869463.a n = A008275 (n + 1)

theorem P13843969121220869463.correct : P13843969121220869463.Spec := by
  intro n
  simp only [A008275, Nat.add_sub_cancel]

end A008275

/-! ## A008275.P7698221915087334169

`A048994(comp[∑[n]])`
-/

namespace A008275.P7698221915087334169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008275.P7698221915087334169

namespace A008275

/-- `A048994(comp[∑[n]])` -/
def P7698221915087334169.Spec : Prop :=
  ∀ n, P7698221915087334169.a n = A008275 (n + 1)

end A008275

/-! ## A008275.P14387342688839408332

`A008276(A038722(n+1))`
-/

namespace A008275.P14387342688839408332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A038722 (n + 1)).toNat

end

end A008275.P14387342688839408332

namespace A008275

/-- `A008276(A038722(n+1))` -/
def P14387342688839408332.Spec : Prop :=
  ∀ n, P14387342688839408332.a n = A008275 (n + 1)

end A008275

/-! ## A008275.P7898915191902134396

`A008276(A061579(n)+1)`
-/

namespace A008275.P7898915191902134396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A061579 n + 1).toNat

end

end A008275.P7898915191902134396

namespace A008275

/-- `A008276(A061579(n)+1)` -/
def P7898915191902134396.Spec : Prop :=
  ∀ n, P7898915191902134396.a n = A008275 (n + 1)

end A008275

/-! ## A008275.P14537912026680704464

`A054654(A099375(n)+n)`
-/

namespace A008275.P14537912026680704464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A099375 n + (n : ℤ)).toNat

end

end A008275.P14537912026680704464

namespace A008275

/-- `A054654(A099375(n)+n)` -/
def P14537912026680704464.Spec : Prop :=
  ∀ n, P14537912026680704464.a n = A008275 (n + 1)

end A008275

/-! ## A008275.P9415694472978546922

`A097807(n)*A130534(n)`
-/

namespace A008275.P9415694472978546922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A130534 n

end

end A008275.P9415694472978546922

namespace A008275

/-- `A097807(n)*A130534(n)` -/
def P9415694472978546922.Spec : Prop :=
  ∀ n, P9415694472978546922.a n = A008275 (n + 1)

end A008275

/-! ## A008275.P1350786294972999121

`A008276(A002024(n+1)²-n)`
-/

namespace A008275.P1350786294972999121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A008275.P1350786294972999121

namespace A008275

/-- `A008276(A002024(n+1)²-n)` -/
def P1350786294972999121.Spec : Prop :=
  ∀ n, P1350786294972999121.a n = A008275 (n + 1)

end A008275

/-! ## A008275.P12043877298002750669

`A140756(n+1)/abs(A140756(n+1))*A130534(n)`
-/

namespace A008275.P12043877298002750669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140756 (n + 1) : ℚ) / (|A140756 (n + 1)| : ℚ) * (A130534 n : ℚ)

end

end A008275.P12043877298002750669

namespace A008275

/-- `A140756(n+1)/abs(A140756(n+1))*A130534(n)` -/
def P12043877298002750669.Spec : Prop :=
  ∀ n, P12043877298002750669.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P8288942978283180147

`A028421(n)/A140756(n+1)`
-/

namespace A008275.P8288942978283180147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A008275.P8288942978283180147

namespace A008275

/-- `A028421(n)/A140756(n+1)` -/
def P8288942978283180147.Spec : Prop :=
  ∀ n, P8288942978283180147.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P1873587390088332617

`A048594(n+1)/A166350(n+1)`
-/

namespace A008275.P1873587390088332617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A008275.P1873587390088332617

namespace A008275

/-- `A048594(n+1)/A166350(n+1)` -/
def P1873587390088332617.Spec : Prop :=
  ∀ n, P1873587390088332617.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P12672259868960302040

`A008277(n+1)/A019538(n+1)*A048594(n+1)`
-/

namespace A008275.P12672259868960302040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ) * (A048594 (n + 1) : ℚ)

end

end A008275.P12672259868960302040

namespace A008275

/-- `A008277(n+1)/A019538(n+1)*A048594(n+1)` -/
def P12672259868960302040.Spec : Prop :=
  ∀ n, P12672259868960302040.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P1006755617923419649

`A039683(n+1)/A130321(n)`
-/

namespace A008275.P1006755617923419649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A008275.P1006755617923419649

namespace A008275

/-- `A039683(n+1)/A130321(n)` -/
def P1006755617923419649.Spec : Prop :=
  ∀ n, P1006755617923419649.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P12414857346177707423

`A051141(n+1)/A140303(n)`
-/

namespace A008275.P12414857346177707423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A008275.P12414857346177707423

namespace A008275

/-- `A051141(n+1)/A140303(n)` -/
def P12414857346177707423.Spec : Prop :=
  ∀ n, P12414857346177707423.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P723721292337025655

`A051142(n+1)/A262616(n)`
-/

namespace A008275.P723721292337025655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) : ℚ) / (A262616 n : ℚ)

end

end A008275.P723721292337025655

namespace A008275

/-- `A051142(n+1)/A262616(n)` -/
def P723721292337025655.Spec : Prop :=
  ∀ n, P723721292337025655.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P12977807729392472639

`A051142(n+1)/A130321(n)²`
-/

namespace A008275.P12977807729392472639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A008275.P12977807729392472639

namespace A008275

/-- `A051142(n+1)/A130321(n)²` -/
def P12977807729392472639.Spec : Prop :=
  ∀ n, P12977807729392472639.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P2614036775053137764

`A039683(n+1)/A051142(n+1)*A039683(n+1)`
-/

namespace A008275.P2614036775053137764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051142 (n + 1) : ℚ) * (A039683 (n + 1) : ℚ)

end

end A008275.P2614036775053137764

namespace A008275

/-- `A039683(n+1)/A051142(n+1)*A039683(n+1)` -/
def P2614036775053137764.Spec : Prop :=
  ∀ n, P2614036775053137764.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P11278853543605949659

`A039683(n+1)/A051151(n+1)*A051141(n+1)`
-/

namespace A008275.P11278853543605949659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051151 (n + 1) : ℚ) * (A051141 (n + 1) : ℚ)

end

end A008275.P11278853543605949659

namespace A008275

/-- `A039683(n+1)/A051151(n+1)*A051141(n+1)` -/
def P11278853543605949659.Spec : Prop :=
  ∀ n, P11278853543605949659.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P12473568033240469970

`A051187(n+1)/(A130321(n)²*A130321(n))`
-/

namespace A008275.P12473568033240469970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051187 (n + 1) : ℚ) / (A130321 n ^ 2 * A130321 n : ℚ)

end

end A008275.P12473568033240469970

namespace A008275

/-- `A051187(n+1)/(A130321(n)²*A130321(n))` -/
def P12473568033240469970.Spec : Prop :=
  ∀ n, P12473568033240469970.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P4246127545265635533

`A051231(n+1)/A140303(n)²`
-/

namespace A008275.P4246127545265635533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051231 (n + 1) : ℚ) / (A140303 n ^ 2 : ℚ)

end

end A008275.P4246127545265635533

namespace A008275

/-- `A051231(n+1)/A140303(n)²` -/
def P4246127545265635533.Spec : Prop :=
  ∀ n, P4246127545265635533.a n = (A008275 (n + 1) : ℚ)

end A008275

/-! ## A008275.P4942208006692147636

`A051141(n+1)/A051231(n+1)*A051141(n+1)`
-/

namespace A008275.P4942208006692147636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A051231 (n + 1) : ℚ) * (A051141 (n + 1) : ℚ)

end

end A008275.P4942208006692147636

namespace A008275

/-- `A051141(n+1)/A051231(n+1)*A051141(n+1)` -/
def P4942208006692147636.Spec : Prop :=
  ∀ n, P4942208006692147636.a n = (A008275 (n + 1) : ℚ)

end A008275

/-!
# A008276: Triangle of Stirling numbers of first kind, s(n, n-k+1), n >= 1, 1 <= k <= n. Also triangle T(n,k) giving coefficients in expansion of n!*binomial(x,n)/x in powers of x.

The programs for A008276, the canonical program `A008276.P15576639146791342119` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008276 has offset 1).

The definition of A008276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008276.P15576639146791342119

`T(n-1,k)-row(n)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008276

/-- `T(n-1,k)-row(n)*T(n-1,k-1)` -/
def P15576639146791342119.Spec : Prop :=
  ∀ n, P15576639146791342119.a n = A008276 (n + 1)

theorem P15576639146791342119.correct : P15576639146791342119.Spec := by
  intro n
  simp only [A008276, Nat.add_sub_cancel]

end A008276

/-! ## A008276.P12617838975174057813

`(-1)^(col(n)+1)*(row(n)*(-1)^col(n)*T(n-1,k-1)+(-1)^(col(n)+1)*T(n-1,k))` with `a(0)=1`
-/

namespace A008276.P12617838975174057813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ (SequenceMachineLib.triCol n + 1) * ((SequenceMachineLib.triRow n : ℤ) * (-1) ^ SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n + (-1) ^ (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n)

end

end A008276.P12617838975174057813

namespace A008276

/-- `(-1)^(col(n)+1)*(row(n)*(-1)^col(n)*T(n-1,k-1)+(-1)^(col(n)+1)*T(n-1,k))` -/
def P12617838975174057813.Spec : Prop :=
  ∀ n, P12617838975174057813.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P289861089947009866

`A054654(comp[∑[n-1]])`
-/

namespace A008276.P289861089947009866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A008276.P289861089947009866

namespace A008276

/-- `A054654(comp[∑[n-1]])` -/
def P289861089947009866.Spec : Prop :=
  ∀ n, P289861089947009866.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P18295588176848105806

`A008275(A038722(n+1))`
-/

namespace A008276.P18295588176848105806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A038722 (n + 1)).toNat

end

end A008276.P18295588176848105806

namespace A008276

/-- `A008275(A038722(n+1))` -/
def P18295588176848105806.Spec : Prop :=
  ∀ n, P18295588176848105806.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P1596511807756450597

`A008275(A061579(n)+1)`
-/

namespace A008276.P1596511807756450597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A061579 n + 1).toNat

end

end A008276.P1596511807756450597

namespace A008276

/-- `A008275(A061579(n)+1)` -/
def P1596511807756450597.Spec : Prop :=
  ∀ n, P1596511807756450597.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P9964458008959349146

`A008275(A002024(n+1)²-n)`
-/

namespace A008276.P9964458008959349146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A008276.P9964458008959349146

namespace A008276

/-- `A008275(A002024(n+1)²-n)` -/
def P9964458008959349146.Spec : Prop :=
  ∀ n, P9964458008959349146.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P16166589314149197781

`A008275(A000194(2*(n+1))²-n)`
-/

namespace A008276.P16166589314149197781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A000194 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A008276.P16166589314149197781

namespace A008276

/-- `A008275(A000194(2*(n+1))²-n)` -/
def P16166589314149197781.Spec : Prop :=
  ∀ n, P16166589314149197781.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P13829161830919779610

`A008275(A349520(2*(n+1))²-n)`
-/

namespace A008276.P13829161830919779610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A349520 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A008276.P13829161830919779610

namespace A008276

/-- `A008275(A349520(2*(n+1))²-n)` -/
def P13829161830919779610.Spec : Prop :=
  ∀ n, P13829161830919779610.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P7775483215400133381

`A008275(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A008276.P7775483215400133381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A008276.P7775483215400133381

namespace A008276

/-- `A008275(A004736(n+1)+n-A002260(n+1)+1)` -/
def P7775483215400133381.Spec : Prop :=
  ∀ n, P7775483215400133381.a n = A008276 (n + 1)

end A008276

/-! ## A008276.P15514772758133001117

`A123670(n+1)/A095896(n+1)`
-/

namespace A008276.P15514772758133001117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123670 (n + 1) : ℚ) / (A095896 (n + 1) : ℚ)

end

end A008276.P15514772758133001117

namespace A008276

/-- `A123670(n+1)/A095896(n+1)` -/
def P15514772758133001117.Spec : Prop :=
  ∀ n, P15514772758133001117.a n = (A008276 (n + 1) : ℚ)

end A008276

/-!
# A008277: Triangle of Stirling numbers of the second kind, S2(n,k), n >= 1, 1 <= k <= n.

The programs for A008277, the canonical program `A008277.P14415056703408486514` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008277 has offset 1).

The definition of A008277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008277.P14415056703408486514

`(col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008277

/-- `(col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P14415056703408486514.Spec : Prop :=
  ∀ n, (P14415056703408486514.a n : ℤ) = A008277 (n + 1)

theorem P14415056703408486514.correct : P14415056703408486514.Spec := by
  intro n
  simp only [A008277, Nat.add_sub_cancel]

end A008277

/-! ## A008277.P6698633860217931952

`A048993(comp[∑[n]])`
-/

namespace A008277.P6698633860217931952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008277.P6698633860217931952

namespace A008277

/-- `A048993(comp[∑[n]])` -/
def P6698633860217931952.Spec : Prop :=
  ∀ n, P6698633860217931952.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P17396918432996691116

`A269952(n)+A048993(n+1)`
-/

namespace A008277.P17396918432996691116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269952 n + A048993 (n + 1)

end

end A008277.P17396918432996691116

namespace A008277

/-- `A269952(n)+A048993(n+1)` -/
def P17396918432996691116.Spec : Prop :=
  ∀ n, P17396918432996691116.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P10467899317230021762

`abs(A080417(n+1))`
-/

namespace A008277.P10467899317230021762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080417 (n + 1)|

end

end A008277.P10467899317230021762

namespace A008277

/-- `abs(A080417(n+1))` -/
def P10467899317230021762.Spec : Prop :=
  ∀ n, P10467899317230021762.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P9515369141969753822

`gcd(A000038(n), A080417(n+1))`
-/

namespace A008277.P9515369141969753822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080417 (n + 1))

end

end A008277.P9515369141969753822

namespace A008277

/-- `gcd(A000038(n), A080417(n+1))` -/
def P9515369141969753822.Spec : Prop :=
  ∀ n, (P9515369141969753822.a n : ℤ) = A008277 (n + 1)

end A008277

/-! ## A008277.P12989179708568458421

`lcm(A020985(n), A080417(n+1))`
-/

namespace A008277.P12989179708568458421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A080417 (n + 1))

end

end A008277.P12989179708568458421

namespace A008277

/-- `lcm(A020985(n), A080417(n+1))` -/
def P12989179708568458421.Spec : Prop :=
  ∀ n, (P12989179708568458421.a n : ℤ) = A008277 (n + 1)

end A008277

/-! ## A008277.P2471339008521270829

`A285012(comp[A061885(n+1)]+1)`
-/

namespace A008277.P2471339008521270829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A008277.P2471339008521270829

namespace A008277

/-- `A285012(comp[A061885(n+1)]+1)` -/
def P2471339008521270829.Spec : Prop :=
  ∀ n, P2471339008521270829.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P14594099201475139879

`A285012(comp[A061885(n)])`
-/

namespace A008277.P14594099201475139879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A008277.P14594099201475139879

namespace A008277

/-- `A285012(comp[A061885(n)])` -/
def P14594099201475139879.Spec : Prop :=
  ∀ n, P14594099201475139879.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P13603214262152241114

`A008278(A038722(n+1))`
-/

namespace A008277.P13603214262152241114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A038722 (n + 1)).toNat

end

end A008277.P13603214262152241114

namespace A008277

/-- `A008278(A038722(n+1))` -/
def P13603214262152241114.Spec : Prop :=
  ∀ n, P13603214262152241114.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P5253539085963606683

`A008278(A061579(n)+1)`
-/

namespace A008277.P5253539085963606683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A061579 n + 1).toNat

end

end A008277.P5253539085963606683

namespace A008277

/-- `A008278(A061579(n)+1)` -/
def P5253539085963606683.Spec : Prop :=
  ∀ n, P5253539085963606683.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P1618377387417065878

`A285012(A064801(n+1))`
-/

namespace A008277.P1618377387417065878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (A064801 (n + 1)).toNat

end

end A008277.P1618377387417065878

namespace A008277

/-- `A285012(A064801(n+1))` -/
def P1618377387417065878.Spec : Prop :=
  ∀ n, P1618377387417065878.a n = A008277 (n + 1)

end A008277

/-! ## A008277.P7222804819946984983

`A069138(n+1)-A321331(n)`
-/

namespace A008277.P7222804819946984983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069138 (n + 1) - A321331 n

end

end A008277.P7222804819946984983

namespace A008277

/-- `A069138(n+1)-A321331(n)` -/
def P7222804819946984983.Spec : Prop :=
  ∀ n, P7222804819946984983.a n = A008277 (n + 1)

theorem P7222804819946984983.correct : P7222804819946984983.Spec := by
  intro n
  simp only [A008277, Nat.add_sub_cancel, A008277.P7222804819946984983.a, A008277.P14415056703408486514.a, A069138, A069138.P12285632493670532496.a, A321331, A321331.P2956527806336177840.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008277

/-! ## A008277.P332645767715741062

`A321331(n)/A002260(n+1)`
-/

namespace A008277.P332645767715741062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321331 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A008277.P332645767715741062

namespace A008277

/-- `A321331(n)/A002260(n+1)` -/
def P332645767715741062.Spec : Prop :=
  ∀ n, P332645767715741062.a n = (A008277 (n + 1) : ℚ)

theorem P332645767715741062.correct : P332645767715741062.Spec := by
  intro n
  simp only [A008277, Nat.add_sub_cancel, A008277.P332645767715741062.a, A008277.P14415056703408486514.a, A002260, A002260.P9170571874073898642.a, A321331, A321331.P2956527806336177840.a, A069138, A069138.P12285632493670532496.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008277

/-! ## A008277.P15448453861154827056

`A321331(n)/(A002262(n)+1)`
-/

namespace A008277.P15448453861154827056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321331 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A008277.P15448453861154827056

namespace A008277

/-- `A321331(n)/(A002262(n)+1)` -/
def P15448453861154827056.Spec : Prop :=
  ∀ n, P15448453861154827056.a n = (A008277 (n + 1) : ℚ)

theorem P15448453861154827056.correct : P15448453861154827056.Spec := by
  intro n
  simp only [A008277, Nat.add_sub_cancel, A008277.P15448453861154827056.a, A008277.P14415056703408486514.a, A002262, A002262.P17823619022233514403.a, A321331, A321331.P2956527806336177840.a, A069138, A069138.P12285632493670532496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008277

/-! ## A008277.P14728307103575411850

`A075497(n+1)/A130321(n)`
-/

namespace A008277.P14728307103575411850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A008277.P14728307103575411850

namespace A008277

/-- `A075497(n+1)/A130321(n)` -/
def P14728307103575411850.Spec : Prop :=
  ∀ n, P14728307103575411850.a n = (A008277 (n + 1) : ℚ)

end A008277

/-! ## A008277.P11363202531679940346

`A363849(n)/A007318(n)`
-/

namespace A008277.P11363202531679940346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363849 n : ℚ) / (A007318 n : ℚ)

end

end A008277.P11363202531679940346

namespace A008277

/-- `A363849(n)/A007318(n)` -/
def P11363202531679940346.Spec : Prop :=
  ∀ n, P11363202531679940346.a n = (A008277 (n + 1) : ℚ)

end A008277

/-! ## A008277.P1962737367629980640

`A075498(n+1)/A140303(n)`
-/

namespace A008277.P1962737367629980640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075498 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A008277.P1962737367629980640

namespace A008277

/-- `A075498(n+1)/A140303(n)` -/
def P1962737367629980640.Spec : Prop :=
  ∀ n, P1962737367629980640.a n = (A008277 (n + 1) : ℚ)

end A008277

/-! ## A008277.P14323296925822184607

`gcd(A075497(n+1), A075498(n+1))`
-/

namespace A008277.P14323296925822184607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075497 (n + 1)) (A075498 (n + 1))

end

end A008277.P14323296925822184607

namespace A008277

/-- `gcd(A075497(n+1), A075498(n+1))` -/
def P14323296925822184607.Spec : Prop :=
  ∀ n, (P14323296925822184607.a n : ℤ) = A008277 (n + 1)

end A008277

/-! ## A008277.P12184860113067013476

`A075499(n+1)/A262616(n)`
-/

namespace A008277.P12184860113067013476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A262616 n : ℚ)

end

end A008277.P12184860113067013476

namespace A008277

/-- `A075499(n+1)/A262616(n)` -/
def P12184860113067013476.Spec : Prop :=
  ∀ n, P12184860113067013476.a n = (A008277 (n + 1) : ℚ)

end A008277

/-! ## A008277.P6591522154708304675

`A075499(n+1)/A130321(n)²`
-/

namespace A008277.P6591522154708304675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A008277.P6591522154708304675

namespace A008277

/-- `A075499(n+1)/A130321(n)²` -/
def P6591522154708304675.Spec : Prop :=
  ∀ n, P6591522154708304675.a n = (A008277 (n + 1) : ℚ)

end A008277

/-!
# A008278: Reflected triangle of Stirling numbers of 2nd kind, S(n,n-k+1), n >= 1, 1 <= k <= n.

The programs for A008278, the canonical program `A008278.P10611578557179582387` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008278 has offset 1).

The definition of A008278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008278.P10611578557179582387

`(row(n)-col(n)+1)*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008278

/-- `(row(n)-col(n)+1)*T(n-1,k-1)+T(n-1,k)` -/
def P10611578557179582387.Spec : Prop :=
  ∀ n, P10611578557179582387.a n = A008278 (n + 1)

theorem P10611578557179582387.correct : P10611578557179582387.Spec := by
  intro n
  simp only [A008278, Nat.add_sub_cancel]

end A008278

/-! ## A008278.P4921937516783686728

`abs(A213735(n))`
-/

namespace A008278.P4921937516783686728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213735 n|

end

end A008278.P4921937516783686728

namespace A008278

/-- `abs(A213735(n))` -/
def P4921937516783686728.Spec : Prop :=
  ∀ n, P4921937516783686728.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P15027850821370452678

`A106800(∑[char[∑[n]]]+n)`
-/

namespace A008278.P15027850821370452678
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A008278.P15027850821370452678

namespace A008278

/-- `A106800(∑[char[∑[n]]]+n)` -/
def P15027850821370452678.Spec : Prop :=
  ∀ n, P15027850821370452678.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P4693782637596212181

`A008277(A038722(n+1))`
-/

namespace A008278.P4693782637596212181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A038722 (n + 1)).toNat

end

end A008278.P4693782637596212181

namespace A008278

/-- `A008277(A038722(n+1))` -/
def P4693782637596212181.Spec : Prop :=
  ∀ n, P4693782637596212181.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P11005204719666051656

`A008277(A061579(n)+1)`
-/

namespace A008278.P11005204719666051656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A061579 n + 1).toNat

end

end A008278.P11005204719666051656

namespace A008278

/-- `A008277(A061579(n)+1)` -/
def P11005204719666051656.Spec : Prop :=
  ∀ n, P11005204719666051656.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P7196679075744221477

`A008277(A114327(n)+1+n)`
-/

namespace A008278.P7196679075744221477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A114327 n + 1 + (n : ℤ)).toNat

end

end A008278.P7196679075744221477

namespace A008278

/-- `A008277(A114327(n)+1+n)` -/
def P7196679075744221477.Spec : Prop :=
  ∀ n, P7196679075744221477.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P17842483017899039539

`A008277(A002024(n+1)²-n)`
-/

namespace A008278.P17842483017899039539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A008278.P17842483017899039539

namespace A008278

/-- `A008277(A002024(n+1)²-n)` -/
def P17842483017899039539.Spec : Prop :=
  ∀ n, P17842483017899039539.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P3849258582913036928

`A048993(2*A004736(n+1)+n)`
-/

namespace A008278.P3849258582913036928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A008278.P3849258582913036928

namespace A008278

/-- `A048993(2*A004736(n+1)+n)` -/
def P3849258582913036928.Spec : Prop :=
  ∀ n, P3849258582913036928.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P3690667608078154413

`A008277(A349520(2*(n+1))²-n)`
-/

namespace A008278.P3690667608078154413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A349520 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A008278.P3690667608078154413

namespace A008278

/-- `A008277(A349520(2*(n+1))²-n)` -/
def P3690667608078154413.Spec : Prop :=
  ∀ n, P3690667608078154413.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P2993127699300742361

`A048993(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A008278.P2993127699300742361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A008278.P2993127699300742361

namespace A008278

/-- `A048993(A004736(n+1)+A004736(n+1)+n)` -/
def P2993127699300742361.Spec : Prop :=
  ∀ n, P2993127699300742361.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P1060329556984798106

`A130850(n)/A119502(n)`
-/

namespace A008278.P1060329556984798106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130850 n : ℚ) / (A119502 n : ℚ)

end

end A008278.P1060329556984798106

namespace A008278

/-- `A130850(n)/A119502(n)` -/
def P1060329556984798106.Spec : Prop :=
  ∀ n, P1060329556984798106.a n = (A008278 (n + 1) : ℚ)

end A008278

/-! ## A008278.P10183721769213186412

`abs(A075263(n)/A025581(n)!)`
-/

namespace A008278.P10183721769213186412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A075263 n : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)|

end

end A008278.P10183721769213186412

namespace A008278

/-- `abs(A075263(n)/A025581(n)!)` -/
def P10183721769213186412.Spec : Prop :=
  ∀ n, P10183721769213186412.a n = (A008278 (n + 1) : ℚ)

end A008278

/-! ## A008278.P6593837323452395707

`A136011(A082156(n+1))`
-/

namespace A008278.P6593837323452395707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136011 (A082156 (n + 1)).toNat

end

end A008278.P6593837323452395707

namespace A008278

/-- `A136011(A082156(n+1))` -/
def P6593837323452395707.Spec : Prop :=
  ∀ n, P6593837323452395707.a n = A008278 (n + 1)

end A008278

/-! ## A008278.P11167181996788339238

`A364709(n+1)/A095888(n+1)`
-/

namespace A008278.P11167181996788339238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364709 (n + 1) : ℚ) / (A095888 (n + 1) : ℚ)

end

end A008278.P11167181996788339238

namespace A008278

/-- `A364709(n+1)/A095888(n+1)` -/
def P11167181996788339238.Spec : Prop :=
  ∀ n, P11167181996788339238.a n = (A008278 (n + 1) : ℚ)

end A008278

/-!
# A008279: Triangle T(n,k) = n!/(n-k)! (0 <= k <= n) read by rows, giving number of permutations of n things k at a time.

The programs for A008279, the canonical program `A008279.P8600957270209025573` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008279 has offset 0).

The definition of A008279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008279.P8600957270209025573

`col(n)*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008279

/-- `col(n)*T(n-1,k-1)+T(n-1,k)` -/
def P8600957270209025573.Spec : Prop :=
  ∀ n, (P8600957270209025573.a n : ℤ) = A008279 n

theorem P8600957270209025573.correct : P8600957270209025573.Spec := by
  intro n
  simp only [A008279]

end A008279

/-! ## A008279.P12470087349334944780

`row(n)!/(row(n)-col(n))!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008279.P12470087349334944780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A008279.P12470087349334944780

namespace A008279

/-- `row(n)!/(row(n)-col(n))!` -/
def P12470087349334944780.Spec : Prop :=
  ∀ n, P12470087349334944780.a n = (A008279 n : ℚ)

end A008279

/-! ## A008279.P1496141721742163962

`col(n)!*C(row(n), col(n))`
-/

namespace A008279.P1496141721742163962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A008279.P1496141721742163962

namespace A008279

/-- `col(n)!*C(row(n), col(n))` -/
def P1496141721742163962.Spec : Prop :=
  ∀ n, (P1496141721742163962.a n : ℤ) = A008279 n

end A008279

/-! ## A008279.P14394282962817576823

`T(n-1,k)+row(n)*T(n-1,k-1)-(row(n)-1)*T(n-2,k-1)` with `a(0)=1`
-/

namespace A008279.P14394282962817576823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2Left a n

end

end A008279.P14394282962817576823

namespace A008279

/-- `T(n-1,k)+row(n)*T(n-1,k-1)-(row(n)-1)*T(n-2,k-1)` -/
def P14394282962817576823.Spec : Prop :=
  ∀ n, P14394282962817576823.a n = A008279 n

end A008279

/-! ## A008279.P10209487051658219193

`A265609(A007401(n+1))`
-/

namespace A008279.P10209487051658219193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A007401 (n + 1)).toNat

end

end A008279.P10209487051658219193

namespace A008279

/-- `A265609(A007401(n+1))` -/
def P10209487051658219193.Spec : Prop :=
  ∀ n, P10209487051658219193.a n = A008279 n

end A008279

/-! ## A008279.P8314104680626967833

`A324362(n)+A060475(n)`
-/

namespace A008279.P8314104680626967833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 n + A060475 n

end

end A008279.P8314104680626967833

namespace A008279

/-- `A324362(n)+A060475(n)` -/
def P8314104680626967833.Spec : Prop :=
  ∀ n, P8314104680626967833.a n = A008279 n

end A008279

/-! ## A008279.P17970268208229131495

`A007318(n)*A233543(n)`
-/

namespace A008279.P17970268208229131495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A233543 n

end

end A008279.P17970268208229131495

namespace A008279

/-- `A007318(n)*A233543(n)` -/
def P17970268208229131495.Spec : Prop :=
  ∀ n, P17970268208229131495.a n = A008279 n

end A008279

/-! ## A008279.P7696395172146830018

`A002262(n)!*A007318(n)`
-/

namespace A008279.P7696395172146830018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A007318 n

end

end A008279.P7696395172146830018

namespace A008279

/-- `A002262(n)!*A007318(n)` -/
def P7696395172146830018.Spec : Prop :=
  ∀ n, P7696395172146830018.a n = A008279 n

end A008279

/-! ## A008279.P8430998266826774208

`(A014473(n)+1)*A233543(n)`
-/

namespace A008279.P8430998266826774208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A233543 n

end

end A008279.P8430998266826774208

namespace A008279

/-- `(A014473(n)+1)*A233543(n)` -/
def P8430998266826774208.Spec : Prop :=
  ∀ n, P8430998266826774208.a n = A008279 n

end A008279

/-! ## A008279.P8945229348930330200

`A134399(n)*A165680(n+1)`
-/

namespace A008279.P8945229348930330200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 n * A165680 (n + 1)

end

end A008279.P8945229348930330200

namespace A008279

/-- `A134399(n)*A165680(n+1)` -/
def P8945229348930330200.Spec : Prop :=
  ∀ n, P8945229348930330200.a n = A008279 n

end A008279

/-! ## A008279.P10896216389889892762

`A028326(n)/2*A233543(n)`
-/

namespace A008279.P10896216389889892762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A233543 n : ℚ)

end

end A008279.P10896216389889892762

namespace A008279

/-- `A028326(n)/2*A233543(n)` -/
def P10896216389889892762.Spec : Prop :=
  ∀ n, P10896216389889892762.a n = (A008279 n : ℚ)

end A008279

/-! ## A008279.P17643465713843839073

`A002262(n)!*ceil(A134059(n)/3)`
-/

namespace A008279.P17643465713843839073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * ⌈(A134059 n : ℚ) / 3⌉

end

end A008279.P17643465713843839073

namespace A008279

/-- `A002262(n)!*ceil(A134059(n)/3)` -/
def P17643465713843839073.Spec : Prop :=
  ∀ n, P17643465713843839073.a n = A008279 n

end A008279

/-! ## A008279.P14625586374647612149

`A000142(A144328(n+1))*A007318(n)`
-/

namespace A008279.P14625586374647612149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A144328 (n + 1)).toNat * A007318 n

end

end A008279.P14625586374647612149

namespace A008279

/-- `A000142(A144328(n+1))*A007318(n)` -/
def P14625586374647612149.Spec : Prop :=
  ∀ n, P14625586374647612149.a n = A008279 n

end A008279

/-! ## A008279.P18110365470773657940

`A002262(n)!*A193554(lt[1, A193588(n)])`
-/

namespace A008279.P18110365470773657940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008279.P18110365470773657940

namespace A008279

/-- `A002262(n)!*A193554(lt[1, A193588(n)])` -/
def P18110365470773657940.Spec : Prop :=
  ∀ n, P18110365470773657940.a n = A008279 n

end A008279

/-! ## A008279.P7177801246737440238

`A002262(n)!*C(A003056(n), A002262(n))`
-/

namespace A008279.P7177801246737440238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 n).toNat * Nat.choose (A003056 n).toNat (A002262 n).toNat

end

end A008279.P7177801246737440238

namespace A008279

/-- `A002262(n)!*C(A003056(n), A002262(n))` -/
def P7177801246737440238.Spec : Prop :=
  ∀ n, (P7177801246737440238.a n : ℤ) = A008279 n

end A008279

/-! ## A008279.P2999111479146077615

`A245334(n)/A004736(n+1)`
-/

namespace A008279.P2999111479146077615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245334 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A008279.P2999111479146077615

namespace A008279

/-- `A245334(n)/A004736(n+1)` -/
def P2999111479146077615.Spec : Prop :=
  ∀ n, P2999111479146077615.a n = (A008279 n : ℚ)

end A008279

/-! ## A008279.P16126350771533842785

`A007318(n)/A093375(n+1)*A245334(n)`
-/

namespace A008279.P16126350771533842785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A093375 (n + 1) : ℚ) * (A245334 n : ℚ)

end

end A008279.P16126350771533842785

namespace A008279

/-- `A007318(n)/A093375(n+1)*A245334(n)` -/
def P16126350771533842785.Spec : Prop :=
  ∀ n, P16126350771533842785.a n = (A008279 n : ℚ)

end A008279

/-! ## A008279.P5598858329002630644

`A090802(n)/A130321(n)`
-/

namespace A008279.P5598858329002630644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090802 n : ℚ) / (A130321 n : ℚ)

end

end A008279.P5598858329002630644

namespace A008279

/-- `A090802(n)/A130321(n)` -/
def P5598858329002630644.Spec : Prop :=
  ∀ n, P5598858329002630644.a n = (A008279 n : ℚ)

end A008279

/-! ## A008279.P9460601830480250553

`A217629(n)/A140303(n)`
-/

namespace A008279.P9460601830480250553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217629 n : ℚ) / (A140303 n : ℚ)

end

end A008279.P9460601830480250553

namespace A008279

/-- `A217629(n)/A140303(n)` -/
def P9460601830480250553.Spec : Prop :=
  ∀ n, P9460601830480250553.a n = (A008279 n : ℚ)

end A008279

/-! ## A008279.P14680628918402755257

`gcd(A217629(n), A218016(n))`
-/

namespace A008279.P14680628918402755257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217629 n) (A218016 n)

end

end A008279.P14680628918402755257

namespace A008279

/-- `gcd(A217629(n), A218016(n))` -/
def P14680628918402755257.Spec : Prop :=
  ∀ n, (P14680628918402755257.a n : ℤ) = A008279 n

end A008279

/-!
# A008280: Boustrophedon version of triangle of Euler-Bernoulli or Entringer numbers read by rows.

The programs for A008280, there is no canonical definition to state claims against.
-/

/-! ## A008280.P15496816440608014738

`A008281(A093995(n+1)-A056011(n+1))`
-/

namespace A008280.P15496816440608014738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A008280.P15496816440608014738

/-! ## A008280.P9433340788122431481

`A108040(∑[char[∑[n]]]²-(n+1))`
-/

namespace A008280.P9433340788122431481
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A008280.P9433340788122431481

/-! ## A008280.P10635232331800629140

`gcd(A000038(n), A108040(A061579(n)))`
-/

namespace A008280.P10635232331800629140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108040 (A061579 n).toNat)

end

end A008280.P10635232331800629140

/-! ## A008280.P2573977809310629201

`A034460(A050376(n+1))*A108040(A038722(n+1)-1)`
-/

namespace A008280.P2573977809310629201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A050376 (n + 1)).toNat * A108040 (A038722 (n + 1) - 1).toNat

end

end A008280.P2573977809310629201

/-! ## A008280.P2040904905577935522

`A057427(A039649(n+1))*A108040(A038722(n+1)-1)`
-/

namespace A008280.P2040904905577935522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A039649 (n + 1)).toNat * A108040 (A038722 (n + 1) - 1).toNat

end

end A008280.P2040904905577935522

/-! ## A008280.P65621550073174128

`A034460(A020639(3*(n+2)))*A108040(A038722(n+1)-1)`
-/

namespace A008280.P65621550073174128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A020639 (3 * (n + 2))).toNat * A108040 (A038722 (n + 1) - 1).toNat

end

end A008280.P65621550073174128

/-! ## A008280.P16516223381238547866

`A202695(n+1)-(A202701(n+1)+A202698(n+1))`
-/

namespace A008280.P16516223381238547866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202695 (n + 1) - (A202701 (n + 1) + A202698 (n + 1))

end

end A008280.P16516223381238547866

/-! ## A008280.P2401623018347809844

`2*A202695(n+1)-A202692(n+1)`
-/

namespace A008280.P2401623018347809844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202695 (n + 1) - A202692 (n + 1)

end

end A008280.P2401623018347809844

/-! ## A008280.P4028298928796141334

`A202694(n+1)-2*A202697(n+1)`
-/

namespace A008280.P4028298928796141334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202694 (n + 1) - 2 * A202697 (n + 1)

end

end A008280.P4028298928796141334

/-! ## A008280.P11334099259049733562

`A202700(n+1)+A202703(n+1)-A202697(n+1)`
-/

namespace A008280.P11334099259049733562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202700 (n + 1) + (A202703 (n + 1) - A202697 (n + 1))

end

end A008280.P11334099259049733562

/-! ## A008280.P6422423126736720543

`A057427(A233583(n+1))*A108040(A038722(n+1)-1)`
-/

namespace A008280.P6422423126736720543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A233583 (n + 1)).toNat * A108040 (A038722 (n + 1) - 1).toNat

end

end A008280.P6422423126736720543

/-! ## A008280.P227517417816434860

`A108040(A061579(n))%A082587(n)`
-/

namespace A008280.P227517417816434860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108040 (A061579 n).toNat) (A082587 n)

end

end A008280.P227517417816434860

/-! ## A008280.P10051322566674103274

`A108040(A038722(n+1)-1)%A250544(n+1)`
-/

namespace A008280.P10051322566674103274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108040 (A038722 (n + 1) - 1).toNat) (A250544 (n + 1))

end

end A008280.P10051322566674103274

/-!
# A008281: Triangle of Euler-Bernoulli or Entringer numbers read by rows.

The programs for A008281, there is no canonical definition to state claims against.
-/

/-! ## A008281.P515230851999353992

`A008280(A056023(n+1)-1)`
-/

namespace A008281.P515230851999353992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A056023 (n + 1) - 1).toNat

end

end A008281.P515230851999353992

/-! ## A008281.P4142601999687844466

`A008280(A093995(n+1)-A056011(n+1))`
-/

namespace A008281.P4142601999687844466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A008281.P4142601999687844466

/-! ## A008281.P8644479662354021998

`A108040(A056011(n+1)-1)`
-/

namespace A008281.P8644479662354021998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 (A056011 (n + 1) - 1).toNat

end

end A008281.P8644479662354021998

/-! ## A008281.P12964265125325584494

`A108040(A093995(n+1)-A056023(n+1))`
-/

namespace A008281.P12964265125325584494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 (A093995 (n + 1) - A056023 (n + 1)).toNat

end

end A008281.P12964265125325584494

/-! ## A008281.P5607593818668109669

`A010094(n+1)-Δ[A008282(A080036(n))]`
-/

namespace A008281.P5607593818668109669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008281.P5607593818668109669

/-! ## A008281.P17590490652298887997

`A010094(n+1)-Δ[A008282(A014132(n+1))]`
-/

namespace A008281.P17590490652298887997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008281.P17590490652298887997

/-! ## A008281.P14371566699909865426

`A108040(A319573(n)+A057944(n))`
-/

namespace A008281.P14371566699909865426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 (A319573 n + A057944 n).toNat

end

end A008281.P14371566699909865426

/-!
# A008282: Triangle of Euler-Bernoulli or Entringer numbers read by rows: T(n,k) is the number of down-up permutations of n+1 starting with k+1.

The programs for A008282, there is no canonical definition to state claims against.
-/

/-! ## A008282.P84714144062733425

`A008281(comp[∑[n]])`
-/

namespace A008282.P84714144062733425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008282.P84714144062733425

/-! ## A008282.P9846845739046272606

`A010094(A038722(n+1))`
-/

namespace A008282.P9846845739046272606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A038722 (n + 1)).toNat

end

end A008282.P9846845739046272606

/-! ## A008282.P1890727020986574393

`A010094(A061579(n)+1)`
-/

namespace A008282.P1890727020986574393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A061579 n + 1).toNat

end

end A008282.P1890727020986574393

/-! ## A008282.P2448076119069638377

`A010094(A127739(n+1)-A002262(n))`
-/

namespace A008282.P2448076119069638377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A127739 (n + 1) - A002262 n).toNat

end

end A008282.P2448076119069638377

/-! ## A008282.P2748435496537250806

`A008281(A014132(n+1))%A020751(n)`
-/

namespace A008282.P2748435496537250806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008281 (A014132 (n + 1)).toNat) (A020751 n)

end

end A008282.P2748435496537250806

/-! ## A008282.P6909578434668896420

`filter[A008281(n+1), A014578(#)]`
-/

namespace A008282.P6909578434668896420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A008282.P6909578434668896420

/-! ## A008282.P16375833187221193587

`filter[A008281(n+1), A168185(#)]`
-/

namespace A008282.P16375833187221193587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A008282.P16375833187221193587

/-!
# A008283: Read across rows of Euler-Bernoulli or Entringer triangle.

The programs for A008283, there is no canonical definition to state claims against.
-/

/-! ## A008283.P4866009821679721444

`record[A008281(n)]`
-/

namespace A008283.P4866009821679721444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P4866009821679721444

/-! ## A008283.P10058275611703020034

`A008282(lt[1, A008288(n)])`
-/

namespace A008283.P10058275611703020034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008283.P10058275611703020034

/-! ## A008283.P15039700327725298858

`A008282(lt[2, A124927(n)])`
-/

namespace A008283.P15039700327725298858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008283.P15039700327725298858

/-! ## A008283.P16437980707673489600

`record[A008282(A003602(n+1))]`
-/

namespace A008283.P16437980707673489600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P16437980707673489600

/-! ## A008283.P593879917641583826

`record[A008282(A008611(n)+1)]`
-/

namespace A008283.P593879917641583826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A008611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P593879917641583826

/-! ## A008283.P7836984458898792624

`record[A008282(A025480(n)+1)]`
-/

namespace A008283.P7836984458898792624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A025480 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P7836984458898792624

/-! ## A008283.P17362953513277164321

`record[A008282(A032742(n+1))]`
-/

namespace A008283.P17362953513277164321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P17362953513277164321

/-! ## A008283.P16040278783471342643

`record[A010094(A061579(n+1))]`
-/

namespace A008283.P16040278783471342643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P16040278783471342643

/-! ## A008283.P11970570459292854800

`record[A008282(A061395(n+2))]`
-/

namespace A008283.P11970570459292854800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A061395 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P11970570459292854800

/-! ## A008283.P1888617672519231431

`record[A008282(A008611(or(2, n)))]`
-/

namespace A008283.P1888617672519231431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A008611 (Nat.lor 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P1888617672519231431

/-! ## A008283.P11973561834506306551

`A008282(lt[1, A008277(n+1)])`
-/

namespace A008283.P11973561834506306551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008283.P11973561834506306551

/-! ## A008283.P656590394554169813

`A008282(lt[1, A008278(n+1)])`
-/

namespace A008283.P656590394554169813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008283.P656590394554169813

/-! ## A008283.P12602033506136501857

`A008281(lt[1, A008284(n+1)])`
-/

namespace A008283.P12602033506136501857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008283.P12602033506136501857

/-! ## A008283.P16940813668241327079

`A008282(2*A080036(n)-n)`
-/

namespace A008283.P16940813668241327079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (2 * A080036 n - (n : ℤ)).toNat

end

end A008283.P16940813668241327079

/-! ## A008283.P2154931093526532378

`A008282(2*A014132(n+1)-n)`
-/

namespace A008283.P2154931093526532378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A008283.P2154931093526532378

/-! ## A008283.P1193350750184451457

`A008282(A080036(n)+A080036(n)-n)`
-/

namespace A008283.P1193350750184451457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A080036 n + (A080036 n - (n : ℤ))).toNat

end

end A008283.P1193350750184451457

/-! ## A008283.P13805325185511645949

`A008282(A080036(n)-(n-A080036(n)))`
-/

namespace A008283.P13805325185511645949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A080036 n - ((n : ℤ) - A080036 n)).toNat

end

end A008283.P13805325185511645949

/-! ## A008283.P14928947327861271594

`A008282(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A008283.P14928947327861271594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A008283.P14928947327861271594

/-! ## A008283.P10617720012301686312

`A008282(lt[1, A008292(n+1)])`
-/

namespace A008283.P10617720012301686312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008283.P10617720012301686312

/-! ## A008283.P3998751766994268402

`record[A008282(A003963(n+1))]`
-/

namespace A008283.P3998751766994268402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008283.P3998751766994268402

/-!
# A008284: Triangle of partition numbers: T(n,k) = number of partitions of n in which the greatest part is k, 1 <= k <= n. Also number of partitions of n into k positive parts, 1 <= k <= n.

The programs for A008284, there is no canonical definition to state claims against.
-/

/-! ## A008284.P17655016181967300803

`A106254(A122797(n+1))`
-/

namespace A008284.P17655016181967300803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106254 (A122797 (n + 1)).toNat

end

end A008284.P17655016181967300803

/-! ## A008284.P3971692457847850859

`A026921(n+1)+A026920(n+1)`
-/

namespace A008284.P3971692457847850859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (n + 1) + A026920 (n + 1)

end

end A008284.P3971692457847850859

/-! ## A008284.P8298708751390968091

`A172467(n+1)/A002260(n+1)`
-/

namespace A008284.P8298708751390968091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172467 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A008284.P8298708751390968091

/-! ## A008284.P8247462761919381595

`A172467(n+1)/(A002262(n)+1)`
-/

namespace A008284.P8247462761919381595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172467 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A008284.P8247462761919381595

/-! ## A008284.P16200816896030387545

`A072233(comp[∑[n]])`
-/

namespace A008284.P16200816896030387545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008284.P16200816896030387545

/-! ## A008284.P9697467601434912373

`A058398(∑[char[∑[n]]]²-n)`
-/

namespace A008284.P9697467601434912373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A008284.P9697467601434912373

/-! ## A008284.P3719036234973316829

`(A014132(n+1)-A007401(n+1))*A072233(A014132(n+1))`
-/

namespace A008284.P3719036234973316829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - A007401 (n + 1)) * A072233 (A014132 (n + 1)).toNat

end

end A008284.P3719036234973316829

/-! ## A008284.P17137488780780401150

`A072233(A007401(n+2))+A023531(n)`
-/

namespace A008284.P17137488780780401150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A007401 (n + 2)).toNat + A023531 n

end

end A008284.P17137488780780401150

/-! ## A008284.P4098950208970882326

`A145574(A056537(n+1)+1)`
-/

namespace A008284.P4098950208970882326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145574 (A056537 (n + 1) + 1).toNat

end

end A008284.P4098950208970882326

/-! ## A008284.P12597077707488105933

`and(A045535(n), A215521(n+1))`
-/

namespace A008284.P12597077707488105933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A215521 (n + 1))

end

end A008284.P12597077707488105933

/-!
# A008286: Number of different parameter sets for orthogonal arrays with 2^n runs.

The programs for A008286, there is no canonical definition to state claims against.
-/

/-! ## A008286.P9783058318782544106

`A049082(n)-A211540(A300913(n))`
-/

namespace A008286.P9783058318782544106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049082 n - A211540 (A300913 n).toNat

end

end A008286.P9783058318782544106

/-! ## A008286.P10997184477456143152

`n!*∑[1/n!]-A284248(n!)`
-/

namespace A008286.P10997184477456143152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (A284248 (Nat.factorial n) : ℚ)

end

end A008286.P10997184477456143152

/-!
# A008287: Triangle of quadrinomial coefficients, row n is the sequence of coefficients of (1 + x + x^2 + x^3)^n.

The programs for A008287, there is no canonical definition to state claims against.
-/

/-! ## A008287.P14165034663354360913

`filter[A017889(n), A167393(#)]`
-/

namespace A008287.P14165034663354360913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167393 (f1 j).toNat = 1) n)

end

end A008287.P14165034663354360913

/-! ## A008287.P3775033433511724700

`filter[A017859(n), A167393(#)]`
-/

namespace A008287.P3775033433511724700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167393 (f1 j).toNat = 1) n)

end

end A008287.P3775033433511724700

/-!
# A008288: Square array of Delannoy numbers D(i,j) (i >= 0, j >= 0) read by antidiagonals.

The programs for A008288, the canonical program `A008288.P3441482626856859975` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008288 has offset 0).

The definition of A008288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008288.P3441482626856859975

`T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008288

/-- `T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` -/
def P3441482626856859975.Spec : Prop :=
  ∀ n, (P3441482626856859975.a n : ℤ) = A008288 n

theorem P3441482626856859975.correct : P3441482626856859975.Spec := by
  intro n
  simp only [A008288]

end A008288

/-! ## A008288.P6741811339836967546

`2*A108350(n)-1`
-/

namespace A008288.P6741811339836967546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108350 n - 1

end

end A008288.P6741811339836967546

namespace A008288

/-- `2*A108350(n)-1` -/
def P6741811339836967546.Spec : Prop :=
  ∀ n, P6741811339836967546.a n = A008288 n

end A008288

/-! ## A008288.P16302030743247393587

`A047662(n+1)-A391318(n)`
-/

namespace A008288.P16302030743247393587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (n + 1) - A391318 n

end

end A008288.P16302030743247393587

namespace A008288

/-- `A047662(n+1)-A391318(n)` -/
def P16302030743247393587.Spec : Prop :=
  ∀ n, P16302030743247393587.a n = A008288 n

end A008288

/-! ## A008288.P4334181540810924420

`(A122542(n)+A113413(n))/2`
-/

namespace A008288.P4334181540810924420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122542 n + A113413 n : ℚ) / 2

end

end A008288.P4334181540810924420

namespace A008288

/-- `(A122542(n)+A113413(n))/2` -/
def P4334181540810924420.Spec : Prop :=
  ∀ n, P4334181540810924420.a n = (A008288 n : ℚ)

end A008288

/-! ## A008288.P13395076050713330177

`(A266213(n)+A035607(n))/2`
-/

namespace A008288.P13395076050713330177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266213 n + A035607 n : ℚ) / 2

end

end A008288.P13395076050713330177

namespace A008288

/-- `(A266213(n)+A035607(n))/2` -/
def P13395076050713330177.Spec : Prop :=
  ∀ n, P13395076050713330177.a n = (A008288 n : ℚ)

end A008288

/-! ## A008288.P16517695516992601351

`A035607(n)+A197870(n)-A112475(n)`
-/

namespace A008288.P16517695516992601351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n + (A197870 n - A112475 n)

end

end A008288.P16517695516992601351

namespace A008288

/-- `A035607(n)+A197870(n)-A112475(n)` -/
def P16517695516992601351.Spec : Prop :=
  ∀ n, P16517695516992601351.a n = A008288 n

theorem P16517695516992601351.correct : P16517695516992601351.Spec := by
  intro n
  simp only [A008288, Nat.add_sub_cancel, A008288.P16517695516992601351.a, A008288.P3441482626856859975.a, A035607, A035607.P2767228634989126353.a, A112475, A112475.P12220316828217770936.a, A197870, A197870.P1067447650284756042.a, A009531, A009531.P14285492072244400176.a, A198954, A198954.P2690440958221023727.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008288

/-! ## A008288.P4373689144939453972

`A104698(n+1)+A104698(n)-A210222(n+2)`
-/

namespace A008288.P4373689144939453972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104698 (n + 1) + (A104698 n - A210222 (n + 2))

end

end A008288.P4373689144939453972

namespace A008288

/-- `A104698(n+1)+A104698(n)-A210222(n+2)` -/
def P4373689144939453972.Spec : Prop :=
  ∀ n, P4373689144939453972.a n = A008288 n

end A008288

/-! ## A008288.P12373082093409770503

`(A266213(A007401(n+1))+A266213(n))/2`
-/

namespace A008288.P12373082093409770503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266213 (A007401 (n + 1)).toNat + A266213 n : ℚ) / 2

end

end A008288.P12373082093409770503

namespace A008288

/-- `(A266213(A007401(n+1))+A266213(n))/2` -/
def P12373082093409770503.Spec : Prop :=
  ∀ n, P12373082093409770503.a n = (A008288 n : ℚ)

end A008288

/-! ## A008288.P15717173649088701407

`A112475(comp[∑[n]])`
-/

namespace A008288.P15717173649088701407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008288.P15717173649088701407

namespace A008288

/-- `A112475(comp[∑[n]])` -/
def P15717173649088701407.Spec : Prop :=
  ∀ n, P15717173649088701407.a n = A008288 n

end A008288

/-! ## A008288.P4447267413489182116

`(A122542(A014132(n+1))+A122542(n))/2`
-/

namespace A008288.P4447267413489182116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122542 (A014132 (n + 1)).toNat + A122542 n : ℚ) / 2

end

end A008288.P4447267413489182116

namespace A008288

/-- `(A122542(A014132(n+1))+A122542(n))/2` -/
def P4447267413489182116.Spec : Prop :=
  ∀ n, P4447267413489182116.a n = (A008288 n : ℚ)

end A008288

/-! ## A008288.P17316138704578002472

`A101164(n)+A007318(n)`
-/

namespace A008288.P17316138704578002472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 n + A007318 n

end

end A008288.P17316138704578002472

namespace A008288

/-- `A101164(n)+A007318(n)` -/
def P17316138704578002472.Spec : Prop :=
  ∀ n, P17316138704578002472.a n = A008288 n

theorem P17316138704578002472.correct : P17316138704578002472.Spec := by
  intro n
  simp only [A008288, Nat.add_sub_cancel, A008288.P17316138704578002472.a, A008288.P3441482626856859975.a, A007318, A007318.P11755526479805562006.a, A101164, A101164.P12326998442168415454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008288

/-! ## A008288.P4306177948686803037

`A014473(n)+A101164(n)+1`
-/

namespace A008288.P4306177948686803037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A101164 n + 1)

end

end A008288.P4306177948686803037

namespace A008288

/-- `A014473(n)+A101164(n)+1` -/
def P4306177948686803037.Spec : Prop :=
  ∀ n, P4306177948686803037.a n = A008288 n

theorem P4306177948686803037.correct : P4306177948686803037.Spec := by
  intro n
  simp only [A008288, Nat.add_sub_cancel, A008288.P4306177948686803037.a, A008288.P3441482626856859975.a, A014473, A014473.P9301799580602651200.a, A101164, A101164.P12326998442168415454.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008288

/-! ## A008288.P9311461995969687914

`A101164(n)+A028326(n)/2`
-/

namespace A008288.P9311461995969687914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101164 n : ℚ) + (A028326 n : ℚ) / 2

end

end A008288.P9311461995969687914

namespace A008288

/-- `A101164(n)+A028326(n)/2` -/
def P9311461995969687914.Spec : Prop :=
  ∀ n, P9311461995969687914.a n = (A008288 n : ℚ)

theorem P9311461995969687914.correct : P9311461995969687914.Spec := by
  intro n
  simp only [A008288, Nat.add_sub_cancel, A008288.P9311461995969687914.a, A008288.P3441482626856859975.a, A028326, A028326.P7676793339942299677.a, A101164, A101164.P12326998442168415454.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008288

/-! ## A008288.P8016316919083326455

`2*(A225413(n)+A007318(n))-1`
-/

namespace A008288.P8016316919083326455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A225413 n + A007318 n) - 1

end

end A008288.P8016316919083326455

namespace A008288

/-- `2*(A225413(n)+A007318(n))-1` -/
def P8016316919083326455.Spec : Prop :=
  ∀ n, P8016316919083326455.a n = A008288 n

end A008288

/-! ## A008288.P7012825580925795653

`A101164(n)-(A014473(n)-A109128(n))`
-/

namespace A008288.P7012825580925795653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 n - (A014473 n - A109128 n)

end

end A008288.P7012825580925795653

namespace A008288

/-- `A101164(n)-(A014473(n)-A109128(n))` -/
def P7012825580925795653.Spec : Prop :=
  ∀ n, P7012825580925795653.a n = A008288 n

theorem P7012825580925795653.correct : P7012825580925795653.Spec := by
  intro n
  simp only [A008288, Nat.add_sub_cancel, A008288.P7012825580925795653.a, A008288.P3441482626856859975.a, A014473, A014473.P9301799580602651200.a, A101164, A101164.P12326998442168415454.a, A109128, A109128.P7867596798531783597.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008288

/-! ## A008288.P17224545112398752282

`A140750(A001614(n+1))`
-/

namespace A008288.P17224545112398752282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A001614 (n + 1)).toNat

end

end A008288.P17224545112398752282

namespace A008288

/-- `A140750(A001614(n+1))` -/
def P17224545112398752282.Spec : Prop :=
  ∀ n, P17224545112398752282.a n = A008288 n

end A008288

/-! ## A008288.P4970815159219316495

`A140750(A133280(n)+1)`
-/

namespace A008288.P4970815159219316495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A133280 n + 1).toNat

end

end A008288.P4970815159219316495

namespace A008288

/-- `A140750(A133280(n)+1)` -/
def P4970815159219316495.Spec : Prop :=
  ∀ n, P4970815159219316495.a n = A008288 n

end A008288

/-! ## A008288.P2554239859807660030

`A140750(eq[1, A071028(n)]+1)`
-/

namespace A008288.P2554239859807660030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A008288.P2554239859807660030

namespace A008288

/-- `A140750(eq[1, A071028(n)]+1)` -/
def P2554239859807660030.Spec : Prop :=
  ∀ n, P2554239859807660030.a n = A008288 n

end A008288

/-! ## A008288.P2231225637148568338

`A140750(A127367(2*n)+1)`
-/

namespace A008288.P2231225637148568338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A127367 (2 * n) + 1).toNat

end

end A008288.P2231225637148568338

namespace A008288

/-- `A140750(A127367(2*n)+1)` -/
def P2231225637148568338.Spec : Prop :=
  ∀ n, P2231225637148568338.a n = A008288 n

end A008288

/-! ## A008288.P16215010929769983946

`A140750(A118011(n+1))`
-/

namespace A008288.P16215010929769983946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A118011 (n + 1)).toNat

end

end A008288.P16215010929769983946

namespace A008288

/-- `A140750(A118011(n+1))` -/
def P16215010929769983946.Spec : Prop :=
  ∀ n, P16215010929769983946.a n = A008288 n

end A008288

/-!
# A008289: Triangle read by rows: Q(n,m) = number of partitions of n into m distinct parts, n>=1, m>=1.

The programs for A008289, there is no canonical definition to state claims against.
-/

/-! ## A008289.P10211203909176832355

`A060016(lt[2-A060016(n+1), 2]+1)`
-/

namespace A008289.P10211203909176832355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A060016 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A008289.P10211203909176832355

/-! ## A008289.P10391946807140451355

`A060016(record[n%(A060016(n+1)+n)]+1)`
-/

namespace A008289.P10391946807140451355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A060016 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A008289.P10391946807140451355

/-! ## A008289.P11183809130715540699

`A055642(A359762(3*(n+1)))`
-/

namespace A008289.P11183809130715540699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A359762 (3 * (n + 1))).toNat

end

end A008289.P11183809130715540699

/-! ## A008289.P16776209682924635107

`A004218(A359762(3*(n+1))+1)`
-/

namespace A008289.P16776209682924635107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A359762 (3 * (n + 1)) + 1).toNat

end

end A008289.P16776209682924635107

/-! ## A008289.P16754689574097163207

`∑{digits}[A359762(3*(n+1)), A271835(#)]`
-/

namespace A008289.P16754689574097163207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359762 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A271835 x).sum

end

end A008289.P16754689574097163207

/-!
# A008290: Triangle T(n,k) of rencontres numbers (number of permutations of n elements with k fixed points).

The programs for A008290, the canonical program `A008290.P8961295090200819108` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008290 has offset 0).

The definition of A008290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008290.P8961295090200819108

`T(n-1,k-1)+T(n-1,k)*(row(n)-(col(n)+1))+T(n-1,k+1)*(col(n)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008290

/-- `T(n-1,k-1)+T(n-1,k)*(row(n)-(col(n)+1))+T(n-1,k+1)*(col(n)+1)` -/
def P8961295090200819108.Spec : Prop :=
  ∀ n, P8961295090200819108.a n = A008290 n

theorem P8961295090200819108.correct : P8961295090200819108.Spec := by
  intro n
  simp only [A008290]

end A008290

/-! ## A008290.P11454292070290796135

`T(n-1,k)*row(n)+C(row(n), col(n))*(-1)^(row(n)-col(n))` with `a(0)=1`
-/

namespace A008290.P11454292070290796135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n * (SequenceMachineLib.triRow n : ℚ) + (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) * (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A008290.P11454292070290796135

namespace A008290

/-- `T(n-1,k)*row(n)+C(row(n), col(n))*(-1)^(row(n)-col(n))` -/
def P11454292070290796135.Spec : Prop :=
  ∀ n, P11454292070290796135.a n = (A008290 n : ℚ)

end A008290

/-! ## A008290.P2714087533216677356

`A000166(row(n)-col(n))*C(row(n), col(n))`
-/

namespace A008290.P2714087533216677356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A008290.P2714087533216677356

namespace A008290

/-- `A000166(row(n)-col(n))*C(row(n), col(n))` -/
def P2714087533216677356.Spec : Prop :=
  ∀ n, P2714087533216677356.a n = A008290 n

end A008290

/-! ## A008290.P6792413531487756726

`A098825(A061579(n))`
-/

namespace A008290.P6792413531487756726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A061579 n).toNat

end

end A008290.P6792413531487756726

namespace A008290

/-- `A098825(A061579(n))` -/
def P6792413531487756726.Spec : Prop :=
  ∀ n, P6792413531487756726.a n = A008290 n

end A008290

/-! ## A008290.P16083150560134500571

`A098825(A114327(n)+n)`
-/

namespace A008290.P16083150560134500571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A114327 n + (n : ℤ)).toNat

end

end A008290.P16083150560134500571

namespace A008290

/-- `A098825(A114327(n)+n)` -/
def P16083150560134500571.Spec : Prop :=
  ∀ n, P16083150560134500571.a n = A008290 n

end A008290

/-! ## A008290.P12183859104956742455

`A145225(n)+A145224(n)`
-/

namespace A008290.P12183859104956742455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145225 n + A145224 n

end

end A008290.P12183859104956742455

namespace A008290

/-- `A145225(n)+A145224(n)` -/
def P12183859104956742455.Spec : Prop :=
  ∀ n, P12183859104956742455.a n = A008290 n

end A008290

/-! ## A008290.P7683261454775809697

`A098825(A038722(n+1)-1)`
-/

namespace A008290.P7683261454775809697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A038722 (n + 1) - 1).toNat

end

end A008290.P7683261454775809697

namespace A008290

/-- `A098825(A038722(n+1)-1)` -/
def P7683261454775809697.Spec : Prop :=
  ∀ n, P7683261454775809697.a n = A008290 n

end A008290

/-! ## A008290.P1066955306756243052

`A098825(A002378(n)%A014132(n+1))`
-/

namespace A008290.P1066955306756243052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A008290.P1066955306756243052

namespace A008290

/-- `A098825(A002378(n)%A014132(n+1))` -/
def P1066955306756243052.Spec : Prop :=
  ∀ n, P1066955306756243052.a n = A008290 n

end A008290

/-! ## A008290.P12630121775723686963

`A098825(A038722(n+2))`
-/

namespace A008290.P12630121775723686963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A038722 (n + 2)).toNat

end

end A008290.P12630121775723686963

namespace A008290

/-- `A098825(A038722(n+2))` -/
def P12630121775723686963.Spec : Prop :=
  ∀ n, P12630121775723686963.a n = A008290 n

end A008290

/-! ## A008290.P6705217745109544807

`A211229(A185869(n+1))`
-/

namespace A008290.P6705217745109544807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211229 (A185869 (n + 1)).toNat

end

end A008290.P6705217745109544807

namespace A008290

/-- `A211229(A185869(n+1))` -/
def P6705217745109544807.Spec : Prop :=
  ∀ n, P6705217745109544807.a n = A008290 n

end A008290

/-! ## A008290.P651022662434892722

`A180188(n+1)/A002024(n+1)`
-/

namespace A008290.P651022662434892722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180188 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A008290.P651022662434892722

namespace A008290

/-- `A180188(n+1)/A002024(n+1)` -/
def P651022662434892722.Spec : Prop :=
  ∀ n, P651022662434892722.a n = (A008290 n : ℚ)

end A008290

/-! ## A008290.P9770056310376218097

`gcd(A156788(n), A337615(n))`
-/

namespace A008290.P9770056310376218097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156788 n) (A337615 n)

end

end A008290.P9770056310376218097

namespace A008290

/-- `gcd(A156788(n), A337615(n))` -/
def P9770056310376218097.Spec : Prop :=
  ∀ n, (P9770056310376218097.a n : ℤ) = A008290 n

end A008290

/-!
# A008291: Triangle of rencontres numbers.

The programs for A008291, the canonical program `A008291.P3366930625600708790` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008291 has offset 2).

The definition of A008291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008291.P3366930625600708790

`A008290(lt[A055137(n), 0])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008291

/-- `A008290(lt[A055137(n), 0])` -/
def P3366930625600708790.Spec : Prop :=
  ∀ n, P3366930625600708790.a n = A008291 (n + 2)

theorem P3366930625600708790.correct : P3366930625600708790.Spec := by
  intro n
  simp only [A008291, Nat.add_sub_cancel]

end A008291

/-! ## A008291.P11966889001505975509

`A008290(lt[log(n+1), A008290(n)])`
-/

namespace A008291.P11966889001505975509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A008291.P11966889001505975509

namespace A008291

/-- `A008290(lt[log(n+1), A008290(n)])` -/
def P11966889001505975509.Spec : Prop :=
  ∀ n, P11966889001505975509.a n = A008291 (n + 2)

end A008291

/-! ## A008291.P4808515188416108912

`A008290(eq[0, C(a(n-1), A008290(n))])` with `a(0)=0`
-/

namespace A008291.P4808515188416108912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose (f2 (n - 1)) (A008290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A008291.P4808515188416108912

namespace A008291

/-- `A008290(eq[0, C(a(n-1), A008290(n))])` -/
def P4808515188416108912.Spec : Prop :=
  ∀ n, P4808515188416108912.a n = A008291 (n + 2)

end A008291

/-! ## A008291.P18159942895406819980

`A008290(lt[A000005(n+1), 2*A008290(n)])`
-/

namespace A008291.P18159942895406819980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A008291.P18159942895406819980

namespace A008291

/-- `A008290(lt[A000005(n+1), 2*A008290(n)])` -/
def P18159942895406819980.Spec : Prop :=
  ∀ n, P18159942895406819980.a n = A008291 (n + 2)

end A008291

/-! ## A008291.P14433618398658487961

`A008290(lt[n, A008290(n)*A079947(n+1)])`
-/

namespace A008291.P14433618398658487961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n * A079947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008291.P14433618398658487961

namespace A008291

/-- `A008290(lt[n, A008290(n)*A079947(n+1)])` -/
def P14433618398658487961.Spec : Prop :=
  ∀ n, P14433618398658487961.a n = A008291 (n + 2)

end A008291

/-! ## A008291.P13000070273005153527

`A008290(lt[A008311(2*(n+2)), A008298(n+1)])`
-/

namespace A008291.P13000070273005153527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A008291.P13000070273005153527

namespace A008291

/-- `A008290(lt[A008311(2*(n+2)), A008298(n+1)])` -/
def P13000070273005153527.Spec : Prop :=
  ∀ n, P13000070273005153527.a n = A008291 (n + 2)

end A008291

/-! ## A008291.P17847853234586685924

`A008290(lt[n, 2*A008290(n)²])`
-/

namespace A008291.P17847853234586685924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008290 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008291.P17847853234586685924

namespace A008291

/-- `A008290(lt[n, 2*A008290(n)²])` -/
def P17847853234586685924.Spec : Prop :=
  ∀ n, P17847853234586685924.a n = A008291 (n + 2)

end A008291

/-! ## A008291.P9104903538790081921

`A008290(lt[1, A008290(n)*A008298(n+1)])`
-/

namespace A008291.P9104903538790081921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 n * A008298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008291.P9104903538790081921

namespace A008291

/-- `A008290(lt[1, A008290(n)*A008298(n+1)])` -/
def P9104903538790081921.Spec : Prop :=
  ∀ n, P9104903538790081921.a n = A008291 (n + 2)

end A008291

/-! ## A008291.P6260008617778349680

`A008290(lt[n, A008290(n)²²])`
-/

namespace A008291.P6260008617778349680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008290 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008291.P6260008617778349680

namespace A008291

/-- `A008290(lt[n, A008290(n)²²])` -/
def P6260008617778349680.Spec : Prop :=
  ∀ n, P6260008617778349680.a n = A008291 (n + 2)

end A008291

/-!
# A008292: Triangle of Eulerian numbers T(n,k) (n >= 1, 1 <= k <= n) read by rows.

The programs for A008292, the canonical program `A008292.P18172958035633294905` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008292 has offset 1).

The definition of A008292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008292.P18172958035633294905

`(col(n)+1)*T(n-1,k)+(row(n)+1-col(n))*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008292

/-- `(col(n)+1)*T(n-1,k)+(row(n)+1-col(n))*T(n-1,k-1)` -/
def P18172958035633294905.Spec : Prop :=
  ∀ n, P18172958035633294905.a n = A008292 (n + 1)

theorem P18172958035633294905.correct : P18172958035633294905.Spec := by
  intro n
  simp only [A008292, Nat.add_sub_cancel]

end A008292

/-! ## A008292.P4893455933568832346

`A123125(comp[∑[n]])`
-/

namespace A008292.P4893455933568832346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008292.P4893455933568832346

namespace A008292

/-- `A123125(comp[∑[n]])` -/
def P4893455933568832346.Spec : Prop :=
  ∀ n, P4893455933568832346.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P16634014443174817583

`A173018(comp[∑[n-1]])`
-/

namespace A008292.P16634014443174817583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A008292.P16634014443174817583

namespace A008292

/-- `A173018(comp[∑[n-1]])` -/
def P16634014443174817583.Spec : Prop :=
  ∀ n, P16634014443174817583.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P6899116846367901308

`A176487(n)-A014473(n)`
-/

namespace A008292.P6899116846367901308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176487 n - A014473 n

end

end A008292.P6899116846367901308

namespace A008292

/-- `A176487(n)-A014473(n)` -/
def P6899116846367901308.Spec : Prop :=
  ∀ n, P6899116846367901308.a n = A008292 (n + 1)

theorem P6899116846367901308.correct : P6899116846367901308.Spec := by
  intro n
  simp only [A008292, Nat.add_sub_cancel, A008292.P6899116846367901308.a, A008292.P18172958035633294905.a, A014473, A014473.P9301799580602651200.a, A176487, A176487.P5024915074260981774.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008292

/-! ## A008292.P11754600730609122770

`A290448(n)+A141689(n+1)`
-/

namespace A008292.P11754600730609122770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A141689 (n + 1)

end

end A008292.P11754600730609122770

namespace A008292

/-- `A290448(n)+A141689(n+1)` -/
def P11754600730609122770.Spec : Prop :=
  ∀ n, P11754600730609122770.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P11723307339427603342

`A128613(n+1)+A128612(n+1)`
-/

namespace A008292.P11723307339427603342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128613 (n + 1) + A128612 (n + 1)

end

end A008292.P11723307339427603342

namespace A008292

/-- `A128613(n+1)+A128612(n+1)` -/
def P11723307339427603342.Spec : Prop :=
  ∀ n, P11723307339427603342.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P3635445831649230415

`2*A141689(n+1)-A007318(n)`
-/

namespace A008292.P3635445831649230415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141689 (n + 1) - A007318 n

end

end A008292.P3635445831649230415

namespace A008292

/-- `2*A141689(n+1)-A007318(n)` -/
def P3635445831649230415.Spec : Prop :=
  ∀ n, P3635445831649230415.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P16239553992904630035

`2*A141689(n+1)-abs(A130595(n))`
-/

namespace A008292.P16239553992904630035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141689 (n + 1) - |A130595 n|

end

end A008292.P16239553992904630035

namespace A008292

/-- `2*A141689(n+1)-abs(A130595(n))` -/
def P16239553992904630035.Spec : Prop :=
  ∀ n, P16239553992904630035.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P11813893956063461220

`2*A141689(n+1)-sqrt(A008459(n))`
-/

namespace A008292.P11813893956063461220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A141689 (n + 1) : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A008292.P11813893956063461220

namespace A008292

/-- `2*A141689(n+1)-sqrt(A008459(n))` -/
def P11813893956063461220.Spec : Prop :=
  ∀ n, P11813893956063461220.a n = (A008292 (n + 1) : ℝ)

end A008292

/-! ## A008292.P14443006219381353693

`2*A141689(n+1)-Δ[A102363(n)]`
-/

namespace A008292.P14443006219381353693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141689 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008292.P14443006219381353693

namespace A008292

/-- `2*A141689(n+1)-Δ[A102363(n)]` -/
def P14443006219381353693.Spec : Prop :=
  ∀ n, P14443006219381353693.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P5253357169419623305

`A290448(n)+A290448(n)+A007318(n)`
-/

namespace A008292.P5253357169419623305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + (A290448 n + A007318 n)

end

end A008292.P5253357169419623305

namespace A008292

/-- `A290448(n)+A290448(n)+A007318(n)` -/
def P5253357169419623305.Spec : Prop :=
  ∀ n, P5253357169419623305.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P10037520006682439797

`ceil(A176200(n)/2)`
-/

namespace A008292.P10037520006682439797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2⌉

end

end A008292.P10037520006682439797

namespace A008292

/-- `ceil(A176200(n)/2)` -/
def P10037520006682439797.Spec : Prop :=
  ∀ n, P10037520006682439797.a n = A008292 (n + 1)

end A008292

/-! ## A008292.P2022093865883268321

`(A176204(n)+3)/4`
-/

namespace A008292.P2022093865883268321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176204 n + 3 : ℚ) / 4

end

end A008292.P2022093865883268321

namespace A008292

/-- `(A176204(n)+3)/4` -/
def P2022093865883268321.Spec : Prop :=
  ∀ n, P2022093865883268321.a n = (A008292 (n + 1) : ℚ)

theorem P2022093865883268321.correct : P2022093865883268321.Spec := by
  intro n
  simp only [A008292, Nat.add_sub_cancel, A008292.P2022093865883268321.a, A008292.P18172958035633294905.a, A176204, A176204.P5524176977963814572.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008292

/-! ## A008292.P326150648611974878

`(A141690(n)+A007318(n))/2`
-/

namespace A008292.P326150648611974878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141690 n + A007318 n : ℚ) / 2

end

end A008292.P326150648611974878

namespace A008292

/-- `(A141690(n)+A007318(n))/2` -/
def P326150648611974878.Spec : Prop :=
  ∀ n, P326150648611974878.a n = (A008292 (n + 1) : ℚ)

theorem P326150648611974878.correct : P326150648611974878.Spec := by
  intro n
  simp only [A008292, Nat.add_sub_cancel, A008292.P326150648611974878.a, A008292.P18172958035633294905.a, A007318, A007318.P11755526479805562006.a, A141690, A141690.P1589277232017455012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008292

/-! ## A008292.P3890223421581158264

`A065826(n+1)/A002260(n+1)`
-/

namespace A008292.P3890223421581158264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065826 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A008292.P3890223421581158264

namespace A008292

/-- `A065826(n+1)/A002260(n+1)` -/
def P3890223421581158264.Spec : Prop :=
  ∀ n, P3890223421581158264.a n = (A008292 (n + 1) : ℚ)

end A008292

/-! ## A008292.P5487481098057105307

`A174303(n)/A144464(n)`
-/

namespace A008292.P5487481098057105307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174303 n : ℚ) / (A144464 n : ℚ)

end

end A008292.P5487481098057105307

namespace A008292

/-- `A174303(n)/A144464(n)` -/
def P5487481098057105307.Spec : Prop :=
  ∀ n, P5487481098057105307.a n = (A008292 (n + 1) : ℚ)

end A008292

/-! ## A008292.P228596799778676494

`A142075(n+1)/A059268(n)`
-/

namespace A008292.P228596799778676494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142075 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A008292.P228596799778676494

namespace A008292

/-- `A142075(n+1)/A059268(n)` -/
def P228596799778676494.Spec : Prop :=
  ∀ n, P228596799778676494.a n = (A008292 (n + 1) : ℚ)

end A008292

/-! ## A008292.P14412590380267713874

`A154693(n)/A271709(n)`
-/

namespace A008292.P14412590380267713874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154693 n : ℚ) / (A271709 n : ℚ)

end

end A008292.P14412590380267713874

namespace A008292

/-- `A154693(n)/A271709(n)` -/
def P14412590380267713874.Spec : Prop :=
  ∀ n, P14412590380267713874.a n = (A008292 (n + 1) : ℚ)

end A008292

/-! ## A008292.P16852380638304497842

`A141686(n+1)/A007318(n)`
-/

namespace A008292.P16852380638304497842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141686 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A008292.P16852380638304497842

namespace A008292

/-- `A141686(n+1)/A007318(n)` -/
def P16852380638304497842.Spec : Prop :=
  ∀ n, P16852380638304497842.a n = (A008292 (n + 1) : ℚ)

end A008292

/-! ## A008292.P11300181409871451410

`A257609(n)/A137688(n)`
-/

namespace A008292.P11300181409871451410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257609 n : ℚ) / (A137688 n : ℚ)

end

end A008292.P11300181409871451410

namespace A008292

/-- `A257609(n)/A137688(n)` -/
def P11300181409871451410.Spec : Prop :=
  ∀ n, P11300181409871451410.a n = (A008292 (n + 1) : ℚ)

end A008292

/-!
# A008293: Triangle of coefficients in expansion of D^n (tan x) in powers of tan x.

The programs for A008293, there is no canonical definition to state claims against.
-/

/-! ## A008293.P11174086634620593408

`A155100(record[A002262(n)+2+n])`
-/

namespace A008293.P11174086634620593408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008293.P11174086634620593408

/-! ## A008293.P14096701176380866332

`A155100(record[A002260(n+1)+n+1])`
-/

namespace A008293.P14096701176380866332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008293.P14096701176380866332

/-! ## A008293.P16055896744679207765

`A155100(eq[A057427(n), A128174(n+1)])`
-/

namespace A008293.P16055896744679207765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A008293.P16055896744679207765

/-! ## A008293.P14014219582993859394

`A155100(record[A014132(n+1)-A025581(n)])`
-/

namespace A008293.P14014219582993859394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008293.P14014219582993859394

/-! ## A008293.P4296455118924224589

`A155100(A005843(n+1)-A259361(n+1))`
-/

namespace A008293.P4296455118924224589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (A005843 (n + 1) - A259361 (n + 1)).toNat

end

end A008293.P4296455118924224589

/-!
# A008294: Triangle of coefficients in expansion of D^n (sec x) / sec x in powers of tan x.

The programs for A008294, the canonical program `A008294.P14103820136134446240` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008294 has offset 0).

The definition of A008294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008294.P6860642148655676809

`A350970(eq[0, A155100(n)])`
-/

namespace A008294.P6860642148655676809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008294.P6860642148655676809

namespace A008294

/-- `A350970(eq[0, A155100(n)])` -/
def P6860642148655676809.Spec : Prop :=
  ∀ n, P6860642148655676809.a n = A008294 n

end A008294

/-! ## A008294.P14103820136134446240

`A104035(lt[0, A104035(n)])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008294

/-- `A104035(lt[0, A104035(n)])` -/
def P14103820136134446240.Spec : Prop :=
  ∀ n, P14103820136134446240.a n = A008294 n

theorem P14103820136134446240.correct : P14103820136134446240.Spec := by
  intro n
  simp only [A008294]

end A008294

/-! ## A008294.P16693106899096537452

`A104035(record[n-A025581(n)])`
-/

namespace A008294.P16693106899096537452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008294.P16693106899096537452

namespace A008294

/-- `A104035(record[n-A025581(n)])` -/
def P16693106899096537452.Spec : Prop :=
  ∀ n, P16693106899096537452.a n = A008294 n

end A008294

/-! ## A008294.P7869217057384279037

`A104035(eq[1, A128174(n+1)])`
-/

namespace A008294.P7869217057384279037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008294.P7869217057384279037

namespace A008294

/-- `A104035(eq[1, A128174(n+1)])` -/
def P7869217057384279037.Spec : Prop :=
  ∀ n, P7869217057384279037.a n = A008294 n

end A008294

/-! ## A008294.P8711971253097272807

`A104035(2*n-A259361(n))`
-/

namespace A008294.P8711971253097272807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 ((2 * n : ℤ) - A259361 n).toNat

end

end A008294.P8711971253097272807

namespace A008294

/-- `A104035(2*n-A259361(n))` -/
def P8711971253097272807.Spec : Prop :=
  ∀ n, P8711971253097272807.a n = A008294 n

end A008294

/-! ## A008294.P12970621237790163260

`A104035(n-A259361(n)+n)`
-/

namespace A008294.P12970621237790163260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 ((n : ℤ) - A259361 n + (n : ℤ)).toNat

end

end A008294.P12970621237790163260

namespace A008294

/-- `A104035(n-A259361(n)+n)` -/
def P12970621237790163260.Spec : Prop :=
  ∀ n, P12970621237790163260.a n = A008294 n

end A008294

/-! ## A008294.P1028435064394462358

`A104035(n-(A259361(n)-n))`
-/

namespace A008294.P1028435064394462358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 ((n : ℤ) - (A259361 n - (n : ℤ))).toNat

end

end A008294.P1028435064394462358

namespace A008294

/-- `A104035(n-(A259361(n)-n))` -/
def P1028435064394462358.Spec : Prop :=
  ∀ n, P1028435064394462358.a n = A008294 n

end A008294

/-! ## A008294.P13082886582321005492

`A104035(record[n*A128174(n+1)])`
-/

namespace A008294.P13082886582321005492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008294.P13082886582321005492

namespace A008294

/-- `A104035(record[n*A128174(n+1)])` -/
def P13082886582321005492.Spec : Prop :=
  ∀ n, P13082886582321005492.a n = A008294 n

end A008294

/-!
# A008296: Triangle of Lehmer-Comtet numbers of the first kind.

The programs for A008296, there is no canonical definition to state claims against.
-/

/-! ## A008296.P15824294165104366250

`A097807(n)*A354795(A014132(n+1))`
-/

namespace A008296.P15824294165104366250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A354795 (A014132 (n + 1)).toNat

end

end A008296.P15824294165104366250

/-!
# A008297: Triangle of Lah numbers.

The programs for A008297, the canonical program `A008297.P13818260657396490862` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008297 has offset 1).

The definition of A008297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008297.P13818260657396490862

`(-1)^(row(n)+1)*(row(n)+1)!*C(row(n), col(n))/(col(n)+1)!`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008297

/-- `(-1)^(row(n)+1)*(row(n)+1)!*C(row(n), col(n))/(col(n)+1)!` -/
def P13818260657396490862.Spec : Prop :=
  ∀ n, P13818260657396490862.a n = (A008297 (n + 1) : ℚ)

end A008297

/-! ## A008297.P1521962998629618803

`-(A066667(n)*A097807(n))`
-/

namespace A008297.P1521962998629618803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A066667 n * A097807 n)

end

end A008297.P1521962998629618803

namespace A008297

/-- `-(A066667(n)*A097807(n))` -/
def P1521962998629618803.Spec : Prop :=
  ∀ n, P1521962998629618803.a n = A008297 (n + 1)

end A008297

/-! ## A008297.P12763250922537137582

`A087960(A131507(n))*A105278(n+1)`
-/

namespace A008297.P12763250922537137582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A131507 n).toNat * A105278 (n + 1)

end

end A008297.P12763250922537137582

namespace A008297

/-- `A087960(A131507(n))*A105278(n+1)` -/
def P12763250922537137582.Spec : Prop :=
  ∀ n, P12763250922537137582.a n = A008297 (n + 1)

end A008297

/-! ## A008297.P1287422931421356037

`A033999(A002024(n+1))*A105278(n+1)`
-/

namespace A008297.P1287422931421356037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002024 (n + 1)).toNat * A105278 (n + 1)

end

end A008297.P1287422931421356037

namespace A008297

/-- `A033999(A002024(n+1))*A105278(n+1)` -/
def P1287422931421356037.Spec : Prop :=
  ∀ n, P1287422931421356037.a n = A008297 (n + 1)

end A008297

/-! ## A008297.P15267826978494687837

`A176013(n+1)/A001263(n+1)*A007318(n)`
-/

namespace A008297.P15267826978494687837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176013 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A008297.P15267826978494687837

namespace A008297

/-- `A176013(n+1)/A001263(n+1)*A007318(n)` -/
def P15267826978494687837.Spec : Prop :=
  ∀ n, P15267826978494687837.a n = (A008297 (n + 1) : ℚ)

end A008297

/-! ## A008297.P6976149538163999267

`A169656(n+1)/A173333(n+1)`
-/

namespace A008297.P6976149538163999267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169656 (n + 1) : ℚ) / (A173333 (n + 1) : ℚ)

end

end A008297.P6976149538163999267

namespace A008297

/-- `A169656(n+1)/A173333(n+1)` -/
def P6976149538163999267.Spec : Prop :=
  ∀ n, P6976149538163999267.a n = (A008297 (n + 1) : ℚ)

end A008297

/-! ## A008297.P13874319333610020871

`A169656(n+1)/A105278(n+1)*A007318(n)`
-/

namespace A008297.P13874319333610020871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169656 (n + 1) : ℚ) / (A105278 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A008297.P13874319333610020871

namespace A008297

/-- `A169656(n+1)/A105278(n+1)*A007318(n)` -/
def P13874319333610020871.Spec : Prop :=
  ∀ n, P13874319333610020871.a n = (A008297 (n + 1) : ℚ)

end A008297

/-!
# A008298: Triangle of D'Arcais numbers.

The programs for A008298, there is no canonical definition to state claims against.
-/

/-! ## A008298.P15748371180387168477

`abs(A078521(comp[∑[n-1]]+2))`
-/

namespace A008298.P15748371180387168477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078521 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)|

end

end A008298.P15748371180387168477

/-! ## A008298.P18217426004645240254

`gcd(A000038(n), A078521(A080036(n+1)))`
-/

namespace A008298.P18217426004645240254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A078521 (A080036 (n + 1)).toNat)

end

end A008298.P18217426004645240254

/-! ## A008298.P419711647940476861

`lcm(A033999(n), A078521(A080036(n+1)))`
-/

namespace A008298.P419711647940476861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A078521 (A080036 (n + 1)).toNat)

end

end A008298.P419711647940476861

/-! ## A008298.P12929541204699897561

`lcm(A078521(A133196(n+1)+n), A097807(n))`
-/

namespace A008298.P12929541204699897561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078521 (A133196 (n + 1) + (n : ℤ)).toNat) (A097807 n)

end

end A008298.P12929541204699897561

/-!
# A008299: Triangle T(n,k) of associated Stirling numbers of second kind, n >= 2, 1 <= k <= floor(n/2).

The programs for A008299, the canonical program `A008299.P1528602672575865424` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008299 has offset 2).

The definition of A008299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008299.P1528602672575865424

`A134991(A056536(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008299

/-- `A134991(A056536(n+1))` -/
def P1528602672575865424.Spec : Prop :=
  ∀ n, P1528602672575865424.a n = A008299 (n + 2)

theorem P1528602672575865424.correct : P1528602672575865424.Spec := by
  intro n
  simp only [A008299, Nat.add_sub_cancel]

end A008299

/-! ## A008299.P9810895527413999657

`A134991(A091018(n)+1)`
-/

namespace A008299.P9810895527413999657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (A091018 n + 1).toNat

end

end A008299.P9810895527413999657

namespace A008299

/-- `A134991(A091018(n)+1)` -/
def P9810895527413999657.Spec : Prop :=
  ∀ n, P9810895527413999657.a n = A008299 (n + 2)

theorem P9810895527413999657.correct : P9810895527413999657.Spec := by
  intro n
  simp only [A008299, Nat.add_sub_cancel, A008299.P9810895527413999657.a, A008299.P1528602672575865424.a, A056536, A056536.P15475188742304027796.a, A091018, A091018.P2259398009619809425.a, A134991, A134991.P7443049954840786175.a, A056537, A056537.P3331014331152516535.a, A091995, A091995.P16558306300262697301.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008299

/-! ## A008299.P7173538286636390425

`A200091(n+2)/A122197(n+1)!`
-/

namespace A008299.P7173538286636390425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200091 (n + 2) : ℚ) / (Nat.factorial (A122197 (n + 1)).toNat : ℚ)

end

end A008299.P7173538286636390425

namespace A008299

/-- `A200091(n+2)/A122197(n+1)!` -/
def P7173538286636390425.Spec : Prop :=
  ∀ n, P7173538286636390425.a n = (A008299 (n + 2) : ℚ)

end A008299

/-! ## A008299.P17695397242085947666

`A200091(n+2)/A166350(A056536(n+1))`
-/

namespace A008299.P17695397242085947666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200091 (n + 2) : ℚ) / (A166350 (A056536 (n + 1)).toNat : ℚ)

end

end A008299.P17695397242085947666

namespace A008299

/-- `A200091(n+2)/A166350(A056536(n+1))` -/
def P17695397242085947666.Spec : Prop :=
  ∀ n, P17695397242085947666.a n = (A008299 (n + 2) : ℚ)

end A008299

/-! ## A008299.P6516325317809983165

`abs(A137375(comp[A257022(n)]))`
-/

namespace A008299.P6516325317809983165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137375 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A008299.P6516325317809983165

namespace A008299

/-- `abs(A137375(comp[A257022(n)]))` -/
def P6516325317809983165.Spec : Prop :=
  ∀ n, P6516325317809983165.a n = A008299 (n + 2)

end A008299

