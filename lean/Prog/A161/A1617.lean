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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A161700: a(n) is the sum of the elements on the antidiagonal of the difference table of the divisors of n.

The programs for A161700, there is no canonical definition to state claims against.
-/

/-! ## A161700.P6393758383616135654

`A273262(∑[∏{e}[n+1, #+1]])`
-/

namespace A161700.P6393758383616135654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161700.P6393758383616135654

/-! ## A161700.P1827573524212797757

`A273262(∑[∑{d}[n+1, gcd(n, #)]])`
-/

namespace A161700.P1827573524212797757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161700.P1827573524212797757

/-! ## A161700.P9554056467593159328

`A273262(∑[∑{d}[n+1, ceil(acot(#))]])`
-/

namespace A161700.P9554056467593159328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161700.P9554056467593159328

/-! ## A161700.P1677698055571637824

`A273262(∑[∑{d}[n+1, ceil(1/#)]])`
-/

namespace A161700.P1677698055571637824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161700.P1677698055571637824

/-! ## A161700.P8804256110129969447

`A273262(∑[∑{d}[n+1, lcm(#, n+1)]/(n+1)])`
-/

namespace A161700.P8804256110129969447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273262 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A161700.P8804256110129969447

/-!
# A161701: a(n) = (n^5 - 5*n^4 + 5*n^3 + 5*n^2 + 114*n + 120)/120.

The programs for A161701, the canonical program `A161701.P470122546113441569` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161701 has offset 0).

The definition of A161701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161701.P470122546113441569

`(n^5-5*n^4+5*n^3+5*n²+114*n+120)/120`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161701

/-- `(n^5-5*n^4+5*n^3+5*n²+114*n+120)/120` -/
def P470122546113441569.Spec : Prop :=
  ∀ n, P470122546113441569.a n = (A161701 n : ℚ)

end A161701

/-! ## A161701.P12284985202386141121

`∑[C(n, 4)+1]`
-/

namespace A161701.P12284985202386141121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P12284985202386141121

namespace A161701

/-- `∑[C(n, 4)+1]` -/
def P12284985202386141121.Spec : Prop :=
  ∀ n, (P12284985202386141121.a n : ℤ) = A161701 n

end A161701

/-! ## A161701.P6099894981914730520

`C(n+1, 5)+1+n`
-/

namespace A161701.P6099894981914730520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 5 + 1 + n

end

end A161701.P6099894981914730520

namespace A161701

/-- `C(n+1, 5)+1+n` -/
def P6099894981914730520.Spec : Prop :=
  ∀ n, (P6099894981914730520.a n : ℤ) = A161701 n

end A161701

/-! ## A161701.P2428050549504630565

`2*n-(n-1-∑[C(n, 4)])`
-/

namespace A161701.P2428050549504630565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A161701.P2428050549504630565

namespace A161701

/-- `2*n-(n-1-∑[C(n, 4)])` -/
def P2428050549504630565.Spec : Prop :=
  ∀ n, P2428050549504630565.a n = A161701 n

end A161701

/-! ## A161701.P10911876592269414077

`∑[∑[a(n-2)+(3-n)²]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A161701.P10911876592269414077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 2) + (3 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P10911876592269414077

namespace A161701

/-- `∑[∑[a(n-2)+(3-n)²]]` -/
def P10911876592269414077.Spec : Prop :=
  ∀ n, P10911876592269414077.a n = A161701 n

end A161701

/-! ## A161701.P2673424045222028693

`∑[A000332(n)+1]`
-/

namespace A161701.P2673424045222028693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P2673424045222028693

namespace A161701

/-- `∑[A000332(n)+1]` -/
def P2673424045222028693.Spec : Prop :=
  ∀ n, P2673424045222028693.a n = A161701 n

end A161701

/-! ## A161701.P14029118295556026870

`∑[A034827(n)/2+1]`
-/

namespace A161701.P14029118295556026870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034827 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P14029118295556026870

namespace A161701

/-- `∑[A034827(n)/2+1]` -/
def P14029118295556026870.Spec : Prop :=
  ∀ n, P14029118295556026870.a n = (A161701 n : ℚ)

end A161701

/-! ## A161701.P11999778483857570967

`∑[A052762(n)/24+1]`
-/

namespace A161701.P11999778483857570967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P11999778483857570967

namespace A161701

/-- `∑[A052762(n)/24+1]` -/
def P11999778483857570967.Spec : Prop :=
  ∀ n, P11999778483857570967.a n = (A161701 n : ℚ)

end A161701

/-! ## A161701.P9628569896987625293

`∑[A014626(n)+1-n]`
-/

namespace A161701.P9628569896987625293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P9628569896987625293

namespace A161701

/-- `∑[A014626(n)+1-n]` -/
def P9628569896987625293.Spec : Prop :=
  ∀ n, P9628569896987625293.a n = A161701 n

end A161701

/-! ## A161701.P13916712469077648497

`∑[∑[abs(1-A050407(n))]]`
-/

namespace A161701.P13916712469077648497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A050407 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P13916712469077648497

namespace A161701

/-- `∑[∑[abs(1-A050407(n))]]` -/
def P13916712469077648497.Spec : Prop :=
  ∀ n, P13916712469077648497.a n = A161701 n

end A161701

/-! ## A161701.P8056000125702185009

`A145127(n)-A002817(n)`
-/

namespace A161701.P8056000125702185009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n - A002817 n

end

end A161701.P8056000125702185009

namespace A161701

/-- `A145127(n)-A002817(n)` -/
def P8056000125702185009.Spec : Prop :=
  ∀ n, P8056000125702185009.a n = A161701 n

end A161701

/-! ## A161701.P1087469290448782044

`A154322(n)-A002415(n)`
-/

namespace A161701.P1087469290448782044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154322 n - A002415 n

end

end A161701.P1087469290448782044

namespace A161701

/-- `A154322(n)-A002415(n)` -/
def P1087469290448782044.Spec : Prop :=
  ∀ n, P1087469290448782044.a n = A161701 n

end A161701

/-! ## A161701.P8624832944830995755

`A051745(n+1)-A132366(n)`
-/

namespace A161701.P8624832944830995755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) - A132366 n

end

end A161701.P8624832944830995755

namespace A161701

/-- `A051745(n+1)-A132366(n)` -/
def P8624832944830995755.Spec : Prop :=
  ∀ n, P8624832944830995755.a n = A161701 n

end A161701

/-! ## A161701.P12272816218099858365

`A027928(n+3)-A006007(n)`
-/

namespace A161701.P12272816218099858365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3) - A006007 n

end

end A161701.P12272816218099858365

namespace A161701

/-- `A027928(n+3)-A006007(n)` -/
def P12272816218099858365.Spec : Prop :=
  ∀ n, P12272816218099858365.a n = A161701 n

end A161701

/-! ## A161701.P16944656009621190063

`A006261(n)+n-A004006(n)`
-/

namespace A161701.P16944656009621190063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n + ((n : ℤ) - A004006 n)

end

end A161701.P16944656009621190063

namespace A161701

/-- `A006261(n)+n-A004006(n)` -/
def P16944656009621190063.Spec : Prop :=
  ∀ n, P16944656009621190063.a n = A161701 n

end A161701

/-! ## A161701.P12061224563604250516

`∑[A000127(n+1)-A004006(n)]`
-/

namespace A161701.P12061224563604250516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P12061224563604250516

namespace A161701

/-- `∑[A000127(n+1)-A004006(n)]` -/
def P12061224563604250516.Spec : Prop :=
  ∀ n, P12061224563604250516.a n = A161701 n

end A161701

/-! ## A161701.P16742317557876425724

`∑[A000332(n)]-(n-A005408(n))`
-/

namespace A161701.P16742317557876425724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - A005408 n)

end

end A161701.P16742317557876425724

namespace A161701

/-- `∑[A000332(n)]-(n-A005408(n))` -/
def P16742317557876425724.Spec : Prop :=
  ∀ n, P16742317557876425724.a n = A161701 n

end A161701

/-! ## A161701.P12842766189832275513

`∑[A055795(n+1)+1-A004006(n)]`
-/

namespace A161701.P12842766189832275513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + (1 - A004006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P12842766189832275513

namespace A161701

/-- `∑[A055795(n+1)+1-A004006(n)]` -/
def P12842766189832275513.Spec : Prop :=
  ∀ n, P12842766189832275513.a n = A161701 n

end A161701

/-! ## A161701.P10814849390361186627

`∑[Δ[A000389(n)]+1]`
-/

namespace A161701.P10814849390361186627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161701.P10814849390361186627

namespace A161701

/-- `∑[Δ[A000389(n)]+1]` -/
def P10814849390361186627.Spec : Prop :=
  ∀ n, P10814849390361186627.a n = A161701 n

end A161701

/-! ## A161701.P10433947447296528618

`A000389(n+1)+1+n`
-/

namespace A161701.P10433947447296528618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) + 1 + (n : ℤ)

end

end A161701.P10433947447296528618

namespace A161701

/-- `A000389(n+1)+1+n` -/
def P10433947447296528618.Spec : Prop :=
  ∀ n, P10433947447296528618.a n = A161701 n

end A161701

/-!
# A161702: a(n) = (-n^3 + 9n^2 - 5n + 3)/3.

The programs for A161702, the canonical program `A161702.P8348045834509518963` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161702 has offset 0).

The definition of A161702 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-n^3+9*n²-5*n+3)/3` (program `A161702.P503173155373083383`, by `A161702.P503173155373083383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161702.P503173155373083383

`(-n^3+9*n²-5*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161702.P503173155373083383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n ^ 3 : ℤ) + (9 * n ^ 2 : ℤ) - (5 * n : ℤ) + 3 : ℚ) / 3

end

end A161702.P503173155373083383

namespace A161702

/-- `(-n^3+9*n²-5*n+3)/3` -/
def P503173155373083383.Spec : Prop :=
  ∀ n, P503173155373083383.a n = (A161702 n : ℚ)

theorem P503173155373083383.correct : P503173155373083383.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A161702, Nat.add_sub_cancel, A161702.P503173155373083383.a, A161702.P8348045834509518963.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A161702, Nat.add_sub_cancel, A161702.P503173155373083383.a, A161702.P8348045834509518963.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A161702

/-! ## A161702.P8348045834509518963

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161702

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8348045834509518963.Spec : Prop :=
  ∀ n, P8348045834509518963.a n = A161702 n

theorem P8348045834509518963.correct : P8348045834509518963.Spec := by
  intro n
  simp only [A161702]

end A161702

/-! ## A161702.P9289635362703504354

`∑[∑[a(n-1)-2]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A161702.P9289635362703504354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161702.P9289635362703504354

namespace A161702

/-- `∑[∑[a(n-1)-2]]` -/
def P9289635362703504354.Spec : Prop :=
  ∀ n, P9289635362703504354.a n = A161702 n

end A161702

/-! ## A161702.P2813485601076024552

`2*(a(n-1)+4-n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A161702.P2813485601076024552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + (4 - (n : ℤ))) - a (n - 2)

end

end A161702.P2813485601076024552

namespace A161702

/-- `2*(a(n-1)+4-n)-a(n-2)` -/
def P2813485601076024552.Spec : Prop :=
  ∀ n, P2813485601076024552.a n = A161702 n

end A161702

/-! ## A161702.P10607231227567046077

`2*(4-(n-a(n-1)))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A161702.P10607231227567046077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (4 - ((n : ℤ) - a (n - 1))) - a (n - 2)

end

end A161702.P10607231227567046077

namespace A161702

/-- `2*(4-(n-a(n-1)))-a(n-2)` -/
def P10607231227567046077.Spec : Prop :=
  ∀ n, P10607231227567046077.a n = A161702 n

end A161702

/-! ## A161702.P3441856383852348904

`A140065(n+1)-∑[n²]`
-/

namespace A161702.P3441856383852348904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140065 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161702.P3441856383852348904

namespace A161702

/-- `A140065(n+1)-∑[n²]` -/
def P3441856383852348904.Spec : Prop :=
  ∀ n, P3441856383852348904.a n = A161702 n

end A161702

/-! ## A161702.P9035454016281225436

`∑[xor(1, -((A004273(n)-n)*(n-6)))]`
-/

namespace A161702.P9035454016281225436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-((A004273 n - (n : ℤ)) * ((n : ℤ) - 6)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161702.P9035454016281225436

namespace A161702

/-- `∑[xor(1, -((A004273(n)-n)*(n-6)))]` -/
def P9035454016281225436.Spec : Prop :=
  ∀ n, P9035454016281225436.a n = A161702 n

end A161702

/-! ## A161702.P5391778631913724854

`A056106(n)-A006527(n)`
-/

namespace A161702.P5391778631913724854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - A006527 n

end

end A161702.P5391778631913724854

namespace A161702

/-- `A056106(n)-A006527(n)` -/
def P5391778631913724854.Spec : Prop :=
  ∀ n, P5391778631913724854.a n = A161702 n

end A161702

/-! ## A161702.P3928933144753418612

`A056107(n)-A033547(n)`
-/

namespace A161702.P3928933144753418612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n - A033547 n

end

end A161702.P3928933144753418612

namespace A161702

/-- `A056107(n)-A033547(n)` -/
def P3928933144753418612.Spec : Prop :=
  ∀ n, P3928933144753418612.a n = A161702 n

end A161702

/-! ## A161702.P10164506160945622817

`A084849(n)-A046127(n)`
-/

namespace A161702.P10164506160945622817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n - A046127 n

end

end A161702.P10164506160945622817

namespace A161702

/-- `A084849(n)-A046127(n)` -/
def P10164506160945622817.Spec : Prop :=
  ∀ n, P10164506160945622817.a n = A161702 n

end A161702

/-! ## A161702.P10459875272263381381

`A130883(n)-A007290(n)`
-/

namespace A161702.P10459875272263381381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n - A007290 n

end

end A161702.P10459875272263381381

namespace A161702

/-- `A130883(n)-A007290(n)` -/
def P10459875272263381381.Spec : Prop :=
  ∀ n, P10459875272263381381.a n = A161702 n

end A161702

/-! ## A161702.P17013137713233015473

`A033991(n)-A108766(n)`
-/

namespace A161702.P17013137713233015473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n - A108766 n

end

end A161702.P17013137713233015473

namespace A161702

/-- `A033991(n)-A108766(n)` -/
def P17013137713233015473.Spec : Prop :=
  ∀ n, P17013137713233015473.a n = A161702 n

end A161702

/-! ## A161702.P6598509788215521595

`A080855(n)-A101986(n)`
-/

namespace A161702.P6598509788215521595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - A101986 n

end

end A161702.P6598509788215521595

namespace A161702

/-- `A080855(n)-A101986(n)` -/
def P6598509788215521595.Spec : Prop :=
  ∀ n, P6598509788215521595.a n = A161702 n

end A161702

/-! ## A161702.P15805268083759836583

`A053755(n)-A145069(n)`
-/

namespace A161702.P15805268083759836583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n - A145069 n

end

end A161702.P15805268083759836583

namespace A161702

/-- `A053755(n)-A145069(n)` -/
def P15805268083759836583.Spec : Prop :=
  ∀ n, P15805268083759836583.a n = A161702 n

end A161702

/-! ## A161702.P16898755610972392257

`A168547(n)-A226450(n)`
-/

namespace A161702.P16898755610972392257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n - A226450 n

end

end A161702.P16898755610972392257

namespace A161702

/-- `A168547(n)-A226450(n)` -/
def P16898755610972392257.Spec : Prop :=
  ∀ n, P16898755610972392257.a n = A161702 n

end A161702

/-! ## A161702.P8741200105197942491

`A389608(n)-A051925(n)`
-/

namespace A161702.P8741200105197942491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n - A051925 n

end

end A161702.P8741200105197942491

namespace A161702

/-- `A389608(n)-A051925(n)` -/
def P8741200105197942491.Spec : Prop :=
  ∀ n, P8741200105197942491.a n = A161702 n

end A161702

/-! ## A161702.P329516020376167772

`A270109(n)-A321124(n)`
-/

namespace A161702.P329516020376167772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 n - A321124 n

end

end A161702.P329516020376167772

namespace A161702

/-- `A270109(n)-A321124(n)` -/
def P329516020376167772.Spec : Prop :=
  ∀ n, P329516020376167772.a n = A161702 n

end A161702

/-! ## A161702.P8589057977487703316

`A326725(n)+A179297(n+1)`
-/

namespace A161702.P8589057977487703316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A179297 (n + 1)

end

end A161702.P8589057977487703316

namespace A161702

/-- `A326725(n)+A179297(n+1)` -/
def P8589057977487703316.Spec : Prop :=
  ∀ n, P8589057977487703316.a n = A161702 n

end A161702

/-! ## A161702.P9946991344658458378

`A054554(n+1)-A084990(n)`
-/

namespace A161702.P9946991344658458378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1) - A084990 n

end

end A161702.P9946991344658458378

namespace A161702

/-- `A054554(n+1)-A084990(n)` -/
def P9946991344658458378.Spec : Prop :=
  ∀ n, P9946991344658458378.a n = A161702 n

end A161702

/-! ## A161702.P3864315835021300536

`A006137(n)-A168559(n+1)`
-/

namespace A161702.P3864315835021300536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n - A168559 (n + 1)

end

end A161702.P3864315835021300536

namespace A161702

/-- `A006137(n)-A168559(n+1)` -/
def P3864315835021300536.Spec : Prop :=
  ∀ n, P3864315835021300536.a n = A161702 n

end A161702

/-!
# A161703: a(n) = (4*n^3 - 12*n^2 + 14*n + 3)/3.

The programs for A161703, the canonical program `A161703.P1461576418262447017` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161703 has offset 0).

The definition of A161703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161703.P1461576418262447017

`n*(4*n²-12*n+14)/3+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161703

/-- `n*(4*n²-12*n+14)/3+1` -/
def P1461576418262447017.Spec : Prop :=
  ∀ n, P1461576418262447017.a n = (A161703 n : ℚ)

end A161703

/-! ## A161703.P5034918823367138199

`(4*n^3-12*n²+14*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161703.P5034918823367138199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 : ℤ) - (12 * n ^ 2 : ℤ) + (14 * n : ℤ) + 3 : ℚ) / 3

end

end A161703.P5034918823367138199

namespace A161703

/-- `(4*n^3-12*n²+14*n+3)/3` -/
def P5034918823367138199.Spec : Prop :=
  ∀ n, P5034918823367138199.a n = (A161703 n : ℚ)

end A161703

/-! ## A161703.P5916608222386532358

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A161703.P5916608222386532358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161703.P5916608222386532358

namespace A161703

/-- `∑[∑[a(n-1)+8]]` -/
def P5916608222386532358.Spec : Prop :=
  ∀ n, (P5916608222386532358.a n : ℤ) = A161703 n

end A161703

/-! ## A161703.P4391596482034671176

`or(1, a(n-1)+(2*n-3)²)` with `a(0)=1`
-/

namespace A161703.P4391596482034671176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (a (n - 1) + ((2 * n : ℤ) - 3) ^ 2)

end

end A161703.P4391596482034671176

namespace A161703

/-- `or(1, a(n-1)+(2*n-3)²)` -/
def P4391596482034671176.Spec : Prop :=
  ∀ n, P4391596482034671176.a n = A161703 n

end A161703

/-! ## A161703.P8790207767236030763

`∑[(3%A035337(n)-2*n)²+1]`
-/

namespace A161703.P8790207767236030763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod 3 (A035337 n) - (2 * n : ℤ)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161703.P8790207767236030763

namespace A161703

/-- `∑[(3%A035337(n)-2*n)²+1]` -/
def P8790207767236030763.Spec : Prop :=
  ∀ n, P8790207767236030763.a n = A161703 n

end A161703

/-! ## A161703.P15389763691228360319

`∑[∑[A181390(A028310(n))]]`
-/

namespace A161703.P15389763691228360319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161703.P15389763691228360319

namespace A161703

/-- `∑[∑[A181390(A028310(n))]]` -/
def P15389763691228360319.Spec : Prop :=
  ∀ n, P15389763691228360319.a n = A161703 n

end A161703

/-!
# A161704: a(n) = (3*n^5 - 35*n^4 + 145*n^3 - 235*n^2 + 152*n + 30)/30.

The programs for A161704, the canonical program `A161704.P11882685800953127509` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161704 has offset 0).

The definition of A161704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161704.P11882685800953127509

`n*(3*n^4-35*n^3+145*n²-235*n+152)/30+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161704

/-- `n*(3*n^4-35*n^3+145*n²-235*n+152)/30+1` -/
def P11882685800953127509.Spec : Prop :=
  ∀ n, P11882685800953127509.a n = (A161704 n : ℚ)

end A161704

/-! ## A161704.P6978379818699083152

`(3*n^5-35*n^4+145*n^3-235*n²+152*n+30)/30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161704.P6978379818699083152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 5 : ℤ) - (35 * n ^ 4 : ℤ) + (145 * n ^ 3 : ℤ) - (235 * n ^ 2 : ℤ) + (152 * n : ℤ) + 30 : ℚ) / 30

end

end A161704.P6978379818699083152

namespace A161704

/-- `(3*n^5-35*n^4+145*n^3-235*n²+152*n+30)/30` -/
def P6978379818699083152.Spec : Prop :=
  ∀ n, P6978379818699083152.a n = (A161704 n : ℚ)

end A161704

/-!
# A161705: a(n) = 18*n + 1.

The programs for A161705, the canonical program `A161705.P9285490780148837046` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161705 has offset 0).

The definition of A161705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n+1` (program `A161705.P9285490780148837046`, by `A161705.P9285490780148837046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161705.P9285490780148837046

`18*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161705

/-- `18*n+1` -/
def P9285490780148837046.Spec : Prop :=
  ∀ n, (P9285490780148837046.a n : ℤ) = A161705 n

theorem P9285490780148837046.correct : P9285490780148837046.Spec := by
  intro n
  simp only [A161705]

end A161705

/-!
# A161707: a(n) = (4*n^3 - 9*n^2 + 11*n + 3)/3.

The programs for A161707, the canonical program `A161707.P15377273100765610751` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161707 has offset 0).

The definition of A161707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161707.P15377273100765610751

`(4*n^3-9*n²+11*n)/3+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161707

/-- `(4*n^3-9*n²+11*n)/3+1` -/
def P15377273100765610751.Spec : Prop :=
  ∀ n, P15377273100765610751.a n = (A161707 n : ℚ)

end A161707

/-! ## A161707.P2116715533525767227

`(4*n^3-9*n²+11*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161707.P2116715533525767227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 : ℤ) - (9 * n ^ 2 : ℤ) + (11 * n : ℤ) + 3 : ℚ) / 3

end

end A161707.P2116715533525767227

namespace A161707

/-- `(4*n^3-9*n²+11*n+3)/3` -/
def P2116715533525767227.Spec : Prop :=
  ∀ n, P2116715533525767227.a n = (A161707 n : ℚ)

end A161707

/-! ## A161707.P3644255395748511579

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A161707.P3644255395748511579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161707.P3644255395748511579

namespace A161707

/-- `∑[∑[a(n-1)+8]]` -/
def P3644255395748511579.Spec : Prop :=
  ∀ n, (P3644255395748511579.a n : ℤ) = A161707 n

end A161707

/-! ## A161707.P1988541725755038899

`∑[∑[ogf((1-x+x^2+7x^3)/(1-2x+x^2))]]`
-/

namespace A161707.P1988541725755038899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 7] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161707.P1988541725755038899

namespace A161707

/-- `∑[∑[ogf((1-x+x^2+7x^3)/(1-2x+x^2))]]` -/
def P1988541725755038899.Spec : Prop :=
  ∀ n, P1988541725755038899.a n = A161707 n

end A161707

/-! ## A161707.P14434039302756341981

`∑[record[lcm(4, n²+4)/4-3*n]]`
-/

namespace A161707.P14434039302756341981
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n ^ 2 + 4) : ℚ) / 4 - (3 * n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161707.P14434039302756341981

namespace A161707

/-- `∑[record[lcm(4, n²+4)/4-3*n]]` -/
def P14434039302756341981.Spec : Prop :=
  ∀ n, P14434039302756341981.a n = (A161707 n : ℚ)

end A161707

/-! ## A161707.P12837156511962718280

`∑[A386480(A004275(n))]`
-/

namespace A161707.P12837156511962718280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161707.P12837156511962718280

namespace A161707

/-- `∑[A386480(A004275(n))]` -/
def P12837156511962718280.Spec : Prop :=
  ∀ n, P12837156511962718280.a n = A161707 n

end A161707

/-!
# A161708: a(n) = -n^3 + 7*n^2 - 5*n + 1.

The programs for A161708, the canonical program `A161708.P13967928413225111720` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161708 has offset 0).

The definition of A161708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-n^3+7*n²-5*n+1` (program `A161708.P13967928413225111720`, by `A161708.P13967928413225111720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161708.P13967928413225111720

`-n^3+7*n²-5*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161708

/-- `-n^3+7*n²-5*n+1` -/
def P13967928413225111720.Spec : Prop :=
  ∀ n, P13967928413225111720.a n = A161708 n

theorem P13967928413225111720.correct : P13967928413225111720.Spec := by
  intro n
  simp only [A161708]

end A161708

/-! ## A161708.P4575165528910913429

`∑[∑[a(n-1)-6]]` with `a(0)=1, a(1)=0, a(2)=8`
-/

namespace A161708.P4575165528910913429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 8] fun n f2 =>
  f2 (n - 1) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161708.P4575165528910913429

namespace A161708

/-- `∑[∑[a(n-1)-6]]` -/
def P4575165528910913429.Spec : Prop :=
  ∀ n, P4575165528910913429.a n = A161708 n

end A161708

/-! ## A161708.P9759665523441296363

`-xor(A054552(n)-A007531(n)-1, -1)`
-/

namespace A161708.P9759665523441296363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A054552 n - A007531 n - 1) (-1)

end

end A161708.P9759665523441296363

namespace A161708

/-- `-xor(A054552(n)-A007531(n)-1, -1)` -/
def P9759665523441296363.Spec : Prop :=
  ∀ n, P9759665523441296363.a n = A161708 n

end A161708

/-! ## A161708.P14453756202729239211

`(A054552(n)-A007531(n))^(A000038(n)+1)`
-/

namespace A161708.P14453756202729239211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054552 n - A007531 n : ℚ) ^ (A000038 n + 1 : ℤ)

end

end A161708.P14453756202729239211

namespace A161708

/-- `(A054552(n)-A007531(n))^(A000038(n)+1)` -/
def P14453756202729239211.Spec : Prop :=
  ∀ n, P14453756202729239211.a n = (A161708 n : ℚ)

end A161708

/-! ## A161708.P7422792244135015957

`(A054552(n)-A007531(n))^gcd(2, A000040(n+1))`
-/

namespace A161708.P7422792244135015957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054552 n - A007531 n) ^ Int.gcd 2 (A000040 (n + 1))

end

end A161708.P7422792244135015957

namespace A161708

/-- `(A054552(n)-A007531(n))^gcd(2, A000040(n+1))` -/
def P7422792244135015957.Spec : Prop :=
  ∀ n, P7422792244135015957.a n = A161708 n

end A161708

/-! ## A161708.P2024993428631964604

`(A054552(n)-A007531(n))%A000911(n)`
-/

namespace A161708.P2024993428631964604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054552 n - A007531 n) (A000911 n)

end

end A161708.P2024993428631964604

namespace A161708

/-- `(A054552(n)-A007531(n))%A000911(n)` -/
def P2024993428631964604.Spec : Prop :=
  ∀ n, P2024993428631964604.a n = A161708 n

end A161708

/-!
# A161709: a(n) = 22*n + 1.

The programs for A161709, the canonical program `A161709.P7473715427958799161` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161709 has offset 0).

The definition of A161709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*n+1` (program `A161709.P7473715427958799161`, by `A161709.P7473715427958799161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161709.P2730344542690337750

`1+22*n`
-/

namespace A161709.P2730344542690337750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 22 * n

end

end A161709.P2730344542690337750

namespace A161709

/-- `1+22*n` -/
def P2730344542690337750.Spec : Prop :=
  ∀ n, (P2730344542690337750.a n : ℤ) = A161709 n

theorem P2730344542690337750.correct : P2730344542690337750.Spec := by
  intro n
  simp only [A161709, Nat.add_sub_cancel, A161709.P2730344542690337750.a, A161709.P7473715427958799161.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A161709

/-! ## A161709.P7473715427958799161

`22*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161709

/-- `22*n+1` -/
def P7473715427958799161.Spec : Prop :=
  ∀ n, (P7473715427958799161.a n : ℤ) = A161709 n

theorem P7473715427958799161.correct : P7473715427958799161.Spec := by
  intro n
  simp only [A161709]

end A161709

/-!
# A161710: a(n) = (-6*n^7 + 154*n^6 - 1533*n^5 + 7525*n^4 - 18879*n^3 + 22561*n^2 - 7302*n + 2520)/2520.

The programs for A161710, there is no canonical definition to state claims against.
-/

/-! ## A161710.P2701505005042369367

`∑[A178819(A322138(n)+1)]`
-/

namespace A161710.P2701505005042369367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178819 (A322138 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161710.P2701505005042369367

/-! ## A161710.P3826685481334810224

`eq[A051712(n+1), A133721(n+1)]`
-/

namespace A161710.P3826685481334810224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133721 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161710.P3826685481334810224

/-! ## A161710.P3803047500768923902

`eq[A111248(n+1), A334085(n+1)]`
-/

namespace A161710.P3803047500768923902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161710.P3803047500768923902

/-! ## A161710.P4421591441946536110

`eq[A111248(n+1), A382486(n+1)]`
-/

namespace A161710.P4421591441946536110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161710.P4421591441946536110

/-!
# A161711: a(n) = (-4*n^3 + 27*n^2 - 20*n + 3)/3.

The programs for A161711, the canonical program `A161711.P4820622981922326299` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161711 has offset 0).

The definition of A161711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161711.P4820622981922326299

`(-4*n^3+27*n²-20*n+3)/3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161711

/-- `(-4*n^3+27*n²-20*n+3)/3` -/
def P4820622981922326299.Spec : Prop :=
  ∀ n, P4820622981922326299.a n = (A161711 n : ℚ)

end A161711

/-! ## A161711.P2636495740131397437

`∑[∑[a(n-1)-8]]` with `a(0)=1, a(1)=0, a(2)=10`
-/

namespace A161711.P2636495740131397437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 10] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161711.P2636495740131397437

namespace A161711

/-- `∑[∑[a(n-1)-8]]` -/
def P2636495740131397437.Spec : Prop :=
  ∀ n, P2636495740131397437.a n = A161711 n

end A161711

/-! ## A161711.P1954192889322586831

`A158186(n)-A268684(n)`
-/

namespace A161711.P1954192889322586831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n - A268684 n

end

end A161711.P1954192889322586831

namespace A161711

/-- `A158186(n)-A268684(n)` -/
def P1954192889322586831.Spec : Prop :=
  ∀ n, P1954192889322586831.a n = A161711 n

end A161711

/-! ## A161711.P2624822466800440404

`A295905(n+1)-A161703(n)`
-/

namespace A161711.P2624822466800440404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295905 (n + 1) - A161703 n

end

end A161711.P2624822466800440404

namespace A161711

/-- `A295905(n+1)-A161703(n)` -/
def P2624822466800440404.Spec : Prop :=
  ∀ n, P2624822466800440404.a n = A161711 n

end A161711

/-! ## A161711.P1703636565559714005

`A051872(n)+1-A000447(n)+n`
-/

namespace A161711.P1703636565559714005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n + (1 - A000447 n + (n : ℤ))

end

end A161711.P1703636565559714005

namespace A161711

/-- `A051872(n)+1-A000447(n)+n` -/
def P1703636565559714005.Spec : Prop :=
  ∀ n, P1703636565559714005.a n = A161711 n

end A161711

/-! ## A161711.P2031253357677741626

`3*A002939(n)-∑[A125202(n+1)]`
-/

namespace A161711.P2031253357677741626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002939 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161711.P2031253357677741626

namespace A161711

/-- `3*A002939(n)-∑[A125202(n+1)]` -/
def P2031253357677741626.Spec : Prop :=
  ∀ n, P2031253357677741626.a n = A161711 n

end A161711

/-! ## A161711.P15374599575015219611

`A002522(n)+A161708(n)-A086514(n+1)`
-/

namespace A161711.P15374599575015219611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (A161708 n - A086514 (n + 1))

end

end A161711.P15374599575015219611

namespace A161711

/-- `A002522(n)+A161708(n)-A086514(n+1)` -/
def P15374599575015219611.Spec : Prop :=
  ∀ n, P15374599575015219611.a n = A161711 n

end A161711

/-!
# A161712: a(n) = (4*n^3 - 6*n^2 + 8*n + 3)/3.

The programs for A161712, the canonical program `A161712.P11950088222624305314` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161712 has offset 0).

The definition of A161712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161712.P11950088222624305314

`(4*n^3-6*n²+8*n)/3+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161712

/-- `(4*n^3-6*n²+8*n)/3+1` -/
def P11950088222624305314.Spec : Prop :=
  ∀ n, P11950088222624305314.a n = (A161712 n : ℚ)

end A161712

/-! ## A161712.P16461811427372505341

`(4*n^3-6*n²+8*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161712.P16461811427372505341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 3 : ℚ) / 3

end

end A161712.P16461811427372505341

namespace A161712

/-- `(4*n^3-6*n²+8*n+3)/3` -/
def P16461811427372505341.Spec : Prop :=
  ∀ n, P16461811427372505341.a n = (A161712 n : ℚ)

end A161712

/-! ## A161712.P13679044059461581145

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A161712.P13679044059461581145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161712.P13679044059461581145

namespace A161712

/-- `∑[∑[a(n-1)+8]]` -/
def P13679044059461581145.Spec : Prop :=
  ∀ n, (P13679044059461581145.a n : ℤ) = A161712 n

end A161712

/-! ## A161712.P11489816386336484257

`∑[∑[ogf((1-x+3x^2+5x^3)/(1-2x+x^2))]]`
-/

namespace A161712.P11489816386336484257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161712.P11489816386336484257

namespace A161712

/-- `∑[∑[ogf((1-x+3x^2+5x^3)/(1-2x+x^2))]]` -/
def P11489816386336484257.Spec : Prop :=
  ∀ n, P11489816386336484257.a n = A161712 n

end A161712

/-! ## A161712.P10497516764430054595

`abs(2*n-A321124(n))`
-/

namespace A161712.P10497516764430054595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A321124 n|

end

end A161712.P10497516764430054595

namespace A161712

/-- `abs(2*n-A321124(n))` -/
def P10497516764430054595.Spec : Prop :=
  ∀ n, P10497516764430054595.a n = A161712 n

end A161712

/-! ## A161712.P7131296674269550143

`Δ[A389545(n)/2]`
-/

namespace A161712.P7131296674269550143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389545 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161712.P7131296674269550143

namespace A161712

/-- `Δ[A389545(n)/2]` -/
def P7131296674269550143.Spec : Prop :=
  ∀ n, P7131296674269550143.a n = (A161712 n : ℚ)

end A161712

/-! ## A161712.P18008193397630652432

`∑[abs(A102762(2*n))]`
-/

namespace A161712.P18008193397630652432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102762 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161712.P18008193397630652432

namespace A161712

/-- `∑[abs(A102762(2*n))]` -/
def P18008193397630652432.Spec : Prop :=
  ∀ n, P18008193397630652432.a n = A161712 n

end A161712

/-! ## A161712.P16451614003417806760

`A193824(A060577(n+1))`
-/

namespace A161712.P16451614003417806760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (A060577 (n + 1)).toNat

end

end A161712.P16451614003417806760

namespace A161712

/-- `A193824(A060577(n+1))` -/
def P16451614003417806760.Spec : Prop :=
  ∀ n, P16451614003417806760.a n = A161712 n

end A161712

/-! ## A161712.P4740806089996456980

`A000027(A321124(n)-2*n)`
-/

namespace A161712.P4740806089996456980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A321124 n - (2 * n : ℤ)).toNat

end

end A161712.P4740806089996456980

namespace A161712

/-- `A000027(A321124(n)-2*n)` -/
def P4740806089996456980.Spec : Prop :=
  ∀ n, P4740806089996456980.a n = A161712 n

end A161712

/-! ## A161712.P11845042056121480575

`A000027(A037235(n)+A037235(n)+1)`
-/

namespace A161712.P11845042056121480575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A037235 n + (A037235 n + 1)).toNat

end

end A161712.P11845042056121480575

namespace A161712

/-- `A000027(A037235(n)+A037235(n)+1)` -/
def P11845042056121480575.Spec : Prop :=
  ∀ n, P11845042056121480575.a n = A161712 n

end A161712

/-!
# A161713: a(n) = (-n^5 + 15*n^4 - 65*n^3 + 125*n^2 - 34*n + 40)/40.

The programs for A161713, the canonical program `A161713.P16836313380821940203` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161713 has offset 0).

The definition of A161713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161713.P16836313380821940203

`(-n^5+15*n^4-65*n^3+125*n²-34*n+40)/40`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161713

/-- `(-n^5+15*n^4-65*n^3+125*n²-34*n+40)/40` -/
def P16836313380821940203.Spec : Prop :=
  ∀ n, P16836313380821940203.a n = (A161713 n : ℚ)

end A161713

/-!
# A161714: a(n) = 28*n + 1.

The programs for A161714, the canonical program `A161714.P2323638930024766233` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161714 has offset 0).

The definition of A161714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*n+1` (program `A161714.P2323638930024766233`, by `A161714.P2323638930024766233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161714.P8481333964779772756

`1+28*n`
-/

namespace A161714.P8481333964779772756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 28 * n

end

end A161714.P8481333964779772756

namespace A161714

/-- `1+28*n` -/
def P8481333964779772756.Spec : Prop :=
  ∀ n, (P8481333964779772756.a n : ℤ) = A161714 n

theorem P8481333964779772756.correct : P8481333964779772756.Spec := by
  intro n
  simp only [A161714, Nat.add_sub_cancel, A161714.P8481333964779772756.a, A161714.P2323638930024766233.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A161714

/-! ## A161714.P2323638930024766233

`28*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161714

/-- `28*n+1` -/
def P2323638930024766233.Spec : Prop :=
  ∀ n, (P2323638930024766233.a n : ℤ) = A161714 n

theorem P2323638930024766233.correct : P2323638930024766233.Spec := by
  intro n
  simp only [A161714]

end A161714

/-!
# A161716: Number of reduced words of length n in the Weyl group B_7.

The programs for A161716, there is no canonical definition to state claims against.
-/

/-! ## A161716.P14370234147947008463

`A128084(A187829(n+1)-A057428(n)+96)`
-/

namespace A161716.P14370234147947008463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (A187829 (n + 1) - A057428 n + 96).toNat

end

end A161716.P14370234147947008463

/-!
# A161717: Number of reduced words of length n in the Weyl group B_8.

The programs for A161717, there is no canonical definition to state claims against.
-/

/-! ## A161717.P6021500328818549015

`A162211(n)+A079998(A219261(n))`
-/

namespace A161717.P6021500328818549015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162211 n + A079998 (A219261 n).toNat

end

end A161717.P6021500328818549015

/-!
# A161718: Expansion of (1+3*x^2)/(1+x)^2.

The programs for A161718, the canonical program `A161718.P9891355517171394022` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161718 has offset 0).

The definition of A161718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x^2)/(1+2x+x^2))` (program `A161718.P9891355517171394022`, by `A161718.P9891355517171394022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161718.P9891355517171394022

`ogf((1+3x^2)/(1+2x+x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161718

/-- `ogf((1+3x^2)/(1+2x+x^2))` -/
def P9891355517171394022.Spec : Prop :=
  ∀ n, P9891355517171394022.a n = A161718 n

theorem P9891355517171394022.correct : P9891355517171394022.Spec := by
  intro n
  simp only [A161718]

end A161718

/-! ## A161718.P12115863890141165661

`(-1)^n*floor(abs(4*n-ϕ))`
-/

namespace A161718.P12115863890141165661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

end

end A161718.P12115863890141165661

namespace A161718

/-- `(-1)^n*floor(abs(4*n-ϕ))` -/
def P12115863890141165661.Spec : Prop :=
  ∀ n, P12115863890141165661.a n = A161718 n

end A161718

/-! ## A161718.P14868937502856424392

`4*(-1)^n-a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A161718.P14868937502856424392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  4 * (-1) ^ n - a (n - 1)

end

end A161718.P14868937502856424392

namespace A161718

/-- `4*(-1)^n-a(n-1)` -/
def P14868937502856424392.Spec : Prop :=
  ∀ n, P14868937502856424392.a n = A161718 n

end A161718

/-! ## A161718.P12816542317726155027

`Δ[4*and(1, n)-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A161718.P12816542317726155027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (4 * Nat.land 1 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161718.P12816542317726155027

namespace A161718

/-- `Δ[4*and(1, n)-a(n-1)]` -/
def P12816542317726155027.Spec : Prop :=
  ∀ n, P12816542317726155027.a n = A161718 n

end A161718

/-! ## A161718.P12183542561439255563

`(2-4*n)*a(n-1)/abs(a(n-1))` with `a(0)=1`
-/

namespace A161718.P12183542561439255563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - (4 * n : ℤ) : ℚ) * a (n - 1) / |a (n - 1)|

end

end A161718.P12183542561439255563

namespace A161718

/-- `(2-4*n)*a(n-1)/abs(a(n-1))` -/
def P12183542561439255563.Spec : Prop :=
  ∀ n, P12183542561439255563.a n = (A161718 n : ℚ)

end A161718

/-! ## A161718.P12689890740324402460

`A263013(n)-A113142(n)`
-/

namespace A161718.P12689890740324402460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n - A113142 n

end

end A161718.P12689890740324402460

namespace A161718

/-- `A263013(n)-A113142(n)` -/
def P12689890740324402460.Spec : Prop :=
  ∀ n, P12689890740324402460.a n = A161718 n

end A161718

/-! ## A161718.P2589207094668449035

`A111284(n+1)/A033999(n)`
-/

namespace A161718.P2589207094668449035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111284 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A161718.P2589207094668449035

namespace A161718

/-- `A111284(n+1)/A033999(n)` -/
def P2589207094668449035.Spec : Prop :=
  ∀ n, P2589207094668449035.a n = (A161718 n : ℚ)

end A161718

/-! ## A161718.P16128130666126653236

`A118239(n+1)/A274922(n)`
-/

namespace A161718.P16128130666126653236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118239 (n + 1) : ℚ) / (A274922 n : ℚ)

end

end A161718.P16128130666126653236

namespace A161718

/-- `A118239(n+1)/A274922(n)` -/
def P16128130666126653236.Spec : Prop :=
  ∀ n, P16128130666126653236.a n = (A161718 n : ℚ)

end A161718

/-! ## A161718.P7262567139567107364

`Δ[Δ[abs(A266256(n)-3*n)]]`
-/

namespace A161718.P7262567139567107364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266256 n - (3 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161718.P7262567139567107364

namespace A161718

/-- `Δ[Δ[abs(A266256(n)-3*n)]]` -/
def P7262567139567107364.Spec : Prop :=
  ∀ n, P7262567139567107364.a n = A161718 n

end A161718

/-! ## A161718.P3738526804332243199

`Δ[Δ[A266258(A028310(n))]]`
-/

namespace A161718.P3738526804332243199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161718.P3738526804332243199

namespace A161718

/-- `Δ[Δ[A266258(A028310(n))]]` -/
def P3738526804332243199.Spec : Prop :=
  ∀ n, P3738526804332243199.a n = A161718 n

end A161718

/-! ## A161718.P5389569428922715621

`Δ[A266258(A014681(n))-A266258(n)]`
-/

namespace A161718.P5389569428922715621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (A014681 n).toNat - A266258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161718.P5389569428922715621

namespace A161718

/-- `Δ[A266258(A014681(n))-A266258(n)]` -/
def P5389569428922715621.Spec : Prop :=
  ∀ n, P5389569428922715621.a n = A161718 n

end A161718

/-! ## A161718.P6807497304236580939

`Δ[Δ[A266258(A014681(n)+1)]]`
-/

namespace A161718.P6807497304236580939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 (A014681 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161718.P6807497304236580939

namespace A161718

/-- `Δ[Δ[A266258(A014681(n)+1)]]` -/
def P6807497304236580939.Spec : Prop :=
  ∀ n, P6807497304236580939.a n = A161718 n

end A161718

/-! ## A161718.P10769534132356273259

`Δ[Δ[A267048(n+2)]]`
-/

namespace A161718.P10769534132356273259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267048 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161718.P10769534132356273259

namespace A161718

/-- `Δ[Δ[A267048(n+2)]]` -/
def P10769534132356273259.Spec : Prop :=
  ∀ n, P10769534132356273259.a n = A161718 n

end A161718

/-! ## A161718.P3928760305783558813

`A130824(A019425(n+1))-A019425(2*n+1)`
-/

namespace A161718.P3928760305783558813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A019425 (n + 1)).toNat - A019425 (2 * n + 1)

end

end A161718.P3928760305783558813

namespace A161718

/-- `A130824(A019425(n+1))-A019425(2*n+1)` -/
def P3928760305783558813.Spec : Prop :=
  ∀ n, P3928760305783558813.a n = A161718 n

end A161718

/-! ## A161718.P6921159548100837997

`2-Δ[A266722(A266724(n))]`
-/

namespace A161718.P6921159548100837997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A266724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A161718.P6921159548100837997

namespace A161718

/-- `2-Δ[A266722(A266724(n))]` -/
def P6921159548100837997.Spec : Prop :=
  ∀ n, P6921159548100837997.a n = A161718 n

end A161718

/-! ## A161718.P5789429090243028328

`A143126(n)/A123344(n)`
-/

namespace A161718.P5789429090243028328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143126 n : ℚ) / (A123344 n : ℚ)

end

end A161718.P5789429090243028328

namespace A161718

/-- `A143126(n)/A123344(n)` -/
def P5789429090243028328.Spec : Prop :=
  ∀ n, P5789429090243028328.a n = (A161718 n : ℚ)

end A161718

/-!
# A161719: Least number k such that 7^(2^i) + k is prime for i = 0,1,..,n-1.

The programs for A161719, there is no canonical definition to state claims against.
-/

/-! ## A161719.P13401064878310924361

`A315652(A317794(n))-2`
-/

namespace A161719.P13401064878310924361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315652 (A317794 n).toNat - 2

end

end A161719.P13401064878310924361

/-!
# A161720: a(n) = (prime(n) - 7)/2.

The programs for A161720, the canonical program `A161720.P8614735749128950071` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161720 has offset 3).

The definition of A161720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161720.P11205026618785754746

`(p?[2*n+5]-7)/2`
-/

namespace A161720.P11205026618785754746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℚ) / 2

end

end A161720.P11205026618785754746

namespace A161720

/-- `(p?[2*n+5]-7)/2` -/
def P11205026618785754746.Spec : Prop :=
  ∀ n, P11205026618785754746.a n = (A161720 (n + 3) : ℚ)

end A161720

/-! ## A161720.P11720961460425145269

`A089038(n+1)-1`
-/

namespace A161720.P11720961460425145269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) - 1

end

end A161720.P11720961460425145269

namespace A161720

/-- `A089038(n+1)-1` -/
def P11720961460425145269.Spec : Prop :=
  ∀ n, P11720961460425145269.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P10363748892708803717

`∑[A028334(n+2)]-2`
-/

namespace A161720.P10363748892708803717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A161720.P10363748892708803717

namespace A161720

/-- `∑[A028334(n+2)]-2` -/
def P10363748892708803717.Spec : Prop :=
  ∀ n, P10363748892708803717.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P13523346283401451200

`(A172367(n+1)-3)/2`
-/

namespace A161720.P13523346283401451200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172367 (n + 1) - 3 : ℚ) / 2

end

end A161720.P13523346283401451200

namespace A161720

/-- `(A172367(n+1)-3)/2` -/
def P13523346283401451200.Spec : Prop :=
  ∀ n, P13523346283401451200.a n = (A161720 (n + 3) : ℚ)

end A161720

/-! ## A161720.P18311283788335217075

`A173064(n+3)/2-1`
-/

namespace A161720.P18311283788335217075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173064 (n + 3) : ℚ) / 2 - 1

end

end A161720.P18311283788335217075

namespace A161720

/-- `A173064(n+3)/2-1` -/
def P18311283788335217075.Spec : Prop :=
  ∀ n, P18311283788335217075.a n = (A161720 (n + 3) : ℚ)

end A161720

/-! ## A161720.P8614735749128950071

`A024675(n+1)-A089192(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161720

/-- `A024675(n+1)-A089192(n+1)` -/
def P8614735749128950071.Spec : Prop :=
  ∀ n, P8614735749128950071.a n = A161720 (n + 3)

theorem P8614735749128950071.correct : P8614735749128950071.Spec := by
  intro n
  simp only [A161720, Nat.add_sub_cancel]

end A161720

/-! ## A161720.P2016193147107690815

`A024678(n+1)-A177018(n+1)`
-/

namespace A161720.P2016193147107690815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024678 (n + 1) - A177018 (n + 1)

end

end A161720.P2016193147107690815

namespace A161720

/-- `A024678(n+1)-A177018(n+1)` -/
def P2016193147107690815.Spec : Prop :=
  ∀ n, P2016193147107690815.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P9123801127025565985

`A067076(n+2)-2`
-/

namespace A161720.P9123801127025565985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2) - 2

end

end A161720.P9123801127025565985

namespace A161720

/-- `A067076(n+2)-2` -/
def P9123801127025565985.Spec : Prop :=
  ∀ n, P9123801127025565985.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P5916676226041050509

`A005097(n+2)-3`
-/

namespace A161720.P5916676226041050509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - 3

end

end A161720.P5916676226041050509

namespace A161720

/-- `A005097(n+2)-3` -/
def P5916676226041050509.Spec : Prop :=
  ∀ n, P5916676226041050509.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P15498824481350427528

`A006254(n+2)-4`
-/

namespace A161720.P15498824481350427528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) - 4

end

end A161720.P15498824481350427528

namespace A161720

/-- `A006254(n+2)-4` -/
def P15498824481350427528.Spec : Prop :=
  ∀ n, P15498824481350427528.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P6334340373463832740

`A098090(n+2)-5`
-/

namespace A161720.P6334340373463832740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 2) - 5

end

end A161720.P6334340373463832740

namespace A161720

/-- `A098090(n+2)-5` -/
def P6334340373463832740.Spec : Prop :=
  ∀ n, P6334340373463832740.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P10913704379177205021

`A089253(n+2)-6`
-/

namespace A161720.P10913704379177205021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 2) - 6

end

end A161720.P10913704379177205021

namespace A161720

/-- `A089253(n+2)-6` -/
def P10913704379177205021.Spec : Prop :=
  ∀ n, P10913704379177205021.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P1924271949281058505

`A089192(n+2)-7`
-/

namespace A161720.P1924271949281058505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 2) - 7

end

end A161720.P1924271949281058505

namespace A161720

/-- `A089192(n+2)-7` -/
def P1924271949281058505.Spec : Prop :=
  ∀ n, P1924271949281058505.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P1517425892523586362

`A097069(n+2)-8`
-/

namespace A161720.P1517425892523586362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 2) - 8

end

end A161720.P1517425892523586362

namespace A161720

/-- `A097069(n+2)-8` -/
def P1517425892523586362.Spec : Prop :=
  ∀ n, P1517425892523586362.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P16675144127356533709

`A097338(n+2)-9`
-/

namespace A161720.P16675144127356533709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 2) - 9

end

end A161720.P16675144127356533709

namespace A161720

/-- `A097338(n+2)-9` -/
def P16675144127356533709.Spec : Prop :=
  ∀ n, P16675144127356533709.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P10625667822807325975

`(A118538(n+2)-1)/2`
-/

namespace A161720.P10625667822807325975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118538 (n + 2) - 1 : ℚ) / 2

end

end A161720.P10625667822807325975

namespace A161720

/-- `(A118538(n+2)-1)/2` -/
def P10625667822807325975.Spec : Prop :=
  ∀ n, P10625667822807325975.a n = (A161720 (n + 3) : ℚ)

end A161720

/-! ## A161720.P125873543942359604

`A154115(n+2)/2-2`
-/

namespace A161720.P125873543942359604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154115 (n + 2) : ℚ) / 2 - 2

end

end A161720.P125873543942359604

namespace A161720

/-- `A154115(n+2)/2-2` -/
def P125873543942359604.Spec : Prop :=
  ∀ n, P125873543942359604.a n = (A161720 (n + 3) : ℚ)

end A161720

/-! ## A161720.P1066556439016374648

`A008507(n+2)-1+n`
-/

namespace A161720.P1066556439016374648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 2) - 1 + (n : ℤ)

end

end A161720.P1066556439016374648

namespace A161720

/-- `A008507(n+2)-1+n` -/
def P1066556439016374648.Spec : Prop :=
  ∀ n, P1066556439016374648.a n = A161720 (n + 3)

end A161720

/-! ## A161720.P17809491009946817815

`A102781(n+3)-3`
-/

namespace A161720.P17809491009946817815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 3) - 3

end

end A161720.P17809491009946817815

namespace A161720

/-- `A102781(n+3)-3` -/
def P17809491009946817815.Spec : Prop :=
  ∀ n, P17809491009946817815.a n = A161720 (n + 3)

end A161720

/-!
# A161721: Primes p such that the reversal of p is prime and the product of p with its reversal is a palindrome.

The programs for A161721, there is no canonical definition to state claims against.
-/

/-! ## A161721.P15431571319974826392

`∩[A007500(n+1), A062936(n+1)]`
-/

namespace A161721.P15431571319974826392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161721.P15431571319974826392

/-! ## A161721.P5035497999338601595

`p?[A151764(A062936(n+1))]`
-/

namespace A161721.P5035497999338601595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (A062936 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161721.P5035497999338601595

/-!
# A161722: Generalized Bernoulli numbers B_n(X,0), X a Dirichlet character modulus 8.

The programs for A161722, there is no canonical definition to state claims against.
-/

/-! ## A161722.P548138425397035154

`2*n*A188458(comp[2*(n+1)])`
-/

namespace A161722.P548138425397035154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A188458 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A161722.P548138425397035154

/-!
# A161723: Middle members p of prime triples (p-18,p,p+18).

The programs for A161723, there is no canonical definition to state claims against.
-/

/-! ## A161723.P9910662730714928341

`A156109(n+1)+18`
-/

namespace A161723.P9910662730714928341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156109 (n + 1) + 18

end

end A161723.P9910662730714928341

/-! ## A161723.P2618121929211752537

`p?[A156104(n+1)+18]`
-/

namespace A161723.P2618121929211752537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161723.P2618121929211752537

/-! ## A161723.P16155709053523812166

`p?[p?[A040976(n+1)-34]+18]`
-/

namespace A161723.P16155709053523812166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161723.P16155709053523812166

/-! ## A161723.P7463958186096082098

`p?[p?[record[A000010(n+1)]-35]+18]`
-/

namespace A161723.P7463958186096082098
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 35

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161723.P7463958186096082098

/-! ## A161723.P16339212624432087266

`record[A006530(A156104(n+1)+18)]`
-/

namespace A161723.P16339212624432087266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156104 (n + 1) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161723.P16339212624432087266

/-! ## A161723.P5675348822915811894

`record[A020639(A156104(n+1)+18)]`
-/

namespace A161723.P5675348822915811894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156104 (n + 1) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161723.P5675348822915811894

/-! ## A161723.P12027227227340716689

`∩[A156328(2*n+1), A156328(2*(n+1))]`
-/

namespace A161723.P12027227227340716689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161723.P12027227227340716689

/-! ## A161723.P5092597285357855336

`record[A014963(A156104(n+1)+18)]`
-/

namespace A161723.P5092597285357855336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A156104 (n + 1) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161723.P5092597285357855336

/-!
# A161724: Primes p such that also p-24 and p+24 are primes.

The programs for A161724, there is no canonical definition to state claims against.
-/

/-! ## A161724.P12086793296664891091

`A279765(n+1)+24`
-/

namespace A161724.P12086793296664891091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279765 (n + 1) + 24

end

end A161724.P12086793296664891091

/-! ## A161724.P17789094335690832539

`p?[A033560(n+1)-24]+24`
-/

namespace A161724.P17789094335690832539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 24

end

end A161724.P17789094335690832539

/-! ## A161724.P3771441862027142212

`p?[p?[A000040(n+1)-24]-24]+24`
-/

namespace A161724.P3771441862027142212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 24

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 24

end

end A161724.P3771441862027142212

/-! ## A161724.P3643880796095541579

`p?[p?[A065091(n+1)-24]-24]+24`
-/

namespace A161724.P3643880796095541579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 24

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 24

end

end A161724.P3643880796095541579

/-! ## A161724.P674155742143963005

`A343080(A279765(n+1))`
-/

namespace A161724.P674155742143963005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343080 (A279765 (n + 1)).toNat

end

end A161724.P674155742143963005

/-! ## A161724.P13003474762450426084

`p?[A023466(A033560(n+1))]+24`
-/

namespace A161724.P13003474762450426084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023466 (A033560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 24

end

end A161724.P13003474762450426084

/-!
# A161725: Primes p such that also p+30 and p-30 are primes.

The programs for A161725, the canonical program `A161725.P14638798488162685741` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161725 has offset 1).

The definition of A161725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2864 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161725.P14638798488162685741

`p?[A049481(n+1)-30]+30`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161725

/-- `p?[A049481(n+1)-30]+30` -/
def P14638798488162685741.Spec : Prop :=
  ∀ n, P14638798488162685741.a n = A161725 (n + 1)

theorem P14638798488162685741.correct : P14638798488162685741.Spec := by
  intro n
  simp only [A161725, Nat.add_sub_cancel]

end A161725

/-! ## A161725.P12190326061347597118

`p?[p?[A086303(n+1)-15]-30]+30`
-/

namespace A161725.P12190326061347597118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P12190326061347597118

namespace A161725

/-- `p?[p?[A086303(n+1)-15]-30]+30` -/
def P12190326061347597118.Spec : Prop :=
  ∀ n, P12190326061347597118.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P5761121723668737204

`p?[p?[A028815(n)-31]-30]+30`
-/

namespace A161725.P5761121723668737204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 31

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P5761121723668737204

namespace A161725

/-- `p?[p?[A028815(n)-31]-30]+30` -/
def P5761121723668737204.Spec : Prop :=
  ∀ n, P5761121723668737204.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P5135952206861256913

`p?[p?[A006093(n+1)-29]-30]+30`
-/

namespace A161725.P5135952206861256913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 29

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P5135952206861256913

namespace A161725

/-- `p?[p?[A006093(n+1)-29]-30]+30` -/
def P5135952206861256913.Spec : Prop :=
  ∀ n, P5135952206861256913.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P17519096123403325536

`p?[p?[A068499(n+1)-29]-30]+30`
-/

namespace A161725.P17519096123403325536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1) - 29

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P17519096123403325536

namespace A161725

/-- `p?[p?[A068499(n+1)-29]-30]+30` -/
def P17519096123403325536.Spec : Prop :=
  ∀ n, P17519096123403325536.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P4678121057625270649

`p?[p?[A000040(n+1)-30]-30]+30`
-/

namespace A161725.P4678121057625270649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 30

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P4678121057625270649

namespace A161725

/-- `p?[p?[A000040(n+1)-30]-30]+30` -/
def P4678121057625270649.Spec : Prop :=
  ∀ n, P4678121057625270649.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P7783266591460167149

`p?[p?[A065091(n+1)-30]-30]+30`
-/

namespace A161725.P7783266591460167149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 30

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P7783266591460167149

namespace A161725

/-- `p?[p?[A065091(n+1)-30]-30]+30` -/
def P7783266591460167149.Spec : Prop :=
  ∀ n, P7783266591460167149.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P15774038288138532198

`A155760(n+1)+30`
-/

namespace A161725.P15774038288138532198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155760 (n + 1) + 30

end

end A161725.P15774038288138532198

namespace A161725

/-- `A155760(n+1)+30` -/
def P15774038288138532198.Spec : Prop :=
  ∀ n, P15774038288138532198.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P13122358290892909970

`p?[A023472(A049481(n+1))]+30`
-/

namespace A161725.P13122358290892909970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A049481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P13122358290892909970

namespace A161725

/-- `p?[A023472(A049481(n+1))]+30` -/
def P13122358290892909970.Spec : Prop :=
  ∀ n, P13122358290892909970.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P2581743521832615487

`p?[A023472(p?[A000040(n+1)-30])]+30`
-/

namespace A161725.P2581743521832615487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 30

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 30

end

end A161725.P2581743521832615487

namespace A161725

/-- `p?[A023472(p?[A000040(n+1)-30])]+30` -/
def P2581743521832615487.Spec : Prop :=
  ∀ n, P2581743521832615487.a n = A161725 (n + 1)

end A161725

/-! ## A161725.P11437992137168634230

`31-A024000(p?[p?[A028815(n)-31]-30])`
-/

namespace A161725.P11437992137168634230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 31

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 - A024000 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A161725.P11437992137168634230

namespace A161725

/-- `31-A024000(p?[p?[A028815(n)-31]-30])` -/
def P11437992137168634230.Spec : Prop :=
  ∀ n, P11437992137168634230.a n = A161725 (n + 1)

end A161725

/-!
# A161727: a(n) = ((2+sqrt(3))*(4+sqrt(3))^n-(2-sqrt(3))*(4-sqrt(3))^n)/sqrt(12).

The programs for A161727, the canonical program `A161727.P6409865142498481031` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161727 has offset 0).

The definition of A161727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161727.P8343695069114403549

`ogf((1-2x)/(1-8x+13x^2))`
-/

namespace A161727.P8343695069114403549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 13] n

end

end A161727.P8343695069114403549

namespace A161727

/-- `ogf((1-2x)/(1-8x+13x^2))` -/
def P8343695069114403549.Spec : Prop :=
  ∀ n, P8343695069114403549.a n = A161727 n

end A161727

/-! ## A161727.P6409865142498481031

`8*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161727

/-- `8*a(n-1)-13*a(n-2)` -/
def P6409865142498481031.Spec : Prop :=
  ∀ n, P6409865142498481031.a n = A161727 n

theorem P6409865142498481031.correct : P6409865142498481031.Spec := by
  intro n
  simp only [A161727]

end A161727

/-! ## A161727.P13655979029997792636

`((2+sqrt(3))*(sqrt(3)+4)^n-(2-sqrt(3))*(4-sqrt(3))^n)/sqrt(12)`
-/

namespace A161727.P13655979029997792636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 4) ^ n - (2 - Real.sqrt (3 : ℝ)) * (4 - Real.sqrt (3 : ℝ)) ^ n) / Real.sqrt (12 : ℝ)

end

end A161727.P13655979029997792636

namespace A161727

/-- `((2+sqrt(3))*(sqrt(3)+4)^n-(2-sqrt(3))*(4-sqrt(3))^n)/sqrt(12)` -/
def P13655979029997792636.Spec : Prop :=
  ∀ n, P13655979029997792636.a n = (A161727 n : ℝ)

end A161727

/-! ## A161727.P5613287752731572584

`Δ[∑[A136779(n+1)]/3]`
-/

namespace A161727.P5613287752731572584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136779 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161727.P5613287752731572584

namespace A161727

/-- `Δ[∑[A136779(n+1)]/3]` -/
def P5613287752731572584.Spec : Prop :=
  ∀ n, P5613287752731572584.a n = (A161727 n : ℚ)

end A161727

/-! ## A161727.P16810404497813511493

`A162274(n)-A162557(n)`
-/

namespace A161727.P16810404497813511493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162274 n - A162557 n

end

end A161727.P16810404497813511493

namespace A161727

/-- `A162274(n)-A162557(n)` -/
def P16810404497813511493.Spec : Prop :=
  ∀ n, P16810404497813511493.a n = A161727 n

end A161727

/-! ## A161727.P2129422372156560211

`2*A162557(n)-A083882(n)`
-/

namespace A161727.P2129422372156560211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162557 n - A083882 n

end

end A161727.P2129422372156560211

namespace A161727

/-- `2*A162557(n)-A083882(n)` -/
def P2129422372156560211.Spec : Prop :=
  ∀ n, P2129422372156560211.a n = A161727 n

end A161727

/-! ## A161727.P7299799539797782204

`A162274(n)-∑[A136777(n+1)]`
-/

namespace A161727.P7299799539797782204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162274 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161727.P7299799539797782204

namespace A161727

/-- `A162274(n)-∑[A136777(n+1)]` -/
def P7299799539797782204.Spec : Prop :=
  ∀ n, P7299799539797782204.a n = A161727 n

end A161727

/-! ## A161727.P2823033375547245938

`2*A161728(n)-A153594(n+1)`
-/

namespace A161727.P2823033375547245938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161728 n - A153594 (n + 1)

end

end A161727.P2823033375547245938

namespace A161727

/-- `2*A161728(n)-A153594(n+1)` -/
def P2823033375547245938.Spec : Prop :=
  ∀ n, P2823033375547245938.a n = A161727 n

end A161727

/-! ## A161727.P6697847721467551065

`A153594(n+1)+A162557(n)-A161728(n)`
-/

namespace A161727.P6697847721467551065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153594 (n + 1) + (A162557 n - A161728 n)

end

end A161727.P6697847721467551065

namespace A161727

/-- `A153594(n+1)+A162557(n)-A161728(n)` -/
def P6697847721467551065.Spec : Prop :=
  ∀ n, P6697847721467551065.a n = A161727 n

end A161727

/-! ## A161727.P5717134369218028797

`Δ[A161728(n)/6]`
-/

namespace A161727.P5717134369218028797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161728 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161727.P5717134369218028797

namespace A161727

/-- `Δ[A161728(n)/6]` -/
def P5717134369218028797.Spec : Prop :=
  ∀ n, P5717134369218028797.a n = (A161727 n : ℚ)

end A161727

/-!
# A161728: a(n) = ((3+sqrt(3))*(4+sqrt(3))^n-(3-sqrt(3))*(4-sqrt(3))^n)/sqrt(12).

The programs for A161728, the canonical program `A161728.P9522169293190096272` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161728 has offset 0).

The definition of A161728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161728.P15657197234035968585

`ogf((1-x)/(1-8x+13x^2))`
-/

namespace A161728.P15657197234035968585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8, 13] n

end

end A161728.P15657197234035968585

namespace A161728

/-- `ogf((1-x)/(1-8x+13x^2))` -/
def P15657197234035968585.Spec : Prop :=
  ∀ n, P15657197234035968585.a n = A161728 n

end A161728

/-! ## A161728.P9522169293190096272

`8*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161728

/-- `8*a(n-1)-13*a(n-2)` -/
def P9522169293190096272.Spec : Prop :=
  ∀ n, P9522169293190096272.a n = A161728 n

theorem P9522169293190096272.correct : P9522169293190096272.Spec := by
  intro n
  simp only [A161728]

end A161728

/-! ## A161728.P7872826887534338521

`∑[2*A136779(n+1)]-1`
-/

namespace A161728.P7872826887534338521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161728.P7872826887534338521

namespace A161728

/-- `∑[2*A136779(n+1)]-1` -/
def P7872826887534338521.Spec : Prop :=
  ∀ n, P7872826887534338521.a n = A161728 n

end A161728

/-! ## A161728.P13264543837589887588

`Δ[A162557(n)]-A163470(n)`
-/

namespace A161728.P13264543837589887588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163470 n

end

end A161728.P13264543837589887588

namespace A161728

/-- `Δ[A162557(n)]-A163470(n)` -/
def P13264543837589887588.Spec : Prop :=
  ∀ n, P13264543837589887588.a n = A161728 n

end A161728

/-! ## A161728.P870747901298240080

`A136777(n+2)-A163470(n)`
-/

namespace A161728.P870747901298240080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136777 (n + 2) - A163470 n

end

end A161728.P870747901298240080

namespace A161728

/-- `A136777(n+2)-A163470(n)` -/
def P870747901298240080.Spec : Prop :=
  ∀ n, P870747901298240080.a n = A161728 n

end A161728

/-! ## A161728.P157519770788551507

`A163470(n)-2*A083882(n)`
-/

namespace A161728.P157519770788551507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163470 n - 2 * A083882 n

end

end A161728.P157519770788551507

namespace A161728

/-- `A163470(n)-2*A083882(n)` -/
def P157519770788551507.Spec : Prop :=
  ∀ n, P157519770788551507.a n = A161728 n

end A161728

/-! ## A161728.P3640488321458036794

`(A161727(n)+A153594(n+1))/2`
-/

namespace A161728.P3640488321458036794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161727 n + A153594 (n + 1) : ℚ) / 2

end

end A161728.P3640488321458036794

namespace A161728

/-- `(A161727(n)+A153594(n+1))/2` -/
def P3640488321458036794.Spec : Prop :=
  ∀ n, P3640488321458036794.a n = (A161728 n : ℚ)

end A161728

/-! ## A161728.P12707671492726144613

`((3+sqrt(3))*(sqrt(3)+4)^n-(3-sqrt(3))*(4-sqrt(3))^n)/sqrt(12)`
-/

namespace A161728.P12707671492726144613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (3 : ℝ)) * (Real.sqrt (3 : ℝ) + 4) ^ n - (3 - Real.sqrt (3 : ℝ)) * (4 - Real.sqrt (3 : ℝ)) ^ n) / Real.sqrt (12 : ℝ)

end

end A161728.P12707671492726144613

namespace A161728

/-- `((3+sqrt(3))*(sqrt(3)+4)^n-(3-sqrt(3))*(4-sqrt(3))^n)/sqrt(12)` -/
def P12707671492726144613.Spec : Prop :=
  ∀ n, P12707671492726144613.a n = (A161728 n : ℝ)

end A161728

/-! ## A161728.P7875276459729787747

`Δ[A162274(n)]%A162274(n)`
-/

namespace A161728.P7875276459729787747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A162274 n)

end

end A161728.P7875276459729787747

namespace A161728

/-- `Δ[A162274(n)]%A162274(n)` -/
def P7875276459729787747.Spec : Prop :=
  ∀ n, P7875276459729787747.a n = A161728 n

end A161728

/-! ## A161728.P14341303552866130361

`(13*A136777(n+1))%A163470(n)`
-/

namespace A161728.P14341303552866130361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (13 * A136777 (n + 1)) (A163470 n)

end

end A161728.P14341303552866130361

namespace A161728

/-- `(13*A136777(n+1))%A163470(n)` -/
def P14341303552866130361.Spec : Prop :=
  ∀ n, P14341303552866130361.a n = A161728 n

end A161728

/-!
# A161729: a(n) = ((4+sqrt(3))*(8+2*sqrt(3))^n-(4-sqrt(3))*(8-2*sqrt(3))^n)/(2*sqrt(3)).

The programs for A161729, the canonical program `A161729.P10217361930846299492` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161729 has offset 0).

The definition of A161729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161729.P10217361930846299492

`2^n*A153594(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161729

/-- `2^n*A153594(n+1)` -/
def P10217361930846299492.Spec : Prop :=
  ∀ n, P10217361930846299492.a n = A161729 n

theorem P10217361930846299492.correct : P10217361930846299492.Spec := by
  intro n
  simp only [A161729]

end A161729

/-! ## A161729.P12369886306663415744

`2^n*∑[A161728(n)]`
-/

namespace A161729.P12369886306663415744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161729.P12369886306663415744

namespace A161729

/-- `2^n*∑[A161728(n)]` -/
def P12369886306663415744.Spec : Prop :=
  ∀ n, P12369886306663415744.a n = A161729 n

end A161729

/-! ## A161729.P932167186810794457

`∑[A161728(n)]*A000079(n)`
-/

namespace A161729.P932167186810794457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A161729.P932167186810794457

namespace A161729

/-- `∑[A161728(n)]*A000079(n)` -/
def P932167186810794457.Spec : Prop :=
  ∀ n, P932167186810794457.a n = A161729 n

end A161729

/-! ## A161729.P2646321702321804169

`∑[A161728(n)]*A013609(A000096(n))`
-/

namespace A161729.P2646321702321804169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A013609 (A000096 n).toNat

end

end A161729.P2646321702321804169

namespace A161729

/-- `∑[A161728(n)]*A013609(A000096(n))` -/
def P2646321702321804169.Spec : Prop :=
  ∀ n, P2646321702321804169.a n = A161729 n

end A161729

/-! ## A161729.P12002773470618701485

`A153594(n+1)/A074324(n+1)*A162466(n+1)`
-/

namespace A161729.P12002773470618701485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153594 (n + 1) : ℚ) / (A074324 (n + 1) : ℚ) * (A162466 (n + 1) : ℚ)

end

end A161729.P12002773470618701485

namespace A161729

/-- `A153594(n+1)/A074324(n+1)*A162466(n+1)` -/
def P12002773470618701485.Spec : Prop :=
  ∀ n, P12002773470618701485.a n = (A161729 n : ℚ)

end A161729

/-! ## A161729.P17106301555094506462

`A153594(n+1)/A166552(n+1)*A162466(n+1)`
-/

namespace A161729.P17106301555094506462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153594 (n + 1) : ℚ) / (A166552 (n + 1) : ℚ) * (A162466 (n + 1) : ℚ)

end

end A161729.P17106301555094506462

namespace A161729

/-- `A153594(n+1)/A166552(n+1)*A162466(n+1)` -/
def P17106301555094506462.Spec : Prop :=
  ∀ n, P17106301555094506462.a n = (A161729 n : ℚ)

end A161729

/-!
# A161731: Expansion of (1-3*x)/(1-8*x+14*x^2).

The programs for A161731, the canonical program `A161731.P8224761327095385122` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161731 has offset 0).

The definition of A161731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-8x+14x^2))` (program `A161731.P8224761327095385122`, by `A161731.P8224761327095385122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161731.P8224761327095385122

`ogf((1-3x)/(1-8x+14x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161731

/-- `ogf((1-3x)/(1-8x+14x^2))` -/
def P8224761327095385122.Spec : Prop :=
  ∀ n, P8224761327095385122.a n = A161731 n

theorem P8224761327095385122.correct : P8224761327095385122.Spec := by
  intro n
  simp only [A161731]

end A161731

/-! ## A161731.P14719672322831130187

`8*a(n-1)-14*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A161731.P14719672322831130187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  8 * a (n - 1) - 14 * a (n - 2)

end

end A161731.P14719672322831130187

namespace A161731

/-- `8*a(n-1)-14*a(n-2)` -/
def P14719672322831130187.Spec : Prop :=
  ∀ n, P14719672322831130187.a n = A161731 n

end A161731

/-! ## A161731.P251926689384396218

`A081180(n+1)-3*A081180(n)`
-/

namespace A161731.P251926689384396218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) - 3 * A081180 n

end

end A161731.P251926689384396218

namespace A161731

/-- `A081180(n+1)-3*A081180(n)` -/
def P251926689384396218.Spec : Prop :=
  ∀ n, P251926689384396218.a n = A161731 n

end A161731

/-! ## A161731.P3631772762155822091

`A083879(n)+A081180(n)`
-/

namespace A161731.P3631772762155822091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 n + A081180 n

end

end A161731.P3631772762155822091

namespace A161731

/-- `A083879(n)+A081180(n)` -/
def P3631772762155822091.Spec : Prop :=
  ∀ n, P3631772762155822091.a n = A161731 n

end A161731

/-! ## A161731.P6735427722208986137

`A163350(n)-A081180(n)`
-/

namespace A161731.P6735427722208986137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n - A081180 n

end

end A161731.P6735427722208986137

namespace A161731

/-- `A163350(n)-A081180(n)` -/
def P6735427722208986137.Spec : Prop :=
  ∀ n, P6735427722208986137.a n = A161731 n

end A161731

/-! ## A161731.P5044853631807697846

`A164072(n)-2*A081180(n)`
-/

namespace A161731.P5044853631807697846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n - 2 * A081180 n

end

end A161731.P5044853631807697846

namespace A161731

/-- `A164072(n)-2*A081180(n)` -/
def P5044853631807697846.Spec : Prop :=
  ∀ n, P5044853631807697846.a n = A161731 n

end A161731

/-! ## A161731.P18231901843512080520

`A163350(n)+A163350(n)-A164072(n)`
-/

namespace A161731.P18231901843512080520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + (A163350 n - A164072 n)

end

end A161731.P18231901843512080520

namespace A161731

/-- `A163350(n)+A163350(n)-A164072(n)` -/
def P18231901843512080520.Spec : Prop :=
  ∀ n, P18231901843512080520.a n = A161731 n

end A161731

/-! ## A161731.P7944170236184640325

`((2+sqrt(2))*(sqrt(2)+4)^n+(2-sqrt(2))*(4-sqrt(2))^n)/4`
-/

namespace A161731.P7944170236184640325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 4) ^ n + (2 - Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A161731.P7944170236184640325

namespace A161731

/-- `((2+sqrt(2))*(sqrt(2)+4)^n+(2-sqrt(2))*(4-sqrt(2))^n)/4` -/
def P7944170236184640325.Spec : Prop :=
  ∀ n, P7944170236184640325.a n = (A161731 n : ℝ)

end A161731

/-! ## A161731.P4323546060907770139

`Δ[A162356(n)/7]`
-/

namespace A161731.P4323546060907770139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162356 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161731.P4323546060907770139

namespace A161731

/-- `Δ[A162356(n)/7]` -/
def P4323546060907770139.Spec : Prop :=
  ∀ n, P4323546060907770139.a n = (A161731 n : ℚ)

end A161731

/-! ## A161731.P6550266309787935529

`2*A163350(n)-A164072(n)`
-/

namespace A161731.P6550266309787935529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163350 n - A164072 n

end

end A161731.P6550266309787935529

namespace A161731

/-- `2*A163350(n)-A164072(n)` -/
def P6550266309787935529.Spec : Prop :=
  ∀ n, P6550266309787935529.a n = A161731 n

end A161731

/-! ## A161731.P2934037513845069105

`Δ[A164034(n)]%A164034(n)`
-/

namespace A161731.P2934037513845069105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164034 n)

end

end A161731.P2934037513845069105

namespace A161731

/-- `Δ[A164034(n)]%A164034(n)` -/
def P2934037513845069105.Spec : Prop :=
  ∀ n, P2934037513845069105.a n = A161731 n

end A161731

/-!
# A161732: Fixed points of the TITO operation (A161594) that are also composite palindromes.

The programs for A161732, there is no canonical definition to state claims against.
-/

/-! ## A161732.P10075687990711031609

`A046351(and(64, n)+n+1)`
-/

namespace A161732.P10075687990711031609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (Nat.land 64 n + n + 1)

end

end A161732.P10075687990711031609

/-! ## A161732.P6905962616661046215

`A046351(n+1)%(42/3)²²`
-/

namespace A161732.P6905962616661046215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046351 (n + 1)) (SequenceMachineLib.roundAway ((((42 : ℚ) / 3) ^ 2) ^ 2))

end

end A161732.P6905962616661046215

/-! ## A161732.P8046362779592603921

`A046351(n-char[C(Δ[(4*n)²], 2)]+1)`
-/

namespace A161732.P8046362779592603921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A161732.P8046362779592603921

/-! ## A161732.P17964670779663907563

`A046351(A090107(n+1))`
-/

namespace A161732.P17964670779663907563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (A090107 (n + 1)).toNat

end

end A161732.P17964670779663907563

/-! ## A161732.P17734086702632244350

`A046351(A090109(n+1))`
-/

namespace A161732.P17734086702632244350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (A090109 (n + 1)).toNat

end

end A161732.P17734086702632244350

/-! ## A161732.P6856287008624079395

`A046351(A166719(n+1))`
-/

namespace A161732.P6856287008624079395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (A166719 (n + 1)).toNat

end

end A161732.P6856287008624079395

/-! ## A161732.P10127644451833403512

`A046351(A303502(n+1))`
-/

namespace A161732.P10127644451833403512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (A303502 (n + 1)).toNat

end

end A161732.P10127644451833403512

/-! ## A161732.P12277356113277646911

`∩[A083158(n+1), A161600(n+1)]`
-/

namespace A161732.P12277356113277646911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161732.P12277356113277646911

/-! ## A161732.P6141619432845078314

`A001222(or(1, ∑{e}[n, #])+2)*A046351(n+1)`
-/

namespace A161732.P6141619432845078314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 2) * A046351 (n + 1)

end

end A161732.P6141619432845078314

/-!
# A161733: Number of reduced words of length n in the Weyl group B_9.

The programs for A161733, there is no canonical definition to state claims against.
-/

/-! ## A161733.P1836522817811533335

`∑[A161717(A001222(2^n))]`
-/

namespace A161733.P1836522817811533335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161717 (A001222 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161733.P1836522817811533335

/-!
# A161734: a(n) = ((2+sqrt(2))*(5+sqrt(2))^n+(2-sqrt(2))*(5-sqrt(2))^n)/4.

The programs for A161734, the canonical program `A161734.P17907890004486119413` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161734 has offset 0).

The definition of A161734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161734.P17907890004486119413

`10*a(n-1)-23*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161734

/-- `10*a(n-1)-23*a(n-2)` -/
def P17907890004486119413.Spec : Prop :=
  ∀ n, P17907890004486119413.a n = A161734 n

theorem P17907890004486119413.correct : P17907890004486119413.Spec := by
  intro n
  simp only [A161734]

end A161734

/-! ## A161734.P5453239514477613052

`ogf((1-4x)/(1-10x+23x^2))`
-/

namespace A161734.P5453239514477613052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -10, 23] n

end

end A161734.P5453239514477613052

namespace A161734

/-- `ogf((1-4x)/(1-10x+23x^2))` -/
def P5453239514477613052.Spec : Prop :=
  ∀ n, P5453239514477613052.a n = A161734 n

end A161734

/-! ## A161734.P11759192905411204611

`((2+sqrt(2))*(sqrt(2)+5)^n+(2-sqrt(2))*(5-sqrt(2))^n)/4`
-/

namespace A161734.P11759192905411204611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 5) ^ n + (2 - Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A161734.P11759192905411204611

namespace A161734

/-- `((2+sqrt(2))*(sqrt(2)+5)^n+(2-sqrt(2))*(5-sqrt(2))^n)/4` -/
def P11759192905411204611.Spec : Prop :=
  ∀ n, P11759192905411204611.a n = (A161734 n : ℝ)

end A161734

/-! ## A161734.P4421585373512675756

`A163346(n)-A081182(n)`
-/

namespace A161734.P4421585373512675756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n - A081182 n

end

end A161734.P4421585373512675756

namespace A161734

/-- `A163346(n)-A081182(n)` -/
def P4421585373512675756.Spec : Prop :=
  ∀ n, P4421585373512675756.a n = A161734 n

end A161734

/-! ## A161734.P11320739771760295009

`A161940(n)-A161947(n)`
-/

namespace A161734.P11320739771760295009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161940 n - A161947 n

end

end A161734.P11320739771760295009

namespace A161734

/-- `A161940(n)-A161947(n)` -/
def P11320739771760295009.Spec : Prop :=
  ∀ n, P11320739771760295009.a n = A161734 n

end A161734

/-! ## A161734.P15754731458001220066

`A164035(n)-A163346(n)`
-/

namespace A161734.P15754731458001220066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n - A163346 n

end

end A161734.P15754731458001220066

namespace A161734

/-- `A164035(n)-A163346(n)` -/
def P15754731458001220066.Spec : Prop :=
  ∀ n, P15754731458001220066.a n = A161734 n

end A161734

/-! ## A161734.P10343670271721681325

`A163605(n)-A164035(n)`
-/

namespace A161734.P10343670271721681325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n - A164035 n

end

end A161734.P10343670271721681325

namespace A161734

/-- `A163605(n)-A164035(n)` -/
def P10343670271721681325.Spec : Prop :=
  ∀ n, P10343670271721681325.a n = A161734 n

end A161734

/-! ## A161734.P4165443540601476120

`A164031(n)-2*A081182(n)`
-/

namespace A161734.P4165443540601476120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164031 n - 2 * A081182 n

end

end A161734.P4165443540601476120

namespace A161734

/-- `A164031(n)-2*A081182(n)` -/
def P4165443540601476120.Spec : Prop :=
  ∀ n, P4165443540601476120.a n = A161734 n

end A161734

/-! ## A161734.P14576672831271658982

`2*A163346(n)-A164031(n)`
-/

namespace A161734.P14576672831271658982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163346 n - A164031 n

end

end A161734.P14576672831271658982

namespace A161734

/-- `2*A163346(n)-A164031(n)` -/
def P14576672831271658982.Spec : Prop :=
  ∀ n, P14576672831271658982.a n = A161734 n

end A161734

/-! ## A161734.P4664494740799881418

`A163616(n)-5*A081182(n)`
-/

namespace A161734.P4664494740799881418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163616 n - 5 * A081182 n

end

end A161734.P4664494740799881418

namespace A161734

/-- `A163616(n)-5*A081182(n)` -/
def P4664494740799881418.Spec : Prop :=
  ∀ n, P4664494740799881418.a n = A161734 n

end A161734

/-! ## A161734.P11629974353213234557

`Δ[A083880(n)/2]-A083880(n)`
-/

namespace A161734.P11629974353213234557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083880 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A083880 n : ℚ)

end

end A161734.P11629974353213234557

namespace A161734

/-- `Δ[A083880(n)/2]-A083880(n)` -/
def P11629974353213234557.Spec : Prop :=
  ∀ n, P11629974353213234557.a n = (A161734 n : ℚ)

end A161734

/-! ## A161734.P8517159484830320887

`A081182(n)+A164035(n)-A164031(n)`
-/

namespace A161734.P8517159484830320887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + (A164035 n - A164031 n)

end

end A161734.P8517159484830320887

namespace A161734

/-- `A081182(n)+A164035(n)-A164031(n)` -/
def P8517159484830320887.Spec : Prop :=
  ∀ n, P8517159484830320887.a n = A161734 n

end A161734

/-! ## A161734.P15204047348244138477

`A164035(n+1)%A164035(n)`
-/

namespace A161734.P15204047348244138477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164035 (n + 1)) (A164035 n)

end

end A161734.P15204047348244138477

namespace A161734

/-- `A164035(n+1)%A164035(n)` -/
def P15204047348244138477.Spec : Prop :=
  ∀ n, P15204047348244138477.a n = A161734 n

end A161734

/-!
# A161735: Primes that are the difference between a fourth power and a positive cube.

The programs for A161735, there is no canonical definition to state claims against.
-/

/-! ## A161735.P14510790278673202697

`p?[A157615(A133223(n+1))+∑[n]]`
-/

namespace A161735.P14510790278673202697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157615 (A133223 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161735.P14510790278673202697

/-!
# A161736: Denominators of the column sums of the BG2 matrix.

The programs for A161736, the canonical program `A161736.P11030662327704331817` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161736 has offset 2).

The definition of A161736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161736.P11030662327704331817

`A001902(2*(n+2)-3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161736

/-- `A001902(2*(n+2)-3)` -/
def P11030662327704331817.Spec : Prop :=
  ∀ n, P11030662327704331817.a n = A161736 (n + 2)

theorem P11030662327704331817.correct : P11030662327704331817.Spec := by
  intro n
  simp only [A161736, Nat.add_sub_cancel]

end A161736

/-! ## A161736.P7061296374140501811

`A239225(2*(n+1))`
-/

namespace A161736.P7061296374140501811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239225 (2 * (n + 1))

end

end A161736.P7061296374140501811

namespace A161736

/-- `A239225(2*(n+1))` -/
def P7061296374140501811.Spec : Prop :=
  ∀ n, P7061296374140501811.a n = A161736 (n + 2)

end A161736

/-! ## A161736.P10413001028927051032

`A380949(2*(n+1))`
-/

namespace A161736.P10413001028927051032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380949 (2 * (n + 1))

end

end A161736.P10413001028927051032

namespace A161736

/-- `A380949(2*(n+1))` -/
def P10413001028927051032.Spec : Prop :=
  ∀ n, P10413001028927051032.a n = A161736 (n + 2)

end A161736

/-! ## A161736.P15875013843694987131

`lcm(2, A001902(2*n+1))/2`
-/

namespace A161736.P15875013843694987131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001902 (2 * n + 1)) : ℚ) / 2

end

end A161736.P15875013843694987131

namespace A161736

/-- `lcm(2, A001902(2*n+1))/2` -/
def P15875013843694987131.Spec : Prop :=
  ∀ n, P15875013843694987131.a n = (A161736 (n + 2) : ℚ)

end A161736

/-! ## A161736.P12257945126228255281

`A001790(n+1)*A001803(n)`
-/

namespace A161736.P12257945126228255281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (n + 1) * A001803 n

end

end A161736.P12257945126228255281

namespace A161736

/-- `A001790(n+1)*A001803(n)` -/
def P12257945126228255281.Spec : Prop :=
  ∀ n, P12257945126228255281.a n = A161736 (n + 2)

end A161736

/-! ## A161736.P4773960243326999200

`sqrt(A038534(n+1))*A001803(n)`
-/

namespace A161736.P4773960243326999200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038534 (n + 1) : ℝ) * (A001803 n : ℝ)

end

end A161736.P4773960243326999200

namespace A161736

/-- `sqrt(A038534(n+1))*A001803(n)` -/
def P4773960243326999200.Spec : Prop :=
  ∀ n, P4773960243326999200.a n = (A161736 (n + 2) : ℝ)

end A161736

/-! ## A161736.P6784331178703437325

`A000265(n+1)*A038534(n+1)`
-/

namespace A161736.P6784331178703437325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A038534 (n + 1)

end

end A161736.P6784331178703437325

namespace A161736

/-- `A000265(n+1)*A038534(n+1)` -/
def P6784331178703437325.Spec : Prop :=
  ∀ n, P6784331178703437325.a n = A161736 (n + 2)

end A161736

/-! ## A161736.P13791815345210047791

`A001803(n)*A004730(2*n+1)`
-/

namespace A161736.P13791815345210047791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A004730 (2 * n + 1)

end

end A161736.P13791815345210047791

namespace A161736

/-- `A001803(n)*A004730(2*n+1)` -/
def P13791815345210047791.Spec : Prop :=
  ∀ n, P13791815345210047791.a n = A161736 (n + 2)

end A161736

/-! ## A161736.P14956827057248609269

`A001803(n)*A004734(2*n+1)`
-/

namespace A161736.P14956827057248609269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A004734 (2 * n + 1)

end

end A161736.P14956827057248609269

namespace A161736

/-- `A001803(n)*A004734(2*n+1)` -/
def P14956827057248609269.Spec : Prop :=
  ∀ n, P14956827057248609269.a n = A161736 (n + 2)

end A161736

/-! ## A161736.P14332539968171446748

`A001803(n)*A036069(2*(n+1))`
-/

namespace A161736.P14332539968171446748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A036069 (2 * (n + 1))

end

end A161736.P14332539968171446748

namespace A161736

/-- `A001803(n)*A036069(2*(n+1))` -/
def P14332539968171446748.Spec : Prop :=
  ∀ n, P14332539968171446748.a n = A161736 (n + 2)

end A161736

/-!
# A161737: Numerators of the column sums of the BG2 matrix.

The programs for A161737, there is no canonical definition to state claims against.
-/

/-! ## A161737.P18310723122314197144

`record[∏[gcd(2^n, ∑[2*n])]^(n%2)]`
-/

namespace A161737.P18310723122314197144
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ n) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161737.P18310723122314197144

/-! ## A161737.P17355462017571117334

`A380950(2*n)`
-/

namespace A161737.P17355462017571117334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380950 (2 * n)

end

end A161737.P17355462017571117334

/-! ## A161737.P4072417604231637515

`A001901(comp[2*(n+1)])`
-/

namespace A161737.P4072417604231637515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A161737.P4072417604231637515

/-! ## A161737.P2453044104830929225

`∏[gcd(2*n, 2^n)]*A380909(A004275(n))`
-/

namespace A161737.P2453044104830929225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A380909 (A004275 n).toNat

end

end A161737.P2453044104830929225

/-! ## A161737.P5061609199656405729

`A046161(n)*A380909(A004275(n))`
-/

namespace A161737.P5061609199656405729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A380909 (A004275 n).toNat

end

end A161737.P5061609199656405729

/-! ## A161737.P9197882189473463378

`2^A077070(∑[n])*A380909(A004275(n))`
-/

namespace A161737.P9197882189473463378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A077070 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * (A380909 (A004275 n).toNat : ℚ)

end

end A161737.P9197882189473463378

/-! ## A161737.P11479533599521554574

`A144816(2*n²)`
-/

namespace A161737.P11479533599521554574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144816 (2 * n ^ 2)

end

end A161737.P11479533599521554574

/-! ## A161737.P10594477876095319570

`record[A000122(2*(n+1))^A077070(n)]`
-/

namespace A161737.P10594477876095319570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (2 * (n + 1)) : ℚ) ^ (A077070 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161737.P10594477876095319570

/-!
# A161738: Sequence related to the column sums of the BG2 matrix.

The programs for A161738, there is no canonical definition to state claims against.
-/

/-! ## A161738.P16589628395867724526

`∏[abs(1-2*n)]/∏[gcd(1-n, n%2)]`
-/

namespace A161738.P16589628395867724526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A161738.P16589628395867724526

/-! ## A161738.P3875478956626308015

`∏[abs(1-2*n)]/A133221(n)`
-/

namespace A161738.P3875478956626308015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A133221 n : ℚ)

end

end A161738.P3875478956626308015

/-! ## A161738.P15513993264444246133

`floor(A001147(n)/∏[gcd(1-n, n%2)])`
-/

namespace A161738.P15513993264444246133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001147 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A161738.P15513993264444246133

/-! ## A161738.P3134552857455119904

`∏[abs(1-2*n)]/A001147(floor(n/2))`
-/

namespace A161738.P3134552857455119904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001147 ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A161738.P3134552857455119904

/-! ## A161738.P9840968392467697616

`floor(A001147(n)/A133221(n))`
-/

namespace A161738.P9840968392467697616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001147 n : ℚ) / (A133221 n : ℚ)⌋

end

end A161738.P9840968392467697616

/-! ## A161738.P17322152750660857075

`abs(Δ[A076795(n)]/A133221(n))`
-/

namespace A161738.P17322152750660857075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076795 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A133221 n : ℚ)|

end

end A161738.P17322152750660857075

/-! ## A161738.P17269345768913130120

`floor(A102625(∑[n])/A133221(n))`
-/

namespace A161738.P17269345768913130120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102625 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A133221 n : ℚ)⌋

end

end A161738.P17269345768913130120

/-! ## A161738.P14336974820269789129

`floor(A334823(∑[n])/A133221(n))`
-/

namespace A161738.P14336974820269789129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334823 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A133221 n : ℚ)⌋

end

end A161738.P14336974820269789129

/-! ## A161738.P5210535351887401119

`round(A001497(∑[n])/A133221(n))`
-/

namespace A161738.P5210535351887401119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001497 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A133221 n : ℚ))

end

end A161738.P5210535351887401119

/-! ## A161738.P11400470080883191917

`floor(A133221(2*n)/A133221(n))`
-/

namespace A161738.P11400470080883191917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133221 (2 * n) : ℚ) / (A133221 n : ℚ)⌋

end

end A161738.P11400470080883191917

/-!
# A161739: The RSEG2 triangle.

The programs for A161739, there is no canonical definition to state claims against.
-/

/-! ## A161739.P2393549275616817136

`A058710(n)-A058710(A267197(n+1))`
-/

namespace A161739.P2393549275616817136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 n - A058710 (A267197 (n + 1)).toNat

end

end A161739.P2393549275616817136

/-! ## A161739.P15353212972541528611

`A058710(n)-A309395(A199101(n+1))`
-/

namespace A161739.P15353212972541528611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 n - A309395 (A199101 (n + 1)).toNat

end

end A161739.P15353212972541528611

/-! ## A161739.P18028813969309572122

`A018468(n+1)%A143123(A071675(n))`
-/

namespace A161739.P18028813969309572122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018468 (n + 1)) (A143123 (A071675 n).toNat)

end

end A161739.P18028813969309572122

/-! ## A161739.P8504735909458077591

`A058710(n)-A055641(A011782(n))`
-/

namespace A161739.P8504735909458077591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 n - A055641 (A011782 n).toNat

end

end A161739.P8504735909458077591

/-! ## A161739.P9054320557886426590

`A003462(A071675(n)%A336659(n+3))`
-/

namespace A161739.P9054320557886426590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (Int.tmod (A071675 n) (A336659 (n + 3))).toNat

end

end A161739.P9054320557886426590

/-!
# A161740: Fourth right hand column of the RSEG2 triangle A161739.

The programs for A161740, there is no canonical definition to state claims against.
-/

/-! ## A161740.P17148318961185092293

`A161739(Δ[A264443(n)])`
-/

namespace A161740.P17148318961185092293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (f1 (n + 1) - f1 n).toNat

end

end A161740.P17148318961185092293

/-! ## A161740.P14580848885347032733

`A161739(A046691(n+3))`
-/

namespace A161740.P14580848885347032733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (A046691 (n + 3)).toNat

end

end A161740.P14580848885347032733

/-!
# A161741: Fifth right hand column of the RSEG2 triangle A161739.

The programs for A161741, there is no canonical definition to state claims against.
-/

/-! ## A161741.P3943963259212024172

`A161739(A052905(n+3))`
-/

namespace A161741.P3943963259212024172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (A052905 (n + 3)).toNat

end

end A161741.P3943963259212024172

/-!
# A161742: Third left hand column of the RSEG2 triangle A161739.

The programs for A161742, there is no canonical definition to state claims against.
-/

/-! ## A161742.P4922008580636194210

`A161739(∑[n+2]+3)`
-/

namespace A161742.P4922008580636194210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A161742.P4922008580636194210

/-! ## A161742.P14600202473156335150

`A161739(A340266(n+1))+A101637(n+1)`
-/

namespace A161742.P14600202473156335150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (A340266 (n + 1)).toNat + A101637 (n + 1)

end

end A161742.P14600202473156335150

/-! ## A161742.P2159833892394360670

`A212619(n+1)+A161739(A340266(n+1))`
-/

namespace A161742.P2159833892394360670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + A161739 (A340266 (n + 1)).toNat

end

end A161742.P2159833892394360670

/-! ## A161742.P16981997581281445442

`A121041(n+1)*A161739(A340266(n+1))`
-/

namespace A161742.P16981997581281445442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1) * A161739 (A340266 (n + 1)).toNat

end

end A161742.P16981997581281445442

/-!
# A161743: Fourth left hand column of the RSEG2 triangle A161739.

The programs for A161743, there is no canonical definition to state claims against.
-/

/-! ## A161743.P10769564220100579727

`A161739(A167614(n+2))`
-/

namespace A161743.P10769564220100579727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (A167614 (n + 2)).toNat

end

end A161743.P10769564220100579727

/-! ## A161743.P13631344128687978148

`A161739(A141214(n)+6)`
-/

namespace A161743.P13631344128687978148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (A141214 n + 6).toNat

end

end A161743.P13631344128687978148

/-! ## A161743.P1441030841970719870

`A161739(A052905(n)+8)`
-/

namespace A161743.P1441030841970719870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161739 (A052905 n + 8).toNat

end

end A161743.P1441030841970719870

/-!
# A161744: The subfactorial with index prime(n).

The programs for A161744, the canonical program `A161744.P5231681236444858033` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161744 has offset 1).

The definition of A161744 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161744.P5231681236444858033

`A000166(A000040(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161744

/-- `A000166(A000040(n+1))` -/
def P5231681236444858033.Spec : Prop :=
  ∀ n, P5231681236444858033.a n = A161744 (n + 1)

theorem P5231681236444858033.correct : P5231681236444858033.Spec := by
  intro n
  simp only [A161744, Nat.add_sub_cancel]

end A161744

/-! ## A161744.P5141048777225108878

`A000166(p?[comp[n²]])`
-/

namespace A161744.P5141048777225108878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A161744.P5141048777225108878

namespace A161744

/-- `A000166(p?[comp[n²]])` -/
def P5141048777225108878.Spec : Prop :=
  ∀ n, P5141048777225108878.a n = A161744 (n + 1)

end A161744

/-! ## A161744.P5561607559216883300

`A008290(A034953(n+1))`
-/

namespace A161744.P5561607559216883300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A034953 (n + 1)).toNat

end

end A161744.P5561607559216883300

namespace A161744

/-- `A008290(A034953(n+1))` -/
def P5561607559216883300.Spec : Prop :=
  ∀ n, P5561607559216883300.a n = A161744 (n + 1)

end A161744

/-! ## A161744.P13712003324315550194

`A122974(A072205(n+1))`
-/

namespace A161744.P13712003324315550194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122974 (A072205 (n + 1)).toNat

end

end A161744.P13712003324315550194

namespace A161744

/-- `A122974(A072205(n+1))` -/
def P13712003324315550194.Spec : Prop :=
  ∀ n, P13712003324315550194.a n = A161744 (n + 1)

end A161744

/-! ## A161744.P8484011298038067518

`A000166(A008864(n+1)-1)`
-/

namespace A161744.P8484011298038067518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A008864 (n + 1) - 1).toNat

end

end A161744.P8484011298038067518

namespace A161744

/-- `A000166(A008864(n+1)-1)` -/
def P8484011298038067518.Spec : Prop :=
  ∀ n, P8484011298038067518.a n = A161744 (n + 1)

end A161744

/-!
# A161745: The subfactorial with index Fibonacci(n).

The programs for A161745, the canonical program `A161745.P16620163924537964088` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161745 has offset 0).

The definition of A161745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161745.P16620163924537964088

`A000166(A000045(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161745

/-- `A000166(A000045(n))` -/
def P16620163924537964088.Spec : Prop :=
  ∀ n, P16620163924537964088.a n = A161745 n

theorem P16620163924537964088.correct : P16620163924537964088.Spec := by
  intro n
  simp only [A161745]

end A161745

/-! ## A161745.P12872869530881088673

`A000166(∑[round(ϕ*a(n-1))])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A161745.P12872869530881088673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161745.P12872869530881088673

namespace A161745

/-- `A000166(∑[round(ϕ*a(n-1))])` -/
def P12872869530881088673.Spec : Prop :=
  ∀ n, P12872869530881088673.a n = A161745 n

end A161745

/-! ## A161745.P15453872082000088205

`A008290(A033192(n))`
-/

namespace A161745.P15453872082000088205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A033192 n).toNat

end

end A161745.P15453872082000088205

namespace A161745

/-- `A008290(A033192(n))` -/
def P15453872082000088205.Spec : Prop :=
  ∀ n, P15453872082000088205.a n = A161745 n

end A161745

/-! ## A161745.P4939572878147219089

`A211229(A229912(n))`
-/

namespace A161745.P4939572878147219089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211229 (A229912 n).toNat

end

end A161745.P4939572878147219089

namespace A161745

/-- `A211229(A229912(n))` -/
def P4939572878147219089.Spec : Prop :=
  ∀ n, P4939572878147219089.a n = A161745 n

end A161745

/-!
# A161746: The number of equivalence classes of n-leaf binary trees with respect to contiguous pattern avoidance.

The programs for A161746, there is no canonical definition to state claims against.
-/

/-! ## A161746.P14056825257218403583

`A280951(A173534(n+1))`
-/

namespace A161746.P14056825257218403583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A173534 (n + 1)).toNat

end

end A161746.P14056825257218403583

/-! ## A161746.P7675345396924035538

`A279012(A320788(n+4))`
-/

namespace A161746.P7675345396924035538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279012 (A320788 (n + 4)).toNat

end

end A161746.P7675345396924035538

/-! ## A161746.P3753296639163766294

`A392609(n+1)+A360708(n)`
-/

namespace A161746.P3753296639163766294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392609 (n + 1) + A360708 n

end

end A161746.P3753296639163766294

/-! ## A161746.P10896982421106097154

`A360708(n)+A066520(2*(n+1))`
-/

namespace A161746.P10896982421106097154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360708 n + A066520 (2 * (n + 1))

end

end A161746.P10896982421106097154

/-! ## A161746.P13537750615904079271

`A109701(A341455(3*(n+3))+∑[n-char[2]])`
-/

namespace A161746.P13537750615904079271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (A341455 (3 * (n + 3)) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161746.P13537750615904079271

/-!
# A161748: Smallest prime in the set of primes of the form x^n - y^(n-1), 1<=x, 1<=y.

The programs for A161748, there is no canonical definition to state claims against.
-/

/-! ## A161748.P7413513760863994454

`A066889(A216623(n!))`
-/

namespace A161748.P7413513760863994454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066889 (A216623 (Nat.factorial n)).toNat

end

end A161748.P7413513760863994454

/-! ## A161748.P7629625281694495608

`p?[∑[A094707(A208510(n+1))]]`
-/

namespace A161748.P7629625281694495608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (A208510 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161748.P7629625281694495608

/-!
# A161750: Numbers n such that the decimal digits of 123456789*n are all distinct.

The programs for A161750, there is no canonical definition to state claims against.
-/

/-! ## A161750.P16016974463276511959

`lt[∑{digits}[n, #], (gcd(3, n)-4)²]`
-/

namespace A161750.P16016974463276511959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 3 n : ℤ) - 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A161750.P16016974463276511959

/-! ## A161750.P1653249048285452308

`eq[n-9*floor(n/10), (n^7)%9]`
-/

namespace A161750.P1653249048285452308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7 % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A161750.P1653249048285452308

/-! ## A161750.P10788713819428799487

`eq[n-9*floor(n/10), dr(lcm(9, n)/9)]`
-/

namespace A161750.P10788713819428799487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A161750.P10788713819428799487

/-! ## A161750.P16625953010177553183

`eq[n-9*floor(n/10), dr(n*n²%3)]`
-/

namespace A161750.P16625953010177553183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n * (n ^ 2 % 3) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A161750.P16625953010177553183

/-! ## A161750.P172498228245537798

`record[A319657(lcm(9, n))]`
-/

namespace A161750.P172498228245537798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (Nat.lcm 9 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161750.P172498228245537798

/-!
# A161751: Digital root of Abelian numbers (A051532).

The programs for A161751, there is no canonical definition to state claims against.
-/

/-! ## A161751.P8799209756571025526

`dr(A051532(n+1))`
-/

namespace A161751.P8799209756571025526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051532 (n + 1))

end

end A161751.P8799209756571025526

/-! ## A161751.P15664382678406572168

`dr(record[A051532(A324347(n))])`
-/

namespace A161751.P15664382678406572168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (A324347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A161751.P15664382678406572168

/-! ## A161751.P5449901889698684328

`A010888(A051532(n+1)+9)`
-/

namespace A161751.P5449901889698684328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A051532 (n + 1) + 9).toNat

end

end A161751.P5449901889698684328

/-! ## A161751.P7334039690412548653

`dr(record[A051532(A065648(n))])`
-/

namespace A161751.P7334039690412548653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (A065648 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A161751.P7334039690412548653

/-! ## A161751.P11846377925631499591

`dr(record[A059806(n+1)])`
-/

namespace A161751.P11846377925631499591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A161751.P11846377925631499591

/-! ## A161751.P15455495045056723955

`dr(eq[1, A059807(n+1)]+1)`
-/

namespace A161751.P15455495045056723955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A161751.P15455495045056723955

/-! ## A161751.P12129934877370990430

`dr(eq[n, A059806(A028310(n))])`
-/

namespace A161751.P12129934877370990430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A161751.P12129934877370990430

/-! ## A161751.P5926359483286770940

`dr(eq[1, A060938(n+1)]+1)`
-/

namespace A161751.P5926359483286770940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A161751.P5926359483286770940

/-! ## A161751.P12540831633281130066

`dr(record[A060653(n+1)])`
-/

namespace A161751.P12540831633281130066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A161751.P12540831633281130066

/-! ## A161751.P8080421665218838844

`dr(eq[1, A241276(n+1)]+1)`
-/

namespace A161751.P8080421665218838844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A161751.P8080421665218838844

/-!
# A161753: Squares of nonprime numbers A141468.

The programs for A161753, the canonical program `A161753.P17172365697063617890` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161753 has offset 1).

The definition of A161753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161753.P13007374495829511125

`comp[p?[xor(1, n)]]²`
-/

namespace A161753.P13007374495829511125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A161753.P13007374495829511125

namespace A161753

/-- `comp[p?[xor(1, n)]]²` -/
def P13007374495829511125.Spec : Prop :=
  ∀ n, (P13007374495829511125.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P289229233921631396

`comp[A060264(n)]²`
-/

namespace A161753.P289229233921631396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P289229233921631396

namespace A161753

/-- `comp[A060264(n)]²` -/
def P289229233921631396.Spec : Prop :=
  ∀ n, (P289229233921631396.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P5422177782278409343

`comp[A134204(n)]²`
-/

namespace A161753.P5422177782278409343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P5422177782278409343

namespace A161753

/-- `comp[A134204(n)]²` -/
def P5422177782278409343.Spec : Prop :=
  ∀ n, (P5422177782278409343.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P12811930152601140582

`comp[A151800(n)]²`
-/

namespace A161753.P12811930152601140582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P12811930152601140582

namespace A161753

/-- `comp[A151800(n)]²` -/
def P12811930152601140582.Spec : Prop :=
  ∀ n, (P12811930152601140582.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P15620143337371634951

`comp[A162753(n)]²`
-/

namespace A161753.P15620143337371634951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P15620143337371634951

namespace A161753

/-- `comp[A162753(n)]²` -/
def P15620143337371634951.Spec : Prop :=
  ∀ n, (P15620143337371634951.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P10255763300494341580

`A141468(n+1)²`
-/

namespace A161753.P10255763300494341580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) ^ 2

end

end A161753.P10255763300494341580

namespace A161753

/-- `A141468(n+1)²` -/
def P10255763300494341580.Spec : Prop :=
  ∀ n, P10255763300494341580.a n = A161753 (n + 1)

end A161753

/-! ## A161753.P17172365697063617890

`∑{d}[n, A361709(#)]²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161753

/-- `∑{d}[n, A361709(#)]²` -/
def P17172365697063617890.Spec : Prop :=
  ∀ n, P17172365697063617890.a n = A161753 (n + 1)

theorem P17172365697063617890.correct : P17172365697063617890.Spec := by
  intro n
  simp only [A161753, Nat.add_sub_cancel]

end A161753

/-! ## A161753.P12000794123337601702

`comp[Δ[A007504(n)]]²`
-/

namespace A161753.P12000794123337601702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P12000794123337601702

namespace A161753

/-- `comp[Δ[A007504(n)]]²` -/
def P12000794123337601702.Spec : Prop :=
  ∀ n, (P12000794123337601702.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P1205299746829538983

`comp[p?[A005206(n)]]²`
-/

namespace A161753.P1205299746829538983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P1205299746829538983

namespace A161753

/-- `comp[p?[A005206(n)]]²` -/
def P1205299746829538983.Spec : Prop :=
  ∀ n, (P1205299746829538983.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P2497645285321291771

`comp[A000040(n+1)]²`
-/

namespace A161753.P2497645285321291771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P2497645285321291771

namespace A161753

/-- `comp[A000040(n+1)]²` -/
def P2497645285321291771.Spec : Prop :=
  ∀ n, (P2497645285321291771.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P7077630313284379073

`comp[A006530(n+2)]²`
-/

namespace A161753.P7077630313284379073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P7077630313284379073

namespace A161753

/-- `comp[A006530(n+2)]²` -/
def P7077630313284379073.Spec : Prop :=
  ∀ n, (P7077630313284379073.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P7791701348192765344

`comp[A020639(n+2)]²`
-/

namespace A161753.P7791701348192765344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P7791701348192765344

namespace A161753

/-- `comp[A020639(n+2)]²` -/
def P7791701348192765344.Spec : Prop :=
  ∀ n, (P7791701348192765344.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P16618052193078988750

`(A176100(n+1)/2)²`
-/

namespace A161753.P16618052193078988750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A176100 (n + 1) : ℚ) / 2) ^ 2

end

end A161753.P16618052193078988750

namespace A161753

/-- `(A176100(n+1)/2)²` -/
def P16618052193078988750.Spec : Prop :=
  ∀ n, P16618052193078988750.a n = (A161753 (n + 1) : ℚ)

end A161753

/-! ## A161753.P14744675848058017053

`(A173073(n+1)+n)²`
-/

namespace A161753.P14744675848058017053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173073 (n + 1) + (n : ℤ)) ^ 2

end

end A161753.P14744675848058017053

namespace A161753

/-- `(A173073(n+1)+n)²` -/
def P14744675848058017053.Spec : Prop :=
  ∀ n, P14744675848058017053.a n = A161753 (n + 1)

end A161753

/-! ## A161753.P625235490677950568

`∪[A018252(n+1), n²]²`
-/

namespace A161753.P625235490677950568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n ^ 2

end

end A161753.P625235490677950568

namespace A161753

/-- `∪[A018252(n+1), n²]²` -/
def P625235490677950568.Spec : Prop :=
  ∀ n, (P625235490677950568.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P13782994569438736611

`comp[record[A000010(n+1)+1]]²`
-/

namespace A161753.P13782994569438736611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P13782994569438736611

namespace A161753

/-- `comp[record[A000010(n+1)+1]]²` -/
def P13782994569438736611.Spec : Prop :=
  ∀ n, (P13782994569438736611.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P9467202479368669752

`∪[n², A018252(2*n-(n-1))]²`
-/

namespace A161753.P9467202479368669752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A161753.P9467202479368669752

namespace A161753

/-- `∪[n², A018252(2*n-(n-1))]²` -/
def P9467202479368669752.Spec : Prop :=
  ∀ n, (P9467202479368669752.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P1833922610748779077

`∪[A062312(n+1), A000583(n)]`
-/

namespace A161753.P1833922610748779077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161753.P1833922610748779077

namespace A161753

/-- `∪[A062312(n+1), A000583(n)]` -/
def P1833922610748779077.Spec : Prop :=
  ∀ n, (P1833922610748779077.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P13830919991594431016

`comp[A088732(n)]²`
-/

namespace A161753.P13830919991594431016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P13830919991594431016

namespace A161753

/-- `comp[A088732(n)]²` -/
def P13830919991594431016.Spec : Prop :=
  ∀ n, (P13830919991594431016.a n : ℤ) = A161753 (n + 1)

end A161753

/-! ## A161753.P18033089870850284637

`comp[p?[A003188(n)]]²`
-/

namespace A161753.P18033089870850284637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A161753.P18033089870850284637

namespace A161753

/-- `comp[p?[A003188(n)]]²` -/
def P18033089870850284637.Spec : Prop :=
  ∀ n, (P18033089870850284637.a n : ℤ) = A161753 (n + 1)

end A161753

/-!
# A161754: a(n) = sum of all nonprimes from nonprime(p) to nonprime(q) where p is nonprime(n+1) and q is nonprime(n+2).

The programs for A161754, the canonical program `A161754.P16252943337925215701` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161754 has offset 1).

The definition of A161754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161754.P16252943337925215701

`A175967(A002808(n+1))-A175967(A060462(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A161754

/-- `A175967(A002808(n+1))-A175967(A060462(n+1))` -/
def P16252943337925215701.Spec : Prop :=
  ∀ n, P16252943337925215701.a n = A161754 (n + 1)

theorem P16252943337925215701.correct : P16252943337925215701.Spec := by
  intro n
  simp only [A161754, Nat.add_sub_cancel]

end A161754

/-!
# A161755: Number of reduced words of length n in the Weyl group B_10.

The programs for A161755, there is no canonical definition to state claims against.
-/

/-! ## A161755.P12993933509513279684

`A162248(A096582(n+1))+A162248(n)`
-/

namespace A161755.P12993933509513279684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162248 (A096582 (n + 1)).toNat + A162248 n

end

end A161755.P12993933509513279684

/-!
# A161756: The sum of all numbers from n up to A002808(n)-3.

The programs for A161756, the canonical program `A161756.P14246026735596547033` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161756 has offset 1).

The definition of A161756 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161756.P14246026735596547033

`A000217(A002808(n+1)-3)-A000217(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161756

/-- `A000217(A002808(n+1)-3)-A000217(n)` -/
def P14246026735596547033.Spec : Prop :=
  ∀ n, P14246026735596547033.a n = A161756 (n + 1)

theorem P14246026735596547033.correct : P14246026735596547033.Spec := by
  intro n
  simp only [A161756, Nat.add_sub_cancel]

end A161756

/-! ## A161756.P6884071977848066912

`A000217(A018252(n+2)-3)-A000217(n)`
-/

namespace A161756.P6884071977848066912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A018252 (n + 2) - 3).toNat - A000217 n

end

end A161756.P6884071977848066912

namespace A161756

/-- `A000217(A018252(n+2)-3)-A000217(n)` -/
def P6884071977848066912.Spec : Prop :=
  ∀ n, P6884071977848066912.a n = A161756 (n + 1)

end A161756

/-! ## A161756.P5123809783654220977

`A080956(n+1)-A080956(A018252(n+2)-2)`
-/

namespace A161756.P5123809783654220977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (n + 1) - A080956 (A018252 (n + 2) - 2).toNat

end

end A161756.P5123809783654220977

namespace A161756

/-- `A080956(n+1)-A080956(A018252(n+2)-2)` -/
def P5123809783654220977.Spec : Prop :=
  ∀ n, P5123809783654220977.a n = A161756 (n + 1)

end A161756

/-! ## A161756.P1911170401783015113

`A161680(lt[A006530(n+2), n+1])-A161680(n+1)`
-/

namespace A161756.P1911170401783015113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - A161680 (n + 1)

end

end A161756.P1911170401783015113

namespace A161756

/-- `A161680(lt[A006530(n+2), n+1])-A161680(n+1)` -/
def P1911170401783015113.Spec : Prop :=
  ∀ n, P1911170401783015113.a n = A161756 (n + 1)

end A161756

/-! ## A161756.P2180367669656235668

`A161680(lt[2, A318474(n+2)])-A161680(n+1)`
-/

namespace A161756.P2180367669656235668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A161680 (n + 1)

end

end A161756.P2180367669656235668

namespace A161756

/-- `A161680(lt[2, A318474(n+2)])-A161680(n+1)` -/
def P2180367669656235668.Spec : Prop :=
  ∀ n, P2180367669656235668.a n = A161756 (n + 1)

end A161756

/-!
# A161757: a(n) = (prime(n))^2 - (nonprime(n))^2.

The programs for A161757, the canonical program `A161757.P7674081169120475587` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161757 has offset 1).

The definition of A161757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A161753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161757.P7674081169120475587

`A001248(n+1)-A161753(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161757

/-- `A001248(n+1)-A161753(n+1)` -/
def P7674081169120475587.Spec : Prop :=
  ∀ n, P7674081169120475587.a n = A161757 (n + 1)

theorem P7674081169120475587.correct : P7674081169120475587.Spec := by
  intro n
  simp only [A161757, Nat.add_sub_cancel]

end A161757

/-! ## A161757.P4499599270982252323

`A000040(n+1)²-A141468(n+1)²`
-/

namespace A161757.P4499599270982252323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P4499599270982252323

namespace A161757

/-- `A000040(n+1)²-A141468(n+1)²` -/
def P4499599270982252323.Spec : Prop :=
  ∀ n, P4499599270982252323.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P14130856659336562825

`A001248(n+1)-A141468(n+1)²`
-/

namespace A161757.P14130856659336562825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A141468 (n + 1) ^ 2

end

end A161757.P14130856659336562825

namespace A161757

/-- `A001248(n+1)-A141468(n+1)²` -/
def P14130856659336562825.Spec : Prop :=
  ∀ n, P14130856659336562825.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P9332704740842863963

`A000040(n+1)²-A161753(n+1)`
-/

namespace A161757.P9332704740842863963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A161753 (n + 1)

end

end A161757.P9332704740842863963

namespace A161757

/-- `A000040(n+1)²-A161753(n+1)` -/
def P9332704740842863963.Spec : Prop :=
  ∀ n, P9332704740842863963.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P12937227760748829021

`Δ[A007504(n)]²-A141468(n+1)²`
-/

namespace A161757.P12937227760748829021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P12937227760748829021

namespace A161757

/-- `Δ[A007504(n)]²-A141468(n+1)²` -/
def P12937227760748829021.Spec : Prop :=
  ∀ n, P12937227760748829021.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P8273589259066643322

`A000040(n+1)²-comp[A151800(n)]²`
-/

namespace A161757.P8273589259066643322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ)

end

end A161757.P8273589259066643322

namespace A161757

/-- `A000040(n+1)²-comp[A151800(n)]²` -/
def P8273589259066643322.Spec : Prop :=
  ∀ n, P8273589259066643322.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P1601546518292779069

`A001248(n+1)+A163602(n+1)-A062312(n+1)`
-/

namespace A161757.P1601546518292779069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A163602 (n + 1) - A062312 (n + 1))

end

end A161757.P1601546518292779069

namespace A161757

/-- `A001248(n+1)+A163602(n+1)-A062312(n+1)` -/
def P1601546518292779069.Spec : Prop :=
  ∀ n, P1601546518292779069.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P3082209615387559365

`(A141468(n+1)+A000040(n+1))*A161671(n+1)`
-/

namespace A161757.P3082209615387559365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) + A000040 (n + 1)) * A161671 (n + 1)

end

end A161757.P3082209615387559365

namespace A161757

/-- `(A141468(n+1)+A000040(n+1))*A161671(n+1)` -/
def P3082209615387559365.Spec : Prop :=
  ∀ n, P3082209615387559365.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P4595820330410189023

`A030078(n+1)/A000040(n+1)-A161753(n+1)`
-/

namespace A161757.P4595820330410189023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A161753 (n + 1) : ℚ)

end

end A161757.P4595820330410189023

namespace A161757

/-- `A030078(n+1)/A000040(n+1)-A161753(n+1)` -/
def P4595820330410189023.Spec : Prop :=
  ∀ n, P4595820330410189023.a n = (A161757 (n + 1) : ℚ)

end A161757

/-! ## A161757.P17252652940251175231

`A008578(n+2)²-A141468(n+1)²`
-/

namespace A161757.P17252652940251175231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P17252652940251175231

namespace A161757

/-- `A008578(n+2)²-A141468(n+1)²` -/
def P17252652940251175231.Spec : Prop :=
  ∀ n, P17252652940251175231.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P926465521188316928

`p?[A014681(n)]²-A141468(n+1)²`
-/

namespace A161757.P926465521188316928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P926465521188316928

namespace A161757

/-- `p?[A014681(n)]²-A141468(n+1)²` -/
def P926465521188316928.Spec : Prop :=
  ∀ n, P926465521188316928.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P8358280912755797514

`p?[A265734(n)]²-A141468(n+1)²`
-/

namespace A161757.P8358280912755797514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P8358280912755797514

namespace A161757

/-- `p?[A265734(n)]²-A141468(n+1)²` -/
def P8358280912755797514.Spec : Prop :=
  ∀ n, P8358280912755797514.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P18036583936857790396

`A000040(n+1)²-record[A113520(n+1)²]`
-/

namespace A161757.P18036583936857790396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161757.P18036583936857790396

namespace A161757

/-- `A000040(n+1)²-record[A113520(n+1)²]` -/
def P18036583936857790396.Spec : Prop :=
  ∀ n, P18036583936857790396.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P8243771140838355800

`p?[A001057(n)]²-A141468(n+1)²`
-/

namespace A161757.P8243771140838355800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P8243771140838355800

namespace A161757

/-- `p?[A001057(n)]²-A141468(n+1)²` -/
def P8243771140838355800.Spec : Prop :=
  ∀ n, P8243771140838355800.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P1024492061320939488

`p?[A006370(n)]²-A141468(n+1)²`
-/

namespace A161757.P1024492061320939488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P1024492061320939488

namespace A161757

/-- `p?[A006370(n)]²-A141468(n+1)²` -/
def P1024492061320939488.Spec : Prop :=
  ∀ n, P1024492061320939488.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P16794661810985943719

`p?[A057979(n)]²-A141468(n+1)²`
-/

namespace A161757.P16794661810985943719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P16794661810985943719

namespace A161757

/-- `p?[A057979(n)]²-A141468(n+1)²` -/
def P16794661810985943719.Spec : Prop :=
  ∀ n, P16794661810985943719.a n = A161757 (n + 1)

end A161757

/-! ## A161757.P3491992913210934529

`A025480(A100484(n+1))²-A141468(n+1)²`
-/

namespace A161757.P3491992913210934529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A100484 (n + 1)).toNat ^ 2 - A141468 (n + 1) ^ 2

end

end A161757.P3491992913210934529

namespace A161757

/-- `A025480(A100484(n+1))²-A141468(n+1)²` -/
def P3491992913210934529.Spec : Prop :=
  ∀ n, P3491992913210934529.a n = A161757 (n + 1)

end A161757

/-!
# A161758: a(n)=n-p+1 where p is the maximal prime less than n-2.

The programs for A161758, the canonical program `A161758.P18294308549773577487` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161758 has offset 5).

The definition of A161758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161758.P18294308549773577487

`A175851(n+2)+3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161758

/-- `A175851(n+2)+3` -/
def P18294308549773577487.Spec : Prop :=
  ∀ n, P18294308549773577487.a n = A161758 (n + 5)

theorem P18294308549773577487.correct : P18294308549773577487.Spec := by
  intro n
  simp only [A161758, Nat.add_sub_cancel]

end A161758

/-! ## A161758.P17789184944753368102

`A049711(n+3)+3`
-/

namespace A161758.P17789184944753368102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3) + 3

end

end A161758.P17789184944753368102

namespace A161758

/-- `A049711(n+3)+3` -/
def P17789184944753368102.Spec : Prop :=
  ∀ n, P17789184944753368102.a n = A161758 (n + 5)

end A161758

/-! ## A161758.P747589674633215978

`A308050(n+4)+2`
-/

namespace A161758.P747589674633215978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308050 (n + 4) + 2

end

end A161758.P747589674633215978

namespace A161758

/-- `A308050(n+4)+2` -/
def P747589674633215978.Spec : Prop :=
  ∀ n, P747589674633215978.a n = A161758 (n + 5)

end A161758

/-! ## A161758.P7002003036199768232

`A033557(n+3)-n`
-/

namespace A161758.P7002003036199768232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033557 (n + 3) - (n : ℤ)

end

end A161758.P7002003036199768232

namespace A161758

/-- `A033557(n+3)-n` -/
def P7002003036199768232.Spec : Prop :=
  ∀ n, P7002003036199768232.a n = A161758 (n + 5)

end A161758

/-! ## A161758.P1076692379045138038

`6-A007917(n+2)+n`
-/

namespace A161758.P1076692379045138038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A007917 (n + 2) + (n : ℤ)

end

end A161758.P1076692379045138038

namespace A161758

/-- `6-A007917(n+2)+n` -/
def P1076692379045138038.Spec : Prop :=
  ∀ n, P1076692379045138038.a n = A161758 (n + 5)

end A161758

/-! ## A161758.P6338975625629232451

`∑{d}[n+2, A305806(#)]+3`
-/

namespace A161758.P6338975625629232451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305806 d + 3

end

end A161758.P6338975625629232451

namespace A161758

/-- `∑{d}[n+2, A305806(#)]+3` -/
def P6338975625629232451.Spec : Prop :=
  ∀ n, P6338975625629232451.a n = A161758 (n + 5)

end A161758

/-! ## A161758.P17110065036113589460

`A009056(A308050(n+4))`
-/

namespace A161758.P17110065036113589460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A308050 (n + 4)).toNat

end

end A161758.P17110065036113589460

namespace A161758

/-- `A009056(A308050(n+4))` -/
def P17110065036113589460.Spec : Prop :=
  ∀ n, P17110065036113589460.a n = A161758 (n + 5)

end A161758

/-! ## A161758.P10387531843285628818

`A064722(n+2)+4`
-/

namespace A161758.P10387531843285628818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2) + 4

end

end A161758.P10387531843285628818

namespace A161758

/-- `A064722(n+2)+4` -/
def P10387531843285628818.Spec : Prop :=
  ∀ n, P10387531843285628818.a n = A161758 (n + 5)

end A161758

/-! ## A161758.P4647444123586638552

`A020705(A064722(n+2))`
-/

namespace A161758.P4647444123586638552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A064722 (n + 2)).toNat

end

end A161758.P4647444123586638552

namespace A161758

/-- `A020705(A064722(n+2))` -/
def P4647444123586638552.Spec : Prop :=
  ∀ n, P4647444123586638552.a n = A161758 (n + 5)

end A161758

/-!
# A161760: Composites with consecutive (ascending) digits.

The programs for A161760, there is no canonical definition to state claims against.
-/

/-! ## A161760.P9690832875826187659

`filter[A059043(n+2), A066247(#)]`
-/

namespace A161760.P9690832875826187659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A161760.P9690832875826187659

/-! ## A161760.P9964541271841658778

`filter[A059043(n+3), A005171(#)]`
-/

namespace A161760.P9964541271841658778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A161760.P9964541271841658778

/-! ## A161760.P5079358752868444914

`∩[A002808(n+1), A059043(n+1)]`
-/

namespace A161760.P5079358752868444914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161760.P5079358752868444914

/-! ## A161760.P13014049664905337255

`∩[A013920(n+1), A059043(n+1)]`
-/

namespace A161760.P13014049664905337255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161760.P13014049664905337255

/-!
# A161762: Sum of all numbers from and including Fibonacci(n-1) to and including Fibonacci(n).

The programs for A161762, the canonical program `A161762.P11490431972633667033` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161762 has offset 1).

The definition of A161762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161762.P11490431972633667033

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161762

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P11490431972633667033.Spec : Prop :=
  ∀ n, P11490431972633667033.a n = A161762 (n + 1)

theorem P11490431972633667033.correct : P11490431972633667033.Spec := by
  intro n
  simp only [A161762, Nat.add_sub_cancel]

end A161762

/-! ## A161762.P5715638885385367898

`A162460(n)+a(n-1)` with `a(0)=1`
-/

namespace A161762.P5715638885385367898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162460 n + a (n - 1)

end

end A161762.P5715638885385367898

namespace A161762

/-- `A162460(n)+a(n-1)` -/
def P5715638885385367898.Spec : Prop :=
  ∀ n, P5715638885385367898.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P16116305217462307307

`A005207(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A161762.P16116305217462307307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A005207 n + a (n - 2)

end

end A161762.P16116305217462307307

namespace A161762

/-- `A005207(n)+a(n-2)` -/
def P16116305217462307307.Spec : Prop :=
  ∀ n, P16116305217462307307.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P15571036349102490396

`a(n-1)+a(n-2)+A000045(n-1)²` with `a(0)=1, a(1)=1`
-/

namespace A161762.P15571036349102490396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + A000045 (n - 1) ^ 2)

end

end A161762.P15571036349102490396

namespace A161762

/-- `a(n-1)+a(n-2)+A000045(n-1)²` -/
def P15571036349102490396.Spec : Prop :=
  ∀ n, P15571036349102490396.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P413495705529808180

`∑[A033999(n)+A033192(n)]`
-/

namespace A161762.P413495705529808180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A033192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161762.P413495705529808180

namespace A161762

/-- `∑[A033999(n)+A033192(n)]` -/
def P413495705529808180.Spec : Prop :=
  ∀ n, P413495705529808180.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P12956421895416890829

`A059841(n)+∑[A033192(n)]`
-/

namespace A161762.P12956421895416890829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161762.P12956421895416890829

namespace A161762

/-- `A059841(n)+∑[A033192(n)]` -/
def P12956421895416890829.Spec : Prop :=
  ∀ n, P12956421895416890829.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P18092297006895717901

`A000045(n)+Δ[A033192(n)]`
-/

namespace A161762.P18092297006895717901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A161762.P18092297006895717901

namespace A161762

/-- `A000045(n)+Δ[A033192(n)]` -/
def P18092297006895717901.Spec : Prop :=
  ∀ n, P18092297006895717901.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P9731912454161516415

`A005207(n+1)-A007598(n)`
-/

namespace A161762.P9731912454161516415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A007598 n

end

end A161762.P9731912454161516415

namespace A161762

/-- `A005207(n+1)-A007598(n)` -/
def P9731912454161516415.Spec : Prop :=
  ∀ n, P9731912454161516415.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P6778050527282327684

`A033192(n+1)-A191797(n)`
-/

namespace A161762.P6778050527282327684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) - A191797 n

end

end A161762.P6778050527282327684

namespace A161762

/-- `A033192(n+1)-A191797(n)` -/
def P6778050527282327684.Spec : Prop :=
  ∀ n, P6778050527282327684.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P9136960443693137122

`Δ[A191797(n)+∑[A000045(n)]]`
-/

namespace A161762.P9136960443693137122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161762.P9136960443693137122

namespace A161762

/-- `Δ[A191797(n)+∑[A000045(n)]]` -/
def P9136960443693137122.Spec : Prop :=
  ∀ n, P9136960443693137122.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P2174746960603663285

`A005207(n+1)-A000045(n)²`
-/

namespace A161762.P2174746960603663285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A000045 n ^ 2

end

end A161762.P2174746960603663285

namespace A161762

/-- `A005207(n+1)-A000045(n)²` -/
def P2174746960603663285.Spec : Prop :=
  ∀ n, P2174746960603663285.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P3448449999682641793

`Δ[A191797(n)]+A000045(n+1)`
-/

namespace A161762.P3448449999682641793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (n + 1)

end

end A161762.P3448449999682641793

namespace A161762

/-- `Δ[A191797(n)]+A000045(n+1)` -/
def P3448449999682641793.Spec : Prop :=
  ∀ n, P3448449999682641793.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P12254774659301440574

`Δ[A191797(n)+A000071(n+2)]`
-/

namespace A161762.P12254774659301440574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161762.P12254774659301440574

namespace A161762

/-- `Δ[A191797(n)+A000071(n+2)]` -/
def P12254774659301440574.Spec : Prop :=
  ∀ n, P12254774659301440574.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P5584476390766280799

`A005207(n+1)-A212804(n+1)²`
-/

namespace A161762.P5584476390766280799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A212804 (n + 1) ^ 2

end

end A161762.P5584476390766280799

namespace A161762

/-- `A005207(n+1)-A212804(n+1)²` -/
def P5584476390766280799.Spec : Prop :=
  ∀ n, P5584476390766280799.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P13595053868768082667

`Δ[A191797(n)+A103609(2*(n+2))]`
-/

namespace A161762.P13595053868768082667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + A103609 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161762.P13595053868768082667

namespace A161762

/-- `Δ[A191797(n)+A103609(2*(n+2))]` -/
def P13595053868768082667.Spec : Prop :=
  ∀ n, P13595053868768082667.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P1647727594201707984

`∑[A162460(n+1)]+1-A162460(n+1)`
-/

namespace A161762.P1647727594201707984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A162460 (n + 1))

end

end A161762.P1647727594201707984

namespace A161762

/-- `∑[A162460(n+1)]+1-A162460(n+1)` -/
def P1647727594201707984.Spec : Prop :=
  ∀ n, P1647727594201707984.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P15891916274541426003

`A060312(A004280(n+1)+1)-A007598(n)`
-/

namespace A161762.P15891916274541426003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A004280 (n + 1) + 1).toNat - A007598 n

end

end A161762.P15891916274541426003

namespace A161762

/-- `A060312(A004280(n+1)+1)-A007598(n)` -/
def P15891916274541426003.Spec : Prop :=
  ∀ n, P15891916274541426003.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P8527187848684350144

`A032441(n+1)+A000045(n)-A032441(n)`
-/

namespace A161762.P8527187848684350144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032441 (n + 1) + (A000045 n - A032441 n)

end

end A161762.P8527187848684350144

namespace A161762

/-- `A032441(n+1)+A000045(n)-A032441(n)` -/
def P8527187848684350144.Spec : Prop :=
  ∀ n, P8527187848684350144.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P8399789951199049326

`A033192(n+1)+A000045(n)-A033192(n)`
-/

namespace A161762.P8399789951199049326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) + (A000045 n - A033192 n)

end

end A161762.P8399789951199049326

namespace A161762

/-- `A033192(n+1)+A000045(n)-A033192(n)` -/
def P8399789951199049326.Spec : Prop :=
  ∀ n, P8399789951199049326.a n = A161762 (n + 1)

end A161762

/-! ## A161762.P1846312752608642863

`A033192(n+1)+A212804(n+1)-A033192(n)`
-/

namespace A161762.P1846312752608642863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) + (A212804 (n + 1) - A033192 n)

end

end A161762.P1846312752608642863

namespace A161762

/-- `A033192(n+1)+A212804(n+1)-A033192(n)` -/
def P1846312752608642863.Spec : Prop :=
  ∀ n, P1846312752608642863.a n = A161762 (n + 1)

end A161762

/-!
# A161763: Product of the two primes with indices equal to the members of the n-th twin prime pair.

The programs for A161763, the canonical program `A161763.P7682725459275287043` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161763 has offset 1).

The definition of A161763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161763.P7682725459275287043

`A057470(n+1)*A057473(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A161763

/-- `A057470(n+1)*A057473(n+1)` -/
def P7682725459275287043.Spec : Prop :=
  ∀ n, P7682725459275287043.a n = A161763 (n + 1)

theorem P7682725459275287043.correct : P7682725459275287043.Spec := by
  intro n
  simp only [A161763, Nat.add_sub_cancel]

end A161763

/-! ## A161763.P4765925288242374378

`(A096474(n+1)+A057470(n+1))*A057470(n+1)`
-/

namespace A161763.P4765925288242374378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096474 (n + 1) + A057470 (n + 1)) * A057470 (n + 1)

end

end A161763.P4765925288242374378

namespace A161763

/-- `(A096474(n+1)+A057470(n+1))*A057470(n+1)` -/
def P4765925288242374378.Spec : Prop :=
  ∀ n, P4765925288242374378.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P9660737290261296495

`(A057473(n+1)-A096474(n+1))*A057473(n+1)`
-/

namespace A161763.P9660737290261296495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057473 (n + 1) - A096474 (n + 1)) * A057473 (n + 1)

end

end A161763.P9660737290261296495

namespace A161763

/-- `(A057473(n+1)-A096474(n+1))*A057473(n+1)` -/
def P9660737290261296495.Spec : Prop :=
  ∀ n, P9660737290261296495.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P320130756943253848

`A057470(n+1)/A001359(n+1)*A080700(n+1)`
-/

namespace A161763.P320130756943253848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057470 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ) * (A080700 (n + 1) : ℚ)

end

end A161763.P320130756943253848

namespace A161763

/-- `A057470(n+1)/A001359(n+1)*A080700(n+1)` -/
def P320130756943253848.Spec : Prop :=
  ∀ n, P320130756943253848.a n = (A161763 (n + 1) : ℚ)

end A161763

/-! ## A161763.P8201177517797089966

`A057470(n+1)/A006512(n+1)*A080701(n+1)`
-/

namespace A161763.P8201177517797089966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057470 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ) * (A080701 (n + 1) : ℚ)

end

end A161763.P8201177517797089966

namespace A161763

/-- `A057470(n+1)/A006512(n+1)*A080701(n+1)` -/
def P8201177517797089966.Spec : Prop :=
  ∀ n, P8201177517797089966.a n = (A161763 (n + 1) : ℚ)

end A161763

/-! ## A161763.P12984564626477471843

`A090076(A001359(n+1))`
-/

namespace A161763.P12984564626477471843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (A001359 (n + 1)).toNat

end

end A161763.P12984564626477471843

namespace A161763

/-- `A090076(A001359(n+1))` -/
def P12984564626477471843.Spec : Prop :=
  ∀ n, P12984564626477471843.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P5354759823684400814

`A176098(A006512(n+1))`
-/

namespace A161763.P5354759823684400814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (A006512 (n + 1)).toNat

end

end A161763.P5354759823684400814

namespace A161763

/-- `A176098(A006512(n+1))` -/
def P5354759823684400814.Spec : Prop :=
  ∀ n, P5354759823684400814.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P15180591525324997703

`A090076(A124588(n+2))`
-/

namespace A161763.P15180591525324997703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (A124588 (n + 2)).toNat

end

end A161763.P15180591525324997703

namespace A161763

/-- `A090076(A124588(n+2))` -/
def P15180591525324997703.Spec : Prop :=
  ∀ n, P15180591525324997703.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P3731730277190908687

`A176098(A067829(n+2))`
-/

namespace A161763.P3731730277190908687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (A067829 (n + 2)).toNat

end

end A161763.P3731730277190908687

namespace A161763

/-- `A176098(A067829(n+2))` -/
def P3731730277190908687.Spec : Prop :=
  ∀ n, P3731730277190908687.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P2020175155172381150

`A176098(A094743(n+2))`
-/

namespace A161763.P2020175155172381150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (A094743 (n + 2)).toNat

end

end A161763.P2020175155172381150

namespace A161763

/-- `A176098(A094743(n+2))` -/
def P2020175155172381150.Spec : Prop :=
  ∀ n, P2020175155172381150.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P13594418984561283447

`A090076(A181747(n+2))`
-/

namespace A161763.P13594418984561283447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (A181747 (n + 2)).toNat

end

end A161763.P13594418984561283447

namespace A161763

/-- `A090076(A181747(n+2))` -/
def P13594418984561283447.Spec : Prop :=
  ∀ n, P13594418984561283447.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P16405978195878322138

`A000040(A006512(n+1))*A057470(n+1)`
-/

namespace A161763.P16405978195878322138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006512 (n + 1)).toNat * A057470 (n + 1)

end

end A161763.P16405978195878322138

namespace A161763

/-- `A000040(A006512(n+1))*A057470(n+1)` -/
def P16405978195878322138.Spec : Prop :=
  ∀ n, P16405978195878322138.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P1918303502385837284

`A119658(A029707(n+1))`
-/

namespace A161763.P1918303502385837284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119658 (A029707 (n + 1)).toNat

end

end A161763.P1918303502385837284

namespace A161763

/-- `A119658(A029707(n+1))` -/
def P1918303502385837284.Spec : Prop :=
  ∀ n, P1918303502385837284.a n = A161763 (n + 1)

end A161763

/-! ## A161763.P1760534246881585252

`A333747(A108605(n+1))`
-/

namespace A161763.P1760534246881585252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (A108605 (n + 1)).toNat

end

end A161763.P1760534246881585252

namespace A161763

/-- `A333747(A108605(n+1))` -/
def P1760534246881585252.Spec : Prop :=
  ∀ n, P1760534246881585252.a n = A161763 (n + 1)

end A161763

/-!
# A161764: a(n) is the largest multiple of {the number of 1's in the binary representation of n} that is <= n.

The programs for A161764, the canonical program `A161764.P15797393649233863859` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161764 has offset 1).

The definition of A161764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161764.P15797393649233863859

`1-(n+1)%∑[1-val(n+1, 2)]+n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A161764

/-- `1-(n+1)%∑[1-val(n+1, 2)]+n` -/
def P15797393649233863859.Spec : Prop :=
  ∀ n, P15797393649233863859.a n = A161764 (n + 1)

theorem P15797393649233863859.correct : P15797393649233863859.Spec := by
  intro n
  simp only [A161764, Nat.add_sub_cancel]

end A161764

/-! ## A161764.P13272973460855842177

`1-A199238(n+1)+n`
-/

namespace A161764.P13272973460855842177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A199238 (n + 1) + (n : ℤ)

end

end A161764.P13272973460855842177

namespace A161764

/-- `1-A199238(n+1)+n` -/
def P13272973460855842177.Spec : Prop :=
  ∀ n, P13272973460855842177.a n = A161764 (n + 1)

end A161764

/-! ## A161764.P17743663341290330611

`n+1-(n+1)%A000120(n+1)`
-/

namespace A161764.P17743663341290330611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (n + 1 : ℤ) (A000120 (n + 1))

end

end A161764.P17743663341290330611

namespace A161764

/-- `n+1-(n+1)%A000120(n+1)` -/
def P17743663341290330611.Spec : Prop :=
  ∀ n, P17743663341290330611.a n = A161764 (n + 1)

end A161764

/-! ## A161764.P6892072538757822092

`A000120(n+1)*A135941(n+1)`
-/

namespace A161764.P6892072538757822092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * A135941 (n + 1)

end

end A161764.P6892072538757822092

namespace A161764

/-- `A000120(n+1)*A135941(n+1)` -/
def P6892072538757822092.Spec : Prop :=
  ∀ n, P6892072538757822092.a n = A161764 (n + 1)

end A161764

/-! ## A161764.P13248671759052294568

`(A000788(n+1)-A000788(n))*A135941(n+1)`
-/

namespace A161764.P13248671759052294568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000788 (n + 1) - A000788 n) * A135941 (n + 1)

end

end A161764.P13248671759052294568

namespace A161764

/-- `(A000788(n+1)-A000788(n))*A135941(n+1)` -/
def P13248671759052294568.Spec : Prop :=
  ∀ n, P13248671759052294568.a n = A161764 (n + 1)

end A161764

/-!
# A161765: a(n) is the smallest multiple of {the number of 1's in the binary representation of n} that is >= n.

The programs for A161765, the canonical program `A161765.P724116838241174089` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161765 has offset 1).

The definition of A161765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161765.P724116838241174089

`A000120(n+1)*ceil((n+1)/A000120(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161765

/-- `A000120(n+1)*ceil((n+1)/A000120(n+1))` -/
def P724116838241174089.Spec : Prop :=
  ∀ n, P724116838241174089.a n = A161765 (n + 1)

theorem P724116838241174089.correct : P724116838241174089.Spec := by
  intro n
  simp only [A161765, Nat.add_sub_cancel]

end A161765

/-! ## A161765.P288483815487018292

`A000120(n+1)-n%A000120(n+1)+n`
-/

namespace A161765.P288483815487018292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - Int.tmod (n : ℤ) (A000120 (n + 1)) + (n : ℤ)

end

end A161765.P288483815487018292

namespace A161765

/-- `A000120(n+1)-n%A000120(n+1)+n` -/
def P288483815487018292.Spec : Prop :=
  ∀ n, P288483815487018292.a n = A161765 (n + 1)

end A161765

/-! ## A161765.P5116218404949372695

`A014684(A292262(n)+A020753(n+1))`
-/

namespace A161765.P5116218404949372695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A292262 n + A020753 (n + 1)).toNat

end

end A161765.P5116218404949372695

namespace A161765

/-- `A014684(A292262(n)+A020753(n+1))` -/
def P5116218404949372695.Spec : Prop :=
  ∀ n, P5116218404949372695.a n = A161765 (n + 1)

end A161765

/-! ## A161765.P14088281103716543297

`A000005(2^n*A067005(n+1))`
-/

namespace A161765.P14088281103716543297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 ^ n : ℤ) * A067005 (n + 1)).toNat

end

end A161765.P14088281103716543297

namespace A161765

/-- `A000005(2^n*A067005(n+1))` -/
def P14088281103716543297.Spec : Prop :=
  ∀ n, P14088281103716543297.a n = A161765 (n + 1)

end A161765

/-! ## A161765.P16963446836368186594

`A001222(A007283(n)*A067005(n+1))`
-/

namespace A161765.P16963446836368186594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007283 n * A067005 (n + 1)).toNat

end

end A161765.P16963446836368186594

namespace A161765

/-- `A001222(A007283(n)*A067005(n+1))` -/
def P16963446836368186594.Spec : Prop :=
  ∀ n, P16963446836368186594.a n = A161765 (n + 1)

end A161765

/-!
# A161766: a(1)=1. For n >=2, a(n) = the smallest positive integer with exactly sum{k=1 to n-1} a(k) divisors.

The programs for A161766, there is no canonical definition to state claims against.
-/

/-! ## A161766.P17378109469395260764

`A111286(A192441(n))`
-/

namespace A161766.P17378109469395260764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (A192441 n).toNat

end

end A161766.P17378109469395260764

/-!
# A161767: a(0)=0, a(1)=2. For n >=2, a(n) = the smallest integer >= a(n-1)+2 with exactly (a(n-1)-a(n-2)) divisors.

The programs for A161767, there is no canonical definition to state claims against.
-/

/-! ## A161767.P9789354439488554003

`A161768(n)+a(n-1)` with `a(0)=0`
-/

namespace A161767.P9789354439488554003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161768 n + a (n - 1)

end

end A161767.P9789354439488554003

/-! ## A161767.P3551993791661765466

`∑[A161768(n+1)]-A161768(n+1)`
-/

namespace A161767.P3551993791661765466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161768 (n + 1)

end

end A161767.P3551993791661765466

/-!
# A161768: a(n) = A161767(n) - A161767(n-1) = number of divisors of A161767(n+1).

The programs for A161768, there is no canonical definition to state claims against.
-/

/-! ## A161768.P16695353845975236996

`A161767(n+1)-A161767(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161768.P16695353845975236996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161767 (n + 1) - A161767 n

end

end A161768.P16695353845975236996

/-! ## A161768.P5297935965579208744

`Δ[A161767(n)]`
-/

namespace A161768.P5297935965579208744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161768.P5297935965579208744

/-!
# A161769: A positive integer n is included if the greatest common divisor of (the sum of the distinct primes dividing n) and (the sum of the exponents in the prime-factorization of n) is > 1.

The programs for A161769, there is no canonical definition to state claims against.
-/

/-! ## A161769.P8171800208804312723

`lt[1, A161606(n+1)]+1`
-/

namespace A161769.P8171800208804312723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A161769.P8171800208804312723

/-! ## A161769.P5542864449465928228

`lt[1, A161606(A028310(n))]`
-/

namespace A161769.P5542864449465928228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161606 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161769.P5542864449465928228

/-! ## A161769.P661485388665258927

`lt[3, A000040(a(A161606(n)))]` with `a(0)=1`
-/

namespace A161769.P661485388665258927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A161606 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161769.P661485388665258927

/-! ## A161769.P5109107480049695292

`eq[1, A000045(a(A161606(n)))]` with `a(0)=4`
-/

namespace A161769.P5109107480049695292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A161606 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161769.P5109107480049695292

/-! ## A161769.P6011916195970557595

`lt[3, A050376(a(A161606(n)))]` with `a(0)=1`
-/

namespace A161769.P6011916195970557595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A050376 (f2 (A161606 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161769.P6011916195970557595

/-! ## A161769.P10977804151309283519

`lt[3, A327475(a(A161606(n)))]` with `a(0)=1`
-/

namespace A161769.P10977804151309283519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A327475 (f2 (A161606 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161769.P10977804151309283519

/-! ## A161769.P2279013886182614476

`eq[1, A000010(a(A161606(n)))]` with `a(0)=5`
-/

namespace A161769.P2279013886182614476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A161606 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161769.P2279013886182614476

/-! ## A161769.P18309107093631260341

`lt[A000005(a(A161606(n))), 3]` with `a(0)=6`
-/

namespace A161769.P18309107093631260341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A000005 (f1 (A161606 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161769.P18309107093631260341

/-! ## A161769.P4534492717806769751

`eq[1, A000009(a(A161606(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A161769.P4534492717806769751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000009 (f2 (A161606 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161769.P4534492717806769751

/-! ## A161769.P4114281879859518763

`eq[1, A000119(a(A161606(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A161769.P4114281879859518763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000119 (f2 (A161606 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161769.P4114281879859518763

/-!
# A161770: n 1's followed by three 0's.

The programs for A161770, the canonical program `A161770.P15933421977073873557` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161770 has offset 1).

The definition of A161770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161770.P13615370240497995124

`1000*(10^(n+1)-1)/9`
-/

namespace A161770.P13615370240497995124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1000 * ((10 ^ (n + 1) : ℤ) - 1) : ℚ) / 9

end

end A161770.P13615370240497995124

namespace A161770

/-- `1000*(10^(n+1)-1)/9` -/
def P13615370240497995124.Spec : Prop :=
  ∀ n, P13615370240497995124.a n = (A161770 (n + 1) : ℚ)

end A161770

/-! ## A161770.P15933421977073873557

`10*A124166(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161770

/-- `10*A124166(n+1)` -/
def P15933421977073873557.Spec : Prop :=
  ∀ n, P15933421977073873557.a n = A161770 (n + 1)

theorem P15933421977073873557.correct : P15933421977073873557.Spec := by
  intro n
  simp only [A161770, Nat.add_sub_cancel]

end A161770

/-! ## A161770.P18321362000141686496

`1000*A002275(n+1)`
-/

namespace A161770.P18321362000141686496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1000 * A002275 (n + 1)

end

end A161770.P18321362000141686496

namespace A161770

/-- `1000*A002275(n+1)` -/
def P18321362000141686496.Spec : Prop :=
  ∀ n, P18321362000141686496.a n = A161770 (n + 1)

end A161770

/-! ## A161770.P482348475403963695

`100*A105279(n+1)`
-/

namespace A161770.P482348475403963695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  100 * A105279 (n + 1)

end

end A161770.P482348475403963695

namespace A161770

/-- `100*A105279(n+1)` -/
def P482348475403963695.Spec : Prop :=
  ∀ n, P482348475403963695.a n = A161770 (n + 1)

end A161770

/-! ## A161770.P13555377492543574088

`lcm(∑[10^n], 1000)`
-/

namespace A161770.P13555377492543574088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) 1000

end

end A161770.P13555377492543574088

namespace A161770

/-- `lcm(∑[10^n], 1000)` -/
def P13555377492543574088.Spec : Prop :=
  ∀ n, (P13555377492543574088.a n : ℤ) = A161770 (n + 1)

end A161770

/-! ## A161770.P13659226784861636884

`abs(∑[10*a(n-1)])` with `a(0)=1000`
-/

namespace A161770.P13659226784861636884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1000] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161770.P13659226784861636884

namespace A161770

/-- `abs(∑[10*a(n-1)])` -/
def P13659226784861636884.Spec : Prop :=
  ∀ n, (P13659226784861636884.a n : ℤ) = A161770 (n + 1)

end A161770

/-! ## A161770.P1660696729283101847

`floor(∑[10*a(n-1)])` with `a(0)=1000`

`floor` is left out, it is the identity on integers.
-/

namespace A161770.P1660696729283101847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1000] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161770.P1660696729283101847

namespace A161770

/-- `floor(∑[10*a(n-1)])` -/
def P1660696729283101847.Spec : Prop :=
  ∀ n, (P1660696729283101847.a n : ℤ) = A161770 (n + 1)

end A161770

/-! ## A161770.P6618942911230959012

`1000+10*a(n-1)` with `a(0)=1000`
-/

namespace A161770.P6618942911230959012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1000] fun n a =>
  1000 + 10 * a (n - 1)

end

end A161770.P6618942911230959012

namespace A161770

/-- `1000+10*a(n-1)` -/
def P6618942911230959012.Spec : Prop :=
  ∀ n, (P6618942911230959012.a n : ℤ) = A161770 (n + 1)

end A161770

/-! ## A161770.P5125905129299272522

`A276349(A034856(n+2))`
-/

namespace A161770.P5125905129299272522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276349 (A034856 (n + 2)).toNat

end

end A161770.P5125905129299272522

namespace A161770

/-- `A276349(A034856(n+2))` -/
def P5125905129299272522.Spec : Prop :=
  ∀ n, P5125905129299272522.a n = A161770 (n + 1)

end A161770

/-! ## A161770.P8085935478207807329

`A276349(A000124(n+2)+n)`
-/

namespace A161770.P8085935478207807329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276349 (A000124 (n + 2) + (n : ℤ)).toNat

end

end A161770.P8085935478207807329

namespace A161770

/-- `A276349(A000124(n+2)+n)` -/
def P8085935478207807329.Spec : Prop :=
  ∀ n, P8085935478207807329.a n = A161770 (n + 1)

end A161770

/-!
# A161772: Number of pattern sequences in bases 2 through 30 when the "sum of squares of digits" function is applied. In other words, A000216 is applied in other base systems, and the resulting number of closed patterns is counted.

The programs for A161772, there is no canonical definition to state claims against.
-/

/-! ## A161772.P9488989057075434211

`A193585(n+2)+∏{e}[(n+2)²+1, #+1]-1`
-/

namespace A161772.P9488989057075434211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193585 (n + 2) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A161772.P9488989057075434211

/-! ## A161772.P16002642950898245618

`A193585(n+2)+A193583(n+2)`
-/

namespace A161772.P16002642950898245618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193585 (n + 2) + A193583 (n + 2)

end

end A161772.P16002642950898245618

/-! ## A161772.P3990408213548853329

`A193585(n+2)+A193432(n+2)-1`
-/

namespace A161772.P3990408213548853329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193585 (n + 2) + (A193432 (n + 2) - 1)

end

end A161772.P3990408213548853329

/-! ## A161772.P1279794478407785365

`A193585(n+2)+Δ[A333171(n+1)]-1`
-/

namespace A161772.P1279794478407785365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193585 (n + 2) + (f1 (n + 1) - f1 n - 1)

end

end A161772.P1279794478407785365

/-! ## A161772.P14542173748776175580

`A193585(n+2)+2*A147809(n+2)+1`
-/

namespace A161772.P14542173748776175580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193585 (n + 2) + (2 * A147809 (n + 2) + 1)

end

end A161772.P14542173748776175580

/-!
# A161776: Number of reduced words of length n in the Weyl group B_11.

The programs for A161776, there is no canonical definition to state claims against.
-/

/-! ## A161776.P12423277612537338600

`∑[A309785(A270061(n+2))+A161755(n)]`
-/

namespace A161776.P12423277612537338600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A270061 (n + 2)).toNat + A161755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161776.P12423277612537338600

/-!
# A161777: n-th nonprime*(n-th nonprime-1)/2.

The programs for A161777, the canonical program `A161777.P1199000887852038007` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161777 has offset 1).

The definition of A161777 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161777.P1199000887852038007

`A000217(A018252(n+1)-1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161777

/-- `A000217(A018252(n+1)-1)` -/
def P1199000887852038007.Spec : Prop :=
  ∀ n, P1199000887852038007.a n = A161777 (n + 1)

theorem P1199000887852038007.correct : P1199000887852038007.Spec := by
  intro n
  simp only [A161777, Nat.add_sub_cancel]

end A161777

/-! ## A161777.P9373640510012352266

`C(comp[p?[xor(1, n)]-1]+1, 2)`
-/

namespace A161777.P9373640510012352266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) 2

end

end A161777.P9373640510012352266

namespace A161777

/-- `C(comp[p?[xor(1, n)]-1]+1, 2)` -/
def P9373640510012352266.Spec : Prop :=
  ∀ n, (P9373640510012352266.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P16263118051104376465

`C(comp[n%2*p?[floor(n/2)]], 2)`
-/

namespace A161777.P16263118051104376465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A161777.P16263118051104376465

namespace A161777

/-- `C(comp[n%2*p?[floor(n/2)]], 2)` -/
def P16263118051104376465.Spec : Prop :=
  ∀ n, (P16263118051104376465.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P3228474501999012601

`C(Δ[A051349(n)], 2)`
-/

namespace A161777.P3228474501999012601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A161777.P3228474501999012601

namespace A161777

/-- `C(Δ[A051349(n)], 2)` -/
def P3228474501999012601.Spec : Prop :=
  ∀ n, (P3228474501999012601.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P6405045202247193313

`C(comp[A130008(n)], 2)`
-/

namespace A161777.P6405045202247193313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A161777.P6405045202247193313

namespace A161777

/-- `C(comp[A130008(n)], 2)` -/
def P6405045202247193313.Spec : Prop :=
  ∀ n, (P6405045202247193313.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P3983653217798000184

`A179896(n+1)/3`
-/

namespace A161777.P3983653217798000184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179896 (n + 1) : ℚ) / 3

end

end A161777.P3983653217798000184

namespace A161777

/-- `A179896(n+1)/3` -/
def P3983653217798000184.Spec : Prop :=
  ∀ n, P3983653217798000184.a n = (A161777 (n + 1) : ℚ)

end A161777

/-! ## A161777.P6508582188893118902

`C(A018252(n+1), 2)`
-/

namespace A161777.P6508582188893118902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018252 (n + 1)).toNat 2

end

end A161777.P6508582188893118902

namespace A161777

/-- `C(A018252(n+1), 2)` -/
def P6508582188893118902.Spec : Prop :=
  ∀ n, (P6508582188893118902.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P9374141527110036391

`C(A141468(n+2), 2)`
-/

namespace A161777.P9374141527110036391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141468 (n + 2)).toNat 2

end

end A161777.P9374141527110036391

namespace A161777

/-- `C(A141468(n+2), 2)` -/
def P9374141527110036391.Spec : Prop :=
  ∀ n, (P9374141527110036391.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P10067594693739868361

`C(∑[A054546(n+1)], 2)`
-/

namespace A161777.P10067594693739868361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A161777.P10067594693739868361

namespace A161777

/-- `C(∑[A054546(n+1)], 2)` -/
def P10067594693739868361.Spec : Prop :=
  ∀ n, (P10067594693739868361.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P5427118531484447801

`C(comp[A006530(n+1)], 2)`
-/

namespace A161777.P5427118531484447801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A161777.P5427118531484447801

namespace A161777

/-- `C(comp[A006530(n+1)], 2)` -/
def P5427118531484447801.Spec : Prop :=
  ∀ n, (P5427118531484447801.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P16035112743759959397

`C(comp[A008578(n+1)], 2)`
-/

namespace A161777.P16035112743759959397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A161777.P16035112743759959397

namespace A161777

/-- `C(comp[A008578(n+1)], 2)` -/
def P16035112743759959397.Spec : Prop :=
  ∀ n, (P16035112743759959397.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P16704548780232496236

`C(comp[A020639(n+1)], 2)`
-/

namespace A161777.P16704548780232496236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A161777.P16704548780232496236

namespace A161777

/-- `C(comp[A020639(n+1)], 2)` -/
def P16704548780232496236.Spec : Prop :=
  ∀ n, (P16704548780232496236.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P2817135852142994434

`C(comp[A158611(n+2)], 2)`
-/

namespace A161777.P2817135852142994434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A161777.P2817135852142994434

namespace A161777

/-- `C(comp[A158611(n+2)], 2)` -/
def P2817135852142994434.Spec : Prop :=
  ∀ n, (P2817135852142994434.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P11220517807636302595

`C(A222307(2*n+1), 2)`
-/

namespace A161777.P11220517807636302595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A222307 (2 * n + 1)).toNat 2

end

end A161777.P11220517807636302595

namespace A161777

/-- `C(A222307(2*n+1), 2)` -/
def P11220517807636302595.Spec : Prop :=
  ∀ n, (P11220517807636302595.a n : ℤ) = A161777 (n + 1)

end A161777

/-! ## A161777.P11030045805013068838

`A000217(Δ[A051349(n)]-1)`
-/

namespace A161777.P11030045805013068838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n - 1).toNat

end

end A161777.P11030045805013068838

namespace A161777

/-- `A000217(Δ[A051349(n)]-1)` -/
def P11030045805013068838.Spec : Prop :=
  ∀ n, P11030045805013068838.a n = A161777 (n + 1)

end A161777

/-! ## A161777.P9178204851990069317

`A000217(comp[A006093(n+1)])`
-/

namespace A161777.P9178204851990069317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A161777.P9178204851990069317

namespace A161777

/-- `A000217(comp[A006093(n+1)])` -/
def P9178204851990069317.Spec : Prop :=
  ∀ n, P9178204851990069317.a n = A161777 (n + 1)

end A161777

/-! ## A161777.P646483663737689109

`A000217(A141468(n+2)-1)`
-/

namespace A161777.P646483663737689109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A141468 (n + 2) - 1).toNat

end

end A161777.P646483663737689109

namespace A161777

/-- `A000217(A141468(n+2)-1)` -/
def P646483663737689109.Spec : Prop :=
  ∀ n, P646483663737689109.a n = A161777 (n + 1)

end A161777

/-! ## A161777.P1836224470655650506

`A000217(eq[1, A005171(n+1)])`
-/

namespace A161777.P1836224470655650506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161777.P1836224470655650506

namespace A161777

/-- `A000217(eq[1, A005171(n+1)])` -/
def P1836224470655650506.Spec : Prop :=
  ∀ n, P1836224470655650506.a n = A161777 (n + 1)

end A161777

/-! ## A161777.P8093248634865010635

`A000217(comp[A000040(n+1)-1])`
-/

namespace A161777.P8093248634865010635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A161777.P8093248634865010635

namespace A161777

/-- `A000217(comp[A000040(n+1)-1])` -/
def P8093248634865010635.Spec : Prop :=
  ∀ n, P8093248634865010635.a n = A161777 (n + 1)

end A161777

/-! ## A161777.P18367309464719788406

`C(comp[A166333(n)], 2)`
-/

namespace A161777.P18367309464719788406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A161777.P18367309464719788406

namespace A161777

/-- `C(comp[A166333(n)], 2)` -/
def P18367309464719788406.Spec : Prop :=
  ∀ n, (P18367309464719788406.a n : ℤ) = A161777 (n + 1)

end A161777

/-!
# A161778: The A161671(n)-th partial sum of A161671.

The programs for A161778, the canonical program `A161778.P9817928679836335703` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161778 has offset 1).

The definition of A161778 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, A163116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161778.P9817928679836335703

`A163116(A161671(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A161778

/-- `A163116(A161671(n+1))` -/
def P9817928679836335703.Spec : Prop :=
  ∀ n, P9817928679836335703.a n = A161778 (n + 1)

theorem P9817928679836335703.correct : P9817928679836335703.Spec := by
  intro n
  simp only [A161778, Nat.add_sub_cancel]

end A161778

/-! ## A161778.P12792081807770583582

`A163116(∏{d}[A000040(2*n-(n-1)), #]-comp[p?[xor(1, n)]])`
-/

namespace A161778.P12792081807770583582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (∏ d ∈ Nat.divisors (f1 n).natAbs, d - SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A161778.P12792081807770583582

namespace A161778

/-- `A163116(∏{d}[A000040(2*n-(n-1)), #]-comp[p?[xor(1, n)]])` -/
def P12792081807770583582.Spec : Prop :=
  ∀ n, P12792081807770583582.a n = A161778 (n + 1)

end A161778

/-! ## A161778.P2650859268285060154

`A163116(A054546(n+1)+A014237(n+1))`
-/

namespace A161778.P2650859268285060154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (A054546 (n + 1) + A014237 (n + 1)).toNat

end

end A161778.P2650859268285060154

namespace A161778

/-- `A163116(A054546(n+1)+A014237(n+1))` -/
def P2650859268285060154.Spec : Prop :=
  ∀ n, P2650859268285060154.a n = A161778 (n + 1)

end A161778

/-! ## A161778.P6620390816949062419

`A163116(A000040(n+1)-A141468(n+1))`
-/

namespace A161778.P6620390816949062419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (A000040 (n + 1) - A141468 (n + 1)).toNat

end

end A161778.P6620390816949062419

namespace A161778

/-- `A163116(A000040(n+1)-A141468(n+1))` -/
def P6620390816949062419.Spec : Prop :=
  ∀ n, P6620390816949062419.a n = A161778 (n + 1)

end A161778

/-! ## A161778.P14975880281427368708

`A163116(A064799(n+1)-A161843(n+1))`
-/

namespace A161778.P14975880281427368708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (A064799 (n + 1) - A161843 (n + 1)).toNat

end

end A161778.P14975880281427368708

namespace A161778

/-- `A163116(A064799(n+1)-A161843(n+1))` -/
def P14975880281427368708.Spec : Prop :=
  ∀ n, P14975880281427368708.a n = A161778 (n + 1)

end A161778

/-!
# A161779: The sequence of factorials convolved with all its regularly "aerated" variants.

The programs for A161779, there is no canonical definition to state claims against.
-/

/-! ## A161779.P8282244740294207855

`A293202(∑[4*n])`
-/

namespace A161779.P8282244740294207855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161779.P8282244740294207855

/-! ## A161779.P8786171329182323223

`A096161(A028310(n))`
-/

namespace A161779.P8786171329182323223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (A028310 n).toNat

end

end A161779.P8786171329182323223

/-! ## A161779.P10874660671961179092

`A096161(n^A178334(n))`
-/

namespace A161779.P10874660671961179092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A161779.P10874660671961179092

/-! ## A161779.P8358326336856748392

`A096161(gcd(n, A000142(n)))`
-/

namespace A161779.P8358326336856748392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (Int.gcd (n : ℤ) (A000142 n))

end

end A161779.P8358326336856748392

/-! ## A161779.P922223649219337493

`A096161(1-A178334(n)+n)`
-/

namespace A161779.P922223649219337493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (1 - A178334 n + (n : ℤ)).toNat

end

end A161779.P922223649219337493

/-! ## A161779.P7333379060079099708

`A096161(1-(A178334(n)-n))`
-/

namespace A161779.P7333379060079099708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (1 - (A178334 n - (n : ℤ))).toNat

end

end A161779.P7333379060079099708

/-! ## A161779.P9995682873899308082

`A096161(A008486(n)-2*n)`
-/

namespace A161779.P9995682873899308082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (A008486 n - (2 * n : ℤ)).toNat

end

end A161779.P9995682873899308082

/-! ## A161779.P12864002747009990749

`A096161(A008486(n)-n-n)`
-/

namespace A161779.P12864002747009990749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

end

end A161779.P12864002747009990749

/-! ## A161779.P3708723793959030664

`A096161(or(n, Δ[A000720(n+1)]))`
-/

namespace A161779.P3708723793959030664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (Int.lor (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A161779.P3708723793959030664

/-! ## A161779.P6472039648659003525

`A096161(gcd(A008486(n), A008586(n)))`
-/

namespace A161779.P6472039648659003525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096161 (Int.gcd (A008486 n) (A008586 n))

end

end A161779.P6472039648659003525

/-!
# A161781: Binary encodings of prime constellations.

The programs for A161781, there is no canonical definition to state claims against.
-/

/-! ## A161781.P4611901146331591712

`2*A059906(A387383(n+1))+1`
-/

namespace A161781.P4611901146331591712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059906 (A387383 (n + 1)).toNat + 1

end

end A161781.P4611901146331591712

/-! ## A161781.P3066916275350474801

`A020986(A387383(n+1))`
-/

namespace A161781.P3066916275350474801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (A387383 (n + 1)).toNat

end

end A161781.P3066916275350474801

/-! ## A161781.P16390396114778691126

`eq[A087473(A027656(n)), A140194(n)]`
-/

namespace A161781.P16390396114778691126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087473 (A027656 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140194 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161781.P16390396114778691126

/-! ## A161781.P16298440245269234387

`eq[A010815(A005449(n+1)), A140194(n)]`
-/

namespace A161781.P16298440245269234387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A005449 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140194 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161781.P16298440245269234387

/-! ## A161781.P17035363367194069709

`record[A336898(n)/A140194(n)]`
-/

namespace A161781.P17035363367194069709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336898 n : ℚ) / (A140194 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161781.P17035363367194069709

/-!
# A161782: a(n) = sum of all numbers from and including (prime(n+1)-prime(n)) to and including (prime(n+2)-prime(n).)

The programs for A161782, the canonical program `A161782.P15101117424861432951` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161782 has offset 1).

The definition of A161782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161782.P4916614320238613526

`A005408(A028334(n+2))*A305748(n+1)`
-/

namespace A161782.P4916614320238613526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A028334 (n + 2)).toNat * A305748 (n + 1)

end

end A161782.P4916614320238613526

namespace A161782

/-- `A005408(A028334(n+2))*A305748(n+1)` -/
def P4916614320238613526.Spec : Prop :=
  ∀ n, P4916614320238613526.a n = A161782 (n + 1)

end A161782

/-! ## A161782.P15101117424861432951

`A000217(A031131(n+1))-A000217(A046933(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161782

/-- `A000217(A031131(n+1))-A000217(A046933(n+1))` -/
def P15101117424861432951.Spec : Prop :=
  ∀ n, P15101117424861432951.a n = A161782 (n + 1)

theorem P15101117424861432951.correct : P15101117424861432951.Spec := by
  intro n
  simp only [A161782, Nat.add_sub_cancel]

end A161782

/-! ## A161782.P227308597453326426

`Δ[A014690(n+1)]*A305748(n+1)`
-/

namespace A161782.P227308597453326426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A305748 (n + 1)

end

end A161782.P227308597453326426

namespace A161782

/-- `Δ[A014690(n+1)]*A305748(n+1)` -/
def P227308597453326426.Spec : Prop :=
  ∀ n, P227308597453326426.a n = A161782 (n + 1)

end A161782

/-! ## A161782.P13268142767925848152

`(Δ[A065091(n+1)]+1)*A305748(n+1)`
-/

namespace A161782.P13268142767925848152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A305748 (n + 1)

end

end A161782.P13268142767925848152

namespace A161782

/-- `(Δ[A065091(n+1)]+1)*A305748(n+1)` -/
def P13268142767925848152.Spec : Prop :=
  ∀ n, P13268142767925848152.a n = A161782 (n + 1)

end A161782

/-! ## A161782.P16463569143678793297

`A020725(Δ[A065091(n+1)])*A305748(n+1)`
-/

namespace A161782.P16463569143678793297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (n + 1) - f1 n).toNat * A305748 (n + 1)

end

end A161782.P16463569143678793297

namespace A161782

/-- `A020725(Δ[A065091(n+1)])*A305748(n+1)` -/
def P16463569143678793297.Spec : Prop :=
  ∀ n, P16463569143678793297.a n = A161782 (n + 1)

end A161782

/-! ## A161782.P13395541568195009390

`A230847(n+3)*A305748(n+1)`
-/

namespace A161782.P13395541568195009390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 3) * A305748 (n + 1)

end

end A161782.P13395541568195009390

namespace A161782

/-- `A230847(n+3)*A305748(n+1)` -/
def P13395541568195009390.Spec : Prop :=
  ∀ n, P13395541568195009390.a n = A161782 (n + 1)

end A161782

/-!
# A161783: Squares n^2 whose decimal expansion contains n as a substring.

The programs for A161783, there is no canonical definition to state claims against.
-/

/-! ## A161783.P470787941358703957

`A018834(n+2)²`
-/

namespace A161783.P470787941358703957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 2) ^ 2

end

end A161783.P470787941358703957

/-! ## A161783.P9493434477321536547

`A018834(A020725(n+1))^2`
-/

namespace A161783.P9493434477321536547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (A020725 (n + 1)).toNat ^ 2

end

end A161783.P9493434477321536547

/-! ## A161783.P4496652540827253087

`A018834(A000027(n+2))^2`
-/

namespace A161783.P4496652540827253087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (A000027 (n + 2)).toNat ^ 2

end

end A161783.P4496652540827253087

/-! ## A161783.P6082418557178898757

`A018834(A296882(n+2))^2`
-/

namespace A161783.P6082418557178898757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (A296882 (n + 2)).toNat ^ 2

end

end A161783.P6082418557178898757

/-! ## A161783.P13267443884044813728

`A018834(A008619(2*n+3))^2`
-/

namespace A161783.P13267443884044813728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (A008619 (2 * n + 3)).toNat ^ 2

end

end A161783.P13267443884044813728

/-! ## A161783.P13308766203298016466

`A018834(A000027(n+2))*A018834(n+2)`
-/

namespace A161783.P13308766203298016466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (A000027 (n + 2)).toNat * A018834 (n + 2)

end

end A161783.P13308766203298016466

/-! ## A161783.P791457485744772597

`A018834(n+2)*A018834(A296882(n+2))`
-/

namespace A161783.P791457485744772597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 2) * A018834 (A296882 (n + 2)).toNat

end

end A161783.P791457485744772597

/-!
# A161784: Product of primes on successive square intervals.

The programs for A161784, there is no canonical definition to state claims against.
-/

/-! ## A161784.P5672985646124904328

`ratio[A034386((n+1)²)]`
-/

namespace A161784.P5672985646124904328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 ((n + 1) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A161784.P5672985646124904328

/-! ## A161784.P17773012049543119021

`ratio[A300951(2*(n+1)²)]`
-/

namespace A161784.P17773012049543119021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * (n + 1) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A161784.P17773012049543119021

/-! ## A161784.P11782620506044467405

`ratio[A002110(∑[A014085(n)])]`
-/

namespace A161784.P11782620506044467405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A161784.P11782620506044467405

/-! ## A161784.P11187150277181097871

`ratio[record[A034386(A025871(n)²)]]`
-/

namespace A161784.P11187150277181097871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A025871 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A161784.P11187150277181097871

/-! ## A161784.P3046659010768955232

`ratio[record[A034386(A008833(n+1))]]`
-/

namespace A161784.P3046659010768955232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A008833 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A161784.P3046659010768955232

/-!
# A161785: Numbers k that are in the range of both Euler's phi function and the sigma function.

The programs for A161785, there is no canonical definition to state claims against.
-/

/-! ## A161785.P11988482104812333300

`filter[A002202(n+1), A175192(#)]`
-/

namespace A161785.P11988482104812333300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A161785.P11988482104812333300

/-! ## A161785.P7069765278067965170

`∩[A002191(n+1), A002202(n+1)]`
-/

namespace A161785.P7069765278067965170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161785.P7069765278067965170

/-! ## A161785.P4329241956908634991

`∩[A000010(A002181(n+1)), A002191(n+1)]`
-/

namespace A161785.P4329241956908634991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002181 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161785.P4329241956908634991

/-! ## A161785.P5702251014781880574

`∩[A000203(A002192(n+1)), A002202(n+1)]`
-/

namespace A161785.P5702251014781880574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002192 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161785.P5702251014781880574

/-! ## A161785.P8442837527760229486

`filter[A002191(n+1), A264739(#)]`
-/

namespace A161785.P8442837527760229486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A161785.P8442837527760229486

/-!
# A161786: Primes with at least one digit appearing exactly four times in the decimal expansion.

The programs for A161786, there is no canonical definition to state claims against.
-/

/-! ## A161786.P15417983321967447333

`A164937(A087051(n)+90)`
-/

namespace A161786.P15417983321967447333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (A087051 n + 90).toNat

end

end A161786.P15417983321967447333

/-! ## A161786.P11867156528924878182

`p?[record[A043496(A162190(n))]]`
-/

namespace A161786.P11867156528924878182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043496 (A162190 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161786.P11867156528924878182

/-! ## A161786.P1674627602018338064

`A006530(p?[A043496(n+1)])`
-/

namespace A161786.P1674627602018338064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A161786.P1674627602018338064

/-! ## A161786.P2088906925176428705

`record[A020639(A043496(n+2))]`
-/

namespace A161786.P2088906925176428705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A043496 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161786.P2088906925176428705

/-! ## A161786.P10196991002199646308

`filter[A043496(n+1), A010051(#)]`
-/

namespace A161786.P10196991002199646308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161786.P10196991002199646308

/-!
# A161788: a(n) is the largest integer of the form 2^k - 1 that divides n.

The programs for A161788, the canonical program `A161788.P11266253725805918745` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161788 has offset 1).

The definition of A161788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161788.P925560603501311413

`2^A161789(n+1)-1`
-/

namespace A161788.P925560603501311413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A161789 (n + 1) : ℤ) - 1

end

end A161788.P925560603501311413

namespace A161788

/-- `2^A161789(n+1)-1` -/
def P925560603501311413.Spec : Prop :=
  ∀ n, P925560603501311413.a n = (A161788 (n + 1) : ℚ)

end A161788

/-! ## A161788.P14529679842220023367

`A000225(A161789(n+1))`
-/

namespace A161788.P14529679842220023367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A161789 (n + 1)).toNat

end

end A161788.P14529679842220023367

namespace A161788

/-- `A000225(A161789(n+1))` -/
def P14529679842220023367.Spec : Prop :=
  ∀ n, P14529679842220023367.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P8301736185459809157

`A049073(A161398(n+1))`
-/

namespace A161788.P8301736185459809157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049073 (A161398 (n + 1)).toNat

end

end A161788.P8301736185459809157

namespace A161788

/-- `A049073(A161398(n+1))` -/
def P8301736185459809157.Spec : Prop :=
  ∀ n, P8301736185459809157.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P14702024868364418059

`A001065(2^A161789(n+1))`
-/

namespace A161788.P14702024868364418059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat

end

end A161788.P14702024868364418059

namespace A161788

/-- `A001065(2^A161789(n+1))` -/
def P14702024868364418059.Spec : Prop :=
  ∀ n, P14702024868364418059.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P12519006143786678198

`A006022(2^A161789(n+1))`
-/

namespace A161788.P12519006143786678198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat

end

end A161788.P12519006143786678198

namespace A161788

/-- `A006022(2^A161789(n+1))` -/
def P12519006143786678198.Spec : Prop :=
  ∀ n, P12519006143786678198.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P2316868881980923813

`A014681(2^A161789(n+1))`
-/

namespace A161788.P2316868881980923813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat

end

end A161788.P2316868881980923813

namespace A161788

/-- `A014681(2^A161789(n+1))` -/
def P2316868881980923813.Spec : Prop :=
  ∀ n, P2316868881980923813.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P13684789916566601084

`A078896(2^A161789(n+1))`
-/

namespace A161788.P13684789916566601084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat

end

end A161788.P13684789916566601084

namespace A161788

/-- `A078896(2^A161789(n+1))` -/
def P13684789916566601084.Spec : Prop :=
  ∀ n, P13684789916566601084.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P1449252448629113554

`A270814(2^A161789(n+1))`
-/

namespace A161788.P1449252448629113554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat

end

end A161788.P1449252448629113554

namespace A161788

/-- `A270814(2^A161789(n+1))` -/
def P1449252448629113554.Spec : Prop :=
  ∀ n, P1449252448629113554.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P7618948694736438046

`A292600(2^A161789(n+1))`
-/

namespace A161788.P7618948694736438046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat

end

end A161788.P7618948694736438046

namespace A161788

/-- `A292600(2^A161789(n+1))` -/
def P7618948694736438046.Spec : Prop :=
  ∀ n, P7618948694736438046.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P11266253725805918745

`A003817(∑{d}[n+1, A135416(#)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161788

/-- `A003817(∑{d}[n+1, A135416(#)])` -/
def P11266253725805918745.Spec : Prop :=
  ∀ n, P11266253725805918745.a n = A161788 (n + 1)

theorem P11266253725805918745.correct : P11266253725805918745.Spec := by
  intro n
  simp only [A161788, Nat.add_sub_cancel]

end A161788

/-! ## A161788.P8293519449135234177

`A000079(A161789(2*(n+1)))-1`
-/

namespace A161788.P8293519449135234177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A161789 (2 * (n + 1))).toNat - 1

end

end A161788.P8293519449135234177

namespace A161788

/-- `A000079(A161789(2*(n+1)))-1` -/
def P8293519449135234177.Spec : Prop :=
  ∀ n, P8293519449135234177.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P7617513751605785796

`A000203(2^A161789(n+1)/2)`
-/

namespace A161788.P7617513751605785796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ) / 2)).toNat

end

end A161788.P7617513751605785796

namespace A161788

/-- `A000203(2^A161789(n+1)/2)` -/
def P7617513751605785796.Spec : Prop :=
  ∀ n, P7617513751605785796.a n = A161788 (n + 1)

end A161788

/-! ## A161788.P16762457522944836024

`gcd(n+1, A038573(A049073(n+1)))`
-/

namespace A161788.P16762457522944836024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A038573 (A049073 (n + 1)).toNat)

end

end A161788.P16762457522944836024

namespace A161788

/-- `gcd(n+1, A038573(A049073(n+1)))` -/
def P16762457522944836024.Spec : Prop :=
  ∀ n, (P16762457522944836024.a n : ℤ) = A161788 (n + 1)

end A161788

/-! ## A161788.P5426670949319472889

`∑{d}[A000010(2^A161789(n+1)), #]`
-/

namespace A161788.P5426670949319472889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A161788.P5426670949319472889

namespace A161788

/-- `∑{d}[A000010(2^A161789(n+1)), #]` -/
def P5426670949319472889.Spec : Prop :=
  ∀ n, (P5426670949319472889.a n : ℤ) = A161788 (n + 1)

end A161788

/-! ## A161788.P17390153947986286265

`A000203(A004525(2^A161789(n+1)))`
-/

namespace A161788.P17390153947986286265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004525 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161789 (n + 1) : ℤ))).toNat).toNat

end

end A161788.P17390153947986286265

namespace A161788

/-- `A000203(A004525(2^A161789(n+1)))` -/
def P17390153947986286265.Spec : Prop :=
  ∀ n, P17390153947986286265.a n = A161788 (n + 1)

end A161788

/-!
# A161789: a(n) is the largest integer k such that 2^k - 1 divides n.

The programs for A161789, the canonical program `A161789.P10570170875906748865` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161789 has offset 1).

The definition of A161789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161789.P11184776056311835708

`A000523(A326812(n+1)+1)`
-/

namespace A161789.P11184776056311835708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A326812 (n + 1) + 1).toNat

end

end A161789.P11184776056311835708

namespace A161789

/-- `A000523(A326812(n+1)+1)` -/
def P11184776056311835708.Spec : Prop :=
  ∀ n, P11184776056311835708.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P13599298109542473562

`A059939(∑{d}[n+1, #*A036987(#)])+1`
-/

namespace A161789.P13599298109542473562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A036987 d).toNat + 1

end

end A161789.P13599298109542473562

namespace A161789

/-- `A059939(∑{d}[n+1, #*A036987(#)])+1` -/
def P13599298109542473562.Spec : Prop :=
  ∀ n, P13599298109542473562.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P10570170875906748865

`A070939(∑{d}[A103517(n), A135416(#)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161789

/-- `A070939(∑{d}[A103517(n), A135416(#)])` -/
def P10570170875906748865.Spec : Prop :=
  ∀ n, P10570170875906748865.a n = A161789 (n + 1)

theorem P10570170875906748865.correct : P10570170875906748865.Spec := by
  intro n
  simp only [A161789, Nat.add_sub_cancel]

end A161789

/-! ## A161789.P6122632139210274304

`A070939(∑{d}[A000265(n+1), A135416(#)])`
-/

namespace A161789.P6122632139210274304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (∑ d ∈ Nat.divisors (f1 n).natAbs, A135416 d).toNat

end

end A161789.P6122632139210274304

namespace A161789

/-- `A070939(∑{d}[A000265(n+1), A135416(#)])` -/
def P6122632139210274304.Spec : Prop :=
  ∀ n, P6122632139210274304.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P12230442593058618516

`floor(log2(∑{d}[n+1, A048298(#+1)]))`
-/

namespace A161789.P12230442593058618516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ d ∈ Nat.divisors (f1 n), A048298 (d + 1)).toNat

end

end A161789.P12230442593058618516

namespace A161789

/-- `floor(log2(∑{d}[n+1, A048298(#+1)]))` -/
def P12230442593058618516.Spec : Prop :=
  ∀ n, (P12230442593058618516.a n : ℤ) = A161789 (n + 1)

end A161789

/-! ## A161789.P12488286717055879553

`A059939(4*∑{d}[A000265(n+1), A135416(#)])`
-/

namespace A161789.P12488286717055879553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (4 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A135416 d)).toNat

end

end A161789.P12488286717055879553

namespace A161789

/-- `A059939(4*∑{d}[A000265(n+1), A135416(#)])` -/
def P12488286717055879553.Spec : Prop :=
  ∀ n, P12488286717055879553.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P14344305197561936656

`val(A161788(A072963(n+1))+1, 2)`
-/

namespace A161789.P14344305197561936656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161788 (A072963 (n + 1)).toNat + 1).toNat 2

end

end A161789.P14344305197561936656

namespace A161789

/-- `val(A161788(A072963(n+1))+1, 2)` -/
def P14344305197561936656.Spec : Prop :=
  ∀ n, (P14344305197561936656.a n : ℤ) = A161789 (n + 1)

end A161789

/-! ## A161789.P5524886175464734700

`A070939(A161788(Δ[A319390(n)]))`
-/

namespace A161789.P5524886175464734700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A161788 (f1 (n + 1) - f1 n).toNat).toNat

end

end A161789.P5524886175464734700

namespace A161789

/-- `A070939(A161788(Δ[A319390(n)]))` -/
def P5524886175464734700.Spec : Prop :=
  ∀ n, P5524886175464734700.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P363011496268654228

`A000120(A161788(A000265(n+1)))`
-/

namespace A161789.P363011496268654228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A161788 (A000265 (n + 1)).toNat).toNat

end

end A161789.P363011496268654228

namespace A161789

/-- `A000120(A161788(A000265(n+1)))` -/
def P363011496268654228.Spec : Prop :=
  ∀ n, P363011496268654228.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P3594558299844378819

`A000120(A161788(A072963(n+1)))`
-/

namespace A161789.P3594558299844378819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A161788 (A072963 (n + 1)).toNat).toNat

end

end A161789.P3594558299844378819

namespace A161789

/-- `A000120(A161788(A072963(n+1)))` -/
def P3594558299844378819.Spec : Prop :=
  ∀ n, P3594558299844378819.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P16313569533372140109

`A001222(A161788(A000265(n+1))+1)`
-/

namespace A161789.P16313569533372140109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161788 (A000265 (n + 1)).toNat + 1).toNat

end

end A161789.P16313569533372140109

namespace A161789

/-- `A001222(A161788(A000265(n+1))+1)` -/
def P16313569533372140109.Spec : Prop :=
  ∀ n, P16313569533372140109.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P1649740820624335505

`val(A161788(n+1)+1, 2)`
-/

namespace A161789.P1649740820624335505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161788 (n + 1) + 1).toNat 2

end

end A161789.P1649740820624335505

namespace A161789

/-- `val(A161788(n+1)+1, 2)` -/
def P1649740820624335505.Spec : Prop :=
  ∀ n, (P1649740820624335505.a n : ℤ) = A161789 (n + 1)

end A161789

/-! ## A161789.P6098924616078751856

`A000120(A161788(n+1))`
-/

namespace A161789.P6098924616078751856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A161788 (n + 1)).toNat

end

end A161789.P6098924616078751856

namespace A161789

/-- `A000120(A161788(n+1))` -/
def P6098924616078751856.Spec : Prop :=
  ∀ n, P6098924616078751856.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P958141639299432336

`A043276(A161788(n+1)²)`
-/

namespace A161789.P958141639299432336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A161788 (n + 1) ^ 2).toNat

end

end A161789.P958141639299432336

namespace A161789

/-- `A043276(A161788(n+1)²)` -/
def P958141639299432336.Spec : Prop :=
  ∀ n, P958141639299432336.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P18392749864800614621

`A061338(A161788(n+1)²)`
-/

namespace A161789.P18392749864800614621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (A161788 (n + 1) ^ 2).toNat

end

end A161789.P18392749864800614621

namespace A161789

/-- `A061338(A161788(n+1)²)` -/
def P18392749864800614621.Spec : Prop :=
  ∀ n, P18392749864800614621.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P6300829627831477108

`A086342(A161788(n+1)²)`
-/

namespace A161789.P6300829627831477108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A161788 (n + 1) ^ 2).toNat

end

end A161789.P6300829627831477108

namespace A161789

/-- `A086342(A161788(n+1)²)` -/
def P6300829627831477108.Spec : Prop :=
  ∀ n, P6300829627831477108.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P15932382341324321658

`A227350(A161788(n+1)²)`
-/

namespace A161789.P15932382341324321658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A161788 (n + 1) ^ 2).toNat

end

end A161789.P15932382341324321658

namespace A161789

/-- `A227350(A161788(n+1)²)` -/
def P15932382341324321658.Spec : Prop :=
  ∀ n, P15932382341324321658.a n = A161789 (n + 1)

end A161789

/-! ## A161789.P2599561770304923252

`A001222(A161788(n+1)+1)`
-/

namespace A161789.P2599561770304923252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161788 (n + 1) + 1).toNat

end

end A161789.P2599561770304923252

namespace A161789

/-- `A001222(A161788(n+1)+1)` -/
def P2599561770304923252.Spec : Prop :=
  ∀ n, P2599561770304923252.a n = A161789 (n + 1)

end A161789

/-!
# A161790: The positive integer n is included if 1 is the largest integer of the form {2^k - 1} to divide n.

The programs for A161790, the canonical program `A161790.P974738305676753531` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161790 has offset 1).

The definition of A161790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161790.P14559837799733070573

`comp[A382875(n+1)]`
-/

namespace A161790.P14559837799733070573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161790.P14559837799733070573

namespace A161790

/-- `comp[A382875(n+1)]` -/
def P14559837799733070573.Spec : Prop :=
  ∀ n, (P14559837799733070573.a n : ℤ) = A161790 (n + 1)

end A161790

/-! ## A161790.P3150627420657071782

`eq[1, A154402(n+1)]+1`
-/

namespace A161790.P3150627420657071782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161790.P3150627420657071782

namespace A161790

/-- `eq[1, A154402(n+1)]+1` -/
def P3150627420657071782.Spec : Prop :=
  ∀ n, (P3150627420657071782.a n : ℤ) = A161790 (n + 1)

end A161790

/-! ## A161790.P974738305676753531

`eq[1, A161789(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161790

/-- `eq[1, A161789(n+1)]+1` -/
def P974738305676753531.Spec : Prop :=
  ∀ n, (P974738305676753531.a n : ℤ) = A161790 (n + 1)

theorem P974738305676753531.correct : P974738305676753531.Spec := by
  intro n
  simp only [A161790, Nat.add_sub_cancel]

end A161790

/-! ## A161790.P12686059214401224688

`eq[1, ∑{d}[n, #*A036987(#)]]`
-/

namespace A161790.P12686059214401224688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (d : ℤ) * A036987 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161790.P12686059214401224688

namespace A161790

/-- `eq[1, ∑{d}[n, #*A036987(#)]]` -/
def P12686059214401224688.Spec : Prop :=
  ∀ n, (P12686059214401224688.a n : ℤ) = A161790 (n + 1)

end A161790

/-! ## A161790.P18343000576256413205

`record[A106466(n)/A305426(n+2)]`
-/

namespace A161790.P18343000576256413205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106466 n : ℚ) / (A305426 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161790.P18343000576256413205

namespace A161790

/-- `record[A106466(n)/A305426(n+2)]` -/
def P18343000576256413205.Spec : Prop :=
  ∀ n, P18343000576256413205.a n = (A161790 (n + 1) : ℚ)

end A161790

/-! ## A161790.P10352457467389217245

`A106466(lt[A305426(n+2), A028920(3*n+1)])`
-/

namespace A161790.P10352457467389217245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161790.P10352457467389217245

namespace A161790

/-- `A106466(lt[A305426(n+2), A028920(3*n+1)])` -/
def P10352457467389217245.Spec : Prop :=
  ∀ n, P10352457467389217245.a n = A161790 (n + 1)

end A161790

/-!
# A161791: Numbers k such that if k = a*b, then a+b = reversal(k) for some integers a,b > 1.

The programs for A161791, there is no canonical definition to state claims against.
-/

/-! ## A161791.P16301836809843764414

`A340917(A132600(n+1)+A051117(n))`
-/

namespace A161791.P16301836809843764414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340917 (A132600 (n + 1) + A051117 n).toNat

end

end A161791.P16301836809843764414

/-!
# A161792: If b(m) is the number of 1's in the binary representation of m, then the positive integer m is included if m = k^b(m), for some integer k.

The programs for A161792, there is no canonical definition to state claims against.
-/

/-! ## A161792.P14683683550601884834

`record[A051119(A020685(n+2))]`
-/

namespace A161792.P14683683550601884834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A020685 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161792.P14683683550601884834

/-! ## A161792.P567521672229986619

`record[A052126(A152271(n)+A025480(n))]`
-/

namespace A161792.P567521672229986619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A152271 n + A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161792.P567521672229986619

/-! ## A161792.P17231121888649526062

`∪[A363657(n+1), A327527(A002110(n))]`
-/

namespace A161792.P17231121888649526062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (A002110 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161792.P17231121888649526062

/-!
# A161793: If b(n) is the number of 0's in the binary representation of n, then the positive integer n is included if n = k^b(n), for some k = integer.

The programs for A161793, there is no canonical definition to state claims against.
-/

/-! ## A161793.P14764249461818145172

`∑[gcd(A022442(n), A127283(n))]`
-/

namespace A161793.P14764249461818145172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022442 n) (A127283 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161793.P14764249461818145172

/-! ## A161793.P17442585667775589357

`∑[gcd(A002577(n), A194804(3*n+4))]`
-/

namespace A161793.P17442585667775589357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002577 n) (A194804 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161793.P17442585667775589357

/-! ## A161793.P223911559612951380

`eq[A325414(3*n+4), A325414(n)]+1`
-/

namespace A161793.P223911559612951380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325414 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161793.P223911559612951380

/-! ## A161793.P10292908516142258680

`lt[A033461(A274624(3*n+1)), A169820(n+1)]`
-/

namespace A161793.P10292908516142258680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A274624 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161793.P10292908516142258680

/-!
# A161794: Largest prime gap for primes less than (n+1)^2.

The programs for A161794, there is no canonical definition to state claims against.
-/

/-! ## A161794.P9998619052013233433

`A327441(∑[A013634(n)])`
-/

namespace A161794.P9998619052013233433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161794.P9998619052013233433

/-! ## A161794.P6628388326139461906

`A327441(A151731(n+1))`
-/

namespace A161794.P6628388326139461906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A151731 (n + 1)).toNat

end

end A161794.P6628388326139461906

/-! ## A161794.P13380704866306967945

`A327441(2*A025747(n))`
-/

namespace A161794.P13380704866306967945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (2 * A025747 n).toNat

end

end A161794.P13380704866306967945

/-! ## A161794.P5719166697447850849

`A063095(∑[∑[A298246(n)]])`
-/

namespace A161794.P5719166697447850849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298246 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161794.P5719166697447850849

/-! ## A161794.P10258073270125133896

`A327441(∑[A327224(n+1)])`
-/

namespace A161794.P10258073270125133896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161794.P10258073270125133896

/-! ## A161794.P2209866998491160514

`A327441(∑[A151800(n)+n])`
-/

namespace A161794.P2209866998491160514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161794.P2209866998491160514

/-! ## A161794.P8023651013391595888

`A327441(A076577(n+1)+1)`
-/

namespace A161794.P8023651013391595888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A076577 (n + 1) + 1).toNat

end

end A161794.P8023651013391595888

/-! ## A161794.P15214836165196491143

`A327441(A053001(n+2)-1)`
-/

namespace A161794.P15214836165196491143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A053001 (n + 2) - 1).toNat

end

end A161794.P15214836165196491143

/-! ## A161794.P2347167415279465677

`A327441(xor(1, A053001(n+2)))`
-/

namespace A161794.P2347167415279465677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (Int.xor 1 (A053001 (n + 2))).toNat

end

end A161794.P2347167415279465677

/-! ## A161794.P16420810734402791020

`A327441(A005100(n+1)+(n+1)²)`
-/

namespace A161794.P16420810734402791020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A005100 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A161794.P16420810734402791020

/-!
# A161795: The multiplicity of successive elements of sequence A005250 (increasing prime gaps) as they occur in A161794, the largest prime gap less than (n+1)^2.

The programs for A161795, there is no canonical definition to state claims against.
-/

/-! ## A161795.P15702499434532127109

`Δ[floor(sqrt(A000101(n+1)))]`
-/

namespace A161795.P15702499434532127109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161795.P15702499434532127109

/-! ## A161795.P432919535062510514

`Δ[floor(sqrt(A002386(n+1)+2*n))]`
-/

namespace A161795.P432919535062510514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002386 (n + 1) + (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161795.P432919535062510514

/-! ## A161795.P8108625157230766781

`Δ[A000006(A107578(n+1))]`
-/

namespace A161795.P8108625157230766781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A107578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161795.P8108625157230766781

/-! ## A161795.P13829796294773902295

`Δ[A000196(A000101(n+1))]`
-/

namespace A161795.P13829796294773902295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161795.P13829796294773902295

/-! ## A161795.P17960953099464889559

`Δ[A075119(p?[A000101(n+1)])]`
-/

namespace A161795.P17960953099464889559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161795.P17960953099464889559

/-!
# A161796: Primes with at least one digit appearing exactly five times in the decimal expansion.

The programs for A161796, there is no canonical definition to state claims against.
-/

/-! ## A161796.P5611386077333677443

`A164937(130+n)`
-/

namespace A161796.P5611386077333677443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (130 + n)

end

end A161796.P5611386077333677443

/-! ## A161796.P14049718442607053344

`record[p?[A308609(A255408(n+1))]]`
-/

namespace A161796.P14049718442607053344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308609 (A255408 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161796.P14049718442607053344

/-!
# A161797: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x))^3).

The programs for A161797, there is no canonical definition to state claims against.
-/

/-! ## A161797.P3201141538532293943

`A008616(A150957(n+1))`
-/

namespace A161797.P3201141538532293943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A150957 (n + 1)).toNat

end

end A161797.P3201141538532293943

/-! ## A161797.P12011495570874290825

`A248231(A193038(n+1))`
-/

namespace A161797.P12011495570874290825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A193038 (n + 1)).toNat

end

end A161797.P12011495570874290825

/-!
# A161798: G.f. satisfies: A(x) = 1/(1 - x/(1 - x*A(x))^3)^2.

The programs for A161798, there is no canonical definition to state claims against.
-/

/-! ## A161798.P6273486036473792308

`A004525(A195256(n))-A066188(n)`
-/

namespace A161798.P6273486036473792308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A195256 n).toNat - A066188 n

end

end A161798.P6273486036473792308

/-! ## A161798.P3936353741154612787

`A218045(n+2)+A025466(A026113(n))`
-/

namespace A161798.P3936353741154612787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218045 (n + 2) + A025466 (A026113 n).toNat

end

end A161798.P3936353741154612787

/-!
# A161799: G.f. satisfies: A(x) = 1/(1 - x/(1 - x*A(x))^2)^3.

The programs for A161799, there is no canonical definition to state claims against.
-/

/-! ## A161799.P14025421716792997924

`A004396(Δ[A182216(n+1)])`
-/

namespace A161799.P14025421716792997924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n).toNat

end

end A161799.P14025421716792997924

/-! ## A161799.P7620297617403046318

`A065033(A083882(n)+A052852(n))`
-/

namespace A161799.P7620297617403046318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A083882 n + A052852 n).toNat

end

end A161799.P7620297617403046318

