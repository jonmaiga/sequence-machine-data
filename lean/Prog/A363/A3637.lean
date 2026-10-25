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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A363700: a(n) = phi(2*prime(n)+1).

The programs for A363700, the canonical program `A363700.P13614704223880734762` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363700 has offset 1).

The definition of A363700 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037225, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363700.P812115375813039265

`A000010(A072055(n+1))`
-/

namespace A363700.P812115375813039265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072055 (n + 1)).toNat

end

end A363700.P812115375813039265

namespace A363700

/-- `A000010(A072055(n+1))` -/
def P812115375813039265.Spec : Prop :=
  ∀ n, P812115375813039265.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P13614704223880734762

`A037225(A000040(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A363700

/-- `A037225(A000040(n+1))` -/
def P13614704223880734762.Spec : Prop :=
  ∀ n, P13614704223880734762.a n = A363700 (n + 1)

theorem P13614704223880734762.correct : P13614704223880734762.Spec := by
  intro n
  simp only [A363700, Nat.add_sub_cancel]

end A363700

/-! ## A363700.P6906213519068593652

`A000010(A100484(n+1)+1)`
-/

namespace A363700.P6906213519068593652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100484 (n + 1) + 1).toNat

end

end A363700.P6906213519068593652

namespace A363700

/-- `A000010(A100484(n+1)+1)` -/
def P6906213519068593652.Spec : Prop :=
  ∀ n, P6906213519068593652.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P2417799321399402933

`A000010(A001747(n+2)+1)`
-/

namespace A363700.P2417799321399402933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001747 (n + 2) + 1).toNat

end

end A363700.P2417799321399402933

namespace A363700

/-- `A000010(A001747(n+2)+1)` -/
def P2417799321399402933.Spec : Prop :=
  ∀ n, P2417799321399402933.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P18209360030801997863

`A000010(A089241(n+1)-1)`
-/

namespace A363700.P18209360030801997863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A089241 (n + 1) - 1).toNat

end

end A363700.P18209360030801997863

namespace A363700

/-- `A000010(A089241(n+1)-1)` -/
def P18209360030801997863.Spec : Prop :=
  ∀ n, P18209360030801997863.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P16001660412763517349

`A000010(A076274(n+2)+2)`
-/

namespace A363700.P16001660412763517349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A076274 (n + 2) + 2).toNat

end

end A363700.P16001660412763517349

namespace A363700

/-- `A000010(A076274(n+2)+2)` -/
def P16001660412763517349.Spec : Prop :=
  ∀ n, P16001660412763517349.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P10212223854985654468

`A000010(A008864(n+1)+A000040(n+1))`
-/

namespace A363700.P10212223854985654468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008864 (n + 1) + A000040 (n + 1)).toNat

end

end A363700.P10212223854985654468

namespace A363700

/-- `A000010(A008864(n+1)+A000040(n+1))` -/
def P10212223854985654468.Spec : Prop :=
  ∀ n, P10212223854985654468.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P5252449910446518549

`A000010(A144043(2*n+1)+1)`
-/

namespace A363700.P5252449910446518549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A144043 (2 * n + 1) + 1).toNat

end

end A363700.P5252449910446518549

namespace A363700

/-- `A000010(A144043(2*n+1)+1)` -/
def P5252449910446518549.Spec : Prop :=
  ∀ n, P5252449910446518549.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P2835561222855352462

`A062570(A166496(n+1))`
-/

namespace A363700.P2835561222855352462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A166496 (n + 1)).toNat

end

end A363700.P2835561222855352462

namespace A363700

/-- `A062570(A166496(n+1))` -/
def P2835561222855352462.Spec : Prop :=
  ∀ n, P2835561222855352462.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P8443384488978801086

`A062570(A100484(n+1)+1)`
-/

namespace A363700.P8443384488978801086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A100484 (n + 1) + 1).toNat

end

end A363700.P8443384488978801086

namespace A363700

/-- `A062570(A100484(n+1)+1)` -/
def P8443384488978801086.Spec : Prop :=
  ∀ n, P8443384488978801086.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P6934691014010852066

`A000010(A001749(n+1)+2)`
-/

namespace A363700.P6934691014010852066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001749 (n + 1) + 2).toNat

end

end A363700.P6934691014010852066

namespace A363700

/-- `A000010(A001749(n+1)+2)` -/
def P6934691014010852066.Spec : Prop :=
  ∀ n, P6934691014010852066.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P2257283150234528351

`A037225(Δ[A007504(n)])`
-/

namespace A363700.P2257283150234528351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (f1 (n + 1) - f1 n).toNat

end

end A363700.P2257283150234528351

namespace A363700

/-- `A037225(Δ[A007504(n)])` -/
def P2257283150234528351.Spec : Prop :=
  ∀ n, P2257283150234528351.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P6406299325412240712

`A037225(record[A051698(n)])`
-/

namespace A363700.P6406299325412240712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363700.P6406299325412240712

namespace A363700

/-- `A037225(record[A051698(n)])` -/
def P6406299325412240712.Spec : Prop :=
  ∀ n, P6406299325412240712.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P14431444374657650575

`A037225(A008578(n+2))`
-/

namespace A363700.P14431444374657650575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A008578 (n + 2)).toNat

end

end A363700.P14431444374657650575

namespace A363700

/-- `A037225(A008578(n+2))` -/
def P14431444374657650575.Spec : Prop :=
  ∀ n, P14431444374657650575.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P5582046156045370918

`A037225(A182986(n+2))`
-/

namespace A363700.P5582046156045370918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A182986 (n + 2)).toNat

end

end A363700.P5582046156045370918

namespace A363700

/-- `A037225(A182986(n+2))` -/
def P5582046156045370918.Spec : Prop :=
  ∀ n, P5582046156045370918.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P16635035479376810007

`A037225(record[A037225(n)+1])`
-/

namespace A363700.P16635035479376810007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363700.P16635035479376810007

namespace A363700

/-- `A037225(record[A037225(n)+1])` -/
def P16635035479376810007.Spec : Prop :=
  ∀ n, P16635035479376810007.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P12331245656067186892

`A037225(A008864(n+1)-1)`
-/

namespace A363700.P12331245656067186892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A008864 (n + 1) - 1).toNat

end

end A363700.P12331245656067186892

namespace A363700

/-- `A037225(A008864(n+1)-1)` -/
def P12331245656067186892.Spec : Prop :=
  ∀ n, P12331245656067186892.a n = A363700 (n + 1)

theorem P12331245656067186892.correct : P12331245656067186892.Spec := by
  intro n
  simp only [A363700, Nat.add_sub_cancel, A363700.P12331245656067186892.a, A363700.P13614704223880734762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A037225, A037225.P8815265586600777617.a, A099958, A099958.P10152713407958475996.a, A190815, A190815.P914547741741299528.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A049690, A049690.P5802976432463203985.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363700

/-! ## A363700.P15919323342475117686

`A062771(A100484(n+1)+1)`
-/

namespace A363700.P15919323342475117686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062771 (A100484 (n + 1) + 1).toNat

end

end A363700.P15919323342475117686

namespace A363700

/-- `A062771(A100484(n+1)+1)` -/
def P15919323342475117686.Spec : Prop :=
  ∀ n, P15919323342475117686.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P5708077786933728061

`A000010(A280450(A039649(A140141(n+1))))`
-/

namespace A363700.P5708077786933728061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A280450 (A039649 (A140141 (n + 1)).toNat).toNat).toNat

end

end A363700.P5708077786933728061

namespace A363700

/-- `A000010(A280450(A039649(A140141(n+1))))` -/
def P5708077786933728061.Spec : Prop :=
  ∀ n, P5708077786933728061.a n = A363700 (n + 1)

end A363700

/-! ## A363700.P5656271238859534702

`A216475(A001749(n+1))`
-/

namespace A363700.P5656271238859534702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216475 (A001749 (n + 1)).toNat

end

end A363700.P5656271238859534702

namespace A363700

/-- `A216475(A001749(n+1))` -/
def P5656271238859534702.Spec : Prop :=
  ∀ n, P5656271238859534702.a n = A363700 (n + 1)

end A363700

/-!
# A363705: The minimum irregularity of all maximal 2-degenerate graphs with n vertices.

The programs for A363705, the canonical program `A363705.P2080429883833388353` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363705 has offset 3).

The definition of A363705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363705.P2080429883833388353

`a(n-1)` with `a(0)=0, a(1)=4, a(2)=2, a(3)=6, a(4)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363705

/-- `a(n-1)` -/
def P2080429883833388353.Spec : Prop :=
  ∀ n, (P2080429883833388353.a n : ℤ) = A363705 (n + 3)

theorem P2080429883833388353.correct : P2080429883833388353.Spec := by
  intro n
  simp only [A363705, Nat.add_sub_cancel]

end A363705

/-!
# A363706: a(n) is the sigma irregularity of the n-th power of a path graph of length at least 3*n.

The programs for A363706, the canonical program `A363706.P5852232163170739640` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363706 has offset 1).

The definition of A363706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363706.P9905296531450310694

`((n+1)^4+2*(n+1)^3+2*(n+1)²+n+1)/3`
-/

namespace A363706.P9905296531450310694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 + 2 * (n + 1) ^ 3 + 2 * (n + 1) ^ 2 + (n + 1) : ℚ) / 3

end

end A363706.P9905296531450310694

namespace A363706

/-- `((n+1)^4+2*(n+1)^3+2*(n+1)²+n+1)/3` -/
def P9905296531450310694.Spec : Prop :=
  ∀ n, P9905296531450310694.a n = (A363706 (n + 1) : ℚ)

end A363706

/-! ## A363706.P5852232163170739640

`2*A006325(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363706

/-- `2*A006325(n+2)` -/
def P5852232163170739640.Spec : Prop :=
  ∀ n, P5852232163170739640.a n = A363706 (n + 1)

theorem P5852232163170739640.correct : P5852232163170739640.Spec := by
  intro n
  simp only [A363706, Nat.add_sub_cancel]

end A363706

/-! ## A363706.P1961549940723180354

`floor(∑[∑[∑[a(n-1)+8]]])` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A363706.P1961549940723180354
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P1961549940723180354

namespace A363706

/-- `floor(∑[∑[∑[a(n-1)+8]]])` -/
def P1961549940723180354.Spec : Prop :=
  ∀ n, (P1961549940723180354.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P3819095409524993964

`∑[(2*n+1)²+1]+a(n-1)` with `a(0)=2`
-/

namespace A363706.P3819095409524993964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A363706.P3819095409524993964

namespace A363706

/-- `∑[(2*n+1)²+1]+a(n-1)` -/
def P3819095409524993964.Spec : Prop :=
  ∀ n, (P3819095409524993964.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P14826644433968230266

`floor(((n+1)^4/3)²/a(n-1))` with `a(0)=2`
-/

namespace A363706.P14826644433968230266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(((n + 1) ^ 4 : ℚ) / 3) ^ 2 / (a (n - 1) : ℚ)⌋

end

end A363706.P14826644433968230266

namespace A363706

/-- `floor(((n+1)^4/3)²/a(n-1))` -/
def P14826644433968230266.Spec : Prop :=
  ∀ n, P14826644433968230266.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P16376243062339925214

`2*∑[∑[C(2*n+1, 2)+n+1]]`
-/

namespace A363706.P16376243062339925214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2 + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363706.P16376243062339925214

namespace A363706

/-- `2*∑[∑[C(2*n+1, 2)+n+1]]` -/
def P16376243062339925214.Spec : Prop :=
  ∀ n, (P16376243062339925214.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P4759588090646121217

`2*∑[∑[lcm(n, 2*n+1)+n+1]]`
-/

namespace A363706.P4759588090646121217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363706.P4759588090646121217

namespace A363706

/-- `2*∑[∑[lcm(n, 2*n+1)+n+1]]` -/
def P4759588090646121217.Spec : Prop :=
  ∀ n, (P4759588090646121217.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P1853012308810876673

`2*n*C(n+3, 3)+(n+1)*(n+2)`
-/

namespace A363706.P1853012308810876673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (n + 3) 3 + (n + 1) * (n + 2)

end

end A363706.P1853012308810876673

namespace A363706

/-- `2*n*C(n+3, 3)+(n+1)*(n+2)` -/
def P1853012308810876673.Spec : Prop :=
  ∀ n, (P1853012308810876673.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P3622637328361071782

`(n+3)*∑[a(n-1)+2*n]-(n+1)` with `a(0)=1`
-/

namespace A363706.P3622637328361071782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A363706.P3622637328361071782

namespace A363706

/-- `(n+3)*∑[a(n-1)+2*n]-(n+1)` -/
def P3622637328361071782.Spec : Prop :=
  ∀ n, P3622637328361071782.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P641235798881266468

`∑[∑[A069894(n)]]`
-/

namespace A363706.P641235798881266468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P641235798881266468

namespace A363706

/-- `∑[∑[A069894(n)]]` -/
def P641235798881266468.Spec : Prop :=
  ∀ n, P641235798881266468.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P12744263624275247691

`∑[A035597(n+1)]`
-/

namespace A363706.P12744263624275247691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P12744263624275247691

namespace A363706

/-- `∑[A035597(n+1)]` -/
def P12744263624275247691.Spec : Prop :=
  ∀ n, P12744263624275247691.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P12894714652438945893

`∑[A166911(n)-1]`
-/

namespace A363706.P12894714652438945893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P12894714652438945893

namespace A363706

/-- `∑[A166911(n)-1]` -/
def P12894714652438945893.Spec : Prop :=
  ∀ n, P12894714652438945893.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P4699820736836963105

`A102296(n)+A071238(n)`
-/

namespace A363706.P4699820736836963105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102296 n + A071238 n

end

end A363706.P4699820736836963105

namespace A363706

/-- `A102296(n)+A071238(n)` -/
def P4699820736836963105.Spec : Prop :=
  ∀ n, P4699820736836963105.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P9650541107932832298

`A108678(n)+A000292(n+1)`
-/

namespace A363706.P9650541107932832298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n + A000292 (n + 1)

end

end A363706.P9650541107932832298

namespace A363706

/-- `A108678(n)+A000292(n+1)` -/
def P9650541107932832298.Spec : Prop :=
  ∀ n, P9650541107932832298.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P10124972714511208527

`A254749(n+1)+A051797(n)`
-/

namespace A363706.P10124972714511208527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 1) + A051797 n

end

end A363706.P10124972714511208527

namespace A363706

/-- `A254749(n+1)+A051797(n)` -/
def P10124972714511208527.Spec : Prop :=
  ∀ n, P10124972714511208527.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P8923644743320833235

`A289643(n)+A033994(n+1)`
-/

namespace A363706.P8923644743320833235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A033994 (n + 1)

end

end A363706.P8923644743320833235

namespace A363706

/-- `A289643(n)+A033994(n+1)` -/
def P8923644743320833235.Spec : Prop :=
  ∀ n, P8923644743320833235.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P9882626797670762245

`A178073(n+1)+A167875(n)`
-/

namespace A363706.P9882626797670762245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178073 (n + 1) + A167875 n

end

end A363706.P9882626797670762245

namespace A363706

/-- `A178073(n+1)+A167875(n)` -/
def P9882626797670762245.Spec : Prop :=
  ∀ n, P9882626797670762245.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P1717005109757769658

`A165394(n+2)+A005894(n)`
-/

namespace A363706.P1717005109757769658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165394 (n + 2) + A005894 n

end

end A363706.P1717005109757769658

namespace A363706

/-- `A165394(n+2)+A005894(n)` -/
def P1717005109757769658.Spec : Prop :=
  ∀ n, P1717005109757769658.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P14140023057947927987

`A006324(n+1)+A000217(n+1)`
-/

namespace A363706.P14140023057947927987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) + A000217 (n + 1)

end

end A363706.P14140023057947927987

namespace A363706

/-- `A006324(n+1)+A000217(n+1)` -/
def P14140023057947927987.Spec : Prop :=
  ∀ n, P14140023057947927987.a n = A363706 (n + 1)

end A363706

/-! ## A363706.P12514990031293398007

`A006322(n+1)+A002817(n+1)`
-/

namespace A363706.P12514990031293398007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) + A002817 (n + 1)

end

end A363706.P12514990031293398007

namespace A363706

/-- `A006322(n+1)+A002817(n+1)` -/
def P12514990031293398007.Spec : Prop :=
  ∀ n, P12514990031293398007.a n = A363706 (n + 1)

end A363706

/-!
# A363707: For n >= 2, a(n) = a(n-1) + a(n-2) + A051697(n), a(0)=0, a(1)=1.

The programs for A363707, the canonical program `A363707.P5002782806402989866` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363707 has offset 0).

The definition of A363707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363707.P5002782806402989866

`a(n-1)+a(n-2)+A051697(n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A363707

/-- `a(n-1)+a(n-2)+A051697(n)` -/
def P5002782806402989866.Spec : Prop :=
  ∀ n, P5002782806402989866.a n = A363707 n

theorem P5002782806402989866.correct : P5002782806402989866.Spec := by
  intro n
  simp only [A363707]

end A363707

/-! ## A363707.P5619935977084901717

`A298352(n+2)-A286324(A007097(n))`
-/

namespace A363707.P5619935977084901717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298352 (n + 2) - A286324 (A007097 n).toNat

end

end A363707.P5619935977084901717

namespace A363707

/-- `A298352(n+2)-A286324(A007097(n))` -/
def P5619935977084901717.Spec : Prop :=
  ∀ n, P5619935977084901717.a n = A363707 n

end A363707

/-! ## A363707.P7358913205817642423

`A298352(n+2)-A007947(A000079(n)²)`
-/

namespace A363707.P7358913205817642423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298352 (n + 2) - A007947 (A000079 n ^ 2).toNat

end

end A363707.P7358913205817642423

namespace A363707

/-- `A298352(n+2)-A007947(A000079(n)²)` -/
def P7358913205817642423.Spec : Prop :=
  ∀ n, P7358913205817642423.a n = A363707 n

end A363707

/-! ## A363707.P1173768057880867319

`A340692(2*n)-A228488(A048161(n+1))`
-/

namespace A363707.P1173768057880867319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340692 (2 * n) - A228488 (A048161 (n + 1)).toNat

end

end A363707.P1173768057880867319

namespace A363707

/-- `A340692(2*n)-A228488(A048161(n+1))` -/
def P1173768057880867319.Spec : Prop :=
  ∀ n, P1173768057880867319.a n = A363707 n

end A363707

/-! ## A363707.P14726685966264992137

`A298352(n+2)-A007947(A000079(2*n))`
-/

namespace A363707.P14726685966264992137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298352 (n + 2) - A007947 (A000079 (2 * n)).toNat

end

end A363707.P14726685966264992137

namespace A363707

/-- `A298352(n+2)-A007947(A000079(2*n))` -/
def P14726685966264992137.Spec : Prop :=
  ∀ n, P14726685966264992137.a n = A363707 n

end A363707

/-!
# A363709: For n >= 0, a(n) is the least integer i >= 0 such that n + (n + 1) + ... + (n + i) is a prime number or a(n) = -1 if no such i exists.

The programs for A363709, there is no canonical definition to state claims against.
-/

/-! ## A363709.P3342241202466541475

`A053797(A344198(n+1))-A276088(n)`
-/

namespace A363709.P3342241202466541475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A344198 (n + 1)).toNat - A276088 n

end

end A363709.P3342241202466541475

/-! ## A363709.P12551440951456710069

`A091337(n+1)+A002654(A228165(2*n+3))`
-/

namespace A363709.P12551440951456710069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) + A002654 (A228165 (2 * n + 3)).toNat

end

end A363709.P12551440951456710069

/-!
# A363710: a(n) is the number of pairs of nonnegative integers (x, y) such that x + y = n and A003188(x) AND A003188(y) = 0 (where AND denotes the bitwise AND operator).

The programs for A363710, there is no canonical definition to state claims against.
-/

/-! ## A363710.P16106723304668401904

`Δ[eq[0, A363930(n)]]`
-/

namespace A363710.P16106723304668401904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363930 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A363710.P16106723304668401904

/-! ## A363710.P3323681481211115668

`A000005(xor(A000957(n), A070911(n+3)))`
-/

namespace A363710.P3323681481211115668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor (A000957 n) (A070911 (n + 3))).toNat

end

end A363710.P3323681481211115668

/-!
# A363711: Number of ways to write n as sum of a positive square and a positive fourth power.

The programs for A363711, there is no canonical definition to state claims against.
-/

/-! ## A363711.P4426758048868590899

`A216279(n+5)*A328578(A006094(n+1))`
-/

namespace A363711.P4426758048868590899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 5) * A328578 (A006094 (n + 1)).toNat

end

end A363711.P4426758048868590899

/-! ## A363711.P14720734313173979532

`A216279(n+5)*A328578(A325088(n+1))`
-/

namespace A363711.P14720734313173979532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 5) * A328578 (A325088 (n + 1)).toNat

end

end A363711.P14720734313173979532

/-! ## A363711.P2067655394159626965

`A216279(n+5)+A014374(A304464(2*(n+2)))`
-/

namespace A363711.P2067655394159626965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 5) + A014374 (A304464 (2 * (n + 2))).toNat

end

end A363711.P2067655394159626965

/-! ## A363711.P8751267477056483389

`A216279(n+5)*A328578(A325087(n+1))`
-/

namespace A363711.P8751267477056483389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 5) * A328578 (A325087 (n + 1)).toNat

end

end A363711.P8751267477056483389

/-! ## A363711.P5581402661163050364

`C(A204057(A194436(3*n+1)), A266152(n))`
-/

namespace A363711.P5581402661163050364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204057 (A194436 (3 * n + 1)).toNat).toNat (A266152 n).toNat

end

end A363711.P5581402661163050364

/-!
# A363712: Number of ways to write n as sum of a positive cube and a positive fourth power.

The programs for A363712, there is no canonical definition to state claims against.
-/

/-! ## A363712.P10562758499117921899

`floor(1/A266363(n))`
-/

namespace A363712.P10562758499117921899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A266363 n : ℚ)⌋

end

end A363712.P10562758499117921899

/-! ## A363712.P6175335058993304699

`char[A100291(n+1)-1]`
-/

namespace A363712.P6175335058993304699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A363712.P6175335058993304699

/-! ## A363712.P214873671881727694

`A019590(A266363(n)+1)`
-/

namespace A363712.P214873671881727694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A266363 n + 1).toNat

end

end A363712.P214873671881727694

/-! ## A363712.P5647726482681148685

`A185012(A266363(n)+1)`
-/

namespace A363712.P5647726482681148685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A266363 n + 1).toNat

end

end A363712.P5647726482681148685

/-! ## A363712.P6118203633479379478

`A000007(A266363(n)-1)`
-/

namespace A363712.P6118203633479379478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A266363 n - 1).toNat

end

end A363712.P6118203633479379478

/-! ## A363712.P13416167987944195168

`A019590(2*A266363(n))`
-/

namespace A363712.P13416167987944195168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (2 * A266363 n).toNat

end

end A363712.P13416167987944195168

/-! ## A363712.P1028684301858867952

`A055672(2*A266363(n))`
-/

namespace A363712.P1028684301858867952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * A266363 n).toNat

end

end A363712.P1028684301858867952

/-!
# A363713: Number of ways to write n as sum of a positive square and a positive fifth power.

The programs for A363713, there is no canonical definition to state claims against.
-/

/-! ## A363713.P10864946349685273982

`C(A124010(A266948(n+3)), A266985(n))`
-/

namespace A363713.P10864946349685273982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124010 (A266948 (n + 3)).toNat).toNat (A266985 n).toNat

end

end A363713.P10864946349685273982

/-! ## A363713.P15014420383784942710

`and(A093709(n), A271646(n+1))`
-/

namespace A363713.P15014420383784942710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093709 n) (A271646 (n + 1))

end

end A363713.P15014420383784942710

/-! ## A363713.P11007925485641264179

`and(A112595(n+1), A374036(n))`
-/

namespace A363713.P11007925485641264179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112595 (n + 1)) (A374036 n)

end

end A363713.P11007925485641264179

/-! ## A363713.P11135841329946183799

`A010052(n)-A010815(A070760(n+1))`
-/

namespace A363713.P11135841329946183799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n - A010815 (A070760 (n + 1)).toNat

end

end A363713.P11135841329946183799

/-! ## A363713.P9130878333876952887

`A323519(A070080(n+3)*A072972(3*n+4))`
-/

namespace A363713.P9130878333876952887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323519 (A070080 (n + 3) * A072972 (3 * n + 4)).toNat

end

end A363713.P9130878333876952887

/-!
# A363714: Numbers that are the sum of a positive square and a positive fourth power in more than one way.

The programs for A363714, there is no canonical definition to state claims against.
-/

/-! ## A363714.P2693813596840057308

`A320892(A330929(n+1))+1`
-/

namespace A363714.P2693813596840057308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320892 (A330929 (n + 1)).toNat + 1

end

end A363714.P2693813596840057308

/-!
# A363718: Irregular triangle read by rows. An infinite binary tree which has root node 1 in row n = 0. Each node then has left child m-1 if greater than 0 and right child m+1, where m is the value of the parent node.

The programs for A363718, the canonical program `A363718.P3369360157164842008` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363718 has offset 0).

The definition of A363718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363718.P3369360157164842008

`Δ[record[A268289(n)]]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363718

/-- `Δ[record[A268289(n)]]` -/
def P3369360157164842008.Spec : Prop :=
  ∀ n, P3369360157164842008.a n = A363718 n

theorem P3369360157164842008.correct : P3369360157164842008.Spec := by
  intro n
  simp only [A363718]

end A363718

/-! ## A363718.P4989976948225297495

`Δ[record[A301336(n)]]`
-/

namespace A363718.P4989976948225297495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363718.P4989976948225297495

namespace A363718

/-- `Δ[record[A301336(n)]]` -/
def P4989976948225297495.Spec : Prop :=
  ∀ n, P4989976948225297495.a n = A363718 n

end A363718

/-! ## A363718.P8622613023079877177

`Δ[record[∑[A145037(n)]]]`
-/

namespace A363718.P8622613023079877177
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363718.P8622613023079877177

namespace A363718

/-- `Δ[record[∑[A145037(n)]]]` -/
def P8622613023079877177.Spec : Prop :=
  ∀ n, P8622613023079877177.a n = A363718 n

end A363718

/-! ## A363718.P12592082301808207711

`A031235(A220365(n+1)+6)`
-/

namespace A363718.P12592082301808207711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A220365 (n + 1) + 6).toNat

end

end A363718.P12592082301808207711

namespace A363718

/-- `A031235(A220365(n+1)+6)` -/
def P12592082301808207711.Spec : Prop :=
  ∀ n, P12592082301808207711.a n = A363718 n

end A363718

/-! ## A363718.P2887723463281240131

`A007001(A082582(n)+A028903(n))`
-/

namespace A363718.P2887723463281240131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A082582 n + A028903 n).toNat

end

end A363718.P2887723463281240131

namespace A363718

/-- `A007001(A082582(n)+A028903(n))` -/
def P2887723463281240131.Spec : Prop :=
  ∀ n, P2887723463281240131.a n = A363718 n

end A363718

/-!
# A363719: Number of integer partitions of n satisfying (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363719, there is no canonical definition to state claims against.
-/

/-! ## A363719.P8983313703170286415

`A363728(n+1)+∏{e}[n+1, #+1]`
-/

namespace A363719.P8983313703170286415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A363719.P8983313703170286415

/-! ## A363719.P7762363242196761640

`A363728(n+1)+Δ[A054519(n)]`
-/

namespace A363719.P7762363242196761640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (n + 1) + (f1 (n + 1) - f1 n)

end

end A363719.P7762363242196761640

/-! ## A363719.P17250006381627239

`A363728(n+1)+A000005(n+1)`
-/

namespace A363719.P17250006381627239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (n + 1) + A000005 (n + 1)

end

end A363719.P17250006381627239

/-! ## A363719.P15015841267257077523

`A363728(n+1)+A179941(n+1)`
-/

namespace A363719.P15015841267257077523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (n + 1) + A179941 (n + 1)

end

end A363719.P15015841267257077523

/-! ## A363719.P8066730410214756706

`A363728(n+1)+A184395(n+1)`
-/

namespace A363719.P8066730410214756706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (n + 1) + A184395 (n + 1)

end

end A363719.P8066730410214756706

/-! ## A363719.P7727942856589571319

`A000041(n+1)+A363728(n+1)-A144300(n+1)`
-/

namespace A363719.P7727942856589571319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A363728 (n + 1) - A144300 (n + 1))

end

end A363719.P7727942856589571319

/-!
# A363721: Number of odd-length integer partitions of n satisfying (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363721, there is no canonical definition to state claims against.
-/

/-! ## A363721.P12609658688392178219

`A327399(A278242(n+1))`
-/

namespace A363721.P12609658688392178219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327399 (A278242 (n + 1)).toNat

end

end A363721.P12609658688392178219

/-!
# A363722: Nonprime numbers whose prime indices satisfy (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363722, there is no canonical definition to state claims against.
-/

/-! ## A363722.P10824011427375597723

`∪[A134612(n+1), A363729(n+1)]`
-/

namespace A363722.P10824011427375597723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363722.P10824011427375597723

/-! ## A363722.P17463662222669286026

`filter[A363727(n+1), A005171(#)]`
-/

namespace A363722.P17463662222669286026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A363722.P17463662222669286026

/-! ## A363722.P9363707712338331706

`filter[A363727(n+1), A066247(#)]`
-/

namespace A363722.P9363707712338331706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A363722.P9363707712338331706

/-! ## A363722.P3950141828835307479

`filter[A363727(n+1), A087049(#)]`
-/

namespace A363722.P3950141828835307479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A363722.P3950141828835307479

/-!
# A363723: Number of integer partitions of n having a unique mode equal to the mean, i.e., partitions whose mean appears more times than each of the other parts.

The programs for A363723, there is no canonical definition to state claims against.
-/

/-! ## A363723.P5799767212448080663

`∑{e}[2^n, A363719(#)]`
-/

namespace A363723.P5799767212448080663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A363719 (Nat.factorization (f1 n) p)

end

end A363723.P5799767212448080663

/-! ## A363723.P16827087704067796470

`A363719(A028310(n))%A270339(2*n+1)`
-/

namespace A363723.P16827087704067796470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363719 (A028310 n).toNat) (A270339 (2 * n + 1))

end

end A363723.P16827087704067796470

/-! ## A363723.P12415852433744464420

`A363719(A028310(n))%A357058(3*n)`
-/

namespace A363723.P12415852433744464420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363719 (A028310 n).toNat) (A357058 (3 * n))

end

end A363723.P12415852433744464420

/-! ## A363723.P16384952092012784410

`A186437(A300549(n))`
-/

namespace A363723.P16384952092012784410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A300549 n).toNat

end

end A363723.P16384952092012784410

/-! ## A363723.P1754723461777941035

`A382397(A353860(n))`
-/

namespace A363723.P1754723461777941035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A353860 n).toNat

end

end A363723.P1754723461777941035

/-!
# A363724: Number of integer partitions of n whose mean is a mode, i.e., partitions whose mean appears at least as many times as each of the other parts.

The programs for A363724, there is no canonical definition to state claims against.
-/

/-! ## A363724.P2889050904435224895

`A363731(n+1)+A363723(n+1)`
-/

namespace A363724.P2889050904435224895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363731 (n + 1) + A363723 (n + 1)

end

end A363724.P2889050904435224895

/-! ## A363724.P6021472539922180292

`A267417(A002445(n))+A102627(n+1)`
-/

namespace A363724.P6021472539922180292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A002445 n).toNat + A102627 (n + 1)

end

end A363724.P6021472539922180292

/-! ## A363724.P6280625378665222814

`A284929(A177331(n+1))+A102627(n+1)`
-/

namespace A363724.P6280625378665222814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A177331 (n + 1)).toNat + A102627 (n + 1)

end

end A363724.P6280625378665222814

/-! ## A363724.P5524629922194432716

`A189687(A341423(n+2))+A102627(n+1)`
-/

namespace A363724.P5524629922194432716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189687 (A341423 (n + 2)).toNat + A102627 (n + 1)

end

end A363724.P5524629922194432716

/-! ## A363724.P9878439532441348008

`A368916(A006561(3*n+2))+A102627(n+1)`
-/

namespace A363724.P9878439532441348008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 (A006561 (3 * n + 2)).toNat + A102627 (n + 1)

end

end A363724.P9878439532441348008

/-!
# A363726: Number of odd-length integer partitions of n with a unique mode.

The programs for A363726, there is no canonical definition to state claims against.
-/

/-! ## A363726.P234415961157593184

`A326597(A077168(n))+A266777(A077168(n))`
-/

namespace A363726.P234415961157593184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 (A077168 n).toNat + A266777 (A077168 n).toNat

end

end A363726.P234415961157593184

/-! ## A363726.P1699230420368046208

`A086520(A056505(n+1))`
-/

namespace A363726.P1699230420368046208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A056505 (n + 1)).toNat

end

end A363726.P1699230420368046208

/-! ## A363726.P1241569791470300128

`A157685(A046523(n+1)+A000041(n))`
-/

namespace A363726.P1241569791470300128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A046523 (n + 1) + A000041 n).toNat

end

end A363726.P1241569791470300128

/-! ## A363726.P15054833941045834489

`A000688(A011782(n+2))-A347576(n)`
-/

namespace A363726.P15054833941045834489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A011782 (n + 2)).toNat - A347576 (n + 45)

end

end A363726.P15054833941045834489

/-! ## A363726.P10207601536678739959

`A124760(A186746(2*n))+A002865(n+1)`
-/

namespace A363726.P10207601536678739959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A186746 (2 * n)).toNat + A002865 (n + 1)

end

end A363726.P10207601536678739959

/-!
# A363727: Numbers whose prime indices satisfy (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363727, there is no canonical definition to state claims against.
-/

/-! ## A363727.P9391997728693848696

`∪[A246655(n+1), A001561(n)]`
-/

namespace A363727.P9391997728693848696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001561 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P9391997728693848696

/-! ## A363727.P17813725230989266655

`∪[A018907(n), A246655(n+1)]`
-/

namespace A363727.P17813725230989266655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P17813725230989266655

/-! ## A363727.P4293065689588240724

`∪[A246655(n+1), A027621(n)]`
-/

namespace A363727.P4293065689588240724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027621 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P4293065689588240724

/-! ## A363727.P1929532135402798788

`∪[A041116(n), A246655(n+1)]`
-/

namespace A363727.P1929532135402798788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P1929532135402798788

/-! ## A363727.P8129128815860137992

`∪[A048576(n), A246655(n+1)]`
-/

namespace A363727.P8129128815860137992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P8129128815860137992

/-! ## A363727.P7242934636317965511

`∪[A246655(n+1), A061222(n)]`
-/

namespace A363727.P7242934636317965511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P7242934636317965511

/-! ## A363727.P7323157135042666294

`∪[A171470(n), A246655(n+1)]`
-/

namespace A363727.P7323157135042666294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P7323157135042666294

/-! ## A363727.P3972119189885260861

`∪[A246655(n+1), A253487(n)]`
-/

namespace A363727.P3972119189885260861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P3972119189885260861

/-! ## A363727.P781146176287701121

`∩[A242417(n+1), A356862(n+1)]`
-/

namespace A363727.P781146176287701121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P781146176287701121

/-! ## A363727.P16978962269930382084

`∪[A039544(n+1), A246655(n+1)]`
-/

namespace A363727.P16978962269930382084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P16978962269930382084

/-!
# A363728: Number of integer partitions of n that are not constant but satisfy (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363728, there is no canonical definition to state claims against.
-/

/-! ## A363728.P13908923939333677752

`A363719(n+1)-∏{e}[n+1, #+1]`
-/

namespace A363728.P13908923939333677752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A363728.P13908923939333677752

/-! ## A363728.P309396735846588714

`A363719(n+1)-Δ[A006218(n)]`
-/

namespace A363728.P309396735846588714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (n + 1) - (f1 (n + 1) - f1 n)

end

end A363728.P309396735846588714

/-! ## A363728.P13937195906891186896

`A363719(n+1)-A000005(n+1)`
-/

namespace A363728.P13937195906891186896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (n + 1) - A000005 (n + 1)

end

end A363728.P13937195906891186896

/-! ## A363728.P7022516941113814831

`A363719(n+1)-A179941(n+1)`
-/

namespace A363728.P7022516941113814831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (n + 1) - A179941 (n + 1)

end

end A363728.P7022516941113814831

/-! ## A363728.P13457233909914278864

`A363719(n+1)-A184395(n+1)`
-/

namespace A363728.P13457233909914278864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (n + 1) - A184395 (n + 1)

end

end A363728.P13457233909914278864

/-!
# A363729: Numbers that are not a power of a prime but whose prime indices satisfy (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363729, there is no canonical definition to state claims against.
-/

/-! ## A363729.P694555108446921113

`filter[A363722(n+1), A065202(#)]`
-/

namespace A363729.P694555108446921113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A363729.P694555108446921113

/-! ## A363729.P8160952101136652735

`filter[A363722(n+1), A132350(#)]`
-/

namespace A363729.P8160952101136652735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A363729.P8160952101136652735

/-! ## A363729.P16044989322550305708

`filter[A363722(n+1), A143731(#)]`
-/

namespace A363729.P16044989322550305708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A363729.P16044989322550305708

/-! ## A363729.P11661847492065941866

`filter[A363722(n+1), A355447(#)]`
-/

namespace A363729.P11661847492065941866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363729.P11661847492065941866

/-! ## A363729.P8299571677348461439

`filter[A363722(n+1), A379958(#)]`
-/

namespace A363729.P8299571677348461439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A363729.P8299571677348461439

/-!
# A363730: Numbers whose prime indices have different mean, median, and mode.

The programs for A363730, there is no canonical definition to state claims against.
-/

/-! ## A363730.P11170832081306837780

`A357685(A032555(n+2))`
-/

namespace A363730.P11170832081306837780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (A032555 (n + 2)).toNat

end

end A363730.P11170832081306837780

/-! ## A363730.P4239400339199069680

`A357685(A032559(n+2))`
-/

namespace A363730.P4239400339199069680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (A032559 (n + 2)).toNat

end

end A363730.P4239400339199069680

/-! ## A363730.P1213632475311668865

`A357685(A077739(n+2))`
-/

namespace A363730.P1213632475311668865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (A077739 (n + 2)).toNat

end

end A363730.P1213632475311668865

/-! ## A363730.P2539574614480141843

`A357685(A078213(n+2))`
-/

namespace A363730.P2539574614480141843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (A078213 (n + 2)).toNat

end

end A363730.P2539574614480141843

/-!
# A363732: Triangle read by rows. The triangle algorithm applied to (-1)^n/n!.

The programs for A363732, there is no canonical definition to state claims against.
-/

/-! ## A363732.P471536579068913133

`A000110(A004736(n+1))*A130595(n)`
-/

namespace A363732.P471536579068913133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A004736 (n + 1)).toNat * A130595 n

end

end A363732.P471536579068913133

/-!
# A363733: Array read by upwards antidiagonals. The family of polynomials generated by the divisibility matrix (A113704) evaluated over the nonnegative integers.

The programs for A363733, there is no canonical definition to state claims against.
-/

/-! ## A363733.P11736311602281251091

`A062135(n)-A178798(A064045(n))`
-/

namespace A363733.P11736311602281251091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062135 n - A178798 (A064045 n).toNat

end

end A363733.P11736311602281251091

/-!
# A363734: a(n) = Sum_{k=0..n} n^divides(k, n), where divides(k, n) = 1 if k divides n, otherwise 0.

The programs for A363734, the canonical program `A363734.P4451940321919636705` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363734 has offset 0).

The definition of A363734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363734.P5058385992717790514

`A363735(n)-A363421(n)`
-/

namespace A363734.P5058385992717790514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - A363421 n

end

end A363734.P5058385992717790514

namespace A363734

/-- `A363735(n)-A363421(n)` -/
def P5058385992717790514.Spec : Prop :=
  ∀ n, P5058385992717790514.a n = A363734 n

theorem P5058385992717790514.correct : P5058385992717790514.Spec := by
  intro n
  simp only [A363734, Nat.add_sub_cancel, A363734.P5058385992717790514.a, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, A363421, A363421.P12311062150934026796.a, A363735, A363735.P14979785734509614972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363734

/-! ## A363734.P4451940321919636705

`(n-1)*∏{e}[n, #+1]+1+n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363734

/-- `(n-1)*∏{e}[n, #+1]+1+n` -/
def P4451940321919636705.Spec : Prop :=
  ∀ n, P4451940321919636705.a n = A363734 n

theorem P4451940321919636705.correct : P4451940321919636705.Spec := by
  intro n
  simp only [A363734]

end A363734

/-! ## A363734.P11280195566909823712

`(n-1)*A032741(n)+n+n`
-/

namespace A363734.P11280195566909823712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A032741 n + (n : ℤ) + (n : ℤ)

end

end A363734.P11280195566909823712

namespace A363734

/-- `(n-1)*A032741(n)+n+n` -/
def P11280195566909823712.Spec : Prop :=
  ∀ n, P11280195566909823712.a n = A363734 n

theorem P11280195566909823712.correct : P11280195566909823712.Spec := by
  intro n
  simp only [A363734, Nat.add_sub_cancel, A363734.P11280195566909823712.a, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363734

/-! ## A363734.P14479302081124110209

`A000027(n+1)²-A363735(n)`
-/

namespace A363734.P14479302081124110209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) ^ 2 - A363735 n

end

end A363734.P14479302081124110209

namespace A363734

/-- `A000027(n+1)²-A363735(n)` -/
def P14479302081124110209.Spec : Prop :=
  ∀ n, P14479302081124110209.a n = A363734 n

theorem P14479302081124110209.correct : P14479302081124110209.Spec := by
  intro n
  simp only [A363734, Nat.add_sub_cancel, A363734.P14479302081124110209.a, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, A000027, A000027.P10331202704469894836.a, A363735, A363735.P14979785734509614972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363734

/-! ## A363734.P15669905111351920375

`A000290(n)-(A363735(n)-Δ[n²])`
-/

namespace A363734.P15669905111351920375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - (A363735 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A363734.P15669905111351920375

namespace A363734

/-- `A000290(n)-(A363735(n)-Δ[n²])` -/
def P15669905111351920375.Spec : Prop :=
  ∀ n, P15669905111351920375.a n = A363734 n

theorem P15669905111351920375.correct : P15669905111351920375.Spec := by
  intro n
  simp only [A363734, Nat.add_sub_cancel, A363734.P15669905111351920375.f1, A363734.P15669905111351920375.a, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, A000290, A000290.P12206242496348924484.a, A363735, A363735.P14979785734509614972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363734

/-!
# A363735: a(n) = Sum_{k=0..n} n^notdivides(k, n), where notdivides(k, n) = 0 if k divides n, otherwise 1.

The programs for A363735, the canonical program `A363735.P14979785734509614972` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363735 has offset 0).

The definition of A363735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363735.P14979785734509614972

`(n+1)²-A363734(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363735

/-- `(n+1)²-A363734(n)` -/
def P14979785734509614972.Spec : Prop :=
  ∀ n, P14979785734509614972.a n = A363735 n

theorem P14979785734509614972.correct : P14979785734509614972.Spec := by
  intro n
  simp only [A363735]

end A363735

/-! ## A363735.P9057796824170578953

`A363734(n)+A363421(n)`
-/

namespace A363735.P9057796824170578953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363734 n + A363421 n

end

end A363735.P9057796824170578953

namespace A363735

/-- `A363734(n)+A363421(n)` -/
def P9057796824170578953.Spec : Prop :=
  ∀ n, P9057796824170578953.a n = A363735 n

theorem P9057796824170578953.correct : P9057796824170578953.Spec := by
  intro n
  simp only [A363735, Nat.add_sub_cancel, A363735.P9057796824170578953.a, A363735.P14979785734509614972.a, A363421, A363421.P12311062150934026796.a, A363734, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363735

/-! ## A363735.P15490538608351677243

`A001844(n)-A363734(n)-n²`
-/

namespace A363735.P15490538608351677243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A363734 n - (n ^ 2 : ℤ)

end

end A363735.P15490538608351677243

namespace A363735

/-- `A001844(n)-A363734(n)-n²` -/
def P15490538608351677243.Spec : Prop :=
  ∀ n, P15490538608351677243.a n = A363735 n

theorem P15490538608351677243.correct : P15490538608351677243.Spec := by
  intro n
  simp only [A363735, Nat.add_sub_cancel, A363735.P15490538608351677243.a, A363735.P14979785734509614972.a, A001844, A001844.P5037395199076350534.a, A363734, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363735

/-! ## A363735.P3136255624546612588

`A363421(n)+(n-1)*A032741(n)+n+n`
-/

namespace A363735.P3136255624546612588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363421 n + (((n : ℤ) - 1) * A032741 n + (n : ℤ) + (n : ℤ))

end

end A363735.P3136255624546612588

namespace A363735

/-- `A363421(n)+(n-1)*A032741(n)+n+n` -/
def P3136255624546612588.Spec : Prop :=
  ∀ n, P3136255624546612588.a n = A363735 n

theorem P3136255624546612588.correct : P3136255624546612588.Spec := by
  intro n
  simp only [A363735, Nat.add_sub_cancel, A363735.P3136255624546612588.a, A363735.P14979785734509614972.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A363421, A363421.P12311062150934026796.a, A363734, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363735

/-! ## A363735.P9517605127947961123

`A262039(A159693(n+1))`
-/

namespace A363735.P9517605127947961123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262039 (A159693 (n + 1)).toNat

end

end A363735.P9517605127947961123

namespace A363735

/-- `A262039(A159693(n+1))` -/
def P9517605127947961123.Spec : Prop :=
  ∀ n, P9517605127947961123.a n = A363735 n

end A363735

/-!
# A363739: a(n) is the length of the n-th run of identical terms of A349509.

The programs for A363739, there is no canonical definition to state claims against.
-/

/-! ## A363739.P4108925052740655870

`A044953(gcd(A005875(2*(n+2)), A042528(n)))`
-/

namespace A363739.P4108925052740655870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044953 (Int.gcd (A005875 (2 * (n + 2))) (A042528 n))

end

end A363739.P4108925052740655870

/-!
# A363740: Number of integer partitions of n whose median appears more times than any other part, i.e., partitions containing a unique mode equal to the median.

The programs for A363740, there is no canonical definition to state claims against.
-/

/-! ## A363740.P1902158677458261123

`A238875(n+2)-A316869(A001333(n))`
-/

namespace A363740.P1902158677458261123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238875 (n + 2) - A316869 (A001333 n).toNat

end

end A363740.P1902158677458261123

/-! ## A363740.P14094817577743153852

`A238875(n+2)-A374247(A060187(n+1))`
-/

namespace A363740.P14094817577743153852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238875 (n + 2) - A374247 (A060187 (n + 1)).toNat

end

end A363740.P14094817577743153852

/-! ## A363740.P9969723164525204684

`A238875(A077741(n+1)+1)`
-/

namespace A363740.P9969723164525204684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238875 (A077741 (n + 1) + 1).toNat

end

end A363740.P9969723164525204684

/-! ## A363740.P7452062433973924660

`A238875(n+2)%A363208(n+3)`
-/

namespace A363740.P7452062433973924660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238875 (n + 2)) (A363208 (n + 3))

end

end A363740.P7452062433973924660

/-! ## A363740.P5118740522596999604

`A238875(n+2)+A000045(A238921(n))`
-/

namespace A363740.P5118740522596999604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238875 (n + 2) + A000045 (A238921 n).toNat

end

end A363740.P5118740522596999604

/-!
# A363741: Number of factorizations of n satisfying (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363741, there is no canonical definition to state claims against.
-/

/-! ## A363741.P9788665135241804242

`A077462(A051904(n+1))`
-/

namespace A363741.P9788665135241804242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A051904 (n + 1)).toNat

end

end A363741.P9788665135241804242

/-! ## A363741.P16795877355101003654

`A055396(A369015(n+1))`
-/

namespace A363741.P16795877355101003654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A369015 (n + 1)).toNat

end

end A363741.P16795877355101003654

/-! ## A363741.P9044190168353141412

`A065770(A051904(n+1)+1)`
-/

namespace A363741.P9044190168353141412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A051904 (n + 1) + 1).toNat

end

end A363741.P9044190168353141412

/-! ## A363741.P208441573794666780

`A263297(A051904(n+1)+1)`
-/

namespace A363741.P208441573794666780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A051904 (n + 1) + 1).toNat

end

end A363741.P208441573794666780

/-! ## A363741.P8264675005518627106

`A263323(A051904(n+1)+1)`
-/

namespace A363741.P8264675005518627106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A051904 (n + 1) + 1).toNat

end

end A363741.P8264675005518627106

/-! ## A363741.P17443247213723510413

`A297113(A051904(n+1)+1)`
-/

namespace A363741.P17443247213723510413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A051904 (n + 1) + 1).toNat

end

end A363741.P17443247213723510413

/-! ## A363741.P14146232141950456949

`A304464(A051904(n+1)+1)`
-/

namespace A363741.P14146232141950456949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (A051904 (n + 1) + 1).toNat

end

end A363741.P14146232141950456949

/-! ## A363741.P1728572601696088348

`A335603(A051904(n+1)+1)`
-/

namespace A363741.P1728572601696088348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (A051904 (n + 1) + 1).toNat

end

end A363741.P1728572601696088348

/-! ## A363741.P239882291604271515

`A114639(xor(1, A051904(n+1)))`
-/

namespace A363741.P239882291604271515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114639 (Int.xor 1 (A051904 (n + 1))).toNat

end

end A363741.P239882291604271515

/-! ## A363741.P14468258853781650478

`∑{d}[A051904(n+1), A008289(#)]`
-/

namespace A363741.P14468258853781650478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008289 d

end

end A363741.P14468258853781650478

/-!
# A363742: Number of integer factorizations of n with different mean, median, and mode.

The programs for A363742, there is no canonical definition to state claims against.
-/

/-! ## A363742.P6041110112783908082

`A122180(n+1)*A168181(A029635(2*(n+1)))`
-/

namespace A363742.P6041110112783908082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1) * A168181 (A029635 (2 * (n + 1))).toNat

end

end A363742.P6041110112783908082

/-! ## A363742.P1036459388060340690

`A014578(A326635(n))*A122180(n+1)`
-/

namespace A363742.P1036459388060340690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (A326635 n).toNat * A122180 (n + 1)

end

end A363742.P1036459388060340690

/-! ## A363742.P1437409843225355751

`A122180(n+1)-A122180(A213648(n+2))`
-/

namespace A363742.P1437409843225355751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1) - A122180 (A213648 (n + 2)).toNat

end

end A363742.P1437409843225355751

/-! ## A363742.P14432792264056690324

`and(A122180(n+1), A295886(A007318(3*n)))`
-/

namespace A363742.P14432792264056690324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122180 (n + 1)) (A295886 (A007318 (3 * n)).toNat)

end

end A363742.P14432792264056690324

/-! ## A363742.P3205649723456050864

`A122180(n+1)*A157044(A255238(n+3))`
-/

namespace A363742.P3205649723456050864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1) * A157044 (A255238 (n + 3)).toNat

end

end A363742.P3205649723456050864

/-! ## A363742.P1740707195535725851

`A087136(n)%A266226(n+1)`
-/

namespace A363742.P1740707195535725851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087136 n) (A266226 (n + 1))

end

end A363742.P1740707195535725851

/-! ## A363742.P8886445061776546571

`A000217(A046020(n+1))%A353352(n+1)`
-/

namespace A363742.P8886445061776546571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A046020 (n + 1)).toNat) (A353352 (n + 1))

end

end A363742.P8886445061776546571

/-!
# A363743: a(n) = floor(sqrt(log_10(n!))).

The programs for A363743, there is no canonical definition to state claims against.
-/

/-! ## A363743.P5224722276214085794

`floor(sqrt(A034886(n)-1))`
-/

namespace A363743.P5224722276214085794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A034886 n - 1)

end

end A363743.P5224722276214085794

/-! ## A363743.P10398602556662580763

`A000196(A034886(n)-1)`
-/

namespace A363743.P10398602556662580763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A034886 n - 1).toNat

end

end A363743.P10398602556662580763

/-! ## A363743.P16645993269621399881

`A000196(A134824(n+2)+A034886(n))`
-/

namespace A363743.P16645993269621399881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A134824 (n + 2) + A034886 n).toNat

end

end A363743.P16645993269621399881

/-! ## A363743.P1670111025654418629

`A000196(A356758(n)+A027869(n)-1)`
-/

namespace A363743.P1670111025654418629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A356758 n + A027869 n - 1).toNat

end

end A363743.P1670111025654418629

/-! ## A363743.P15561717966088933785

`A000196(A241730(n)+dr(A348783(n))-1)`
-/

namespace A363743.P15561717966088933785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A241730 n + (SequenceMachineLib.digitalRoot (A348783 n) : ℤ) - 1).toNat

end

end A363743.P15561717966088933785

/-! ## A363743.P8646844027093892717

`A000196(A191610(n+1)+A008906(n)-n-1)`
-/

namespace A363743.P8646844027093892717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A191610 (n + 1) + (A008906 n - (n : ℤ)) - 1).toNat

end

end A363743.P8646844027093892717

/-! ## A363743.P2296180906706030703

`A003059(A034886(n))-A010684(2*(n+1))`
-/

namespace A363743.P2296180906706030703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A034886 n).toNat - A010684 (2 * (n + 1))

end

end A363743.P2296180906706030703

/-! ## A363743.P16757981934721164404

`A073458(∑[A260412(n)])`
-/

namespace A363743.P16757981934721164404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363743.P16757981934721164404

/-! ## A363743.P1731411820261957009

`A000195(A325855(n+1))`
-/

namespace A363743.P1731411820261957009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A325855 (n + 1)).toNat

end

end A363743.P1731411820261957009

/-! ## A363743.P14584793687510557556

`A000195(A352165(n+1))`
-/

namespace A363743.P14584793687510557556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A352165 (n + 1)).toNat

end

end A363743.P14584793687510557556

/-!
# A363744: E.g.f. satisfies A(x) = exp(x * (1 + x * A(x))^2).

The programs for A363744, there is no canonical definition to state claims against.
-/

/-! ## A363744.P3790213753056105164

`A364978(n+1)/(n+1)`
-/

namespace A363744.P3790213753056105164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364978 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A363744.P3790213753056105164

/-! ## A363744.P7835139836150147440

`A285343(A120972(n)+A003415(n))`
-/

namespace A363744.P7835139836150147440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (A120972 n + A003415 n).toNat

end

end A363744.P7835139836150147440

/-!
# A363745: Number of integer partitions of n whose rounded-down mean is 2.

The programs for A363745, there is no canonical definition to state claims against.
-/

/-! ## A363745.P16940483886475097850

`A363945(A133263(n))`
-/

namespace A363745.P16940483886475097850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363945 (A133263 n).toNat

end

end A363745.P16940483886475097850

/-! ## A363745.P17893301115705613175

`A363945(A238531(n+1))`
-/

namespace A363745.P17893301115705613175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363945 (A238531 (n + 1)).toNat

end

end A363745.P17893301115705613175

/-! ## A363745.P10244495739998157533

`A363945(A089071(n+1)+n)`
-/

namespace A363745.P10244495739998157533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363945 (A089071 (n + 1) + (n : ℤ)).toNat

end

end A363745.P10244495739998157533

/-!
# A363748: Number of compositions into sums of fourth powers.

The programs for A363748, there is no canonical definition to state claims against.
-/

/-! ## A363748.P12155274133347733482

`A291149(n+1)`
-/

namespace A363748.P12155274133347733482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 (n + 1)

end

end A363748.P12155274133347733482

/-! ## A363748.P11574117787055383017

`Δ[A000027(∑[A291149(n)])]`
-/

namespace A363748.P11574117787055383017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363748.P11574117787055383017

/-! ## A363748.P15180944600869554758

`Δ[A028310(∑[A291149(n)])]`
-/

namespace A363748.P15180944600869554758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363748.P15180944600869554758

/-! ## A363748.P5594917323122781644

`Δ[record[A291149(A323889(n))]]`
-/

namespace A363748.P5594917323122781644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363748.P5594917323122781644

/-! ## A363748.P14738361647745201479

`A054900(n)+∑[A133872(A003892(n+1))]`
-/

namespace A363748.P14738361647745201479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A003892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363748.P14738361647745201479

/-!
# A363749: Number of compositions into sums of fifth powers.

The programs for A363749, there is no canonical definition to state claims against.
-/

/-! ## A363749.P14355310436918815115

`A291168(n+1)`
-/

namespace A363749.P14355310436918815115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (n + 1)

end

end A363749.P14355310436918815115

/-! ## A363749.P823051874502879686

`gcd(A151671(n), A291168(A008619(2*n)))`
-/

namespace A363749.P823051874502879686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151671 n) (A291168 (A008619 (2 * n)).toNat)

end

end A363749.P823051874502879686

/-! ## A363749.P7464991233426733668

`A291168(A008619(2*n))/A369257(A002033(n))`
-/

namespace A363749.P7464991233426733668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291168 (A008619 (2 * n)).toNat : ℚ) / (A369257 (A002033 n).toNat : ℚ)

end

end A363749.P7464991233426733668

/-! ## A363749.P16745500166927871464

`∑[C(2^ceil(log2(n+1)), 64)^n]`
-/

namespace A363749.P16745500166927871464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat 64 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363749.P16745500166927871464

/-! ## A363749.P9980829017458217687

`∑[A141737(2^ceil(log2(n+1)))]`
-/

namespace A363749.P9980829017458217687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141737 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363749.P9980829017458217687

/-! ## A363749.P8239198316951871559

`∑[A379666(2^ceil(log2(n+1)))]`
-/

namespace A363749.P8239198316951871559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379666 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363749.P8239198316951871559

/-! ## A363749.P1986712968917451924

`∑[(floor((A035327(n)+n)/43)^n)^n]`
-/

namespace A363749.P1986712968917451924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(A035327 n + (n : ℤ) : ℚ) / 43⌋ ^ n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363749.P1986712968917451924

/-! ## A363749.P16590953878543931952

`∑[A209914(A062383(n)+10)]`
-/

namespace A363749.P16590953878543931952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209914 (A062383 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363749.P16590953878543931952

/-! ## A363749.P3360452917031439998

`∑[and(1, A001727(A053644(n)))]`
-/

namespace A363749.P3360452917031439998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001727 (A053644 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363749.P3360452917031439998

/-! ## A363749.P10820720207144439690

`∑[A334310(A062383(n)²)%2]`
-/

namespace A363749.P10820720207144439690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334310 (A062383 n ^ 2).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363749.P10820720207144439690

/-!
# A363750: Primes p such that p-1 can be written as a product of smaller numbers that are also of the form prime-1.

The programs for A363750, there is no canonical definition to state claims against.
-/

/-! ## A363750.P3492790033703073291

`filter[A138539(n+1), A068716(#)]`
-/

namespace A363750.P3492790033703073291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068716 (f1 j).toNat = 1) n)

end

end A363750.P3492790033703073291

/-! ## A363750.P2825673500483197083

`filter[A138539(n+1), A229062(#)]`
-/

namespace A363750.P2825673500483197083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A363750.P2825673500483197083

/-! ## A363750.P10023873439867754478

`filter[A138539(n+1), A285661(#)]`
-/

namespace A363750.P10023873439867754478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285661 (f1 j).toNat = 1) n)

end

end A363750.P10023873439867754478

/-! ## A363750.P9768979136748158092

`filter[A138539(n+1), A347870(#)]`
-/

namespace A363750.P9768979136748158092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A363750.P9768979136748158092

/-! ## A363750.P1013742795498738485

`∩[A138539(n+1), A004773(n)]`
-/

namespace A363750.P1013742795498738485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363750.P1013742795498738485

/-! ## A363750.P14674397025328726148

`∩[A138539(n+1), A104401(n)]`
-/

namespace A363750.P14674397025328726148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363750.P14674397025328726148

/-! ## A363750.P14276364208376728790

`∩[A000404(n+1), A138539(n+1)]`
-/

namespace A363750.P14276364208376728790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363750.P14276364208376728790

/-! ## A363750.P7305164457120276130

`∩[A000415(n+1), A138539(n+1)]`
-/

namespace A363750.P7305164457120276130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363750.P7305164457120276130

/-! ## A363750.P18397512815855189511

`∩[A001481(n+1), A138539(n+1)]`
-/

namespace A363750.P18397512815855189511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363750.P18397512815855189511

/-! ## A363750.P12119963425139282224

`∩[A002313(n+1), A138539(n+1)]`
-/

namespace A363750.P12119963425139282224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363750.P12119963425139282224

/-!
# A363751: Numbers k such that prime(k) mod k is prime.

The programs for A363751, there is no canonical definition to state claims against.
-/

/-! ## A363751.P5443267694126393635

`A000720(A363752(n+1))`
-/

namespace A363751.P5443267694126393635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A363752 (n + 1)).toNat

end

end A363751.P5443267694126393635

/-! ## A363751.P16556012967946450928

`∑{d}[A363752(n+1), A243503(#)]`
-/

namespace A363751.P16556012967946450928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A243503 d

end

end A363751.P16556012967946450928

/-! ## A363751.P17568315719868107287

`A049084(A363752(n+1))%A011863(n+4)`
-/

namespace A363751.P17568315719868107287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A363752 (n + 1)).toNat) (A011863 (n + 4))

end

end A363751.P17568315719868107287

/-! ## A363751.P4795285842500412819

`A067004(A363752(n+1)+A000007(3*n+1))`
-/

namespace A363751.P4795285842500412819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A363752 (n + 1) + A000007 (3 * n + 1)).toNat

end

end A363751.P4795285842500412819

/-! ## A363751.P15731405821231567643

`A079260(2*(n+2))+A049084(A363752(n+1))`
-/

namespace A363751.P15731405821231567643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (2 * (n + 2)) + A049084 (A363752 (n + 1)).toNat

end

end A363751.P15731405821231567643

/-! ## A363751.P3461505291311684457

`A049084(A363752(n+1))/A057079(3*(n+1))²`
-/

namespace A363751.P3461505291311684457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049084 (A363752 (n + 1)).toNat : ℚ) / (A057079 (3 * (n + 1)) ^ 2 : ℚ)

end

end A363751.P3461505291311684457

/-! ## A363751.P17229449032089076617

`A049084(A363752(n+1))-A307637(A227185(n))`
-/

namespace A363751.P17229449032089076617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A363752 (n + 1)).toNat - A307637 (A227185 n).toNat

end

end A363751.P17229449032089076617

/-! ## A363751.P18028801523457944443

`A067004(A363752(n+1))+A000007(A067004(n+1))`
-/

namespace A363751.P18028801523457944443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A363752 (n + 1)).toNat + A000007 (A067004 (n + 1)).toNat

end

end A363751.P18028801523457944443

/-! ## A363751.P14840008542092384681

`A307637(A227185(n+1))+A049084(A363752(n+1))`
-/

namespace A363751.P14840008542092384681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307637 (A227185 (n + 1)).toNat + A049084 (A363752 (n + 1)).toNat

end

end A363751.P14840008542092384681

/-! ## A363751.P12851159108096066742

`A049084(A363752(n+1)%A254028(n))`
-/

namespace A363751.P12851159108096066742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.tmod (A363752 (n + 1)) (A254028 n)).toNat

end

end A363751.P12851159108096066742

/-!
# A363752: Primes prime(k) such that prime(k) mod k is prime.

The programs for A363752, there is no canonical definition to state claims against.
-/

/-! ## A363752.P18333700022697409407

`A000040(A363751(n+1))`
-/

namespace A363752.P18333700022697409407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A363751 (n + 1)).toNat

end

end A363752.P18333700022697409407

/-! ## A363752.P6460240769616300278

`A065091(A363751(n+1)-1)`
-/

namespace A363752.P6460240769616300278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A363751 (n + 1) - 1).toNat

end

end A363752.P6460240769616300278

/-! ## A363752.P9537227712834900787

`lcm(A006093(A363751(n+1))+1, A087960(n))`
-/

namespace A363752.P9537227712834900787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006093 (A363751 (n + 1)).toNat + 1) (A087960 n)

end

end A363752.P9537227712834900787

/-! ## A363752.P15676810049604939324

`A168182(3*n+4)+A006093(A363751(n+1))`
-/

namespace A363752.P15676810049604939324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 (3 * n + 4) + A006093 (A363751 (n + 1)).toNat

end

end A363752.P15676810049604939324

/-! ## A363752.P12649037370909572743

`A008578(A363751(n+1)+1)`
-/

namespace A363752.P12649037370909572743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A363751 (n + 1) + 1).toNat

end

end A363752.P12649037370909572743

/-!
# A363754: a(n) = Sum_{k=0..n} F(2k-1)*F(2k)*F(2k+1)/2, where F(n) is the Fibonacci number A000045(n).

The programs for A363754, there is no canonical definition to state claims against.
-/

/-! ## A363754.P15856389596548946880

`∑[record[Δ[A363753(n)]]]`
-/

namespace A363754.P15856389596548946880
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363754.P15856389596548946880

/-! ## A363754.P18156557156762972470

`(A163198(n)+A027941(n))/2`
-/

namespace A363754.P18156557156762972470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163198 n + A027941 n : ℚ) / 2

end

end A363754.P18156557156762972470

/-! ## A363754.P10481168439901932204

`∑[A001655(2*n)]-A001655(2*n)`
-/

namespace A363754.P10481168439901932204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001655 (2 * n)

end

end A363754.P10481168439901932204

/-! ## A363754.P7572783203174598756

`∑[A006003(A001906(n))]`
-/

namespace A363754.P7572783203174598756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A001906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363754.P7572783203174598756

/-! ## A363754.P10713267101348696714

`∑[A006003(Δ[A001519(n)])]`
-/

namespace A363754.P10713267101348696714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363754.P10713267101348696714

/-!
# A363756: Total number of distinct ways the divisors of n can be the product of other nontrivial divisors of n.

The programs for A363756, there is no canonical definition to state claims against.
-/

/-! ## A363756.P11971754590497945193

`A057567(n+1)-A000005(n+1)`
-/

namespace A363756.P11971754590497945193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - A000005 (n + 1)

end

end A363756.P11971754590497945193

/-! ## A363756.P7419406449832348137

`∑{d}[n+1, A028422(#)]`
-/

namespace A363756.P7419406449832348137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028422 d

end

end A363756.P7419406449832348137

/-! ## A363756.P13028917056545242675

`∑{d}[n+1, A001055(#)-1]`
-/

namespace A363756.P13028917056545242675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001055 d - 1)

end

end A363756.P13028917056545242675

/-! ## A363756.P16645308337985048851

`A057567(n+1)-Δ[A006218(n)]`
-/

namespace A363756.P16645308337985048851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - (f1 (n + 1) - f1 n)

end

end A363756.P16645308337985048851

/-! ## A363756.P1279507604322569113

`A359911(A013636(n+1))`
-/

namespace A363756.P1279507604322569113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A013636 (n + 1)).toNat

end

end A363756.P1279507604322569113

/-! ## A363756.P11419104228176399707

`A359911(A053024(n+1))`
-/

namespace A363756.P11419104228176399707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A053024 (n + 1)).toNat

end

end A363756.P11419104228176399707

/-! ## A363756.P8921965478971633321

`A359911(A004928(n+1))`
-/

namespace A363756.P8921965478971633321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A004928 (n + 1)).toNat

end

end A363756.P8921965478971633321

/-! ## A363756.P4634739964374452909

`A359911(A033286(n+1))`
-/

namespace A363756.P4634739964374452909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A033286 (n + 1)).toNat

end

end A363756.P4634739964374452909

/-! ## A363756.P1107121611951248403

`A359911(A164931(n+1))`
-/

namespace A363756.P1107121611951248403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A164931 (n + 1)).toNat

end

end A363756.P1107121611951248403

/-! ## A363756.P10370376370118387195

`A359911(A117495(n+2))`
-/

namespace A363756.P10370376370118387195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A117495 (n + 2)).toNat

end

end A363756.P10370376370118387195

/-! ## A363756.P9154020844146798251

`A359911(A306192(n+2))`
-/

namespace A363756.P9154020844146798251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A306192 (n + 2)).toNat

end

end A363756.P9154020844146798251

/-!
# A363757: Lexicographically earliest sequence of positive integers such that the n-th pair of consecutive equal values are separated by a(n) distinct terms, with pairs numbered according to the position of the second term in the pair.

The programs for A363757, there is no canonical definition to state claims against.
-/

/-! ## A363757.P8985698758022070078

`A060117(A034295(n+1)-A347621(n))`
-/

namespace A363757.P8985698758022070078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (A034295 (n + 1) - A347621 n).toNat

end

end A363757.P8985698758022070078

/-! ## A363757.P12629720110533597413

`A295663(A225546(n+1))+A128260(n+1)`
-/

namespace A363757.P12629720110533597413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (A225546 (n + 1)).toNat + A128260 (n + 1)

end

end A363757.P12629720110533597413

/-! ## A363757.P13224850667443548910

`gcd(A123229(n+1), A124762(A182944(n+1)))`
-/

namespace A363757.P13224850667443548910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123229 (n + 1)) (A124762 (A182944 (n + 1)).toNat)

end

end A363757.P13224850667443548910

/-! ## A363757.P6361583867884185465

`A302243(A139458(2*n+1)+A059749(n+1))`
-/

namespace A363757.P6361583867884185465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A139458 (2 * n + 1) + A059749 (n + 1)).toNat

end

end A363757.P6361583867884185465

/-! ## A363757.P4119384270629446639

`A254574(A185238(3*n+1))*A382908(n+1)`
-/

namespace A363757.P4119384270629446639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254574 (A185238 (3 * n + 1)).toNat * A382908 (n + 1)

end

end A363757.P4119384270629446639

/-!
# A363759: Smallest number that can be written as a sum of a positive n-th power and a positive (n+1)-th power in 2 different ways.

The programs for A363759, there is no canonical definition to state claims against.
-/

/-! ## A363759.P9632708464894680533

`A000051((2-char[1]+n)*(n+1))`
-/

namespace A363759.P9632708464894680533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)) * (n + 1 : ℤ)).toNat

end

end A363759.P9632708464894680533

/-! ## A363759.P12894063534641740365

`A052539(A186783(n+2))`
-/

namespace A363759.P12894063534641740365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 (A186783 (n + 2)).toNat

end

end A363759.P12894063534641740365

/-!
# A363762: Numbers k for which A363763(k) = -1.

The programs for A363762, there is no canonical definition to state claims against.
-/

/-! ## A363762.P12650161994331727673

`eq[0, A363522(n)]`
-/

namespace A363762.P12650161994331727673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363762.P12650161994331727673

/-! ## A363762.P7580609062321181489

`lt[A363761(n), 0]`
-/

namespace A363762.P7580609062321181489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A363762.P7580609062321181489

/-! ## A363762.P14290781264060400035

`eq[A077594(n), A363761(n)]`
-/

namespace A363762.P14290781264060400035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363762.P14290781264060400035

/-! ## A363762.P16445942542126251539

`eq[A057428(n+1), A363761(n)]`
-/

namespace A363762.P16445942542126251539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363762.P16445942542126251539

/-! ## A363762.P6888185990953221405

`eq[1, A057428(n)*A363761(n)]`
-/

namespace A363762.P6888185990953221405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A363761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363762.P6888185990953221405

/-! ## A363762.P5907804624773306410

`comp[A077773(n)]`
-/

namespace A363762.P5907804624773306410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A363762.P5907804624773306410

/-!
# A363763: a(n) is the least k such that there are exactly n distinct numbers j that can be expressed as the sum of two squares with k^2 < j < (k+1)^2, or -1 if such a k does not exist.

The programs for A363763, there is no canonical definition to state claims against.
-/

/-! ## A363763.P12021497036009928610

`A363761(n)%(2*n+7)`
-/

namespace A363763.P12021497036009928610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363761 n) (2 * n + 7 : ℤ)

end

end A363763.P12021497036009928610

/-! ## A363763.P8531694487413946702

`A363761(n*A178334(n))`
-/

namespace A363763.P8531694487413946702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 ((n : ℤ) * A178334 n).toNat

end

end A363763.P8531694487413946702

/-! ## A363763.P17423265992521891949

`A363761(char[A175687(n)]+n)`
-/

namespace A363763.P17423265992521891949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175687 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A363763.P17423265992521891949

/-! ## A363763.P11176735601629029258

`A363761(n-char[A175687(n)])`
-/

namespace A363763.P11176735601629029258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175687 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A363763.P11176735601629029258

/-! ## A363763.P9694417768771456424

`A363761(A112802(n+1)+n)`
-/

namespace A363763.P9694417768771456424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 (A112802 (n + 1) + (n : ℤ)).toNat

end

end A363763.P9694417768771456424

/-! ## A363763.P3552915581491496398

`A363761(char[A081648(n+1)]+n)`
-/

namespace A363763.P3552915581491496398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A363763.P3552915581491496398

/-! ## A363763.P1272755110427890136

`A363761(char[A175537(n+1)]+n)`
-/

namespace A363763.P1272755110427890136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175537 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A363763.P1272755110427890136

/-! ## A363763.P14971349137970306345

`A363761(char[A237035(n+1)]+n)`
-/

namespace A363763.P14971349137970306345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237035 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A363763.P14971349137970306345

/-! ## A363763.P7012161768996712431

`A363761(n)+char[A171584(n+2)]`
-/

namespace A363763.P7012161768996712431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171584 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A363763.P7012161768996712431

/-! ## A363763.P15766112240074708520

`A363761(n)+char[A349639(n+3)]`
-/

namespace A363763.P15766112240074708520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349639 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A363763.P15766112240074708520

/-!
# A363765: Lexicographically earliest sequence of numbers in a hexagonal spiral such that their neighbors have no common digit.

The programs for A363765, there is no canonical definition to state claims against.
-/

/-! ## A363765.P11401218882623332545

`n*gcd(4, A337197(n+3))`
-/

namespace A363765.P11401218882623332545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 4 (A337197 (n + 3))

end

end A363765.P11401218882623332545

/-! ## A363765.P16233305698230675083

`n*A198339(C(n, 9)+1)`
-/

namespace A363765.P16233305698230675083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A198339 (Nat.choose n 9 + 1)

end

end A363765.P16233305698230675083

/-! ## A363765.P3003605711917257745

`n*A320732(C(n, 9)+1)`
-/

namespace A363765.P3003605711917257745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A320732 (Nat.choose n 9 + 1)

end

end A363765.P3003605711917257745

/-! ## A363765.P16826880567305199791

`n*A354614(∑[n+1])²`
-/

namespace A363765.P16826880567305199791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A354614 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A363765.P16826880567305199791

/-! ## A363765.P17732456248656867613

`A191923(A161949(n+1))`
-/

namespace A363765.P17732456248656867613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191923 (A161949 (n + 1)).toNat

end

end A363765.P17732456248656867613

/-!
# A363769: Integers k such that the number of binary partitions of 2k is not a sum of three squares.

The programs for A363769, there is no canonical definition to state claims against.
-/

/-! ## A363769.P5897937821720855283

`filter[A248056(n+1), A292077(#)]`
-/

namespace A363769.P5897937821720855283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A363769.P5897937821720855283

/-! ## A363769.P13646582408266647261

`filter[A036554(2*(n+1)), A292077(#)]`
-/

namespace A363769.P13646582408266647261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A363769.P13646582408266647261

/-! ## A363769.P4897964397833052001

`∩[A085833(n+1), A248056(n+1)]`
-/

namespace A363769.P4897964397833052001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363769.P4897964397833052001

/-! ## A363769.P1200253695641448746

`∩[A091072(n+1), A248056(n+1)]`
-/

namespace A363769.P1200253695641448746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363769.P1200253695641448746

/-! ## A363769.P11876157334054970161

`∩[A225836(n+1), A248056(n+1)]`
-/

namespace A363769.P11876157334054970161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363769.P11876157334054970161

/-! ## A363769.P11871536753218072542

`∩[A248056(n+1), A338691(n+1)]`
-/

namespace A363769.P11871536753218072542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363769.P11871536753218072542

/-! ## A363769.P3173645239556065492

`∩[A248056(n+1), A343500(n+1)]`
-/

namespace A363769.P3173645239556065492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363769.P3173645239556065492

/-!
# A363770: Integers k such that the number of binary partitions of k is not a sum of three squares.

The programs for A363770, there is no canonical definition to state claims against.
-/

/-! ## A363770.P1161613316192309251

`lt[3, A002828(A018819(n))]`
-/

namespace A363770.P1161613316192309251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A018819 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A363770.P1161613316192309251

/-! ## A363770.P14709229716825902796

`eq[4, A002828(A357476(n)+A255738(n+1))]`
-/

namespace A363770.P14709229716825902796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A357476 n + A255738 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363770.P14709229716825902796

/-!
# A363772: Number of graphs (with n edges) admitting a strictly matched involution.

The programs for A363772, there is no canonical definition to state claims against.
-/

/-! ## A363772.P16925276483570935997

`A269403(A029035(n))`
-/

namespace A363772.P16925276483570935997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269403 (A029035 n).toNat

end

end A363772.P16925276483570935997

/-! ## A363772.P11808827696371255487

`A269403(A205216(n))`
-/

namespace A363772.P11808827696371255487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269403 (A205216 n).toNat

end

end A363772.P11808827696371255487

/-! ## A363772.P15898926615643073001

`A269403(A355358(n))`
-/

namespace A363772.P15898926615643073001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269403 (A355358 n).toNat

end

end A363772.P15898926615643073001

/-! ## A363772.P11752475322077797413

`A161336(A035360(n)+1)`
-/

namespace A363772.P11752475322077797413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161336 (A035360 n + 1).toNat

end

end A363772.P11752475322077797413

/-! ## A363772.P7639199720330036978

`A269403(A153178(n+1))`
-/

namespace A363772.P7639199720330036978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269403 (A153178 (n + 1)).toNat

end

end A363772.P7639199720330036978

/-!
# A363773: a(n) = (4^(n+1) + (-1)^n + 5)/10.

The programs for A363773, the canonical program `A363773.P7965947977853477985` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363773 has offset 0).

The definition of A363773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363773.P7965947977853477985

`1+A037481(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363773

/-- `1+A037481(n)` -/
def P7965947977853477985.Spec : Prop :=
  ∀ n, P7965947977853477985.a n = A363773 n

theorem P7965947977853477985.correct : P7965947977853477985.Spec := by
  intro n
  simp only [A363773]

end A363773

/-! ## A363773.P15156331002441011728

`(4^(n+1)+(-1)^n+5)/10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363773.P15156331002441011728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) + (-1) ^ n + 5 : ℚ) / 10

end

end A363773.P15156331002441011728

namespace A363773

/-- `(4^(n+1)+(-1)^n+5)/10` -/
def P15156331002441011728.Spec : Prop :=
  ∀ n, P15156331002441011728.a n = (A363773 n : ℚ)

end A363773

/-! ## A363773.P926428192572090136

`∑[ogf((-1+2x+2x^2)/(-1+3x+4x^2))]`
-/

namespace A363773.P926428192572090136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -3, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363773.P926428192572090136

namespace A363773

/-- `∑[ogf((-1+2x+2x^2)/(-1+3x+4x^2))]` -/
def P926428192572090136.Spec : Prop :=
  ∀ n, P926428192572090136.a n = A363773 n

end A363773

/-! ## A363773.P11913104182534632284

`ogf((-1+2x+2x^2)/(-1+4x+x^2-4x^3))`
-/

namespace A363773.P11913104182534632284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -4, -1, 4] n

end

end A363773.P11913104182534632284

namespace A363773

/-- `ogf((-1+2x+2x^2)/(-1+4x+x^2-4x^3))` -/
def P11913104182534632284.Spec : Prop :=
  ∀ n, P11913104182534632284.a n = A363773 n

end A363773

/-! ## A363773.P13507139993544682732

`4^n/2+1-a(n-1)` with `a(0)=1`
-/

namespace A363773.P13507139993544682732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℚ) / 2 + 1 - a (n - 1)

end

end A363773.P13507139993544682732

namespace A363773

/-- `4^n/2+1-a(n-1)` -/
def P13507139993544682732.Spec : Prop :=
  ∀ n, P13507139993544682732.a n = (A363773 n : ℚ)

end A363773

/-! ## A363773.P8431186641160581211

`4*a(n-1)-(n%2+1)` with `a(0)=1`
-/

namespace A363773.P8431186641160581211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - ((n % 2 + 1 : ℕ) : ℤ)

end

end A363773.P8431186641160581211

namespace A363773

/-- `4*a(n-1)-(n%2+1)` -/
def P8431186641160581211.Spec : Prop :=
  ∀ n, P8431186641160581211.a n = A363773 n

end A363773

/-! ## A363773.P2720767357863141623

`4*a(n-1)-gcd(2, n+1)` with `a(0)=1`
-/

namespace A363773.P2720767357863141623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A363773.P2720767357863141623

namespace A363773

/-- `4*a(n-1)-gcd(2, n+1)` -/
def P2720767357863141623.Spec : Prop :=
  ∀ n, P2720767357863141623.a n = A363773 n

end A363773

/-! ## A363773.P13682830236034392156

`4*a(n-1)-a(n-2)%3` with `a(0)=1, a(1)=2`
-/

namespace A363773.P13682830236034392156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - Int.tmod (a (n - 2)) 3

end

end A363773.P13682830236034392156

namespace A363773

/-- `4*a(n-1)-a(n-2)%3` -/
def P13682830236034392156.Spec : Prop :=
  ∀ n, P13682830236034392156.a n = A363773 n

end A363773

/-! ## A363773.P3663928891676423593

`4*a(n-1)-(3-gcd(4, a(n-1)))` with `a(0)=1`
-/

namespace A363773.P3663928891676423593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (3 - (Int.gcd 4 (a (n - 1)) : ℤ))

end

end A363773.P3663928891676423593

namespace A363773

/-- `4*a(n-1)-(3-gcd(4, a(n-1)))` -/
def P3663928891676423593.Spec : Prop :=
  ∀ n, P3663928891676423593.a n = A363773 n

end A363773

/-! ## A363773.P15352211814603115400

`3*(a(n-1)-1)+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A363773.P15352211814603115400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (a (n - 1) - 1) + 4 * a (n - 2)

end

end A363773.P15352211814603115400

namespace A363773

/-- `3*(a(n-1)-1)+4*a(n-2)` -/
def P15352211814603115400.Spec : Prop :=
  ∀ n, P15352211814603115400.a n = A363773 n

end A363773

/-! ## A363773.P1367758030894978514

`4*a(n-2)-3*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A363773.P1367758030894978514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) - 3 * (1 - a (n - 1))

end

end A363773.P1367758030894978514

namespace A363773

/-- `4*a(n-2)-3*(1-a(n-1))` -/
def P1367758030894978514.Spec : Prop :=
  ∀ n, P1367758030894978514.a n = A363773 n

end A363773

/-! ## A363773.P7016334149047794640

`A256494(2*(n+1))`
-/

namespace A363773.P7016334149047794640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (2 * (n + 1))

end

end A363773.P7016334149047794640

namespace A363773

/-- `A256494(2*(n+1))` -/
def P7016334149047794640.Spec : Prop :=
  ∀ n, P7016334149047794640.a n = A363773 n

end A363773

/-! ## A363773.P13847292262491578835

`A115243(n)/2+1`
-/

namespace A363773.P13847292262491578835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115243 n : ℚ) / 2 + 1

end

end A363773.P13847292262491578835

namespace A363773

/-- `A115243(n)/2+1` -/
def P13847292262491578835.Spec : Prop :=
  ∀ n, P13847292262491578835.a n = (A363773 n : ℚ)

end A363773

/-! ## A363773.P3456176333414168986

`A102900(n)+and(1, n)`
-/

namespace A363773.P3456176333414168986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102900 n + (Nat.land 1 n : ℤ)

end

end A363773.P3456176333414168986

namespace A363773

/-- `A102900(n)+and(1, n)` -/
def P3456176333414168986.Spec : Prop :=
  ∀ n, P3456176333414168986.a n = A363773 n

end A363773

/-! ## A363773.P7147877132328795201

`round(A015521(n+1)/2)`
-/

namespace A363773.P7147877132328795201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A015521 (n + 1) : ℚ) / 2)

end

end A363773.P7147877132328795201

namespace A363773

/-- `round(A015521(n+1)/2)` -/
def P7147877132328795201.Spec : Prop :=
  ∀ n, P7147877132328795201.a n = A363773 n

end A363773

/-! ## A363773.P9835061452033419681

`Δ[A368346(2*n)]+1`
-/

namespace A363773.P9835061452033419681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368346 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A363773.P9835061452033419681

namespace A363773

/-- `Δ[A368346(2*n)]+1` -/
def P9835061452033419681.Spec : Prop :=
  ∀ n, P9835061452033419681.a n = A363773 n

end A363773

/-! ## A363773.P17408376075485407126

`round(A007909(2*n+1)/2)`
-/

namespace A363773.P17408376075485407126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007909 (2 * n + 1) : ℚ) / 2)

end

end A363773.P17408376075485407126

namespace A363773

/-- `round(A007909(2*n+1)/2)` -/
def P17408376075485407126.Spec : Prop :=
  ∀ n, P17408376075485407126.a n = A363773 n

end A363773

/-! ## A363773.P10431549809684424413

`A109765(n)+A005578(n)`
-/

namespace A363773.P10431549809684424413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109765 n + A005578 n

end

end A363773.P10431549809684424413

namespace A363773

/-- `A109765(n)+A005578(n)` -/
def P10431549809684424413.Spec : Prop :=
  ∀ n, P10431549809684424413.a n = A363773 n

end A363773

/-! ## A363773.P16123854156084639684

`xor(A010684(n), A037481(n))`
-/

namespace A363773.P16123854156084639684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A037481 n)

end

end A363773.P16123854156084639684

namespace A363773

/-- `xor(A010684(n), A037481(n))` -/
def P16123854156084639684.Spec : Prop :=
  ∀ n, P16123854156084639684.a n = A363773 n

end A363773

/-! ## A363773.P14643683201842632164

`xor(A010674(n), A102900(n))`
-/

namespace A363773.P14643683201842632164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A102900 n)

end

end A363773.P14643683201842632164

namespace A363773

/-- `xor(A010674(n), A102900(n))` -/
def P14643683201842632164.Spec : Prop :=
  ∀ n, P14643683201842632164.a n = A363773 n

end A363773

/-!
# A363775: Expansion of 1/(Sum_{k>=0} x^(k^2))^3.

The programs for A363775, there is no canonical definition to state claims against.
-/

/-! ## A363775.P17812188203438789250

`A363778(A000217(n+4)-4)`
-/

namespace A363775.P17812188203438789250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A000217 (n + 4) - 4).toNat

end

end A363775.P17812188203438789250

/-! ## A363775.P14968904466391377484

`A363778(A115744(n+1)+n)`
-/

namespace A363775.P14968904466391377484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A115744 (n + 1) + (n : ℤ)).toNat

end

end A363775.P14968904466391377484

/-! ## A363775.P4869380486148812613

`A363778(A141214(n)+n+3)`
-/

namespace A363775.P4869380486148812613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A141214 n + (n + 3 : ℤ)).toNat

end

end A363775.P4869380486148812613

/-! ## A363775.P18371642728699449329

`A363778(A010785(n)+A000217(n+3))`
-/

namespace A363775.P18371642728699449329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A010785 n + A000217 (n + 3)).toNat

end

end A363775.P18371642728699449329

/-! ## A363775.P14784668645819990629

`A363778(A225693(n)+A000217(n+3))`
-/

namespace A363775.P14784668645819990629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A225693 n + A000217 (n + 3)).toNat

end

end A363775.P14784668645819990629

/-!
# A363777: Expansion of 1/(Sum_{k>=0} x^(k^3))^3.

The programs for A363777, there is no canonical definition to state claims against.
-/

/-! ## A363777.P4563818956011679890

`A363779(A000217(n+4)-4)`
-/

namespace A363777.P4563818956011679890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363779 (A000217 (n + 4) - 4).toNat

end

end A363777.P4563818956011679890

/-! ## A363777.P13204769434807503111

`A363779(A029970(n+1)+A000217(n+3))`
-/

namespace A363777.P13204769434807503111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363779 (A029970 (n + 1) + A000217 (n + 3)).toNat

end

end A363777.P13204769434807503111

/-! ## A363777.P3015902691578430050

`A363779(A005843(2*n+3)+A000217(n))`
-/

namespace A363777.P3015902691578430050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363779 (A005843 (2 * n + 3) + A000217 n).toNat

end

end A363777.P3015902691578430050

/-!
# A363778: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 1/(Sum_{j>=0} x^(j^2))^k.

The programs for A363778, there is no canonical definition to state claims against.
-/

/-! ## A363778.P4951076694453134383

`A110555(n)-A327932(A358307(2*n+3))`
-/

namespace A363778.P4951076694453134383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A327932 (A358307 (2 * n + 3)).toNat

end

end A363778.P4951076694453134383

/-! ## A363778.P4086151545074002132

`A110555(n)*A188031(A265656(n+1))`
-/

namespace A363778.P4086151545074002132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n * A188031 (A265656 (n + 1)).toNat

end

end A363778.P4086151545074002132

/-! ## A363778.P15779268594297112400

`A100810(A100796(3*(n+1)))*A110555(n)`
-/

namespace A363778.P15779268594297112400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100810 (A100796 (3 * (n + 1))).toNat * A110555 n

end

end A363778.P15779268594297112400

/-! ## A363778.P8226458329137898664

`A110555(n)-A162782(A026816(n)+1)`
-/

namespace A363778.P8226458329137898664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A162782 (A026816 n + 1).toNat

end

end A363778.P8226458329137898664

/-! ## A363778.P10528510870938736898

`A110555(n)-A353557(A000292(3*n+4))`
-/

namespace A363778.P10528510870938736898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A353557 (A000292 (3 * n + 4)).toNat

end

end A363778.P10528510870938736898

/-!
# A363783: L.g.f.: log( Sum_{k>=0} x^(k^3) ).

The programs for A363783, there is no canonical definition to state claims against.
-/

/-! ## A363783.P9046290025249127051

`A177219(2^n+n+1-A047592(n+1))`
-/

namespace A363783.P9046290025249127051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177219 ((2 ^ n + (n + 1) : ℤ) - A047592 (n + 1)).toNat

end

end A363783.P9046290025249127051

/-!
# A363784: L.g.f.: log( Sum_{k>=0} x^(k^4) ).

The programs for A363784, there is no canonical definition to state claims against.
-/

/-! ## A363784.P1944862383101007304

`Δ[and(n, A046582(A288683(n)+1))]`
-/

namespace A363784.P1944862383101007304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A046582 (A288683 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363784.P1944862383101007304

/-! ## A363784.P10821467787856599947

`Δ[and(n, A068744(n+2))]`
-/

namespace A363784.P10821467787856599947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A068744 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363784.P10821467787856599947

/-! ## A363784.P14547172942508279833

`Δ[and(n, A028372(2*(n+1)))]`
-/

namespace A363784.P14547172942508279833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A028372 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363784.P14547172942508279833

/-! ## A363784.P5995521557864078900

`Δ[and(n, A106200(2*n+3))]`
-/

namespace A363784.P5995521557864078900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A106200 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363784.P5995521557864078900

/-! ## A363784.P5424066738038672919

`Δ[and(n, A334988(A277086(n)))]`
-/

namespace A363784.P5424066738038672919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A334988 (A277086 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363784.P5424066738038672919

/-!
# A363785: A variant of payphone permutations: given a row of n payphones, a(n) is the number ways for n people to choose the payphones in order, where each person chooses an unoccupied payphone such that the closest occupied payphone is as distant as possible, and a payphone adjacent to a single occupied payphone is preferred over a payphone sandwiched between two occupied payphones.

The programs for A363785, there is no canonical definition to state claims against.
-/

/-! ## A363785.P6007163256826449306

`A303704(A173397(n+1))`
-/

namespace A363785.P6007163256826449306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303704 (A173397 (n + 1)).toNat

end

end A363785.P6007163256826449306

/-! ## A363785.P9675509616515716466

`A392071(A094866(n+3))`
-/

namespace A363785.P9675509616515716466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392071 (A094866 (n + 3)).toNat

end

end A363785.P9675509616515716466

/-! ## A363785.P4250008446460160759

`A175181(A362642(n)+n)`
-/

namespace A363785.P4250008446460160759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A362642 n + (n : ℤ)).toNat

end

end A363785.P4250008446460160759

/-!
# A363787: Primitive binary Niven numbers: binary Niven numbers (A049445) that are not twice another binary Niven number.

The programs for A363787, there is no canonical definition to state claims against.
-/

/-! ## A363787.P7056901440197940888

`∪[A144302(n+1), A363788(n+1)]`
-/

namespace A363787.P7056901440197940888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363787.P7056901440197940888

/-! ## A363787.P8955139034124176223

`filter[A049445(n+1), A135993(#)]`
-/

namespace A363787.P8955139034124176223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135993 (f1 j).toNat = 1) n)

end

end A363787.P8955139034124176223

/-!
# A363788: Even primitive binary Niven numbers: even terms of A363787.

The programs for A363788, there is no canonical definition to state claims against.
-/

/-! ## A363788.P9003959814588020685

`∩[2*n, A363787(n+1)]`
-/

namespace A363788.P9003959814588020685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363788.P9003959814588020685

/-! ## A363788.P709751321565716393

`filter[A363787(n+1), A254377(#)]`
-/

namespace A363788.P709751321565716393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254377 (f1 j).toNat = 1) n)

end

end A363788.P709751321565716393

/-! ## A363788.P14738868304578113891

`∩[A363787(n+1), A005843(n)]`
-/

namespace A363788.P14738868304578113891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363788.P14738868304578113891

/-! ## A363788.P9547843186851860037

`∩[A363787(n+1), A020739(n)]`
-/

namespace A363788.P9547843186851860037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363788.P9547843186851860037

/-! ## A363788.P7716080218658662346

`∩[A363787(n+1), A004273(n)-1]`
-/

namespace A363788.P7716080218658662346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363788.P7716080218658662346

/-! ## A363788.P3816506151114519599

`∩[A363787(n+1), A051755(n+2)]`
-/

namespace A363788.P3816506151114519599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363788.P3816506151114519599

/-! ## A363788.P195748024542706124

`filter[A363787(n+1), A010059(#)]`
-/

namespace A363788.P195748024542706124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A363788.P195748024542706124

/-! ## A363788.P14061172359455193253

`filter[A363787(n+1), A059841(#)]`
-/

namespace A363788.P14061172359455193253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A363788.P14061172359455193253

/-! ## A363788.P1610552948783785638

`filter[A363787(n+1), A092436(#)]`
-/

namespace A363788.P1610552948783785638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A363788.P1610552948783785638

/-! ## A363788.P2579183373740794463

`filter[A363787(n+1), A267043(#)]`
-/

namespace A363788.P2579183373740794463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A363788.P2579183373740794463

/-! ## A363788.P9367269761487342529

`filter[A363787(n+2), A135528(#)]`
-/

namespace A363788.P9367269761487342529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A363788.P9367269761487342529

/-! ## A363788.P2044287324178372967

`filter[A363787(n+2), A266591(#)]`
-/

namespace A363788.P2044287324178372967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A363788.P2044287324178372967

/-! ## A363788.P16859758366042760692

`filter[A363787(n+1), A127245(#)]`
-/

namespace A363788.P16859758366042760692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127245 (f1 j).toNat = 1) n)

end

end A363788.P16859758366042760692

/-!
# A363789: a(n) is the smallest primitive binary Niven number (A363787) whose binary representation is ending with n zeros.

The programs for A363789, the canonical program `A363789.P1663472503739411414` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363789 has offset 0).

The definition of A363789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363789.P1663472503739411414

`(2^2^n-1)*2^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363789

/-- `(2^2^n-1)*2^n` -/
def P1663472503739411414.Spec : Prop :=
  ∀ n, P1663472503739411414.a n = A363789 n

theorem P1663472503739411414.correct : P1663472503739411414.Spec := by
  intro n
  simp only [A363789]

end A363789

/-! ## A363789.P4968998934185783092

`A066524(2^n)`
-/

namespace A363789.P4968998934185783092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (2 ^ n)

end

end A363789.P4968998934185783092

namespace A363789

/-- `A066524(2^n)` -/
def P4968998934185783092.Spec : Prop :=
  ∀ n, P4968998934185783092.a n = A363789 n

theorem P4968998934185783092.correct : P4968998934185783092.Spec := by
  intro n
  simp only [A363789, Nat.add_sub_cancel, A363789.P4968998934185783092.a, A363789.P1663472503739411414.a, A066524, A066524.P7942145865934771605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363789

/-! ## A363789.P16147660735470371254

`A143115(2^n)`
-/

namespace A363789.P16147660735470371254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143115 (2 ^ n)

end

end A363789.P16147660735470371254

namespace A363789

/-- `A143115(2^n)` -/
def P16147660735470371254.Spec : Prop :=
  ∀ n, P16147660735470371254.a n = A363789 n

end A363789

/-! ## A363789.P9605752779324147125

`lcm(2^n, A000225(2^n))`
-/

namespace A363789.P9605752779324147125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A000225 (2 ^ n))

end

end A363789.P9605752779324147125

namespace A363789

/-- `lcm(2^n, A000225(2^n))` -/
def P9605752779324147125.Spec : Prop :=
  ∀ n, (P9605752779324147125.a n : ℤ) = A363789 n

end A363789

/-! ## A363789.P4951216015199364104

`A374348(A000079(n))`
-/

namespace A363789.P4951216015199364104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374348 (A000079 n).toNat

end

end A363789.P4951216015199364104

namespace A363789

/-- `A374348(A000079(n))` -/
def P4951216015199364104.Spec : Prop :=
  ∀ n, P4951216015199364104.a n = A363789 n

end A363789

/-!
# A363790: Numbers k such that k and k+1 are both primitive binary Niven numbers (A363787).

The programs for A363790, there is no canonical definition to state claims against.
-/

/-! ## A363790.P7727331865199248984

`∩[A363787(n+1)-1, A363787(n+1)]`
-/

namespace A363790.P7727331865199248984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363790.P7727331865199248984

/-! ## A363790.P18021873122264366478

`∩[A363787(n+1), A023443(A363787(n+1))]`
-/

namespace A363790.P18021873122264366478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A363787 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363790.P18021873122264366478

/-!
# A363792: Starts of runs of 4 consecutive integers that are primitive binary Niven numbers (A363787).

The programs for A363792, there is no canonical definition to state claims against.
-/

/-! ## A363792.P15417181167072819723

`∩[A330933(n+1), A363791(n+1)]`
-/

namespace A363792.P15417181167072819723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363792.P15417181167072819723

/-!
# A363795: Number of divisors of n of the form 7*k + 2.

The programs for A363795, the canonical program `A363795.P880079998585685375` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363795 has offset 1).

The definition of A363795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363795.P880079998585685375

`A279061(n+1)-A373336(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A363795

/-- `A279061(n+1)-A373336(n+1)` -/
def P880079998585685375.Spec : Prop :=
  ∀ n, P880079998585685375.a n = A363795 (n + 1)

theorem P880079998585685375.correct : P880079998585685375.Spec := by
  intro n
  simp only [A363795, Nat.add_sub_cancel]

end A363795

/-! ## A363795.P11840728886601215838

`A363806(2*(n+1))-A363806(A000265(n+1))`
-/

namespace A363795.P11840728886601215838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (2 * (n + 1)) - A363806 (A000265 (n + 1)).toNat

end

end A363795.P11840728886601215838

namespace A363795

/-- `A363806(2*(n+1))-A363806(A000265(n+1))` -/
def P11840728886601215838.Spec : Prop :=
  ∀ n, P11840728886601215838.a n = A363795 (n + 1)

end A363795

/-! ## A363795.P2899956350219169238

`A389836(A340765(n+2))`
-/

namespace A363795.P2899956350219169238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389836 (A340765 (n + 2)).toNat

end

end A363795.P2899956350219169238

namespace A363795

/-- `A389836(A340765(n+2))` -/
def P2899956350219169238.Spec : Prop :=
  ∀ n, P2899956350219169238.a n = A363795 (n + 1)

end A363795

/-! ## A363795.P14130433646753793096

`A362802(A078812(n))+A000035(n)`
-/

namespace A363795.P14130433646753793096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362802 (A078812 n).toNat + A000035 n

end

end A363795.P14130433646753793096

namespace A363795

/-- `A362802(A078812(n))+A000035(n)` -/
def P14130433646753793096.Spec : Prop :=
  ∀ n, P14130433646753793096.a n = A363795 (n + 1)

end A363795

/-! ## A363795.P5807218432704573304

`A124766(and(A347446(2*(n+2)), A363028(n+2)))`
-/

namespace A363795.P5807218432704573304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.land (A347446 (2 * (n + 2))) (A363028 (n + 2))).toNat

end

end A363795.P5807218432704573304

namespace A363795

/-- `A124766(and(A347446(2*(n+2)), A363028(n+2)))` -/
def P5807218432704573304.Spec : Prop :=
  ∀ n, P5807218432704573304.a n = A363795 (n + 1)

end A363795

/-!
# A363797: Numbers k such that 3^k + 2*k is prime.

The programs for A363797, there is no canonical definition to state claims against.
-/

/-! ## A363797.P15546635511515098308

`eq[3, A363796(n+1)]+1`
-/

namespace A363797.P15546635511515098308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363797.P15546635511515098308

/-!
# A363798: Numbers k such that there is no prime p for which p^k + 2*k is prime.

The programs for A363798, there is no canonical definition to state claims against.
-/

/-! ## A363798.P5639130861324899734

`lt[A363796(n+1), 0]+1`
-/

namespace A363798.P5639130861324899734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A363798.P5639130861324899734

/-! ## A363798.P17690937889597666467

`lt[A363796(A028310(n)), 0]`
-/

namespace A363798.P17690937889597666467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363796 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A363798.P17690937889597666467

