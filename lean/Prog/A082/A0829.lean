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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A082900: a(n) = A082894(n)-A000079(n), the difference of 2^n and the number closest to it and divisible by n.

The programs for A082900, the canonical program `A082900.P11596540829630664572` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082900 has offset 1).

The definition of A082900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082900.P855278211182835444

`(n+1)*floor((floor((n+1)/2)+2^(n+1))/(n+1))-2^(n+1)`
-/

namespace A082900.P855278211182835444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(⌊(n + 1 : ℚ) / 2⌋ + (2 ^ (n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)⌋ - (2 ^ (n + 1) : ℤ)

end

end A082900.P855278211182835444

namespace A082900

/-- `(n+1)*floor((floor((n+1)/2)+2^(n+1))/(n+1))-2^(n+1)` -/
def P855278211182835444.Spec : Prop :=
  ∀ n, P855278211182835444.a n = A082900 (n + 1)

theorem P855278211182835444.correct : P855278211182835444.Spec := by
  intro n
  simp only [A082900, Nat.add_sub_cancel, A082900.P855278211182835444.a, A082900.P11596540829630664572.a, A000079, A000079.P10855139691139572931.a, A082894, A082894.P7522623386818679712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082900

/-! ## A082900.P11596540829630664572

`A082894(n+1)-A000079(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082900

/-- `A082894(n+1)-A000079(n+1)` -/
def P11596540829630664572.Spec : Prop :=
  ∀ n, P11596540829630664572.a n = A082900 (n + 1)

theorem P11596540829630664572.correct : P11596540829630664572.Spec := by
  intro n
  simp only [A082900, Nat.add_sub_cancel]

end A082900

/-!
# A082901: a(n) = A082895(n)-A000203(n); the distance from sigma(n) to that multiple of n which is closest to sigma(n), positive terms for cases where the closest multiple is after sigma(n), and negative terms where it is before sigma(n). In case of ties, a positive term is selected.

The programs for A082901, the canonical program `A082901.P13729791713076633821` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082901 has offset 1).

The definition of A082901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082901.P13729791713076633821

`A082895(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082901

/-- `A082895(n+1)-A000203(n+1)` -/
def P13729791713076633821.Spec : Prop :=
  ∀ n, P13729791713076633821.a n = A082901 (n + 1)

theorem P13729791713076633821.correct : P13729791713076633821.Spec := by
  intro n
  simp only [A082901, Nat.add_sub_cancel]

end A082901

/-! ## A082901.P13194210521191194312

`(n+1)*round(∑{d}[n+1, #]/(n+1))-∑{d}[n+1, #]`
-/

namespace A082901.P13194210521191194312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A082901.P13194210521191194312

namespace A082901

/-- `(n+1)*round(∑{d}[n+1, #]/(n+1))-∑{d}[n+1, #]` -/
def P13194210521191194312.Spec : Prop :=
  ∀ n, P13194210521191194312.a n = A082901 (n + 1)

end A082901

/-! ## A082901.P14847597366046470564

`A082895(n+1)-Δ[A160664(n)]`
-/

namespace A082901.P14847597366046470564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082901.P14847597366046470564

namespace A082901

/-- `A082895(n+1)-Δ[A160664(n)]` -/
def P14847597366046470564.Spec : Prop :=
  ∀ n, P14847597366046470564.a n = A082901 (n + 1)

end A082901

/-! ## A082901.P2113672108921172080

`A082895(n+1)-A245092(2*n+1)`
-/

namespace A082901.P2113672108921172080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - A245092 (2 * n + 1)

end

end A082901.P2113672108921172080

namespace A082901

/-- `A082895(n+1)-A245092(2*n+1)` -/
def P2113672108921172080.Spec : Prop :=
  ∀ n, P2113672108921172080.a n = A082901 (n + 1)

end A082901

/-! ## A082901.P16837242004115890177

`A082895(n+1)-A074400(n+1)/2`
-/

namespace A082901.P16837242004115890177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082895 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A082901.P16837242004115890177

namespace A082901

/-- `A082895(n+1)-A074400(n+1)/2` -/
def P16837242004115890177.Spec : Prop :=
  ∀ n, P16837242004115890177.a n = (A082901 (n + 1) : ℚ)

theorem P16837242004115890177.correct : P16837242004115890177.Spec := by
  intro n
  simp only [A082901, Nat.add_sub_cancel, A082901.P16837242004115890177.a, A082901.P13729791713076633821.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A082895, A082895.P17846742454117809356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082901

/-! ## A082901.P14334584826644627756

`(n+1)*A082898(n+1)-A000203(n+1)`
-/

namespace A082901.P14334584826644627756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082898 (n + 1) - A000203 (n + 1)

end

end A082901.P14334584826644627756

namespace A082901

/-- `(n+1)*A082898(n+1)-A000203(n+1)` -/
def P14334584826644627756.Spec : Prop :=
  ∀ n, P14334584826644627756.a n = A082901 (n + 1)

end A082901

/-! ## A082901.P11769259212457724630

`A082895(n+1)-A004525(A074400(n+1))`
-/

namespace A082901.P11769259212457724630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - A004525 (A074400 (n + 1)).toNat

end

end A082901.P11769259212457724630

namespace A082901

/-- `A082895(n+1)-A004525(A074400(n+1))` -/
def P11769259212457724630.Spec : Prop :=
  ∀ n, P11769259212457724630.a n = A082901 (n + 1)

end A082901

/-! ## A082901.P15036242394232938629

`A082895(n+1)-A245093(∑[n+1])`
-/

namespace A082901.P15036242394232938629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - A245093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082901.P15036242394232938629

namespace A082901

/-- `A082895(n+1)-A245093(∑[n+1])` -/
def P15036242394232938629.Spec : Prop :=
  ∀ n, P15036242394232938629.a n = A082901 (n + 1)

end A082901

/-!
# A082902: a(n) = gcd(2^n, sigma(2,n)) = gcd(A000079(n), A001157(n)).

The programs for A082902, the canonical program `A082902.P15362542766184079005` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082902 has offset 1).

The definition of A082902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000079(n), A001157(n+1))` (program `A082902.P15362542766184079005`, by `A082902.P15362542766184079005.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082902.P15362542766184079005

`gcd(A000079(n), A001157(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082902

/-- `gcd(A000079(n), A001157(n+1))` -/
def P15362542766184079005.Spec : Prop :=
  ∀ n, (P15362542766184079005.a n : ℤ) = A082902 (n + 1)

theorem P15362542766184079005.correct : P15362542766184079005.Spec := by
  intro n
  simp only [A082902, Nat.add_sub_cancel]

end A082902

/-! ## A082902.P6955235762636642876

`gcd(A000079(n+1), A001157(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082902.P6955235762636642876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 (n + 1)) (A001157 (n + 1))

end

end A082902.P6955235762636642876

namespace A082902

/-- `gcd(A000079(n+1), A001157(n+1))` -/
def P6955235762636642876.Spec : Prop :=
  ∀ n, (P6955235762636642876.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P17735805173281727521

`A006519(A001157(n+1))`
-/

namespace A082902.P17735805173281727521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001157 (n + 1)).toNat

end

end A082902.P17735805173281727521

namespace A082902

/-- `A006519(A001157(n+1))` -/
def P17735805173281727521.Spec : Prop :=
  ∀ n, P17735805173281727521.a n = A082902 (n + 1)

end A082902

/-! ## A082902.P16886648005592500938

`gcd(64, ∑{d}[n+1, #²])`
-/

namespace A082902.P16886648005592500938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 64 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A082902.P16886648005592500938

namespace A082902

/-- `gcd(64, ∑{d}[n+1, #²])` -/
def P16886648005592500938.Spec : Prop :=
  ∀ n, (P16886648005592500938.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P10905755807831958397

`2^val(∑{d}[n+1, #²], 2)`
-/

namespace A082902.P10905755807831958397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d ^ 2) 2

end

end A082902.P10905755807831958397

namespace A082902

/-- `2^val(∑{d}[n+1, #²], 2)` -/
def P10905755807831958397.Spec : Prop :=
  ∀ n, (P10905755807831958397.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P2616129020141643121

`and(-∑{d}[n+1, #²], ∑{d}[n+1, #²])`
-/

namespace A082902.P2616129020141643121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)) ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

end

end A082902.P2616129020141643121

namespace A082902

/-- `and(-∑{d}[n+1, #²], ∑{d}[n+1, #²])` -/
def P2616129020141643121.Spec : Prop :=
  ∀ n, P2616129020141643121.a n = A082902 (n + 1)

end A082902

/-! ## A082902.P12337001919477253052

`gcd(32, A001159(n+1))`
-/

namespace A082902.P12337001919477253052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A001159 (n + 1))

end

end A082902.P12337001919477253052

namespace A082902

/-- `gcd(32, A001159(n+1))` -/
def P12337001919477253052.Spec : Prop :=
  ∀ n, (P12337001919477253052.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P9182972724480521849

`A006519(A001227(n+1))`
-/

namespace A082902.P9182972724480521849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001227 (n + 1)).toNat

end

end A082902.P9182972724480521849

namespace A082902

/-- `A006519(A001227(n+1))` -/
def P9182972724480521849.Spec : Prop :=
  ∀ n, P9182972724480521849.a n = A082902 (n + 1)

end A082902

/-! ## A082902.P14022752901944663939

`gcd(A029930(n), A050459(n+1))`
-/

namespace A082902.P14022752901944663939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029930 n) (A050459 (n + 1))

end

end A082902.P14022752901944663939

namespace A082902

/-- `gcd(A029930(n), A050459(n+1))` -/
def P14022752901944663939.Spec : Prop :=
  ∀ n, (P14022752901944663939.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P10888190158668295883

`gcd(A040056(n), A064027(n+1))`
-/

namespace A082902.P10888190158668295883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040056 n) (A064027 (n + 1))

end

end A082902.P10888190158668295883

namespace A082902

/-- `gcd(A040056(n), A064027(n+1))` -/
def P10888190158668295883.Spec : Prop :=
  ∀ n, (P10888190158668295883.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P14562761246202899852

`gcd(A040240(n), A069735(n+1))`
-/

namespace A082902.P14562761246202899852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040240 n) (A069735 (n + 1))

end

end A082902.P14562761246202899852

namespace A082902

/-- `gcd(A040240(n), A069735(n+1))` -/
def P14562761246202899852.Spec : Prop :=
  ∀ n, (P14562761246202899852.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P1204351285345031699

`gcd(A059164(n), A078306(n+1))`
-/

namespace A082902.P1204351285345031699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059164 n) (A078306 (n + 1))

end

end A082902.P1204351285345031699

namespace A082902

/-- `gcd(A059164(n), A078306(n+1))` -/
def P1204351285345031699.Spec : Prop :=
  ∀ n, (P1204351285345031699.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P16082337005213619114

`gcd(A082908(n), A092350(n+1))`
-/

namespace A082902.P16082337005213619114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082908 n) (A092350 (n + 1))

end

end A082902.P16082337005213619114

namespace A082902

/-- `gcd(A082908(n), A092350(n+1))` -/
def P16082337005213619114.Spec : Prop :=
  ∀ n, (P16082337005213619114.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P535655683718758691

`gcd(A115639(n), A162665(n+1))`
-/

namespace A082902.P535655683718758691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115639 n) (A162665 (n + 1))

end

end A082902.P535655683718758691

namespace A082902

/-- `gcd(A115639(n), A162665(n+1))` -/
def P535655683718758691.Spec : Prop :=
  ∀ n, (P535655683718758691.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P5065141628116580817

`gcd(A140513(n), A174238(n+1))`
-/

namespace A082902.P5065141628116580817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140513 n) (A174238 (n + 1))

end

end A082902.P5065141628116580817

namespace A082902

/-- `gcd(A140513(n), A174238(n+1))` -/
def P5065141628116580817.Spec : Prop :=
  ∀ n, (P5065141628116580817.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P4594672495396759982

`A028233(2*A001227(n+1))/2`
-/

namespace A082902.P4594672495396759982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028233 (2 * A001227 (n + 1)).toNat : ℚ) / 2

end

end A082902.P4594672495396759982

namespace A082902

/-- `A028233(2*A001227(n+1))/2` -/
def P4594672495396759982.Spec : Prop :=
  ∀ n, P4594672495396759982.a n = (A082902 (n + 1) : ℚ)

end A082902

/-! ## A082902.P1809002830991613108

`A006519(A245579(n+1)/(n+1))`
-/

namespace A082902.P1809002830991613108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (SequenceMachineLib.roundAway ((A245579 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A082902.P1809002830991613108

namespace A082902

/-- `A006519(A245579(n+1)/(n+1))` -/
def P1809002830991613108.Spec : Prop :=
  ∀ n, P1809002830991613108.a n = A082902 (n + 1)

end A082902

/-! ## A082902.P9827571793574126702

`gcd(A066293(n+1), A082903(n+1))`
-/

namespace A082902.P9827571793574126702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066293 (n + 1)) (A082903 (n + 1))

end

end A082902.P9827571793574126702

namespace A082902

/-- `gcd(A066293(n+1), A082903(n+1))` -/
def P9827571793574126702.Spec : Prop :=
  ∀ n, (P9827571793574126702.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P1321932460288369611

`gcd(A335901(n+1), A336475(n+1))`
-/

namespace A082902.P1321932460288369611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335901 (n + 1)) (A336475 (n + 1))

end

end A082902.P1321932460288369611

namespace A082902

/-- `gcd(A335901(n+1), A336475(n+1))` -/
def P1321932460288369611.Spec : Prop :=
  ∀ n, (P1321932460288369611.a n : ℤ) = A082902 (n + 1)

end A082902

/-! ## A082902.P6834503905319618810

`A006519(A000005(A000265(n+1)))`
-/

namespace A082902.P6834503905319618810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000005 (A000265 (n + 1)).toNat).toNat

end

end A082902.P6834503905319618810

namespace A082902

/-- `A006519(A000005(A000265(n+1)))` -/
def P6834503905319618810.Spec : Prop :=
  ∀ n, P6834503905319618810.a n = A082902 (n + 1)

end A082902

/-!
# A082903: Highest power of two that divides the sum of divisors of n.

The programs for A082903, the canonical program `A082903.P1980760926334013284` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082903 has offset 1).

The definition of A082903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082903.P1980760926334013284

`2^A336937(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082903

/-- `2^A336937(n+1)` -/
def P1980760926334013284.Spec : Prop :=
  ∀ n, P1980760926334013284.a n = (A082903 (n + 1) : ℚ)

end A082903

/-! ## A082903.P8227341537151722387

`2^(A286357(n+1)-1)`
-/

namespace A082903.P8227341537151722387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A286357 (n + 1) - 1 : ℤ)

end

end A082903.P8227341537151722387

namespace A082903

/-- `2^(A286357(n+1)-1)` -/
def P8227341537151722387.Spec : Prop :=
  ∀ n, P8227341537151722387.a n = (A082903 (n + 1) : ℚ)

end A082903

/-! ## A082903.P9940344808862485738

`2^val(A000203(n+1), 2)`
-/

namespace A082903.P9940344808862485738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2

end

end A082903.P9940344808862485738

namespace A082903

/-- `2^val(A000203(n+1), 2)` -/
def P9940344808862485738.Spec : Prop :=
  ∀ n, (P9940344808862485738.a n : ℤ) = A082903 (n + 1)

end A082903

/-! ## A082903.P9738727122801708982

`A000203(n+1)/A161942(n+1)`
-/

namespace A082903.P9738727122801708982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A161942 (n + 1) : ℚ)

end

end A082903.P9738727122801708982

namespace A082903

/-- `A000203(n+1)/A161942(n+1)` -/
def P9738727122801708982.Spec : Prop :=
  ∀ n, P9738727122801708982.a n = (A082903 (n + 1) : ℚ)

end A082903

/-! ## A082903.P9205448396657454769

`A006519(A000593(n+1))`
-/

namespace A082903.P9205448396657454769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000593 (n + 1)).toNat

end

end A082903.P9205448396657454769

namespace A082903

/-- `A006519(A000593(n+1))` -/
def P9205448396657454769.Spec : Prop :=
  ∀ n, P9205448396657454769.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P6615995003420619657

`A006519(A000203(n+1))`
-/

namespace A082903.P6615995003420619657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000203 (n + 1)).toNat

end

end A082903.P6615995003420619657

namespace A082903

/-- `A006519(A000203(n+1))` -/
def P6615995003420619657.Spec : Prop :=
  ∀ n, P6615995003420619657.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P12981431274430417823

`2^val(∑{d}[n+1, #], 2)`
-/

namespace A082903.P12981431274430417823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d) 2

end

end A082903.P12981431274430417823

namespace A082903

/-- `2^val(∑{d}[n+1, #], 2)` -/
def P12981431274430417823.Spec : Prop :=
  ∀ n, (P12981431274430417823.a n : ℤ) = A082903 (n + 1)

end A082903

/-! ## A082903.P7705456847510650683

`and(∑{d}[n+1, -#], ∑{d}[n+1, #])`
-/

namespace A082903.P7705456847510650683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ))) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A082903.P7705456847510650683

namespace A082903

/-- `and(∑{d}[n+1, -#], ∑{d}[n+1, #])` -/
def P7705456847510650683.Spec : Prop :=
  ∀ n, P7705456847510650683.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P4670099977492334133

`A011782(A286357(n+1))`
-/

namespace A082903.P4670099977492334133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A286357 (n + 1)).toNat

end

end A082903.P4670099977492334133

namespace A082903

/-- `A011782(A286357(n+1))` -/
def P4670099977492334133.Spec : Prop :=
  ∀ n, P4670099977492334133.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P11640170545438539522

`A000079(A336937(n+1))`
-/

namespace A082903.P11640170545438539522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A336937 (n + 1)).toNat

end

end A082903.P11640170545438539522

namespace A082903

/-- `A000079(A336937(n+1))` -/
def P11640170545438539522.Spec : Prop :=
  ∀ n, P11640170545438539522.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P7461678145566675083

`A000079(A286357(n+1)-1)`
-/

namespace A082903.P7461678145566675083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A286357 (n + 1) - 1).toNat

end

end A082903.P7461678145566675083

namespace A082903

/-- `A000079(A286357(n+1)-1)` -/
def P7461678145566675083.Spec : Prop :=
  ∀ n, P7461678145566675083.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P13454268367516234746

`A000010(2^A286357(n+1))`
-/

namespace A082903.P13454268367516234746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A286357 (n + 1) : ℤ))).toNat

end

end A082903.P13454268367516234746

namespace A082903

/-- `A000010(2^A286357(n+1))` -/
def P13454268367516234746.Spec : Prop :=
  ∀ n, P13454268367516234746.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P11007013828086027092

`A000079(val(A000203(n+1), 2))`
-/

namespace A082903.P11007013828086027092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2)

end

end A082903.P11007013828086027092

namespace A082903

/-- `A000079(val(A000203(n+1), 2))` -/
def P11007013828086027092.Spec : Prop :=
  ∀ n, P11007013828086027092.a n = A082903 (n + 1)

end A082903

/-! ## A082903.P17452938898598463507

`gcd(A000593(n+1), A029930(n))`
-/

namespace A082903.P17452938898598463507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000593 (n + 1)) (A029930 n)

end

end A082903.P17452938898598463507

namespace A082903

/-- `gcd(A000593(n+1), A029930(n))` -/
def P17452938898598463507.Spec : Prop :=
  ∀ n, (P17452938898598463507.a n : ℤ) = A082903 (n + 1)

end A082903

/-! ## A082903.P14146576156198144544

`gcd(A013955(n+1), A062383(n))`
-/

namespace A082903.P14146576156198144544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013955 (n + 1)) (A062383 n)

end

end A082903.P14146576156198144544

namespace A082903

/-- `gcd(A013955(n+1), A062383(n))` -/
def P14146576156198144544.Spec : Prop :=
  ∀ n, (P14146576156198144544.a n : ℤ) = A082903 (n + 1)

end A082903

/-! ## A082903.P12975128480572884005

`gcd(A109506(n+1), A115639(n))`
-/

namespace A082903.P12975128480572884005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109506 (n + 1)) (A115639 n)

end

end A082903.P12975128480572884005

namespace A082903

/-- `gcd(A109506(n+1), A115639(n))` -/
def P12975128480572884005.Spec : Prop :=
  ∀ n, (P12975128480572884005.a n : ℤ) = A082903 (n + 1)

end A082903

/-! ## A082903.P11967825256141828346

`gcd(A140513(n), A143348(n+1))`
-/

namespace A082903.P11967825256141828346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140513 n) (A143348 (n + 1))

end

end A082903.P11967825256141828346

namespace A082903

/-- `gcd(A140513(n), A143348(n+1))` -/
def P11967825256141828346.Spec : Prop :=
  ∀ n, (P11967825256141828346.a n : ℤ) = A082903 (n + 1)

end A082903

/-! ## A082903.P11913347292695263916

`gcd(A029930(n)², A001158(n+1))`
-/

namespace A082903.P11913347292695263916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029930 n ^ 2) (A001158 (n + 1))

end

end A082903.P11913347292695263916

namespace A082903

/-- `gcd(A029930(n)², A001158(n+1))` -/
def P11913347292695263916.Spec : Prop :=
  ∀ n, (P11913347292695263916.a n : ℤ) = A082903 (n + 1)

end A082903

/-! ## A082903.P16354113494968551341

`A348930(n+1)/A336457(n+1)`
-/

namespace A082903.P16354113494968551341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348930 (n + 1) : ℚ) / (A336457 (n + 1) : ℚ)

end

end A082903.P16354113494968551341

namespace A082903

/-- `A348930(n+1)/A336457(n+1)` -/
def P16354113494968551341.Spec : Prop :=
  ∀ n, P16354113494968551341.a n = (A082903 (n + 1) : ℚ)

end A082903

/-! ## A082903.P2884334360369794205

`A349162(n+1)/A348992(n+1)`
-/

namespace A082903.P2884334360369794205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349162 (n + 1) : ℚ) / (A348992 (n + 1) : ℚ)

end

end A082903.P2884334360369794205

namespace A082903

/-- `A349162(n+1)/A348992(n+1)` -/
def P2884334360369794205.Spec : Prop :=
  ∀ n, P2884334360369794205.a n = (A082903 (n + 1) : ℚ)

end A082903

/-!
# A082904: Triangle read by rows: Pascal's triangle restricted to binomial(n, d) where d is a divisor of n.

The programs for A082904, there is no canonical definition to state claims against.
-/

/-! ## A082904.P11807834420269938730

`C(∑[char[∑[∑{d}[n, ceil(acot(#))]]]], A027750(n+1))`
-/

namespace A082904.P11807834420269938730
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A027750 (n + 1)).toNat

end

end A082904.P11807834420269938730

/-! ## A082904.P10265661217896980395

`A135278(eq[0, A048158(n+1)])`
-/

namespace A082904.P10265661217896980395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082904.P10265661217896980395

/-! ## A082904.P18108394286920399026

`A135278(eq[0, A049816(n+1)])`
-/

namespace A082904.P18108394286920399026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082904.P18108394286920399026

/-! ## A082904.P14899231856278968275

`A135278(eq[0, A049828(n+1)])`
-/

namespace A082904.P14899231856278968275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082904.P14899231856278968275

/-! ## A082904.P5503276800087546498

`A135278(eq[0, A163259(n+1)])`
-/

namespace A082904.P5503276800087546498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082904.P5503276800087546498

/-! ## A082904.P2743799675107296612

`A135278(eq[1, A051731(n+1)])`
-/

namespace A082904.P2743799675107296612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082904.P2743799675107296612

/-! ## A082904.P16877548627081160940

`A135278(eq[1, A107435(n+1)])`
-/

namespace A082904.P16877548627081160940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082904.P16877548627081160940

/-! ## A082904.P7642104587551851864

`A007318(record[A127446(n+1)+1+n])`
-/

namespace A082904.P7642104587551851864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082904.P7642104587551851864

/-! ## A082904.P11213709223884459669

`A135278(eq[0, A007318(n+1)%A007318(n)])`
-/

namespace A082904.P11213709223884459669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (n + 1)) (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082904.P11213709223884459669

/-! ## A082904.P18001513133039654756

`A074909(∑[A132066(n+1)])`
-/

namespace A082904.P18001513133039654756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082904.P18001513133039654756

/-!
# A082905: Modified Pascal-triangle, read by rows. All C(n,j) binomial coefficients are replaced by C(n/g, j/g), where g = gcd(n,j).

The programs for A082905, there is no canonical definition to state claims against.
-/

/-! ## A082905.P6187439603312335148

`gcd(A050870(n)%A273914(n), A007318(n))`
-/

namespace A082905.P6187439603312335148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A050870 n) (A273914 n)) (A007318 n)

end

end A082905.P6187439603312335148

/-! ## A082905.P11673987422917972502

`gcd(A050186(n), A118433(n))`
-/

namespace A082905.P11673987422917972502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050186 n) (A118433 n)

end

end A082905.P11673987422917972502

/-! ## A082905.P17006279823577812496

`gcd(A050186(A061579(n)), A168621(n))`
-/

namespace A082905.P17006279823577812496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050186 (A061579 n).toNat) (A168621 n)

end

end A082905.P17006279823577812496

/-! ## A082905.P5763066594539923866

`gcd(A055894(n), A217436(n))`
-/

namespace A082905.P5763066594539923866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055894 n) (A217436 n)

end

end A082905.P5763066594539923866

/-! ## A082905.P7539177776482367244

`gcd(A050870(n), A184050(n))`
-/

namespace A082905.P7539177776482367244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050870 n) (A184050 n)

end

end A082905.P7539177776482367244

/-!
# A082906: Sum of terms in n-th row of modified Pascal's triangle displayed in A082905.

The programs for A082906, there is no canonical definition to state claims against.
-/

/-! ## A082906.P15039389661817177316

`∑{d}[n, A056188(#)]+1`
-/

namespace A082906.P15039389661817177316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056188 d + 1

end

end A082906.P15039389661817177316

/-! ## A082906.P11612918404636288874

`2^n-A271834(round(acot(n)+n))`
-/

namespace A082906.P11612918404636288874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A271834 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A082906.P11612918404636288874

/-! ## A082906.P12464016290485049577

`2^n-A271834(A028310(n))`
-/

namespace A082906.P12464016290485049577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A271834 (A028310 n).toNat

end

end A082906.P12464016290485049577

/-! ## A082906.P13874950600322293913

`abs(A000079(n)-A271834(A028310(n)))`
-/

namespace A082906.P13874950600322293913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A271834 (A028310 n).toNat|

end

end A082906.P13874950600322293913

/-! ## A082906.P12114460898472530665

`A000051(n)-(A271834(A028310(n))+1)`
-/

namespace A082906.P12114460898472530665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A271834 (A028310 n).toNat + 1)

end

end A082906.P12114460898472530665

/-!
# A082907: A modified Pascal's triangle, read by rows, and modified as follows: binomial(n,j) is replaced by gcd(2^n, binomial(n,j)), i.e., the largest power of 2 dividing binomial(n,j).

The programs for A082907, the canonical program `A082907.P13189701143916682602` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082907 has offset 0).

The definition of A082907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082907.P16498037083012819200

`2^A065040(n)`
-/

namespace A082907.P16498037083012819200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A065040 n : ℤ)

end

end A082907.P16498037083012819200

namespace A082907

/-- `2^A065040(n)` -/
def P16498037083012819200.Spec : Prop :=
  ∀ n, P16498037083012819200.a n = (A082907 n : ℚ)

end A082907

/-! ## A082907.P13189701143916682602

`A000079(val(A007318(n), 2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082907

/-- `A000079(val(A007318(n), 2))` -/
def P13189701143916682602.Spec : Prop :=
  ∀ n, P13189701143916682602.a n = A082907 n

theorem P13189701143916682602.correct : P13189701143916682602.Spec := by
  intro n
  simp only [A082907]

end A082907

/-! ## A082907.P5782146402909332658

`A008862(val(A007318(n), 2))`
-/

namespace A082907.P5782146402909332658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 (SequenceMachineLib.valuation (A007318 n).toNat 2)

end

end A082907.P5782146402909332658

namespace A082907

/-- `A008862(val(A007318(n), 2))` -/
def P5782146402909332658.Spec : Prop :=
  ∀ n, P5782146402909332658.a n = A082907 n

end A082907

/-! ## A082907.P1772458607396857344

`A036146(val(A007318(n), 2))`
-/

namespace A082907.P1772458607396857344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036146 (SequenceMachineLib.valuation (A007318 n).toNat 2)

end

end A082907.P1772458607396857344

namespace A082907

/-- `A036146(val(A007318(n), 2))` -/
def P1772458607396857344.Spec : Prop :=
  ∀ n, P1772458607396857344.a n = A082907 n

end A082907

/-! ## A082907.P10778296572643906052

`A069877(val(A007318(n), 2))`
-/

namespace A082907.P10778296572643906052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (SequenceMachineLib.valuation (A007318 n).toNat 2)

end

end A082907.P10778296572643906052

namespace A082907

/-- `A069877(val(A007318(n), 2))` -/
def P10778296572643906052.Spec : Prop :=
  ∀ n, P10778296572643906052.a n = A082907 n

end A082907

/-! ## A082907.P7880601521862049299

`A011782(val(A134058(n), 2))`
-/

namespace A082907.P7880601521862049299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.valuation (A134058 n).toNat 2)

end

end A082907.P7880601521862049299

namespace A082907

/-- `A011782(val(A134058(n), 2))` -/
def P7880601521862049299.Spec : Prop :=
  ∀ n, P7880601521862049299.a n = A082907 n

end A082907

/-! ## A082907.P5763982965199001151

`A007318(n)/A319861(n)`
-/

namespace A082907.P5763982965199001151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A319861 n : ℚ)

end

end A082907.P5763982965199001151

namespace A082907

/-- `A007318(n)/A319861(n)` -/
def P5763982965199001151.Spec : Prop :=
  ∀ n, P5763982965199001151.a n = (A082907 n : ℚ)

end A082907

/-! ## A082907.P856774976486244430

`A137688(n)/A319862(n)`
-/

namespace A082907.P856774976486244430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (A319862 n : ℚ)

end

end A082907.P856774976486244430

namespace A082907

/-- `A137688(n)/A319862(n)` -/
def P856774976486244430.Spec : Prop :=
  ∀ n, P856774976486244430.a n = (A082907 n : ℚ)

end A082907

/-! ## A082907.P10425632464702922373

`gcd(A027465(n), A029930(n))`
-/

namespace A082907.P10425632464702922373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027465 n) (A029930 n)

end

end A082907.P10425632464702922373

namespace A082907

/-- `gcd(A027465(n), A029930(n))` -/
def P10425632464702922373.Spec : Prop :=
  ∀ n, (P10425632464702922373.a n : ℤ) = A082907 n

end A082907

/-! ## A082907.P11624030061310505463

`gcd(A008459(n), A174718(n))`
-/

namespace A082907.P11624030061310505463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008459 n) (A174718 n)

end

end A082907.P11624030061310505463

namespace A082907

/-- `gcd(A008459(n), A174718(n))` -/
def P11624030061310505463.Spec : Prop :=
  ∀ n, (P11624030061310505463.a n : ℤ) = A082907 n

end A082907

/-! ## A082907.P3041268525509007698

`and(A007318(n), A134346(n))`
-/

namespace A082907.P3041268525509007698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A134346 n)

end

end A082907.P3041268525509007698

namespace A082907

/-- `and(A007318(n), A134346(n))` -/
def P3041268525509007698.Spec : Prop :=
  ∀ n, P3041268525509007698.a n = A082907 n

end A082907

/-! ## A082907.P15388239522252278537

`and(A130595(n), A134348(n))`
-/

namespace A082907.P15388239522252278537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130595 n) (A134348 n)

end

end A082907.P15388239522252278537

namespace A082907

/-- `and(A130595(n), A134348(n))` -/
def P15388239522252278537.Spec : Prop :=
  ∀ n, P15388239522252278537.a n = A082907 n

end A082907

/-! ## A082907.P8373836988906169796

`and(A007318(n), A154926(n+1))`
-/

namespace A082907.P8373836988906169796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A154926 (n + 1))

end

end A082907.P8373836988906169796

namespace A082907

/-- `and(A007318(n), A154926(n+1))` -/
def P8373836988906169796.Spec : Prop :=
  ∀ n, P8373836988906169796.a n = A082907 n

end A082907

/-! ## A082907.P885098695213378373

`gcd(A053644(n), A055373(n))`
-/

namespace A082907.P885098695213378373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053644 n) (A055373 n)

end

end A082907.P885098695213378373

namespace A082907

/-- `gcd(A053644(n), A055373(n))` -/
def P885098695213378373.Spec : Prop :=
  ∀ n, (P885098695213378373.a n : ℤ) = A082907 n

end A082907

/-! ## A082907.P2866810923688215783

`and(A134346(n), A174720(n))`
-/

namespace A082907.P2866810923688215783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134346 n) (A174720 n)

end

end A082907.P2866810923688215783

namespace A082907

/-- `and(A134346(n), A174720(n))` -/
def P2866810923688215783.Spec : Prop :=
  ∀ n, P2866810923688215783.a n = A082907 n

end A082907

/-! ## A082907.P6531618629944262439

`gcd(A038292(n), A174720(n))`
-/

namespace A082907.P6531618629944262439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038292 n) (A174720 n)

end

end A082907.P6531618629944262439

namespace A082907

/-- `gcd(A038292(n), A174720(n))` -/
def P6531618629944262439.Spec : Prop :=
  ∀ n, (P6531618629944262439.a n : ℤ) = A082907 n

end A082907

/-! ## A082907.P9232122150050573924

`gcd(A056672(n+1), A059366(n))`
-/

namespace A082907.P9232122150050573924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056672 (n + 1)) (A059366 n)

end

end A082907.P9232122150050573924

namespace A082907

/-- `gcd(A056672(n+1), A059366(n))` -/
def P9232122150050573924.Spec : Prop :=
  ∀ n, (P9232122150050573924.a n : ℤ) = A082907 n

end A082907

/-! ## A082907.P2374081671701045137

`gcd(A062383(n), A085881(n))`
-/

namespace A082907.P2374081671701045137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062383 n) (A085881 n)

end

end A082907.P2374081671701045137

namespace A082907

/-- `gcd(A062383(n), A085881(n))` -/
def P2374081671701045137.Spec : Prop :=
  ∀ n, (P2374081671701045137.a n : ℤ) = A082907 n

end A082907

/-! ## A082907.P3168023464064121243

`and(A007318(n), A177228(n))`
-/

namespace A082907.P3168023464064121243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A177228 n)

end

end A082907.P3168023464064121243

namespace A082907

/-- `and(A007318(n), A177228(n))` -/
def P3168023464064121243.Spec : Prop :=
  ∀ n, P3168023464064121243.a n = A082907 n

end A082907

/-! ## A082907.P12860813287510699725

`gcd(2^ceil(log2(n+1)), A225372(n+1))`
-/

namespace A082907.P12860813287510699725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) (A225372 (n + 1))

end

end A082907.P12860813287510699725

namespace A082907

/-- `gcd(2^ceil(log2(n+1)), A225372(n+1))` -/
def P12860813287510699725.Spec : Prop :=
  ∀ n, (P12860813287510699725.a n : ℤ) = A082907 n

end A082907

/-!
# A082908: Largest value of gcd(2^n, binomial(n,j)) with j=0..n-1; maximum value of largest power of 2 dividing binomial(n,j) in the n-th row of Pascal's triangle.

The programs for A082908, the canonical program `A082908.P3033675240048837863` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082908 has offset 0).

The definition of A082908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082908.P3033675240048837863

`2^floor(log2(A000265(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082908

/-- `2^floor(log2(A000265(n+1)))` -/
def P3033675240048837863.Spec : Prop :=
  ∀ n, (P3033675240048837863.a n : ℤ) = A082908 n

theorem P3033675240048837863.correct : P3033675240048837863.Spec := by
  intro n
  simp only [A082908]

end A082908

/-! ## A082908.P4506825159780483065

`2^floor(log2(n+1)-val(n+1, 2))`
-/

namespace A082908.P4506825159780483065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)⌋ : ℤ)

end

end A082908.P4506825159780483065

namespace A082908

/-- `2^floor(log2(n+1)-val(n+1, 2))` -/
def P4506825159780483065.Spec : Prop :=
  ∀ n, P4506825159780483065.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P15611117473378480135

`and(n, -n)*a(floor((n-1)/2))` with `a(0)=1`
-/

namespace A082908.P15611117473378480135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n : ℤ) (-(n : ℤ)) * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A082908.P15611117473378480135

namespace A082908

/-- `and(n, -n)*a(floor((n-1)/2))` -/
def P15611117473378480135.Spec : Prop :=
  ∀ n, P15611117473378480135.a n = A082908 n

end A082908

/-! ## A082908.P12735179384564767844

`2^val(n*a(floor((n-1)/2)), 2)` with `a(0)=1`
-/

namespace A082908.P12735179384564767844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ SequenceMachineLib.valuation (n * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat) 2

end

end A082908.P12735179384564767844

namespace A082908

/-- `2^val(n*a(floor((n-1)/2)), 2)` -/
def P12735179384564767844.Spec : Prop :=
  ∀ n, (P12735179384564767844.a n : ℤ) = A082908 n

end A082908

/-! ## A082908.P570692425872067863

`abs(or(n, -n))*a(round(n/2)-1)` with `a(0)=1`
-/

namespace A082908.P570692425872067863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.lor (n : ℤ) (-(n : ℤ))| * a (SequenceMachineLib.roundAway ((n : ℚ) / 2) - 1).toNat

end

end A082908.P570692425872067863

namespace A082908

/-- `abs(or(n, -n))*a(round(n/2)-1)` -/
def P570692425872067863.Spec : Prop :=
  ∀ n, P570692425872067863.a n = A082908 n

end A082908

/-! ## A082908.P16470807022732663329

`2^(ceil(log2(n+2))-(val(n+1, 2)+1))`
-/

namespace A082908.P16470807022732663329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 2 : ℝ)⌉ - (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) : ℤ)

end

end A082908.P16470807022732663329

namespace A082908

/-- `2^(ceil(log2(n+2))-(val(n+1, 2)+1))` -/
def P16470807022732663329.Spec : Prop :=
  ∀ n, P16470807022732663329.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P9292953348405115411

`2^floor(log2((n+1)/2^val(n+1, 2)))`
-/

namespace A082908.P9292953348405115411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊Real.logb 2 ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)⌋ : ℤ)

end

end A082908.P9292953348405115411

namespace A082908

/-- `2^floor(log2((n+1)/2^val(n+1, 2)))` -/
def P9292953348405115411.Spec : Prop :=
  ∀ n, P9292953348405115411.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P9643378978190953561

`lcm(n+1, 2^floor(log2(n+1)))/(n+1)`
-/

namespace A082908.P9643378978190953561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 ^ Nat.log 2 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A082908.P9643378978190953561

namespace A082908

/-- `lcm(n+1, 2^floor(log2(n+1)))/(n+1)` -/
def P9643378978190953561.Spec : Prop :=
  ∀ n, P9643378978190953561.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P7441359546595933848

`2^floor(log2(n+1))/(or(n, n+1)-n)`
-/

namespace A082908.P7441359546595933848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.log 2 (n + 1) : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)

end

end A082908.P7441359546595933848

namespace A082908

/-- `2^floor(log2(n+1))/(or(n, n+1)-n)` -/
def P7441359546595933848.Spec : Prop :=
  ∀ n, P7441359546595933848.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P10871622476007949848

`2^A119387(n)`
-/

namespace A082908.P10871622476007949848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A119387 n : ℤ)

end

end A082908.P10871622476007949848

namespace A082908

/-- `2^A119387(n)` -/
def P10871622476007949848.Spec : Prop :=
  ∀ n, P10871622476007949848.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P12481068857724625354

`A307313(n+1)/2`
-/

namespace A082908.P12481068857724625354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307313 (n + 1) : ℚ) / 2

end

end A082908.P12481068857724625354

namespace A082908

/-- `A307313(n+1)/2` -/
def P12481068857724625354.Spec : Prop :=
  ∀ n, P12481068857724625354.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P9885000559016526467

`2^(A070940(n+1)-1)`
-/

namespace A082908.P9885000559016526467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070940 (n + 1) - 1 : ℤ)

end

end A082908.P9885000559016526467

namespace A082908

/-- `2^(A070940(n+1)-1)` -/
def P9885000559016526467.Spec : Prop :=
  ∀ n, P9885000559016526467.a n = (A082908 n : ℚ)

end A082908

/-! ## A082908.P2449919914943833948

`A001316(A086099(n))`
-/

namespace A082908.P2449919914943833948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A086099 n).toNat

end

end A082908.P2449919914943833948

namespace A082908

/-- `A001316(A086099(n))` -/
def P2449919914943833948.Spec : Prop :=
  ∀ n, P2449919914943833948.a n = A082908 n

end A082908

/-! ## A082908.P13870687608572168785

`A062383(A025480(n))`
-/

namespace A082908.P13870687608572168785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A025480 n).toNat

end

end A082908.P13870687608572168785

namespace A082908

/-- `A062383(A025480(n))` -/
def P13870687608572168785.Spec : Prop :=
  ∀ n, P13870687608572168785.a n = A082908 n

end A082908

/-! ## A082908.P588066148563220119

`A000079(A119387(n))`
-/

namespace A082908.P588066148563220119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A119387 n).toNat

end

end A082908.P588066148563220119

namespace A082908

/-- `A000079(A119387(n))` -/
def P588066148563220119.Spec : Prop :=
  ∀ n, P588066148563220119.a n = A082908 n

end A082908

/-! ## A082908.P1025939523858546831

`A053644(A000265(n+1))`
-/

namespace A082908.P1025939523858546831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A000265 (n + 1)).toNat

end

end A082908.P1025939523858546831

namespace A082908

/-- `A053644(A000265(n+1))` -/
def P1025939523858546831.Spec : Prop :=
  ∀ n, P1025939523858546831.a n = A082908 n

end A082908

/-! ## A082908.P6573785387165542804

`A011782(A070940(n+1))`
-/

namespace A082908.P6573785387165542804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A070940 (n + 1)).toNat

end

end A082908.P6573785387165542804

namespace A082908

/-- `A011782(A070940(n+1))` -/
def P6573785387165542804.Spec : Prop :=
  ∀ n, P6573785387165542804.a n = A082908 n

end A082908

/-! ## A082908.P2753810869844144309

`A062383(A030109(n+1))`
-/

namespace A082908.P2753810869844144309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A030109 (n + 1)).toNat

end

end A082908.P2753810869844144309

namespace A082908

/-- `A062383(A030109(n+1))` -/
def P2753810869844144309.Spec : Prop :=
  ∀ n, P2753810869844144309.a n = A082908 n

end A082908

/-! ## A082908.P14650407888139934432

`A011782(A119387(n)+1)`
-/

namespace A082908.P14650407888139934432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A119387 n + 1).toNat

end

end A082908.P14650407888139934432

namespace A082908

/-- `A011782(A119387(n)+1)` -/
def P14650407888139934432.Spec : Prop :=
  ∀ n, P14650407888139934432.a n = A082908 n

end A082908

/-! ## A082908.P9595746851890196979

`A265027(A004755(n+1))`
-/

namespace A082908.P9595746851890196979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265027 (A004755 (n + 1)).toNat

end

end A082908.P9595746851890196979

namespace A082908

/-- `A265027(A004755(n+1))` -/
def P9595746851890196979.Spec : Prop :=
  ∀ n, P9595746851890196979.a n = A082908 n

end A082908

/-!
# A082909: a(n) = Sum_{d|n} (d mod 3).

The programs for A082909, the canonical program `A082909.P666252728659787957` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082909 has offset 1).

The definition of A082909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082909.P666252728659787957

`∑{d}[n+1, #%3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082909

/-- `∑{d}[n+1, #%3]` -/
def P666252728659787957.Spec : Prop :=
  ∀ n, (P666252728659787957.a n : ℤ) = A082909 (n + 1)

theorem P666252728659787957.correct : P666252728659787957.Spec := by
  intro n
  simp only [A082909, Nat.add_sub_cancel]

end A082909

/-! ## A082909.P3804207989158463194

`∑{d}[Δ[n²]-n, abs(-#%3)]`
-/

namespace A082909.P3804207989158463194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, |Int.tmod (-(d : ℤ)) 3|

end

end A082909.P3804207989158463194

namespace A082909

/-- `∑{d}[Δ[n²]-n, abs(-#%3)]` -/
def P3804207989158463194.Spec : Prop :=
  ∀ n, P3804207989158463194.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P17672453128764774387

`A093061(n+1)/6`
-/

namespace A082909.P17672453128764774387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093061 (n + 1) : ℚ) / 6

end

end A082909.P17672453128764774387

namespace A082909

/-- `A093061(n+1)/6` -/
def P17672453128764774387.Spec : Prop :=
  ∀ n, P17672453128764774387.a n = (A082909 (n + 1) : ℚ)

theorem P17672453128764774387.correct : P17672453128764774387.Spec := by
  intro n
  simp only [A082909, Nat.add_sub_cancel, A082909.P17672453128764774387.a, A082909.P666252728659787957.f1, A082909.P666252728659787957.a, A093061, A093061.P7921048065262857130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082909

/-! ## A082909.P11314688002487337484

`∑{d}[n+1, and(3, A004773(#))]`
-/

namespace A082909.P11314688002487337484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 3 (A004773 d)

end

end A082909.P11314688002487337484

namespace A082909

/-- `∑{d}[n+1, and(3, A004773(#))]` -/
def P11314688002487337484.Spec : Prop :=
  ∀ n, P11314688002487337484.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P4048206974093170411

`∑{d}[n+1, and(3, A042965(#)+1)]`
-/

namespace A082909.P4048206974093170411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 3 (A042965 d + 1)

end

end A082909.P4048206974093170411

namespace A082909

/-- `∑{d}[n+1, and(3, A042965(#)+1)]` -/
def P4048206974093170411.Spec : Prop :=
  ∀ n, P4048206974093170411.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P5874418460770145865

`∑{d}[n+1, #-3*A002264(#)]`
-/

namespace A082909.P5874418460770145865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 3 * A002264 d)

end

end A082909.P5874418460770145865

namespace A082909

/-- `∑{d}[n+1, #-3*A002264(#)]` -/
def P5874418460770145865.Spec : Prop :=
  ∀ n, P5874418460770145865.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P4202658866504659905

`∑{d}[(n+1)/3^val(n+1, 3), A060236(#)]`
-/

namespace A082909.P4202658866504659905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A060236 d

end

end A082909.P4202658866504659905

namespace A082909

/-- `∑{d}[(n+1)/3^val(n+1, 3), A060236(#)]` -/
def P4202658866504659905.Spec : Prop :=
  ∀ n, P4202658866504659905.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P12543613941548714209

`A008615(A093061(n+1))`
-/

namespace A082909.P12543613941548714209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A093061 (n + 1)).toNat

end

end A082909.P12543613941548714209

namespace A082909

/-- `A008615(A093061(n+1))` -/
def P12543613941548714209.Spec : Prop :=
  ∀ n, P12543613941548714209.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P8122939028249247353

`∑{d}[A038502(n+1), A060236(#)]`
-/

namespace A082909.P8122939028249247353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A060236 d

end

end A082909.P8122939028249247353

namespace A082909

/-- `∑{d}[A038502(n+1), A060236(#)]` -/
def P8122939028249247353.Spec : Prop :=
  ∀ n, P8122939028249247353.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P1114054373367768855

`∑{d}[n+1, A249603(A084933(#))]`
-/

namespace A082909.P1114054373367768855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A249603 (A084933 d).toNat

end

end A082909.P1114054373367768855

namespace A082909

/-- `∑{d}[n+1, A249603(A084933(#))]` -/
def P1114054373367768855.Spec : Prop :=
  ∀ n, P1114054373367768855.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P5970124117315688957

`A035191(n+1)+A001822(n+1)`
-/

namespace A082909.P5970124117315688957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1) + A001822 (n + 1)

end

end A082909.P5970124117315688957

namespace A082909

/-- `A035191(n+1)+A001822(n+1)` -/
def P5970124117315688957.Spec : Prop :=
  ∀ n, P5970124117315688957.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P10299909922699784773

`A372713(n+1)-A326394(n+1)`
-/

namespace A082909.P10299909922699784773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (n + 1) - A326394 (n + 1)

end

end A082909.P10299909922699784773

namespace A082909

/-- `A372713(n+1)-A326394(n+1)` -/
def P10299909922699784773.Spec : Prop :=
  ∀ n, P10299909922699784773.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P5071853918962718513

`A001817(n+1)+2*A001822(n+1)`
-/

namespace A082909.P5071853918962718513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + 2 * A001822 (n + 1)

end

end A082909.P5071853918962718513

namespace A082909

/-- `A001817(n+1)+2*A001822(n+1)` -/
def P5071853918962718513.Spec : Prop :=
  ∀ n, P5071853918962718513.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P5709450067324069420

`2*A035191(n+1)-A001817(n+1)`
-/

namespace A082909.P5709450067324069420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035191 (n + 1) - A001817 (n + 1)

end

end A082909.P5709450067324069420

namespace A082909

/-- `2*A035191(n+1)-A001817(n+1)` -/
def P5709450067324069420.Spec : Prop :=
  ∀ n, P5709450067324069420.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P17681985443206896989

`A000005(3*(n+1))-A326394(n+1)`
-/

namespace A082909.P17681985443206896989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1)) - A326394 (n + 1)

end

end A082909.P17681985443206896989

namespace A082909

/-- `A000005(3*(n+1))-A326394(n+1)` -/
def P17681985443206896989.Spec : Prop :=
  ∀ n, P17681985443206896989.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P15439242247402736881

`A001822(n+1)+A000005((n+1)/3^val(n+1, 3))`
-/

namespace A082909.P15439242247402736881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) + A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A082909.P15439242247402736881

namespace A082909

/-- `A001822(n+1)+A000005((n+1)/3^val(n+1, 3))` -/
def P15439242247402736881.Spec : Prop :=
  ∀ n, P15439242247402736881.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P12034876255172684881

`A035191(n+1)+A218443(n+1)-A218443(n)`
-/

namespace A082909.P12034876255172684881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1) + (A218443 (n + 1) - A218443 n)

end

end A082909.P12034876255172684881

namespace A082909

/-- `A035191(n+1)+A218443(n+1)-A218443(n)` -/
def P12034876255172684881.Spec : Prop :=
  ∀ n, P12034876255172684881.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P8415291308334646201

`A001817(n+1)+A035191(n+1)-A002324(n+1)`
-/

namespace A082909.P8415291308334646201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + (A035191 (n + 1) - A002324 (n + 1))

end

end A082909.P8415291308334646201

namespace A082909

/-- `A001817(n+1)+A035191(n+1)-A002324(n+1)` -/
def P8415291308334646201.Spec : Prop :=
  ∀ n, P8415291308334646201.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P13123065722284668222

`A000005(n+1)+A035191(n+1)-A326394(n+1)`
-/

namespace A082909.P13123065722284668222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A035191 (n + 1) - A326394 (n + 1))

end

end A082909.P13123065722284668222

namespace A082909

/-- `A000005(n+1)+A035191(n+1)-A326394(n+1)` -/
def P13123065722284668222.Spec : Prop :=
  ∀ n, P13123065722284668222.a n = A082909 (n + 1)

end A082909

/-! ## A082909.P8765720693910334823

`∑{d}[n+1, A010872(#)]`
-/

namespace A082909.P8765720693910334823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010872 d

end

end A082909.P8765720693910334823

namespace A082909

/-- `∑{d}[n+1, A010872(#)]` -/
def P8765720693910334823.Spec : Prop :=
  ∀ n, P8765720693910334823.a n = A082909 (n + 1)

theorem P8765720693910334823.correct : P8765720693910334823.Spec := by
  intro n
  simp only [A082909, Nat.add_sub_cancel, A082909.P8765720693910334823.f1, A082909.P8765720693910334823.a, A082909.P666252728659787957.f1, A082909.P666252728659787957.a, A010872, A010872.P9752549328412734763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082909

/-!
# A082910: a(n) = prime(prime(n+1)-prime(n)).

The programs for A082910, the canonical program `A082910.P3727827180533650238` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082910 has offset 1).

The definition of A082910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+2)-A000040(n+1))` (program `A082910.P3727827180533650238`, by `A082910.P3727827180533650238.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082910.P2751225742922623237

`A000040(A001223(n+1))`
-/

namespace A082910.P2751225742922623237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001223 (n + 1)).toNat

end

end A082910.P2751225742922623237

namespace A082910

/-- `A000040(A001223(n+1))` -/
def P2751225742922623237.Spec : Prop :=
  ∀ n, P2751225742922623237.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P3727827180533650238

`A000040(A000040(n+2)-A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082910

/-- `A000040(A000040(n+2)-A000040(n+1))` -/
def P3727827180533650238.Spec : Prop :=
  ∀ n, P3727827180533650238.a n = A082910 (n + 1)

theorem P3727827180533650238.correct : P3727827180533650238.Spec := by
  intro n
  simp only [A082910, Nat.add_sub_cancel]

end A082910

/-! ## A082910.P3723716111304686610

`A067747(A100803(n+1))`
-/

namespace A082910.P3723716111304686610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A100803 (n + 1)).toNat

end

end A082910.P3723716111304686610

namespace A082910

/-- `A067747(A100803(n+1))` -/
def P3723716111304686610.Spec : Prop :=
  ∀ n, P3723716111304686610.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P16997235797292908857

`A000040(log2(A218075(n+1)))`
-/

namespace A082910.P16997235797292908857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.logb 2 (A218075 (n + 1) : ℝ))).toNat

end

end A082910.P16997235797292908857

namespace A082910

/-- `A000040(log2(A218075(n+1)))` -/
def P16997235797292908857.Spec : Prop :=
  ∀ n, P16997235797292908857.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P11444973243244627960

`A008578(A001223(n+1)+1)`
-/

namespace A082910.P11444973243244627960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001223 (n + 1) + 1).toNat

end

end A082910.P11444973243244627960

namespace A082910

/-- `A008578(A001223(n+1)+1)` -/
def P11444973243244627960.Spec : Prop :=
  ∀ n, P11444973243244627960.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P4243695041780174975

`A000040(A046933(n+1)+1)`
-/

namespace A082910.P4243695041780174975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046933 (n + 1) + 1).toNat

end

end A082910.P4243695041780174975

namespace A082910

/-- `A000040(A046933(n+1)+1)` -/
def P4243695041780174975.Spec : Prop :=
  ∀ n, P4243695041780174975.a n = A082910 (n + 1)

theorem P4243695041780174975.correct : P4243695041780174975.Spec := by
  intro n
  simp only [A082910, Nat.add_sub_cancel, A082910.P4243695041780174975.a, A082910.P3727827180533650238.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082910

/-! ## A082910.P3429057209989908712

`A182986(A001223(n+1)+1)`
-/

namespace A082910.P3429057209989908712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A001223 (n + 1) + 1).toNat

end

end A082910.P3429057209989908712

namespace A082910

/-- `A182986(A001223(n+1)+1)` -/
def P3429057209989908712.Spec : Prop :=
  ∀ n, P3429057209989908712.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P18021166574208026746

`A008578(A046933(n+1)+2)`
-/

namespace A082910.P18021166574208026746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046933 (n + 1) + 2).toNat

end

end A082910.P18021166574208026746

namespace A082910

/-- `A008578(A046933(n+1)+2)` -/
def P18021166574208026746.Spec : Prop :=
  ∀ n, P18021166574208026746.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P11986100324885261224

`A158611(A001223(n+1)+2)`
-/

namespace A082910.P11986100324885261224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A001223 (n + 1) + 2).toNat

end

end A082910.P11986100324885261224

namespace A082910

/-- `A158611(A001223(n+1)+2)` -/
def P11986100324885261224.Spec : Prop :=
  ∀ n, P11986100324885261224.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P2356130529494425080

`A073846(2*A001223(n+1))`
-/

namespace A082910.P2356130529494425080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A001223 (n + 1)).toNat

end

end A082910.P2356130529494425080

namespace A082910

/-- `A073846(2*A001223(n+1))` -/
def P2356130529494425080.Spec : Prop :=
  ∀ n, P2356130529494425080.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P2067115762631482866

`A082500(2*A001223(n+1))`
-/

namespace A082910.P2067115762631482866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A001223 (n + 1)).toNat

end

end A082910.P2067115762631482866

namespace A082910

/-- `A082500(2*A001223(n+1))` -/
def P2067115762631482866.Spec : Prop :=
  ∀ n, P2067115762631482866.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P4515420921089427023

`A109921(2*A001223(n+1))`
-/

namespace A082910.P4515420921089427023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (2 * A001223 (n + 1)).toNat

end

end A082910.P4515420921089427023

namespace A082910

/-- `A109921(2*A001223(n+1))` -/
def P4515420921089427023.Spec : Prop :=
  ∀ n, P4515420921089427023.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P12406097775174284538

`A154279(2*A001223(n+1))`
-/

namespace A082910.P12406097775174284538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154279 (2 * A001223 (n + 1)).toNat

end

end A082910.P12406097775174284538

namespace A082910

/-- `A154279(2*A001223(n+1))` -/
def P12406097775174284538.Spec : Prop :=
  ∀ n, P12406097775174284538.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P6302814771398319631

`A219606(2*A001223(n+1))`
-/

namespace A082910.P6302814771398319631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A001223 (n + 1)).toNat

end

end A082910.P6302814771398319631

namespace A082910

/-- `A219606(2*A001223(n+1))` -/
def P6302814771398319631.Spec : Prop :=
  ∀ n, P6302814771398319631.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P6721381999218907697

`A000040(A123128(n+1)-(n+1))`
-/

namespace A082910.P6721381999218907697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123128 (n + 1) - (n + 1 : ℤ)).toNat

end

end A082910.P6721381999218907697

namespace A082910

/-- `A000040(A123128(n+1)-(n+1))` -/
def P6721381999218907697.Spec : Prop :=
  ∀ n, P6721381999218907697.a n = A082910 (n + 1)

theorem P6721381999218907697.correct : P6721381999218907697.Spec := by
  intro n
  simp only [A082910, Nat.add_sub_cancel, A082910.P6721381999218907697.a, A082910.P3727827180533650238.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A123128, A123128.P14620295915267660605.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082910

/-! ## A082910.P15148990942020336268

`A000040(n+2-A147965(n+1))`
-/

namespace A082910.P15148990942020336268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 2 : ℤ) - A147965 (n + 1)).toNat

end

end A082910.P15148990942020336268

namespace A082910

/-- `A000040(n+2-A147965(n+1))` -/
def P15148990942020336268.Spec : Prop :=
  ∀ n, P15148990942020336268.a n = A082910 (n + 1)

theorem P15148990942020336268.correct : P15148990942020336268.Spec := by
  intro n
  simp only [A082910, Nat.add_sub_cancel, A082910.P15148990942020336268.a, A082910.P3727827180533650238.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A147965, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082910

/-! ## A082910.P637870613420468137

`A000040(A141042(n+1)/(n+1))`
-/

namespace A082910.P637870613420468137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A141042 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A082910.P637870613420468137

namespace A082910

/-- `A000040(A141042(n+1)/(n+1))` -/
def P637870613420468137.Spec : Prop :=
  ∀ n, P637870613420468137.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P1907277196508140676

`A000040(A291463(n+1)/A000040(n+1))`
-/

namespace A082910.P1907277196508140676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A291463 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A082910.P1907277196508140676

namespace A082910

/-- `A000040(A291463(n+1)/A000040(n+1))` -/
def P1907277196508140676.Spec : Prop :=
  ∀ n, P1907277196508140676.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P4735982978228105370

`A000040(A075526(n+1))`
-/

namespace A082910.P4735982978228105370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075526 (n + 1)).toNat

end

end A082910.P4735982978228105370

namespace A082910

/-- `A000040(A075526(n+1))` -/
def P4735982978228105370.Spec : Prop :=
  ∀ n, P4735982978228105370.a n = A082910 (n + 1)

end A082910

/-! ## A082910.P3829572038444338357

`A000040(A054541(n+2))`
-/

namespace A082910.P3829572038444338357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054541 (n + 2)).toNat

end

end A082910.P3829572038444338357

namespace A082910

/-- `A000040(A054541(n+2))` -/
def P3829572038444338357.Spec : Prop :=
  ∀ n, P3829572038444338357.a n = A082910 (n + 1)

end A082910

/-!
# A082911: a(n) = prime(n+pi(n)) - prime(n) = A000040(n+A000720(n)) - A000040(n).

The programs for A082911, the canonical program `A082911.P1325522171464418407` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082911 has offset 1).

The definition of A082911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1+A000720(n+1))-A000040(n+1)` (program `A082911.P7396302864402239672`, by `A082911.P7396302864402239672.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082911.P7396302864402239672

`A000040(n+1+A000720(n+1))-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082911.P7396302864402239672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A000720 (n + 1)).toNat - A000040 (n + 1)

end

end A082911.P7396302864402239672

namespace A082911

/-- `A000040(n+1+A000720(n+1))-A000040(n+1)` -/
def P7396302864402239672.Spec : Prop :=
  ∀ n, P7396302864402239672.a n = A082911 (n + 1)

theorem P7396302864402239672.correct : P7396302864402239672.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P7396302864402239672.a, A082911.P1325522171464418407.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082911

/-! ## A082911.P1325522171464418407

`A000040(n+A000720(n+1)+1)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082911

/-- `A000040(n+A000720(n+1)+1)-A000040(n+1)` -/
def P1325522171464418407.Spec : Prop :=
  ∀ n, P1325522171464418407.a n = A082911 (n + 1)

theorem P1325522171464418407.correct : P1325522171464418407.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel]

end A082911

/-! ## A082911.P10816056801247223642

`A084792(n+1)-A000040(n+1)`
-/

namespace A082911.P10816056801247223642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (n + 1) - A000040 (n + 1)

end

end A082911.P10816056801247223642

namespace A082911

/-- `A084792(n+1)-A000040(n+1)` -/
def P10816056801247223642.Spec : Prop :=
  ∀ n, P10816056801247223642.a n = A082911 (n + 1)

theorem P10816056801247223642.correct : P10816056801247223642.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P10816056801247223642.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084792, A084792.P10596812045351244596.a, A077152, A077152.P46394233739287092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P12786018397279372112

`A077152(n+1)-A008864(n+1)`
-/

namespace A082911.P12786018397279372112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077152 (n + 1) - A008864 (n + 1)

end

end A082911.P12786018397279372112

namespace A082911

/-- `A077152(n+1)-A008864(n+1)` -/
def P12786018397279372112.Spec : Prop :=
  ∀ n, P12786018397279372112.a n = A082911 (n + 1)

theorem P12786018397279372112.correct : P12786018397279372112.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P12786018397279372112.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, A077152, A077152.P46394233739287092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P13750052501507331324

`A084747(n+1)-A014689(n+1)`
-/

namespace A082911.P13750052501507331324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (n + 1) - A014689 (n + 1)

end

end A082911.P13750052501507331324

namespace A082911

/-- `A084747(n+1)-A014689(n+1)` -/
def P13750052501507331324.Spec : Prop :=
  ∀ n, P13750052501507331324.a n = A082911 (n + 1)

theorem P13750052501507331324.correct : P13750052501507331324.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P13750052501507331324.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A084747, A084747.P15992443323963649350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P14988604340401102904

`A084792(n+1)-(A006093(n+1)+1)`
-/

namespace A082911.P14988604340401102904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (n + 1) - (A006093 (n + 1) + 1)

end

end A082911.P14988604340401102904

namespace A082911

/-- `A084792(n+1)-(A006093(n+1)+1)` -/
def P14988604340401102904.Spec : Prop :=
  ∀ n, P14988604340401102904.a n = A082911 (n + 1)

theorem P14988604340401102904.correct : P14988604340401102904.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P14988604340401102904.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, A084792, A084792.P10596812045351244596.a, A077152, A077152.P46394233739287092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P18281308327319348499

`A084747(n+1)-A006093(n+1)+n`
-/

namespace A082911.P18281308327319348499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (n + 1) - A006093 (n + 1) + (n : ℤ)

end

end A082911.P18281308327319348499

namespace A082911

/-- `A084747(n+1)-A006093(n+1)+n` -/
def P18281308327319348499.Spec : Prop :=
  ∀ n, P18281308327319348499.a n = A082911 (n + 1)

theorem P18281308327319348499.correct : P18281308327319348499.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P18281308327319348499.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, A084747, A084747.P15992443323963649350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P14850645815456269370

`A084792(n+1)-A008578(n+2)`
-/

namespace A082911.P14850645815456269370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (n + 1) - A008578 (n + 2)

end

end A082911.P14850645815456269370

namespace A082911

/-- `A084792(n+1)-A008578(n+2)` -/
def P14850645815456269370.Spec : Prop :=
  ∀ n, P14850645815456269370.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P10982006449703280287

`A000040(A095117(n+1))-A000040(n+1)`
-/

namespace A082911.P10982006449703280287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095117 (n + 1)).toNat - A000040 (n + 1)

end

end A082911.P10982006449703280287

namespace A082911

/-- `A000040(A095117(n+1))-A000040(n+1)` -/
def P10982006449703280287.Spec : Prop :=
  ∀ n, P10982006449703280287.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P10534276142662592940

`A006093(A095117(n+1))-A006093(n+1)`
-/

namespace A082911.P10534276142662592940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A095117 (n + 1)).toNat - A006093 (n + 1)

end

end A082911.P10534276142662592940

namespace A082911

/-- `A006093(A095117(n+1))-A006093(n+1)` -/
def P10534276142662592940.Spec : Prop :=
  ∀ n, P10534276142662592940.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P2471931680679748717

`A008578(A064427(n+2))-A008578(n+2)`
-/

namespace A082911.P2471931680679748717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064427 (n + 2)).toNat - A008578 (n + 2)

end

end A082911.P2471931680679748717

namespace A082911

/-- `A008578(A064427(n+2))-A008578(n+2)` -/
def P2471931680679748717.Spec : Prop :=
  ∀ n, P2471931680679748717.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P11500898818769303002

`A299763(A064427(n+2))-A299763(n+2)`
-/

namespace A082911.P11500898818769303002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (A064427 (n + 2)).toNat - A299763 (n + 2)

end

end A082911.P11500898818769303002

namespace A082911

/-- `A299763(A064427(n+2))-A299763(n+2)` -/
def P11500898818769303002.Spec : Prop :=
  ∀ n, P11500898818769303002.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P1831184094935044562

`A000040(A036234(n+1)+n)-A000040(n+1)`
-/

namespace A082911.P1831184094935044562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 (n + 1) + (n : ℤ)).toNat - A000040 (n + 1)

end

end A082911.P1831184094935044562

namespace A082911

/-- `A000040(A036234(n+1)+n)-A000040(n+1)` -/
def P1831184094935044562.Spec : Prop :=
  ∀ n, P1831184094935044562.a n = A082911 (n + 1)

theorem P1831184094935044562.correct : P1831184094935044562.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P1831184094935044562.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P2164489257943292386

`A006005(A036234(n+1)+n)-A006005(n+1)`
-/

namespace A082911.P2164489257943292386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A036234 (n + 1) + (n : ℤ)).toNat - A006005 (n + 1)

end

end A082911.P2164489257943292386

namespace A082911

/-- `A006005(A036234(n+1)+n)-A006005(n+1)` -/
def P2164489257943292386.Spec : Prop :=
  ∀ n, P2164489257943292386.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P7982069551173263630

`A006093(A036234(n+1)+n)-A006093(n+1)`
-/

namespace A082911.P7982069551173263630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A036234 (n + 1) + (n : ℤ)).toNat - A006093 (n + 1)

end

end A082911.P7982069551173263630

namespace A082911

/-- `A006093(A036234(n+1)+n)-A006093(n+1)` -/
def P7982069551173263630.Spec : Prop :=
  ∀ n, P7982069551173263630.a n = A082911 (n + 1)

theorem P7982069551173263630.correct : P7982069551173263630.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P7982069551173263630.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P8462034075496470591

`A008864(A036234(n+1)+n)-A008864(n+1)`
-/

namespace A082911.P8462034075496470591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A036234 (n + 1) + (n : ℤ)).toNat - A008864 (n + 1)

end

end A082911.P8462034075496470591

namespace A082911

/-- `A008864(A036234(n+1)+n)-A008864(n+1)` -/
def P8462034075496470591.Spec : Prop :=
  ∀ n, P8462034075496470591.a n = A082911 (n + 1)

theorem P8462034075496470591.correct : P8462034075496470591.Spec := by
  intro n
  simp only [A082911, Nat.add_sub_cancel, A082911.P8462034075496470591.a, A082911.P1325522171464418407.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082911

/-! ## A082911.P14983225270053332184

`A000040(A230980(n+1)+n+1)-A000040(n+1)`
-/

namespace A082911.P14983225270053332184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (n + 1) + (n + 1 : ℤ)).toNat - A000040 (n + 1)

end

end A082911.P14983225270053332184

namespace A082911

/-- `A000040(A230980(n+1)+n+1)-A000040(n+1)` -/
def P14983225270053332184.Spec : Prop :=
  ∀ n, P14983225270053332184.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P5005465693052312419

`A000040(∑[A010051(n+1)]+n+1)-A000040(n+1)`
-/

namespace A082911.P5005465693052312419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)).toNat - A000040 (n + 1)

end

end A082911.P5005465693052312419

namespace A082911

/-- `A000040(∑[A010051(n+1)]+n+1)-A000040(n+1)` -/
def P5005465693052312419.Spec : Prop :=
  ∀ n, P5005465693052312419.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P4090115431850755546

`A000040(A338215(A018252(n+1)))-A000040(n+1)`
-/

namespace A082911.P4090115431850755546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338215 (A018252 (n + 1)).toNat).toNat - A000040 (n + 1)

end

end A082911.P4090115431850755546

namespace A082911

/-- `A000040(A338215(A018252(n+1)))-A000040(n+1)` -/
def P4090115431850755546.Spec : Prop :=
  ∀ n, P4090115431850755546.a n = A082911 (n + 1)

end A082911

/-! ## A082911.P683877009618649434

`A084792(n+1)-A134735(2*n+1)`
-/

namespace A082911.P683877009618649434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (n + 1) - A134735 (2 * n + 1)

end

end A082911.P683877009618649434

namespace A082911

/-- `A084792(n+1)-A134735(2*n+1)` -/
def P683877009618649434.Spec : Prop :=
  ∀ n, P683877009618649434.a n = A082911 (n + 1)

end A082911

/-!
# A082913: Least k such that H(k) > 2^n, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

The programs for A082913, the canonical program `A082913.P7963033786630401460` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082913 has offset 0).

The definition of A082913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082913.P7963033786630401460

`A002387(2^n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082913

/-- `A002387(2^n)` -/
def P7963033786630401460.Spec : Prop :=
  ∀ n, P7963033786630401460.a n = A082913 n

theorem P7963033786630401460.correct : P7963033786630401460.Spec := by
  intro n
  simp only [A082913]

end A082913

/-! ## A082913.P14923359117989419290

`record[A002387(A082392(n))]`
-/

namespace A082913.P14923359117989419290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A082392 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082913.P14923359117989419290

namespace A082913

/-- `record[A002387(A082392(n))]` -/
def P14923359117989419290.Spec : Prop :=
  ∀ n, P14923359117989419290.a n = A082913 n

end A082913

/-! ## A082913.P8499360896615316590

`A002387(A000079(n))*A063994(2*n+2)`
-/

namespace A082913.P8499360896615316590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A000079 n).toNat * A063994 (2 * n + 2)

end

end A082913.P8499360896615316590

namespace A082913

/-- `A002387(A000079(n))*A063994(2*n+2)` -/
def P8499360896615316590.Spec : Prop :=
  ∀ n, P8499360896615316590.a n = A082913 n

end A082913

/-!
# A082914: a(n) = n! / A003040(n).

The programs for A082914, there is no canonical definition to state claims against.
-/

/-! ## A082914.P3899760889809618805

`(n+1)!/A003040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082914.P3899760889809618805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A003040 (n + 1) : ℚ)

end

end A082914.P3899760889809618805

/-! ## A082914.P7582677674771853758

`record[A084938(n)]/A003040(n+1)`
-/

namespace A082914.P7582677674771853758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A003040 (n + 1) : ℚ)

end

end A082914.P7582677674771853758

/-! ## A082914.P6312920064451486873

`A000142(n+1)/A003040(n+1)`
-/

namespace A082914.P6312920064451486873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A003040 (n + 1) : ℚ)

end

end A082914.P6312920064451486873

/-! ## A082914.P6481961541236840953

`∏[A008619(2*n)]/A003040(n+1)`
-/

namespace A082914.P6481961541236840953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A003040 (n + 1) : ℚ)

end

end A082914.P6481961541236840953

/-! ## A082914.P14467784785182057877

`∏[A131732(2*n)]/A003040(n+1)`
-/

namespace A082914.P14467784785182057877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A003040 (n + 1) : ℚ)

end

end A082914.P14467784785182057877

/-! ## A082914.P12431611994875700092

`A000165(n+1)/(A000079(n+1)*A003040(n+1))`
-/

namespace A082914.P12431611994875700092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 (n + 1) : ℚ) / (A000079 (n + 1) * A003040 (n + 1) : ℚ)

end

end A082914.P12431611994875700092

/-!
# A082916: Numbers k such that k and binomial(2*k, k) are relatively prime.

The programs for A082916, the canonical program `A082916.P8694465094910218775` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082916 has offset 1).

The definition of A082916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082916.P9739978296954097969

`eq[1, gcd(n, A053214(n))]`
-/

namespace A082916.P9739978296954097969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A053214 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082916.P9739978296954097969

namespace A082916

/-- `eq[1, gcd(n, A053214(n))]` -/
def P9739978296954097969.Spec : Prop :=
  ∀ n, (P9739978296954097969.a n : ℤ) = A082916 (n + 1)

end A082916

/-! ## A082916.P8694465094910218775

`record[A093527(n)-A000007(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082916

/-- `record[A093527(n)-A000007(n)]` -/
def P8694465094910218775.Spec : Prop :=
  ∀ n, P8694465094910218775.a n = A082916 (n + 1)

theorem P8694465094910218775.correct : P8694465094910218775.Spec := by
  intro n
  simp only [A082916, Nat.add_sub_cancel]

end A082916

/-! ## A082916.P16826555020702971472

`record[A093527(n)%A005902(n)]`
-/

namespace A082916.P16826555020702971472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093527 n) (A005902 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P16826555020702971472

namespace A082916

/-- `record[A093527(n)%A005902(n)]` -/
def P16826555020702971472.Spec : Prop :=
  ∀ n, P16826555020702971472.a n = A082916 (n + 1)

end A082916

/-! ## A082916.P15319311461271124360

`record[A049077(n+1)-A008425(n)]`
-/

namespace A082916.P15319311461271124360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1) - A008425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P15319311461271124360

namespace A082916

/-- `record[A049077(n+1)-A008425(n)]` -/
def P15319311461271124360.Spec : Prop :=
  ∀ n, P15319311461271124360.a n = A082916 (n + 1)

end A082916

/-! ## A082916.P6535065439754003333

`record[A043545(n)*A049077(n+1)]`
-/

namespace A082916.P6535065439754003333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A049077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P6535065439754003333

namespace A082916

/-- `record[A043545(n)*A049077(n+1)]` -/
def P6535065439754003333.Spec : Prop :=
  ∀ n, P6535065439754003333.a n = A082916 (n + 1)

end A082916

/-! ## A082916.P4516839626984553404

`record[A049077(n+1)%A110516(n)]`
-/

namespace A082916.P4516839626984553404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049077 (n + 1)) (A110516 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P4516839626984553404

namespace A082916

/-- `record[A049077(n+1)%A110516(n)]` -/
def P4516839626984553404.Spec : Prop :=
  ∀ n, P4516839626984553404.a n = A082916 (n + 1)

end A082916

/-! ## A082916.P11469041098791992863

`record[and(A004525(n), A049077(n+1))]`
-/

namespace A082916.P11469041098791992863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 n) (A049077 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P11469041098791992863

namespace A082916

/-- `record[and(A004525(n), A049077(n+1))]` -/
def P11469041098791992863.Spec : Prop :=
  ∀ n, P11469041098791992863.a n = A082916 (n + 1)

end A082916

/-! ## A082916.P3883527550078352396

`record[A049077(n+1)-A122698(n+1)]`
-/

namespace A082916.P3883527550078352396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1) - A122698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P3883527550078352396

namespace A082916

/-- `record[A049077(n+1)-A122698(n+1)]` -/
def P3883527550078352396.Spec : Prop :=
  ∀ n, P3883527550078352396.a n = A082916 (n + 1)

end A082916

/-! ## A082916.P14323090766306479558

`record[A049077(n+1)-A143520(n+1)]`
-/

namespace A082916.P14323090766306479558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1) - A143520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082916.P14323090766306479558

namespace A082916

/-- `record[A049077(n+1)-A143520(n+1)]` -/
def P14323090766306479558.Spec : Prop :=
  ∀ n, P14323090766306479558.a n = A082916 (n + 1)

end A082916

/-! ## A082916.P16833428146152104752

`eq[A049077(A267352(n)), A257088(n)]`
-/

namespace A082916.P16833428146152104752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A267352 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082916.P16833428146152104752

namespace A082916

/-- `eq[A049077(A267352(n)), A257088(n)]` -/
def P16833428146152104752.Spec : Prop :=
  ∀ n, (P16833428146152104752.a n : ℤ) = A082916 (n + 1)

end A082916

/-! ## A082916.P3980398580391851367

`eq[A049077(A257088(n)+n), A257088(n)]`
-/

namespace A082916.P3980398580391851367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A257088 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082916.P3980398580391851367

namespace A082916

/-- `eq[A049077(A257088(n)+n), A257088(n)]` -/
def P3980398580391851367.Spec : Prop :=
  ∀ n, (P3980398580391851367.a n : ℤ) = A082916 (n + 1)

end A082916

/-!
# A082917: Numbers that can be expressed as the sum of two odd primes in more ways than any smaller even number.

The programs for A082917, there is no canonical definition to state claims against.
-/

/-! ## A082917.P11923722725368182983

`(ceil(acot(n))+1)*A053033(n+2)`
-/

namespace A082917.P11923722725368182983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ + 1) * A053033 (n + 2)

end

end A082917.P11923722725368182983

/-! ## A082917.P9492025014174168881

`2*(A053033(n+2)+A000007(n))`
-/

namespace A082917.P9492025014174168881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053033 (n + 2) + A000007 n)

end

end A082917.P9492025014174168881

/-! ## A082917.P15839216669903700936

`A000038(n)+2*A053033(n+2)`
-/

namespace A082917.P15839216669903700936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 2 * A053033 (n + 2)

end

end A082917.P15839216669903700936

/-! ## A082917.P13703227159962503432

`2*(A053033(n+2)+A008683((n+1)²))`
-/

namespace A082917.P13703227159962503432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053033 (n + 2) + A008683 ((n + 1) ^ 2))

end

end A082917.P13703227159962503432

/-! ## A082917.P9780235100280783845

`2*(A053033(n+2)+A010051(2*(n+1)))`
-/

namespace A082917.P9780235100280783845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053033 (n + 2) + A010051 (2 * (n + 1)))

end

end A082917.P9780235100280783845

/-! ## A082917.P10813611513570662327

`2*(A053033(n+2)-A000032(C(2, n+2))+1)+2`
-/

namespace A082917.P10813611513570662327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053033 (n + 2) - A000032 (Nat.choose 2 (n + 2)) + 1) + 2

end

end A082917.P10813611513570662327

/-! ## A082917.P6059510564900809398

`A053033(n+2)*A085058(A008574(n))`
-/

namespace A082917.P6059510564900809398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 2) * A085058 (A008574 n).toNat

end

end A082917.P6059510564900809398

/-! ## A082917.P6218505494514025317

`A053033(n+2)*A085058(A022144(n))`
-/

namespace A082917.P6218505494514025317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 2) * A085058 (A022144 n).toNat

end

end A082917.P6218505494514025317

/-! ## A082917.P16995774222612490698

`A053033(n+2)*A174238(A000040(n+1))`
-/

namespace A082917.P16995774222612490698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 2) * A174238 (A000040 (n + 1)).toNat

end

end A082917.P16995774222612490698

/-! ## A082917.P16781238581004000099

`A053033(n+2)*A178815(A001031(n+1))`
-/

namespace A082917.P16781238581004000099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 2) * A178815 (A001031 (n + 1)).toNat

end

end A082917.P16781238581004000099

/-! ## A082917.P14466749586966085060

`A053033(n+2)*A295878(A001749(n+1))`
-/

namespace A082917.P14466749586966085060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 2) * A295878 (A001749 (n + 1)).toNat

end

end A082917.P14466749586966085060

/-! ## A082917.P4379127527773487324

`A053033(n+2)*A178815(A002372(n+3))`
-/

namespace A082917.P4379127527773487324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 2) * A178815 (A002372 (n + 3)).toNat

end

end A082917.P4379127527773487324

/-! ## A082917.P14586183208623567955

`A053033(n+2)*A178815(A035026(n+3))`
-/

namespace A082917.P14586183208623567955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 2) * A178815 (A035026 (n + 3)).toNat

end

end A082917.P14586183208623567955

/-! ## A082917.P2609755739931538725

`A001172(n+1)/A136244(n+1)*A053033(n+2)`
-/

namespace A082917.P2609755739931538725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001172 (n + 1) : ℚ) / (A136244 (n + 1) : ℚ) * (A053033 (n + 2) : ℚ)

end

end A082917.P2609755739931538725

/-! ## A082917.P556375442167648998

`A109679(n+2)+C(2, (n+1)²)`
-/

namespace A082917.P556375442167648998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109679 (n + 2) + (Nat.choose 2 ((n + 1) ^ 2) : ℤ)

end

end A082917.P556375442167648998

/-! ## A082917.P14739033709613277345

`A109679(n+2)+A000038(n)`
-/

namespace A082917.P14739033709613277345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109679 (n + 2) + A000038 n

end

end A082917.P14739033709613277345

/-! ## A082917.P11864576177728105073

`A109679(n+2)+2*A000007(n)`
-/

namespace A082917.P11864576177728105073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109679 (n + 2) + 2 * A000007 n

end

end A082917.P11864576177728105073

/-! ## A082917.P1476504815542468197

`C(A109679(n+2), ceil(2/A007729(n)))`
-/

namespace A082917.P1476504815542468197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109679 (n + 2)).toNat ⌈2 / (A007729 n : ℚ)⌉.toNat

end

end A082917.P1476504815542468197

/-! ## A082917.P3276934794847232474

`A109679(n+2)+A000096(C(n, A000096(n)))`
-/

namespace A082917.P3276934794847232474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109679 (n + 2) + A000096 (Nat.choose n (A000096 n).toNat)

end

end A082917.P3276934794847232474

/-! ## A082917.P168521529902927685

`A001172(A082918(n+1))`
-/

namespace A082917.P168521529902927685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (A082918 (n + 1)).toNat

end

end A082917.P168521529902927685

/-!
# A082918: Record-setting entries in A002375 (number of decompositions into two odd primes).

The programs for A082918, there is no canonical definition to state claims against.
-/

/-! ## A082918.P5382732334791852042

`record[A061357(n+4)]`
-/

namespace A082918.P5382732334791852042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082918.P5382732334791852042

/-! ## A082918.P18152385888890362692

`record[A322921(n+1)]`
-/

namespace A082918.P18152385888890362692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082918.P18152385888890362692

/-! ## A082918.P15722378983572496523

`record[A045917(n+2)]`
-/

namespace A082918.P15722378983572496523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082918.P15722378983572496523

/-! ## A082918.P10400832691178392143

`record[A002375(n+3)]`
-/

namespace A082918.P10400832691178392143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082918.P10400832691178392143

/-! ## A082918.P16571946130073136192

`A045917(A053033(n+2))`
-/

namespace A082918.P16571946130073136192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A053033 (n + 2)).toNat

end

end A082918.P16571946130073136192

/-! ## A082918.P5633673541361593980

`A002375(A082917(n+1)/2)`
-/

namespace A082918.P5633673541361593980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (SequenceMachineLib.roundAway ((A082917 (n + 1) : ℚ) / 2)).toNat

end

end A082918.P5633673541361593980

/-! ## A082918.P14415203028495462575

`A045917(A082917(n+1)/2)`
-/

namespace A082918.P14415203028495462575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway ((A082917 (n + 1) : ℚ) / 2)).toNat

end

end A082918.P14415203028495462575

/-! ## A082918.P11165452049903795741

`A045917(A109679(n+2)/2)`
-/

namespace A082918.P11165452049903795741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway ((A109679 (n + 2) : ℚ) / 2)).toNat

end

end A082918.P11165452049903795741

/-! ## A082918.P12596779380725201525

`record[round(A002372(n+3)/2)]`
-/

namespace A082918.P12596779380725201525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002372 (n + 3) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082918.P12596779380725201525

/-! ## A082918.P1156445717819789954

`A190353(A082917(n+1))`
-/

namespace A082918.P1156445717819789954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A082917 (n + 1)).toNat

end

end A082918.P1156445717819789954

/-!
# A082919: Numbers k such that k, k+2, k+4, k+6, k+8, k+10, k+12 and k+14 are semiprimes.

The programs for A082919, there is no canonical definition to state claims against.
-/

/-! ## A082919.P6706572898636056298

`∩[A092129(n+1), A092129(n+2)-2]`
-/

namespace A082919.P6706572898636056298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082919.P6706572898636056298

/-! ## A082919.P11496321960623704694

`∩[A118824(2*n+1)+A092129(n+1), A092129(n+1)]`
-/

namespace A082919.P11496321960623704694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * n + 1) + A092129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082919.P11496321960623704694

/-! ## A082919.P5840380847108535542

`∩[A092129(n+1), A092129(n+1)+A001489(n+2)+n]`
-/

namespace A082919.P5840380847108535542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 1) + A001489 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082919.P5840380847108535542

/-! ## A082919.P5403836855690444144

`∩[A092129(n+1), A268578(n+1)]`
-/

namespace A082919.P5403836855690444144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082919.P5403836855690444144

/-! ## A082919.P4467901034535676114

`∩[A092128(n+1), A268578(n+1)]`
-/

namespace A082919.P4467901034535676114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082919.P4467901034535676114

/-!
# A082920: Squares that are the sum of four factorials.

The programs for A082920, there is no canonical definition to state claims against.
-/

/-! ## A082920.P6865107436320235982

`∩[A277011(A014312(n+1)), n²]`
-/

namespace A082920.P6865107436320235982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A014312 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A082920.P6865107436320235982

/-! ## A082920.P15549147130617743460

`filter[A227645(n+1), A065043(#)]`
-/

namespace A082920.P15549147130617743460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A082920.P15549147130617743460

/-! ## A082920.P5352390657005034428

`filter[A227645(n+1), A353269(#)]`
-/

namespace A082920.P5352390657005034428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353269 (f1 j).toNat = 1) n)

end

end A082920.P5352390657005034428

/-! ## A082920.P8871847209799989663

`filter[A227645(n+1), A353331(#)]`
-/

namespace A082920.P8871847209799989663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A082920.P8871847209799989663

/-! ## A082920.P13195449724045460130

`filter[A227645(n+1), A353374(#)]`
-/

namespace A082920.P13195449724045460130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A082920.P13195449724045460130

/-!
# A082921: Sort the digits of these squares into descending order and drop zeros to get primes.

The programs for A082921, there is no canonical definition to state claims against.
-/

/-! ## A082921.P17749939835984497546

`A359493(A106856(n+1)+3)`
-/

namespace A082921.P17749939835984497546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (A106856 (n + 1) + 3).toNat

end

end A082921.P17749939835984497546

/-!
# A082922: Numbers k such that when the digits of Fibonacci(k) are sorted into decreasing order and zeros are dropped it is a prime.

The programs for A082922, there is no canonical definition to state claims against.
-/

/-! ## A082922.P17896753498781074478

`record[or(A117138(n), A185585(n))]`
-/

namespace A082922.P17896753498781074478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117138 n) (A185585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082922.P17896753498781074478

/-! ## A082922.P4075796505608171273

`lt[A202453(n+5), A047679(A001065(3*(n+1)))]`
-/

namespace A082922.P4075796505608171273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (A001065 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082922.P4075796505608171273

/-!
# A082923: Sort the digits of these triangular numbers into descending order and drop zeros to get primes.

The programs for A082923, there is no canonical definition to state claims against.
-/

/-! ## A082923.P9116959736334610322

`A115704(A292125(n+1)+A000194(n))`
-/

namespace A082923.P9116959736334610322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115704 (A292125 (n + 1) + A000194 n).toNat

end

end A082923.P9116959736334610322

/-! ## A082923.P2847989500169740498

`A115704(lt[A054911(2*(n+1)), A219142(n+1)])`
-/

namespace A082923.P2847989500169740498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115704 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082923.P2847989500169740498

/-!
# A082925: Partial sums of A082924.

The programs for A082925, there is no canonical definition to state claims against.
-/

/-! ## A082925.P14377562965134015550

`∑[A082924(n+1)]`
-/

namespace A082925.P14377562965134015550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082925.P14377562965134015550

/-! ## A082925.P7687747086577401877

`A082924(n+1)+a(A023443(n))` with `a(0)=3`
-/

namespace A082925.P7687747086577401877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082924 (n + 1) + a (A023443 n).toNat

end

end A082925.P7687747086577401877

/-! ## A082925.P13868097406826986740

`A082924(n+1)+a(A028310(n)-1)` with `a(0)=3`
-/

namespace A082925.P13868097406826986740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082924 (n + 1) + a (A028310 n - 1).toNat

end

end A082925.P13868097406826986740

/-! ## A082925.P17815550506283387718

`A082924(n+1)+a(n-A054977(n))` with `a(0)=3`
-/

namespace A082925.P17815550506283387718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082924 (n + 1) + a ((n : ℤ) - A054977 n).toNat

end

end A082925.P17815550506283387718

/-! ## A082925.P17162525338725020052

`A082924(n+1)-(A000038(n)-a(n-1))` with `a(0)=3`
-/

namespace A082925.P17162525338725020052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082924 (n + 1) - (A000038 n - a (n - 1))

end

end A082925.P17162525338725020052

/-! ## A082925.P10088254490095585344

`A082924(n+1)+a(n%A000040(n+1)-1)` with `a(0)=3`
-/

namespace A082925.P10088254490095585344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082924 (n + 1) + a (Int.tmod (n : ℤ) (A000040 (n + 1)) - 1).toNat

end

end A082925.P10088254490095585344

/-! ## A082925.P2713074002078297910

`a(n-1)+A082924(n+1)+A000007(n+1)` with `a(0)=3`
-/

namespace A082925.P2713074002078297910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A082924 (n + 1) + A000007 (n + 1))

end

end A082925.P2713074002078297910

/-! ## A082925.P10160704216048471053

`A082924(n+1)+a(log2(A011782(n)))` with `a(0)=3`
-/

namespace A082925.P10160704216048471053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A082924 (n + 1) + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A082925.P10160704216048471053

/-! ## A082925.P13378928266734193366

`A082924(n+1)+sqrt(A253909(a(n-1)))` with `a(0)=3`
-/

namespace A082925.P13378928266734193366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  (A082924 (n + 1) : ℝ) + Real.sqrt (A253909 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A082925.P13378928266734193366

/-!
# A082926: Difference between the number of primes equal to or less than n and (1 + the number of nonsquarefree numbers equal to or less than n).

The programs for A082926, the canonical program `A082926.P7702197728168554890` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082926 has offset 1).

The definition of A082926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057627, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082926.P7702197728168554890

`abs(A057627(n+1)+1-A000720(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082926

/-- `abs(A057627(n+1)+1-A000720(n+1))` -/
def P7702197728168554890.Spec : Prop :=
  ∀ n, P7702197728168554890.a n = A082926 (n + 1)

theorem P7702197728168554890.correct : P7702197728168554890.Spec := by
  intro n
  simp only [A082926, Nat.add_sub_cancel]

end A082926

/-! ## A082926.P12150166744937056688

`abs(∑[A106743(n+1)]+1)`
-/

namespace A082926.P12150166744937056688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A082926.P12150166744937056688

namespace A082926

/-- `abs(∑[A106743(n+1)]+1)` -/
def P12150166744937056688.Spec : Prop :=
  ∀ n, P12150166744937056688.a n = A082926 (n + 1)

end A082926

/-! ## A082926.P10150589345206608692

`abs(∑[A211776(n+1)%3]-2-n)`
-/

namespace A082926.P10150589345206608692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211776 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 2 - (n : ℤ)|

end

end A082926.P10150589345206608692

namespace A082926

/-- `abs(∑[A211776(n+1)%3]-2-n)` -/
def P10150589345206608692.Spec : Prop :=
  ∀ n, P10150589345206608692.a n = A082926 (n + 1)

end A082926

/-! ## A082926.P15159820117518311448

`abs(∑[A121373(A074823(n+1))])`
-/

namespace A082926.P15159820117518311448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A074823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A082926.P15159820117518311448

namespace A082926

/-- `abs(∑[A121373(A074823(n+1))])` -/
def P15159820117518311448.Spec : Prop :=
  ∀ n, P15159820117518311448.a n = A082926 (n + 1)

end A082926

/-! ## A082926.P9923109746043395322

`abs(∑[A156277(A156260(n+1))])`
-/

namespace A082926.P9923109746043395322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A156260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A082926.P9923109746043395322

namespace A082926

/-- `abs(∑[A156277(A156260(n+1))])` -/
def P9923109746043395322.Spec : Prop :=
  ∀ n, P9923109746043395322.a n = A082926 (n + 1)

end A082926

/-! ## A082926.P329494476415786694

`∑[A156277(A156260(n+1))]²^(A054977(n+1)/2)`
-/

namespace A082926.P329494476415786694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A156260 (n + 1)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℝ) ^ ((A054977 (n + 1) : ℚ) / 2 : ℝ)

end

end A082926.P329494476415786694

namespace A082926

/-- `∑[A156277(A156260(n+1))]²^(A054977(n+1)/2)` -/
def P329494476415786694.Spec : Prop :=
  ∀ n, P329494476415786694.a n = (A082926 (n + 1) : ℝ)

end A082926

/-! ## A082926.P18231655056974733217

`abs(∑[A219977(A319138(n+1))])`
-/

namespace A082926.P18231655056974733217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A319138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A082926.P18231655056974733217

namespace A082926

/-- `abs(∑[A219977(A319138(n+1))])` -/
def P18231655056974733217.Spec : Prop :=
  ∀ n, P18231655056974733217.a n = A082926 (n + 1)

end A082926

/-! ## A082926.P9678057241632079258

`gcd(∑[A219977(A319138(n+1))], A007814(2*n+1))`
-/

namespace A082926.P9678057241632079258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A319138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A007814 (2 * n + 1))

end

end A082926.P9678057241632079258

namespace A082926

/-- `gcd(∑[A219977(A319138(n+1))], A007814(2*n+1))` -/
def P9678057241632079258.Spec : Prop :=
  ∀ n, (P9678057241632079258.a n : ℤ) = A082926 (n + 1)

end A082926

/-!
# A082927: Numbers in which at least one pair of adjacent digits differ by 1.

The programs for A082927, the canonical program `A082927.P8299807064602277529` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082927 has offset 1).

The definition of A082927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082927.P9665711672455684245

`eq[0, log2(a(A037913(n)))]` with `a(0)=2`
-/

namespace A082927.P9665711672455684245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f2 =>
  Real.logb 2 (f2 (A037913 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A082927.P9665711672455684245

namespace A082927

/-- `eq[0, log2(a(A037913(n)))]` -/
def P9665711672455684245.Spec : Prop :=
  ∀ n, (P9665711672455684245.a n : ℤ) = A082927 (n + 1)

end A082927

/-! ## A082927.P8299807064602277529

`lt[0, A037913(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082927

/-- `lt[0, A037913(n+1)]+1` -/
def P8299807064602277529.Spec : Prop :=
  ∀ n, (P8299807064602277529.a n : ℤ) = A082927 (n + 1)

theorem P8299807064602277529.correct : P8299807064602277529.Spec := by
  intro n
  simp only [A082927, Nat.add_sub_cancel]

end A082927

/-! ## A082927.P6358494511514231681

`A065475(lt[0, A037913(n+1)])`
-/

namespace A082927.P6358494511514231681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A082927.P6358494511514231681

namespace A082927

/-- `A065475(lt[0, A037913(n+1)])` -/
def P6358494511514231681.Spec : Prop :=
  ∀ n, P6358494511514231681.a n = A082927 (n + 1)

end A082927

/-! ## A082927.P786857065470673151

`lt[1, A001874(a(A037913(n)))]` with `a(0)=0`
-/

namespace A082927.P786857065470673151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001874 (f2 (A037913 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A082927.P786857065470673151

namespace A082927

/-- `lt[1, A001874(a(A037913(n)))]` -/
def P786857065470673151.Spec : Prop :=
  ∀ n, (P786857065470673151.a n : ℤ) = A082927 (n + 1)

end A082927

/-! ## A082927.P5128204495832210427

`lt[1, A054859(a(A037913(n)))]` with `a(0)=0`
-/

namespace A082927.P5128204495832210427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A054859 (f2 (A037913 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A082927.P5128204495832210427

namespace A082927

/-- `lt[1, A054859(a(A037913(n)))]` -/
def P5128204495832210427.Spec : Prop :=
  ∀ n, (P5128204495832210427.a n : ℤ) = A082927 (n + 1)

end A082927

/-! ## A082927.P15715819957942768544

`eq[1, A000007(a(A037913(n)))]` with `a(0)=2`
-/

namespace A082927.P15715819957942768544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000007 (f2 (A037913 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082927.P15715819957942768544

namespace A082927

/-- `eq[1, A000007(a(A037913(n)))]` -/
def P15715819957942768544.Spec : Prop :=
  ∀ n, (P15715819957942768544.a n : ℤ) = A082927 (n + 1)

end A082927

/-! ## A082927.P7292304982156298155

`eq[1, A000010(a(A037913(n)))]` with `a(0)=3`
-/

namespace A082927.P7292304982156298155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A037913 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082927.P7292304982156298155

namespace A082927

/-- `eq[1, A000010(a(A037913(n)))]` -/
def P7292304982156298155.Spec : Prop :=
  ∀ n, (P7292304982156298155.a n : ℤ) = A082927 (n + 1)

end A082927

/-! ## A082927.P14465936770969387549

`eq[1, A000034(a(A037913(n)))]` with `a(0)=3`
-/

namespace A082927.P14465936770969387549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000034 (f2 (A037913 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082927.P14465936770969387549

namespace A082927

/-- `eq[1, A000034(a(A037913(n)))]` -/
def P14465936770969387549.Spec : Prop :=
  ∀ n, (P14465936770969387549.a n : ℤ) = A082927 (n + 1)

end A082927

/-! ## A082927.P4552385373010632845

`eq[1, A000045(a(A037913(n)))]` with `a(0)=3`
-/

namespace A082927.P4552385373010632845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A037913 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082927.P4552385373010632845

namespace A082927

/-- `eq[1, A000045(a(A037913(n)))]` -/
def P4552385373010632845.Spec : Prop :=
  ∀ n, (P4552385373010632845.a n : ℤ) = A082927 (n + 1)

end A082927

/-! ## A082927.P3303751773401693232

`comp[A358054(n)]`
-/

namespace A082927.P3303751773401693232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358054 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A082927.P3303751773401693232

namespace A082927

/-- `comp[A358054(n)]` -/
def P3303751773401693232.Spec : Prop :=
  ∀ n, (P3303751773401693232.a n : ℤ) = A082927 (n + 1)

end A082927

/-!
# A082928: If n is prime, a(n) = n+1; if n is even, a(n) = n/2; otherwise a(n) = n.

The programs for A082928, the canonical program `A082928.P3722669598215508231` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082928 has offset 1).

The definition of A082928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082928.P18302146650641530866

`A082924(n+1)%A341522(n)`
-/

namespace A082928.P18302146650641530866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082924 (n + 1)) (A341522 n)

end

end A082928.P18302146650641530866

namespace A082928

/-- `A082924(n+1)%A341522(n)` -/
def P18302146650641530866.Spec : Prop :=
  ∀ n, P18302146650641530866.a n = A082928 (n + 1)

end A082928

/-! ## A082928.P3722669598215508231

`gcd(A014683(n+1), A027480(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082928

/-- `gcd(A014683(n+1), A027480(n))` -/
def P3722669598215508231.Spec : Prop :=
  ∀ n, (P3722669598215508231.a n : ℤ) = A082928 (n + 1)

theorem P3722669598215508231.correct : P3722669598215508231.Spec := by
  intro n
  simp only [A082928, Nat.add_sub_cancel]

end A082928

/-! ## A082928.P6813865859760431541

`A001651(A014683(n+1))-A026741(n)`
-/

namespace A082928.P6813865859760431541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A014683 (n + 1)).toNat - A026741 n

end

end A082928.P6813865859760431541

namespace A082928

/-- `A001651(A014683(n+1))-A026741(n)` -/
def P6813865859760431541.Spec : Prop :=
  ∀ n, P6813865859760431541.a n = A082928 (n + 1)

end A082928

/-! ## A082928.P9446837839293260499

`A123390(A014683(n+1)+A327492(n)-n)`
-/

namespace A082928.P9446837839293260499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123390 (A014683 (n + 1) + (A327492 n - (n : ℤ))).toNat

end

end A082928.P9446837839293260499

namespace A082928

/-- `A123390(A014683(n+1)+A327492(n)-n)` -/
def P9446837839293260499.Spec : Prop :=
  ∀ n, P9446837839293260499.a n = A082928 (n + 1)

end A082928

/-! ## A082928.P10477686777560638847

`A001651(A010051(n+1)+n+1)-A026741(n)`
-/

namespace A082928.P10477686777560638847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A010051 (n + 1) + (n : ℤ) + 1).toNat - A026741 n

end

end A082928.P10477686777560638847

namespace A082928

/-- `A001651(A010051(n+1)+n+1)-A026741(n)` -/
def P10477686777560638847.Spec : Prop :=
  ∀ n, P10477686777560638847.a n = A082928 (n + 1)

end A082928

/-! ## A082928.P1716637569335331754

`A026741(n+1)+A000034(n)*A010051(n+1)`
-/

namespace A082928.P1716637569335331754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + A000034 n * A010051 (n + 1)

end

end A082928.P1716637569335331754

namespace A082928

/-- `A026741(n+1)+A000034(n)*A010051(n+1)` -/
def P1716637569335331754.Spec : Prop :=
  ∀ n, P1716637569335331754.a n = A082928 (n + 1)

end A082928

/-! ## A082928.P18272603925090797176

`A134451(A061397(n+1))+(n+1)/A134451(n+1)`
-/

namespace A082928.P18272603925090797176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134451 (A061397 (n + 1)).toNat : ℚ) + (n + 1 : ℚ) / (A134451 (n + 1) : ℚ)

end

end A082928.P18272603925090797176

namespace A082928

/-- `A134451(A061397(n+1))+(n+1)/A134451(n+1)` -/
def P18272603925090797176.Spec : Prop :=
  ∀ n, P18272603925090797176.a n = (A082928 (n + 1) : ℚ)

end A082928

/-! ## A082928.P5378458532170950857

`A014683(n+1)/gcd(A014682(A135681(n+1)), A135681(n+1))`
-/

namespace A082928.P5378458532170950857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014683 (n + 1) : ℚ) / (Int.gcd (A014682 (A135681 (n + 1)).toNat) (A135681 (n + 1)) : ℚ)

end

end A082928.P5378458532170950857

namespace A082928

/-- `A014683(n+1)/gcd(A014682(A135681(n+1)), A135681(n+1))` -/
def P5378458532170950857.Spec : Prop :=
  ∀ n, P5378458532170950857.a n = (A082928 (n + 1) : ℚ)

end A082928

/-! ## A082928.P15184552034066207298

`A014683(A014683(n+1))-A142150(n+1)`
-/

namespace A082928.P15184552034066207298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A014683 (n + 1)).toNat - A142150 (n + 1)

end

end A082928.P15184552034066207298

namespace A082928

/-- `A014683(A014683(n+1))-A142150(n+1)` -/
def P15184552034066207298.Spec : Prop :=
  ∀ n, P15184552034066207298.a n = A082928 (n + 1)

end A082928

/-! ## A082928.P1813510122803832697

`A026741((A014683(n+1)-n)*A014683(n+1))`
-/

namespace A082928.P1813510122803832697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((A014683 (n + 1) - (n : ℤ)) * A014683 (n + 1)).toNat

end

end A082928.P1813510122803832697

namespace A082928

/-- `A026741((A014683(n+1)-n)*A014683(n+1))` -/
def P1813510122803832697.Spec : Prop :=
  ∀ n, P1813510122803832697.a n = A082928 (n + 1)

end A082928

/-!
# A082929: Primes not of form A080435(i)+A080435(j).

The programs for A082929, there is no canonical definition to state claims against.
-/

/-! ## A082929.P8912522095557117531

`A106989(A187713(n+1))%A014960(A139832(n+1))`
-/

namespace A082929.P8912522095557117531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106989 (A187713 (n + 1)).toNat) (A014960 (A139832 (n + 1)).toNat)

end

end A082929.P8912522095557117531

/-!
# A082930: Even elements of A080435.

The programs for A082930, there is no canonical definition to state claims against.
-/

/-! ## A082930.P16070655287500845431

`∩[2*n, A080435(n+1)]`
-/

namespace A082930.P16070655287500845431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082930.P16070655287500845431

/-! ## A082930.P12562455458776786148

`filter[A080435(n+1), A120325(#)]`
-/

namespace A082930.P12562455458776786148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A082930.P12562455458776786148

/-! ## A082930.P18096259228310767651

`filter[A080435(n+1), A353525(#)]`
-/

namespace A082930.P18096259228310767651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A082930.P18096259228310767651

/-! ## A082930.P11209194535226896389

`∩[A080435(n+1), A016933(n)]`
-/

namespace A082930.P11209194535226896389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082930.P11209194535226896389

/-!
# A082932: Primes not of form A082931(i)+A082931(j).

The programs for A082932, there is no canonical definition to state claims against.
-/

/-! ## A082932.P15378214088603453396

`A375595(A375602(3*(n+1))+A074432(n+1))`
-/

namespace A082932.P15378214088603453396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375595 (A375602 (3 * (n + 1)) + A074432 (n + 1)).toNat

end

end A082932.P15378214088603453396

/-!
# A082933: Even elements of A082931.

The programs for A082933, there is no canonical definition to state claims against.
-/

/-! ## A082933.P12873165842379050139

`∩[2*n, A082931(n+1)]`
-/

namespace A082933.P12873165842379050139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082933.P12873165842379050139

/-! ## A082933.P3027728030739139594

`∩[A082931(n+1), A005843(n)]`
-/

namespace A082933.P3027728030739139594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082933.P3027728030739139594

/-! ## A082933.P5959196910140854867

`∩[A082931(n+1), A157502(n+1)]`
-/

namespace A082933.P5959196910140854867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082933.P5959196910140854867

/-! ## A082933.P10436557835270601255

`record[A038608(A082931(n+2))]`
-/

namespace A082933.P10436557835270601255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A082931 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082933.P10436557835270601255

/-! ## A082933.P15041653855929521911

`filter[A082931(n+1), A059841(#)]`
-/

namespace A082933.P15041653855929521911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A082933.P15041653855929521911

/-!
# A082934: A082928(1) + A082928(2) + ... + A082928(n).

The programs for A082934, the canonical program `A082934.P14654643793815549063` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082934 has offset 1).

The definition of A082934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082934.P14654643793815549063

`∑[A082928(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082934

/-- `∑[A082928(n+1)]` -/
def P14654643793815549063.Spec : Prop :=
  ∀ n, P14654643793815549063.a n = A082934 (n + 1)

theorem P14654643793815549063.correct : P14654643793815549063.Spec := by
  intro n
  simp only [A082934, Nat.add_sub_cancel]

end A082934

/-! ## A082934.P14992853640375355511

`∑[A082924(n+1)%(2*(n+1))]`
-/

namespace A082934.P14992853640375355511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082924 (n + 1)) (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P14992853640375355511

namespace A082934

/-- `∑[A082924(n+1)%(2*(n+1))]` -/
def P14992853640375355511.Spec : Prop :=
  ∀ n, P14992853640375355511.a n = A082934 (n + 1)

end A082934

/-! ## A082934.P11759282656995917044

`∑[gcd(C(2, ∑{e}[n+1, #])!+n, A027480(n))]`
-/

namespace A082934.P11759282656995917044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + n : ℤ) (A027480 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P11759282656995917044

namespace A082934

/-- `∑[gcd(C(2, ∑{e}[n+1, #])!+n, A027480(n))]` -/
def P11759282656995917044.Spec : Prop :=
  ∀ n, (P11759282656995917044.a n : ℤ) = A082934 (n + 1)

end A082934

/-! ## A082934.P10096976340288777245

`∑[gcd(A014683(n+1), A027480(n))]`
-/

namespace A082934.P10096976340288777245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A027480 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P10096976340288777245

namespace A082934

/-- `∑[gcd(A014683(n+1), A027480(n))]` -/
def P10096976340288777245.Spec : Prop :=
  ∀ n, (P10096976340288777245.a n : ℤ) = A082934 (n + 1)

theorem P10096976340288777245.correct : P10096976340288777245.Spec := by
  intro n
  simp only [A082934, Nat.add_sub_cancel, A082934.P10096976340288777245.f1, A082934.P10096976340288777245.a, A082934.P14654643793815549063.f1, A082934.P14654643793815549063.a, A014683, A014683.P4274130993241959458.a, A027480, A027480.P4665495128858654812.a, A082928, A082928.P3722669598215508231.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082934

/-! ## A082934.P1863722210202014788

`∑[A001651(A014683(n+1))-A026741(n)]`
-/

namespace A082934.P1863722210202014788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A014683 (n + 1)).toNat - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P1863722210202014788

namespace A082934

/-- `∑[A001651(A014683(n+1))-A026741(n)]` -/
def P1863722210202014788.Spec : Prop :=
  ∀ n, P1863722210202014788.a n = A082934 (n + 1)

end A082934

/-! ## A082934.P5591317531985497205

`A195060(2*n)+A000720(n+1)+1`
-/

namespace A082934.P5591317531985497205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195060 (2 * n) + (A000720 (n + 1) + 1)

end

end A082934.P5591317531985497205

namespace A082934

/-- `A195060(2*n)+A000720(n+1)+1` -/
def P5591317531985497205.Spec : Prop :=
  ∀ n, P5591317531985497205.a n = A082934 (n + 1)

end A082934

/-! ## A082934.P7619551130654601186

`A082928(A082928(2*(n+1)))+a(n-1)` with `a(0)=1`
-/

namespace A082934.P7619551130654601186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082928 (A082928 (2 * (n + 1))).toNat + a (n - 1)

end

end A082934.P7619551130654601186

namespace A082934

/-- `A082928(A082928(2*(n+1)))+a(n-1)` -/
def P7619551130654601186.Spec : Prop :=
  ∀ n, P7619551130654601186.a n = A082934 (n + 1)

end A082934

/-! ## A082934.P13043624969186633241

`∑[A254667(A082924(n+1))%A341522(n)]`
-/

namespace A082934.P13043624969186633241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254667 (A082924 (n + 1)).toNat) (A341522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P13043624969186633241

namespace A082934

/-- `∑[A254667(A082924(n+1))%A341522(n)]` -/
def P13043624969186633241.Spec : Prop :=
  ∀ n, P13043624969186633241.a n = A082934 (n + 1)

end A082934

/-!
# A082936: a(n) = (1/(3*n))*Sum_{d|n, d even} phi(2*n/d)*binomial(3d/2,d).

The programs for A082936, there is no canonical definition to state claims against.
-/

/-! ## A082936.P5149310186311099640

`A261494(∑[n+3])`
-/

namespace A082936.P5149310186311099640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082936.P5149310186311099640

/-! ## A082936.P18177306732904357833

`A047996(A062725(n))`
-/

namespace A082936.P18177306732904357833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A062725 n).toNat

end

end A082936.P18177306732904357833

/-! ## A082936.P17463835245362719554

`A047996(A062728(n))`
-/

namespace A082936.P17463835245362719554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A062728 n).toNat

end

end A082936.P17463835245362719554

/-! ## A082936.P17163327855971859084

`A047996(A081267(n)-1)`
-/

namespace A082936.P17163327855971859084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A081267 n - 1).toNat

end

end A082936.P17163327855971859084

/-! ## A082936.P12371846520780250238

`A047996(A081266(n)+n)`
-/

namespace A082936.P12371846520780250238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A081266 n + (n : ℤ)).toNat

end

end A082936.P12371846520780250238

/-!
# A082937: Palindromes divisible by each of their digits.

The programs for A082937, there is no canonical definition to state claims against.
-/

/-! ## A082937.P2636726195404119130

`∩[A002113(n+1), A034838(n+1)]`
-/

namespace A082937.P2636726195404119130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082937.P2636726195404119130

/-! ## A082937.P825381670316765608

`∩[A034838(n+1), A061917(n+1)]`
-/

namespace A082937.P825381670316765608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082937.P825381670316765608

/-! ## A082937.P14797415511306926922

`∩[A034838(n+1), A169824(n+1)]`
-/

namespace A082937.P14797415511306926922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082937.P14797415511306926922

/-! ## A082937.P13722528712077274777

`filter[A034838(n+1), A136522(#)]`
-/

namespace A082937.P13722528712077274777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A082937.P13722528712077274777

/-!
# A082938: Number of solid 2-trees with 2n+1 edges.

The programs for A082938, there is no canonical definition to state claims against.
-/

/-! ## A082938.P2147676071561387161

`(A047749(n)+A054423(n))/2`
-/

namespace A082938.P2147676071561387161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047749 n + A054423 n : ℚ) / 2

end

end A082938.P2147676071561387161

/-! ## A082938.P11540595572882203514

`A303929(∑[n+3])`
-/

namespace A082938.P11540595572882203514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082938.P11540595572882203514

/-! ## A082938.P2294671554554744033

`A303929(A055998(n+1))+and(1, 2*n)`
-/

namespace A082938.P2294671554554744033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (A055998 (n + 1)).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A082938.P2294671554554744033

/-! ## A082938.P2533937471362319271

`A060901(2*n+1)*A303929(A055998(n+1))`
-/

namespace A082938.P2533937471362319271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060901 (2 * n + 1) * A303929 (A055998 (n + 1)).toNat

end

end A082938.P2533937471362319271

/-! ## A082938.P11482330226112719523

`A303929(A055998(n+1))+A008683(16*(n+1))`
-/

namespace A082938.P11482330226112719523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (A055998 (n + 1)).toNat + A008683 (16 * (n + 1))

end

end A082938.P11482330226112719523

/-!
# A082940: Palindromes in A082939.

The programs for A082940, there is no canonical definition to state claims against.
-/

/-! ## A082940.P8290892660765255936

`∩[A002113(n+1), A082939(n+1)]`
-/

namespace A082940.P8290892660765255936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082940.P8290892660765255936

/-! ## A082940.P13718568115056697114

`∩[A004086(A014187(n)^(1/3)), A082939(n+1)]`
-/

namespace A082940.P13718568115056697114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082940.P13718568115056697114

/-! ## A082940.P920775540679598578

`∩[eq[0, A261424(n)], A082939(n+1)]`
-/

namespace A082940.P920775540679598578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A082940.P920775540679598578

/-! ## A082940.P12490428898852956420

`filter[A082939(n+1), A136522(#)]`
-/

namespace A082940.P12490428898852956420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A082940.P12490428898852956420

/-!
# A082942: a(n) = (n^2+1)*(4*n^2+1)*(4*n^2+3).

The programs for A082942, the canonical program `A082942.P6476258759054684253` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082942 has offset 0).

The definition of A082942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+1)*(4*n²+1)*(4*n²+3)` (program `A082942.P6476258759054684253`, by `A082942.P6476258759054684253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082942.P6476258759054684253

`(n²+1)*(4*n²+1)*(4*n²+3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082942

/-- `(n²+1)*(4*n²+1)*(4*n²+3)` -/
def P6476258759054684253.Spec : Prop :=
  ∀ n, (P6476258759054684253.a n : ℤ) = A082942 n

theorem P6476258759054684253.correct : P6476258759054684253.Spec := by
  intro n
  simp only [A082942]

end A082942

/-! ## A082942.P8317262281379908645

`lcm(A002522(n), A304726(2*n))`
-/

namespace A082942.P8317262281379908645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002522 n) (A304726 (2 * n))

end

end A082942.P8317262281379908645

namespace A082942

/-- `lcm(A002522(n), A304726(2*n))` -/
def P8317262281379908645.Spec : Prop :=
  ∀ n, (P8317262281379908645.a n : ℤ) = A082942 n

end A082942

/-! ## A082942.P11584658098186273409

`lcm(n²+1, A001539(n²))`
-/

namespace A082942.P11584658098186273409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 + 1 : ℤ) (A001539 (n ^ 2))

end

end A082942.P11584658098186273409

namespace A082942

/-- `lcm(n²+1, A001539(n²))` -/
def P11584658098186273409.Spec : Prop :=
  ∀ n, (P11584658098186273409.a n : ℤ) = A082942 n

end A082942

/-! ## A082942.P5827347184723914855

`lcm(A001539(n²), A002522(n))`
-/

namespace A082942.P5827347184723914855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001539 (n ^ 2)) (A002522 n)

end

end A082942.P5827347184723914855

namespace A082942

/-- `lcm(A001539(n²), A002522(n))` -/
def P5827347184723914855.Spec : Prop :=
  ∀ n, (P5827347184723914855.a n : ℤ) = A082942 n

end A082942

/-! ## A082942.P10464232775159587811

`lcm(A033991(n²+1), A053755(n))`
-/

namespace A082942.P10464232775159587811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033991 (n ^ 2 + 1)) (A053755 n)

end

end A082942.P10464232775159587811

namespace A082942

/-- `lcm(A033991(n²+1), A053755(n))` -/
def P10464232775159587811.Spec : Prop :=
  ∀ n, (P10464232775159587811.a n : ℤ) = A082942 n

end A082942

/-!
# A082943: Positive numbers not divisible by any of their digits nor by the sum of their digits.

The programs for A082943, there is no canonical definition to state claims against.
-/

/-! ## A082943.P981655447663466817

`∩[A039112(n+1), A382239(n+1)]`
-/

namespace A082943.P981655447663466817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082943.P981655447663466817

/-! ## A082943.P4758426184633890000

`filter[A382239(n+1), A168046(#)]`
-/

namespace A082943.P4758426184633890000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A082943.P4758426184633890000

/-! ## A082943.P4163724417729744014

`∩[A052382(n+1), A382239(n+1)]`
-/

namespace A082943.P4163724417729744014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082943.P4163724417729744014

/-! ## A082943.P5761340324801100519

`∩[A062998(n+1), A382239(n+1)]`
-/

namespace A082943.P5761340324801100519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082943.P5761340324801100519

/-! ## A082943.P1568306845664704828

`∩[A062999(n+1), A382239(n+1)]`
-/

namespace A082943.P1568306845664704828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082943.P1568306845664704828

/-! ## A082943.P4681774814199613824

`∩[A125290(n+1), A382239(n+1)]`
-/

namespace A082943.P4681774814199613824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082943.P4681774814199613824

/-!
# A082944: a(n) = concatenate(n, A010888(2*n), reverse(n)), where A010888 = digital root.

The programs for A082944, there is no canonical definition to state claims against.
-/

/-! ## A082944.P11793596398582461785

`A249873(A074842(n+1))`
-/

namespace A082944.P11793596398582461785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 (A074842 (n + 1)).toNat

end

end A082944.P11793596398582461785

/-! ## A082944.P4993681246497875753

`A249873(lcm(A032559(n+1), A291266(n+1)))`
-/

namespace A082944.P4993681246497875753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 (Int.lcm (A032559 (n + 1)) (A291266 (n + 1)))

end

end A082944.P4993681246497875753

/-! ## A082944.P16610125800949000017

`A249873((A032559(n+1)-n)*A291266(n+1))`
-/

namespace A082944.P16610125800949000017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 ((A032559 (n + 1) - (n : ℤ)) * A291266 (n + 1)).toNat

end

end A082944.P16610125800949000017

/-! ## A082944.P7324059135499562311

`A249873(A291266(n+1))%A164716(A032559(n+1)+3)`
-/

namespace A082944.P7324059135499562311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249873 (A291266 (n + 1)).toNat) (A164716 (A032559 (n + 1) + 3).toNat)

end

end A082944.P7324059135499562311

/-!
# A082945: Numbers n which in decimal have the form imj, where m is the middle digit, with property that j is the reversal of i, and i = m*j.

The programs for A082945, there is no canonical definition to state claims against.
-/

/-! ## A082945.P754429545355839722

`∩[A076612(n+1), A392225(n+1)]`
-/

namespace A082945.P754429545355839722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082945.P754429545355839722

/-! ## A082945.P8164924576446471608

`∩[A002113(n+1), A392225(n+1)]`
-/

namespace A082945.P8164924576446471608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082945.P8164924576446471608

/-! ## A082945.P7891777943770168675

`∩[A056525(n+1), A392225(n+1)]`
-/

namespace A082945.P7891777943770168675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082945.P7891777943770168675

/-! ## A082945.P12208925260173496934

`∩[A068061(n+1), A392225(n+1)]`
-/

namespace A082945.P12208925260173496934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082945.P12208925260173496934

/-! ## A082945.P17477195941479180556

`∩[A099994(n+1), A392225(n+1)]`
-/

namespace A082945.P17477195941479180556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082945.P17477195941479180556

/-! ## A082945.P11872486113410970469

`∩[A083158(n+1), A392225(n+1)]`
-/

namespace A082945.P11872486113410970469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082945.P11872486113410970469

/-!
# A082947: Palindromes not divisible by any of their digits.

The programs for A082947, there is no canonical definition to state claims against.
-/

/-! ## A082947.P17549309717404242753

`∩[A002113(n+1), A038772(n+1)]`
-/

namespace A082947.P17549309717404242753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082947.P17549309717404242753

/-! ## A082947.P6712587987938929561

`∩[A038772(n+1), A062697(n+1)]`
-/

namespace A082947.P6712587987938929561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082947.P6712587987938929561

/-! ## A082947.P7412181620971731721

`∩[A038772(n+1), A083158(n+1)]`
-/

namespace A082947.P7412181620971731721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082947.P7412181620971731721

/-! ## A082947.P7468027308980121073

`∩[A038772(n+1), A088882(n+1)]`
-/

namespace A082947.P7468027308980121073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082947.P7468027308980121073

/-! ## A082947.P18125420051777741395

`∩[A038772(n+1), A110751(n+1)]`
-/

namespace A082947.P18125420051777741395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082947.P18125420051777741395

/-! ## A082947.P11996892638411209581

`∩[A038772(n+1), A178354(n+1)]`
-/

namespace A082947.P11996892638411209581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082947.P11996892638411209581

/-! ## A082947.P12592745682156945571

`∩[A062697(n+1), A383749(n+1)]`
-/

namespace A082947.P12592745682156945571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082947.P12592745682156945571

/-!
# A082948: Palindromes neither divisible by any of their digits nor by the sum of their digits.

The programs for A082948, there is no canonical definition to state claims against.
-/

/-! ## A082948.P8083321446248578196

`∩[A002113(n+1), A082943(n+1)]`
-/

namespace A082948.P8083321446248578196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082948.P8083321446248578196

/-! ## A082948.P11110691652775388519

`∩[A061917(n+1), A082943(n+1)]`
-/

namespace A082948.P11110691652775388519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082948.P11110691652775388519

/-! ## A082948.P16612084673109325890

`∩[A062697(n+1), A082943(n+1)]`
-/

namespace A082948.P16612084673109325890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082948.P16612084673109325890

/-! ## A082948.P531882013154450196

`∩[A082943(n+1), A083158(n+1)]`
-/

namespace A082948.P531882013154450196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082948.P531882013154450196

/-! ## A082948.P4135604395496328679

`∩[A082943(n+1), A083970(n+1)]`
-/

namespace A082948.P4135604395496328679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082948.P4135604395496328679

/-! ## A082948.P14108675080436192594

`∩[A082943(n+1), A088882(n+1)]`
-/

namespace A082948.P14108675080436192594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082948.P14108675080436192594

/-! ## A082948.P5006120737938782185

`∩[A082943(n+1), A110751(n+1)]`
-/

namespace A082948.P5006120737938782185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082948.P5006120737938782185

/-!
# A082949: Numbers of the form p^q * q^p, with distinct primes p and q.

The programs for A082949, there is no canonical definition to state claims against.
-/

/-! ## A082949.P13834306008057073093

`∩[A054412(n+1), A146748(n+1)]`
-/

namespace A082949.P13834306008057073093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082949.P13834306008057073093

/-! ## A082949.P18240160226527842911

`∩[A122406(n+1), A146748(n+1)]`
-/

namespace A082949.P18240160226527842911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082949.P18240160226527842911

/-! ## A082949.P312033963674621794

`∩[A146748(n+1), A272859(n+1)]`
-/

namespace A082949.P312033963674621794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082949.P312033963674621794

/-! ## A082949.P779714708192078232

`∩[A146748(n+1), A272818(n+1)]`
-/

namespace A082949.P779714708192078232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082949.P779714708192078232

/-! ## A082949.P9455917182246081551

`∩[A146748(n+1), A272858(n+1)]`
-/

namespace A082949.P9455917182246081551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082949.P9455917182246081551

/-!
# A082950: Power base and exponent of n-th prime power exchanged.

The programs for A082950, the canonical program `A082950.P198632103670576049` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082950 has offset 1).

The definition of A082950 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082950.P198632103670576049

`A025474(n+1)^A025473(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A082950

/-- `A025474(n+1)^A025473(n+1)` -/
def P198632103670576049.Spec : Prop :=
  ∀ n, P198632103670576049.a n = (A082950 (n + 1) : ℚ)

end A082950

/-! ## A082950.P2800877967670543476

`A025474(n+1)^A006530(A000961(n+1))`
-/

namespace A082950.P2800877967670543476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 1) : ℚ) ^ (A006530 (A000961 (n + 1)).toNat : ℤ)

end

end A082950.P2800877967670543476

namespace A082950

/-- `A025474(n+1)^A006530(A000961(n+1))` -/
def P2800877967670543476.Spec : Prop :=
  ∀ n, P2800877967670543476.a n = (A082950 (n + 1) : ℚ)

end A082950

/-! ## A082950.P12212930260295037343

`A025474(n+1)^A020639(sqrt(A056798(n+1)))`
-/

namespace A082950.P12212930260295037343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 1) : ℚ) ^ (A020639 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat : ℤ)

end

end A082950.P12212930260295037343

namespace A082950

/-- `A025474(n+1)^A020639(sqrt(A056798(n+1)))` -/
def P12212930260295037343.Spec : Prop :=
  ∀ n, P12212930260295037343.a n = (A082950 (n + 1) : ℚ)

end A082950

/-! ## A082950.P2219245608603684963

`A001222(record[(n+1)/A001221(n+1)!])^A025473(n+1)`
-/

namespace A082950.P2219245608603684963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℚ) ^ (A025473 (n + 1) : ℤ)

end

end A082950.P2219245608603684963

namespace A082950

/-- `A001222(record[(n+1)/A001221(n+1)!])^A025473(n+1)` -/
def P2219245608603684963.Spec : Prop :=
  ∀ n, P2219245608603684963.a n = (A082950 (n + 1) : ℚ)

end A082950

/-! ## A082950.P8687364317761611284

`A025474(n+1)^A006530(record[(n+1)/A001221(n+1)!])`
-/

namespace A082950.P8687364317761611284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 1) : ℚ) ^ (A006530 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℤ)

end

end A082950.P8687364317761611284

namespace A082950

/-- `A025474(n+1)^A006530(record[(n+1)/A001221(n+1)!])` -/
def P8687364317761611284.Spec : Prop :=
  ∀ n, P8687364317761611284.a n = (A082950 (n + 1) : ℚ)

end A082950

/-! ## A082950.P10809850832663410053

`A025474(n+1)^A020639(record[(n+1)/A001221(n+1)!])`
-/

namespace A082950.P10809850832663410053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 1) : ℚ) ^ (A020639 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℤ)

end

end A082950.P10809850832663410053

namespace A082950

/-- `A025474(n+1)^A020639(record[(n+1)/A001221(n+1)!])` -/
def P10809850832663410053.Spec : Prop :=
  ∀ n, P10809850832663410053.a n = (A082950 (n + 1) : ℚ)

end A082950

/-! ## A082950.P3827492612490341066

`A025474(n+1)^A020639(record[A034699(n+1)])`
-/

namespace A082950.P3827492612490341066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 1) : ℚ) ^ (A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A082950.P3827492612490341066

namespace A082950

/-- `A025474(n+1)^A020639(record[A034699(n+1)])` -/
def P3827492612490341066.Spec : Prop :=
  ∀ n, P3827492612490341066.a n = (A082950 (n + 1) : ℚ)

end A082950

/-! ## A082950.P4027953999201689833

`A008476(A000961(n+1))`
-/

namespace A082950.P4027953999201689833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (A000961 (n + 1)).toNat

end

end A082950.P4027953999201689833

namespace A082950

/-- `A008476(A000961(n+1))` -/
def P4027953999201689833.Spec : Prop :=
  ∀ n, P4027953999201689833.a n = A082950 (n + 1)

end A082950

/-! ## A082950.P8931683394845122940

`A008476(record[A330691(n+1)])`
-/

namespace A082950.P8931683394845122940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082950.P8931683394845122940

namespace A082950

/-- `A008476(record[A330691(n+1)])` -/
def P8931683394845122940.Spec : Prop :=
  ∀ n, P8931683394845122940.a n = A082950 (n + 1)

end A082950

/-! ## A082950.P12758719000253729594

`A008476(record[A330741(n+1)])`
-/

namespace A082950.P12758719000253729594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082950.P12758719000253729594

namespace A082950

/-- `A008476(record[A330741(n+1)])` -/
def P12758719000253729594.Spec : Prop :=
  ∀ n, P12758719000253729594.a n = A082950 (n + 1)

end A082950

/-!
# A082951: Number of primitive (aperiodic) word structures of length n using an infinite alphabet.

The programs for A082951, there is no canonical definition to state claims against.
-/

/-! ## A082951.P15493336312288649580

`A000110(n)-A057771(A003415(n))`
-/

namespace A082951.P15493336312288649580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A057771 (A003415 n).toNat

end

end A082951.P15493336312288649580

/-! ## A082951.P17623870345677959501

`A000110(n)-A341596(A006154(n))`
-/

namespace A082951.P17623870345677959501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A341596 (A006154 n).toNat

end

end A082951.P17623870345677959501

/-! ## A082951.P18420908044591307513

`A000110(n)-A199238(A217924(n))`
-/

namespace A082951.P18420908044591307513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A199238 (A217924 n).toNat

end

end A082951.P18420908044591307513

/-! ## A082951.P14846831101998374500

`A000110(n)-A318875(A132958(n+1)+3)`
-/

namespace A082951.P14846831101998374500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A318875 (A132958 (n + 1) + 3).toNat

end

end A082951.P14846831101998374500

/-!
# A082952: Smaller of the two factors of the n-th semiprime number of the form m!+1.

The programs for A082952, there is no canonical definition to state claims against.
-/

/-! ## A082952.P10349884584654445095

`A051301(A078778(n+1))`
-/

namespace A082952.P10349884584654445095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051301 (A078778 (n + 1)).toNat

end

end A082952.P10349884584654445095

/-! ## A082952.P12740557198311182677

`A051301(eq[1, A114187(n)])`
-/

namespace A082952.P12740557198311182677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082952.P12740557198311182677

/-! ## A082952.P16739766669702107203

`A051301(eq[A002583(n), A056111(n)])`
-/

namespace A082952.P16739766669702107203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051301 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082952.P16739766669702107203

/-! ## A082952.P3465750333065266342

`A089540(eq[1, A114187(n)])`
-/

namespace A082952.P3465750333065266342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082952.P3465750333065266342

/-! ## A082952.P7611632130143034659

`A089540(eq[A002583(n), A056111(n)])`
-/

namespace A082952.P7611632130143034659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089540 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082952.P7611632130143034659

/-!
# A082953: a(n) = A000252(n) / A070732(n).

The programs for A082953, the canonical program `A082953.P9111907207712937456` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082953 has offset 1).

The definition of A082953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082953.P1836970574970236161

`gcd(n+1, 2)*A000010(n+1)²`
-/

namespace A082953.P1836970574970236161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) 2 : ℤ) * A000010 (n + 1) ^ 2

end

end A082953.P1836970574970236161

namespace A082953

/-- `gcd(n+1, 2)*A000010(n+1)²` -/
def P1836970574970236161.Spec : Prop :=
  ∀ n, P1836970574970236161.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P8165707304157046149

`A000010(n+1)*A062570(n+1)`
-/

namespace A082953.P8165707304157046149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A062570 (n + 1)

end

end A082953.P8165707304157046149

namespace A082953

/-- `A000010(n+1)*A062570(n+1)` -/
def P8165707304157046149.Spec : Prop :=
  ∀ n, P8165707304157046149.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P6827049528017654204

`A040001(n+1)*A127473(n+1)`
-/

namespace A082953.P6827049528017654204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A127473 (n + 1)

end

end A082953.P6827049528017654204

namespace A082953

/-- `A040001(n+1)*A127473(n+1)` -/
def P6827049528017654204.Spec : Prop :=
  ∀ n, P6827049528017654204.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P9111907207712937456

`A000252(n+1)/A070732(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082953

/-- `A000252(n+1)/A070732(n+1)` -/
def P9111907207712937456.Spec : Prop :=
  ∀ n, P9111907207712937456.a n = (A082953 (n + 1) : ℚ)

end A082953

/-! ## A082953.P10816558129559421266

`A000010(n+1)*A000010(2*(n+1))`
-/

namespace A082953.P10816558129559421266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000010 (2 * (n + 1))

end

end A082953.P10816558129559421266

namespace A082953

/-- `A000010(n+1)*A000010(2*(n+1))` -/
def P10816558129559421266.Spec : Prop :=
  ∀ n, P10816558129559421266.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P14862405937355324193

`A000034(n)*A127473(n+1)`
-/

namespace A082953.P14862405937355324193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A127473 (n + 1)

end

end A082953.P14862405937355324193

namespace A082953

/-- `A000034(n)*A127473(n+1)` -/
def P14862405937355324193.Spec : Prop :=
  ∀ n, P14862405937355324193.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P5613469118792911254

`A000010(n+1)²*A000034(n)`
-/

namespace A082953.P5613469118792911254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * A000034 n

end

end A082953.P5613469118792911254

namespace A082953

/-- `A000010(n+1)²*A000034(n)` -/
def P5613469118792911254.Spec : Prop :=
  ∀ n, P5613469118792911254.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P5186247597435534911

`A062570(n+1)²/A000034(n)`
-/

namespace A082953.P5186247597435534911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) ^ 2 : ℚ) / (A000034 n : ℚ)

end

end A082953.P5186247597435534911

namespace A082953

/-- `A062570(n+1)²/A000034(n)` -/
def P5186247597435534911.Spec : Prop :=
  ∀ n, P5186247597435534911.a n = (A082953 (n + 1) : ℚ)

end A082953

/-! ## A082953.P5620990025777347847

`A000010(n+1)*Δ[A049690(n)]`
-/

namespace A082953.P5620990025777347847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (f1 (n + 1) - f1 n)

end

end A082953.P5620990025777347847

namespace A082953

/-- `A000010(n+1)*Δ[A049690(n)]` -/
def P5620990025777347847.Spec : Prop :=
  ∀ n, P5620990025777347847.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P16745577967371396282

`Δ[A002088(n)]*A062570(n+1)`
-/

namespace A082953.P16745577967371396282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062570 (n + 1)

end

end A082953.P16745577967371396282

namespace A082953

/-- `Δ[A002088(n)]*A062570(n+1)` -/
def P16745577967371396282.Spec : Prop :=
  ∀ n, P16745577967371396282.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P15217514800513548585

`Δ[A005728(n)]*A062570(n+1)`
-/

namespace A082953.P15217514800513548585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062570 (n + 1)

end

end A082953.P15217514800513548585

namespace A082953

/-- `Δ[A005728(n)]*A062570(n+1)` -/
def P15217514800513548585.Spec : Prop :=
  ∀ n, P15217514800513548585.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P3116351645645418880

`A055034(n+1)*A140434(n+1)`
-/

namespace A082953.P3116351645645418880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) * A140434 (n + 1)

end

end A082953.P3116351645645418880

namespace A082953

/-- `A055034(n+1)*A140434(n+1)` -/
def P3116351645645418880.Spec : Prop :=
  ∀ n, P3116351645645418880.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P6116232530858006138

`(A000035(n)+1)*A000010(n+1)²`
-/

namespace A082953.P6116232530858006138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A000010 (n + 1) ^ 2

end

end A082953.P6116232530858006138

namespace A082953

/-- `(A000035(n)+1)*A000010(n+1)²` -/
def P6116232530858006138.Spec : Prop :=
  ∀ n, P6116232530858006138.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P7940154918088459966

`A000010(n+1)²*A040001(n+1)`
-/

namespace A082953.P7940154918088459966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * A040001 (n + 1)

end

end A082953.P7940154918088459966

namespace A082953

/-- `A000010(n+1)²*A040001(n+1)` -/
def P7940154918088459966.Spec : Prop :=
  ∀ n, P7940154918088459966.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P738403162944659952

`A000010(n+1)²*A134451(n+1)`
-/

namespace A082953.P738403162944659952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * A134451 (n + 1)

end

end A082953.P738403162944659952

namespace A082953

/-- `A000010(n+1)²*A134451(n+1)` -/
def P738403162944659952.Spec : Prop :=
  ∀ n, P738403162944659952.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P15258158646539648080

`(A010693(n)-1)*A000010(n+1)²`
-/

namespace A082953.P15258158646539648080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010693 n - 1) * A000010 (n + 1) ^ 2

end

end A082953.P15258158646539648080

namespace A082953

/-- `(A010693(n)-1)*A000010(n+1)²` -/
def P15258158646539648080.Spec : Prop :=
  ∀ n, P15258158646539648080.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P4590759871470804028

`(A039649(n+1)-1)²*A000034(n)`
-/

namespace A082953.P4590759871470804028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) ^ 2 * A000034 n

end

end A082953.P4590759871470804028

namespace A082953

/-- `(A039649(n+1)-1)²*A000034(n)` -/
def P4590759871470804028.Spec : Prop :=
  ∀ n, P4590759871470804028.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P14401389415333117586

`(2-A059841(n))*A000010(n+1)²`
-/

namespace A082953.P14401389415333117586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A000010 (n + 1) ^ 2

end

end A082953.P14401389415333117586

namespace A082953

/-- `(2-A059841(n))*A000010(n+1)²` -/
def P14401389415333117586.Spec : Prop :=
  ∀ n, P14401389415333117586.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P11346214664078495952

`A000010(2*(n+1))*Δ[A002088(n)]`
-/

namespace A082953.P11346214664078495952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A082953.P11346214664078495952

namespace A082953

/-- `A000010(2*(n+1))*Δ[A002088(n)]` -/
def P11346214664078495952.Spec : Prop :=
  ∀ n, P11346214664078495952.a n = A082953 (n + 1)

end A082953

/-! ## A082953.P6557945905993521278

`A000010(2*(n+1))*Δ[A005728(n)]`
-/

namespace A082953.P6557945905993521278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A082953.P6557945905993521278

namespace A082953

/-- `A000010(2*(n+1))*Δ[A005728(n)]` -/
def P6557945905993521278.Spec : Prop :=
  ∀ n, P6557945905993521278.a n = A082953 (n + 1)

end A082953

/-!
# A082954: Numbers k such that phi(k*sigma(k)) = phi(k)^2.

The programs for A082954, there is no canonical definition to state claims against.
-/

/-! ## A082954.P187885179778740769

`∑[A351442(∑[A005721(n)])]`
-/

namespace A082954.P187885179778740769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005721 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082954.P187885179778740769

/-!
# A082957: Numbers k such that sigma(2*k) < sigma(2*k+1).

The programs for A082957, there is no canonical definition to state claims against.
-/

/-! ## A082957.P18064976603876985874

`A067825(n+1)/2`
-/

namespace A082957.P18064976603876985874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067825 (n + 1) : ℚ) / 2

end

end A082957.P18064976603876985874

/-! ## A082957.P8419283488597834010

`(A333041(n+1)-1)/2`
-/

namespace A082957.P8419283488597834010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333041 (n + 1) - 1 : ℚ) / 2

end

end A082957.P8419283488597834010

/-! ## A082957.P14536154617831123700

`∩[A053224(n+1), A005843(n)]/2`
-/

namespace A082957.P14536154617831123700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082957.P14536154617831123700

/-! ## A082957.P2618701282513948095

`∩[A053224(n+1), A064409(n+1)]/2`
-/

namespace A082957.P2618701282513948095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064409 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082957.P2618701282513948095

/-! ## A082957.P3773584544271738808

`∩[A053224(n+1), A157502(n+1)]/2`
-/

namespace A082957.P3773584544271738808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082957.P3773584544271738808

/-! ## A082957.P440924197181138661

`∩[A053224(n+1), A225241(n+1)]/2`
-/

namespace A082957.P440924197181138661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082957.P440924197181138661

/-! ## A082957.P11877161757731382192

`∩[A053224(n+1), A232745(n+1)]/2`
-/

namespace A082957.P11877161757731382192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082957.P11877161757731382192

/-! ## A082957.P6684236729402517981

`∩[A053224(n+1), A260391(n+1)]/2`
-/

namespace A082957.P6684236729402517981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082957.P6684236729402517981

/-! ## A082957.P8986877262803089366

`lt[A000203(A004277(n)), A000203(2*n+1)]`
-/

namespace A082957.P8986877262803089366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082957.P8986877262803089366

/-! ## A082957.P13712928063318315183

`lt[A000203(A322250(2*n+1)), A000203(2*n+1)]`
-/

namespace A082957.P13712928063318315183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A322250 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082957.P13712928063318315183

/-! ## A082957.P16269442412618242803

`A001281(A067825(n+1))`
-/

namespace A082957.P16269442412618242803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A067825 (n + 1)).toNat

end

end A082957.P16269442412618242803

/-! ## A082957.P2814847500553145909

`A004524(A333041(n+1))`
-/

namespace A082957.P2814847500553145909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A333041 (n + 1)).toNat

end

end A082957.P2814847500553145909

/-! ## A082957.P13578313052601340064

`A003602(A067825(n+1)-1)`
-/

namespace A082957.P13578313052601340064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A067825 (n + 1) - 1).toNat

end

end A082957.P13578313052601340064

/-! ## A082957.P4881238988607535889

`A008619(A067825(n+1)-1)`
-/

namespace A082957.P4881238988607535889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A067825 (n + 1) - 1).toNat

end

end A082957.P4881238988607535889

/-! ## A082957.P3404361351743151176

`A110654(A067825(n+1)-1)`
-/

namespace A082957.P3404361351743151176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A067825 (n + 1) - 1).toNat

end

end A082957.P3404361351743151176

/-! ## A082957.P14458448249995956336

`A110654(A067825(sqrt(∑[2*n+1])))`
-/

namespace A082957.P14458448249995956336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A067825 (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))).toNat).toNat

end

end A082957.P14458448249995956336

/-! ## A082957.P7573934146105700406

`lt[A002324(n+1), A340793(2*n+1)]`
-/

namespace A082957.P7573934146105700406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082957.P7573934146105700406

/-! ## A082957.P17843223173771561739

`lt[A010054(n+1), A340793(2*n+1)]`
-/

namespace A082957.P17843223173771561739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082957.P17843223173771561739

/-! ## A082957.P18405203702150981864

`lt[A054973(n+1), A340793(2*n+1)]`
-/

namespace A082957.P18405203702150981864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082957.P18405203702150981864

/-! ## A082957.P8255649692557722392

`lt[A241954(n+1), A340793(2*n+1)]`
-/

namespace A082957.P8255649692557722392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082957.P8255649692557722392

/-!
# A082958: Number of symmetric short bushes with n edges.

The programs for A082958, there is no canonical definition to state claims against.
-/

/-! ## A082958.P170453390118256402

`A125189(n)-a(n-1)` with `a(0)=1`
-/

namespace A082958.P170453390118256402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125189 n - a (n - 1)

end

end A082958.P170453390118256402

/-!
# A082962: Numerators of continued fraction convergents to (sqrt(37)-4)/3.

The programs for A082962, the canonical program `A082962.P15648703590327834749` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082962 has offset 0).

The definition of A082962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082962.P15648703590327834749

`a(n-2)+((n+2)%3+1)*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082962

/-- `a(n-2)+((n+2)%3+1)*a(n-1)` -/
def P15648703590327834749.Spec : Prop :=
  ∀ n, (P15648703590327834749.a n : ℤ) = A082962 n

theorem P15648703590327834749.correct : P15648703590327834749.Spec := by
  intro n
  simp only [A082962]

end A082962

/-! ## A082962.P8730736235527359781

`A248227(A082975(n))-A000007(n)`
-/

namespace A082962.P8730736235527359781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A082975 n).toNat - A000007 n

end

end A082962.P8730736235527359781

namespace A082962

/-- `A248227(A082975(n))-A000007(n)` -/
def P8730736235527359781.Spec : Prop :=
  ∀ n, P8730736235527359781.a n = A082962 n

end A082962

/-! ## A082962.P10656357520282675557

`A248227(A082975(n))%A002110(n)`
-/

namespace A082962.P10656357520282675557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248227 (A082975 n).toNat) (A002110 n)

end

end A082962.P10656357520282675557

namespace A082962

/-- `A248227(A082975(n))%A002110(n)` -/
def P10656357520282675557.Spec : Prop :=
  ∀ n, P10656357520282675557.a n = A082962 n

end A082962

/-! ## A082962.P17586411188779241110

`A248227(A082975(n)%(A089926(n)+6*a(n-1)))` with `a(0)=0`
-/

namespace A082962.P17586411188779241110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A248227 (Int.tmod (A082975 n) (A089926 n + 6 * a (n - 1))).toNat

end

end A082962.P17586411188779241110

namespace A082962

/-- `A248227(A082975(n)%(A089926(n)+6*a(n-1)))` -/
def P17586411188779241110.Spec : Prop :=
  ∀ n, P17586411188779241110.a n = A082962 n

end A082962

/-!
# A082963: Number of n X n 0-1 matrices with half 1's and half 0's (rounded up/down if odd).

The programs for A082963, there is no canonical definition to state claims against.
-/

/-! ## A082963.P5381869174517570531

`A054252(∑[n%2+n²]-A161680(n))`
-/

namespace A082963.P5381869174517570531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A161680 n).toNat

end

end A082963.P5381869174517570531

/-! ## A082963.P13512710182656871423

`A054252(A006527(n)+A004526(n))`
-/

namespace A082963.P13512710182656871423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (A006527 n + A004526 n).toNat

end

end A082963.P13512710182656871423

/-! ## A082963.P8863178771455709852

`A054252(A110654(n)+A006527(n))`
-/

namespace A082963.P8863178771455709852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (A110654 n + A006527 n).toNat

end

end A082963.P8863178771455709852

/-! ## A082963.P8327917153000183125

`A054252(A006527(n)+Δ[A002620(n)])`
-/

namespace A082963.P8327917153000183125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (A006527 n + (f1 (n + 1) - f1 n)).toNat

end

end A082963.P8327917153000183125

/-! ## A082963.P3743528117518321795

`A054252(n-(A004526(n)-A006527(n)))`
-/

namespace A082963.P3743528117518321795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 ((n : ℤ) - (A004526 n - A006527 n)).toNat

end

end A082963.P3743528117518321795

/-!
# A082964: a(n) = round(n/Pi), n divided by Pi rounded to the nearest integer.

The programs for A082964, the canonical program `A082964.P15551333332877329003` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082964 has offset 0).

The definition of A082964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n/π)` (program `A082964.P15551333332877329003`, by `A082964.P15551333332877329003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082964.P15551333332877329003

`round(n/π)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082964

/-- `round(n/π)` -/
def P15551333332877329003.Spec : Prop :=
  ∀ n, P15551333332877329003.a n = A082964 n

theorem P15551333332877329003.correct : P15551333332877329003.Spec := by
  intro n
  simp only [A082964]

end A082964

/-! ## A082964.P18420150341003397117

`∑[char[A257984(n+1)]]`
-/

namespace A082964.P18420150341003397117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082964.P18420150341003397117

namespace A082964

/-- `∑[char[A257984(n+1)]]` -/
def P18420150341003397117.Spec : Prop :=
  ∀ n, (P18420150341003397117.a n : ℤ) = A082964 n

end A082964

/-! ## A082964.P3304652640282879050

`A032615(n)-A126564(n)`
-/

namespace A082964.P3304652640282879050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n - A126564 n

end

end A082964.P3304652640282879050

namespace A082964

/-- `A032615(n)-A126564(n)` -/
def P3304652640282879050.Spec : Prop :=
  ∀ n, P3304652640282879050.a n = A082964 n

end A082964

/-! ## A082964.P6028319197295183270

`A032615(2-A126565(n)+n)`
-/

namespace A082964.P6028319197295183270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (2 - A126565 n + (n : ℤ)).toNat

end

end A082964.P6028319197295183270

namespace A082964

/-- `A032615(2-A126565(n)+n)` -/
def P6028319197295183270.Spec : Prop :=
  ∀ n, P6028319197295183270.a n = A082964 n

end A082964

/-! ## A082964.P15713433753349181046

`A032615(n)-A000493(2*n)`
-/

namespace A082964.P15713433753349181046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n - A000493 (2 * n)

end

end A082964.P15713433753349181046

namespace A082964

/-- `A032615(n)-A000493(2*n)` -/
def P15713433753349181046.Spec : Prop :=
  ∀ n, P15713433753349181046.a n = A082964 n

end A082964

/-! ## A082964.P10881725866256110164

`ceil(A032615(2*n)/2)`
-/

namespace A082964.P10881725866256110164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032615 (2 * n) : ℚ) / 2⌉

end

end A082964.P10881725866256110164

namespace A082964

/-- `ceil(A032615(2*n)/2)` -/
def P10881725866256110164.Spec : Prop :=
  ∀ n, P10881725866256110164.a n = A082964 n

end A082964

/-! ## A082964.P18199423706160224243

`A032615(2*n)-A032615(n)`
-/

namespace A082964.P18199423706160224243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (2 * n) - A032615 n

end

end A082964.P18199423706160224243

namespace A082964

/-- `A032615(2*n)-A032615(n)` -/
def P18199423706160224243.Spec : Prop :=
  ∀ n, P18199423706160224243.a n = A082964 n

end A082964

/-! ## A082964.P15930931285016457529

`A032615(A126565(2*n)+n+1)`
-/

namespace A082964.P15930931285016457529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A126565 (2 * n) + (n + 1 : ℤ)).toNat

end

end A082964.P15930931285016457529

namespace A082964

/-- `A032615(A126565(2*n)+n+1)` -/
def P15930931285016457529.Spec : Prop :=
  ∀ n, P15930931285016457529.a n = A082964 n

end A082964

/-! ## A082964.P15891251526247832350

`A062299(n+1-A070747(2*n))`
-/

namespace A082964.P15891251526247832350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 ((n + 1 : ℤ) - A070747 (2 * n)).toNat

end

end A082964.P15891251526247832350

namespace A082964

/-- `A062299(n+1-A070747(2*n))` -/
def P15891251526247832350.Spec : Prop :=
  ∀ n, P15891251526247832350.a n = A082964 n

end A082964

/-! ## A082964.P1475254865620179669

`A032615(A126564(2*n)+n+2)`
-/

namespace A082964.P1475254865620179669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A126564 (2 * n) + (n + 2 : ℤ)).toNat

end

end A082964.P1475254865620179669

namespace A082964

/-- `A032615(A126564(2*n)+n+2)` -/
def P1475254865620179669.Spec : Prop :=
  ∀ n, P1475254865620179669.a n = A082964 n

end A082964

/-!
# A082965: a(n) = A000252(n) / A065558(n).

The programs for A082965, there is no canonical definition to state claims against.
-/

/-! ## A082965.P8440961430796343694

`A000252(n+1)/A065558(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082965.P8440961430796343694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A065558 (n + 1) : ℚ)

end

end A082965.P8440961430796343694

/-! ## A082965.P2042337802257260652

`(A195938(n+1)+n+1)*A000010(n+1)²`
-/

namespace A082965.P2042337802257260652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195938 (n + 1) + (n + 1 : ℤ)) * A000010 (n + 1) ^ 2

end

end A082965.P2042337802257260652

/-! ## A082965.P4417150585316500424

`A000010(n+1)*A000056(n+1)/A065558(n+1)`
-/

namespace A082965.P4417150585316500424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A000056 (n + 1) : ℚ) / (A065558 (n + 1) : ℚ)

end

end A082965.P4417150585316500424

/-!
# A082966: Number of inequivalent ways (mod D_4) three checkers can be placed on an n X n board.

The programs for A082966, there is no canonical definition to state claims against.
-/

/-! ## A082966.P10130698929755030434

`record[A064731(2*(n+1))-A104412(3*(n+2))]`
-/

namespace A082966.P10130698929755030434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064731 (2 * (n + 1)) - A104412 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082966.P10130698929755030434

/-!
# A082967: Numbers n such that mu(n) + mu(n+1) + mu(n+2) + mu(n+3) + mu(n+4) + mu(n+5) + mu(n+6) = 6.

The programs for A082967, the canonical program `A082967.P4328845575700119808` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082967 has offset 1).

The definition of A082967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082967.P4328845575700119808

`∩[A063838(n+1)-4, A063838(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082967

/-- `∩[A063838(n+1)-4, A063838(n+1)]` -/
def P4328845575700119808.Spec : Prop :=
  ∀ n, (P4328845575700119808.a n : ℤ) = A082967 (n + 1)

theorem P4328845575700119808.correct : P4328845575700119808.Spec := by
  intro n
  simp only [A082967, Nat.add_sub_cancel]

end A082967

/-! ## A082967.P9156677988400847369

`∩[A063838(n+1), A023446(A063838(n+1))]`
-/

namespace A082967.P9156677988400847369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A063838 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082967.P9156677988400847369

namespace A082967

/-- `∩[A063838(n+1), A023446(A063838(n+1))]` -/
def P9156677988400847369.Spec : Prop :=
  ∀ n, (P9156677988400847369.a n : ℤ) = A082967 (n + 1)

end A082967

/-!
# A082968: a(n)=sum(k=1,n, k mod sum(i=0,k-1,1-t(i))) where t(i)=A010060(i) is the Thue-Morse sequence.

The programs for A082968, the canonical program `A082968.P1835205782944855` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082968 has offset 1).

The definition of A082968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082968.P1061432289194512980

`∑[(n+1)%∑[char[xor(n, 2*n)]]]`
-/

namespace A082968.P1061432289194512980
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P1061432289194512980

namespace A082968

/-- `∑[(n+1)%∑[char[xor(n, 2*n)]]]` -/
def P1061432289194512980.Spec : Prop :=
  ∀ n, (P1061432289194512980.a n : ℤ) = A082968 (n + 1)

end A082968

/-! ## A082968.P1835205782944855

`∑[(n+1)%A159481(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082968

/-- `∑[(n+1)%A159481(n)]` -/
def P1835205782944855.Spec : Prop :=
  ∀ n, P1835205782944855.a n = A082968 (n + 1)

theorem P1835205782944855.correct : P1835205782944855.Spec := by
  intro n
  simp only [A082968, Nat.add_sub_cancel]

end A082968

/-! ## A082968.P17705496952040261037

`∑[abs(-(n+1)%(A245710(n)+1))]`
-/

namespace A082968.P17705496952040261037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-(n + 1 : ℤ)) (A245710 n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P17705496952040261037

namespace A082968

/-- `∑[abs(-(n+1)%(A245710(n)+1))]` -/
def P17705496952040261037.Spec : Prop :=
  ∀ n, P17705496952040261037.a n = A082968 (n + 1)

end A082968

/-! ## A082968.P2370233971086870947

`∑[(Δ[n²]-n)%∑[(A000120(n)+1)%2]]`
-/

namespace A082968.P2370233971086870947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P2370233971086870947

namespace A082968

/-- `∑[(Δ[n²]-n)%∑[(A000120(n)+1)%2]]` -/
def P2370233971086870947.Spec : Prop :=
  ∀ n, P2370233971086870947.a n = A082968 (n + 1)

end A082968

/-! ## A082968.P1071843524913266496

`∑[(ϕ²-(ϕ-n))%∑[char[A001969(n+1)]]]`
-/

namespace A082968.P1071843524913266496
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P1071843524913266496

namespace A082968

/-- `∑[(ϕ²-(ϕ-n))%∑[char[A001969(n+1)]]]` -/
def P1071843524913266496.Spec : Prop :=
  ∀ n, P1071843524913266496.a n = A082968 (n + 1)

end A082968

/-! ## A082968.P17001161868726276373

`∑[A115384(n)%-A159481(n)]`
-/

namespace A082968.P17001161868726276373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115384 n) (-A159481 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P17001161868726276373

namespace A082968

/-- `∑[A115384(n)%-A159481(n)]` -/
def P17001161868726276373.Spec : Prop :=
  ∀ n, P17001161868726276373.a n = A082968 (n + 1)

end A082968

/-! ## A082968.P6476850255200148641

`∑[A008619(2*n)%(A245710(n)+1)]`
-/

namespace A082968.P6476850255200148641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (A245710 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P6476850255200148641

namespace A082968

/-- `∑[A008619(2*n)%(A245710(n)+1)]` -/
def P6476850255200148641.Spec : Prop :=
  ∀ n, P6476850255200148641.a n = A082968 (n + 1)

end A082968

/-! ## A082968.P8950888565828683664

`∑[(A001222(gcd(n, n+1))²+1+n)%(A245710(n)+1)]`
-/

namespace A082968.P8950888565828683664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (Nat.gcd n (n + 1)) ^ 2 + 1 + (n : ℤ)) (A245710 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082968.P8950888565828683664

namespace A082968

/-- `∑[(A001222(gcd(n, n+1))²+1+n)%(A245710(n)+1)]` -/
def P8950888565828683664.Spec : Prop :=
  ∀ n, P8950888565828683664.a n = A082968 (n + 1)

end A082968

/-!
# A082969: Numbers n such that (n/4)^2-n/8 = Sum_{k=1..n} (k mod Sum_{i=0..k-1} 1-t(i)) where t(i)=A010060(i) is the Thue-Morse sequence.

The programs for A082969, the canonical program `A082969.P10126016163437093735` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082969 has offset 1).

The definition of A082969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082969.P10126016163437093735

`record[(2*n^(n%2)-1)/(2*a(and(n, n-1)))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082969

/-- `record[(2*n^(n%2)-1)/(2*a(and(n, n-1)))]` -/
def P10126016163437093735.Spec : Prop :=
  ∀ n, P10126016163437093735.a n = (A082969 (n + 1) : ℚ)

end A082969

/-! ## A082969.P7519669278788810633

`8*record[n*A010060(n)]+2`
-/

namespace A082969.P7519669278788810633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A082969.P7519669278788810633

namespace A082969

/-- `8*record[n*A010060(n)]+2` -/
def P7519669278788810633.Spec : Prop :=
  ∀ n, P7519669278788810633.a n = A082969 (n + 1)

end A082969

/-! ## A082969.P9988525696840846503

`record[xor(2, 4*n*A001285(n))]`
-/

namespace A082969.P9988525696840846503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (4 * ((n : ℤ) * A001285 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082969.P9988525696840846503

namespace A082969

/-- `record[xor(2, 4*n*A001285(n))]` -/
def P9988525696840846503.Spec : Prop :=
  ∀ n, P9988525696840846503.a n = A082969 (n + 1)

end A082969

/-! ## A082969.P6990052926563192950

`record[gcd(8*n+2, A246159(n))]`
-/

namespace A082969.P6990052926563192950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * n + 2 : ℤ) (A246159 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082969.P6990052926563192950

namespace A082969

/-- `record[gcd(8*n+2, A246159(n))]` -/
def P6990052926563192950.Spec : Prop :=
  ∀ n, (P6990052926563192950.a n : ℤ) = A082969 (n + 1)

end A082969

/-! ## A082969.P14948547809345129923

`A017089(record[A102392(n)])`
-/

namespace A082969.P14948547809345129923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082969.P14948547809345129923

namespace A082969

/-- `A017089(record[A102392(n)])` -/
def P14948547809345129923.Spec : Prop :=
  ∀ n, P14948547809345129923.a n = A082969 (n + 1)

end A082969

/-! ## A082969.P883760183515821782

`2*A016813(record[A102392(n)])`
-/

namespace A082969.P883760183515821782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016813 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082969.P883760183515821782

namespace A082969

/-- `2*A016813(record[A102392(n)])` -/
def P883760183515821782.Spec : Prop :=
  ∀ n, P883760183515821782.a n = A082969 (n + 1)

end A082969

/-! ## A082969.P13164004732955230656

`A017089(record[n*A010060(n)])`
-/

namespace A082969.P13164004732955230656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082969.P13164004732955230656

namespace A082969

/-- `A017089(record[n*A010060(n)])` -/
def P13164004732955230656.Spec : Prop :=
  ∀ n, P13164004732955230656.a n = A082969 (n + 1)

end A082969

/-! ## A082969.P994384944022067797

`record[lcm(2, A181155(2*n+1))]`
-/

namespace A082969.P994384944022067797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A181155 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082969.P994384944022067797

namespace A082969

/-- `record[lcm(2, A181155(2*n+1))]` -/
def P994384944022067797.Spec : Prop :=
  ∀ n, (P994384944022067797.a n : ℤ) = A082969 (n + 1)

end A082969

/-! ## A082969.P7653285214642539800

`record[A102392(8*n)+2]`
-/

namespace A082969.P7653285214642539800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 (8 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082969.P7653285214642539800

namespace A082969

/-- `record[A102392(8*n)+2]` -/
def P7653285214642539800.Spec : Prop :=
  ∀ n, P7653285214642539800.a n = A082969 (n + 1)

end A082969

/-! ## A082969.P13896946966970475951

`A268817(A268673(n+1))+1`
-/

namespace A082969.P13896946966970475951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268817 (A268673 (n + 1)).toNat + 1

end

end A082969.P13896946966970475951

namespace A082969

/-- `A268817(A268673(n+1))+1` -/
def P13896946966970475951.Spec : Prop :=
  ∀ n, P13896946966970475951.a n = A082969 (n + 1)

end A082969

/-!
# A082970: Number of permutations of length n containing 2 occurrences of 132.

The programs for A082970, the canonical program `A082970.P662776361041881381` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082970 has offset 4).

The definition of A082970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082970.P662776361041881381

`C(2*(n+4)-6, n+2)*((n+4)^3+17*(n+4)²-80*(n+4)+80)/(2*(n+4)*(n+3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082970

/-- `C(2*(n+4)-6, n+2)*((n+4)^3+17*(n+4)²-80*(n+4)+80)/(2*(n+4)*(n+3))` -/
def P662776361041881381.Spec : Prop :=
  ∀ n, P662776361041881381.a n = (A082970 (n + 4) : ℚ)

end A082970

/-!
# A082974: a(n) = (a(n-1) + p(n)) mod p(n+1).

The programs for A082974, the canonical program `A082974.P165933890672859537` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082974 has offset 1).

The definition of A082974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))%A000040(n+2)` (program `A082974.P165933890672859537`, by `A082974.P165933890672859537.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082974.P165933890672859537

`(a(n-1)+A000040(n+1))%A000040(n+2)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082974

/-- `(a(n-1)+A000040(n+1))%A000040(n+2)` -/
def P165933890672859537.Spec : Prop :=
  ∀ n, P165933890672859537.a n = A082974 (n + 1)

theorem P165933890672859537.correct : P165933890672859537.Spec := by
  intro n
  simp only [A082974, Nat.add_sub_cancel]

end A082974

/-! ## A082974.P2591560799490890268

`(p?[comp[n²]]+a(n-1))%A006005(n+2)` with `a(0)=2`
-/

namespace A082974.P2591560799490890268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + a (n - 1)) (A006005 (n + 2))

end

end A082974.P2591560799490890268

namespace A082974

/-- `(p?[comp[n²]]+a(n-1))%A006005(n+2)` -/
def P2591560799490890268.Spec : Prop :=
  ∀ n, P2591560799490890268.a n = A082974 (n + 1)

end A082974

/-! ## A082974.P17322459019818817683

`(a(n-1)+A100484(n+1)/2)%A100050(p?[2*n+1])` with `a(0)=2`
-/

namespace A082974.P17322459019818817683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2)) (A100050 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A082974.P17322459019818817683

namespace A082974

/-- `(a(n-1)+A100484(n+1)/2)%A100050(p?[2*n+1])` -/
def P17322459019818817683.Spec : Prop :=
  ∀ n, P17322459019818817683.a n = A082974 (n + 1)

end A082974

/-! ## A082974.P18334615046631749391

`(A160656(n+1)+a(n-1))%A160656(n+2)` with `a(0)=2`
-/

namespace A082974.P18334615046631749391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A160656 (n + 1) + a (n - 1)) (A160656 (n + 2))

end

end A082974.P18334615046631749391

namespace A082974

/-- `(A160656(n+1)+a(n-1))%A160656(n+2)` -/
def P18334615046631749391.Spec : Prop :=
  ∀ n, P18334615046631749391.a n = A082974 (n + 1)

end A082974

/-!
# A082975: Denominators of continued fraction convergents to (sqrt(37)-4)/3.

The programs for A082975, the canonical program `A082975.P12498037636039700919` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082975 has offset 0).

The definition of A082975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082975.P12498037636039700919

`a(n-2)+((n+2)%3+1)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082975

/-- `a(n-2)+((n+2)%3+1)*a(n-1)` -/
def P12498037636039700919.Spec : Prop :=
  ∀ n, (P12498037636039700919.a n : ℤ) = A082975 n

theorem P12498037636039700919.correct : P12498037636039700919.Spec := by
  intro n
  simp only [A082975]

end A082975

/-! ## A082975.P16845467397687025439

`A093873(A037545(n+1))`
-/

namespace A082975.P16845467397687025439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A037545 (n + 1)).toNat

end

end A082975.P16845467397687025439

namespace A082975

/-- `A093873(A037545(n+1))` -/
def P16845467397687025439.Spec : Prop :=
  ∀ n, P16845467397687025439.a n = A082975 n

end A082975

/-!
# A082977: Numbers that are congruent to {0, 1, 3, 5, 6, 8, 10} mod 12.

The programs for A082977, the canonical program `A082977.P734237293015022915` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082977 has offset 1).

The definition of A082977 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A082977.anchor (n : ℕ) (hn : 1 ≤ n) : A082977 n = (Nat.nth (fun k => k % 12 ∈ ({0, 1, 3, 5, 6, 8, 10} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A082.A082977`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082977.P8340991753834611171

`floor(12*n/7)`
-/

namespace A082977.P8340991753834611171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * n : ℚ) / 7⌋

end

end A082977.P8340991753834611171

namespace A082977

/-- `floor(12*n/7)` -/
def P8340991753834611171.Spec : Prop :=
  ∀ n, P8340991753834611171.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P734237293015022915

`a(n-7)+12` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=6, a(5)=8, a(6)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082977

/-- `a(n-7)+12` -/
def P734237293015022915.Spec : Prop :=
  ∀ n, (P734237293015022915.a n : ℤ) = A082977 (n + 1)

theorem P734237293015022915.correct : P734237293015022915.Spec := by
  intro n
  simp only [A082977, Nat.add_sub_cancel]

end A082977

/-! ## A082977.P1377281527250017077

`A057359(n)+n`
-/

namespace A082977.P1377281527250017077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 n + (n : ℤ)

end

end A082977.P1377281527250017077

namespace A082977

/-- `A057359(n)+n` -/
def P1377281527250017077.Spec : Prop :=
  ∀ n, P1377281527250017077.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P3869042148413809250

`comp[A060106(n+1)-2]`
-/

namespace A082977.P3869042148413809250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A082977.P3869042148413809250

namespace A082977

/-- `comp[A060106(n+1)-2]` -/
def P3869042148413809250.Spec : Prop :=
  ∀ n, (P3869042148413809250.a n : ℤ) = A082977 (n + 1)

end A082977

/-! ## A082977.P7254452829208694558

`comp[A081032(n+1)-3]`
-/

namespace A082977.P7254452829208694558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A082977.P7254452829208694558

namespace A082977

/-- `comp[A081032(n+1)-3]` -/
def P7254452829208694558.Spec : Prop :=
  ∀ n, (P7254452829208694558.a n : ℤ) = A082977 (n + 1)

end A082977

/-! ## A082977.P15064317733772537575

`∑[char[A047332(n+2)]]+n`
-/

namespace A082977.P15064317733772537575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047332 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A082977.P15064317733772537575

namespace A082977

/-- `∑[char[A047332(n+2)]]+n` -/
def P15064317733772537575.Spec : Prop :=
  ∀ n, (P15064317733772537575.a n : ℤ) = A082977 (n + 1)

end A082977

/-! ## A082977.P4715360225795180907

`comp[A047317(n+1)+1+n]`
-/

namespace A082977.P4715360225795180907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047317 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A082977.P4715360225795180907

namespace A082977

/-- `comp[A047317(n+1)+1+n]` -/
def P4715360225795180907.Spec : Prop :=
  ∀ n, (P4715360225795180907.a n : ℤ) = A082977 (n + 1)

end A082977

/-! ## A082977.P3357227955280586898

`comp[A047367(n+1)+2+n]`
-/

namespace A082977.P3357227955280586898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (n + 1) + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A082977.P3357227955280586898

namespace A082977

/-- `comp[A047367(n+1)+2+n]` -/
def P3357227955280586898.Spec : Prop :=
  ∀ n, (P3357227955280586898.a n : ℤ) = A082977 (n + 1)

end A082977

/-! ## A082977.P13187850928022958052

`comp[3*n+2-(n-A288156(n))]`
-/

namespace A082977.P13187850928022958052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - ((n : ℤ) - A288156 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A082977.P13187850928022958052

namespace A082977

/-- `comp[3*n+2-(n-A288156(n))]` -/
def P13187850928022958052.Spec : Prop :=
  ∀ n, (P13187850928022958052.a n : ℤ) = A082977 (n + 1)

end A082977

/-! ## A082977.P13551010738679485375

`A289139(n)+A004776(n+1)`
-/

namespace A082977.P13551010738679485375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 n + A004776 (n + 1)

end

end A082977.P13551010738679485375

namespace A082977

/-- `A289139(n)+A004776(n+1)` -/
def P13551010738679485375.Spec : Prop :=
  ∀ n, P13551010738679485375.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P1906768831693845300

`A083089(n+1)-A109720(n)`
-/

namespace A082977.P1906768831693845300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1) - A109720 n

end

end A082977.P1906768831693845300

namespace A082977

/-- `A083089(n+1)-A109720(n)` -/
def P1906768831693845300.Spec : Prop :=
  ∀ n, P1906768831693845300.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P8634290862738488901

`A060107(n+2)-2`
-/

namespace A082977.P8634290862738488901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 2) - 2

end

end A082977.P8634290862738488901

namespace A082977

/-- `A060107(n+2)-2` -/
def P8634290862738488901.Spec : Prop :=
  ∀ n, P8634290862738488901.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P7440120200013668389

`A083120(n+3)-4`
-/

namespace A082977.P7440120200013668389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 3) - 4

end

end A082977.P7440120200013668389

namespace A082977

/-- `A083120(n+3)-4` -/
def P7440120200013668389.Spec : Prop :=
  ∀ n, P7440120200013668389.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P360852041455389923

`A083089(n+4)-6`
-/

namespace A082977.P360852041455389923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 4) - 6

end

end A082977.P360852041455389923

namespace A082977

/-- `A083089(n+4)-6` -/
def P360852041455389923.Spec : Prop :=
  ∀ n, P360852041455389923.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P6265709961038112399

`n-A057356(n+3)+n`
-/

namespace A082977.P6265709961038112399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057356 (n + 3) + (n : ℤ)

end

end A082977.P6265709961038112399

namespace A082977

/-- `n-A057356(n+3)+n` -/
def P6265709961038112399.Spec : Prop :=
  ∀ n, P6265709961038112399.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P17940673204717894457

`Δ[n²-A008739(n+2)]`
-/

namespace A082977.P17940673204717894457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082977.P17940673204717894457

namespace A082977

/-- `Δ[n²-A008739(n+2)]` -/
def P17940673204717894457.Spec : Prop :=
  ∀ n, P17940673204717894457.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P943663523143291465

`2*n-A004526(A057358(n+3))`
-/

namespace A082977.P943663523143291465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004526 (A057358 (n + 3)).toNat

end

end A082977.P943663523143291465

namespace A082977

/-- `2*n-A004526(A057358(n+3))` -/
def P943663523143291465.Spec : Prop :=
  ∀ n, P943663523143291465.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P17601926349657341460

`A083034(n+5)-7`
-/

namespace A082977.P17601926349657341460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083034 (n + 5) - 7

end

end A082977.P17601926349657341460

namespace A082977

/-- `A083034(n+5)-7` -/
def P17601926349657341460.Spec : Prop :=
  ∀ n, P17601926349657341460.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P16837298048132055511

`A004526(A057357(n)+n)+n`
-/

namespace A082977.P16837298048132055511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057357 n + (n : ℤ)).toNat + (n : ℤ)

end

end A082977.P16837298048132055511

namespace A082977

/-- `A004526(A057357(n)+n)+n` -/
def P16837298048132055511.Spec : Prop :=
  ∀ n, P16837298048132055511.a n = A082977 (n + 1)

end A082977

/-! ## A082977.P9868160879246949501

`A194223(a(n-1)+2)+n` with `a(0)=0`
-/

namespace A082977.P9868160879246949501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194223 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A082977.P9868160879246949501

namespace A082977

/-- `A194223(a(n-1)+2)+n` -/
def P9868160879246949501.Spec : Prop :=
  ∀ n, P9868160879246949501.a n = A082977 (n + 1)

end A082977

/-!
# A082979: Lexicographically earliest rearrangement of primes such that the sum of two consecutive terms is a palindrome.

The programs for A082979, there is no canonical definition to state claims against.
-/

/-! ## A082979.P16386557667653497997

`A084127(A018027(n)^A006723(n))`
-/

namespace A082979.P16386557667653497997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (SequenceMachineLib.roundAway ((A018027 n : ℚ) ^ (A006723 n : ℤ))).toNat

end

end A082979.P16386557667653497997

/-! ## A082979.P9380623078271182893

`A084127(C(A018027(n), A006723(n)))`
-/

namespace A082979.P9380623078271182893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (Nat.choose (A018027 n).toNat (A006723 n).toNat)

end

end A082979.P9380623078271182893

/-! ## A082979.P7585661381088165379

`p?[A256435(A129276(n)+1)+A243051(n+1)]`
-/

namespace A082979.P7585661381088165379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256435 (A129276 n + 1).toNat + A243051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082979.P7585661381088165379

/-!
# A082980: Rearrangement of triangular numbers such that the sum of two consecutive terms is a palindrome.

The programs for A082980, there is no canonical definition to state claims against.
-/

/-! ## A082980.P16412425566178495178

`gcd(A053291(n), A194136(A273902(n+2)))`
-/

namespace A082980.P16412425566178495178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053291 n) (A194136 (A273902 (n + 2)).toNat)

end

end A082980.P16412425566178495178

/-!
# A082981: Start with the sequence S(0)={1,1} and for k>0 define S(k) to be I(S(k-1)) where I denotes the operation of inserting, for i=1,2,3..., the term a(i)+a(i+1) between any two terms for which 4a(i+1)<=5a(i). The listed terms are the initial terms of the limit of this process as k goes to infinity.

The programs for A082981, the canonical program `A082981.P10374681041219865112` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082981 has offset 1).

The definition of A082981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082981.P10374681041219865112

`6*a(n-4)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=9, a(5)=14, a(6)=19, a(7)=24`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082981

/-- `6*a(n-4)-a(n-8)` -/
def P10374681041219865112.Spec : Prop :=
  ∀ n, P10374681041219865112.a n = A082981 (n + 1)

theorem P10374681041219865112.correct : P10374681041219865112.Spec := by
  intro n
  simp only [A082981, Nat.add_sub_cancel]

end A082981

/-! ## A082981.P14448158592264403690

`∑[A001653(ceil((n+1)/4))]`
-/

namespace A082981.P14448158592264403690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 ⌈(n + 1 : ℚ) / 4⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082981.P14448158592264403690

namespace A082981

/-- `∑[A001653(ceil((n+1)/4))]` -/
def P14448158592264403690.Spec : Prop :=
  ∀ n, P14448158592264403690.a n = A082981 (n + 1)

end A082981

/-! ## A082981.P6949894243344390269

`∑[A116558(1-and(2, n)+n)]`
-/

namespace A082981.P6949894243344390269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (1 - (Nat.land 2 n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082981.P6949894243344390269

namespace A082981

/-- `∑[A116558(1-and(2, n)+n)]` -/
def P6949894243344390269.Spec : Prop :=
  ∀ n, P6949894243344390269.a n = A082981 (n + 1)

end A082981

/-! ## A082981.P14467925988843170047

`A135153(or(2, n))+a(n-1)` with `a(0)=1`
-/

namespace A082981.P14467925988843170047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135153 (Nat.lor 2 n) + a (n - 1)

end

end A082981.P14467925988843170047

namespace A082981

/-- `A135153(or(2, n))+a(n-1)` -/
def P14467925988843170047.Spec : Prop :=
  ∀ n, P14467925988843170047.a n = A082981 (n + 1)

end A082981

/-! ## A082981.P4668401692095154435

`∑[A000129(2*floor(n/4)+1)]`
-/

namespace A082981.P4668401692095154435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * ⌊(n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082981.P4668401692095154435

namespace A082981

/-- `∑[A000129(2*floor(n/4)+1)]` -/
def P4668401692095154435.Spec : Prop :=
  ∀ n, P4668401692095154435.a n = A082981 (n + 1)

end A082981

/-! ## A082981.P662710029380064576

`∑[A116558(A267458(n))]`
-/

namespace A082981.P662710029380064576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (A267458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082981.P662710029380064576

namespace A082981

/-- `∑[A116558(A267458(n))]` -/
def P662710029380064576.Spec : Prop :=
  ∀ n, P662710029380064576.a n = A082981 (n + 1)

end A082981

/-!
# A082982: Numbers k such that k, k+1 and k+2 are sums of 2 squares.

The programs for A082982, there is no canonical definition to state claims against.
-/

/-! ## A082982.P8483068749016036505

`8*A304441(n+1)`
-/

namespace A082982.P8483068749016036505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A304441 (n + 1)

end

end A082982.P8483068749016036505

/-! ## A082982.P14739578298730559551

`∩[A140612(n+1)-1, A140612(n+1)]`
-/

namespace A082982.P14739578298730559551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082982.P14739578298730559551

/-! ## A082982.P13597082353619100236

`A140612(eq[1, A140612(n+2)-A140612(n+1)]+1)`
-/

namespace A082982.P13597082353619100236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 2) - A140612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A082982.P13597082353619100236

/-! ## A082982.P12690519885019547929

`A008590(A304441(n+1))`
-/

namespace A082982.P12690519885019547929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A304441 (n + 1)).toNat

end

end A082982.P12690519885019547929

/-! ## A082982.P7873922123600667754

`lcm(A000040(n+1)%2, A022144(A304441(n+1)))`
-/

namespace A082982.P7873922123600667754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A000040 (n + 1)) 2) (A022144 (A304441 (n + 1)).toNat)

end

end A082982.P7873922123600667754

/-!
# A082983: Odd numbers which lead to 1 in the 3x+1 problem, generated by a particular "least-first" greedy algorithm (see program code).

The programs for A082983, there is no canonical definition to state claims against.
-/

/-! ## A082983.P12146653063602549869

`A261702(eq[1, gcd(4, A261702(n+1))]+1)`
-/

namespace A082983.P12146653063602549869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A261702 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261702 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A082983.P12146653063602549869

/-! ## A082983.P15244259894201768279

`A261702(comp[(A261702(n+1)+1)%2+n])`
-/

namespace A082983.P15244259894201768279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261702 (n + 1) + 1) 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261702 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082983.P15244259894201768279

/-! ## A082983.P2435258774919405479

`filter[A261702(n+1), A000035(#)]`
-/

namespace A082983.P2435258774919405479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A082983.P2435258774919405479

/-!
# A082984: Numbers k for which the 3x+1 problem takes at least k halving and tripling steps to reach 1.

The programs for A082984, there is no canonical definition to state claims against.
-/

/-! ## A082984.P3409175267569940614

`lt[n, A008908(n+1)]+1`
-/

namespace A082984.P3409175267569940614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082984.P3409175267569940614

/-! ## A082984.P17420965155243188569

`lt[n, A006577(n+1)+1]+1`
-/

namespace A082984.P17420965155243188569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082984.P17420965155243188569

/-! ## A082984.P11590397011930799200

`lt[n-3, A139399(n+1)]+1`
-/

namespace A082984.P11590397011930799200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A082984.P11590397011930799200

/-! ## A082984.P15785486442006676867

`lt[n, A335870(2*(n+1))]+1`
-/

namespace A082984.P15785486442006676867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335870 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082984.P15785486442006676867

/-! ## A082984.P6897714787974624674

`lt[round(1/acot(n)), A335870(2*n)]`
-/

namespace A082984.P6897714787974624674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335870 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082984.P6897714787974624674

/-!
# A082985: Coefficient table for Chebyshev's U(2*n,x) polynomial expanded in decreasing powers of (-4*(1-x^2)).

The programs for A082985, the canonical program `A082985.P14728454194806165257` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082985 has offset 0).

The definition of A082985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082985.P14728454194806165257

`C(2*row(n)-col(n), col(n))*(2*row(n)+1)/(2*(row(n)-col(n))+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082985

/-- `C(2*row(n)-col(n), col(n))*(2*row(n)+1)/(2*(row(n)-col(n))+1)` -/
def P14728454194806165257.Spec : Prop :=
  ∀ n, P14728454194806165257.a n = (A082985 n : ℚ)

end A082985

/-! ## A082985.P5187167430507608304

`abs(2*A053123(n))-A054142(n)`
-/

namespace A082985.P5187167430507608304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A053123 n| - A054142 n

end

end A082985.P5187167430507608304

namespace A082985

/-- `abs(2*A053123(n))-A054142(n)` -/
def P5187167430507608304.Spec : Prop :=
  ∀ n, P5187167430507608304.a n = A082985 n

end A082985

/-! ## A082985.P6898006884095439419

`2*A172431(n+1)-A054142(n)`
-/

namespace A082985.P6898006884095439419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172431 (n + 1) - A054142 n

end

end A082985.P6898006884095439419

namespace A082985

/-- `2*A172431(n+1)-A054142(n)` -/
def P6898006884095439419.Spec : Prop :=
  ∀ n, P6898006884095439419.a n = A082985 n

end A082985

/-! ## A082985.P12298842698288889183

`A111125(A061579(n))`
-/

namespace A082985.P12298842698288889183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111125 (A061579 n).toNat

end

end A082985.P12298842698288889183

namespace A082985

/-- `A111125(A061579(n))` -/
def P12298842698288889183.Spec : Prop :=
  ∀ n, P12298842698288889183.a n = A082985 n

end A082985

/-! ## A082985.P4614944437802614683

`A111125(A038722(n+1)-1)`
-/

namespace A082985.P4614944437802614683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111125 (A038722 (n + 1) - 1).toNat

end

end A082985.P4614944437802614683

namespace A082985

/-- `A111125(A038722(n+1)-1)` -/
def P4614944437802614683.Spec : Prop :=
  ∀ n, P4614944437802614683.a n = A082985 n

end A082985

/-! ## A082985.P7023875464510508462

`A054142(n)+2*A128908(A038722(n+1))`
-/

namespace A082985.P7023875464510508462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n + 2 * A128908 (A038722 (n + 1)).toNat

end

end A082985.P7023875464510508462

namespace A082985

/-- `A054142(n)+2*A128908(A038722(n+1))` -/
def P7023875464510508462.Spec : Prop :=
  ∀ n, P7023875464510508462.a n = A082985 n

end A082985

/-! ## A082985.P5309724340667379838

`A208509(A082156(n+1))`
-/

namespace A082985.P5309724340667379838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208509 (A082156 (n + 1)).toNat

end

end A082985.P5309724340667379838

namespace A082985

/-- `A208509(A082156(n+1))` -/
def P5309724340667379838.Spec : Prop :=
  ∀ n, P5309724340667379838.a n = A082985 n

end A082985

/-! ## A082985.P10533023157116246090

`A034807(A064801(n+1))`
-/

namespace A082985.P10533023157116246090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A064801 (n + 1)).toNat

end

end A082985.P10533023157116246090

namespace A082985

/-- `A034807(A064801(n+1))` -/
def P10533023157116246090.Spec : Prop :=
  ∀ n, P10533023157116246090.a n = A082985 n

end A082985

/-! ## A082985.P4242433799722056179

`A172431(n+1)+A103631(A185870(n+1)-2)`
-/

namespace A082985.P4242433799722056179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) + A103631 (A185870 (n + 1) - 2).toNat

end

end A082985.P4242433799722056179

namespace A082985

/-- `A172431(n+1)+A103631(A185870(n+1)-2)` -/
def P4242433799722056179.Spec : Prop :=
  ∀ n, P4242433799722056179.a n = A082985 n

end A082985

/-! ## A082985.P559650608794123004

`A162514(eq[A162514(n+1)/2, A114525(n)])`
-/

namespace A082985.P559650608794123004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162514 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A082985.P559650608794123004

namespace A082985

/-- `A162514(eq[A162514(n+1)/2, A114525(n)])` -/
def P559650608794123004.Spec : Prop :=
  ∀ n, P559650608794123004.a n = A082985 n

end A082985

/-! ## A082985.P14575992105504104312

`A162514(eq[A162514(n+1)/2, A127672(n)])`
-/

namespace A082985.P14575992105504104312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162514 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A082985.P14575992105504104312

namespace A082985

/-- `A162514(eq[A162514(n+1)/2, A127672(n)])` -/
def P14575992105504104312.Spec : Prop :=
  ∀ n, P14575992105504104312.a n = A082985 n

end A082985

/-!
# A082986: Largest x such that 1/x + 1/y + 1/z = 1/n.

The programs for A082986, the canonical program `A082986.P12259007844633558778` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082986 has offset 1).

The definition of A082986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082986.P12259007844633558778

`floor(Δ[(n+1)^5/5])`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082986

/-- `floor(Δ[(n+1)^5/5])` -/
def P12259007844633558778.Spec : Prop :=
  ∀ n, P12259007844633558778.a n = A082986 (n + 1)

theorem P12259007844633558778.correct : P12259007844633558778.Spec := by
  intro n
  simp only [A082986, Nat.add_sub_cancel]

end A082986

/-! ## A082986.P3075699436188659256

`xor(1, Δ[(n+1)^5])/5`
-/

namespace A082986.P3075699436188659256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 5

end

end A082986.P3075699436188659256

namespace A082986

/-- `xor(1, Δ[(n+1)^5])/5` -/
def P3075699436188659256.Spec : Prop :=
  ∀ n, P3075699436188659256.a n = (A082986 (n + 1) : ℚ)

end A082986

/-! ## A082986.P5007097864926725575

`2*C((n+1)²+n+2, 2)`
-/

namespace A082986.P5007097864926725575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((n + 1) ^ 2 + (n + 2)) 2

end

end A082986.P5007097864926725575

namespace A082986

/-- `2*C((n+1)²+n+2, 2)` -/
def P5007097864926725575.Spec : Prop :=
  ∀ n, (P5007097864926725575.a n : ℤ) = A082986 (n + 1)

end A082986

/-! ## A082986.P18323138497745053275

`C((n+1)², 2)+C((n+2)², 2)`
-/

namespace A082986.P18323138497745053275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2 + Nat.choose ((n + 2) ^ 2) 2

end

end A082986.P18323138497745053275

namespace A082986

/-- `C((n+1)², 2)+C((n+2)², 2)` -/
def P18323138497745053275.Spec : Prop :=
  ∀ n, (P18323138497745053275.a n : ℤ) = A082986 (n + 1)

end A082986

/-! ## A082986.P10568197713177402630

`∑[n+1]*∑[a(n-1)+4]` with `a(0)=6, a(1)=8`
-/

namespace A082986.P10568197713177402630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 8] fun n f2 =>
  f2 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A082986.P10568197713177402630

namespace A082986

/-- `∑[n+1]*∑[a(n-1)+4]` -/
def P10568197713177402630.Spec : Prop :=
  ∀ n, (P10568197713177402630.a n : ℤ) = A082986 (n + 1)

end A082986

/-! ## A082986.P16974597561125658836

`lcm(n+1, ceil((n+2)^4/(n+3)))`
-/

namespace A082986.P16974597561125658836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ⌈((n + 2) ^ 4 : ℚ) / (n + 3 : ℚ)⌉

end

end A082986.P16974597561125658836

namespace A082986

/-- `lcm(n+1, ceil((n+2)^4/(n+3)))` -/
def P16974597561125658836.Spec : Prop :=
  ∀ n, (P16974597561125658836.a n : ℤ) = A082986 (n + 1)

end A082986

/-! ## A082986.P7780653032761652285

`2*lcm((n+1)²+n+2, ∑[n+1])`
-/

namespace A082986.P7780653032761652285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm ((n + 1) ^ 2 + (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082986.P7780653032761652285

namespace A082986

/-- `2*lcm((n+1)²+n+2, ∑[n+1])` -/
def P7780653032761652285.Spec : Prop :=
  ∀ n, (P7780653032761652285.a n : ℤ) = A082986 (n + 1)

end A082986

/-! ## A082986.P39984664671855015

`((n+1)^8-(n+1)²)/a(n-1)` with `a(0)=6`
-/

namespace A082986.P39984664671855015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (((n + 1) ^ 8 : ℤ) - ((n + 1) ^ 2 : ℤ) : ℚ) / a (n - 1)

end

end A082986.P39984664671855015

namespace A082986

/-- `((n+1)^8-(n+1)²)/a(n-1)` -/
def P39984664671855015.Spec : Prop :=
  ∀ n, P39984664671855015.a n = (A082986 (n + 1) : ℚ)

end A082986

/-! ## A082986.P3226907052330157131

`(lcm(n+2, (n+1)²)+n+1)*(n+2)`
-/

namespace A082986.P3226907052330157131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ 2) + (n + 1)) * (n + 2)

end

end A082986.P3226907052330157131

namespace A082986

/-- `(lcm(n+2, (n+1)²)+n+1)*(n+2)` -/
def P3226907052330157131.Spec : Prop :=
  ∀ n, (P3226907052330157131.a n : ℤ) = A082986 (n + 1)

end A082986

/-! ## A082986.P10251813118982507450

`lcm(2, ∑[2*n+1]+n+2)*∑[n+1]`
-/

namespace A082986.P10251813118982507450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A082986.P10251813118982507450

namespace A082986

/-- `lcm(2, ∑[2*n+1]+n+2)*∑[n+1]` -/
def P10251813118982507450.Spec : Prop :=
  ∀ n, (P10251813118982507450.a n : ℤ) = A082986 (n + 1)

end A082986

/-! ## A082986.P7892965002526330704

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+24` with `a(0)=6, a(1)=42, a(2)=156, a(3)=420`
-/

namespace A082986.P7892965002526330704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 42, 156, 420] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + 24

end

end A082986.P7892965002526330704

namespace A082986

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+24` -/
def P7892965002526330704.Spec : Prop :=
  ∀ n, P7892965002526330704.a n = A082986 (n + 1)

end A082986

/-! ## A082986.P12036998859320659213

`∑[A068236(n)/5]`
-/

namespace A082986.P12036998859320659213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068236 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082986.P12036998859320659213

namespace A082986

/-- `∑[A068236(n)/5]` -/
def P12036998859320659213.Spec : Prop :=
  ∀ n, P12036998859320659213.a n = (A082986 (n + 1) : ℚ)

end A082986

/-! ## A082986.P15084571665662368767

`3*A363706(n+1)`
-/

namespace A082986.P15084571665662368767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A363706 (n + 1)

end

end A082986.P15084571665662368767

namespace A082986

/-- `3*A363706(n+1)` -/
def P15084571665662368767.Spec : Prop :=
  ∀ n, P15084571665662368767.a n = A082986 (n + 1)

end A082986

/-! ## A082986.P14559900914584397587

`A288486(n+1)/4`
-/

namespace A082986.P14559900914584397587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288486 (n + 1) : ℚ) / 4

end

end A082986.P14559900914584397587

namespace A082986

/-- `A288486(n+1)/4` -/
def P14559900914584397587.Spec : Prop :=
  ∀ n, P14559900914584397587.a n = (A082986 (n + 1) : ℚ)

end A082986

/-! ## A082986.P6508827210352330408

`∑[3*A035597(n+1)]`
-/

namespace A082986.P6508827210352330408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A035597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082986.P6508827210352330408

namespace A082986

/-- `∑[3*A035597(n+1)]` -/
def P6508827210352330408.Spec : Prop :=
  ∀ n, P6508827210352330408.a n = A082986 (n + 1)

end A082986

/-! ## A082986.P12392920768926909271

`(n+1)*A069778(n+1)`
-/

namespace A082986.P12392920768926909271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069778 (n + 1)

end

end A082986.P12392920768926909271

namespace A082986

/-- `(n+1)*A069778(n+1)` -/
def P12392920768926909271.Spec : Prop :=
  ∀ n, P12392920768926909271.a n = A082986 (n + 1)

end A082986

/-! ## A082986.P14465850163803515842

`round((A099776(n+1)/2)²)`
-/

namespace A082986.P14465850163803515842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A099776 (n + 1) : ℚ) / 2) ^ 2)

end

end A082986.P14465850163803515842

namespace A082986

/-- `round((A099776(n+1)/2)²)` -/
def P14465850163803515842.Spec : Prop :=
  ∀ n, P14465850163803515842.a n = A082986 (n + 1)

end A082986

/-! ## A082986.P3433531617118015482

`A267233(n+1)-A134481(n)`
-/

namespace A082986.P3433531617118015482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267233 (n + 1) - A134481 n

end

end A082986.P3433531617118015482

namespace A082986

/-- `A267233(n+1)-A134481(n)` -/
def P3433531617118015482.Spec : Prop :=
  ∀ n, P3433531617118015482.a n = A082986 (n + 1)

end A082986

/-! ## A082986.P280061920047628966

`A219086(n+1)+A000217(n+1)`
-/

namespace A082986.P280061920047628966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 (n + 1) + A000217 (n + 1)

end

end A082986.P280061920047628966

namespace A082986

/-- `A219086(n+1)+A000217(n+1)` -/
def P280061920047628966.Spec : Prop :=
  ∀ n, P280061920047628966.a n = A082986 (n + 1)

end A082986

/-! ## A082986.P946077314571163397

`A179824(n+2)+A114364(n+1)`
-/

namespace A082986.P946077314571163397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2) + A114364 (n + 1)

end

end A082986.P946077314571163397

namespace A082986

/-- `A179824(n+2)+A114364(n+1)` -/
def P946077314571163397.Spec : Prop :=
  ∀ n, P946077314571163397.a n = A082986 (n + 1)

end A082986

/-!
# A082987: a(n) = Sum_{k=0..n} 3^k*F(k) where F(k) is the k-th Fibonacci number.

The programs for A082987, the canonical program `A082987.P773651274160624194` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082987 has offset 0).

The definition of A082987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082987.P773651274160624194

`4*a(n-1)+6*a(n-2)-9*a(n-3)` with `a(0)=0, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082987

/-- `4*a(n-1)+6*a(n-2)-9*a(n-3)` -/
def P773651274160624194.Spec : Prop :=
  ∀ n, P773651274160624194.a n = A082987 n

theorem P773651274160624194.correct : P773651274160624194.Spec := by
  intro n
  simp only [A082987]

end A082987

/-! ## A082987.P12960601522085442467

`ogf(3x/(1-4x-6x^2+9x^3))`
-/

namespace A082987.P12960601522085442467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -4, -6, 9] n

end

end A082987.P12960601522085442467

namespace A082987

/-- `ogf(3x/(1-4x-6x^2+9x^3))` -/
def P12960601522085442467.Spec : Prop :=
  ∀ n, P12960601522085442467.a n = A082987 n

end A082987

/-! ## A082987.P3241782109782962310

`∑[3^n*round(ϕ^n/sqrt(5))]`
-/

namespace A082987.P3241782109782962310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082987.P3241782109782962310

namespace A082987

/-- `∑[3^n*round(ϕ^n/sqrt(5))]` -/
def P3241782109782962310.Spec : Prop :=
  ∀ n, P3241782109782962310.a n = A082987 n

end A082987

/-! ## A082987.P15492963258086114899

`3*(3*a(n-2)+a(n-1)+1)` with `a(0)=0, a(1)=3`
-/

namespace A082987.P15492963258086114899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 * (3 * a (n - 2) + (a (n - 1) + 1))

end

end A082987.P15492963258086114899

namespace A082987

/-- `3*(3*a(n-2)+a(n-1)+1)` -/
def P15492963258086114899.Spec : Prop :=
  ∀ n, (P15492963258086114899.a n : ℤ) = A082987 n

end A082987

/-! ## A082987.P9620311163472536433

`3*A099013(n)`
-/

namespace A082987.P9620311163472536433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A099013 n

end

end A082987.P9620311163472536433

namespace A082987

/-- `3*A099013(n)` -/
def P9620311163472536433.Spec : Prop :=
  ∀ n, P9620311163472536433.a n = A082987 n

end A082987

/-! ## A082987.P3838080898137511054

`3*∑[A099012(n)]`
-/

namespace A082987.P3838080898137511054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082987.P3838080898137511054

namespace A082987

/-- `3*∑[A099012(n)]` -/
def P3838080898137511054.Spec : Prop :=
  ∀ n, P3838080898137511054.a n = A082987 n

end A082987

/-! ## A082987.P7102745161133844264

`A261397(n)+a(n-1)` with `a(0)=0`
-/

namespace A082987.P7102745161133844264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A261397 n + a (n - 1)

end

end A082987.P7102745161133844264

namespace A082987

/-- `A261397(n)+a(n-1)` -/
def P7102745161133844264.Spec : Prop :=
  ∀ n, P7102745161133844264.a n = A082987 n

end A082987

/-! ## A082987.P8929394404763154541

`lcm(A099013(n), A122553(n))`
-/

namespace A082987.P8929394404763154541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099013 n) (A122553 n)

end

end A082987.P8929394404763154541

namespace A082987

/-- `lcm(A099013(n), A122553(n))` -/
def P8929394404763154541.Spec : Prop :=
  ∀ n, (P8929394404763154541.a n : ℤ) = A082987 n

end A082987

/-! ## A082987.P5948713518358580074

`3*∑[A000045(n)/4*A003946(n)]`
-/

namespace A082987.P5948713518358580074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 4 * (A003946 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082987.P5948713518358580074

namespace A082987

/-- `3*∑[A000045(n)/4*A003946(n)]` -/
def P5948713518358580074.Spec : Prop :=
  ∀ n, P5948713518358580074.a n = (A082987 n : ℚ)

end A082987

/-! ## A082987.P5282865152746370513

`∑[A261397(n+1)]-A261397(n+1)`
-/

namespace A082987.P5282865152746370513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A261397 (n + 1)

end

end A082987.P5282865152746370513

namespace A082987

/-- `∑[A261397(n+1)]-A261397(n+1)` -/
def P5282865152746370513.Spec : Prop :=
  ∀ n, P5282865152746370513.a n = A082987 n

end A082987

/-!
# A082988: a(n) = Sum_{k=0..n} 4^k*F(k) where F(k) is the k-th Fibonacci number.

The programs for A082988, the canonical program `A082988.P16625148414976497332` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082988 has offset 0).

The definition of A082988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082988.P16625148414976497332

`5*a(n-1)+12*a(n-2)-16*a(n-3)` with `a(0)=0, a(1)=4, a(2)=20`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A082988

/-- `5*a(n-1)+12*a(n-2)-16*a(n-3)` -/
def P16625148414976497332.Spec : Prop :=
  ∀ n, P16625148414976497332.a n = A082988 n

theorem P16625148414976497332.correct : P16625148414976497332.Spec := by
  intro n
  simp only [A082988]

end A082988

/-! ## A082988.P13822485441861990937

`∑[4^n*round(ϕ^n/sqrt(5))]`
-/

namespace A082988.P13822485441861990937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082988.P13822485441861990937

namespace A082988

/-- `∑[4^n*round(ϕ^n/sqrt(5))]` -/
def P13822485441861990937.Spec : Prop :=
  ∀ n, P13822485441861990937.a n = A082988 n

end A082988

/-! ## A082988.P7830271738753214262

`4*(4*a(n-2)+a(n-1)+1)` with `a(0)=0, a(1)=4`
-/

namespace A082988.P7830271738753214262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  4 * (4 * a (n - 2) + (a (n - 1) + 1))

end

end A082988.P7830271738753214262

namespace A082988

/-- `4*(4*a(n-2)+a(n-1)+1)` -/
def P7830271738753214262.Spec : Prop :=
  ∀ n, (P7830271738753214262.a n : ℤ) = A082988 n

end A082988

/-! ## A082988.P7857717017458903682

`4*∑[A099133(n)]`
-/

namespace A082988.P7857717017458903682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082988.P7857717017458903682

namespace A082988

/-- `4*∑[A099133(n)]` -/
def P7857717017458903682.Spec : Prop :=
  ∀ n, P7857717017458903682.a n = A082988 n

end A082988

/-! ## A082988.P7005459652476869731

`a(n-1)+A000045(n)*A000079(n)²` with `a(0)=0`
-/

namespace A082988.P7005459652476869731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000045 n * A000079 n ^ 2

end

end A082988.P7005459652476869731

namespace A082988

/-- `a(n-1)+A000045(n)*A000079(n)²` -/
def P7005459652476869731.Spec : Prop :=
  ∀ n, P7005459652476869731.a n = A082988 n

end A082988

/-! ## A082988.P11311913721009275061

`a(n-1)+A000045(n)*A000079(2*n)` with `a(0)=0`
-/

namespace A082988.P11311913721009275061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000045 n * A000079 (2 * n)

end

end A082988.P11311913721009275061

namespace A082988

/-- `a(n-1)+A000045(n)*A000079(2*n)` -/
def P11311913721009275061.Spec : Prop :=
  ∀ n, P11311913721009275061.a n = A082988 n

end A082988

/-!
# A082989: Number of ordered trees with n edges and having no root-to-leaf branches.

The programs for A082989, there is no canonical definition to state claims against.
-/

/-! ## A082989.P14616220381781459263

`Δ[A035929(n)]`
-/

namespace A082989.P14616220381781459263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082989.P14616220381781459263

/-! ## A082989.P12801391244832858811

`Δ[abs(Δ[A182486(n)])]`
-/

namespace A082989.P12801391244832858811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082989.P12801391244832858811

/-! ## A082989.P16531290207118239425

`A035929(n+1)-A035929(n)`
-/

namespace A082989.P16531290207118239425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (n + 1) - A035929 n

end

end A082989.P16531290207118239425

/-! ## A082989.P338382706672832533

`A182486(n+2)+A000108(n)`
-/

namespace A082989.P338382706672832533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182486 (n + 2) + A000108 n

end

end A082989.P338382706672832533

/-! ## A082989.P9129373762680887741

`Δ[A182486(n)-A182486(n+1)]`
-/

namespace A082989.P9129373762680887741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182486 n - A182486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082989.P9129373762680887741

/-! ## A082989.P5644445649223766173

`2*A191789(2*n)-A191789(2*n+1)`
-/

namespace A082989.P5644445649223766173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191789 (2 * n) - A191789 (2 * n + 1)

end

end A082989.P5644445649223766173

/-! ## A082989.P3050220789216947886

`A094322(∑[n])`
-/

namespace A082989.P3050220789216947886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094322 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082989.P3050220789216947886

/-! ## A082989.P4976690301546428418

`or(char[3], A094322(A000217(n)))`
-/

namespace A082989.P4976690301546428418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A094322 (A000217 n).toNat)

end

end A082989.P4976690301546428418

/-!
# A082990: Rent due for landing on undeveloped Monopoly properties starting at Mediterranean Avenue and finishing at Boardwalk, not including railroads or utilities.

The programs for A082990, there is no canonical definition to state claims against.
-/

/-! ## A082990.P10915268610700058037

`∑[(2*n^(4*n))%3]`
-/

namespace A082990.P10915268610700058037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ (4 * n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082990.P10915268610700058037

/-! ## A082990.P7328841516169820720

`A002326(∏[(n²+1)%3])`
-/

namespace A082990.P7328841516169820720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A082990.P7328841516169820720

/-! ## A082990.P15758473201752688861

`A062011(∏[n²%3+1])`
-/

namespace A082990.P15758473201752688861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A082990.P15758473201752688861

/-! ## A082990.P3918143129268247167

`A002326(2^(n-floor(n/3)))`
-/

namespace A082990.P3918143129268247167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A082990.P3918143129268247167

/-! ## A082990.P8179841499869129480

`A247653(A133464(n))`
-/

namespace A082990.P8179841499869129480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247653 (A133464 n).toNat

end

end A082990.P8179841499869129480

/-!
# A082991: a(1) = 1 and for n > 1, a(n) = 2 * length of the cycle reached for the map x -> A062401(x), starting at n [where A062401(n) = phi(sigma(n))], or -1 if no finite cycle is ever reached.

The programs for A082991, there is no canonical definition to state claims against.
-/

/-! ## A082991.P2264291810505347962

`2*A095955(n+1)-A000007(n)`
-/

namespace A082991.P2264291810505347962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095955 (n + 1) - A000007 n

end

end A082991.P2264291810505347962

/-! ## A082991.P12330591367674548072

`(A065475(n+1)-n)*A095955(n+1)`
-/

namespace A082991.P12330591367674548072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) - (n : ℤ)) * A095955 (n + 1)

end

end A082991.P12330591367674548072

/-! ## A082991.P12867411760124086162

`A020906(round(n/(n+1))+1)*A095955(n+1)`
-/

namespace A082991.P12867411760124086162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020906 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat * A095955 (n + 1)

end

end A082991.P12867411760124086162

/-! ## A082991.P17301672432310961589

`A050367(round(n/(n+1))+1)*A095955(n+1)`
-/

namespace A082991.P17301672432310961589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat * A095955 (n + 1)

end

end A082991.P17301672432310961589

/-! ## A082991.P14142139628055104554

`A020639(A062401(n+1))*A095955(n+1)`
-/

namespace A082991.P14142139628055104554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062401 (n + 1)).toNat * A095955 (n + 1)

end

end A082991.P14142139628055104554

/-! ## A082991.P6268638112298831954

`A001222(2*A006530(n+1))*A095955(n+1)`
-/

namespace A082991.P6268638112298831954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat * A095955 (n + 1)

end

end A082991.P6268638112298831954

/-! ## A082991.P15406431450222929881

`(2-A010052(n²+1))*A095955(n+1)`
-/

namespace A082991.P15406431450222929881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010052 (n ^ 2 + 1)) * A095955 (n + 1)

end

end A082991.P15406431450222929881

/-! ## A082991.P13300154022623456735

`A020639(A096850(n+1))*A095955(n+1)`
-/

namespace A082991.P13300154022623456735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A096850 (n + 1)).toNat * A095955 (n + 1)

end

end A082991.P13300154022623456735

/-!
# A082992: Primes whose 10's complement is a triangular number.

The programs for A082992, there is no canonical definition to state claims against.
-/

/-! ## A082992.P15417422106763953330

`p?[n*A023531(A061601(n))]`
-/

namespace A082992.P15417422106763953330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023531 (A061601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082992.P15417422106763953330

/-!
# A082993: a(1) = 2; a(n+1) = least prime > a(1)*a(2)*...*a(n).

The programs for A082993, there is no canonical definition to state claims against.
-/

/-! ## A082993.P9760160389001247855

`ratio[A100016(n)]`
-/

namespace A082993.P9760160389001247855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100016 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A082993.P9760160389001247855

/-! ## A082993.P6151188979903320569

`A100016(n+1)/A100016(n)`
-/

namespace A082993.P6151188979903320569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100016 (n + 1) : ℚ) / (A100016 n : ℚ)

end

end A082993.P6151188979903320569

/-! ## A082993.P16743673454266276197

`record[A100016(A008611(n))]/A100016(n)`
-/

namespace A082993.P16743673454266276197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100016 (A008611 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A100016 n : ℚ)

end

end A082993.P16743673454266276197

/-! ## A082993.P4622595235215958556

`record[A100016(A023416(n))]/A100016(n)`
-/

namespace A082993.P4622595235215958556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100016 (A023416 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A100016 n : ℚ)

end

end A082993.P4622595235215958556

/-!
# A082994: Numbers k such that all the following properties hold: (i) k*reverse(k) is a square; (ii) k != reverse(k); (iii) k and reverse(k) are not both squares; and (iv) k and reverse(k) have the same number of digits.

The programs for A082994, there is no canonical definition to state claims against.
-/

/-! ## A082994.P14215740999906343605

`filter[A062917(n+1), A049240(#)]`
-/

namespace A082994.P14215740999906343605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A082994.P14215740999906343605

/-! ## A082994.P2097053378721312308

`filter[A062917(n+1), A132350(#)]`
-/

namespace A082994.P2097053378721312308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A082994.P2097053378721312308

/-! ## A082994.P91773216055880932

`filter[A062917(n+1), A262855(#)]`
-/

namespace A082994.P91773216055880932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262855 (f1 j).toNat = 1) n)

end

end A082994.P91773216055880932

/-! ## A082994.P5764830345842906475

`filter[A062917(n+1), A264442(#)]`
-/

namespace A082994.P5764830345842906475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264442 (f1 j).toNat = 1) n)

end

end A082994.P5764830345842906475

/-! ## A082994.P4275008542390328728

`filter[A062917(n+1), A267594(#)]`
-/

namespace A082994.P4275008542390328728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A082994.P4275008542390328728

/-!
# A082995: Distance from n!+1 to next larger square.

The programs for A082995, the canonical program `A082995.P3788078618634858335` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082995 has offset 1).

The definition of A082995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082995.P12120914697722912454

`A280193(A000040(n+1))+A068869(n+1)`
-/

namespace A082995.P12120914697722912454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A000040 (n + 1)).toNat + A068869 (n + 1)

end

end A082995.P12120914697722912454

namespace A082995

/-- `A280193(A000040(n+1))+A068869(n+1)` -/
def P12120914697722912454.Spec : Prop :=
  ∀ n, P12120914697722912454.a n = A082995 (n + 1)

end A082995

/-! ## A082995.P13806708541064868264

`A068869(n+1)+A019428(A071364(n+1))-2`
-/

namespace A082995.P13806708541064868264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068869 (n + 1) + (A019428 (A071364 (n + 1)).toNat - 2)

end

end A082995.P13806708541064868264

namespace A082995

/-- `A068869(n+1)+A019428(A071364(n+1))-2` -/
def P13806708541064868264.Spec : Prop :=
  ∀ n, P13806708541064868264.a n = A082995 (n + 1)

end A082995

/-! ## A082995.P3788078618634858335

`A055226(n+1)+A055226(n+1)-A066857(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082995

/-- `A055226(n+1)+A055226(n+1)-A066857(n+1)` -/
def P3788078618634858335.Spec : Prop :=
  ∀ n, P3788078618634858335.a n = A082995 (n + 1)

theorem P3788078618634858335.correct : P3788078618634858335.Spec := by
  intro n
  simp only [A082995, Nat.add_sub_cancel]

end A082995

/-! ## A082995.P15615535928530172216

`A068869(n+1)-A001057(A019428(A071364(n+1)))`
-/

namespace A082995.P15615535928530172216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068869 (n + 1) - A001057 (A019428 (A071364 (n + 1)).toNat).toNat

end

end A082995.P15615535928530172216

namespace A082995

/-- `A068869(n+1)-A001057(A019428(A071364(n+1)))` -/
def P15615535928530172216.Spec : Prop :=
  ∀ n, P15615535928530172216.a n = A082995 (n + 1)

end A082995

/-! ## A082995.P14599529323721303555

`A081729(A079780(n+1))+A068869(n+1)`
-/

namespace A082995.P14599529323721303555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A079780 (n + 1)).toNat + A068869 (n + 1)

end

end A082995.P14599529323721303555

namespace A082995

/-- `A081729(A079780(n+1))+A068869(n+1)` -/
def P14599529323721303555.Spec : Prop :=
  ∀ n, P14599529323721303555.a n = A082995 (n + 1)

end A082995

/-!
# A082996: a(n) = card{ x <= n : bigomega(x) = 4 }.

The programs for A082996, the canonical program `A082996.P7263893020435632494` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082996 has offset 1).

The definition of A082996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082996.P7263893020435632494

`∑[A101637(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082996

/-- `∑[A101637(n+1)]` -/
def P7263893020435632494.Spec : Prop :=
  ∀ n, P7263893020435632494.a n = A082996 (n + 1)

theorem P7263893020435632494.correct : P7263893020435632494.Spec := by
  intro n
  simp only [A082996, Nat.add_sub_cancel]

end A082996

/-! ## A082996.P16087619073098623884

`∑[char[A014613(n+1)-1]]`
-/

namespace A082996.P16087619073098623884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P16087619073098623884

namespace A082996

/-- `∑[char[A014613(n+1)-1]]` -/
def P16087619073098623884.Spec : Prop :=
  ∀ n, (P16087619073098623884.a n : ℤ) = A082996 (n + 1)

end A082996

/-! ## A082996.P4013438169397258139

`∑[char[eq[4, A001222(n+1)]]]`
-/

namespace A082996.P4013438169397258139
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P4013438169397258139

namespace A082996

/-- `∑[char[eq[4, A001222(n+1)]]]` -/
def P4013438169397258139.Spec : Prop :=
  ∀ n, (P4013438169397258139.a n : ℤ) = A082996 (n + 1)

end A082996

/-! ## A082996.P11491870988457929988

`∑[A064911(A054576(n+1))]`
-/

namespace A082996.P11491870988457929988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A054576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P11491870988457929988

namespace A082996

/-- `∑[A064911(A054576(n+1))]` -/
def P11491870988457929988.Spec : Prop :=
  ∀ n, P11491870988457929988.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P4943741705967343667

`∑[A185014(A001222(n+1))]`
-/

namespace A082996.P4943741705967343667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P4943741705967343667

namespace A082996

/-- `∑[A185014(A001222(n+1))]` -/
def P4943741705967343667.Spec : Prop :=
  ∀ n, P4943741705967343667.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P16170777202463091474

`∑[A091225(A073093(n+1)²)]`
-/

namespace A082996.P16170777202463091474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A073093 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P16170777202463091474

namespace A082996

/-- `∑[A091225(A073093(n+1)²)]` -/
def P16170777202463091474.Spec : Prop :=
  ∀ n, P16170777202463091474.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P10583505232589114573

`∑[A318880(A001222(n+1)+2)]`
-/

namespace A082996.P10583505232589114573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P10583505232589114573

namespace A082996

/-- `∑[A318880(A001222(n+1)+2)]` -/
def P10583505232589114573.Spec : Prop :=
  ∀ n, P10583505232589114573.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P11377006796824195384

`∑[A358678(A008636(∑{e}[n+1, #]))]`
-/

namespace A082996.P11377006796824195384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358678 (A008636 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P11377006796824195384

namespace A082996

/-- `∑[A358678(A008636(∑{e}[n+1, #]))]` -/
def P11377006796824195384.Spec : Prop :=
  ∀ n, P11377006796824195384.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P324439006436937763

`∑[A010054((A001222(n+1)+2)²)]`
-/

namespace A082996.P324439006436937763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((A001222 (n + 1) + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P324439006436937763

namespace A082996

/-- `∑[A010054((A001222(n+1)+2)²)]` -/
def P324439006436937763.Spec : Prop :=
  ∀ n, P324439006436937763.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P15587869179142805005

`∑[val(A113017(A001222(n+1)+2), 43)]`
-/

namespace A082996.P15587869179142805005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113017 (A001222 (n + 1) + 2).toNat).toNat 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P15587869179142805005

namespace A082996

/-- `∑[val(A113017(A001222(n+1)+2), 43)]` -/
def P15587869179142805005.Spec : Prop :=
  ∀ n, (P15587869179142805005.a n : ℤ) = A082996 (n + 1)

end A082996

/-! ## A082996.P11587188146381697656

`∑[A064911(A032742(A032742(n+1)))]`
-/

namespace A082996.P11587188146381697656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A032742 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P11587188146381697656

namespace A082996

/-- `∑[A064911(A032742(A032742(n+1)))]` -/
def P11587188146381697656.Spec : Prop :=
  ∀ n, P11587188146381697656.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P2365465233021023265

`∑[A101040(A063928(A063928(n+1)))]`
-/

namespace A082996.P2365465233021023265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A063928 (A063928 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P2365465233021023265

namespace A082996

/-- `∑[A101040(A063928(A063928(n+1)))]` -/
def P2365465233021023265.Spec : Prop :=
  ∀ n, P2365465233021023265.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P3126292645523125320

`val(∏[A007318(∑{e}[n+1, #])], 2)`
-/

namespace A082996.P3126292645523125320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A082996.P3126292645523125320

namespace A082996

/-- `val(∏[A007318(∑{e}[n+1, #])], 2)` -/
def P3126292645523125320.Spec : Prop :=
  ∀ n, (P3126292645523125320.a n : ℤ) = A082996 (n + 1)

end A082996

/-! ## A082996.P17461049068666889131

`∑[A045698(A001222((n+1)²))]`
-/

namespace A082996.P17461049068666889131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (A001222 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P17461049068666889131

namespace A082996

/-- `∑[A045698(A001222((n+1)²))]` -/
def P17461049068666889131.Spec : Prop :=
  ∀ n, P17461049068666889131.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P17289286083911460604

`∑[A342753(A001222(2*(n+1)²))]`
-/

namespace A082996.P17289286083911460604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A001222 (2 * (n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082996.P17289286083911460604

namespace A082996

/-- `∑[A342753(A001222(2*(n+1)²))]` -/
def P17289286083911460604.Spec : Prop :=
  ∀ n, P17289286083911460604.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P17777605011886445789

`A001222(∏[∏{e}[A001222(n+1), #]])`
-/

namespace A082996.P17777605011886445789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A082996.P17777605011886445789

namespace A082996

/-- `A001222(∏[∏{e}[A001222(n+1), #]])` -/
def P17777605011886445789.Spec : Prop :=
  ∀ n, P17777605011886445789.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P12814080317640649139

`A001222(∏[A253641(A001222(n+1))])`
-/

namespace A082996.P12814080317640649139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082996.P12814080317640649139

namespace A082996

/-- `A001222(∏[A253641(A001222(n+1))])` -/
def P12814080317640649139.Spec : Prop :=
  ∀ n, P12814080317640649139.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P7286206815427707748

`A001222(∏[A204697(A001222(n+1)+1)])`
-/

namespace A082996.P7286206815427707748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204697 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082996.P7286206815427707748

namespace A082996

/-- `A001222(∏[A204697(A001222(n+1)+1)])` -/
def P7286206815427707748.Spec : Prop :=
  ∀ n, P7286206815427707748.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P9117488806183054314

`A001222(∏[A001221(A001222(n+1)+2)])`
-/

namespace A082996.P9117488806183054314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082996.P9117488806183054314

namespace A082996

/-- `A001222(∏[A001221(A001222(n+1)+2)])` -/
def P9117488806183054314.Spec : Prop :=
  ∀ n, P9117488806183054314.a n = A082996 (n + 1)

end A082996

/-! ## A082996.P9555913763751476084

`A001222(∏[A043279(A001222(n+1)+2)])`
-/

namespace A082996.P9555913763751476084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082996.P9555913763751476084

namespace A082996

/-- `A001222(∏[A043279(A001222(n+1)+2)])` -/
def P9555913763751476084.Spec : Prop :=
  ∀ n, P9555913763751476084.a n = A082996 (n + 1)

end A082996

/-!
# A082997: a(n) = card{ x <= n : omega(x) = 2 }.

The programs for A082997, the canonical program `A082997.P7827061772394595048` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082997 has offset 1).

The definition of A082997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082997.P7827061772394595048

`∑[A215480(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082997

/-- `∑[A215480(n+1)]` -/
def P7827061772394595048.Spec : Prop :=
  ∀ n, P7827061772394595048.a n = A082997 (n + 1)

theorem P7827061772394595048.correct : P7827061772394595048.Spec := by
  intro n
  simp only [A082997, Nat.add_sub_cancel]

end A082997

/-! ## A082997.P10215785456794853878

`∑[val(A105561(n+1), 3)]`
-/

namespace A082997.P10215785456794853878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P10215785456794853878

namespace A082997

/-- `∑[val(A105561(n+1), 3)]` -/
def P10215785456794853878.Spec : Prop :=
  ∀ n, (P10215785456794853878.a n : ℤ) = A082997 (n + 1)

theorem P10215785456794853878.correct : P10215785456794853878.Spec := by
  intro n
  simp only [A082997, Nat.add_sub_cancel, A082997.P10215785456794853878.f1, A082997.P10215785456794853878.a, A082997.P7827061772394595048.f1, A082997.P7827061772394595048.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A215480, A215480.P17421984776920031326.a, A052955, A052955.P5313474801376957548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082997

/-! ## A082997.P13154793017270053003

`∑[char[A007774(n+1)-1]]`
-/

namespace A082997.P13154793017270053003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P13154793017270053003

namespace A082997

/-- `∑[char[A007774(n+1)-1]]` -/
def P13154793017270053003.Spec : Prop :=
  ∀ n, (P13154793017270053003.a n : ℤ) = A082997 (n + 1)

end A082997

/-! ## A082997.P10349142536062093709

`∑[char[eq[1, A079275(n+1)]]]`
-/

namespace A082997.P10349142536062093709
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P10349142536062093709

namespace A082997

/-- `∑[char[eq[1, A079275(n+1)]]]` -/
def P10349142536062093709.Spec : Prop :=
  ∀ n, (P10349142536062093709.a n : ℤ) = A082997 (n + 1)

end A082997

/-! ## A082997.P16648470861722784282

`∑[char[eq[2, A001221(n+1)]]]`
-/

namespace A082997.P16648470861722784282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P16648470861722784282

namespace A082997

/-- `∑[char[eq[2, A001221(n+1)]]]` -/
def P16648470861722784282.Spec : Prop :=
  ∀ n, (P16648470861722784282.a n : ℤ) = A082997 (n + 1)

end A082997

/-! ## A082997.P6097489014892501809

`∑[char[eq[2, A087624(n+1)]]]`
-/

namespace A082997.P6097489014892501809
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P6097489014892501809

namespace A082997

/-- `∑[char[eq[2, A087624(n+1)]]]` -/
def P6097489014892501809.Spec : Prop :=
  ∀ n, (P6097489014892501809.a n : ℤ) = A082997 (n + 1)

end A082997

/-! ## A082997.P13541476929096534079

`∑[and(2, A007875(n+1))/2]`
-/

namespace A082997.P13541476929096534079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A007875 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P13541476929096534079

namespace A082997

/-- `∑[and(2, A007875(n+1))/2]` -/
def P13541476929096534079.Spec : Prop :=
  ∀ n, P13541476929096534079.a n = (A082997 (n + 1) : ℚ)

end A082997

/-! ## A082997.P12025599102756578837

`∑[A010051(∑{e}[∏{p}[n+1, #], #]!)]`
-/

namespace A082997.P12025599102756578837
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P12025599102756578837

namespace A082997

/-- `∑[A010051(∑{e}[∏{p}[n+1, #], #]!)]` -/
def P12025599102756578837.Spec : Prop :=
  ∀ n, P12025599102756578837.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P12576759808460564685

`∑[C(C(A034444(n+1), 2), 2)%2]`
-/

namespace A082997.P12576759808460564685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A034444 (n + 1)).toNat 2) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P12576759808460564685

namespace A082997

/-- `∑[C(C(A034444(n+1), 2), 2)%2]` -/
def P12576759808460564685.Spec : Prop :=
  ∀ n, (P12576759808460564685.a n : ℤ) = A082997 (n + 1)

end A082997

/-! ## A082997.P11165652953039885233

`∑[A003982(A034444(n+1))]`
-/

namespace A082997.P11165652953039885233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P11165652953039885233

namespace A082997

/-- `∑[A003982(A034444(n+1))]` -/
def P11165652953039885233.Spec : Prop :=
  ∀ n, P11165652953039885233.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P9449907023000278757

`∑[A069513(A333175(n+1))]`
-/

namespace A082997.P9449907023000278757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A333175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P9449907023000278757

namespace A082997

/-- `∑[A069513(A333175(n+1))]` -/
def P9449907023000278757.Spec : Prop :=
  ∀ n, P9449907023000278757.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P4788871987080798431

`∑[A330462(A259936(n+1))]`
-/

namespace A082997.P4788871987080798431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330462 (A259936 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P4788871987080798431

namespace A082997

/-- `∑[A330462(A259936(n+1))]` -/
def P4788871987080798431.Spec : Prop :=
  ∀ n, P4788871987080798431.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P1296641648773266312

`∑[A302048(A333175(n+1)²)]`
-/

namespace A082997.P1296641648773266312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A333175 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P1296641648773266312

namespace A082997

/-- `∑[A302048(A333175(n+1)²)]` -/
def P1296641648773266312.Spec : Prop :=
  ∀ n, P1296641648773266312.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P1786734897229290171

`∑[A302048(A333175(n+1)+2)]`
-/

namespace A082997.P1786734897229290171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A333175 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P1786734897229290171

namespace A082997

/-- `∑[A302048(A333175(n+1)+2)]` -/
def P1786734897229290171.Spec : Prop :=
  ∀ n, P1786734897229290171.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P4739781778446266

`∑[A010052(A034444(n+1)+5)]`
-/

namespace A082997.P4739781778446266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A034444 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P4739781778446266

namespace A082997

/-- `∑[A010052(A034444(n+1)+5)]` -/
def P4739781778446266.Spec : Prop :=
  ∀ n, P4739781778446266.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P7357846834180567831

`∑[A010051(∑{d}[n+1, A010051(#)]!)]`
-/

namespace A082997.P7357846834180567831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.factorial (∑ d ∈ Nat.divisors (f2 n), A010051 d).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P7357846834180567831

namespace A082997

/-- `∑[A010051(∑{d}[n+1, A010051(#)]!)]` -/
def P7357846834180567831.Spec : Prop :=
  ∀ n, P7357846834180567831.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P992515381195124007

`∑[A010051(∑{p}[n+1, A001222(#)]!)]`
-/

namespace A082997.P992515381195124007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), A001222 p).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P992515381195124007

namespace A082997

/-- `∑[A010051(∑{p}[n+1, A001222(#)]!)]` -/
def P992515381195124007.Spec : Prop :=
  ∀ n, P992515381195124007.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P5514977141569135677

`∑[A010051(A001222(∏{p}[n+1, #])!)]`
-/

namespace A082997.P5514977141569135677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.factorial (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P5514977141569135677

namespace A082997

/-- `∑[A010051(A001222(∏{p}[n+1, #])!)]` -/
def P5514977141569135677.Spec : Prop :=
  ∀ n, P5514977141569135677.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P716534333334378312

`∑[A010051(∑{e}[n+1, A328672(#)]!)]`
-/

namespace A082997.P716534333334378312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), A328672 (Nat.factorization (f2 n) p)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P716534333334378312

namespace A082997

/-- `∑[A010051(∑{e}[n+1, A328672(#)]!)]` -/
def P716534333334378312.Spec : Prop :=
  ∀ n, P716534333334378312.a n = A082997 (n + 1)

end A082997

/-! ## A082997.P4735860425726967989

`∑[A010051(A181819(A028234(n+1)))]`
-/

namespace A082997.P4735860425726967989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A181819 (A028234 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P4735860425726967989

namespace A082997

/-- `∑[A010051(A181819(A028234(n+1)))]` -/
def P4735860425726967989.Spec : Prop :=
  ∀ n, P4735860425726967989.a n = A082997 (n + 1)

end A082997

/-!
# A082998: a(n) = card{ x <= n : omega(x) = 3 }.

The programs for A082998, the canonical program `A082998.P15516512680143588984` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082998 has offset 1).

The definition of A082998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082998.P14962541068197072915

`∑[val(A083399(n+1), 4)]`
-/

namespace A082998.P14962541068197072915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083399 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P14962541068197072915

namespace A082998

/-- `∑[val(A083399(n+1), 4)]` -/
def P14962541068197072915.Spec : Prop :=
  ∀ n, (P14962541068197072915.a n : ℤ) = A082998 (n + 1)

end A082998

/-! ## A082998.P13205405695337046216

`∑[val(A105561(n+1), 5)]`
-/

namespace A082998.P13205405695337046216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P13205405695337046216

namespace A082998

/-- `∑[val(A105561(n+1), 5)]` -/
def P13205405695337046216.Spec : Prop :=
  ∀ n, (P13205405695337046216.a n : ℤ) = A082998 (n + 1)

end A082998

/-! ## A082998.P3763297877775116148

`∑[char[A033992(n+1)-1]]`
-/

namespace A082998.P3763297877775116148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P3763297877775116148

namespace A082998

/-- `∑[char[A033992(n+1)-1]]` -/
def P3763297877775116148.Spec : Prop :=
  ∀ n, (P3763297877775116148.a n : ℤ) = A082998 (n + 1)

end A082998

/-! ## A082998.P9048591526714413955

`∑[char[eq[3, A001221(n+1)]]]`
-/

namespace A082998.P9048591526714413955
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P9048591526714413955

namespace A082998

/-- `∑[char[eq[3, A001221(n+1)]]]` -/
def P9048591526714413955.Spec : Prop :=
  ∀ n, (P9048591526714413955.a n : ℤ) = A082998 (n + 1)

end A082998

/-! ## A082998.P15516512680143588984

`∑[A038189(∑{e}[∏{p}[n+1, #], #])]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082998

/-- `∑[A038189(∑{e}[∏{p}[n+1, #], #])]` -/
def P15516512680143588984.Spec : Prop :=
  ∀ n, P15516512680143588984.a n = A082998 (n + 1)

theorem P15516512680143588984.correct : P15516512680143588984.Spec := by
  intro n
  simp only [A082998, Nat.add_sub_cancel]

end A082998

/-! ## A082998.P18230926444859486998

`∑[val(A001222(∏{p}[n+1, #])+1, 4)]`
-/

namespace A082998.P18230926444859486998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P18230926444859486998

namespace A082998

/-- `∑[val(A001222(∏{p}[n+1, #])+1, 4)]` -/
def P18230926444859486998.Spec : Prop :=
  ∀ n, (P18230926444859486998.a n : ℤ) = A082998 (n + 1)

end A082998

/-! ## A082998.P1583224943552236347

`∑[∏{e}[∑{p}[n+1, A001222(#)]+1, #]-1]`
-/

namespace A082998.P1583224943552236347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A001222 p + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P1583224943552236347

namespace A082998

/-- `∑[∏{e}[∑{p}[n+1, A001222(#)]+1, #]-1]` -/
def P1583224943552236347.Spec : Prop :=
  ∀ n, P1583224943552236347.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P13759529215782328842

`∑[A010052(A034444(n+1)+1)]`
-/

namespace A082998.P13759529215782328842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A034444 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P13759529215782328842

namespace A082998

/-- `∑[A010052(A034444(n+1)+1)]` -/
def P13759529215782328842.Spec : Prop :=
  ∀ n, P13759529215782328842.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P1137887354157746874

`∑[A325334(∑{p}[n+1, A001222(#)])]`
-/

namespace A082998.P1137887354157746874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (∑ p ∈ Nat.primeFactors (f2 n), A001222 p).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P1137887354157746874

namespace A082998

/-- `∑[A325334(∑{p}[n+1, A001222(#)])]` -/
def P1137887354157746874.Spec : Prop :=
  ∀ n, P1137887354157746874.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P13722515626950099674

`∑[A038189(A001222(∏{p}[n+1, #]))]`
-/

namespace A082998.P13722515626950099674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P13722515626950099674

namespace A082998

/-- `∑[A038189(A001222(∏{p}[n+1, #]))]` -/
def P13722515626950099674.Spec : Prop :=
  ∀ n, P13722515626950099674.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P9958799891994088976

`∑[A064547(A259936(n+1)+1)-1]`
-/

namespace A082998.P9958799891994088976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A259936 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P9958799891994088976

namespace A082998

/-- `∑[A064547(A259936(n+1)+1)-1]` -/
def P9958799891994088976.Spec : Prop :=
  ∀ n, P9958799891994088976.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P17009401774407527556

`∑[A316789(∑{p}[n+1, A001222(#)]+1)-1]`
-/

namespace A082998.P17009401774407527556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (∑ p ∈ Nat.primeFactors (f2 n), A001222 p + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P17009401774407527556

namespace A082998

/-- `∑[A316789(∑{p}[n+1, A001222(#)]+1)-1]` -/
def P17009401774407527556.Spec : Prop :=
  ∀ n, P17009401774407527556.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P18251458041930770867

`∑[A046660(A001222(n+1)-A046660(n+1)+1)]`
-/

namespace A082998.P18251458041930770867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A001222 (n + 1) - A046660 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P18251458041930770867

namespace A082998

/-- `∑[A046660(A001222(n+1)-A046660(n+1)+1)]` -/
def P18251458041930770867.Spec : Prop :=
  ∀ n, P18251458041930770867.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P17220465061770565096

`∑[char[eq[3, A087624(n+1)]]]`
-/

namespace A082998.P17220465061770565096
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P17220465061770565096

namespace A082998

/-- `∑[char[eq[3, A087624(n+1)]]]` -/
def P17220465061770565096.Spec : Prop :=
  ∀ n, (P17220465061770565096.a n : ℤ) = A082998 (n + 1)

end A082998

/-! ## A082998.P7091433024540674782

`A356068(n+1)%A300270(n+1)`
-/

namespace A082998.P7091433024540674782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356068 (n + 1)) (A300270 (n + 1))

end

end A082998.P7091433024540674782

namespace A082998

/-- `A356068(n+1)%A300270(n+1)` -/
def P7091433024540674782.Spec : Prop :=
  ∀ n, P7091433024540674782.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P16200300678916105886

`∑[A252459(A108951(A046523(n+1)))]`
-/

namespace A082998.P16200300678916105886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A108951 (A046523 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P16200300678916105886

namespace A082998

/-- `∑[A252459(A108951(A046523(n+1)))]` -/
def P16200300678916105886.Spec : Prop :=
  ∀ n, P16200300678916105886.a n = A082998 (n + 1)

end A082998

/-! ## A082998.P8756463616530800574

`∑[A025426(A071364((n+1)²))]`
-/

namespace A082998.P8756463616530800574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A071364 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082998.P8756463616530800574

namespace A082998

/-- `∑[A025426(A071364((n+1)²))]` -/
def P8756463616530800574.Spec : Prop :=
  ∀ n, P8756463616530800574.a n = A082998 (n + 1)

end A082998

/-!
# A082999: a(n) = A046195(n) mod 5.

The programs for A082999, there is no canonical definition to state claims against.
-/

/-! ## A082999.P10755546008401081657

`A046195(n+1)%5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082999.P10755546008401081657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046195 (n + 1)) 5

end

end A082999.P10755546008401081657

