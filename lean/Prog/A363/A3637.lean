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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A363700: a(n) = phi(2*prime(n)+1).

The programs for A363700, the canonical program `A363700.P260169160626922395` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363700 has offset 1).

The definition of A363700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(2*A000040(n+1)+1)` (program `A363700.P260169160626922395`, by `A363700.P260169160626922395.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
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

/-! ## A363700.P260169160626922395

`A000010(2*A000040(n+1)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363700

/-- `A000010(2*A000040(n+1)+1)` -/
def P260169160626922395.Spec : Prop :=
  ∀ n, P260169160626922395.a n = A363700 (n + 1)

theorem P260169160626922395.correct : P260169160626922395.Spec := by
  intro n
  simp only [A363700, Nat.add_sub_cancel]

end A363700

/-! ## A363700.P13614704223880734762

`A037225(A000040(n+1))`
-/

namespace A363700.P13614704223880734762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A000040 (n + 1)).toNat

end

end A363700.P13614704223880734762

namespace A363700

/-- `A037225(A000040(n+1))` -/
def P13614704223880734762.Spec : Prop :=
  ∀ n, P13614704223880734762.a n = A363700 (n + 1)

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

theorem P18209360030801997863.correct : P18209360030801997863.Spec := by
  intro n
  simp only [A363700, Nat.add_sub_cancel, A363700.P18209360030801997863.a, A363700.P260169160626922395.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

theorem P10212223854985654468.correct : P10212223854985654468.Spec := by
  intro n
  simp only [A363700, Nat.add_sub_cancel, A363700.P10212223854985654468.a, A363700.P260169160626922395.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363700

/-! ## A363700.P9674146979255963295

`A000010(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A363700.P9674146979255963295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1) + A000040 (n + 1) + 1).toNat

end

end A363700.P9674146979255963295

namespace A363700

/-- `A000010(A000040(n+1)+A000040(n+1)+1)` -/
def P9674146979255963295.Spec : Prop :=
  ∀ n, P9674146979255963295.a n = A363700 (n + 1)

theorem P9674146979255963295.correct : P9674146979255963295.Spec := by
  intro n
  simp only [A363700, Nat.add_sub_cancel, A363700.P9674146979255963295.a, A363700.P260169160626922395.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-!
# A363705: The minimum irregularity of all maximal 2-degenerate graphs with n vertices.

The programs for A363705, the canonical program `A363705.P13490967832821953212` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363705 has offset 3).

The definition of A363705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363705.P13490967832821953212

`ogf((4x-2x^2+4x^3+2x^4)/(1-x))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363705

/-- `ogf((4x-2x^2+4x^3+2x^4)/(1-x))` -/
def P13490967832821953212.Spec : Prop :=
  ∀ n, P13490967832821953212.a n = A363705 (n + 3)

theorem P13490967832821953212.correct : P13490967832821953212.Spec := by
  intro n
  simp only [A363705, Nat.add_sub_cancel]

end A363705

/-!
# A363706: a(n) is the sigma irregularity of the n-th power of a path graph of length at least 3*n.

The programs for A363706, the canonical program `A363706.P5852232163170739640` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363706 has offset 1).

The definition of A363706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363706.P10562729656362719049

`ogf((2+4x+2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A363706.P10562729656362719049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 2] [1, -5, 10, -10, 5, -1] n

end

end A363706.P10562729656362719049

namespace A363706

/-- `ogf((2+4x+2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10562729656362719049.Spec : Prop :=
  ∀ n, P10562729656362719049.a n = A363706 (n + 1)

end A363706

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

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A363706

/-- `2*A006325(n+2)` -/
def P5852232163170739640.Spec : Prop :=
  ∀ n, P5852232163170739640.a n = A363706 (n + 1)

theorem P5852232163170739640.correct : P5852232163170739640.Spec := by
  intro n
  simp only [A363706, Nat.add_sub_cancel]

end A363706

/-! ## A363706.P16722203616059737797

`∑[∑[or(2, ∑[8*n])]]`
-/

namespace A363706.P16722203616059737797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P16722203616059737797

namespace A363706

/-- `∑[∑[or(2, ∑[8*n])]]` -/
def P16722203616059737797.Spec : Prop :=
  ∀ n, (P16722203616059737797.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P3612102831951468232

`∑[∑[xor(2, ∑[8*n])]]`
-/

namespace A363706.P3612102831951468232
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P3612102831951468232

namespace A363706

/-- `∑[∑[xor(2, ∑[8*n])]]` -/
def P3612102831951468232.Spec : Prop :=
  ∀ n, (P3612102831951468232.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P4243037875124205975

`∑[∑[record[xor(1, n)²+1]]]`
-/

namespace A363706.P4243037875124205975
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P4243037875124205975

namespace A363706

/-- `∑[∑[record[xor(1, n)²+1]]]` -/
def P4243037875124205975.Spec : Prop :=
  ∀ n, (P4243037875124205975.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P15974497150863912012

`∑[∑[filter[n²+1, val(#, 2)]]]`
-/

namespace A363706.P15974497150863912012
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f3 j) 2 = 1) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P15974497150863912012

namespace A363706

/-- `∑[∑[filter[n²+1, val(#, 2)]]]` -/
def P15974497150863912012.Spec : Prop :=
  ∀ n, (P15974497150863912012.a n : ℤ) = A363706 (n + 1)

end A363706

/-! ## A363706.P144312679897589460

`∑[∑[∑[8+a(n-1)]]]` with `a(0)=2, a(1)=8`
-/

namespace A363706.P144312679897589460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f3 =>
  8 + f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363706.P144312679897589460

namespace A363706

/-- `∑[∑[∑[8+a(n-1)]]]` -/
def P144312679897589460.Spec : Prop :=
  ∀ n, (P144312679897589460.a n : ℤ) = A363706 (n + 1)

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

/-!
# A363707: For n >= 2, a(n) = a(n-1) + a(n-2) + A051697(n), a(0)=0, a(1)=1.

The programs for A363707, the canonical program `A363707.P5002782806402989866` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363707 has offset 0).

The definition of A363707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363707.P5002782806402989866

`a(n-1)+a(n-2)+A051697(n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A363707

/-- `a(n-1)+a(n-2)+A051697(n)` -/
def P5002782806402989866.Spec : Prop :=
  ∀ n, P5002782806402989866.a n = A363707 n

theorem P5002782806402989866.correct : P5002782806402989866.Spec := by
  intro n
  simp only [A363707]

end A363707

/-! ## A363707.P447334219940387943

`∑[A089868(A236340(n))-1]`
-/

namespace A363707.P447334219940387943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A236340 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363707.P447334219940387943

namespace A363707

/-- `∑[A089868(A236340(n))-1]` -/
def P447334219940387943.Spec : Prop :=
  ∀ n, P447334219940387943.a n = A363707 n

end A363707

/-! ## A363707.P6493231438654975888

`A003056(A001924(n)*A061255(n))`
-/

namespace A363707.P6493231438654975888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001924 n * A061255 n).toNat

end

end A363707.P6493231438654975888

namespace A363707

/-- `A003056(A001924(n)*A061255(n))` -/
def P6493231438654975888.Spec : Prop :=
  ∀ n, P6493231438654975888.a n = A363707 n

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

/-! ## A363710.P11365138579995650106

`Δ[lt[A000027(A363930(n)+1), 2]]`
-/

namespace A363710.P11365138579995650106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A363930 n + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A363710.P11365138579995650106

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

/-! ## A363711.P12935245410085391579

`C(A365685(A305939(n+4)), A266152(n))`
-/

namespace A363711.P12935245410085391579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A365685 (A305939 (n + 4)).toNat).toNat (A266152 n).toNat

end

end A363711.P12935245410085391579

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

/-! ## A363711.P9483515127195067707

`A216279(n+5)^3^A178798(2*(n+1))`
-/

namespace A363711.P9483515127195067707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A216279 (n + 5) : ℝ) ^ ((3 : ℚ) ^ (A178798 (2 * (n + 1)) : ℤ) : ℝ)

end

end A363711.P9483515127195067707

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

/-! ## A363712.P440635417238542671

`Δ[fp[A100291(n+1)]]`
-/

namespace A363712.P440635417238542671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A363712.P440635417238542671

/-! ## A363712.P9911821254981848020

`char[A100291(1+n)-1]`
-/

namespace A363712.P9911821254981848020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A363712.P9911821254981848020

/-! ## A363712.P13722259431909998546

`A063524(A266363(n))`
-/

namespace A363712.P13722259431909998546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A266363 n).toNat

end

end A363712.P13722259431909998546

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

/-! ## A363713.P4820137104352105533

`char[A016729(n+1)*A016729(A317944(n+1))]`
-/

namespace A363713.P4820137104352105533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (n + 1) * A016729 (A317944 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A363713.P4820137104352105533

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

/-! ## A363713.P14092373576007245394

`and(char[A001694(n+1)], A358103(2*n+5))`
-/

namespace A363713.P14092373576007245394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A358103 (2 * n + 5))

end

end A363713.P14092373576007245394

/-!
# A363714: Numbers that are the sum of a positive square and a positive fourth power in more than one way.

The programs for A363714, there is no canonical definition to state claims against.
-/

/-! ## A363714.P7759027427344974087

`lt[1, A363711(n+1)]+1`
-/

namespace A363714.P7759027427344974087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363714.P7759027427344974087

/-! ## A363714.P17855987995290031856

`eq[8, A136612(10*a(A363711(n))+1)]` with `a(0)=7`
-/

namespace A363714.P17855987995290031856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A136612 (10 * f2 (A363711 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363714.P17855987995290031856

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

/-! ## A363718.P12689304985393734322

`Δ[record[n-A296062(n)]]`
-/

namespace A363718.P12689304985393734322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A296062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363718.P12689304985393734322

namespace A363718

/-- `Δ[record[n-A296062(n)]]` -/
def P12689304985393734322.Spec : Prop :=
  ∀ n, P12689304985393734322.a n = A363718 n

theorem P12689304985393734322.correct : P12689304985393734322.Spec := by
  intro n
  simp only [A363718, Nat.add_sub_cancel, A363718.P12689304985393734322.f2, A363718.P12689304985393734322.f1, A363718.P12689304985393734322.a, A363718.P3369360157164842008.f2, A363718.P3369360157164842008.f1, A363718.P3369360157164842008.a, A268289, A268289.P17910930367041413554.a, A296062, A296062.P5761383797540387978.a, A037861, A037861.P603769739827553154.a, A000120, A000120.P2816527436160941581.a, A023416, A023416.P8124303482289229133.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-! ## A363718.P2568746371699983757

`A145037(lt[A194812(2*(n+2)), A145037(n)])`
-/

namespace A363718.P2568746371699983757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194812 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363718.P2568746371699983757

namespace A363718

/-- `A145037(lt[A194812(2*(n+2)), A145037(n)])` -/
def P2568746371699983757.Spec : Prop :=
  ∀ n, P2568746371699983757.a n = A363718 n

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

/-! ## A363719.P13360813419918675084

`A363728(n+1)+Δ[A006218(n)]`
-/

namespace A363719.P13360813419918675084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (n + 1) + (f1 (n + 1) - f1 n)

end

end A363719.P13360813419918675084

/-! ## A363719.P1804182174542949112

`A363728(1+n)+Δ[A054519(n)]`
-/

namespace A363719.P1804182174542949112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (1 + n) + (f1 (n + 1) - f1 n)

end

end A363719.P1804182174542949112

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

/-! ## A363719.P11189193779611520351

`A363728(n+1)+A179942(n+1)`
-/

namespace A363719.P11189193779611520351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (n + 1) + A179942 (n + 1)

end

end A363719.P11189193779611520351

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

/-! ## A363722.P9585533259656410889

`∪[A134612(1+n), A363729(n+1)]`
-/

namespace A363722.P9585533259656410889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363722.P9585533259656410889

/-! ## A363722.P13373921478048620423

`∪[A363729(1+n), A246547(n+1)]`
-/

namespace A363722.P13373921478048620423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363729 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363722.P13373921478048620423

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

/-! ## A363723.P5335724316308578614

`A060576(A282918(n))*A363719(A028310(n))`
-/

namespace A363723.P5335724316308578614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A282918 n).toNat * A363719 (A028310 n).toNat

end

end A363723.P5335724316308578614

/-! ## A363723.P5764744946684148233

`A060576(A282485(n))*A363719(A028310(n))`
-/

namespace A363723.P5764744946684148233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A282485 n).toNat * A363719 (A028310 n).toNat

end

end A363723.P5764744946684148233

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

/-! ## A363727.P9456427659697665579

`∪[9*10^n, A000961(n+2)]`
-/

namespace A363727.P9456427659697665579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * 10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363727.P9456427659697665579

/-! ## A363727.P7088148445983264720

`lt[(n+3)/3, A348977(n+1)]+1`
-/

namespace A363727.P7088148445983264720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A363727.P7088148445983264720

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

/-! ## A363728.P16734306523379880363

`A363719(1+n)-Δ[A006218(n)]`
-/

namespace A363728.P16734306523379880363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (1 + n) - (f1 (n + 1) - f1 n)

end

end A363728.P16734306523379880363

/-! ## A363728.P12333677499872162507

`A363719(1+n)-Δ[A054519(n)]`
-/

namespace A363728.P12333677499872162507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (1 + n) - (f1 (n + 1) - f1 n)

end

end A363728.P12333677499872162507

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

/-! ## A363728.P7653881581788512438

`A363719(n+1)-A179942(n+1)`
-/

namespace A363728.P7653881581788512438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (n + 1) - A179942 (n + 1)

end

end A363728.P7653881581788512438

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

/-! ## A363730.P8951739824539883384

`A357685(n+2)-A318982(A333949(n+3))`
-/

namespace A363730.P8951739824539883384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 2) - A318982 (A333949 (n + 3)).toNat

end

end A363730.P8951739824539883384

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

/-!
# A363732: Triangle read by rows. The triangle algorithm applied to (-1)^n/n!.

The programs for A363732, the canonical program `A363732.P13587029953174371264` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363732 has offset 0).

The definition of A363732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363732.P13587029953174371264

`A000110(A004736(1+n))*A130595(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A363732

/-- `A000110(A004736(1+n))*A130595(n)` -/
def P13587029953174371264.Spec : Prop :=
  ∀ n, P13587029953174371264.a n = A363732 n

theorem P13587029953174371264.correct : P13587029953174371264.Spec := by
  intro n
  simp only [A363732]

end A363732

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

The programs for A363734, the canonical program `A363734.P5058385992717790514` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363734 has offset 0).

The definition of A363734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363421, A363735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363734.P5058385992717790514

`A363735(n)-A363421(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363734

/-- `A363735(n)-A363421(n)` -/
def P5058385992717790514.Spec : Prop :=
  ∀ n, P5058385992717790514.a n = A363734 n

theorem P5058385992717790514.correct : P5058385992717790514.Spec := by
  intro n
  simp only [A363734]

end A363734

/-! ## A363734.P13973828669739108417

`2+(∏{e}[n, #+1]+1)*(n-1)`
-/

namespace A363734.P13973828669739108417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℤ) * ((n : ℤ) - 1)

end

end A363734.P13973828669739108417

namespace A363734

/-- `2+(∏{e}[n, #+1]+1)*(n-1)` -/
def P13973828669739108417.Spec : Prop :=
  ∀ n, P13973828669739108417.a n = A363734 n

theorem P13973828669739108417.correct : P13973828669739108417.Spec := by
  intro n
  simp only [A363734, Nat.add_sub_cancel, A363734.P13973828669739108417.f1, A363734.P13973828669739108417.a, A363734.P5058385992717790514.a, A363421, A363421.P10423583748182634991.f1, A363421.P10423583748182634991.a, A363735, A363735.P11161506786447141305.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363734

/-! ## A363734.P2680267252335848577

`(n+1)²-A363735(n)`
-/

namespace A363734.P2680267252335848577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A363735 n

end

end A363734.P2680267252335848577

namespace A363734

/-- `(n+1)²-A363735(n)` -/
def P2680267252335848577.Spec : Prop :=
  ∀ n, P2680267252335848577.a n = A363734 n

end A363734

/-! ## A363734.P14883302797808650906

`(n-1)*(A032741(n)+2)+2`
-/

namespace A363734.P14883302797808650906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A032741 n + 2) + 2

end

end A363734.P14883302797808650906

namespace A363734

/-- `(n-1)*(A032741(n)+2)+2` -/
def P14883302797808650906.Spec : Prop :=
  ∀ n, P14883302797808650906.a n = A363734 n

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

end A363734

/-!
# A363735: a(n) = Sum_{k=0..n} n^notdivides(k, n), where notdivides(k, n) = 0 if k divides n, otherwise 1.

The programs for A363735, the canonical program `A363735.P11161506786447141305` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363735 has offset 0).

The definition of A363735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363735.P13463247306940588211

`(1+n)²-A363734(n)`
-/

namespace A363735.P13463247306940588211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ 2 : ℤ) - A363734 n

end

end A363735.P13463247306940588211

namespace A363735

/-- `(1+n)²-A363734(n)` -/
def P13463247306940588211.Spec : Prop :=
  ∀ n, P13463247306940588211.a n = A363735 n

end A363735

/-! ## A363735.P11161506786447141305

`(n+1)²-((n-1)*A032741(n)+2*n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363735

/-- `(n+1)²-((n-1)*A032741(n)+2*n)` -/
def P11161506786447141305.Spec : Prop :=
  ∀ n, P11161506786447141305.a n = A363735 n

theorem P11161506786447141305.correct : P11161506786447141305.Spec := by
  intro n
  simp only [A363735]

end A363735

/-! ## A363735.P11638825916984468046

`A363421(n)+(n-1)*∏{e}[n, #+1]+1+n`
-/

namespace A363735.P11638825916984468046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363421 n + (((n : ℤ) - 1) * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + 1 + (n : ℤ))

end

end A363735.P11638825916984468046

namespace A363735

/-- `A363421(n)+(n-1)*∏{e}[n, #+1]+1+n` -/
def P11638825916984468046.Spec : Prop :=
  ∀ n, P11638825916984468046.a n = A363735 n

theorem P11638825916984468046.correct : P11638825916984468046.Spec := by
  intro n
  simp only [A363735, Nat.add_sub_cancel, A363735.P11638825916984468046.f1, A363735.P11638825916984468046.a, A363735.P11161506786447141305.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A363421, A363421.P10423583748182634991.f1, A363421.P10423583748182634991.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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
  simp only [A363735, Nat.add_sub_cancel, A363735.P9057796824170578953.a, A363735.P11161506786447141305.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A363421, A363421.P10423583748182634991.f1, A363421.P10423583748182634991.a, A363734, A363734.P5058385992717790514.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

end A363735

/-! ## A363735.P16868326604482883359

`A008619(A363421(n)+A005563(n))`
-/

namespace A363735.P16868326604482883359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A363421 n + A005563 n).toNat

end

end A363735.P16868326604482883359

namespace A363735

/-- `A008619(A363421(n)+A005563(n))` -/
def P16868326604482883359.Spec : Prop :=
  ∀ n, P16868326604482883359.a n = A363735 n

end A363735

/-!
# A363739: a(n) is the length of the n-th run of identical terms of A349509.

The programs for A363739, there is no canonical definition to state claims against.
-/

/-! ## A363739.P149193356500234630

`runs[A349509(n+1)]`
-/

namespace A363739.P149193356500234630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A363739.P149193356500234630

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

/-! ## A363740.P13227402595729080518

`A238875(n+2)+A000007(A156741(n))`
-/

namespace A363740.P13227402595729080518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238875 (n + 2) + A000007 (A156741 n).toNat

end

end A363740.P13227402595729080518

/-!
# A363741: Number of factorizations of n satisfying (mean) = (median) = (mode), assuming there is a unique mode.

The programs for A363741, there is no canonical definition to state claims against.
-/

/-! ## A363741.P15276274732730903492

`∏{e}[A051904(n+1), #+1]%(n+1)`
-/

namespace A363741.P15276274732730903492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % (n + 1)

end

end A363741.P15276274732730903492

/-! ## A363741.P6623784549811404862

`ceil(A305253(n+1)/∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A363741.P6623784549811404862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305253 (n + 1) : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))⌉

end

end A363741.P6623784549811404862

/-! ## A363741.P8022799579643677635

`A077462(A051904(1+n))`
-/

namespace A363741.P8022799579643677635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A051904 (1 + n)).toNat

end

end A363741.P8022799579643677635

/-! ## A363741.P18218387304271343064

`A055396(A369015(1+n))`
-/

namespace A363741.P18218387304271343064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A369015 (1 + n)).toNat

end

end A363741.P18218387304271343064

/-! ## A363741.P13328746183639708054

`A065770(A051904(1+n)+1)`
-/

namespace A363741.P13328746183639708054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A051904 (1 + n) + 1).toNat

end

end A363741.P13328746183639708054

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

/-! ## A363742.P5294057371187464455

`A023532(A194443(n%2*n))*A122180(n+1)`
-/

namespace A363742.P5294057371187464455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A194443 (n % 2 * n)).toNat * A122180 (n + 1)

end

end A363742.P5294057371187464455

/-! ## A363742.P13341502152731932194

`A023532(A194443(n))*A122180(n+1)`
-/

namespace A363742.P13341502152731932194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A194443 n).toNat * A122180 (n + 1)

end

end A363742.P13341502152731932194

/-! ## A363742.P1036459388060340690

`A014578(A326635(n))*A122180(n+1)`
-/

namespace A363742.P1036459388060340690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (A326635 n).toNat * A122180 (n + 1)

end

end A363742.P1036459388060340690

/-! ## A363742.P14432792264056690324

`and(A122180(n+1), A295886(A007318(3*n)))`
-/

namespace A363742.P14432792264056690324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122180 (n + 1)) (A295886 (A007318 (3 * n)).toNat)

end

end A363742.P14432792264056690324

/-! ## A363742.P16153939679601788298

`A122180(n+1)%A340804(A327476(n+1))`
-/

namespace A363742.P16153939679601788298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122180 (n + 1)) (A340804 (A327476 (n + 1)).toNat)

end

end A363742.P16153939679601788298

/-! ## A363742.P3205649723456050864

`A122180(n+1)*A157044(A255238(n+3))`
-/

namespace A363742.P3205649723456050864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1) * A157044 (A255238 (n + 3)).toNat

end

end A363742.P3205649723456050864

/-! ## A363742.P5189114574001708912

`A122180(n+1)%A321298(A032532(n+1))`
-/

namespace A363742.P5189114574001708912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122180 (n + 1)) (A321298 (A032532 (n + 1)).toNat)

end

end A363742.P5189114574001708912

/-! ## A363742.P16984399490894245203

`A265436(A264974(n+4))%A265436(A033273(n+1))`
-/

namespace A363742.P16984399490894245203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265436 (A264974 (n + 4)).toNat) (A265436 (A033273 (n + 1)).toNat)

end

end A363742.P16984399490894245203

/-! ## A363742.P1594656307220634663

`and(A122180(n+1), A353698(A399965(n)))`
-/

namespace A363742.P1594656307220634663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122180 (n + 1)) (A353698 (A399965 n).toNat)

end

end A363742.P1594656307220634663

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

The programs for A363744, the canonical program `A363744.P8122406064076145101` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363744 has offset 0).

The definition of A363744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363744.P8122406064076145101

`n!*∑{#}[n, (n-#+1)^(#-1)*C(2*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363744

/-- `n!*∑{#}[n, (n-#+1)^(#-1)*C(2*#, n-#)/#!]` -/
def P8122406064076145101.Spec : Prop :=
  ∀ n, P8122406064076145101.a n = (A363744 n : ℚ)

end A363744

/-! ## A363744.P3790213753056105164

`A364978(n+1)/(n+1)`
-/

namespace A363744.P3790213753056105164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364978 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A363744.P3790213753056105164

namespace A363744

/-- `A364978(n+1)/(n+1)` -/
def P3790213753056105164.Spec : Prop :=
  ∀ n, P3790213753056105164.a n = (A363744 n : ℚ)

end A363744

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

/-! ## A363745.P17018172059798963909

`A363945(A040000(n)+∑[n])`
-/

namespace A363745.P17018172059798963909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363945 (A040000 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A363745.P17018172059798963909

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

/-! ## A363748.P8369297241546878673

`A291149(1+n)`
-/

namespace A363748.P8369297241546878673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 (1 + n)

end

end A363748.P8369297241546878673

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

/-! ## A363749.P7302433875052056605

`A291168(1+n)`
-/

namespace A363749.P7302433875052056605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (1 + n)

end

end A363749.P7302433875052056605

/-! ## A363749.P823051874502879686

`gcd(A151671(n), A291168(A008619(2*n)))`
-/

namespace A363749.P823051874502879686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151671 n) (A291168 (A008619 (2 * n)).toNat)

end

end A363749.P823051874502879686

/-! ## A363749.P10360406178646680055

`A033999(n)^4*A291168(A008619(2*n))`
-/

namespace A363749.P10360406178646680055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 4 * A291168 (A008619 (2 * n)).toNat

end

end A363749.P10360406178646680055

/-! ## A363749.P15123324425097534932

`A291168(A008619(2*n))-A363127(A070939(n))`
-/

namespace A363749.P15123324425097534932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A008619 (2 * n)).toNat - A363127 (A070939 n).toNat

end

end A363749.P15123324425097534932

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

/-!
# A363750: Primes p such that p-1 can be written as a product of smaller numbers that are also of the form prime-1.

The programs for A363750, there is no canonical definition to state claims against.
-/

/-! ## A363750.P14890741379789946011

`filter[A138539(1+n), A068716(#)]`
-/

namespace A363750.P14890741379789946011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068716 (f1 j).toNat = 1) n)

end

end A363750.P14890741379789946011

/-! ## A363750.P14687653612050895057

`filter[A138539(1+n), A229062(#)]`
-/

namespace A363750.P14687653612050895057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A363750.P14687653612050895057

/-! ## A363750.P13649012743903339579

`filter[A138539(1+n), A285661(#)]`
-/

namespace A363750.P13649012743903339579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138539 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285661 (f1 j).toNat = 1) n)

end

end A363750.P13649012743903339579

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

The programs for A363751, the canonical program `A363751.P1478447399456865864` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363751 has offset 1).

The definition of A363751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2734 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
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

namespace A363751

/-- `A000720(A363752(n+1))` -/
def P5443267694126393635.Spec : Prop :=
  ∀ n, P5443267694126393635.a n = A363751 (n + 1)

end A363751

/-! ## A363751.P1478447399456865864

`eq[1, A105700(A004648(n+1))]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A363751

/-- `eq[1, A105700(A004648(n+1))]+1` -/
def P1478447399456865864.Spec : Prop :=
  ∀ n, (P1478447399456865864.a n : ℤ) = A363751 (n + 1)

theorem P1478447399456865864.correct : P1478447399456865864.Spec := by
  intro n
  simp only [A363751, Nat.add_sub_cancel]

end A363751

/-! ## A363751.P15544899111266522794

`eq[2, A000005(A004648(n+2))]+2`
-/

namespace A363751.P15544899111266522794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004648 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A363751.P15544899111266522794

namespace A363751

/-- `eq[2, A000005(A004648(n+2))]+2` -/
def P15544899111266522794.Spec : Prop :=
  ∀ n, (P15544899111266522794.a n : ℤ) = A363751 (n + 1)

end A363751

/-! ## A363751.P3387107139985857974

`A049084(A363752(1+n))`
-/

namespace A363751.P3387107139985857974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A363752 (1 + n)).toNat

end

end A363751.P3387107139985857974

namespace A363751

/-- `A049084(A363752(1+n))` -/
def P3387107139985857974.Spec : Prop :=
  ∀ n, P3387107139985857974.a n = A363751 (n + 1)

end A363751

/-! ## A363751.P5405175951270466240

`∑{d}[A363752(1+n), A243503(#)]`
-/

namespace A363751.P5405175951270466240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363752 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A243503 d

end

end A363751.P5405175951270466240

namespace A363751

/-- `∑{d}[A363752(1+n), A243503(#)]` -/
def P5405175951270466240.Spec : Prop :=
  ∀ n, P5405175951270466240.a n = A363751 (n + 1)

end A363751

/-! ## A363751.P4795285842500412819

`A067004(A363752(n+1)+A000007(3*n+1))`
-/

namespace A363751.P4795285842500412819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A363752 (n + 1) + A000007 (3 * n + 1)).toNat

end

end A363751.P4795285842500412819

namespace A363751

/-- `A067004(A363752(n+1)+A000007(3*n+1))` -/
def P4795285842500412819.Spec : Prop :=
  ∀ n, P4795285842500412819.a n = A363751 (n + 1)

end A363751

/-! ## A363751.P18028801523457944443

`A067004(A363752(n+1))+A000007(A067004(n+1))`
-/

namespace A363751.P18028801523457944443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A363752 (n + 1)).toNat + A000007 (A067004 (n + 1)).toNat

end

end A363751.P18028801523457944443

namespace A363751

/-- `A067004(A363752(n+1))+A000007(A067004(n+1))` -/
def P18028801523457944443.Spec : Prop :=
  ∀ n, P18028801523457944443.a n = A363751 (n + 1)

end A363751

/-!
# A363752: Primes prime(k) such that prime(k) mod k is prime.

The programs for A363752, the canonical program `A363752.P18333700022697409407` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363752 has offset 1).

The definition of A363752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363751, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363752.P18333700022697409407

`A000040(A363751(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363752

/-- `A000040(A363751(n+1))` -/
def P18333700022697409407.Spec : Prop :=
  ∀ n, P18333700022697409407.a n = A363752 (n + 1)

theorem P18333700022697409407.correct : P18333700022697409407.Spec := by
  intro n
  simp only [A363752, Nat.add_sub_cancel]

end A363752

/-! ## A363752.P2317245931828688126

`A065091(A363751(1+n)-1)`
-/

namespace A363752.P2317245931828688126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A363751 (1 + n) - 1).toNat

end

end A363752.P2317245931828688126

namespace A363752

/-- `A065091(A363751(1+n)-1)` -/
def P2317245931828688126.Spec : Prop :=
  ∀ n, P2317245931828688126.a n = A363752 (n + 1)

end A363752

/-! ## A363752.P13958931184142268333

`A006093(A363751(1+n))+1`
-/

namespace A363752.P13958931184142268333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A363751 (1 + n)).toNat + 1

end

end A363752.P13958931184142268333

namespace A363752

/-- `A006093(A363751(1+n))+1` -/
def P13958931184142268333.Spec : Prop :=
  ∀ n, P13958931184142268333.a n = A363752 (n + 1)

end A363752

/-! ## A363752.P12649037370909572743

`A008578(A363751(n+1)+1)`
-/

namespace A363752.P12649037370909572743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A363751 (n + 1) + 1).toNat

end

end A363752.P12649037370909572743

namespace A363752

/-- `A008578(A363751(n+1)+1)` -/
def P12649037370909572743.Spec : Prop :=
  ∀ n, P12649037370909572743.a n = A363752 (n + 1)

end A363752

/-! ## A363752.P11049999936127400092

`A162753(A363751(n+1)+A363751(n+1))`
-/

namespace A363752.P11049999936127400092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A363751 (n + 1) + A363751 (n + 1)).toNat

end

end A363752.P11049999936127400092

namespace A363752

/-- `A162753(A363751(n+1)+A363751(n+1))` -/
def P11049999936127400092.Spec : Prop :=
  ∀ n, P11049999936127400092.a n = A363752 (n + 1)

end A363752

/-!
# A363753: a(n) = Sum_{k=0..n} (-1)^k*F(k-1)*F(k)*F(k+1)/2, where F(n) is the Fibonacci number A000045(n).

The programs for A363753, the canonical program `A363753.P4687363812377307773` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363753 has offset 0).

The definition of A363753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363753.P13920680909530293150

`ogf(x^2/(1+2x-9x^2+3x^3+4x^4-x^5))`
-/

namespace A363753.P13920680909530293150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 2, -9, 3, 4, -1] n

end

end A363753.P13920680909530293150

namespace A363753

/-- `ogf(x^2/(1+2x-9x^2+3x^3+4x^4-x^5))` -/
def P13920680909530293150.Spec : Prop :=
  ∀ n, P13920680909530293150.a n = A363753 n

end A363753

/-! ## A363753.P4687363812377307773

`((-1)^n*(A000045(n+1)^3-A000045(n)^3)+A000045(n+2)-2)/8`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A363753

/-- `((-1)^n*(A000045(n+1)^3-A000045(n)^3)+A000045(n+2)-2)/8` -/
def P4687363812377307773.Spec : Prop :=
  ∀ n, P4687363812377307773.a n = (A363753 n : ℚ)

end A363753

/-! ## A363753.P4594592580022458989

`((-1)^n*A000045(3*n+1)+4*A000045(n+2)-5)/20`
-/

namespace A363753.P4594592580022458989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000045 (3 * n + 1) + 4 * A000045 (n + 2) - 5 : ℚ) / 20

end

end A363753.P4594592580022458989

namespace A363753

/-- `((-1)^n*A000045(3*n+1)+4*A000045(n+2)-5)/20` -/
def P4594592580022458989.Spec : Prop :=
  ∀ n, P4594592580022458989.a n = (A363753 n : ℚ)

end A363753

/-!
# A363754: a(n) = Sum_{k=0..n} F(2k-1)*F(2k)*F(2k+1)/2, where F(n) is the Fibonacci number A000045(n).

The programs for A363754, the canonical program `A363754.P10460888799311428125` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363754 has offset 0).

The definition of A363754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363754.P2006792894363835659

`ogf((x-6x^2+x^3)/(1-22x+77x^2-77x^3+22x^4-x^5))`
-/

namespace A363754.P2006792894363835659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -6, 1] [1, -22, 77, -77, 22, -1] n

end

end A363754.P2006792894363835659

namespace A363754

/-- `ogf((x-6x^2+x^3)/(1-22x+77x^2-77x^3+22x^4-x^5))` -/
def P2006792894363835659.Spec : Prop :=
  ∀ n, P2006792894363835659.a n = A363754 n

end A363754

/-! ## A363754.P10460888799311428125

`(A000045(2*n+1)^3+A000045(2*n+1)-2)/8`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A363754

/-- `(A000045(2*n+1)^3+A000045(2*n+1)-2)/8` -/
def P10460888799311428125.Spec : Prop :=
  ∀ n, P10460888799311428125.a n = (A363754 n : ℚ)

end A363754

/-! ## A363754.P16995051116040902025

`(A000045(6*n+3)+8*A000045(2*n+1)-10)/40`
-/

namespace A363754.P16995051116040902025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 3) + 8 * A000045 (2 * n + 1) - 10 : ℚ) / 40

end

end A363754.P16995051116040902025

namespace A363754

/-- `(A000045(6*n+3)+8*A000045(2*n+1)-10)/40` -/
def P16995051116040902025.Spec : Prop :=
  ∀ n, P16995051116040902025.a n = (A363754 n : ℚ)

end A363754

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

namespace A363754

/-- `∑[record[Δ[A363753(n)]]]` -/
def P15856389596548946880.Spec : Prop :=
  ∀ n, P15856389596548946880.a n = A363754 n

end A363754

/-! ## A363754.P18156557156762972470

`(A163198(n)+A027941(n))/2`
-/

namespace A363754.P18156557156762972470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163198 n + A027941 n : ℚ) / 2

end

end A363754.P18156557156762972470

namespace A363754

/-- `(A163198(n)+A027941(n))/2` -/
def P18156557156762972470.Spec : Prop :=
  ∀ n, P18156557156762972470.a n = (A363754 n : ℚ)

end A363754

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

namespace A363754

/-- `∑[A001655(2*n)]-A001655(2*n)` -/
def P10481168439901932204.Spec : Prop :=
  ∀ n, P10481168439901932204.a n = A363754 n

end A363754

/-!
# A363756: Total number of distinct ways the divisors of n can be the product of other nontrivial divisors of n.

The programs for A363756, there is no canonical definition to state claims against.
-/

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

/-! ## A363756.P11971754590497945193

`A057567(n+1)-A000005(n+1)`
-/

namespace A363756.P11971754590497945193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - A000005 (n + 1)

end

end A363756.P11971754590497945193

/-! ## A363756.P14849908629365209682

`∑{d}[1+n, A028422(#)]`
-/

namespace A363756.P14849908629365209682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028422 d

end

end A363756.P14849908629365209682

/-! ## A363756.P16184514068448663766

`A057567(n+1)-∑{d}[n+1, gcd(n, #)]`
-/

namespace A363756.P16184514068448663766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A363756.P16184514068448663766

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

/-! ## A363756.P7650398810298187783

`A359911(A004948(n+1))`
-/

namespace A363756.P7650398810298187783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (A004948 (n + 1)).toNat

end

end A363756.P7650398810298187783

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

/-! ## A363757.P2273336179567548511

`row(A238013(n+1))*A385213(A039597(n))`
-/

namespace A363757.P2273336179567548511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (A238013 (n + 1)).toNat : ℤ) * A385213 (A039597 n).toNat

end

end A363757.P2273336179567548511

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

/-! ## A363763.P13183731207284978761

`A363761(A130446(n+1)-1)`
-/

namespace A363763.P13183731207284978761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363761 (A130446 (n + 1) - 1).toNat

end

end A363763.P13183731207284978761

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

/-!
# A363765: Lexicographically earliest sequence of numbers in a hexagonal spiral such that their neighbors have no common digit.

The programs for A363765, there is no canonical definition to state claims against.
-/

/-! ## A363765.P11966337087600403280

`lcm(n, ∏{e}[A326246(n), #])`
-/

namespace A363765.P11966337087600403280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A363765.P11966337087600403280

/-! ## A363765.P12209413732111079306

`2^A179959(n+1)*n`
-/

namespace A363765.P12209413732111079306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A179959 (n + 1) : ℤ) * (n : ℚ)

end

end A363765.P12209413732111079306

/-! ## A363765.P5807993806532093267

`n*4^A172534(n+1)`
-/

namespace A363765.P5807993806532093267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (4 : ℚ) ^ (A172534 (n + 1) : ℤ)

end

end A363765.P5807993806532093267

/-! ## A363765.P16208811462823968087

`n*4^A172543(n+4)`
-/

namespace A363765.P16208811462823968087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (4 : ℚ) ^ (A172543 (n + 4) : ℤ)

end

end A363765.P16208811462823968087

/-! ## A363765.P11401218882623332545

`n*gcd(4, A337197(n+3))`
-/

namespace A363765.P11401218882623332545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 4 (A337197 (n + 3))

end

end A363765.P11401218882623332545

/-!
# A363768: The values k such that a regular k-gon with all diagonals drawn contains more 3-sided cells than 4-sided cells.

The programs for A363768, there is no canonical definition to state claims against.
-/

/-! ## A363768.P4616679095184286152

`comp[A233780(n+2)%A137621(A003242(n+2))]`
-/

namespace A363768.P4616679095184286152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233780 (n + 2)) (A137621 (A003242 (n + 2)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A363768.P4616679095184286152

/-! ## A363768.P7826901899535162130

`lt[A092695(n), A003621(A115584(3*(n+1)))]`
-/

namespace A363768.P7826901899535162130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (A115584 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363768.P7826901899535162130

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

/-! ## A363769.P12057722459511357743

`filter[A036554(2*(1+n)), A292077(#)]`
-/

namespace A363769.P12057722459511357743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (2 * (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A363769.P12057722459511357743

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

The programs for A363773, the canonical program `A363773.P7965947977853477985` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363773 has offset 0).

The definition of A363773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363773.P14771269413366542624

`ogf((1-2x-2x^2)/(1-4x-x^2+4x^3))`
-/

namespace A363773.P14771269413366542624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -4, -1, 4] n

end

end A363773.P14771269413366542624

namespace A363773

/-- `ogf((1-2x-2x^2)/(1-4x-x^2+4x^3))` -/
def P14771269413366542624.Spec : Prop :=
  ∀ n, P14771269413366542624.a n = A363773 n

end A363773

/-! ## A363773.P7965947977853477985

`1+A037481(n)`

The canonical program, it is in `Seq.B001.C014`.
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
# A363774: Expansion of 1/(Sum_{k>=0} x^(k^2))^2.

The programs for A363774, there is no canonical definition to state claims against.
-/

/-! ## A363774.P7719835133445458000

`∑{#}[n, A317665(#)*A317665(n-#)]`
-/

namespace A363774.P7719835133445458000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A317665 k * A317665 (n - k)

end

end A363774.P7719835133445458000

/-!
# A363775: Expansion of 1/(Sum_{k>=0} x^(k^2))^3.

The programs for A363775, there is no canonical definition to state claims against.
-/

/-! ## A363775.P16212227618347055352

`A363778(A000096(n+3)-3)`
-/

namespace A363775.P16212227618347055352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A000096 (n + 3) - 3).toNat

end

end A363775.P16212227618347055352

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

/-!
# A363776: Expansion of 1/(Sum_{k>=0} x^(k^3))^2.

The programs for A363776, there is no canonical definition to state claims against.
-/

/-! ## A363776.P10797425153518612931

`∑{#}[n, A323633(#)*A323633(n-#)]`
-/

namespace A363776.P10797425153518612931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A323633 k * A323633 (n - k)

end

end A363776.P10797425153518612931

/-!
# A363777: Expansion of 1/(Sum_{k>=0} x^(k^3))^3.

The programs for A363777, there is no canonical definition to state claims against.
-/

/-! ## A363777.P11749612557038594926

`A363779(A060577(n+3))`
-/

namespace A363777.P11749612557038594926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363779 (A060577 (n + 3)).toNat

end

end A363777.P11749612557038594926

/-! ## A363777.P4563818956011679890

`A363779(A000217(n+4)-4)`
-/

namespace A363777.P4563818956011679890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363779 (A000217 (n + 4) - 4).toNat

end

end A363777.P4563818956011679890

/-! ## A363777.P6492526306960613173

`A363779(A000124(n+3)+n-1)`
-/

namespace A363777.P6492526306960613173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363779 (A000124 (n + 3) + ((n : ℤ) - 1)).toNat

end

end A363777.P6492526306960613173

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

/-! ## A363778.P8301852428518909670

`A188031(A265656(n+1))*A363779(n)`
-/

namespace A363778.P8301852428518909670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (A265656 (n + 1)).toNat * A363779 n

end

end A363778.P8301852428518909670

/-! ## A363778.P17093120407817879204

`A110555(n)%A006702(A308766(n+1))`
-/

namespace A363778.P17093120407817879204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110555 n) (A006702 (A308766 (n + 1)).toNat)

end

end A363778.P17093120407817879204

/-! ## A363778.P15779268594297112400

`A100810(A100796(3*(n+1)))*A110555(n)`
-/

namespace A363778.P15779268594297112400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100810 (A100796 (3 * (n + 1))).toNat * A110555 n

end

end A363778.P15779268594297112400

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

/-! ## A363784.P4321431749185668732

`Δ[and(n, A015969(2*n+1))]`
-/

namespace A363784.P4321431749185668732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A015969 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363784.P4321431749185668732

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

/-!
# A363785: A variant of payphone permutations: given a row of n payphones, a(n) is the number ways for n people to choose the payphones in order, where each person chooses an unoccupied payphone such that the closest occupied payphone is as distant as possible, and a payphone adjacent to a single occupied payphone is preferred over a payphone sandwiched between two occupied payphones.

The programs for A363785, there is no canonical definition to state claims against.
-/

/-! ## A363785.P9827861154846610775

`record[C(2^∑{e}[n+1, #], A205945(n+1))]`
-/

namespace A363785.P9827861154846610775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) (A205945 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363785.P9827861154846610775

/-! ## A363785.P14565779606721319629

`A213623(A065514(n+1))`
-/

namespace A363785.P14565779606721319629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213623 (A065514 (n + 1)).toNat

end

end A363785.P14565779606721319629

/-! ## A363785.P6007163256826449306

`A303704(A173397(n+1))`
-/

namespace A363785.P6007163256826449306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303704 (A173397 (n + 1)).toNat

end

end A363785.P6007163256826449306

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

/-! ## A363787.P1670111563290938365

`filter[A049445(1+n), A135993(#)]`
-/

namespace A363787.P1670111563290938365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135993 (f1 j).toNat = 1) n)

end

end A363787.P1670111563290938365

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

The programs for A363789, the canonical program `A363789.P1663472503739411414` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363789 has offset 0).

The definition of A363789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363789.P1663472503739411414

`(2^2^n-1)*2^n`

The canonical program, it is in `Seq.B000.C047`.
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

/-! ## A363792.P11616451059410543545

`∩[A363791(n+1)-1, A363791(n+2)]`
-/

namespace A363792.P11616451059410543545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363791 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363791 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363792.P11616451059410543545

/-!
# A363795: Number of divisors of n of the form 7*k + 2.

The programs for A363795, the canonical program `A363795.P11840728886601215838` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363795 has offset 1).

The definition of A363795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363795.P880079998585685375

`A279061(n+1)-A373336(n+1)`
-/

namespace A363795.P880079998585685375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (n + 1) - A373336 (n + 1)

end

end A363795.P880079998585685375

namespace A363795

/-- `A279061(n+1)-A373336(n+1)` -/
def P880079998585685375.Spec : Prop :=
  ∀ n, P880079998585685375.a n = A363795 (n + 1)

theorem P880079998585685375.correct : P880079998585685375.Spec := by
  intro n
  simp only [A363795, Nat.add_sub_cancel, A363795.P880079998585685375.a, A363795.P11840728886601215838.a, A000265, A000265.P16482698636471710744.a, A279061, A279061.P5329778650763394169.f1, A279061.P5329778650763394169.a, A363806, A363806.P10301958111429027824.a, A373336, A373336.P12067862293443695425.a, A082784, A082784.P13357688651719004354.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363795

/-! ## A363795.P11840728886601215838

`A363806(2*(n+1))-A363806(A000265(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363795

/-- `A363806(2*(n+1))-A363806(A000265(n+1))` -/
def P11840728886601215838.Spec : Prop :=
  ∀ n, P11840728886601215838.a n = A363795 (n + 1)

theorem P11840728886601215838.correct : P11840728886601215838.Spec := by
  intro n
  simp only [A363795, Nat.add_sub_cancel]

end A363795

/-! ## A363795.P3619793700393794365

`∑{d}[n+1, A144601(2*#)]`
-/

namespace A363795.P3619793700393794365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A144601 (2 * d)

end

end A363795.P3619793700393794365

namespace A363795

/-- `∑{d}[n+1, A144601(2*#)]` -/
def P3619793700393794365.Spec : Prop :=
  ∀ n, P3619793700393794365.a n = A363795 (n + 1)

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

/-! ## A363798.P17906328808935843273

`lt[A363796(1+n), 0]+1`
-/

namespace A363798.P17906328808935843273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363796 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A363798.P17906328808935843273

/-! ## A363798.P9963919491555161275

`eq[1, A363796(n+1)²]+1`
-/

namespace A363798.P9963919491555161275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363796 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363798.P9963919491555161275

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

