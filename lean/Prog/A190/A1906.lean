import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A190601: Number of (n+2)X(n+2) symmetric binary matrices without the pattern 1 0 1 antidiagonally.

The programs for A190601, there is no canonical definition to state claims against.
-/

/-! ## A190601.P4576182386243147999

`A126772(n+5)*A126772(A020715(n))`
-/

namespace A190601.P4576182386243147999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126772 (n + 5) * A126772 (A020715 n).toNat

end

end A190601.P4576182386243147999

/-!
# A190604: Number of (n+2)X(n+2) symmetric binary matrices without the pattern 1 0 1 diagonally.

The programs for A190604, there is no canonical definition to state claims against.
-/

/-! ## A190604.P12454056779471061436

`8*∏[A010901(n+1)]`
-/

namespace A190604.P12454056779471061436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190604.P12454056779471061436

/-! ## A190604.P9053398301637841256

`8*∏[A020720(2*n)]`
-/

namespace A190604.P9053398301637841256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190604.P9053398301637841256

/-! ## A190604.P407919219383577500

`2*4*∏[A005251(n+6)]`
-/

namespace A190604.P407919219383577500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A190604.P407919219383577500

/-! ## A190604.P5360812075881500773

`8*∏[A096231(2*n+3)]`
-/

namespace A190604.P5360812075881500773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190604.P5360812075881500773

/-! ## A190604.P955323147643847870

`8*∏[A134816(2*n+9)]`
-/

namespace A190604.P955323147643847870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190604.P955323147643847870

/-!
# A190608: a(1)=a(2)=1; thereafter a(n) = 2*(a(ceiling(n/2))-a(floor(n/2))).

The programs for A190608, the canonical program `A190608.P12207567808677995842` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190608 has offset 1).

The definition of A190608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1))` (program `A190608.P12207567808677995842`, by `A190608.P12207567808677995842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190608.P12207567808677995842

`2*(a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190608

/-- `2*(a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1))` -/
def P12207567808677995842.Spec : Prop :=
  ∀ n, P12207567808677995842.a n = A190608 (n + 1)

theorem P12207567808677995842.correct : P12207567808677995842.Spec := by
  intro n
  simp only [A190608, Nat.add_sub_cancel]

end A190608

/-! ## A190608.P4668530059990785910

`Δ[A132196(n)]*A190610(n+1)`
-/

namespace A190608.P4668530059990785910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A190610 (n + 1)

end

end A190608.P4668530059990785910

namespace A190608

/-- `Δ[A132196(n)]*A190610(n+1)` -/
def P4668530059990785910.Spec : Prop :=
  ∀ n, P4668530059990785910.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P6155547094630949098

`A053644(A005378(n))*A190610(n+1)`
-/

namespace A190608.P6155547094630949098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A005378 n).toNat * A190610 (n + 1)

end

end A190608.P6155547094630949098

namespace A190608

/-- `A053644(A005378(n))*A190610(n+1)` -/
def P6155547094630949098.Spec : Prop :=
  ∀ n, P6155547094630949098.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P13403434968031106195

`A053644(A008619(n))*A190610(n+1)`
-/

namespace A190608.P13403434968031106195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A008619 n).toNat * A190610 (n + 1)

end

end A190608.P13403434968031106195

namespace A190608

/-- `A053644(A008619(n))*A190610(n+1)` -/
def P13403434968031106195.Spec : Prop :=
  ∀ n, P13403434968031106195.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P12064521203807854433

`A053644(A020915(n))*A190610(n+1)`
-/

namespace A190608.P12064521203807854433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A020915 n).toNat * A190610 (n + 1)

end

end A190608.P12064521203807854433

namespace A190608

/-- `A053644(A020915(n))*A190610(n+1)` -/
def P12064521203807854433.Spec : Prop :=
  ∀ n, P12064521203807854433.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P6152715451011671344

`A065033(A053644(n))*A190610(n+1)`
-/

namespace A190608.P6152715451011671344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A053644 n).toNat * A190610 (n + 1)

end

end A190608.P6152715451011671344

namespace A190608

/-- `A065033(A053644(n))*A190610(n+1)` -/
def P6152715451011671344.Spec : Prop :=
  ∀ n, P6152715451011671344.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P35183448964697091

`Δ[A132196(n)]*A117569(A043261(n+1))`
-/

namespace A190608.P35183448964697091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A117569 (A043261 (n + 1)).toNat

end

end A190608.P35183448964697091

namespace A190608

/-- `Δ[A132196(n)]*A117569(A043261(n+1))` -/
def P35183448964697091.Spec : Prop :=
  ∀ n, P35183448964697091.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P3849980093670097615

`A053644(A006165(n+1))*A190610(n+1)`
-/

namespace A190608.P3849980093670097615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A006165 (n + 1)).toNat * A190610 (n + 1)

end

end A190608.P3849980093670097615

namespace A190608

/-- `A053644(A006165(n+1))*A190610(n+1)` -/
def P3849980093670097615.Spec : Prop :=
  ∀ n, P3849980093670097615.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P591059188383128547

`Δ[A145342(n+1)]*A190610(n+1)`
-/

namespace A190608.P591059188383128547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A190610 (n + 1)

end

end A190608.P591059188383128547

namespace A190608

/-- `Δ[A145342(n+1)]*A190610(n+1)` -/
def P591059188383128547.Spec : Prop :=
  ∀ n, P591059188383128547.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P16507646060004385848

`A008621(A003817(n))*A190610(n+1)`
-/

namespace A190608.P16507646060004385848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A003817 n).toNat * A190610 (n + 1)

end

end A190608.P16507646060004385848

namespace A190608

/-- `A008621(A003817(n))*A190610(n+1)` -/
def P16507646060004385848.Spec : Prop :=
  ∀ n, P16507646060004385848.a n = A190608 (n + 1)

end A190608

/-! ## A190608.P11605217244206918698

`A140130(n+1)*A190610(n+1)`
-/

namespace A190608.P11605217244206918698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140130 (n + 1) * A190610 (n + 1)

end

end A190608.P11605217244206918698

namespace A190608

/-- `A140130(n+1)*A190610(n+1)` -/
def P11605217244206918698.Spec : Prop :=
  ∀ n, P11605217244206918698.a n = A190608 (n + 1)

end A190608

/-!
# A190609: a(1)=a(2)=1; thereafter a(n) = 3*(a(ceiling(n/2))-a(floor(n/2))).

The programs for A190609, the canonical program `A190609.P16435167020784717974` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190609 has offset 1).

The definition of A190609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1))` (program `A190609.P16435167020784717974`, by `A190609.P16435167020784717974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190609.P16435167020784717974

`3*(a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190609

/-- `3*(a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1))` -/
def P16435167020784717974.Spec : Prop :=
  ∀ n, P16435167020784717974.a n = A190609 (n + 1)

theorem P16435167020784717974.correct : P16435167020784717974.Spec := by
  intro n
  simp only [A190609, Nat.add_sub_cancel]

end A190609

/-! ## A190609.P1183121943751592105

`A003961(A140130(n+1))*A190610(n+1)`
-/

namespace A190609.P1183121943751592105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A140130 (n + 1)).toNat * A190610 (n + 1)

end

end A190609.P1183121943751592105

namespace A190609

/-- `A003961(A140130(n+1))*A190610(n+1)` -/
def P1183121943751592105.Spec : Prop :=
  ∀ n, P1183121943751592105.a n = A190609 (n + 1)

end A190609

/-! ## A190609.P11678062550076939629

`A003961(A140130(n+1))*A117569(A043261(n+1))`
-/

namespace A190609.P11678062550076939629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A140130 (n + 1)).toNat * A117569 (A043261 (n + 1)).toNat

end

end A190609.P11678062550076939629

namespace A190609

/-- `A003961(A140130(n+1))*A117569(A043261(n+1))` -/
def P11678062550076939629.Spec : Prop :=
  ∀ n, P11678062550076939629.a n = A190609 (n + 1)

end A190609

/-! ## A190609.P16639105586953832832

`A065620(A006165(n+1))%2*A003961(A140130(n+1))`
-/

namespace A190609.P16639105586953832832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065620 (A006165 (n + 1)).toNat) 2 * A003961 (A140130 (n + 1)).toNat

end

end A190609.P16639105586953832832

namespace A190609

/-- `A065620(A006165(n+1))%2*A003961(A140130(n+1))` -/
def P16639105586953832832.Spec : Prop :=
  ∀ n, P16639105586953832832.a n = A190609 (n + 1)

end A190609

/-! ## A190609.P3827340922424427067

`A003961(A065280(n+1))*A190610(n+1)`
-/

namespace A190609.P3827340922424427067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A065280 (n + 1)).toNat * A190610 (n + 1)

end

end A190609.P3827340922424427067

namespace A190609

/-- `A003961(A065280(n+1))*A190610(n+1)` -/
def P3827340922424427067.Spec : Prop :=
  ∀ n, P3827340922424427067.a n = A190609 (n + 1)

end A190609

/-! ## A190609.P4301550729400568717

`A003961(A065280(n+1))*A117569(A043261(n+1))`
-/

namespace A190609.P4301550729400568717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A065280 (n + 1)).toNat * A117569 (A043261 (n + 1)).toNat

end

end A190609.P4301550729400568717

namespace A190609

/-- `A003961(A065280(n+1))*A117569(A043261(n+1))` -/
def P4301550729400568717.Spec : Prop :=
  ∀ n, P4301550729400568717.a n = A190609 (n + 1)

end A190609

/-!
# A190610: a(1)=a(2)=1; thereafter a(n) = a(ceiling(n/2))-a(floor(n/2)).

The programs for A190610, the canonical program `A190610.P62400458379347442` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190610 has offset 1).

The definition of A190610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1)` (program `A190610.P62400458379347442`, by `A190610.P62400458379347442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190610.P62400458379347442

`a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190610

/-- `a(ceil((n+1)/2)-1)-a(floor((n+1)/2)-1)` -/
def P62400458379347442.Spec : Prop :=
  ∀ n, P62400458379347442.a n = A190610 (n + 1)

theorem P62400458379347442.correct : P62400458379347442.Spec := by
  intro n
  simp only [A190610, Nat.add_sub_cancel]

end A190610

/-! ## A190610.P6920450278053980221

`A190609(n+1)%2`
-/

namespace A190610.P6920450278053980221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190609 (n + 1)) 2

end

end A190610.P6920450278053980221

namespace A190610

/-- `A190609(n+1)%2` -/
def P6920450278053980221.Spec : Prop :=
  ∀ n, P6920450278053980221.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P10238832731248714383

`∑[-a(A025480(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A190610.P10238832731248714383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  -f1 (A025480 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190610.P10238832731248714383

namespace A190610

/-- `∑[-a(A025480(n-1))]` -/
def P10238832731248714383.Spec : Prop :=
  ∀ n, P10238832731248714383.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P10277304807353221844

`∑[-a(A103391(n+1)-2)]` with `a(0)=1, a(1)=0`
-/

namespace A190610.P10277304807353221844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  -f1 (A103391 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190610.P10277304807353221844

namespace A190610

/-- `∑[-a(A103391(n+1)-2)]` -/
def P10277304807353221844.Spec : Prop :=
  ∀ n, P10277304807353221844.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P8970117888391702918

`A065620(1-∑[floor(2/(n+1)*and(n, 2*n+1))]+n)%2`
-/

namespace A190610.P8970117888391702918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (n + 1 : ℚ) * (Nat.land n (2 * n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065620 (1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat) 2

end

end A190610.P8970117888391702918

namespace A190610

/-- `A065620(1-∑[floor(2/(n+1)*and(n, 2*n+1))]+n)%2` -/
def P8970117888391702918.Spec : Prop :=
  ∀ n, P8970117888391702918.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P15940997540682030909

`A117569(A043261(n+1))`
-/

namespace A190610.P15940997540682030909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A043261 (n + 1)).toNat

end

end A190610.P15940997540682030909

namespace A190610

/-- `A117569(A043261(n+1))` -/
def P15940997540682030909.Spec : Prop :=
  ∀ n, P15940997540682030909.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P8548851366566927039

`A065620(A006165(n+1))%2`
-/

namespace A190610.P8548851366566927039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065620 (A006165 (n + 1)).toNat) 2

end

end A190610.P8548851366566927039

namespace A190610

/-- `A065620(A006165(n+1))%2` -/
def P8548851366566927039.Spec : Prop :=
  ∀ n, P8548851366566927039.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P14830390993067455782

`A117569(∑{digits}[A057148(n+1), #])`
-/

namespace A190610.P14830390993067455782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A190610.P14830390993067455782

namespace A190610

/-- `A117569(∑{digits}[A057148(n+1), #])` -/
def P14830390993067455782.Spec : Prop :=
  ∀ n, P14830390993067455782.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P4168315857273205352

`A117569(∑{digits}[A101705(n+1), #])`
-/

namespace A190610.P4168315857273205352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A190610.P4168315857273205352

namespace A190610

/-- `A117569(∑{digits}[A101705(n+1), #])` -/
def P4168315857273205352.Spec : Prop :=
  ∀ n, P4168315857273205352.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P3393071832551683714

`∑[A102560(A341916(n))]`
-/

namespace A190610.P3393071832551683714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 (A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190610.P3393071832551683714

namespace A190610

/-- `∑[A102560(A341916(n))]` -/
def P3393071832551683714.Spec : Prop :=
  ∀ n, P3393071832551683714.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P3381888263228667598

`A190608(n+1)/A140130(n+1)`
-/

namespace A190610.P3381888263228667598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190608 (n + 1) : ℚ) / (A140130 (n + 1) : ℚ)

end

end A190610.P3381888263228667598

namespace A190610

/-- `A190608(n+1)/A140130(n+1)` -/
def P3381888263228667598.Spec : Prop :=
  ∀ n, P3381888263228667598.a n = (A190610 (n + 1) : ℚ)

end A190610

/-! ## A190610.P17191560259875911294

`∑[A010060(A005942(n+1))-A010060(n)]`
-/

namespace A190610.P17191560259875911294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005942 (n + 1)).toNat - A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190610.P17191560259875911294

namespace A190610

/-- `∑[A010060(A005942(n+1))-A010060(n)]` -/
def P17191560259875911294.Spec : Prop :=
  ∀ n, P17191560259875911294.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P2354072540589692463

`∑[A219977(3*A341916(n))]`
-/

namespace A190610.P2354072540589692463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (3 * A341916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190610.P2354072540589692463

namespace A190610

/-- `∑[A219977(3*A341916(n))]` -/
def P2354072540589692463.Spec : Prop :=
  ∀ n, P2354072540589692463.a n = A190610 (n + 1)

end A190610

/-! ## A190610.P1598709351597857061

`∑[A166698(A253565(n))]`
-/

namespace A190610.P1598709351597857061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A253565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190610.P1598709351597857061

namespace A190610

/-- `∑[A166698(A253565(n))]` -/
def P1598709351597857061.Spec : Prop :=
  ∀ n, P1598709351597857061.a n = A190610 (n + 1)

end A190610

/-!
# A190611: Expansion of f(q^3) * f(-q^8) * chi(-q^12) / chi(q) in powers of q where f(), chi() are Ramanujan theta functions.

The programs for A190611, there is no canonical definition to state claims against.
-/

/-! ## A190611.P10686132264555663719

`(-1)^n*A000377(n)`
-/

namespace A190611.P10686132264555663719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000377 n

end

end A190611.P10686132264555663719

/-! ## A190611.P11336601794179152174

`A000377(n)*A033999(n)`
-/

namespace A190611.P11336601794179152174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A033999 n

end

end A190611.P11336601794179152174

/-! ## A190611.P17177274072159431458

`A057077(n)*A261122(n)`
-/

namespace A190611.P17177274072159431458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A261122 n

end

end A190611.P17177274072159431458

/-! ## A190611.P15268149576612282463

`A000377(n)*A009001(2*n)`
-/

namespace A190611.P15268149576612282463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A009001 (2 * n)

end

end A190611.P15268149576612282463

/-! ## A190611.P16146022840878276045

`A033999(n)*A192013(char[n^14]+n)`
-/

namespace A190611.P16146022840878276045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A192013 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A190611.P16146022840878276045

/-! ## A190611.P13154884671452715452

`A000377(n)*A054354(A054353(n+1))`
-/

namespace A190611.P13154884671452715452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A054354 (A054353 (n + 1)).toNat

end

end A190611.P13154884671452715452

/-! ## A190611.P8771988115034765072

`A261122(A266491(n))`
-/

namespace A190611.P8771988115034765072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (A266491 n).toNat

end

end A190611.P8771988115034765072

/-! ## A190611.P17800430231844366489

`A261122(2*n)`
-/

namespace A190611.P17800430231844366489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (2 * n)

end

end A190611.P17800430231844366489

/-! ## A190611.P15155211923954677479

`A000377(n)*A056594(2*n)`
-/

namespace A190611.P15155211923954677479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A056594 (2 * n)

end

end A190611.P15155211923954677479

/-! ## A190611.P2562321898352051444

`A000377(n)*A087960(2*n)`
-/

namespace A190611.P2562321898352051444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A087960 (2 * n)

end

end A190611.P2562321898352051444

/-! ## A190611.P9754044077789032002

`A000377(n)*A034947(2*n+1)`
-/

namespace A190611.P9754044077789032002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A034947 (2 * n + 1)

end

end A190611.P9754044077789032002

/-! ## A190611.P4647593322666198912

`A000377(n)*A164677(2*n+1)`
-/

namespace A190611.P4647593322666198912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n * A164677 (2 * n + 1)

end

end A190611.P4647593322666198912

/-! ## A190611.P13471416445073286443

`A000377(n)/A087960(n²)`
-/

namespace A190611.P13471416445073286443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A190611.P13471416445073286443

/-!
# A190612: Numbers k such that (tau(k-1) + tau(k+1))/tau(k) is an integer, where tau(k)=A000005(k).

The programs for A190612, there is no canonical definition to state claims against.
-/

/-! ## A190612.P14102010211769374651

`lt[A112114(3*n+5), A211100(A352829(n))]`
-/

namespace A190612.P14102010211769374651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112114 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A352829 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190612.P14102010211769374651

/-! ## A190612.P9396772036642758401

`lt[A112114(3*n+5), A347586(A070939(n+3))]`
-/

namespace A190612.P9396772036642758401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112114 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 (A070939 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190612.P9396772036642758401

/-! ## A190612.P1028268675832614160

`lt[A112114(3*n+5), A000120(n)]`
-/

namespace A190612.P1028268675832614160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112114 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190612.P1028268675832614160

/-! ## A190612.P6488572062621443675

`lt[A087428(A090466(n+1)), A087428(2*n+3)]`
-/

namespace A190612.P6488572062621443675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087428 (A090466 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087428 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190612.P6488572062621443675

/-!
# A190614: Values of n where A190613(n) < 0.

The programs for A190614, there is no canonical definition to state claims against.
-/

/-! ## A190614.P15441853297383949397

`lt[A190613(n), 0]`
-/

namespace A190614.P15441853297383949397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190613 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190614.P15441853297383949397

/-!
# A190615: Expansion of f(x^2) * f(x^3) / (chi(x) * chi(x^6)) in powers of x where f(), chi() are Ramanujan theta functions.

The programs for A190615, there is no canonical definition to state claims against.
-/

/-! ## A190615.P11815131085267303083

`(-1)^n*A129402(n)`
-/

namespace A190615.P11815131085267303083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129402 n

end

end A190615.P11815131085267303083

/-! ## A190615.P14075075422675643518

`(-1)^floor(n/2)*A128580(n)`
-/

namespace A190615.P14075075422675643518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A128580 n : ℚ)

end

end A190615.P14075075422675643518

/-! ## A190615.P13891819559026867372

`(-1)^(n+floor(n/2))*A134177(n)`
-/

namespace A190615.P13891819559026867372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((n : ℤ) + ⌊(n : ℚ) / 2⌋ : ℤ) * (A134177 n : ℚ)

end

end A190615.P13891819559026867372

/-! ## A190615.P8407496893827467719

`A128580(n)/A057077(n)`
-/

namespace A190615.P8407496893827467719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128580 n : ℚ) / (A057077 n : ℚ)

end

end A190615.P8407496893827467719

/-! ## A190615.P5546864080513971339

`A129402(n)/A057077(A057077(n)+n)`
-/

namespace A190615.P5546864080513971339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A190615.P5546864080513971339

/-! ## A190615.P3559857794267340096

`-A261122(2*n+1)`
-/

namespace A190615.P3559857794267340096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A261122 (2 * n + 1)

end

end A190615.P3559857794267340096

/-! ## A190615.P11275570047032795708

`A129402(n)/A057077(2*n)`
-/

namespace A190615.P11275570047032795708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A190615.P11275570047032795708

/-! ## A190615.P13425983093411277532

`A129402(n)/A087960(2*n)`
-/

namespace A190615.P13425983093411277532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A190615.P13425983093411277532

/-! ## A190615.P4893741508646715818

`A000377(2*n+1)*A033999(n)`
-/

namespace A190615.P4893741508646715818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) * A033999 n

end

end A190615.P4893741508646715818

/-! ## A190615.P16596632269664069620

`A033999(n)*A192013(2*n+1)`
-/

namespace A190615.P16596632269664069620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A192013 (2 * n + 1)

end

end A190615.P16596632269664069620

/-! ## A190615.P6086099380821083985

`A033999(n+1)*A190611(2*n+1)`
-/

namespace A190615.P6086099380821083985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A190611 (2 * n + 1)

end

end A190615.P6086099380821083985

/-! ## A190615.P5847821048775988672

`A000377(2*n+1)*A009001(2*n)`
-/

namespace A190615.P5847821048775988672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) * A009001 (2 * n)

end

end A190615.P5847821048775988672

/-! ## A190615.P16063240406946303752

`A000377(2*n+1)*A056594(2*n)`
-/

namespace A190615.P16063240406946303752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) * A056594 (2 * n)

end

end A190615.P16063240406946303752

/-! ## A190615.P11298395887185648201

`A000377(2*n+1)*A087960(2*n)`
-/

namespace A190615.P11298395887185648201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) * A087960 (2 * n)

end

end A190615.P11298395887185648201

/-! ## A190615.P8503022476398206476

`A009001(2*n)*A192013(2*n+1)`
-/

namespace A190615.P8503022476398206476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A192013 (2 * n + 1)

end

end A190615.P8503022476398206476

/-! ## A190615.P14408590418652837781

`A087960(2*n)*A192013(2*n+1)`
-/

namespace A190615.P14408590418652837781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A192013 (2 * n + 1)

end

end A190615.P14408590418652837781

/-! ## A190615.P3501967261527269716

`abs(A190611(2*n+1))*A087960(2*n)`
-/

namespace A190615.P3501967261527269716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190611 (2 * n + 1)| * A087960 (2 * n)

end

end A190615.P3501967261527269716

/-! ## A190615.P8056842163341510924

`A000377(2*n+1)*A034947(2*n+1)`
-/

namespace A190615.P8056842163341510924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) * A034947 (2 * n + 1)

end

end A190615.P8056842163341510924

/-! ## A190615.P4746678389991848676

`A000377(2*n+1)*A164677(2*n+1)`
-/

namespace A190615.P4746678389991848676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (2 * n + 1) * A164677 (2 * n + 1)

end

end A190615.P4746678389991848676

/-! ## A190615.P10127655116895894798

`A101455(2*n+1)*A192013(2*n+1)`
-/

namespace A190615.P10127655116895894798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (2 * n + 1) * A192013 (2 * n + 1)

end

end A190615.P10127655116895894798

/-!
# A190619: Binary expansions of odd numbers with a single zero in their binary expansion.

The programs for A190619, the canonical program `A190619.P17838795205186937548` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190619 has offset 1).

The definition of A190619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190619.P4933630184806864956

`∩[A247647(n+1), A259300(n+1)]`
-/

namespace A190619.P4933630184806864956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190619.P4933630184806864956

namespace A190619

/-- `∩[A247647(n+1), A259300(n+1)]` -/
def P4933630184806864956.Spec : Prop :=
  ∀ n, (P4933630184806864956.a n : ℤ) = A190619 (n + 1)

end A190619

/-! ## A190619.P17838795205186937548

`A104326(eq[3, A104325(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A190619

/-- `A104326(eq[3, A104325(n)])` -/
def P17838795205186937548.Spec : Prop :=
  ∀ n, P17838795205186937548.a n = A190619 (n + 1)

theorem P17838795205186937548.correct : P17838795205186937548.Spec := by
  intro n
  simp only [A190619, Nat.add_sub_cancel]

end A190619

/-! ## A190619.P4319123495774174019

`A007088(A081118(n+1))+A007088(A098354(n+1))`
-/

namespace A190619.P4319123495774174019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081118 (n + 1)).toNat + A007088 (A098354 (n + 1)).toNat

end

end A190619.P4319123495774174019

namespace A190619

/-- `A007088(A081118(n+1))+A007088(A098354(n+1))` -/
def P4319123495774174019.Spec : Prop :=
  ∀ n, P4319123495774174019.a n = A190619 (n + 1)

end A190619

/-! ## A190619.P2837859028700186581

`A007088(A190620(n+1))`
-/

namespace A190619.P2837859028700186581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A190620 (n + 1)).toNat

end

end A190619.P2837859028700186581

namespace A190619

/-- `A007088(A190620(n+1))` -/
def P2837859028700186581.Spec : Prop :=
  ∀ n, P2837859028700186581.a n = A190619 (n + 1)

end A190619

/-! ## A190619.P789869910984458218

`A007088(A118586(n+1)-1)`
-/

namespace A190619.P789869910984458218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A118586 (n + 1) - 1).toNat

end

end A190619.P789869910984458218

namespace A190619

/-- `A007088(A118586(n+1)-1)` -/
def P789869910984458218.Spec : Prop :=
  ∀ n, P789869910984458218.a n = A190619 (n + 1)

end A190619

/-! ## A190619.P8288617970540777344

`A007088(A081118(comp[∑[n]]+1))`
-/

namespace A190619.P8288617970540777344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A190619.P8288617970540777344

namespace A190619

/-- `A007088(A081118(comp[∑[n]]+1))` -/
def P8288617970540777344.Spec : Prop :=
  ∀ n, P8288617970540777344.a n = A190619 (n + 1)

end A190619

/-! ## A190619.P10152061356145737315

`A007088(2*A164874(n+1)+1)`
-/

namespace A190619.P10152061356145737315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A164874 (n + 1) + 1).toNat

end

end A190619.P10152061356145737315

namespace A190619

/-- `A007088(2*A164874(n+1)+1)` -/
def P10152061356145737315.Spec : Prop :=
  ∀ n, P10152061356145737315.a n = A190619 (n + 1)

end A190619

/-! ## A190619.P5139493205273902874

`A007088(2*A175332(n+1)-1)`
-/

namespace A190619.P5139493205273902874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A175332 (n + 1) - 1).toNat

end

end A190619.P5139493205273902874

namespace A190619

/-- `A007088(2*A175332(n+1)-1)` -/
def P5139493205273902874.Spec : Prop :=
  ∀ n, P5139493205273902874.a n = A190619 (n + 1)

end A190619

/-! ## A190619.P2653777232482811742

`∩[A259300(n+1), A350346(n+1)]`
-/

namespace A190619.P2653777232482811742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190619.P2653777232482811742

namespace A190619

/-- `∩[A259300(n+1), A350346(n+1)]` -/
def P2653777232482811742.Spec : Prop :=
  ∀ n, (P2653777232482811742.a n : ℤ) = A190619 (n + 1)

end A190619

/-! ## A190619.P5070934862732535184

`A007088(A098354(n+1)+A081118(n+1))`
-/

namespace A190619.P5070934862732535184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A098354 (n + 1) + A081118 (n + 1)).toNat

end

end A190619.P5070934862732535184

namespace A190619

/-- `A007088(A098354(n+1)+A081118(n+1))` -/
def P5070934862732535184.Spec : Prop :=
  ∀ n, P5070934862732535184.a n = A190619 (n + 1)

end A190619

/-!
# A190620: Odd numbers with a single zero in their binary expansion.

The programs for A190620, the canonical program `A190620.P17543203208516142486` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190620 has offset 1).

The definition of A190620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190620.P17543203208516142486

`A000225(A002024(n+1)+2)-A000079(A004736(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190620

/-- `A000225(A002024(n+1)+2)-A000079(A004736(n+1))` -/
def P17543203208516142486.Spec : Prop :=
  ∀ n, P17543203208516142486.a n = A190620 (n + 1)

theorem P17543203208516142486.correct : P17543203208516142486.Spec := by
  intro n
  simp only [A190620, Nat.add_sub_cancel]

end A190620

/-! ## A190620.P10370215506922280153

`A118586(n+1)-1`
-/

namespace A190620.P10370215506922280153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118586 (n + 1) - 1

end

end A190620.P10370215506922280153

namespace A190620

/-- `A118586(n+1)-1` -/
def P10370215506922280153.Spec : Prop :=
  ∀ n, P10370215506922280153.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P12099653965030719498

`A081118(comp[∑[n]]+1)`
-/

namespace A190620.P12099653965030719498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A190620.P12099653965030719498

namespace A190620

/-- `A081118(comp[∑[n]]+1)` -/
def P12099653965030719498.Spec : Prop :=
  ∀ n, P12099653965030719498.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P925610305108275836

`2*A175332(n+1)-1`
-/

namespace A190620.P925610305108275836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175332 (n + 1) - 1

end

end A190620.P925610305108275836

namespace A190620

/-- `2*A175332(n+1)-1` -/
def P925610305108275836.Spec : Prop :=
  ∀ n, P925610305108275836.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P13815377784962034295

`A098354(n+1)+A081118(n+1)`
-/

namespace A190620.P13815377784962034295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) + A081118 (n + 1)

end

end A190620.P13815377784962034295

namespace A190620

/-- `A098354(n+1)+A081118(n+1)` -/
def P13815377784962034295.Spec : Prop :=
  ∀ n, P13815377784962034295.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P5788039671080169627

`A130330(n)+2*A043569(n+1)`
-/

namespace A190620.P5788039671080169627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n + 2 * A043569 (n + 1)

end

end A190620.P5788039671080169627

namespace A190620

/-- `A130330(n)+2*A043569(n+1)` -/
def P5788039671080169627.Spec : Prop :=
  ∀ n, P5788039671080169627.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P14094972576809595723

`2*(A140513(n)+A089633(n))+1`
-/

namespace A190620.P14094972576809595723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140513 n + A089633 n) + 1

end

end A190620.P14094972576809595723

namespace A190620

/-- `2*(A140513(n)+A089633(n))+1` -/
def P14094972576809595723.Spec : Prop :=
  ∀ n, P14094972576809595723.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P1863178261519926905

`A043569(n+1)+A098354(n+1)-1`
-/

namespace A190620.P1863178261519926905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) + (A098354 (n + 1) - 1)

end

end A190620.P1863178261519926905

namespace A190620

/-- `A043569(n+1)+A098354(n+1)-1` -/
def P1863178261519926905.Spec : Prop :=
  ∀ n, P1863178261519926905.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P2212223267424810522

`A098354(n+1)+A224195(n+1)-2`
-/

namespace A190620.P2212223267424810522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) + (A224195 (n + 1) - 2)

end

end A190620.P2212223267424810522

namespace A190620

/-- `A098354(n+1)+A224195(n+1)-2` -/
def P2212223267424810522.Spec : Prop :=
  ∀ n, P2212223267424810522.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P12656683759779647957

`lcm(A090988(n+1), A175332(n+1))-1`
-/

namespace A190620.P12656683759779647957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A090988 (n + 1)) (A175332 (n + 1)) : ℤ) - 1

end

end A190620.P12656683759779647957

namespace A190620

/-- `lcm(A090988(n+1), A175332(n+1))-1` -/
def P12656683759779647957.Spec : Prop :=
  ∀ n, P12656683759779647957.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P15531084117215132908

`A175332(n+1)+xor(A130330(n), A175332(n+1))`
-/

namespace A190620.P15531084117215132908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1) + Int.xor (A130330 n) (A175332 (n + 1))

end

end A190620.P15531084117215132908

namespace A190620

/-- `A175332(n+1)+xor(A130330(n), A175332(n+1))` -/
def P15531084117215132908.Spec : Prop :=
  ∀ n, P15531084117215132908.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P7666912818944822276

`A175332(n+1)+A175332(n+1)-A309873(n+1)²`
-/

namespace A190620.P7666912818944822276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1) + (A175332 (n + 1) - A309873 (n + 1) ^ 2)

end

end A190620.P7666912818944822276

namespace A190620

/-- `A175332(n+1)+A175332(n+1)-A309873(n+1)²` -/
def P7666912818944822276.Spec : Prop :=
  ∀ n, P7666912818944822276.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P6883561776634181808

`2*A030130(n+2)+1`
-/

namespace A190620.P6883561776634181808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030130 (n + 2) + 1

end

end A190620.P6883561776634181808

namespace A190620

/-- `2*A030130(n+2)+1` -/
def P6883561776634181808.Spec : Prop :=
  ∀ n, P6883561776634181808.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P6705246968278882775

`A175332(comp[∑[n]])-1`
-/

namespace A190620.P6705246968278882775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A190620.P6705246968278882775

namespace A190620

/-- `A175332(comp[∑[n]])-1` -/
def P6705246968278882775.Spec : Prop :=
  ∀ n, P6705246968278882775.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P9646629634978300502

`2*A089633(A014132(n+1))+1`
-/

namespace A190620.P9646629634978300502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089633 (A014132 (n + 1)).toNat + 1

end

end A190620.P9646629634978300502

namespace A190620

/-- `2*A089633(A014132(n+1))+1` -/
def P9646629634978300502.Spec : Prop :=
  ∀ n, P9646629634978300502.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P4297883032989104591

`A030130(A080036(n+1))`
-/

namespace A190620.P4297883032989104591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (A080036 (n + 1)).toNat

end

end A190620.P4297883032989104591

namespace A190620

/-- `A030130(A080036(n+1))` -/
def P4297883032989104591.Spec : Prop :=
  ∀ n, P4297883032989104591.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P48040743252964728

`A030130(A014132(n+1)+1)`
-/

namespace A190620.P48040743252964728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (A014132 (n + 1) + 1).toNat

end

end A190620.P48040743252964728

namespace A190620

/-- `A030130(A014132(n+1)+1)` -/
def P48040743252964728.Spec : Prop :=
  ∀ n, P48040743252964728.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P3644995290593585426

`∩[A030130(n+1), A081118(n+1)]`
-/

namespace A190620.P3644995290593585426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190620.P3644995290593585426

namespace A190620

/-- `∩[A030130(n+1), A081118(n+1)]` -/
def P3644995290593585426.Spec : Prop :=
  ∀ n, (P3644995290593585426.a n : ℤ) = A190620 (n + 1)

end A190620

/-! ## A190620.P5772388337532474008

`A224195(A002024(n+1)+n+2)-2`
-/

namespace A190620.P5772388337532474008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (A002024 (n + 1) + (n + 2 : ℤ)).toNat - 2

end

end A190620.P5772388337532474008

namespace A190620

/-- `A224195(A002024(n+1)+n+2)-2` -/
def P5772388337532474008.Spec : Prop :=
  ∀ n, P5772388337532474008.a n = A190620 (n + 1)

end A190620

/-! ## A190620.P3994215419098250770

`∩[A043569(n+1), A175332(n+1)]-1`
-/

namespace A190620.P3994215419098250770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A190620.P3994215419098250770

namespace A190620

/-- `∩[A043569(n+1), A175332(n+1)]-1` -/
def P3994215419098250770.Spec : Prop :=
  ∀ n, P3994215419098250770.a n = A190620 (n + 1)

end A190620

/-!
# A190621: a(n) = n if n is not divisible by 4, otherwise 0.

The programs for A190621, the canonical program `A190621.P6562268488037318602` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190621 has offset 0).

The definition of A190621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190621.P6562268488037318602

`n*A166486(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190621

/-- `n*A166486(n)` -/
def P6562268488037318602.Spec : Prop :=
  ∀ n, P6562268488037318602.a n = A190621 n

theorem P6562268488037318602.correct : P6562268488037318602.Spec := by
  intro n
  simp only [A190621]

end A190621

/-! ## A190621.P11223983992731722571

`lcm(n, gcd(4, n)%4)`
-/

namespace A190621.P11223983992731722571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.gcd 4 n % 4)

end

end A190621.P11223983992731722571

namespace A190621

/-- `lcm(n, gcd(4, n)%4)` -/
def P11223983992731722571.Spec : Prop :=
  ∀ n, (P11223983992731722571.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P11884136426501867562

`n*floor(sqrt(n%4))`
-/

namespace A190621.P11884136426501867562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.sqrt (n % 4)

end

end A190621.P11884136426501867562

namespace A190621

/-- `n*floor(sqrt(n%4))` -/
def P11884136426501867562.Spec : Prop :=
  ∀ n, (P11884136426501867562.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P5785886037218836993

`and(n, -and(3, -n))`
-/

namespace A190621.P5785886037218836993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-Int.land 3 (-(n : ℤ)))

end

end A190621.P5785886037218836993

namespace A190621

/-- `and(n, -and(3, -n))` -/
def P5785886037218836993.Spec : Prop :=
  ∀ n, P5785886037218836993.a n = A190621 n

end A190621

/-! ## A190621.P10776298365632136393

`n*floor(sqrt(and(3, n)))`
-/

namespace A190621.P10776298365632136393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.sqrt (Nat.land 3 n)

end

end A190621.P10776298365632136393

namespace A190621

/-- `n*floor(sqrt(and(3, n)))` -/
def P10776298365632136393.Spec : Prop :=
  ∀ n, (P10776298365632136393.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P11916008200905347742

`n*char[comp[4*n]]`
-/

namespace A190621.P11916008200905347742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A190621.P11916008200905347742

namespace A190621

/-- `n*char[comp[4*n]]` -/
def P11916008200905347742.Spec : Prop :=
  ∀ n, (P11916008200905347742.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P17574376383021667926

`and(n, (n-1)%4-3)`
-/

namespace A190621.P17574376383021667926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod ((n : ℤ) - 1) 4 - 3)

end

end A190621.P17574376383021667926

namespace A190621

/-- `and(n, (n-1)%4-3)` -/
def P17574376383021667926.Spec : Prop :=
  ∀ n, P17574376383021667926.a n = A190621 n

end A190621

/-! ## A190621.P2732278990929407880

`and(n, and(3, n-1)-3)`
-/

namespace A190621.P2732278990929407880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.land 3 ((n : ℤ) - 1) - 3)

end

end A190621.P2732278990929407880

namespace A190621

/-- `and(n, and(3, n-1)-3)` -/
def P2732278990929407880.Spec : Prop :=
  ∀ n, P2732278990929407880.a n = A190621 n

end A190621

/-! ## A190621.P8277678185123339520

`and(n, or(3, n)%(n+3))`
-/

namespace A190621.P8277678185123339520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor 3 n % (n + 3))

end

end A190621.P8277678185123339520

namespace A190621

/-- `and(n, or(3, n)%(n+3))` -/
def P8277678185123339520.Spec : Prop :=
  ∀ n, (P8277678185123339520.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P17949546966589047237

`lcm(2*n, and(5, n²))/2`
-/

namespace A190621.P17949546966589047237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n) (Nat.land 5 (n ^ 2)) : ℚ) / 2

end

end A190621.P17949546966589047237

namespace A190621

/-- `lcm(2*n, and(5, n²))/2` -/
def P17949546966589047237.Spec : Prop :=
  ∀ n, P17949546966589047237.a n = (A190621 n : ℚ)

end A190621

/-! ## A190621.P12470090082203377257

`C(n, and(4, (n+2)²)²!)`
-/

namespace A190621.P12470090082203377257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.factorial (Nat.land 4 ((n + 2) ^ 2) ^ 2))

end

end A190621.P12470090082203377257

namespace A190621

/-- `C(n, and(4, (n+2)²)²!)` -/
def P12470090082203377257.Spec : Prop :=
  ∀ n, (P12470090082203377257.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P13522502888175954260

`or(n, gcd(2, n+2))%(n+2)`
-/

namespace A190621.P13522502888175954260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.gcd 2 (n + 2)) % (n + 2)

end

end A190621.P13522502888175954260

namespace A190621

/-- `or(n, gcd(2, n+2))%(n+2)` -/
def P13522502888175954260.Spec : Prop :=
  ∀ n, (P13522502888175954260.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P2776339331202727334

`gcd(2*n, C((n+1)², 2))-n`
-/

namespace A190621.P2776339331202727334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (Nat.choose ((n + 1) ^ 2) 2) : ℤ) - (n : ℤ)

end

end A190621.P2776339331202727334

namespace A190621

/-- `gcd(2*n, C((n+1)², 2))-n` -/
def P2776339331202727334.Spec : Prop :=
  ∀ n, P2776339331202727334.a n = A190621 n

end A190621

/-! ## A190621.P9113637075647032466

`or(n, ∑[n+1]%2)%(n+1)`
-/

namespace A190621.P9113637075647032466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) % (n + 1)

end

end A190621.P9113637075647032466

namespace A190621

/-- `or(n, ∑[n+1]%2)%(n+1)` -/
def P9113637075647032466.Spec : Prop :=
  ∀ n, (P9113637075647032466.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P12326303068784644467

`n+1-gcd(n+1, or(3, -(n+2)))`
-/

namespace A190621.P12326303068784644467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (n + 1 : ℤ) (Int.lor 3 (-(n + 2 : ℤ))) : ℤ)

end

end A190621.P12326303068784644467

namespace A190621

/-- `n+1-gcd(n+1, or(3, -(n+2)))` -/
def P12326303068784644467.Spec : Prop :=
  ∀ n, P12326303068784644467.a n = A190621 n

end A190621

/-! ## A190621.P2792880606604576714

`lcm(n, A007877(n))`
-/

namespace A190621.P2792880606604576714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A007877 n)

end

end A190621.P2792880606604576714

namespace A190621

/-- `lcm(n, A007877(n))` -/
def P2792880606604576714.Spec : Prop :=
  ∀ n, (P2792880606604576714.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P5933701402353672242

`C(n, A263313(n))`
-/

namespace A190621.P5933701402353672242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A263313 n).toNat

end

end A190621.P5933701402353672242

namespace A190621

/-- `C(n, A263313(n))` -/
def P5933701402353672242.Spec : Prop :=
  ∀ n, (P5933701402353672242.a n : ℤ) = A190621 n

end A190621

/-! ## A190621.P8308125841835565496

`abs(n*A075553(n))`
-/

namespace A190621.P8308125841835565496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A075553 n|

end

end A190621.P8308125841835565496

namespace A190621

/-- `abs(n*A075553(n))` -/
def P8308125841835565496.Spec : Prop :=
  ∀ n, P8308125841835565496.a n = A190621 n

end A190621

/-! ## A190621.P16733479967900718030

`lcm(2, A266491(n))-n`
-/

namespace A190621.P16733479967900718030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A266491 n) : ℤ) - (n : ℤ)

end

end A190621.P16733479967900718030

namespace A190621

/-- `lcm(2, A266491(n))-n` -/
def P16733479967900718030.Spec : Prop :=
  ∀ n, P16733479967900718030.a n = A190621 n

end A190621

/-! ## A190621.P9733278677330391647

`and(n, A056594(n)-1)`
-/

namespace A190621.P9733278677330391647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A056594 n - 1)

end

end A190621.P9733278677330391647

namespace A190621

/-- `and(n, A056594(n)-1)` -/
def P9733278677330391647.Spec : Prop :=
  ∀ n, P9733278677330391647.a n = A190621 n

end A190621

/-!
# A190622: Omit the initial 1 from A000141 and take the Mobius transform.

The programs for A190622, there is no canonical definition to state claims against.
-/

/-! ## A190622.P17290940994864416025

`∑{d}[n+1, A008683(#)*A000141((n+1)/#)]`
-/

namespace A190622.P17290940994864416025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000141 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A190622.P17290940994864416025

/-!
# A190623: Mobius transform of A008457.

The programs for A190623, the canonical program `A190623.P14402009872277269755` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190623 has offset 1).

The definition of A190623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190623.P14402009872277269755

`(n+1)*((n+1)²-A195938(n+1)²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190623

/-- `(n+1)*((n+1)²-A195938(n+1)²)` -/
def P14402009872277269755.Spec : Prop :=
  ∀ n, P14402009872277269755.a n = A190623 (n + 1)

theorem P14402009872277269755.correct : P14402009872277269755.Spec := by
  intro n
  simp only [A190623, Nat.add_sub_cancel]

end A190623

/-! ## A190623.P4315330103001973742

`∑{d}[n+1, A008457(#)*A008683((n+1)/#)]`
-/

namespace A190623.P4315330103001973742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008457 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A190623.P4315330103001973742

namespace A190623

/-- `∑{d}[n+1, A008457(#)*A008683((n+1)/#)]` -/
def P4315330103001973742.Spec : Prop :=
  ∀ n, P4315330103001973742.a n = A190623 (n + 1)

end A190623

/-! ## A190623.P6824325947417372061

`A309337(A093005(n+1))/A309337(A008619(n))`
-/

namespace A190623.P6824325947417372061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309337 (A093005 (n + 1)).toNat : ℚ) / (A309337 (A008619 n).toNat : ℚ)

end

end A190623.P6824325947417372061

namespace A190623

/-- `A309337(A093005(n+1))/A309337(A008619(n))` -/
def P6824325947417372061.Spec : Prop :=
  ∀ n, P6824325947417372061.a n = (A190623 (n + 1) : ℚ)

end A190623

/-!
# A190625: Half the number of n X n symmetric binary matrices with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A190625, there is no canonical definition to state claims against.
-/

/-! ## A190625.P9364167774463093222

`A130481(A336545(n+1))+A034346(n+1)`
-/

namespace A190625.P9364167774463093222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A336545 (n + 1)).toNat + A034346 (n + 1)

end

end A190625.P9364167774463093222

/-! ## A190625.P3961255866474298441

`A008350(A061675(n))`
-/

namespace A190625.P3961255866474298441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 (A061675 n).toNat

end

end A190625.P3961255866474298441

/-!
# A190626: Half the number of n X n symmetric binary matrices with no element equal to a strict majority of its diagonal and antidiagonal neighbors.

The programs for A190626, there is no canonical definition to state claims against.
-/

/-! ## A190626.P5877816197032041081

`A049615(3*A053871(n))`
-/

namespace A190626.P5877816197032041081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (3 * A053871 n).toNat

end

end A190626.P5877816197032041081

/-! ## A190626.P5434845192958916609

`A195120(xor(n, A198916(n)))`
-/

namespace A190626.P5434845192958916609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (Int.xor (n : ℤ) (A198916 n)).toNat

end

end A190626.P5434845192958916609

/-!
# A190627: Half the number of n X n symmetric binary matrices with no element equal to a strict majority of its king-move neighbors.

The programs for A190627, there is no canonical definition to state claims against.
-/

/-! ## A190627.P2726228253125587749

`A123919(2^C(n, 2))+n!`
-/

namespace A190627.P2726228253125587749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (2 ^ Nat.choose n 2) + (Nat.factorial n : ℤ)

end

end A190627.P2726228253125587749

/-! ## A190627.P779629877034030329

`A099679(A180000(n²))`
-/

namespace A190627.P779629877034030329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099679 (A180000 (n ^ 2)).toNat

end

end A190627.P779629877034030329

/-!
# A190628: Half the number of n X n symmetric binary matrices with no element equal to a strict majority of its diagonal, vertical and horizontal neighbors.

The programs for A190628, there is no canonical definition to state claims against.
-/

/-! ## A190628.P7758781159990719759

`A130091(A294363(n)+A172727(n+1))`
-/

namespace A190628.P7758781159990719759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A294363 n + A172727 (n + 1)).toNat

end

end A190628.P7758781159990719759

/-!
# A190629: Half the number of n X n symmetric binary matrices with no element equal to a strict majority of its vertical, antidiagonal and horizontal neighbors.

The programs for A190629, there is no canonical definition to state claims against.
-/

/-! ## A190629.P17663853108818145086

`or(1, A287183(A346185(n)))`
-/

namespace A190629.P17663853108818145086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A287183 (A346185 n).toNat)

end

end A190629.P17663853108818145086

/-! ## A190629.P7141992136060298383

`A130496((A124531(n)+1)²)+1`
-/

namespace A190629.P7141992136060298383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130496 ((A124531 n + 1) ^ 2).toNat + 1

end

end A190629.P7141992136060298383

/-!
# A190631: Half the number of n X n symmetric binary matrices with no element equal to a strict majority of its king- and knight-move neighbors.

The programs for A190631, there is no canonical definition to state claims against.
-/

/-! ## A190631.P7540971863870953423

`and(A194151(A234239(n)), A234239(n))`
-/

namespace A190631.P7540971863870953423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194151 (A234239 n).toNat) (A234239 n)

end

end A190631.P7540971863870953423

/-! ## A190631.P3700191282370548432

`∏{p}[xor(n, 4*a(n-2))², #]` with `a(0)=0, a(1)=1, a(2)=16`
-/

namespace A190631.P3700191282370548432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 16] fun n f1 =>
  Nat.xor n (4 * f1 (n - 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A190631.P3700191282370548432

/-!
# A190633: G.f. satisfies: A(x) = 1 + x*A(x*A(x*A(x*A(x*...x*A(x*...)^n...)^4)^3)^2)^1.

The programs for A190633, there is no canonical definition to state claims against.
-/

/-! ## A190633.P11665038161473351137

`A195174(∑[A007840(n)]+1)`
-/

namespace A190633.P11665038161473351137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A190633.P11665038161473351137

/-! ## A190633.P685347496333690289

`A004001(A296150(n+1)+A283828(n+1))`
-/

namespace A190633.P685347496333690289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A296150 (n + 1) + A283828 (n + 1)).toNat

end

end A190633.P685347496333690289

/-!
# A190634: Indices of primes from A190637.

The programs for A190634, there is no canonical definition to state claims against.
-/

/-! ## A190634.P9470827447974622049

`A000720(A190637(n+1))`
-/

namespace A190634.P9470827447974622049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A190637 (n + 1)).toNat

end

end A190634.P9470827447974622049

/-!
# A190636: a(n) = (n^3 + 3*n^7)/4.

The programs for A190636, the canonical program `A190636.P11228244547234411370` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190636 has offset 1).

The definition of A190636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190636.P11228244547234411370

`((n+1)^3+3*(n+1)^7)/4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190636

/-- `((n+1)^3+3*(n+1)^7)/4` -/
def P11228244547234411370.Spec : Prop :=
  ∀ n, P11228244547234411370.a n = (A190636 (n + 1) : ℚ)

end A190636

/-! ## A190636.P5860562950690960264

`((n+1)^7-(n+1)^5)/2+C((n+1)²+1, 2)²/(n+1)`
-/

namespace A190636.P5860562950690960264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 7 : ℤ) - ((n + 1) ^ 5 : ℤ) : ℚ) / 2 + (Nat.choose ((n + 1) ^ 2 + 1) 2 ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A190636.P5860562950690960264

namespace A190636

/-- `((n+1)^7-(n+1)^5)/2+C((n+1)²+1, 2)²/(n+1)` -/
def P5860562950690960264.Spec : Prop :=
  ∀ n, P5860562950690960264.a n = (A190636 (n + 1) : ℚ)

end A190636

/-! ## A190636.P146397913798021660

`A292045(n+1)+A052460(n+1)`
-/

namespace A190636.P146397913798021660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292045 (n + 1) + A052460 (n + 1)

end

end A190636.P146397913798021660

namespace A190636

/-- `A292045(n+1)+A052460(n+1)` -/
def P146397913798021660.Spec : Prop :=
  ∀ n, P146397913798021660.a n = A190636 (n + 1)

end A190636

/-! ## A190636.P13007990672937327187

`A052460(n+1)+n*A168351(n+1)`
-/

namespace A190636.P13007990672937327187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052460 (n + 1) + (n : ℤ) * A168351 (n + 1)

end

end A190636.P13007990672937327187

namespace A190636

/-- `A052460(n+1)+n*A168351(n+1)` -/
def P13007990672937327187.Spec : Prop :=
  ∀ n, P13007990672937327187.a n = A190636 (n + 1)

end A190636

/-! ## A190636.P17564517428311725934

`A052460(n+1)+(n+1)²²*A027480(n)`
-/

namespace A190636.P17564517428311725934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052460 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ) * A027480 n

end

end A190636.P17564517428311725934

namespace A190636

/-- `A052460(n+1)+(n+1)²²*A027480(n)` -/
def P17564517428311725934.Spec : Prop :=
  ∀ n, P17564517428311725934.a n = A190636 (n + 1)

end A190636

/-! ## A190636.P10785556967752156533

`A052460(n+1)+(n+1)/2*A136038(n+1)`
-/

namespace A190636.P10785556967752156533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052460 (n + 1) : ℚ) + (n + 1 : ℚ) / 2 * (A136038 (n + 1) : ℚ)

end

end A190636.P10785556967752156533

namespace A190636

/-- `A052460(n+1)+(n+1)/2*A136038(n+1)` -/
def P10785556967752156533.Spec : Prop :=
  ∀ n, P10785556967752156533.a n = (A190636 (n + 1) : ℚ)

end A190636

/-! ## A190636.P16490557768041946038

`A052460(n+1)+2*A000578(n+1)*A006011(n+1)`
-/

namespace A190636.P16490557768041946038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052460 (n + 1) + 2 * (A000578 (n + 1) * A006011 (n + 1))

end

end A190636.P16490557768041946038

namespace A190636

/-- `A052460(n+1)+2*A000578(n+1)*A006011(n+1)` -/
def P16490557768041946038.Spec : Prop :=
  ∀ n, P16490557768041946038.a n = A190636 (n + 1)

end A190636

/-! ## A190636.P1436000949185783435

`(n+1)/4*(n+1)²*A056107((n+1)²)`
-/

namespace A190636.P1436000949185783435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * ((n + 1) ^ 2 : ℚ) * (A056107 ((n + 1) ^ 2) : ℚ)

end

end A190636.P1436000949185783435

namespace A190636

/-- `(n+1)/4*(n+1)²*A056107((n+1)²)` -/
def P1436000949185783435.Spec : Prop :=
  ∀ n, P1436000949185783435.a n = (A190636 (n + 1) : ℚ)

end A190636

/-!
# A190637: Primes p == 3 mod 4 whose index as prime divides their index as a Gaussian prime (in the first quadrant, as defined in A103431, for example).

The programs for A190637, there is no canonical definition to state claims against.
-/

/-! ## A190637.P1608107329233975112

`A000040(A190634(n+1))`
-/

namespace A190637.P1608107329233975112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A190634 (n + 1)).toNat

end

end A190637.P1608107329233975112

/-!
# A190638: Numbers n such that with b=n*(2n-1) two remainders x and y are defined via x = 2^(b-1) -1 mod b and y = (2*n-1)^(b-1) - 1 mod b which satisfy x==y==0 (mod n) and y-x=n.

The programs for A190638, there is no canonical definition to state claims against.
-/

/-! ## A190638.P15070227613119756756

`p?[ceil(A006521(n+3)/2)]`
-/

namespace A190638.P15070227613119756756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006521 (n + 3) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A190638.P15070227613119756756

/-!
# A190639: Centuries whose prime pattern repeats in the next century.

The programs for A190639, there is no canonical definition to state claims against.
-/

/-! ## A190639.P9549247277450775299

`A219996(n+1)-1`
-/

namespace A190639.P9549247277450775299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219996 (n + 1) - 1

end

end A190639.P9549247277450775299

/-! ## A190639.P16822392863272354962

`record[A219996(A065648(n))-1]`
-/

namespace A190639.P16822392863272354962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219996 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190639.P16822392863272354962

/-! ## A190639.P8976982203139210374

`record[A219996(A117910(n))-1]`
-/

namespace A190639.P8976982203139210374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219996 (A117910 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190639.P8976982203139210374

/-! ## A190639.P7242898514485740948

`record[A219996(A134478(n))-1]`
-/

namespace A190639.P7242898514485740948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219996 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190639.P7242898514485740948

/-! ## A190639.P11493550527617252689

`A321804(∑{p}[n+1, gcd(n, #)])+A219996(n+1)`
-/

namespace A190639.P11493550527617252689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) + A219996 (n + 1)

end

end A190639.P11493550527617252689

/-!
# A190640: Numbers whose base-3 expansion ends in 2 and does not contain any 1's.

The programs for A190640, the canonical program `A190640.P15798364428475001138` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190640 has offset 1).

The definition of A190640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190640.P15798364428475001138

`A005823(2*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190640

/-- `A005823(2*(n+1))` -/
def P15798364428475001138.Spec : Prop :=
  ∀ n, P15798364428475001138.a n = A190640 (n + 1)

theorem P15798364428475001138.correct : P15798364428475001138.Spec := by
  intro n
  simp only [A190640, Nat.add_sub_cancel]

end A190640

/-! ## A190640.P5102959405253460193

`2*(∑[3*a(∑[n]%n)-3]-1)` with `a(0)=2`
-/

namespace A190640.P5102959405253460193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A190640.P5102959405253460193

namespace A190640

/-- `2*(∑[3*a(∑[n]%n)-3]-1)` -/
def P5102959405253460193.Spec : Prop :=
  ∀ n, P5102959405253460193.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P13286282959676393665

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=2, a(1)=6`
-/

namespace A190640.P13286282959676393665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190640.P13286282959676393665

namespace A190640

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P13286282959676393665.Spec : Prop :=
  ∀ n, P13286282959676393665.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P13404565636856493088

`a(and(n-1, -(n+1)))+a(n-1)+4` with `a(0)=2`
-/

namespace A190640.P13404565636856493088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-(n + 1 : ℤ))).toNat + a (n - 1) + 4

end

end A190640.P13404565636856493088

namespace A190640

/-- `a(and(n-1, -(n+1)))+a(n-1)+4` -/
def P13404565636856493088.Spec : Prop :=
  ∀ n, (P13404565636856493088.a n : ℤ) = A190640 (n + 1)

end A190640

/-! ## A190640.P9647457851589690445

`A055246(n+1)+1`
-/

namespace A190640.P9647457851589690445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) + 1

end

end A190640.P9647457851589690445

namespace A190640

/-- `A055246(n+1)+1` -/
def P9647457851589690445.Spec : Prop :=
  ∀ n, P9647457851589690445.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P14873819179379327033

`2*A191107(n+1)`
-/

namespace A190640.P14873819179379327033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191107 (n + 1)

end

end A190640.P14873819179379327033

namespace A190640

/-- `2*A191107(n+1)` -/
def P14873819179379327033.Spec : Prop :=
  ∀ n, P14873819179379327033.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P123331096769271670

`A062548(n)/2+1`
-/

namespace A190640.P123331096769271670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062548 n : ℚ) / 2 + 1

end

end A190640.P123331096769271670

namespace A190640

/-- `A062548(n)/2+1` -/
def P123331096769271670.Spec : Prop :=
  ∀ n, P123331096769271670.a n = (A190640 (n + 1) : ℚ)

end A190640

/-! ## A190640.P16883397305917504448

`2*(A081601(n+1)+1)`
-/

namespace A190640.P16883397305917504448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081601 (n + 1) + 1)

end

end A190640.P16883397305917504448

namespace A190640

/-- `2*(A081601(n+1)+1)` -/
def P16883397305917504448.Spec : Prop :=
  ∀ n, P16883397305917504448.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P10517206246730359015

`2*(A356426(n+1)-1)`
-/

namespace A190640.P10517206246730359015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A356426 (n + 1) - 1)

end

end A190640.P10517206246730359015

namespace A190640

/-- `2*(A356426(n+1)-1)` -/
def P10517206246730359015.Spec : Prop :=
  ∀ n, P10517206246730359015.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P17877086250952095289

`3*A191106(n+1)-1`
-/

namespace A190640.P17877086250952095289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191106 (n + 1) - 1

end

end A190640.P17877086250952095289

namespace A190640

/-- `3*A191106(n+1)-1` -/
def P17877086250952095289.Spec : Prop :=
  ∀ n, P17877086250952095289.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P11317564242246273844

`∑[A061393(2*n)]+2*n+1`
-/

namespace A190640.P11317564242246273844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A190640.P11317564242246273844

namespace A190640

/-- `∑[A061393(2*n)]+2*n+1` -/
def P11317564242246273844.Spec : Prop :=
  ∀ n, P11317564242246273844.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P10796741109012615408

`A191108(n+1)+A191106(n+1)`
-/

namespace A190640.P10796741109012615408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191108 (n + 1) + A191106 (n + 1)

end

end A190640.P10796741109012615408

namespace A190640

/-- `A191108(n+1)+A191106(n+1)` -/
def P10796741109012615408.Spec : Prop :=
  ∀ n, P10796741109012615408.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P9883269505406668971

`A356426(n+1)+A081601(n+1)`
-/

namespace A190640.P9883269505406668971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1) + A081601 (n + 1)

end

end A190640.P9883269505406668971

namespace A190640

/-- `A356426(n+1)+A081601(n+1)` -/
def P9883269505406668971.Spec : Prop :=
  ∀ n, P9883269505406668971.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P5075104104539071183

`A005823(Δ[n²])+2`
-/

namespace A190640.P5075104104539071183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A190640.P5075104104539071183

namespace A190640

/-- `A005823(Δ[n²])+2` -/
def P5075104104539071183.Spec : Prop :=
  ∀ n, P5075104104539071183.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P11312943297369484747

`A055247(2*(n+1))`
-/

namespace A190640.P11312943297369484747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (2 * (n + 1))

end

end A190640.P11312943297369484747

namespace A190640

/-- `A055247(2*(n+1))` -/
def P11312943297369484747.Spec : Prop :=
  ∀ n, P11312943297369484747.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P9467805133304040483

`A055247(Δ[n²])+1`
-/

namespace A190640.P9467805133304040483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A190640.P9467805133304040483

namespace A190640

/-- `A055247(Δ[n²])+1` -/
def P9467805133304040483.Spec : Prop :=
  ∀ n, P9467805133304040483.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P1300210624038185802

`A191106(Δ[n²])+1`
-/

namespace A190640.P1300210624038185802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A190640.P1300210624038185802

namespace A190640

/-- `A191106(Δ[n²])+1` -/
def P1300210624038185802.Spec : Prop :=
  ∀ n, P1300210624038185802.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P6718023593925496835

`2*A003278(Δ[n²])`
-/

namespace A190640.P6718023593925496835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A190640.P6718023593925496835

namespace A190640

/-- `2*A003278(Δ[n²])` -/
def P6718023593925496835.Spec : Prop :=
  ∀ n, P6718023593925496835.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P9399583249329337676

`2*A004793(Δ[n²])`
-/

namespace A190640.P9399583249329337676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004793 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A190640.P9399583249329337676

namespace A190640

/-- `2*A004793(Δ[n²])` -/
def P9399583249329337676.Spec : Prop :=
  ∀ n, P9399583249329337676.a n = A190640 (n + 1)

end A190640

/-! ## A190640.P10929717367825589336

`2*A005836(2*(n+1))`
-/

namespace A190640.P10929717367825589336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (2 * (n + 1))

end

end A190640.P10929717367825589336

namespace A190640

/-- `2*A005836(2*(n+1))` -/
def P10929717367825589336.Spec : Prop :=
  ∀ n, P10929717367825589336.a n = A190640 (n + 1)

end A190640

/-!
# A190641: Numbers having exactly one non-unitary prime factor.

The programs for A190641, the canonical program `A190641.P9957446413890152593` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190641 has offset 1).

The definition of A190641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190641.P9957446413890152593

`eq[1, A359466(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A190641

/-- `eq[1, A359466(n+1)]+1` -/
def P9957446413890152593.Spec : Prop :=
  ∀ n, (P9957446413890152593.a n : ℤ) = A190641 (n + 1)

theorem P9957446413890152593.correct : P9957446413890152593.Spec := by
  intro n
  simp only [A190641, Nat.add_sub_cancel]

end A190641

/-! ## A190641.P9401691671496989751

`∪[A060687(n+1), A381316(n+1)]`
-/

namespace A190641.P9401691671496989751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190641.P9401691671496989751

namespace A190641

/-- `∪[A060687(n+1), A381316(n+1)]` -/
def P9401691671496989751.Spec : Prop :=
  ∀ n, (P9401691671496989751.a n : ℤ) = A190641 (n + 1)

end A190641

/-! ## A190641.P8863178970534852697

`∪[A082293(n+1), A381316(n+1)]`
-/

namespace A190641.P8863178970534852697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190641.P8863178970534852697

namespace A190641

/-- `∪[A082293(n+1), A381316(n+1)]` -/
def P8863178970534852697.Spec : Prop :=
  ∀ n, (P8863178970534852697.a n : ℤ) = A190641 (n + 1)

end A190641

/-! ## A190641.P9154074043005926290

`∪[A381312(n+1), A381311(n+1)]`
-/

namespace A190641.P9154074043005926290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190641.P9154074043005926290

namespace A190641

/-- `∪[A381312(n+1), A381311(n+1)]` -/
def P9154074043005926290.Spec : Prop :=
  ∀ n, (P9154074043005926290.a n : ℤ) = A190641 (n + 1)

end A190641

/-! ## A190641.P5702471546073131881

`filter[A375142(n+1), A359466(#)]`
-/

namespace A190641.P5702471546073131881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P5702471546073131881

namespace A190641

/-- `filter[A375142(n+1), A359466(#)]` -/
def P5702471546073131881.Spec : Prop :=
  ∀ n, P5702471546073131881.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P2790809930363865444

`filter[A013929(n+1), A359466(#)]`
-/

namespace A190641.P2790809930363865444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P2790809930363865444

namespace A190641

/-- `filter[A013929(n+1), A359466(#)]` -/
def P2790809930363865444.Spec : Prop :=
  ∀ n, P2790809930363865444.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P14231522588359685807

`A013929(eq[1, A212177(n+1)]+1)`
-/

namespace A190641.P14231522588359685807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A190641.P14231522588359685807

namespace A190641

/-- `A013929(eq[1, A212177(n+1)]+1)` -/
def P14231522588359685807.Spec : Prop :=
  ∀ n, P14231522588359685807.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P11150329606141299739

`filter[A162966(n+1), A359466(#)]`
-/

namespace A190641.P11150329606141299739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P11150329606141299739

namespace A190641

/-- `filter[A162966(n+1), A359466(#)]` -/
def P11150329606141299739.Spec : Prop :=
  ∀ n, P11150329606141299739.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P1920663780831685404

`filter[A354360(n+1), A359466(#)]`
-/

namespace A190641.P1920663780831685404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P1920663780831685404

namespace A190641

/-- `filter[A354360(n+1), A359466(#)]` -/
def P1920663780831685404.Spec : Prop :=
  ∀ n, P1920663780831685404.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P4107359044925604085

`filter[A389462(n+1), A359466(#)]`
-/

namespace A190641.P4107359044925604085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P4107359044925604085

namespace A190641

/-- `filter[A389462(n+1), A359466(#)]` -/
def P4107359044925604085.Spec : Prop :=
  ∀ n, P4107359044925604085.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P12437638303137388808

`filter[A356862(n+1), A359466(#)]`
-/

namespace A190641.P12437638303137388808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P12437638303137388808

namespace A190641

/-- `filter[A356862(n+1), A359466(#)]` -/
def P12437638303137388808.Spec : Prop :=
  ∀ n, P12437638303137388808.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P1904425217574065527

`∩[A356862(n+1), A375142(n+1)]`
-/

namespace A190641.P1904425217574065527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190641.P1904425217574065527

namespace A190641

/-- `∩[A356862(n+1), A375142(n+1)]` -/
def P1904425217574065527.Spec : Prop :=
  ∀ n, (P1904425217574065527.a n : ℤ) = A190641 (n + 1)

end A190641

/-! ## A190641.P423801183835999883

`filter[A363597(n+1), A359466(#)]`
-/

namespace A190641.P423801183835999883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P423801183835999883

namespace A190641

/-- `filter[A363597(n+1), A359466(#)]` -/
def P423801183835999883.Spec : Prop :=
  ∀ n, P423801183835999883.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P9478657556370134341

`filter[A366288(n+1), A359466(#)]`
-/

namespace A190641.P9478657556370134341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P9478657556370134341

namespace A190641

/-- `filter[A366288(n+1), A359466(#)]` -/
def P9478657556370134341.Spec : Prop :=
  ∀ n, P9478657556370134341.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P2414826481793348604

`filter[A289553(n+1), A359466(#)]`
-/

namespace A190641.P2414826481793348604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P2414826481793348604

namespace A190641

/-- `filter[A289553(n+1), A359466(#)]` -/
def P2414826481793348604.Spec : Prop :=
  ∀ n, P2414826481793348604.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P7720536601382970127

`filter[A088609(n+2), A359466(#)]`
-/

namespace A190641.P7720536601382970127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P7720536601382970127

namespace A190641

/-- `filter[A088609(n+2), A359466(#)]` -/
def P7720536601382970127.Spec : Prop :=
  ∀ n, P7720536601382970127.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P10927257554044664163

`filter[A060679(n+1), A359466(#)]`
-/

namespace A190641.P10927257554044664163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P10927257554044664163

namespace A190641

/-- `filter[A060679(n+1), A359466(#)]` -/
def P10927257554044664163.Spec : Prop :=
  ∀ n, P10927257554044664163.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P2922949523628577591

`filter[A174891(n+1), A359466(#)]`
-/

namespace A190641.P2922949523628577591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P2922949523628577591

namespace A190641

/-- `filter[A174891(n+1), A359466(#)]` -/
def P2922949523628577591.Spec : Prop :=
  ∀ n, P2922949523628577591.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P4546485251220264159

`filter[A179891(n+1), A359466(#)]`
-/

namespace A190641.P4546485251220264159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P4546485251220264159

namespace A190641

/-- `filter[A179891(n+1), A359466(#)]` -/
def P4546485251220264159.Spec : Prop :=
  ∀ n, P4546485251220264159.a n = A190641 (n + 1)

end A190641

/-! ## A190641.P12765171268144037360

`filter[A246716(n+1), A359466(#)]`
-/

namespace A190641.P12765171268144037360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A190641.P12765171268144037360

namespace A190641

/-- `filter[A246716(n+1), A359466(#)]` -/
def P12765171268144037360.Spec : Prop :=
  ∀ n, P12765171268144037360.a n = A190641 (n + 1)

end A190641

/-!
# A190642: Numbers 3*n + 2 written in base 3.

The programs for A190642, the canonical program `A190642.P16448647623597505211` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190642 has offset 0).

The definition of A190642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190642.P16448647623597505211

`10*A007089(n)+2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190642

/-- `10*A007089(n)+2` -/
def P16448647623597505211.Spec : Prop :=
  ∀ n, P16448647623597505211.a n = A190642 n

theorem P16448647623597505211.correct : P16448647623597505211.Spec := by
  intro n
  simp only [A190642]

end A190642

/-! ## A190642.P1911812852701942155

`5*A024635(2*n)+2`
-/

namespace A190642.P1911812852701942155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024635 (2 * n) + 2

end

end A190642.P1911812852701942155

namespace A190642

/-- `5*A024635(2*n)+2` -/
def P1911812852701942155.Spec : Prop :=
  ∀ n, P1911812852701942155.a n = A190642 n

end A190642

/-! ## A190642.P14159122904567192042

`abs(xor(-2, A007089(3*n)))`
-/

namespace A190642.P14159122904567192042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A007089 (3 * n))|

end

end A190642.P14159122904567192042

namespace A190642

/-- `abs(xor(-2, A007089(3*n)))` -/
def P14159122904567192042.Spec : Prop :=
  ∀ n, P14159122904567192042.a n = A190642 n

end A190642

/-! ## A190642.P3688232220636582976

`A343810(3*n+2)/4`
-/

namespace A190642.P3688232220636582976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (3 * n + 2) : ℚ) / 4

end

end A190642.P3688232220636582976

namespace A190642

/-- `A343810(3*n+2)/4` -/
def P3688232220636582976.Spec : Prop :=
  ∀ n, P3688232220636582976.a n = (A190642 n : ℚ)

end A190642

/-! ## A190642.P2177311978955714578

`record[A007089(2-(2*n%3-n))]`
-/

namespace A190642.P2177311978955714578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (2 - (((2 * (n % 3) : ℕ) : ℤ) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190642.P2177311978955714578

namespace A190642

/-- `record[A007089(2-(2*n%3-n))]` -/
def P2177311978955714578.Spec : Prop :=
  ∀ n, P2177311978955714578.a n = A190642 n

end A190642

/-! ## A190642.P17154509452400772475

`record[A007089(floor(n-tan((n+2)%3)))]`
-/

namespace A190642.P17154509452400772475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ⌊(n : ℝ) - Real.tan (((n + 2) % 3 : ℕ) : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190642.P17154509452400772475

namespace A190642

/-- `record[A007089(floor(n-tan((n+2)%3)))]` -/
def P17154509452400772475.Spec : Prop :=
  ∀ n, P17154509452400772475.a n = A190642 n

end A190642

/-! ## A190642.P5587489631047982295

`A007089(A016789(n))`
-/

namespace A190642.P5587489631047982295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A016789 n).toNat

end

end A190642.P5587489631047982295

namespace A190642

/-- `A007089(A016789(n))` -/
def P5587489631047982295.Spec : Prop :=
  ∀ n, P5587489631047982295.a n = A190642 n

end A190642

/-! ## A190642.P4133354851030209711

`A007089(A008585(n)+2)`
-/

namespace A190642.P4133354851030209711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A008585 n + 2).toNat

end

end A190642.P4133354851030209711

namespace A190642

/-- `A007089(A008585(n)+2)` -/
def P4133354851030209711.Spec : Prop :=
  ∀ n, P4133354851030209711.a n = A190642 n

end A190642

/-! ## A190642.P3690679725682157280

`A007089(A008486(n+1)-1)`
-/

namespace A190642.P3690679725682157280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A008486 (n + 1) - 1).toNat

end

end A190642.P3690679725682157280

namespace A190642

/-- `A007089(A008486(n+1)-1)` -/
def P3690679725682157280.Spec : Prop :=
  ∀ n, P3690679725682157280.a n = A190642 n

end A190642

/-! ## A190642.P4278435200951583624

`A007089(A008586(n+1)-(n+2))`
-/

namespace A190642.P4278435200951583624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A008586 (n + 1) - (n + 2 : ℤ)).toNat

end

end A190642.P4278435200951583624

namespace A190642

/-- `A007089(A008586(n+1)-(n+2))` -/
def P4278435200951583624.Spec : Prop :=
  ∀ n, P4278435200951583624.a n = A190642 n

end A190642

/-! ## A190642.P2406142434653750602

`A262412(A262429(2*n+n+2))`
-/

namespace A190642.P2406142434653750602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262412 (A262429 (2 * n + (n + 2))).toNat

end

end A190642.P2406142434653750602

namespace A190642

/-- `A262412(A262429(2*n+n+2))` -/
def P2406142434653750602.Spec : Prop :=
  ∀ n, P2406142434653750602.a n = A190642 n

end A190642

/-! ## A190642.P3527806136347659069

`A381668(A105529(2*n+n+2))`
-/

namespace A190642.P3527806136347659069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381668 (A105529 (2 * n + (n + 2))).toNat

end

end A190642.P3527806136347659069

namespace A190642

/-- `A381668(A105529(2*n+n+2))` -/
def P3527806136347659069.Spec : Prop :=
  ∀ n, P3527806136347659069.a n = A190642 n

end A190642

/-! ## A190642.P4887261509440925461

`A061818(2*n)+2`
-/

namespace A190642.P4887261509440925461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061818 (2 * n) + 2

end

end A190642.P4887261509440925461

namespace A190642

/-- `A061818(2*n)+2` -/
def P4887261509440925461.Spec : Prop :=
  ∀ n, P4887261509440925461.a n = A190642 n

end A190642

/-! ## A190642.P9376406309884238652

`A061818(Δ[n²])`
-/

namespace A190642.P9376406309884238652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061818 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A190642.P9376406309884238652

namespace A190642

/-- `A061818(Δ[n²])` -/
def P9376406309884238652.Spec : Prop :=
  ∀ n, P9376406309884238652.a n = A190642 n

end A190642

/-! ## A190642.P13161410525346429284

`∩[A061818(n)+2, A061818(n)]`
-/

namespace A190642.P13161410525346429284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061818 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061818 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190642.P13161410525346429284

namespace A190642

/-- `∩[A061818(n)+2, A061818(n)]` -/
def P13161410525346429284.Spec : Prop :=
  ∀ n, (P13161410525346429284.a n : ℤ) = A190642 n

end A190642

/-! ## A190642.P16809354579178065949

`A305877(A030102(2*n+n+2))`
-/

namespace A190642.P16809354579178065949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A030102 (2 * n + (n + 2))).toNat

end

end A190642.P16809354579178065949

namespace A190642

/-- `A305877(A030102(2*n+n+2))` -/
def P16809354579178065949.Spec : Prop :=
  ∀ n, P16809354579178065949.a n = A190642 n

end A190642

/-! ## A190642.P16731768254681521290

`A305877(A263273(2*n+n+2))`
-/

namespace A190642.P16731768254681521290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A263273 (2 * n + (n + 2))).toNat

end

end A190642.P16731768254681521290

namespace A190642

/-- `A305877(A263273(2*n+n+2))` -/
def P16731768254681521290.Spec : Prop :=
  ∀ n, P16731768254681521290.a n = A190642 n

end A190642

/-! ## A190642.P2869392744602468304

`A007090(eq[1, A292373(n+1)])`
-/

namespace A190642.P2869392744602468304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190642.P2869392744602468304

namespace A190642

/-- `A007090(eq[1, A292373(n+1)])` -/
def P2869392744602468304.Spec : Prop :=
  ∀ n, P2869392744602468304.a n = A190642 n

end A190642

/-! ## A190642.P1863885436440226647

`A007090(A023717(2*n+n+2))`
-/

namespace A190642.P1863885436440226647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023717 (2 * n + (n + 2))).toNat

end

end A190642.P1863885436440226647

namespace A190642

/-- `A007090(A023717(2*n+n+2))` -/
def P1863885436440226647.Spec : Prop :=
  ∀ n, P1863885436440226647.a n = A190642 n

end A190642

/-! ## A190642.P8716500421208753397

`A007091(A037453(2*n+n+2))`
-/

namespace A190642.P8716500421208753397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A037453 (2 * n + (n + 2))).toNat

end

end A190642.P8716500421208753397

namespace A190642

/-- `A007091(A037453(2*n+n+2))` -/
def P8716500421208753397.Spec : Prop :=
  ∀ n, P8716500421208753397.a n = A190642 n

end A190642

/-!
# A190646: Least number k such that d(k-1) = d(k+1) = 2n or 0 if no such k exists, where d(n)=A000005(n).

The programs for A190646, there is no canonical definition to state claims against.
-/

/-! ## A190646.P3111132934244297403

`A356766(n+1)+1`
-/

namespace A190646.P3111132934244297403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356766 (n + 1) + 1

end

end A190646.P3111132934244297403

/-!
# A190650: Product of iterated integral part of square root.

The programs for A190650, the canonical program `A190650.P2231770295207573375` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190650 has offset 1).

The definition of A190650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190650.P2231770295207573375

`(n+1)*a(floor(sqrt(n+1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190650

/-- `(n+1)*a(floor(sqrt(n+1))-1)` -/
def P2231770295207573375.Spec : Prop :=
  ∀ n, (P2231770295207573375.a n : ℤ) = A190650 (n + 1)

theorem P2231770295207573375.correct : P2231770295207573375.Spec := by
  intro n
  simp only [A190650, Nat.add_sub_cancel]

end A190650

/-! ## A190650.P14369901983087458809

`a(A000196(n+1)-1)*(n+1)` with `a(0)=1`
-/

namespace A190650.P14369901983087458809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000196 (n + 1) - 1).toNat * (n + 1)

end

end A190650.P14369901983087458809

namespace A190650

/-- `a(A000196(n+1)-1)*(n+1)` -/
def P14369901983087458809.Spec : Prop :=
  ∀ n, (P14369901983087458809.a n : ℤ) = A190650 (n + 1)

end A190650

/-! ## A190650.P16030733298674335133

`a(A004526(A316355(n)))*(n+1)` with `a(0)=1`
-/

namespace A190650.P16030733298674335133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 (A316355 n).toNat).toNat * (n + 1)

end

end A190650.P16030733298674335133

namespace A190650

/-- `a(A004526(A316355(n)))*(n+1)` -/
def P16030733298674335133.Spec : Prop :=
  ∀ n, (P16030733298674335133.a n : ℤ) = A190650 (n + 1)

end A190650

/-! ## A190650.P6102586402310229364

`floor((n+1)*a(Δ[A022554(n)]-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A190650.P6102586402310229364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (f1 (n + 1) - f1 n - 1).toNat

end

end A190650.P6102586402310229364

namespace A190650

/-- `floor((n+1)*a(Δ[A022554(n)]-1))` -/
def P6102586402310229364.Spec : Prop :=
  ∀ n, (P6102586402310229364.a n : ℤ) = A190650 (n + 1)

end A190650

/-! ## A190650.P7821369554253704889

`C(2, n+2)+(n+1)*a(A003059(n+2)-2)` with `a(0)=1`
-/

namespace A190650.P7821369554253704889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (n + 2) + (n + 1) * a (A003059 (n + 2) - 2).toNat

end

end A190650.P7821369554253704889

namespace A190650

/-- `C(2, n+2)+(n+1)*a(A003059(n+2)-2)` -/
def P7821369554253704889.Spec : Prop :=
  ∀ n, (P7821369554253704889.a n : ℤ) = A190650 (n + 1)

end A190650

/-!
# A190654: Twin Ramanujan primes.

The programs for A190654, there is no canonical definition to state claims against.
-/

/-! ## A190654.P16769787623567096167

`A178127(floor(n/2)+1)+2*and(1, n)`
-/

namespace A190654.P16769787623567096167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178127 (⌊(n : ℚ) / 2⌋ + 1).toNat + (2 * Nat.land 1 n : ℤ)

end

end A190654.P16769787623567096167

/-! ## A190654.P1235850552609292959

`A178127(∑[char[2*n]])+A010673(n)`
-/

namespace A190654.P1235850552609292959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178127 (∑ j ∈ Finset.range (n + 1), f1 j) + A010673 n

end

end A190654.P1235850552609292959

/-! ## A190654.P3649399403619096971

`A178127(floor(n/2)+1)+1-A004442(n)+n`
-/

namespace A190654.P3649399403619096971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178127 (⌊(n : ℚ) / 2⌋ + 1).toNat + (1 - A004442 n + (n : ℤ))

end

end A190654.P3649399403619096971

/-! ## A190654.P12145026343600812413

`A178127(∑[char[2*n]])+A000034(n)-(n+1)%2`
-/

namespace A190654.P12145026343600812413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178127 (∑ j ∈ Finset.range (n + 1), f1 j) + (A000034 n - (((n + 1) % 2 : ℕ) : ℤ))

end

end A190654.P12145026343600812413

/-! ## A190654.P10054887891756314939

`A178127(∑[char[2*n]])+A130659(2*n)`
-/

namespace A190654.P10054887891756314939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178127 (∑ j ∈ Finset.range (n + 1), f1 j) + A130659 (2 * n)

end

end A190654.P10054887891756314939

/-!
# A190655: Half the number of n X n symmetric binary matrices with no element unequal to a strict majority of its diagonal and antidiagonal neighbors.

The programs for A190655, there is no canonical definition to state claims against.
-/

/-! ## A190655.P6007394422994955600

`record[Δ[A257726(A007632(n+1))]]`
-/

namespace A190655.P6007394422994955600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A007632 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190655.P6007394422994955600

/-! ## A190655.P10786785681203374203

`A036063(A335637(n))+A000079(n)`
-/

namespace A190655.P10786785681203374203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036063 (A335637 n).toNat + A000079 n

end

end A190655.P10786785681203374203

/-!
# A190656: Half the number of n X n symmetric binary matrices with no element unequal to a strict majority of its king-move neighbors.

The programs for A190656, there is no canonical definition to state claims against.
-/

/-! ## A190656.P16321564148821142827

`A130946(A001299(and(-3, 2^n)))`
-/

namespace A190656.P16321564148821142827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (A001299 (Int.land (-3) (2 ^ n : ℤ)).toNat).toNat

end

end A190656.P16321564148821142827

/-! ## A190656.P9067619809308255215

`A267871(A106464(n))+A074398(A000142(n))`
-/

namespace A190656.P9067619809308255215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A106464 n).toNat + A074398 (A000142 n).toNat

end

end A190656.P9067619809308255215

/-!
# A190657: Half the number of n X n symmetric binary matrices with no element unequal to a strict majority of its diagonal, vertical and horizontal neighbors.

The programs for A190657, there is no canonical definition to state claims against.
-/

/-! ## A190657.P10901171948493916173

`A033793(A220917(n+1))`
-/

namespace A190657.P10901171948493916173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033793 (A220917 (n + 1)).toNat

end

end A190657.P10901171948493916173

/-! ## A190657.P17095157866410632198

`A047869(A301678(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A190657.P17095157866410632198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A047869 (A301678 (a (n - 1)).toNat).toNat

end

end A190657.P17095157866410632198

/-!
# A190658: Half the number of n X n symmetric binary matrices with no element unequal to a strict majority of its vertical, antidiagonal and horizontal neighbors.

The programs for A190658, there is no canonical definition to state claims against.
-/

/-! ## A190658.P7894657450480542110

`A354413(n)+A001222(A305857(n))`
-/

namespace A190658.P7894657450480542110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354413 n + A001222 (A305857 n).toNat

end

end A190658.P7894657450480542110

/-! ## A190658.P3275102575572015928

`A264979(A237284(n+1)+A076323(n+1))`
-/

namespace A190658.P3275102575572015928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264979 (A237284 (n + 1) + A076323 (n + 1)).toNat

end

end A190658.P3275102575572015928

/-!
# A190660: Number of triangular numbers T(k) between powers of 2, 2^(n-1) < T(k) <= 2^n.

The programs for A190660, the canonical program `A190660.P7356408199009343106` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190660 has offset 0).

The definition of A190660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190660.P7356408199009343106

`A057048(n)%A057048(abs(A023443(n)))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190660

/-- `A057048(n)%A057048(abs(A023443(n)))` -/
def P7356408199009343106.Spec : Prop :=
  ∀ n, P7356408199009343106.a n = A190660 n

theorem P7356408199009343106.correct : P7356408199009343106.Spec := by
  intro n
  simp only [A190660]

end A190660

/-! ## A190660.P3798971544113425070

`Δ[round(sqrt(2^n+1))]`
-/

namespace A190660.P3798971544113425070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 ^ n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190660.P3798971544113425070

namespace A190660

/-- `Δ[round(sqrt(2^n+1))]` -/
def P3798971544113425070.Spec : Prop :=
  ∀ n, P3798971544113425070.a n = A190660 n

end A190660

/-! ## A190660.P14494334193329362067

`round(Δ[sqrt(A049332(n))])`
-/

namespace A190660.P14494334193329362067
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049332 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A190660.P14494334193329362067

namespace A190660

/-- `round(Δ[sqrt(A049332(n))])` -/
def P14494334193329362067.Spec : Prop :=
  ∀ n, P14494334193329362067.a n = A190660 n

end A190660

/-! ## A190660.P8582213550514559943

`round(Δ[sqrt(A133140(n))])`
-/

namespace A190660.P8582213550514559943
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133140 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A190660.P8582213550514559943

namespace A190660

/-- `round(Δ[sqrt(A133140(n))])` -/
def P8582213550514559943.Spec : Prop :=
  ∀ n, P8582213550514559943.a n = A190660 n

end A190660

/-! ## A190660.P8505997397952702718

`round(Δ[sqrt(A166920(n))])`
-/

namespace A190660.P8505997397952702718
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166920 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A190660.P8505997397952702718

namespace A190660

/-- `round(Δ[sqrt(A166920(n))])` -/
def P8505997397952702718.Spec : Prop :=
  ∀ n, P8505997397952702718.a n = A190660 n

end A190660

/-! ## A190660.P2092515096921447966

`round(Δ[sqrt(A296965(n))])`
-/

namespace A190660.P2092515096921447966
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A296965 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A190660.P2092515096921447966

namespace A190660

/-- `round(Δ[sqrt(A296965(n))])` -/
def P2092515096921447966.Spec : Prop :=
  ∀ n, P2092515096921447966.a n = A190660 n

end A190660

/-! ## A190660.P4167541312494759115

`round(Δ[sqrt(3*A128209(n))])`
-/

namespace A190660.P4167541312494759115
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * A128209 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A190660.P4167541312494759115

namespace A190660

/-- `round(Δ[sqrt(3*A128209(n))])` -/
def P4167541312494759115.Spec : Prop :=
  ∀ n, P4167541312494759115.a n = A190660 n

end A190660

/-! ## A190660.P11948558804823560651

`round((A006012(n)-n)/A078057(n))`
-/

namespace A190660.P11948558804823560651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006012 n - (n : ℤ) : ℚ) / (A078057 n : ℚ))

end

end A190660.P11948558804823560651

namespace A190660

/-- `round((A006012(n)-n)/A078057(n))` -/
def P11948558804823560651.Spec : Prop :=
  ∀ n, P11948558804823560651.a n = A190660 n

end A190660

/-!
# A190662: Least semiprime having prime factors that differ by 2*n!.

The programs for A190662, there is no canonical definition to state claims against.
-/

/-! ## A190662.P1488398229201162694

`A082434(n+1)*A190663(n+1)`
-/

namespace A190662.P1488398229201162694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082434 (n + 1) * A190663 (n + 1)

end

end A190662.P1488398229201162694

/-! ## A190662.P1992601728303733663

`lcm(A082434(n+1), A190663(Δ[n²]-n))`
-/

namespace A190662.P1992601728303733663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082434 (n + 1)) (A190663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A190662.P1992601728303733663

/-! ## A190662.P5667311441724764916

`(A082434(n+1)+A052849(n+1))*A082434(n+1)`
-/

namespace A190662.P5667311441724764916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082434 (n + 1) + A052849 (n + 1)) * A082434 (n + 1)

end

end A190662.P5667311441724764916

/-! ## A190662.P8294783599043967887

`(A190663(n+1)-A052849(n+1))*A190663(n+1)`
-/

namespace A190662.P8294783599043967887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190663 (n + 1) - A052849 (n + 1)) * A190663 (n + 1)

end

end A190662.P8294783599043967887

/-! ## A190662.P11868252538327008903

`lcm(A082434(n+1)%A167614(n+1), A190663(n+1))`
-/

namespace A190662.P11868252538327008903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A082434 (n + 1)) (A167614 (n + 1))) (A190663 (n + 1))

end

end A190662.P11868252538327008903

/-!
# A190663: Largest prime factor of the least semiprime whose prime factors differ by 2*n!

The programs for A190663, there is no canonical definition to state claims against.
-/

/-! ## A190663.P11609542096498176595

`A082434(n+1)+A052849(n+1)`
-/

namespace A190663.P11609542096498176595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082434 (n + 1) + A052849 (n + 1)

end

end A190663.P11609542096498176595

/-! ## A190663.P7794640954751978762

`A190662(n+1)/A082434(n+1)`
-/

namespace A190663.P7794640954751978762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190662 (n + 1) : ℚ) / (A082434 (n + 1) : ℚ)

end

end A190663.P7794640954751978762

/-! ## A190663.P18218676299230226502

`A151800(2*((n+1)!+1))`
-/

namespace A190663.P18218676299230226502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (Nat.factorial (n + 1) + 1))

end

end A190663.P18218676299230226502

/-! ## A190663.P5974042510064508787

`A151800(2*(∏[n+1]+1))`
-/

namespace A190663.P5974042510064508787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (∏ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A190663.P5974042510064508787

/-!
# A190664: Least semiprime whose prime factors differ by 2*prime(n).

The programs for A190664, there is no canonical definition to state claims against.
-/

/-! ## A190664.P1467442710245370186

`A073703(n+1)*A073704(n+1)`
-/

namespace A190664.P1467442710245370186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (n + 1) * A073704 (n + 1)

end

end A190664.P1467442710245370186

/-! ## A190664.P15774215487284518196

`A097523(n+1)²-A001248(n+1)`
-/

namespace A190664.P15774215487284518196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097523 (n + 1) ^ 2 - A001248 (n + 1)

end

end A190664.P15774215487284518196

/-! ## A190664.P3470558461962662655

`A097523(n+1)²-A000040(n+1)²`
-/

namespace A190664.P3470558461962662655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097523 (n + 1) ^ 2 - A000040 (n + 1) ^ 2

end

end A190664.P3470558461962662655

/-! ## A190664.P16451638008794512974

`(A100484(n+1)+A073703(n+1))*A073703(n+1)`
-/

namespace A190664.P16451638008794512974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) + A073703 (n + 1)) * A073703 (n + 1)

end

end A190664.P16451638008794512974

/-! ## A190664.P10835312643993977683

`(A073704(n+1)-A100484(n+1))*A073704(n+1)`
-/

namespace A190664.P10835312643993977683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073704 (n + 1) - A100484 (n + 1)) * A073704 (n + 1)

end

end A190664.P10835312643993977683

/-! ## A190664.P7929576008151451795

`(A073703(n+1)+A001747(n+2))*A073703(n+1)`
-/

namespace A190664.P7929576008151451795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073703 (n + 1) + A001747 (n + 2)) * A073703 (n + 1)

end

end A190664.P7929576008151451795

/-! ## A190664.P15980103286526848564

`(A073704(n+1)-A001747(n+2))*A073704(n+1)`
-/

namespace A190664.P15980103286526848564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073704 (n + 1) - A001747 (n + 2)) * A073704 (n + 1)

end

end A190664.P15980103286526848564

/-! ## A190664.P11632009567453682579

`A083372(A000040(n+1))`
-/

namespace A190664.P11632009567453682579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083372 (A000040 (n + 1)).toNat

end

end A190664.P11632009567453682579

/-! ## A190664.P6297952102428060617

`A083372(A008578(n+2))`
-/

namespace A190664.P6297952102428060617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083372 (A008578 (n + 2)).toNat

end

end A190664.P6297952102428060617

/-! ## A190664.P10744563956025323068

`A083372(A182986(n+2))`
-/

namespace A190664.P10744563956025323068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083372 (A182986 (n + 2)).toNat

end

end A190664.P10744563956025323068

/-! ## A190664.P16550419638019189322

`A020483(A000040(n+1))*A073704(n+1)`
-/

namespace A190664.P16550419638019189322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A000040 (n + 1)).toNat * A073704 (n + 1)

end

end A190664.P16550419638019189322

/-! ## A190664.P2006560977394156321

`A020484(A000040(n+1))*A073703(n+1)`
-/

namespace A190664.P2006560977394156321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A000040 (n + 1)).toNat * A073703 (n + 1)

end

end A190664.P2006560977394156321

/-!
# A190666: Number of walks from (0,0) to (n+3,n) which take steps from {E, N, NE}.

The programs for A190666, the canonical program `A190666.P12689365777574726580` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190666 has offset 0).

The definition of A190666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190666.P4405103420237298483

`A002002(n+2)-A006319(n+2)`
-/

namespace A190666.P4405103420237298483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A006319 (n + 2)

end

end A190666.P4405103420237298483

namespace A190666

/-- `A002002(n+2)-A006319(n+2)` -/
def P4405103420237298483.Spec : Prop :=
  ∀ n, P4405103420237298483.a n = A190666 n

end A190666

/-! ## A190666.P5424470927341134632

`Δ[A047665(n+1)-A006318(n+1)]`
-/

namespace A190666.P5424470927341134632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1) - A006318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190666.P5424470927341134632

namespace A190666

/-- `Δ[A047665(n+1)-A006318(n+1)]` -/
def P5424470927341134632.Spec : Prop :=
  ∀ n, P5424470927341134632.a n = A190666 n

end A190666

/-! ## A190666.P12689365777574726580

`Δ[A047665(n+1)-A035011(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A190666

/-- `Δ[A047665(n+1)-A035011(n+1)]` -/
def P12689365777574726580.Spec : Prop :=
  ∀ n, P12689365777574726580.a n = A190666 n

theorem P12689365777574726580.correct : P12689365777574726580.Spec := by
  intro n
  simp only [A190666]

end A190666

/-! ## A190666.P1423388084442865451

`Δ[A085403(n+2)+A047665(n+1)]`
-/

namespace A190666.P1423388084442865451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 (n + 2) + A047665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190666.P1423388084442865451

namespace A190666

/-- `Δ[A085403(n+2)+A047665(n+1)]` -/
def P1423388084442865451.Spec : Prop :=
  ∀ n, P1423388084442865451.a n = A190666 n

end A190666

/-! ## A190666.P2209381366420826526

`A002002(n+2)-Δ[A006318(n+1)]`
-/

namespace A190666.P2209381366420826526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - (f1 (n + 1) - f1 n)

end

end A190666.P2209381366420826526

namespace A190666

/-- `A002002(n+2)-Δ[A006318(n+1)]` -/
def P2209381366420826526.Spec : Prop :=
  ∀ n, P2209381366420826526.a n = A190666 n

end A190666

/-! ## A190666.P8810429882335883250

`A002002(n+2)-Δ[A035011(n+1)]`
-/

namespace A190666.P8810429882335883250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - (f1 (n + 1) - f1 n)

end

end A190666.P8810429882335883250

namespace A190666

/-- `A002002(n+2)-Δ[A035011(n+1)]` -/
def P8810429882335883250.Spec : Prop :=
  ∀ n, P8810429882335883250.a n = A190666 n

end A190666

/-! ## A190666.P2441655531399718711

`Δ[A047665(n+1)]-A006319(n+2)`
-/

namespace A190666.P2441655531399718711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006319 (n + 2)

end

end A190666.P2441655531399718711

namespace A190666

/-- `Δ[A047665(n+1)]-A006319(n+2)` -/
def P2441655531399718711.Spec : Prop :=
  ∀ n, P2441655531399718711.a n = A190666 n

end A190666

/-! ## A190666.P10783228680222336492

`A002002(n+2)+Δ[A085403(n+2)]`
-/

namespace A190666.P10783228680222336492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) + (f1 (n + 1) - f1 n)

end

end A190666.P10783228680222336492

namespace A190666

/-- `A002002(n+2)+Δ[A085403(n+2)]` -/
def P10783228680222336492.Spec : Prop :=
  ∀ n, P10783228680222336492.a n = A190666 n

end A190666

/-! ## A190666.P17844772468140184396

`Δ[A047665(n+1)-A155069(n+2)]`
-/

namespace A190666.P17844772468140184396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1) - A155069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190666.P17844772468140184396

namespace A190666

/-- `Δ[A047665(n+1)-A155069(n+2)]` -/
def P17844772468140184396.Spec : Prop :=
  ∀ n, P17844772468140184396.a n = A190666 n

end A190666

/-! ## A190666.P13661930981827872697

`A002002(n+2)-Δ[A155069(n+2)]`
-/

namespace A190666.P13661930981827872697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - (f1 (n + 1) - f1 n)

end

end A190666.P13661930981827872697

namespace A190666

/-- `A002002(n+2)-Δ[A155069(n+2)]` -/
def P13661930981827872697.Spec : Prop :=
  ∀ n, P13661930981827872697.a n = A190666 n

end A190666

/-!
# A190667: Expansion of (1+2*x)/(1-x^4-2*x^3-2*x^2-x).

The programs for A190667, the canonical program `A190667.P15576499573104478680` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190667 has offset 0).

The definition of A190667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-2x^2-2x^3-x^4))` (program `A190667.P15576499573104478680`, by `A190667.P15576499573104478680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190667.P15576499573104478680

`ogf((1+2x)/(1-x-2x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190667

/-- `ogf((1+2x)/(1-x-2x^2-2x^3-x^4))` -/
def P15576499573104478680.Spec : Prop :=
  ∀ n, P15576499573104478680.a n = A190667 n

theorem P15576499573104478680.correct : P15576499573104478680.Spec := by
  intro n
  simp only [A190667]

end A190667

/-! ## A190667.P2253255468579471256

`a(n-1)+2*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=13`
-/

namespace A190667.P2253255468579471256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 13] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A190667.P2253255468579471256

namespace A190667

/-- `a(n-1)+2*a(n-2)+2*a(n-3)+a(n-4)` -/
def P2253255468579471256.Spec : Prop :=
  ∀ n, (P2253255468579471256.a n : ℤ) = A190667 n

end A190667

/-! ## A190667.P11547972815606963021

`Δ[A005913(n+2)%Δ[A005908(n+3)]]`
-/

namespace A190667.P11547972815606963021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005913 (n + 2)) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190667.P11547972815606963021

namespace A190667

/-- `Δ[A005913(n+2)%Δ[A005908(n+3)]]` -/
def P11547972815606963021.Spec : Prop :=
  ∀ n, P11547972815606963021.a n = A190667 n

end A190667

/-!
# A190668: a(n) = Product_{k>=1} floor(n^(1/k)).

The programs for A190668, there is no canonical definition to state claims against.
-/

/-! ## A190668.P1333888254653555573

`∏{d}[A002182(n+1), floor(root(n+1, #))]`
-/

namespace A190668.P1333888254653555573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ⌊(n + 1 : ℝ) ^ (1 / (d : ℝ))⌋

end

end A190668.P1333888254653555573

/-! ## A190668.P3653915953860058967

`(n+1)*A161413(A081676(n+1))`
-/

namespace A190668.P3653915953860058967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A161413 (A081676 (n + 1)).toNat

end

end A190668.P3653915953860058967

/-! ## A190668.P6603451931337694653

`A118759((n+1)*∑[A300717(n+1)])`
-/

namespace A190668.P6603451931337694653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A190668.P6603451931337694653

/-! ## A190668.P10469338011126425791

`(n+1)*∑[A300717(A187829(n+1))]`
-/

namespace A190668.P10469338011126425791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190668.P10469338011126425791

/-! ## A190668.P17884178899804998694

`A154325(A185317(3*n))*A190650(n+1)`
-/

namespace A190668.P17884178899804998694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (A185317 (3 * n)).toNat * A190650 (n + 1)

end

end A190668.P17884178899804998694

/-!
# A190669: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(sqrt(3),2,0) and [ ] = floor.

The programs for A190669, the canonical program `A190669.P10808057582479996491` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190669 has offset 1).

The definition of A190669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190669.P10808057582479996491

`floor(2*(n+1)*sqrt(3))-2*floor((n+1)*sqrt(3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190669

/-- `floor(2*(n+1)*sqrt(3))-2*floor((n+1)*sqrt(3))` -/
def P10808057582479996491.Spec : Prop :=
  ∀ n, P10808057582479996491.a n = A190669 (n + 1)

theorem P10808057582479996491.correct : P10808057582479996491.Spec := by
  intro n
  simp only [A190669, Nat.add_sub_cancel]

end A190669

/-! ## A190669.P14997179177733036714

`floor((n+1)*sqrt(12))%2`
-/

namespace A190669.P14997179177733036714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (12 : ℝ)⌋ 2

end

end A190669.P14997179177733036714

namespace A190669

/-- `floor((n+1)*sqrt(12))%2` -/
def P14997179177733036714.Spec : Prop :=
  ∀ n, P14997179177733036714.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P8324715257951099753

`and(1, floor((n+1)*sqrt(12)))`
-/

namespace A190669.P8324715257951099753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n + 1 : ℝ) * Real.sqrt (12 : ℝ)⌋

end

end A190669.P8324715257951099753

namespace A190669

/-- `and(1, floor((n+1)*sqrt(12)))` -/
def P8324715257951099753.Spec : Prop :=
  ∀ n, P8324715257951099753.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P16019001435075071835

`(A194028(n+1)%2)²`
-/

namespace A190669.P16019001435075071835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194028 (n + 1)) 2 ^ 2

end

end A190669.P16019001435075071835

namespace A190669

/-- `(A194028(n+1)%2)²` -/
def P16019001435075071835.Spec : Prop :=
  ∀ n, P16019001435075071835.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P13398164776433327130

`floor(1/A024548(n+1))`
-/

namespace A190669.P13398164776433327130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A024548 (n + 1) : ℚ)⌋

end

end A190669.P13398164776433327130

namespace A190669

/-- `floor(1/A024548(n+1))` -/
def P13398164776433327130.Spec : Prop :=
  ∀ n, P13398164776433327130.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P3946343962284008489

`floor(A190693(n+1)/2)`
-/

namespace A190669.P3946343962284008489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190693 (n + 1) : ℚ) / 2⌋

end

end A190669.P3946343962284008489

namespace A190669

/-- `floor(A190693(n+1)/2)` -/
def P3946343962284008489.Spec : Prop :=
  ∀ n, P3946343962284008489.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P6027437913769367911

`char[A190671(n+1)-1]`
-/

namespace A190669.P6027437913769367911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190669.P6027437913769367911

namespace A190669

/-- `char[A190671(n+1)-1]` -/
def P6027437913769367911.Spec : Prop :=
  ∀ n, (P6027437913769367911.a n : ℤ) = A190669 (n + 1)

end A190669

/-! ## A190669.P3176285758218303722

`A327180(1-A327208(n)+n)`
-/

namespace A190669.P3176285758218303722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 (1 - A327208 n + (n : ℤ)).toNat

end

end A190669.P3176285758218303722

namespace A190669

/-- `A327180(1-A327208(n)+n)` -/
def P3176285758218303722.Spec : Prop :=
  ∀ n, P3176285758218303722.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P12367758705987530288

`val(A022847(n+1), A198081(n+1))`
-/

namespace A190669.P12367758705987530288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022847 (n + 1)).toNat (A198081 (n + 1)).toNat

end

end A190669.P12367758705987530288

namespace A190669

/-- `val(A022847(n+1), A198081(n+1))` -/
def P12367758705987530288.Spec : Prop :=
  ∀ n, (P12367758705987530288.a n : ℤ) = A190669 (n + 1)

end A190669

/-! ## A190669.P61114584551671017

`and(A024548(n+1), A188090(n+1))²`
-/

namespace A190669.P61114584551671017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024548 (n + 1)) (A188090 (n + 1)) ^ 2

end

end A190669.P61114584551671017

namespace A190669

/-- `and(A024548(n+1), A188090(n+1))²` -/
def P61114584551671017.Spec : Prop :=
  ∀ n, P61114584551671017.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P12664983344076230782

`A188068(Δ[A194028(n+1)-A188068(n+1)])`
-/

namespace A190669.P12664983344076230782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194028 (n + 1) - A188068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (f1 (n + 1) - f1 n).toNat

end

end A190669.P12664983344076230782

namespace A190669

/-- `A188068(Δ[A194028(n+1)-A188068(n+1)])` -/
def P12664983344076230782.Spec : Prop :=
  ∀ n, P12664983344076230782.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P10758400320602049196

`A285684(A022847(n+1))`
-/

namespace A190669.P10758400320602049196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285684 (A022847 (n + 1)).toNat

end

end A190669.P10758400320602049196

namespace A190669

/-- `A285684(A022847(n+1))` -/
def P10758400320602049196.Spec : Prop :=
  ∀ n, P10758400320602049196.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P12909189595419888754

`A285684(A194028(n+1)-A022838(n+1))`
-/

namespace A190669.P12909189595419888754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285684 (A194028 (n + 1) - A022838 (n + 1)).toNat

end

end A190669.P12909189595419888754

namespace A190669

/-- `A285684(A194028(n+1)-A022838(n+1))` -/
def P12909189595419888754.Spec : Prop :=
  ∀ n, P12909189595419888754.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P8288941919836475388

`(A022838(2*(n+1))%2)²`
-/

namespace A190669.P8288941919836475388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022838 (2 * (n + 1))) 2 ^ 2

end

end A190669.P8288941919836475388

namespace A190669

/-- `(A022838(2*(n+1))%2)²` -/
def P8288941919836475388.Spec : Prop :=
  ∀ n, P8288941919836475388.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P6872366666603413952

`A144612(A188082(2*n+1)+2*n)`
-/

namespace A190669.P6872366666603413952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144612 (A188082 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A190669.P6872366666603413952

namespace A190669

/-- `A144612(A188082(2*n+1)+2*n)` -/
def P6872366666603413952.Spec : Prop :=
  ∀ n, P6872366666603413952.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P3006239747563632501

`A000035(A194028(n+1))`
-/

namespace A190669.P3006239747563632501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A194028 (n + 1)).toNat

end

end A190669.P3006239747563632501

namespace A190669

/-- `A000035(A194028(n+1))` -/
def P3006239747563632501.Spec : Prop :=
  ∀ n, P3006239747563632501.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P8572343876496153901

`A059841(A198269(n+1))`
-/

namespace A190669.P8572343876496153901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A198269 (n + 1)).toNat

end

end A190669.P8572343876496153901

namespace A190669

/-- `A059841(A198269(n+1))` -/
def P8572343876496153901.Spec : Prop :=
  ∀ n, P8572343876496153901.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P16549927250052216900

`A190672(A003512(n+1))`
-/

namespace A190669.P16549927250052216900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (A003512 (n + 1)).toNat

end

end A190669.P16549927250052216900

namespace A190669

/-- `A190672(A003512(n+1))` -/
def P16549927250052216900.Spec : Prop :=
  ∀ n, P16549927250052216900.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P13956429527675154514

`A188082(2*A003512(n+1))`
-/

namespace A190669.P13956429527675154514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (2 * A003512 (n + 1)).toNat

end

end A190669.P13956429527675154514

namespace A190669

/-- `A188082(2*A003512(n+1))` -/
def P13956429527675154514.Spec : Prop :=
  ∀ n, P13956429527675154514.a n = A190669 (n + 1)

end A190669

/-! ## A190669.P4174223206115774470

`A188082(A003512(n+1)+A003512(n+1))`
-/

namespace A190669.P4174223206115774470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (A003512 (n + 1) + A003512 (n + 1)).toNat

end

end A190669.P4174223206115774470

namespace A190669

/-- `A188082(A003512(n+1)+A003512(n+1))` -/
def P4174223206115774470.Spec : Prop :=
  ∀ n, P4174223206115774470.a n = A190669 (n + 1)

end A190669

/-!
# A190670: Positions of 0 in A190669; complement of A190671.

The programs for A190670, the canonical program `A190670.P6357552631536216047` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190670 has offset 1).

The definition of A190670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190670.P6357552631536216047

`∪[A003512(n+1), A190695(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190670

/-- `∪[A003512(n+1), A190695(n+1)]` -/
def P6357552631536216047.Spec : Prop :=
  ∀ n, (P6357552631536216047.a n : ℤ) = A190670 (n + 1)

theorem P6357552631536216047.correct : P6357552631536216047.Spec := by
  intro n
  simp only [A190670, Nat.add_sub_cancel]

end A190670

/-! ## A190670.P483518178846552119

`∪[A188073(n+1), A190695(n+1)]`
-/

namespace A190670.P483518178846552119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190670.P483518178846552119

namespace A190670

/-- `∪[A188073(n+1), A190695(n+1)]` -/
def P483518178846552119.Spec : Prop :=
  ∀ n, (P483518178846552119.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P1586699563088329655

`∪[A188081(n+1), A190695(n+1)]`
-/

namespace A190670.P1586699563088329655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190670.P1586699563088329655

namespace A190670

/-- `∪[A188081(n+1), A190695(n+1)]` -/
def P1586699563088329655.Spec : Prop :=
  ∀ n, (P1586699563088329655.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P12419975367452383975

`∪[A188091(n+1), A190695(n+1)]`
-/

namespace A190670.P12419975367452383975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190670.P12419975367452383975

namespace A190670

/-- `∪[A188091(n+1), A190695(n+1)]` -/
def P12419975367452383975.Spec : Prop :=
  ∀ n, (P12419975367452383975.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P3268163355290701915

`∪[A190677(n+1), A190695(n+1)]`
-/

namespace A190670.P3268163355290701915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190670.P3268163355290701915

namespace A190670

/-- `∪[A190677(n+1), A190695(n+1)]` -/
def P3268163355290701915.Spec : Prop :=
  ∀ n, (P3268163355290701915.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P6551537882963344168

`∪[A190694(n+1), A190695(n+1)]`
-/

namespace A190670.P6551537882963344168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190670.P6551537882963344168

namespace A190670

/-- `∪[A190694(n+1), A190695(n+1)]` -/
def P6551537882963344168.Spec : Prop :=
  ∀ n, (P6551537882963344168.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P1956177218040807985

`eq[1, and(1, A198269(n))]`
-/

namespace A190670.P1956177218040807985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A198269 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P1956177218040807985

namespace A190670

/-- `eq[1, and(1, A198269(n))]` -/
def P1956177218040807985.Spec : Prop :=
  ∀ n, (P1956177218040807985.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P8412414155140660712

`1+eq[0, A190669(n+1)]`
-/

namespace A190670.P8412414155140660712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P8412414155140660712

namespace A190670

/-- `1+eq[0, A190669(n+1)]` -/
def P8412414155140660712.Spec : Prop :=
  ∀ n, (P8412414155140660712.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P11096665661235345159

`lt[1, A024548(n+1)]+1`
-/

namespace A190670.P11096665661235345159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190670.P11096665661235345159

namespace A190670

/-- `lt[1, A024548(n+1)]+1` -/
def P11096665661235345159.Spec : Prop :=
  ∀ n, (P11096665661235345159.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P4455261043209001074

`eq[A190693(n+1)², A190693(n+1)]+1`
-/

namespace A190670.P4455261043209001074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190670.P4455261043209001074

namespace A190670

/-- `eq[A190693(n+1)², A190693(n+1)]+1` -/
def P4455261043209001074.Spec : Prop :=
  ∀ n, (P4455261043209001074.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P14259065403156468946

`eq[2, A010873(2*A198269(n))]`
-/

namespace A190670.P14259065403156468946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * A198269 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P14259065403156468946

namespace A190670

/-- `eq[2, A010873(2*A198269(n))]` -/
def P14259065403156468946.Spec : Prop :=
  ∀ n, (P14259065403156468946.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P13427280250219363578

`eq[1, A010131(A198269(n))]`
-/

namespace A190670.P13427280250219363578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (A198269 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P13427280250219363578

namespace A190670

/-- `eq[1, A010131(A198269(n))]` -/
def P13427280250219363578.Spec : Prop :=
  ∀ n, (P13427280250219363578.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P6005252176264007983

`eq[1, A198081(2*n)%2]`
-/

namespace A190670.P6005252176264007983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (2 * n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P6005252176264007983

namespace A190670

/-- `eq[1, A198081(2*n)%2]` -/
def P6005252176264007983.Spec : Prop :=
  ∀ n, (P6005252176264007983.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P1288933285202620845

`eq[1, A010137(A198081(2*n))]`
-/

namespace A190670.P1288933285202620845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A198081 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P1288933285202620845

namespace A190670

/-- `eq[1, A010137(A198081(2*n))]` -/
def P1288933285202620845.Spec : Prop :=
  ∀ n, (P1288933285202620845.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P210797085434620565

`lt[n, A195140(A195120(2*n))]`
-/

namespace A190670.P210797085434620565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A195120 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190670.P210797085434620565

namespace A190670

/-- `lt[n, A195140(A195120(2*n))]` -/
def P210797085434620565.Spec : Prop :=
  ∀ n, (P210797085434620565.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P2573138218222393171

`lt[A198081(n), A014682(A198081(2*n))]`
-/

namespace A190670.P2573138218222393171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198081 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190670.P2573138218222393171

namespace A190670

/-- `lt[A198081(n), A014682(A198081(2*n))]` -/
def P2573138218222393171.Spec : Prop :=
  ∀ n, (P2573138218222393171.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P13810192544574826266

`eq[1, and(1, A215781(2*n))]`
-/

namespace A190670.P13810192544574826266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215781 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P13810192544574826266

namespace A190670

/-- `eq[1, and(1, A215781(2*n))]` -/
def P13810192544574826266.Spec : Prop :=
  ∀ n, (P13810192544574826266.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P5134594201232340563

`eq[1, A000035(A215781(2*n))]`
-/

namespace A190670.P5134594201232340563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A215781 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P5134594201232340563

namespace A190670

/-- `eq[1, A000035(A215781(2*n))]` -/
def P5134594201232340563.Spec : Prop :=
  ∀ n, (P5134594201232340563.a n : ℤ) = A190670 (n + 1)

end A190670

/-! ## A190670.P14619525699799135776

`record[A057979(A283775(n+1)+1)]`
-/

namespace A190670.P14619525699799135776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A283775 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190670.P14619525699799135776

namespace A190670

/-- `record[A057979(A283775(n+1)+1)]` -/
def P14619525699799135776.Spec : Prop :=
  ∀ n, P14619525699799135776.a n = A190670 (n + 1)

end A190670

/-! ## A190670.P9450148948329358217

`eq[2, A020639(A080590(2*n+1))]`
-/

namespace A190670.P9450148948329358217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080590 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190670.P9450148948329358217

namespace A190670

/-- `eq[2, A020639(A080590(2*n+1))]` -/
def P9450148948329358217.Spec : Prop :=
  ∀ n, (P9450148948329358217.a n : ℤ) = A190670 (n + 1)

end A190670

/-!
# A190671: Positions of 1 in A190669; complement of A190670.

The programs for A190671, the canonical program `A190671.P5074073965687265744` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190671 has offset 1).

The definition of A190671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190671.P5074073965687265744

`∪[A188069(n+1), A190696(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190671

/-- `∪[A188069(n+1), A190696(n+1)]` -/
def P5074073965687265744.Spec : Prop :=
  ∀ n, (P5074073965687265744.a n : ℤ) = A190671 (n + 1)

theorem P5074073965687265744.correct : P5074073965687265744.Spec := by
  intro n
  simp only [A190671, Nat.add_sub_cancel]

end A190671

/-! ## A190671.P16563176345048479437

`∪[A188077(n+1), A190696(n+1)]`
-/

namespace A190671.P16563176345048479437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P16563176345048479437

namespace A190671

/-- `∪[A188077(n+1), A190696(n+1)]` -/
def P16563176345048479437.Spec : Prop :=
  ∀ n, (P16563176345048479437.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P1615899980398255769

`∪[A188085(n+1), A190696(n+1)]`
-/

namespace A190671.P1615899980398255769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P1615899980398255769

namespace A190671

/-- `∪[A188085(n+1), A190696(n+1)]` -/
def P1615899980398255769.Spec : Prop :=
  ∀ n, (P1615899980398255769.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P15130039687112840297

`∪[A188095(n+1), A190696(n+1)]`
-/

namespace A190671.P15130039687112840297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P15130039687112840297

namespace A190671

/-- `∪[A188095(n+1), A190696(n+1)]` -/
def P15130039687112840297.Spec : Prop :=
  ∀ n, (P15130039687112840297.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P3725688101039480254

`∪[A190675(n+1), A190696(n+1)]`
-/

namespace A190671.P3725688101039480254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P3725688101039480254

namespace A190671

/-- `∪[A190675(n+1), A190696(n+1)]` -/
def P3725688101039480254.Spec : Prop :=
  ∀ n, (P3725688101039480254.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P2623955552354488472

`∪[A190679(n+1), A190696(n+1)]`
-/

namespace A190671.P2623955552354488472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P2623955552354488472

namespace A190671

/-- `∪[A190679(n+1), A190696(n+1)]` -/
def P2623955552354488472.Spec : Prop :=
  ∀ n, (P2623955552354488472.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P11812207593815910298

`∪[A190696(n+1), A190697(n+1)]`
-/

namespace A190671.P11812207593815910298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P11812207593815910298

namespace A190671

/-- `∪[A190696(n+1), A190697(n+1)]` -/
def P11812207593815910298.Spec : Prop :=
  ∀ n, (P11812207593815910298.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P2483426866414139370

`filter[n+1, A190669(#)]`
-/

namespace A190671.P2483426866414139370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190669 (f1 j) = 1) n)

end

end A190671.P2483426866414139370

namespace A190671

/-- `filter[n+1, A190669(#)]` -/
def P2483426866414139370.Spec : Prop :=
  ∀ n, (P2483426866414139370.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P4763485406025028206

`eq[1, A024548(n+1)]+1`
-/

namespace A190671.P4763485406025028206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190671.P4763485406025028206

namespace A190671

/-- `eq[1, A024548(n+1)]+1` -/
def P4763485406025028206.Spec : Prop :=
  ∀ n, (P4763485406025028206.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P12911991728900226524

`eq[1, A190669(n+1)]+1`
-/

namespace A190671.P12911991728900226524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190671.P12911991728900226524

namespace A190671

/-- `eq[1, A190669(n+1)]+1` -/
def P12911991728900226524.Spec : Prop :=
  ∀ n, (P12911991728900226524.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P4170709420442817515

`record[(n+1)*and(1, A007504(A198269(n+1)))]`
-/

namespace A190671.P4170709420442817515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A007504 (A198269 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190671.P4170709420442817515

namespace A190671

/-- `record[(n+1)*and(1, A007504(A198269(n+1)))]` -/
def P4170709420442817515.Spec : Prop :=
  ∀ n, P4170709420442817515.a n = A190671 (n + 1)

end A190671

/-! ## A190671.P5758260300233329784

`eq[A000007(n), A010873(2*A198269(n))]`
-/

namespace A190671.P5758260300233329784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * A198269 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190671.P5758260300233329784

namespace A190671

/-- `eq[A000007(n), A010873(2*A198269(n))]` -/
def P5758260300233329784.Spec : Prop :=
  ∀ n, (P5758260300233329784.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P13489346241638122504

`eq[A000038(n), A010873(2*A198269(n))]`
-/

namespace A190671.P13489346241638122504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * A198269 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190671.P13489346241638122504

namespace A190671

/-- `eq[A000038(n), A010873(2*A198269(n))]` -/
def P13489346241638122504.Spec : Prop :=
  ∀ n, (P13489346241638122504.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P1888255158278284483

`eq[1, A010137(A194028(n+1))]+1`
-/

namespace A190671.P1888255158278284483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A194028 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190671.P1888255158278284483

namespace A190671

/-- `eq[1, A010137(A194028(n+1))]+1` -/
def P1888255158278284483.Spec : Prop :=
  ∀ n, (P1888255158278284483.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P2798737998400134494

`eq[1, A000035(A195120(2*n))]`
-/

namespace A190671.P2798737998400134494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195120 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190671.P2798737998400134494

namespace A190671

/-- `eq[1, A000035(A195120(2*n))]` -/
def P2798737998400134494.Spec : Prop :=
  ∀ n, (P2798737998400134494.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P12945732563439907375

`eq[2, A040001(A198081(2*n))]`
-/

namespace A190671.P12945732563439907375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A198081 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190671.P12945732563439907375

namespace A190671

/-- `eq[2, A040001(A198081(2*n))]` -/
def P12945732563439907375.Spec : Prop :=
  ∀ n, (P12945732563439907375.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P7476754196960117568

`eq[2, A040001(A215781(2*n))]`
-/

namespace A190671.P7476754196960117568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A215781 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190671.P7476754196960117568

namespace A190671

/-- `eq[2, A040001(A215781(2*n))]` -/
def P7476754196960117568.Spec : Prop :=
  ∀ n, (P7476754196960117568.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P18352260543975527151

`eq[1, A055396(A195120(2*n)+1)]`
-/

namespace A190671.P18352260543975527151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A195120 (2 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190671.P18352260543975527151

namespace A190671

/-- `eq[1, A055396(A195120(2*n)+1)]` -/
def P18352260543975527151.Spec : Prop :=
  ∀ n, (P18352260543975527151.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P6914251738343418035

`eq[2, A020639(A188069(2*n+1))]`
-/

namespace A190671.P6914251738343418035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A188069 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190671.P6914251738343418035

namespace A190671

/-- `eq[2, A020639(A188069(2*n+1))]` -/
def P6914251738343418035.Spec : Prop :=
  ∀ n, (P6914251738343418035.a n : ℤ) = A190671 (n + 1)

end A190671

/-! ## A190671.P16498163009107759587

`lt[2, A020639(A080590(2*n+1))]`
-/

namespace A190671.P16498163009107759587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080590 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190671.P16498163009107759587

namespace A190671

/-- `lt[2, A020639(A080590(2*n+1))]` -/
def P16498163009107759587.Spec : Prop :=
  ∀ n, (P16498163009107759587.a n : ℤ) = A190671 (n + 1)

end A190671

/-!
# A190672: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),2,1) and [ ]=floor.

The programs for A190672, the canonical program `A190672.P969204813514763096` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190672 has offset 1).

The definition of A190672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190672.P969204813514763096

`round(sqrt(A190704(n+1)))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190672

/-- `round(sqrt(A190704(n+1)))` -/
def P969204813514763096.Spec : Prop :=
  ∀ n, P969204813514763096.a n = A190672 (n + 1)

theorem P969204813514763096.correct : P969204813514763096.Spec := by
  intro n
  simp only [A190672, Nat.add_sub_cancel]

end A190672

/-! ## A190672.P3698564056365534608

`A188068(n+2)+A188082(2*(n+1))*A188082(n+2)`
-/

namespace A190672.P3698564056365534608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 2) + A188082 (2 * (n + 1)) * A188082 (n + 2)

end

end A190672.P3698564056365534608

namespace A190672

/-- `A188068(n+2)+A188082(2*(n+1))*A188082(n+2)` -/
def P3698564056365534608.Spec : Prop :=
  ∀ n, P3698564056365534608.a n = A190672 (n + 1)

end A190672

/-! ## A190672.P621081610316454457

`A190669(n+1)+A188068(2*n+3)`
-/

namespace A190672.P621081610316454457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (n + 1) + A188068 (2 * n + 3)

end

end A190672.P621081610316454457

namespace A190672

/-- `A190669(n+1)+A188068(2*n+3)` -/
def P621081610316454457.Spec : Prop :=
  ∀ n, P621081610316454457.a n = A190672 (n + 1)

end A190672

/-! ## A190672.P17745243485771139716

`round(A190704(n+1)/A000034(A016813(n)))`
-/

namespace A190672.P17745243485771139716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A190704 (n + 1) : ℚ) / (A000034 (A016813 n).toNat : ℚ))

end

end A190672.P17745243485771139716

namespace A190672

/-- `round(A190704(n+1)/A000034(A016813(n)))` -/
def P17745243485771139716.Spec : Prop :=
  ∀ n, P17745243485771139716.a n = A190672 (n + 1)

end A190672

/-! ## A190672.P8968469991800846972

`A003056(A115716(A115716(n))*A190704(n+1))`
-/

namespace A190672.P8968469991800846972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A115716 (A115716 n).toNat * A190704 (n + 1)).toNat

end

end A190672.P8968469991800846972

namespace A190672

/-- `A003056(A115716(A115716(n))*A190704(n+1))` -/
def P8968469991800846972.Spec : Prop :=
  ∀ n, P8968469991800846972.a n = A190672 (n + 1)

end A190672

/-! ## A190672.P1760144155632596781

`A003056(A190704(n+1)^A115716(A115716(n)))`
-/

namespace A190672.P1760144155632596781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A190704 (n + 1) : ℚ) ^ (A115716 (A115716 n).toNat : ℤ))).toNat

end

end A190672.P1760144155632596781

namespace A190672

/-- `A003056(A190704(n+1)^A115716(A115716(n)))` -/
def P1760144155632596781.Spec : Prop :=
  ∀ n, P1760144155632596781.a n = A190672 (n + 1)

end A190672

/-! ## A190672.P7982095740639450182

`A003056(A190704(n+1)*A204162(A266769(n)))`
-/

namespace A190672.P7982095740639450182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A190704 (n + 1) * A204162 (A266769 n).toNat).toNat

end

end A190672.P7982095740639450182

namespace A190672

/-- `A003056(A190704(n+1)*A204162(A266769(n)))` -/
def P7982095740639450182.Spec : Prop :=
  ∀ n, P7982095740639450182.a n = A190672 (n + 1)

end A190672

/-! ## A190672.P661644684994030660

`A003056(A190704(n+1)^A204162(A266769(n)))`
-/

namespace A190672.P661644684994030660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A190704 (n + 1) : ℚ) ^ (A204162 (A266769 n).toNat : ℤ))).toNat

end

end A190672.P661644684994030660

namespace A190672

/-- `A003056(A190704(n+1)^A204162(A266769(n)))` -/
def P661644684994030660.Spec : Prop :=
  ∀ n, P661644684994030660.a n = A190672 (n + 1)

end A190672

/-!
# A190673: Positions of 0 in A190672.

The programs for A190673, the canonical program `A190673.P14157910734428056466` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190673 has offset 1).

The definition of A190673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190673.P14157910734428056466

`A003512(A190670(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190673

/-- `A003512(A190670(n+1))` -/
def P14157910734428056466.Spec : Prop :=
  ∀ n, P14157910734428056466.a n = A190673 (n + 1)

theorem P14157910734428056466.correct : P14157910734428056466.Spec := by
  intro n
  simp only [A190673, Nat.add_sub_cancel]

end A190673

/-! ## A190673.P14328386156370541103

`A003512(∪[A003512(n+1), A190695(n+1)])`
-/

namespace A190673.P14328386156370541103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190695 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A190673.P14328386156370541103

namespace A190673

/-- `A003512(∪[A003512(n+1), A190695(n+1)])` -/
def P14328386156370541103.Spec : Prop :=
  ∀ n, P14328386156370541103.a n = A190673 (n + 1)

end A190673

/-! ## A190673.P3197137673516448651

`A182778(A190670(n+1))-A190670(A000027(n+1))`
-/

namespace A190673.P3197137673516448651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (A190670 (n + 1)).toNat - A190670 (A000027 (n + 1)).toNat

end

end A190673.P3197137673516448651

namespace A190673

/-- `A182778(A190670(n+1))-A190670(A000027(n+1))` -/
def P3197137673516448651.Spec : Prop :=
  ∀ n, P3197137673516448651.a n = A190673 (n + 1)

end A190673

/-! ## A190673.P16055700965810766560

`∩[A003512(n+1), A327181(n+1)]`
-/

namespace A190673.P16055700965810766560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190673.P16055700965810766560

namespace A190673

/-- `∩[A003512(n+1), A327181(n+1)]` -/
def P16055700965810766560.Spec : Prop :=
  ∀ n, (P16055700965810766560.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P13637863206358853521

`∩[A188074(n+1), A327181(n+1)]`
-/

namespace A190673.P13637863206358853521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190673.P13637863206358853521

namespace A190673

/-- `∩[A188074(n+1), A327181(n+1)]` -/
def P13637863206358853521.Spec : Prop :=
  ∀ n, (P13637863206358853521.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P2266233106894757630

`∩[A190689(n+1), A327181(n+1)]`
-/

namespace A190673.P2266233106894757630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190673.P2266233106894757630

namespace A190673

/-- `∩[A190689(n+1), A327181(n+1)]` -/
def P2266233106894757630.Spec : Prop :=
  ∀ n, (P2266233106894757630.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P745616333578002498

`∩[A190694(n+1), A327181(n+1)]`
-/

namespace A190673.P745616333578002498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190673.P745616333578002498

namespace A190673

/-- `∩[A190694(n+1), A327181(n+1)]` -/
def P745616333578002498.Spec : Prop :=
  ∀ n, (P745616333578002498.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P1518453199370073960

`∩[A190711(n+1), A327181(n+1)]`
-/

namespace A190673.P1518453199370073960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190673.P1518453199370073960

namespace A190673

/-- `∩[A190711(n+1), A327181(n+1)]` -/
def P1518453199370073960.Spec : Prop :=
  ∀ n, (P1518453199370073960.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P10505170787404433695

`A327181(eq[2, A327181(n+2)-A327181(n+1)]+1)`
-/

namespace A190673.P10505170787404433695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 2) - A327181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A190673.P10505170787404433695

namespace A190673

/-- `A327181(eq[2, A327181(n+2)-A327181(n+1)]+1)` -/
def P10505170787404433695.Spec : Prop :=
  ∀ n, P10505170787404433695.a n = A190673 (n + 1)

end A190673

/-! ## A190673.P6032717722052058326

`record[gcd(A003512(2*(n+2)), A003512(n+2))]`
-/

namespace A190673.P6032717722052058326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003512 (2 * (n + 2))) (A003512 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190673.P6032717722052058326

namespace A190673

/-- `record[gcd(A003512(2*(n+2)), A003512(n+2))]` -/
def P6032717722052058326.Spec : Prop :=
  ∀ n, (P6032717722052058326.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P16238927505959287831

`lt[A190672(n+1), 1]+1`
-/

namespace A190673.P16238927505959287831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190673.P16238927505959287831

namespace A190673

/-- `lt[A190672(n+1), 1]+1` -/
def P16238927505959287831.Spec : Prop :=
  ∀ n, (P16238927505959287831.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P10921662024610765545

`lt[A190704(n+1), 1]+1`
-/

namespace A190673.P10921662024610765545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190673.P10921662024610765545

namespace A190673

/-- `lt[A190704(n+1), 1]+1` -/
def P10921662024610765545.Spec : Prop :=
  ∀ n, (P10921662024610765545.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P13794847601911773049

`eq[A000007(n), A190704(n+1)]+1`
-/

namespace A190673.P13794847601911773049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190673.P13794847601911773049

namespace A190673

/-- `eq[A000007(n), A190704(n+1)]+1` -/
def P13794847601911773049.Spec : Prop :=
  ∀ n, (P13794847601911773049.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P7513862444707126549

`eq[A000007(n), A190704(A000007(n)+n)]`
-/

namespace A190673.P7513862444707126549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190673.P7513862444707126549

namespace A190673

/-- `eq[A000007(n), A190704(A000007(n)+n)]` -/
def P7513862444707126549.Spec : Prop :=
  ∀ n, (P7513862444707126549.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P3951375181651128215

`record[A025480(A003512(2*(n+2)))]`
-/

namespace A190673.P3951375181651128215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A003512 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190673.P3951375181651128215

namespace A190673

/-- `record[A025480(A003512(2*(n+2)))]` -/
def P3951375181651128215.Spec : Prop :=
  ∀ n, P3951375181651128215.a n = A190673 (n + 1)

end A190673

/-! ## A190673.P9550899155437002273

`record[A003602(A180123(2*(n+2)))]`
-/

namespace A190673.P9550899155437002273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A180123 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190673.P9550899155437002273

namespace A190673

/-- `record[A003602(A180123(2*(n+2)))]` -/
def P9550899155437002273.Spec : Prop :=
  ∀ n, P9550899155437002273.a n = A190673 (n + 1)

end A190673

/-! ## A190673.P11773637455601358831

`eq[A080757(2*n), A275855(n+1)]`
-/

namespace A190673.P11773637455601358831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190673.P11773637455601358831

namespace A190673

/-- `eq[A080757(2*n), A275855(n+1)]` -/
def P11773637455601358831.Spec : Prop :=
  ∀ n, (P11773637455601358831.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P212622219901155492

`lt[A275855(2*(n+1)), A275855(n+1)]`
-/

namespace A190673.P212622219901155492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190673.P212622219901155492

namespace A190673

/-- `lt[A275855(2*(n+1)), A275855(n+1)]` -/
def P212622219901155492.Spec : Prop :=
  ∀ n, (P212622219901155492.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P301219158776268906

`lt[A080757(n), A080757(A130773(n))]`
-/

namespace A190673.P301219158776268906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A130773 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190673.P301219158776268906

namespace A190673

/-- `lt[A080757(n), A080757(A130773(n))]` -/
def P301219158776268906.Spec : Prop :=
  ∀ n, (P301219158776268906.a n : ℤ) = A190673 (n + 1)

end A190673

/-! ## A190673.P4263576205142046699

`eq[A007538(n+1), A080757(A130773(n))]`
-/

namespace A190673.P4263576205142046699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A130773 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190673.P4263576205142046699

namespace A190673

/-- `eq[A007538(n+1), A080757(A130773(n))]` -/
def P4263576205142046699.Spec : Prop :=
  ∀ n, (P4263576205142046699.a n : ℤ) = A190673 (n + 1)

end A190673

/-!
# A190674: Positions of 1 in A190672.

The programs for A190674, the canonical program `A190674.P7150787188508338340` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190674 has offset 1).

The definition of A190674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190674.P7150787188508338340

`∪[A190706(n+1), A190707(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190674

/-- `∪[A190706(n+1), A190707(n+1)]` -/
def P7150787188508338340.Spec : Prop :=
  ∀ n, (P7150787188508338340.a n : ℤ) = A190674 (n + 1)

theorem P7150787188508338340.correct : P7150787188508338340.Spec := by
  intro n
  simp only [A190674, Nat.add_sub_cancel]

end A190674

/-! ## A190674.P17160365737201041268

`eq[1, A190672(n+1)]+1`
-/

namespace A190674.P17160365737201041268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190674.P17160365737201041268

namespace A190674

/-- `eq[1, A190672(n+1)]+1` -/
def P17160365737201041268.Spec : Prop :=
  ∀ n, (P17160365737201041268.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P18251927713270272842

`eq[0, A190224(2*n+1)]`
-/

namespace A190674.P18251927713270272842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190674.P18251927713270272842

namespace A190674

/-- `eq[0, A190224(2*n+1)]` -/
def P18251927713270272842.Spec : Prop :=
  ∀ n, (P18251927713270272842.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P10260605944368436098

`eq[1, gcd(2, A198081(2*n+1))]`
-/

namespace A190674.P10260605944368436098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A198081 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190674.P10260605944368436098

namespace A190674

/-- `eq[1, gcd(2, A198081(2*n+1))]` -/
def P10260605944368436098.Spec : Prop :=
  ∀ n, (P10260605944368436098.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P7962272177106681162

`record[A057979(A283775(n+2))]`
-/

namespace A190674.P7962272177106681162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A283775 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190674.P7962272177106681162

namespace A190674

/-- `record[A057979(A283775(n+2))]` -/
def P7962272177106681162.Spec : Prop :=
  ∀ n, P7962272177106681162.a n = A190674 (n + 1)

end A190674

/-! ## A190674.P15171854803059705705

`eq[A000035(A195120(2*n+1)), 0]`
-/

namespace A190674.P15171854803059705705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195120 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A190674.P15171854803059705705

namespace A190674

/-- `eq[A000035(A195120(2*n+1)), 0]` -/
def P15171854803059705705.Spec : Prop :=
  ∀ n, (P15171854803059705705.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P5751792342656019561

`eq[A000035(A215781(2*n+1)), 0]`
-/

namespace A190674.P5751792342656019561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A215781 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A190674.P5751792342656019561

namespace A190674

/-- `eq[A000035(A215781(2*n+1)), 0]` -/
def P5751792342656019561.Spec : Prop :=
  ∀ n, (P5751792342656019561.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P5867135622635344536

`eq[A135481(A182777(2*n+1)), 0]`
-/

namespace A190674.P5867135622635344536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A182777 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A190674.P5867135622635344536

namespace A190674

/-- `eq[A135481(A182777(2*n+1)), 0]` -/
def P5867135622635344536.Spec : Prop :=
  ∀ n, (P5867135622635344536.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P4699021325553309349

`eq[1, A010137(A198081(2*n+1))]`
-/

namespace A190674.P4699021325553309349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A198081 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190674.P4699021325553309349

namespace A190674

/-- `eq[1, A010137(A198081(2*n+1))]` -/
def P4699021325553309349.Spec : Prop :=
  ∀ n, (P4699021325553309349.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P7314261848202909057

`eq[2, A020639(A022838(2*n+1))]`
-/

namespace A190674.P7314261848202909057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022838 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190674.P7314261848202909057

namespace A190674

/-- `eq[2, A020639(A022838(2*n+1))]` -/
def P7314261848202909057.Spec : Prop :=
  ∀ n, (P7314261848202909057.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P11180030429741104103

`eq[2, A020639(A080590(2*(n+1)))]`
-/

namespace A190674.P11180030429741104103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080590 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190674.P11180030429741104103

namespace A190674

/-- `eq[2, A020639(A080590(2*(n+1)))]` -/
def P11180030429741104103.Spec : Prop :=
  ∀ n, (P11180030429741104103.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P15938715467575122916

`A004525(eq[n%2, A190224(n+1)])`
-/

namespace A190674.P15938715467575122916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190674.P15938715467575122916

namespace A190674

/-- `A004525(eq[n%2, A190224(n+1)])` -/
def P15938715467575122916.Spec : Prop :=
  ∀ n, P15938715467575122916.a n = A190674 (n + 1)

end A190674

/-! ## A190674.P7465376563448244284

`eq[A014682(A195120(2*n+1)), A195120(n)]`
-/

namespace A190674.P7465376563448244284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A195120 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190674.P7465376563448244284

namespace A190674

/-- `eq[A014682(A195120(2*n+1)), A195120(n)]` -/
def P7465376563448244284.Spec : Prop :=
  ∀ n, (P7465376563448244284.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P13701460425584005873

`lt[A198081(n+1), A014682(A198081(2*n+1))]`
-/

namespace A190674.P13701460425584005873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198081 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190674.P13701460425584005873

namespace A190674

/-- `lt[A198081(n+1), A014682(A198081(2*n+1))]` -/
def P13701460425584005873.Spec : Prop :=
  ∀ n, (P13701460425584005873.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P5068580784794123535

`eq[A059841(A215781(2*n+1)), A059841(2*n)]`
-/

namespace A190674.P5068580784794123535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A215781 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190674.P5068580784794123535

namespace A190674

/-- `eq[A059841(A215781(2*n+1)), A059841(2*n)]` -/
def P5068580784794123535.Spec : Prop :=
  ∀ n, (P5068580784794123535.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P5703120977054818288

`eq[A040001(2*n+1), A040001(A198081(2*n+1))]`
-/

namespace A190674.P5703120977054818288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A198081 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190674.P5703120977054818288

namespace A190674

/-- `eq[A040001(2*n+1), A040001(A198081(2*n+1))]` -/
def P5703120977054818288.Spec : Prop :=
  ∀ n, (P5703120977054818288.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P15182230895642648042

`lt[A266286(A198081(2*n+1)), A030123(n)]`
-/

namespace A190674.P15182230895642648042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 (A198081 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190674.P15182230895642648042

namespace A190674

/-- `lt[A266286(A198081(2*n+1)), A030123(n)]` -/
def P15182230895642648042.Spec : Prop :=
  ∀ n, (P15182230895642648042.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P3942308765480973443

`lt[A266286(A198081(2*n+1)), A198081(2*n)]`
-/

namespace A190674.P3942308765480973443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 (A198081 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190674.P3942308765480973443

namespace A190674

/-- `lt[A266286(A198081(2*n+1)), A198081(2*n)]` -/
def P3942308765480973443.Spec : Prop :=
  ∀ n, (P3942308765480973443.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P16472793700852980434

`eq[A027642(2*n+1), A027642(A198081(2*n+1))]`
-/

namespace A190674.P16472793700852980434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A198081 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190674.P16472793700852980434

namespace A190674

/-- `eq[A027642(2*n+1), A027642(A198081(2*n+1))]` -/
def P16472793700852980434.Spec : Prop :=
  ∀ n, (P16472793700852980434.a n : ℤ) = A190674 (n + 1)

end A190674

/-! ## A190674.P10532996451781201994

`lt[A035363(A054088(2*n+1)), 1]`
-/

namespace A190674.P10532996451781201994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A054088 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190674.P10532996451781201994

namespace A190674

/-- `lt[A035363(A054088(2*n+1)), 1]` -/
def P10532996451781201994.Spec : Prop :=
  ∀ n, (P10532996451781201994.a n : ℤ) = A190674 (n + 1)

end A190674

/-!
# A190675: Positions of 2 in A190672.

The programs for A190675, the canonical program `A190675.P10535900529426331608` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190675 has offset 1).

The definition of A190675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190675.P4394426852182340882

`∑[A106824(n)²%6]`
-/

namespace A190675.P4394426852182340882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106824 n ^ 2) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190675.P4394426852182340882

namespace A190675

/-- `∑[A106824(n)²%6]` -/
def P4394426852182340882.Spec : Prop :=
  ∀ n, P4394426852182340882.a n = A190675 (n + 1)

end A190675

/-! ## A190675.P10535900529426331608

`∪[A188069(n+1), A190708(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190675

/-- `∪[A188069(n+1), A190708(n+1)]` -/
def P10535900529426331608.Spec : Prop :=
  ∀ n, (P10535900529426331608.a n : ℤ) = A190675 (n + 1)

theorem P10535900529426331608.correct : P10535900529426331608.Spec := by
  intro n
  simp only [A190675, Nat.add_sub_cancel]

end A190675

/-! ## A190675.P18427749829349532478

`∪[A188077(n+1), A190708(n+1)]`
-/

namespace A190675.P18427749829349532478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P18427749829349532478

namespace A190675

/-- `∪[A188077(n+1), A190708(n+1)]` -/
def P18427749829349532478.Spec : Prop :=
  ∀ n, (P18427749829349532478.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P10899355169009800608

`∪[A188088(n+1), A190708(n+1)]`
-/

namespace A190675.P10899355169009800608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P10899355169009800608

namespace A190675

/-- `∪[A188088(n+1), A190708(n+1)]` -/
def P10899355169009800608.Spec : Prop :=
  ∀ n, (P10899355169009800608.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P11753270760936772638

`∪[A190679(n+1), A190708(n+1)]`
-/

namespace A190675.P11753270760936772638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P11753270760936772638

namespace A190675

/-- `∪[A190679(n+1), A190708(n+1)]` -/
def P11753270760936772638.Spec : Prop :=
  ∀ n, (P11753270760936772638.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P13012901816486431019

`∪[A190687(n+1), A190708(n+1)]`
-/

namespace A190675.P13012901816486431019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P13012901816486431019

namespace A190675

/-- `∪[A190687(n+1), A190708(n+1)]` -/
def P13012901816486431019.Spec : Prop :=
  ∀ n, (P13012901816486431019.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P471728158250063853

`∪[A190692(n+1), A190708(n+1)]`
-/

namespace A190675.P471728158250063853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P471728158250063853

namespace A190675

/-- `∪[A190692(n+1), A190708(n+1)]` -/
def P471728158250063853.Spec : Prop :=
  ∀ n, (P471728158250063853.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P17910567237878547153

`∪[A190697(n+1), A190708(n+1)]`
-/

namespace A190675.P17910567237878547153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P17910567237878547153

namespace A190675

/-- `∪[A190697(n+1), A190708(n+1)]` -/
def P17910567237878547153.Spec : Prop :=
  ∀ n, (P17910567237878547153.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P14907998150185548410

`∪[A190703(n+1), A190708(n+1)]`
-/

namespace A190675.P14907998150185548410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P14907998150185548410

namespace A190675

/-- `∪[A190703(n+1), A190708(n+1)]` -/
def P14907998150185548410.Spec : Prop :=
  ∀ n, (P14907998150185548410.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P5723634249640753851

`∪[A190708(n+1), A190709(n+1)]`
-/

namespace A190675.P5723634249640753851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P5723634249640753851

namespace A190675

/-- `∪[A190708(n+1), A190709(n+1)]` -/
def P5723634249640753851.Spec : Prop :=
  ∀ n, (P5723634249640753851.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P17512909243933573270

`∩[A188085(n+1), A327182(n+1)]`
-/

namespace A190675.P17512909243933573270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P17512909243933573270

namespace A190675

/-- `∩[A188085(n+1), A327182(n+1)]` -/
def P17512909243933573270.Spec : Prop :=
  ∀ n, (P17512909243933573270.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P13633092233582719878

`∩[A188095(n+1), A327182(n+1)]`
-/

namespace A190675.P13633092233582719878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P13633092233582719878

namespace A190675

/-- `∩[A188095(n+1), A327182(n+1)]` -/
def P13633092233582719878.Spec : Prop :=
  ∀ n, (P13633092233582719878.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P4304095578038592047

`∩[A190671(n+1), A327182(n+1)]`
-/

namespace A190675.P4304095578038592047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P4304095578038592047

namespace A190675

/-- `∩[A190671(n+1), A327182(n+1)]` -/
def P4304095578038592047.Spec : Prop :=
  ∀ n, (P4304095578038592047.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P5422695321174173410

`∩[A188072(n+1), A327182(n+1)]`
-/

namespace A190675.P5422695321174173410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P5422695321174173410

namespace A190675

/-- `∩[A188072(n+1), A327182(n+1)]` -/
def P5422695321174173410.Spec : Prop :=
  ∀ n, (P5422695321174173410.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P1272392252612419148

`∩[A188080(n+1), A327182(n+1)]`
-/

namespace A190675.P1272392252612419148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P1272392252612419148

namespace A190675

/-- `∩[A188080(n+1), A327182(n+1)]` -/
def P1272392252612419148.Spec : Prop :=
  ∀ n, (P1272392252612419148.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P16393172692508682566

`∩[A188092(n+1), A327182(n+1)]`
-/

namespace A190675.P16393172692508682566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P16393172692508682566

namespace A190675

/-- `∩[A188092(n+1), A327182(n+1)]` -/
def P16393172692508682566.Spec : Prop :=
  ∀ n, (P16393172692508682566.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P12102956964007781334

`∩[A003511(n+1), A327182(n+1)]`
-/

namespace A190675.P12102956964007781334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P12102956964007781334

namespace A190675

/-- `∩[A003511(n+1), A327182(n+1)]` -/
def P12102956964007781334.Spec : Prop :=
  ∀ n, (P12102956964007781334.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P7922617250745449109

`lt[1, A190672(n+1)]+1`
-/

namespace A190675.P7922617250745449109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190675.P7922617250745449109

namespace A190675

/-- `lt[1, A190672(n+1)]+1` -/
def P7922617250745449109.Spec : Prop :=
  ∀ n, (P7922617250745449109.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P7812196421152368320

`lt[2, A190704(n+1)]+1`
-/

namespace A190675.P7812196421152368320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190675.P7812196421152368320

namespace A190675

/-- `lt[2, A190704(n+1)]+1` -/
def P7812196421152368320.Spec : Prop :=
  ∀ n, (P7812196421152368320.a n : ℤ) = A190675 (n + 1)

end A190675

/-! ## A190675.P16058266774512752523

`filter[A003511(n+1), A327180(#)]`
-/

namespace A190675.P16058266774512752523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327180 (f1 j).toNat = 1) n)

end

end A190675.P16058266774512752523

namespace A190675

/-- `filter[A003511(n+1), A327180(#)]` -/
def P16058266774512752523.Spec : Prop :=
  ∀ n, P16058266774512752523.a n = A190675 (n + 1)

end A190675

/-!
# A190676: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,0) and [ ]=floor.

The programs for A190676, the canonical program `A190676.P5964065822159639979` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190676 has offset 1).

The definition of A190676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190676.P7393896222276374913

`floor((n+1)*sqrt(27))%3`
-/

namespace A190676.P7393896222276374913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (27 : ℝ)⌋ 3

end

end A190676.P7393896222276374913

namespace A190676

/-- `floor((n+1)*sqrt(27))%3` -/
def P7393896222276374913.Spec : Prop :=
  ∀ n, P7393896222276374913.a n = A190676 (n + 1)

end A190676

/-! ## A190676.P5964065822159639979

`A080425(A195181(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190676

/-- `A080425(A195181(n+1))` -/
def P5964065822159639979.Spec : Prop :=
  ∀ n, P5964065822159639979.a n = A190676 (n + 1)

theorem P5964065822159639979.correct : P5964065822159639979.Spec := by
  intro n
  simp only [A190676, Nat.add_sub_cancel]

end A190676

/-! ## A190676.P15512299011373707898

`∑[-Δ[A049347(A195181(n))]]`
-/

namespace A190676.P15512299011373707898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195181 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190676.P15512299011373707898

namespace A190676

/-- `∑[-Δ[A049347(A195181(n))]]` -/
def P15512299011373707898.Spec : Prop :=
  ∀ n, P15512299011373707898.a n = A190676 (n + 1)

end A190676

/-! ## A190676.P5767269606286166360

`A083054(3*(n+1))`
-/

namespace A190676.P5767269606286166360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (3 * (n + 1))

end

end A190676.P5767269606286166360

namespace A190676

/-- `A083054(3*(n+1))` -/
def P5767269606286166360.Spec : Prop :=
  ∀ n, P5767269606286166360.a n = A190676 (n + 1)

end A190676

/-! ## A190676.P14540700983366064345

`dr(A083054(A008486(n+1)))`
-/

namespace A190676.P14540700983366064345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083054 (A008486 (n + 1)).toNat)

end

end A190676.P14540700983366064345

namespace A190676

/-- `dr(A083054(A008486(n+1)))` -/
def P14540700983366064345.Spec : Prop :=
  ∀ n, (P14540700983366064345.a n : ℤ) = A190676 (n + 1)

end A190676

/-!
# A190677: Positions of 0 in A190676.

The programs for A190677, the canonical program `A190677.P8681336031986812165` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190677 has offset 1).

The definition of A190677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190677.P8681336031986812165

`lt[A190676(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190677

/-- `lt[A190676(n+1), 1]+1` -/
def P8681336031986812165.Spec : Prop :=
  ∀ n, (P8681336031986812165.a n : ℤ) = A190677 (n + 1)

theorem P8681336031986812165.correct : P8681336031986812165.Spec := by
  intro n
  simp only [A190677, Nat.add_sub_cancel]

end A190677

/-! ## A190677.P3887558372759554279

`lt[2, A024548(n+1)]+1`
-/

namespace A190677.P3887558372759554279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190677.P3887558372759554279

namespace A190677

/-- `lt[2, A024548(n+1)]+1` -/
def P3887558372759554279.Spec : Prop :=
  ∀ n, (P3887558372759554279.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P7113409396577314527

`eq[0, A195181(n+1)%3]+1`
-/

namespace A190677.P7113409396577314527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195181 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190677.P7113409396577314527

namespace A190677

/-- `eq[0, A195181(n+1)%3]+1` -/
def P7113409396577314527.Spec : Prop :=
  ∀ n, (P7113409396577314527.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P18255342601304163943

`eq[2, A100063(A195181(n))]`
-/

namespace A190677.P18255342601304163943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A195181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190677.P18255342601304163943

namespace A190677

/-- `eq[2, A100063(A195181(n))]` -/
def P18255342601304163943.Spec : Prop :=
  ∀ n, (P18255342601304163943.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P15514696314690837776

`eq[A195181(n)%3, A000007(n)]`
-/

namespace A190677.P15514696314690837776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195181 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190677.P15514696314690837776

namespace A190677

/-- `eq[A195181(n)%3, A000007(n)]` -/
def P15514696314690837776.Spec : Prop :=
  ∀ n, (P15514696314690837776.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P6394023285450818559

`eq[3, A195181(n+1)/A195120(n+1)]+1`
-/

namespace A190677.P6394023285450818559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195181 (n + 1) : ℚ) / (A195120 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A190677.P6394023285450818559

namespace A190677

/-- `eq[3, A195181(n+1)/A195120(n+1)]+1` -/
def P6394023285450818559.Spec : Prop :=
  ∀ n, (P6394023285450818559.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P2085107910120084262

`eq[1, A049347(A195181(A000038(n)+n))]`
-/

namespace A190677.P2085107910120084262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195181 (A000038 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190677.P2085107910120084262

namespace A190677

/-- `eq[1, A049347(A195181(A000038(n)+n))]` -/
def P2085107910120084262.Spec : Prop :=
  ∀ n, (P2085107910120084262.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P9166789463728725740

`eq[1, A198081(3*n)%3]`
-/

namespace A190677.P9166789463728725740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (3 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190677.P9166789463728725740

namespace A190677

/-- `eq[1, A198081(3*n)%3]` -/
def P9166789463728725740.Spec : Prop :=
  ∀ n, (P9166789463728725740.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P10986457513338251514

`eq[A195120(3*n)%3, A000007(n)]`
-/

namespace A190677.P10986457513338251514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195120 (3 * n)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190677.P10986457513338251514

namespace A190677

/-- `eq[A195120(3*n)%3, A000007(n)]` -/
def P10986457513338251514.Spec : Prop :=
  ∀ n, (P10986457513338251514.a n : ℤ) = A190677 (n + 1)

end A190677

/-! ## A190677.P14957518468083931185

`A195120(A190684(n+1))`
-/

namespace A190677.P14957518468083931185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A190684 (n + 1)).toNat

end

end A190677.P14957518468083931185

namespace A190677

/-- `A195120(A190684(n+1))` -/
def P14957518468083931185.Spec : Prop :=
  ∀ n, P14957518468083931185.a n = A190677 (n + 1)

end A190677

/-!
# A190678: Positions of 1 in A190676.

The programs for A190678, the canonical program `A190678.P11765066703703427790` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190678 has offset 1).

The definition of A190678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190678.P11765066703703427790

`eq[1, floor(n*sqrt(27))%3]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190678

/-- `eq[1, floor(n*sqrt(27))%3]` -/
def P11765066703703427790.Spec : Prop :=
  ∀ n, (P11765066703703427790.a n : ℤ) = A190678 (n + 1)

theorem P11765066703703427790.correct : P11765066703703427790.Spec := by
  intro n
  simp only [A190678, Nat.add_sub_cancel]

end A190678

/-! ## A190678.P4836004714113781842

`eq[1, A190676(n+1)]+1`
-/

namespace A190678.P4836004714113781842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190678.P4836004714113781842

namespace A190678

/-- `eq[1, A190676(n+1)]+1` -/
def P4836004714113781842.Spec : Prop :=
  ∀ n, (P4836004714113781842.a n : ℤ) = A190678 (n + 1)

end A190678

/-! ## A190678.P13572114192776464185

`eq[0, A010892(A195181(n))]`
-/

namespace A190678.P13572114192776464185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A195181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190678.P13572114192776464185

namespace A190678

/-- `eq[0, A010892(A195181(n))]` -/
def P13572114192776464185.Spec : Prop :=
  ∀ n, (P13572114192776464185.a n : ℤ) = A190678 (n + 1)

end A190678

/-! ## A190678.P2340882417717584360

`eq[1, A049347(A195181(n)+1)]`
-/

namespace A190678.P2340882417717584360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195181 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190678.P2340882417717584360

namespace A190678

/-- `eq[1, A049347(A195181(n)+1)]` -/
def P2340882417717584360.Spec : Prop :=
  ∀ n, (P2340882417717584360.a n : ℤ) = A190678 (n + 1)

end A190678

/-! ## A190678.P4750651028603349186

`eq[2, A100063(A195181(n)+1)]`
-/

namespace A190678.P4750651028603349186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A195181 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190678.P4750651028603349186

namespace A190678

/-- `eq[2, A100063(A195181(n)+1)]` -/
def P4750651028603349186.Spec : Prop :=
  ∀ n, (P4750651028603349186.a n : ℤ) = A190678 (n + 1)

end A190678

/-! ## A190678.P8942070017785262425

`eq[A000038(n), A049347(A195181(n))]`
-/

namespace A190678.P8942070017785262425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190678.P8942070017785262425

namespace A190678

/-- `eq[A000038(n), A049347(A195181(n))]` -/
def P8942070017785262425.Spec : Prop :=
  ∀ n, (P8942070017785262425.a n : ℤ) = A190678 (n + 1)

end A190678

/-! ## A190678.P13634679003684070026

`eq[A008611(A195181(n)), A195120(n)]`
-/

namespace A190678.P13634679003684070026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A195181 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190678.P13634679003684070026

namespace A190678

/-- `eq[A008611(A195181(n)), A195120(n)]` -/
def P13634679003684070026.Spec : Prop :=
  ∀ n, (P13634679003684070026.a n : ℤ) = A190678 (n + 1)

end A190678

/-! ## A190678.P2697119041274948542

`eq[3, (A195181(n)+1)/A195120(n+1)]`
-/

namespace A190678.P2697119041274948542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195181 n + 1 : ℚ) / (A195120 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A190678.P2697119041274948542

namespace A190678

/-- `eq[3, (A195181(n)+1)/A195120(n+1)]` -/
def P2697119041274948542.Spec : Prop :=
  ∀ n, (P2697119041274948542.a n : ℤ) = A190678 (n + 1)

end A190678

/-! ## A190678.P6052525231882205322

`eq[3, gcd(3, A080590(3*n+1))]`
-/

namespace A190678.P6052525231882205322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A080590 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190678.P6052525231882205322

namespace A190678

/-- `eq[3, gcd(3, A080590(3*n+1))]` -/
def P6052525231882205322.Spec : Prop :=
  ∀ n, (P6052525231882205322.a n : ℤ) = A190678 (n + 1)

end A190678

/-!
# A190679: Positions of 2 in A190676.

The programs for A190679, the canonical program `A190679.P9748131196586807457` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190679 has offset 1).

The definition of A190679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190679.P9748131196586807457

`eq[2, floor(n*sqrt(27))%3]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190679

/-- `eq[2, floor(n*sqrt(27))%3]` -/
def P9748131196586807457.Spec : Prop :=
  ∀ n, (P9748131196586807457.a n : ℤ) = A190679 (n + 1)

theorem P9748131196586807457.correct : P9748131196586807457.Spec := by
  intro n
  simp only [A190679, Nat.add_sub_cancel]

end A190679

/-! ## A190679.P7307940190175391016

`lt[1, A190676(n+1)]+1`
-/

namespace A190679.P7307940190175391016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190679.P7307940190175391016

namespace A190679

/-- `lt[1, A190676(n+1)]+1` -/
def P7307940190175391016.Spec : Prop :=
  ∀ n, (P7307940190175391016.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P14353822446405897591

`eq[0, A089598(A195181(n))]`
-/

namespace A190679.P14353822446405897591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A195181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190679.P14353822446405897591

namespace A190679

/-- `eq[0, A089598(A195181(n))]` -/
def P14353822446405897591.Spec : Prop :=
  ∀ n, (P14353822446405897591.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P4402088333260329012

`eq[0, A010892(A195181(n)+1)]`
-/

namespace A190679.P4402088333260329012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A195181 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190679.P4402088333260329012

namespace A190679

/-- `eq[0, A010892(A195181(n)+1)]` -/
def P4402088333260329012.Spec : Prop :=
  ∀ n, (P4402088333260329012.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P2830435201068214883

`eq[1, A049347(A195181(n)+2)]`
-/

namespace A190679.P2830435201068214883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195181 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190679.P2830435201068214883

namespace A190679

/-- `eq[1, A049347(A195181(n)+2)]` -/
def P2830435201068214883.Spec : Prop :=
  ∀ n, (P2830435201068214883.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P5988223577949907228

`eq[2, A100063(A195181(n)+2)]`
-/

namespace A190679.P5988223577949907228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A195181 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190679.P5988223577949907228

namespace A190679

/-- `eq[2, A100063(A195181(n)+2)]` -/
def P5988223577949907228.Spec : Prop :=
  ∀ n, (P5988223577949907228.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P6807049163675034772

`eq[3, (A195181(n)+2)/A195120(n+1)]`
-/

namespace A190679.P6807049163675034772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195181 n + 2 : ℚ) / (A195120 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A190679.P6807049163675034772

namespace A190679

/-- `eq[3, (A195181(n)+2)/A195120(n+1)]` -/
def P6807049163675034772.Spec : Prop :=
  ∀ n, (P6807049163675034772.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P3081599747923362088

`eq[A008611(A195181(n))+1, A195120(n)]`
-/

namespace A190679.P3081599747923362088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A195181 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190679.P3081599747923362088

namespace A190679

/-- `eq[A008611(A195181(n))+1, A195120(n)]` -/
def P3081599747923362088.Spec : Prop :=
  ∀ n, (P3081599747923362088.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P16026011216132367986

`eq[A000038(n), A049347(2*A195181(n))]`
-/

namespace A190679.P16026011216132367986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * A195181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190679.P16026011216132367986

namespace A190679

/-- `eq[A000038(n), A049347(2*A195181(n))]` -/
def P16026011216132367986.Spec : Prop :=
  ∀ n, (P16026011216132367986.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P627664435220881132

`eq[A198081(3*n)%3, floor(acot(n))]`
-/

namespace A190679.P627664435220881132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (3 * n)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190679.P627664435220881132

namespace A190679

/-- `eq[A198081(3*n)%3, floor(acot(n))]` -/
def P627664435220881132.Spec : Prop :=
  ∀ n, (P627664435220881132.a n : ℤ) = A190679 (n + 1)

end A190679

/-! ## A190679.P3902032035425754285

`eq[A198081(3*n)%3, A000007(n)]`
-/

namespace A190679.P3902032035425754285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (3 * n)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190679.P3902032035425754285

namespace A190679

/-- `eq[A198081(3*n)%3, A000007(n)]` -/
def P3902032035425754285.Spec : Prop :=
  ∀ n, (P3902032035425754285.a n : ℤ) = A190679 (n + 1)

end A190679

/-!
# A190681: Number of partitions of 10^n into 2 composite relatively prime parts.

The programs for A190681, there is no canonical definition to state claims against.
-/

/-! ## A190681.P4545927049224191455

`A141097(A093143(n))`
-/

namespace A190681.P4545927049224191455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (A093143 n).toNat

end

end A190681.P4545927049224191455

/-!
# A190682: Squares whose squares contain every digit at least once.

The programs for A190682, there is no canonical definition to state claims against.
-/

/-! ## A190682.P12507589385024470488

`A121321(n+1)²`
-/

namespace A190682.P12507589385024470488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121321 (n + 1) ^ 2

end

end A190682.P12507589385024470488

/-! ## A190682.P80591361267596583

`A121321(2*(n+1)-(n+1))^2`
-/

namespace A190682.P80591361267596583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121321 (2 * (n + 1) - (n + 1)) ^ 2

end

end A190682.P80591361267596583

/-! ## A190682.P8366525479437613513

`(-A121321(n+1))^A020639(A020744(n))`
-/

namespace A190682.P8366525479437613513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A121321 (n + 1) : ℚ) ^ (A020639 (A020744 n).toNat : ℤ)

end

end A190682.P8366525479437613513

/-! ## A190682.P12299607038025624578

`A121321(A000027(n+1))*A121321(n+1)`
-/

namespace A190682.P12299607038025624578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121321 (A000027 (n + 1)).toNat * A121321 (n + 1)

end

end A190682.P12299607038025624578

/-! ## A190682.P6992138131063328910

`A121321(n+1)*A121321(A016825(n)/2-n)`
-/

namespace A190682.P6992138131063328910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121321 (n + 1) * A121321 (SequenceMachineLib.roundAway ((A016825 n : ℚ) / 2 - (n : ℚ))).toNat

end

end A190682.P6992138131063328910

/-! ## A190682.P16336261748856245718

`A121321(n+1)%A054038(n+1)*A121321(n+1)`
-/

namespace A190682.P16336261748856245718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121321 (n + 1)) (A054038 (n + 1)) * A121321 (n + 1)

end

end A190682.P16336261748856245718

/-! ## A190682.P4927975747632011859

`A000463(2*A121321(n+1))`
-/

namespace A190682.P4927975747632011859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A121321 (n + 1)).toNat

end

end A190682.P4927975747632011859

/-!
# A190683: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,1) and [ ]=floor.

The programs for A190683, the canonical program `A190683.P16248676480014471006` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190683 has offset 1).

The definition of A190683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190683.P10287276662051114372

`A190676(n+1)+A188068(A016777(n+1))`
-/

namespace A190683.P10287276662051114372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (n + 1) + A188068 (A016777 (n + 1)).toNat

end

end A190683.P10287276662051114372

namespace A190683

/-- `A190676(n+1)+A188068(A016777(n+1))` -/
def P10287276662051114372.Spec : Prop :=
  ∀ n, P10287276662051114372.a n = A190683 (n + 1)

end A190683

/-! ## A190683.P16248676480014471006

`A003512(A016777(n+1))%A188069(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190683

/-- `A003512(A016777(n+1))%A188069(n+2)` -/
def P16248676480014471006.Spec : Prop :=
  ∀ n, P16248676480014471006.a n = A190683 (n + 1)

theorem P16248676480014471006.correct : P16248676480014471006.Spec := by
  intro n
  simp only [A190683, Nat.add_sub_cancel]

end A190683

/-! ## A190683.P17257822677340905800

`A022838(A016777(n+1))-A016777(A022838(n+1))`
-/

namespace A190683.P17257822677340905800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A016777 (n + 1)).toNat - A016777 (A022838 (n + 1)).toNat

end

end A190683.P17257822677340905800

namespace A190683

/-- `A022838(A016777(n+1))-A016777(A022838(n+1))` -/
def P17257822677340905800.Spec : Prop :=
  ∀ n, P17257822677340905800.a n = A190683 (n + 1)

end A190683

/-! ## A190683.P5470695743452019573

`A016777(A195120(n+1))-A195120(A016777(n+1))`
-/

namespace A190683.P5470695743452019573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A195120 (n + 1)).toNat - A195120 (A016777 (n + 1)).toNat

end

end A190683.P5470695743452019573

namespace A190683

/-- `A016777(A195120(n+1))-A195120(A016777(n+1))` -/
def P5470695743452019573.Spec : Prop :=
  ∀ n, P5470695743452019573.a n = A190683 (n + 1)

end A190683

/-! ## A190683.P4951224035975390463

`A010873(A180123(n+1)+A080590(3*n+5))`
-/

namespace A190683.P4951224035975390463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A180123 (n + 1) + A080590 (3 * n + 5)).toNat

end

end A190683.P4951224035975390463

namespace A190683

/-- `A010873(A180123(n+1)+A080590(3*n+5))` -/
def P4951224035975390463.Spec : Prop :=
  ∀ n, P4951224035975390463.a n = A190683 (n + 1)

end A190683

/-!
# A190684: Positions of 0 in A190683.

The programs for A190684, the canonical program `A190684.P7022410837627210472` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190684 has offset 1).

The definition of A190684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190684.P7022410837627210472

`A003512(A190677(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190684

/-- `A003512(A190677(n+1))` -/
def P7022410837627210472.Spec : Prop :=
  ∀ n, P7022410837627210472.a n = A190684 (n + 1)

theorem P7022410837627210472.correct : P7022410837627210472.Spec := by
  intro n
  simp only [A190684, Nat.add_sub_cancel]

end A190684

/-! ## A190684.P13572628952498987780

`A186328(2*A190677(n+1))`
-/

namespace A190684.P13572628952498987780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186328 (2 * A190677 (n + 1)).toNat

end

end A190684.P13572628952498987780

namespace A190684

/-- `A186328(2*A190677(n+1))` -/
def P13572628952498987780.Spec : Prop :=
  ∀ n, P13572628952498987780.a n = A190684 (n + 1)

end A190684

/-! ## A190684.P1435458066292159075

`A054406(2*A190677(n+1))-A190677(n+1)`
-/

namespace A190684.P1435458066292159075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * A190677 (n + 1)).toNat - A190677 (n + 1)

end

end A190684.P1435458066292159075

namespace A190684

/-- `A054406(2*A190677(n+1))-A190677(n+1)` -/
def P1435458066292159075.Spec : Prop :=
  ∀ n, P1435458066292159075.a n = A190684 (n + 1)

end A190684

/-! ## A190684.P17792690730396211890

`eq[0, A190683(A028310(n))]`
-/

namespace A190684.P17792690730396211890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190684.P17792690730396211890

namespace A190684

/-- `eq[0, A190683(A028310(n))]` -/
def P17792690730396211890.Spec : Prop :=
  ∀ n, (P17792690730396211890.a n : ℤ) = A190684 (n + 1)

end A190684

/-! ## A190684.P3652680669839451132

`A020725(eq[1, A190683(n+1)+1])`
-/

namespace A190684.P3652680669839451132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190684.P3652680669839451132

namespace A190684

/-- `A020725(eq[1, A190683(n+1)+1])` -/
def P3652680669839451132.Spec : Prop :=
  ∀ n, P3652680669839451132.a n = A190684 (n + 1)

end A190684

/-! ## A190684.P13955515555021870106

`A065475(eq[1, A190683(n+1)+1])`
-/

namespace A190684.P13955515555021870106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190684.P13955515555021870106

namespace A190684

/-- `A065475(eq[1, A190683(n+1)+1])` -/
def P13955515555021870106.Spec : Prop :=
  ∀ n, P13955515555021870106.a n = A190684 (n + 1)

end A190684

/-! ## A190684.P18036194029329799293

`eq[A000007(n), A190683(n+1)]+1`
-/

namespace A190684.P18036194029329799293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190684.P18036194029329799293

namespace A190684

/-- `eq[A000007(n), A190683(n+1)]+1` -/
def P18036194029329799293.Spec : Prop :=
  ∀ n, (P18036194029329799293.a n : ℤ) = A190684 (n + 1)

end A190684

/-! ## A190684.P12020592323986805787

`eq[A000007(n), A190683(A000007(n)+n)]`
-/

namespace A190684.P12020592323986805787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190684.P12020592323986805787

namespace A190684

/-- `eq[A000007(n), A190683(A000007(n)+n)]` -/
def P12020592323986805787.Spec : Prop :=
  ∀ n, (P12020592323986805787.a n : ℤ) = A190684 (n + 1)

end A190684

/-! ## A190684.P16019249808359751744

`lt[A188068(3*n+1), A275855(n+1)]`
-/

namespace A190684.P16019249808359751744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190684.P16019249808359751744

namespace A190684

/-- `lt[A188068(3*n+1), A275855(n+1)]` -/
def P16019249808359751744.Spec : Prop :=
  ∀ n, (P16019249808359751744.a n : ℤ) = A190684 (n + 1)

end A190684

/-! ## A190684.P5730681944066615986

`eq[log2(A007538(3*n+1)), A275855(n+1)]`
-/

namespace A190684.P5730681944066615986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007538 (3 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A190684.P5730681944066615986

namespace A190684

/-- `eq[log2(A007538(3*n+1)), A275855(n+1)]` -/
def P5730681944066615986.Spec : Prop :=
  ∀ n, (P5730681944066615986.a n : ℤ) = A190684 (n + 1)

end A190684

/-! ## A190684.P10040426294194202351

`lt[acot(A275855(3*n+1)), A275855(n+1)]`
-/

namespace A190684.P10040426294194202351
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A275855 (3 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A190684.P10040426294194202351

namespace A190684

/-- `lt[acot(A275855(3*n+1)), A275855(n+1)]` -/
def P10040426294194202351.Spec : Prop :=
  ∀ n, (P10040426294194202351.a n : ℤ) = A190684 (n + 1)

end A190684

/-! ## A190684.P687658097870647939

`eq[A080757(A008486(n))², A080757(n)]`
-/

namespace A190684.P687658097870647939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A008486 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190684.P687658097870647939

namespace A190684

/-- `eq[A080757(A008486(n))², A080757(n)]` -/
def P687658097870647939.Spec : Prop :=
  ∀ n, (P687658097870647939.a n : ℤ) = A190684 (n + 1)

end A190684

/-! ## A190684.P3945422092544188170

`eq[A080757(A008486(n)), A275855(n+1)]`
-/

namespace A190684.P3945422092544188170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190684.P3945422092544188170

namespace A190684

/-- `eq[A080757(A008486(n)), A275855(n+1)]` -/
def P3945422092544188170.Spec : Prop :=
  ∀ n, (P3945422092544188170.a n : ℤ) = A190684 (n + 1)

end A190684

/-!
# A190685: Positions of 1 in A190683.

The programs for A190685, the canonical program `A190685.P3435241801983605835` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190685 has offset 1).

The definition of A190685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190685.P3435241801983605835

`eq[1, A190683(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190685

/-- `eq[1, A190683(n+1)]+1` -/
def P3435241801983605835.Spec : Prop :=
  ∀ n, (P3435241801983605835.a n : ℤ) = A190685 (n + 1)

theorem P3435241801983605835.correct : P3435241801983605835.Spec := by
  intro n
  simp only [A190685, Nat.add_sub_cancel]

end A190685

/-! ## A190685.P6528685617126524313

`eq[1, A190683(A028310(n))]`
-/

namespace A190685.P6528685617126524313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190685.P6528685617126524313

namespace A190685

/-- `eq[1, A190683(A028310(n))]` -/
def P6528685617126524313.Spec : Prop :=
  ∀ n, (P6528685617126524313.a n : ℤ) = A190685 (n + 1)

end A190685

/-! ## A190685.P4879021963985434386

`A020725(eq[1, A190683(n+1)])`
-/

namespace A190685.P4879021963985434386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190685.P4879021963985434386

namespace A190685

/-- `A020725(eq[1, A190683(n+1)])` -/
def P4879021963985434386.Spec : Prop :=
  ∀ n, P4879021963985434386.a n = A190685 (n + 1)

end A190685

/-! ## A190685.P15554701915152391159

`A065475(eq[1, A190683(n+1)])`
-/

namespace A190685.P15554701915152391159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190685.P15554701915152391159

namespace A190685

/-- `A065475(eq[1, A190683(n+1)])` -/
def P15554701915152391159.Spec : Prop :=
  ∀ n, P15554701915152391159.a n = A190685 (n + 1)

end A190685

/-! ## A190685.P5760969310726848652

`eq[1, A190683(A000007(n)+n)]`
-/

namespace A190685.P5760969310726848652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190685.P5760969310726848652

namespace A190685

/-- `eq[1, A190683(A000007(n)+n)]` -/
def P5760969310726848652.Spec : Prop :=
  ∀ n, (P5760969310726848652.a n : ℤ) = A190685 (n + 1)

end A190685

/-! ## A190685.P9687199790055149320

`eq[0, A198081(3*n+1)%3]`
-/

namespace A190685.P9687199790055149320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190685.P9687199790055149320

namespace A190685

/-- `eq[0, A198081(3*n+1)%3]` -/
def P9687199790055149320.Spec : Prop :=
  ∀ n, (P9687199790055149320.a n : ℤ) = A190685 (n + 1)

end A190685

/-! ## A190685.P13659723371432999335

`eq[0, A164616(A215781(3*n+1))]`
-/

namespace A190685.P13659723371432999335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164616 (A215781 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190685.P13659723371432999335

namespace A190685

/-- `eq[0, A164616(A215781(3*n+1))]` -/
def P13659723371432999335.Spec : Prop :=
  ∀ n, (P13659723371432999335.a n : ℤ) = A190685 (n + 1)

end A190685

/-! ## A190685.P10869039487233347582

`eq[0, A010892(A022838(3*n+1))]`
-/

namespace A190685.P10869039487233347582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A022838 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190685.P10869039487233347582

namespace A190685

/-- `eq[0, A010892(A022838(3*n+1))]` -/
def P10869039487233347582.Spec : Prop :=
  ∀ n, (P10869039487233347582.a n : ℤ) = A190685 (n + 1)

end A190685

/-! ## A190685.P14186814607661474361

`eq[1, A190683(A233583(n+1))]`
-/

namespace A190685.P14186814607661474361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190685.P14186814607661474361

namespace A190685

/-- `eq[1, A190683(A233583(n+1))]` -/
def P14186814607661474361.Spec : Prop :=
  ∀ n, (P14186814607661474361.a n : ℤ) = A190685 (n + 1)

end A190685

/-!
# A190686: Positions of 2 in A190683.

The programs for A190686, the canonical program `A190686.P6524750200931184886` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190686 has offset 1).

The definition of A190686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190686.P6524750200931184886

`eq[2, A190683(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190686

/-- `eq[2, A190683(n+1)]+1` -/
def P6524750200931184886.Spec : Prop :=
  ∀ n, (P6524750200931184886.a n : ℤ) = A190686 (n + 1)

theorem P6524750200931184886.correct : P6524750200931184886.Spec := by
  intro n
  simp only [A190686, Nat.add_sub_cancel]

end A190686

/-! ## A190686.P4390807629433206484

`lt[A083054(3*n+1), 1]`
-/

namespace A190686.P4390807629433206484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190686.P4390807629433206484

namespace A190686

/-- `lt[A083054(3*n+1), 1]` -/
def P4390807629433206484.Spec : Prop :=
  ∀ n, (P4390807629433206484.a n : ℤ) = A190686 (n + 1)

end A190686

/-! ## A190686.P18026727306789757987

`eq[1, A198081(3*n+1)%3]`
-/

namespace A190686.P18026727306789757987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190686.P18026727306789757987

namespace A190686

/-- `eq[1, A198081(3*n+1)%3]` -/
def P18026727306789757987.Spec : Prop :=
  ∀ n, (P18026727306789757987.a n : ℤ) = A190686 (n + 1)

end A190686

/-! ## A190686.P5471459941188930482

`eq[2, A321090(A215781(3*n+1))]`
-/

namespace A190686.P5471459941188930482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A215781 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190686.P5471459941188930482

namespace A190686

/-- `eq[2, A321090(A215781(3*n+1))]` -/
def P5471459941188930482.Spec : Prop :=
  ∀ n, (P5471459941188930482.a n : ℤ) = A190686 (n + 1)

end A190686

/-! ## A190686.P6852289520931291029

`eq[1, A276204(A195120(A016777(n)))]`
-/

namespace A190686.P6852289520931291029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 (A195120 (A016777 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190686.P6852289520931291029

namespace A190686

/-- `eq[1, A276204(A195120(A016777(n)))]` -/
def P6852289520931291029.Spec : Prop :=
  ∀ n, (P6852289520931291029.a n : ℤ) = A190686 (n + 1)

end A190686

/-! ## A190686.P10017700110446542513

`eq[2, A100063(A022838(3*n+1))]`
-/

namespace A190686.P10017700110446542513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A022838 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190686.P10017700110446542513

namespace A190686

/-- `eq[2, A100063(A022838(3*n+1))]` -/
def P10017700110446542513.Spec : Prop :=
  ∀ n, (P10017700110446542513.a n : ℤ) = A190686 (n + 1)

end A190686

/-!
# A190687: Positions of 3 in A190683.

The programs for A190687, the canonical program `A190687.P16692059419886149605` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190687 has offset 1).

The definition of A190687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190687.P16692059419886149605

`eq[3, A190683(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190687

/-- `eq[3, A190683(n+1)]+1` -/
def P16692059419886149605.Spec : Prop :=
  ∀ n, (P16692059419886149605.a n : ℤ) = A190687 (n + 1)

theorem P16692059419886149605.correct : P16692059419886149605.Spec := by
  intro n
  simp only [A190687, Nat.add_sub_cancel]

end A190687

/-! ## A190687.P16386917390887272333

`eq[3, A190683(A028310(n))]`
-/

namespace A190687.P16386917390887272333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190687.P16386917390887272333

namespace A190687

/-- `eq[3, A190683(A028310(n))]` -/
def P16386917390887272333.Spec : Prop :=
  ∀ n, (P16386917390887272333.a n : ℤ) = A190687 (n + 1)

end A190687

/-! ## A190687.P8572685961772382670

`A020725(eq[3, A190683(n+1)])`
-/

namespace A190687.P8572685961772382670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190687.P8572685961772382670

namespace A190687

/-- `A020725(eq[3, A190683(n+1)])` -/
def P8572685961772382670.Spec : Prop :=
  ∀ n, P8572685961772382670.a n = A190687 (n + 1)

end A190687

/-! ## A190687.P11899359907807932762

`A065475(eq[3, A190683(n+1)])`
-/

namespace A190687.P11899359907807932762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190687.P11899359907807932762

namespace A190687

/-- `A065475(eq[3, A190683(n+1)])` -/
def P11899359907807932762.Spec : Prop :=
  ∀ n, P11899359907807932762.a n = A190687 (n + 1)

end A190687

/-! ## A190687.P9053948047871909347

`eq[3, A190683(A000007(n)+n)]`
-/

namespace A190687.P9053948047871909347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190687.P9053948047871909347

namespace A190687

/-- `eq[3, A190683(A000007(n)+n)]` -/
def P9053948047871909347.Spec : Prop :=
  ∀ n, (P9053948047871909347.a n : ℤ) = A190687 (n + 1)

end A190687

/-! ## A190687.P4717580096396560267

`eq[3, A190683(A233583(n+1))]`
-/

namespace A190687.P4717580096396560267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190687.P4717580096396560267

namespace A190687

/-- `eq[3, A190683(A233583(n+1))]` -/
def P4717580096396560267.Spec : Prop :=
  ∀ n, (P4717580096396560267.a n : ℤ) = A190687 (n + 1)

end A190687

/-!
# A190688: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,2) and [ ]=floor.

The programs for A190688, there is no canonical definition to state claims against.
-/

/-! ## A190688.P16947510407198539884

`A247973(floor((sqrt(3)+2)*(n+1)))%4`
-/

namespace A190688.P16947510407198539884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247973 ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋.toNat) 4

end

end A190688.P16947510407198539884

/-! ## A190688.P17247236881373508437

`and(3, A247973(A003512(n+1)))`
-/

namespace A190688.P17247236881373508437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A247973 (A003512 (n + 1)).toNat)

end

end A190688.P17247236881373508437

/-! ## A190688.P1675006600878949880

`A190770(or(22, A007088(n)))`
-/

namespace A190688.P1675006600878949880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190770 (Int.lor 22 (A007088 n)).toNat

end

end A190688.P1675006600878949880

/-!
# A190689: Positions of 0 in A190688.

The programs for A190689, there is no canonical definition to state claims against.
-/

/-! ## A190689.P9231877619796425518

`eq[0, A190688(n+1)]+1`
-/

namespace A190689.P9231877619796425518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190689.P9231877619796425518

/-! ## A190689.P12366640520266595864

`eq[0, A190688(A028310(n))]`
-/

namespace A190689.P12366640520266595864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190689.P12366640520266595864

/-! ## A190689.P6523507148641748140

`A153152(eq[0, A190688(n+1)])`
-/

namespace A190689.P6523507148641748140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190689.P6523507148641748140

/-! ## A190689.P1887254740605835901

`eq[0, A190688(A000007(n)+n)]`
-/

namespace A190689.P1887254740605835901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190689.P1887254740605835901

/-! ## A190689.P17403135218598914298

`eq[0, A190688(A065033(2*n))]`
-/

namespace A190689.P17403135218598914298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190689.P17403135218598914298

/-! ## A190689.P9420087918980486507

`eq[0, A190688(A123108(2*n))]`
-/

namespace A190689.P9420087918980486507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190689.P9420087918980486507

/-! ## A190689.P12511052209550911556

`eq[1, A190688(A080590(n+1))]`
-/

namespace A190689.P12511052209550911556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A080590 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190689.P12511052209550911556

/-! ## A190689.P5317625135657323401

`eq[0, A190688(A233583(n+1))]`
-/

namespace A190689.P5317625135657323401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190689.P5317625135657323401

/-!
# A190690: Positions of 1 in A190688.

The programs for A190690, there is no canonical definition to state claims against.
-/

/-! ## A190690.P15524525755094697458

`eq[1, A190688(n+1)]+1`
-/

namespace A190690.P15524525755094697458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190690.P15524525755094697458

/-! ## A190690.P14121874285529580163

`eq[1, A190688(A028310(n))]`
-/

namespace A190690.P14121874285529580163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P14121874285529580163

/-! ## A190690.P11255265667992059766

`eq[1, A190688(A000007(n)+n)]`
-/

namespace A190690.P11255265667992059766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P11255265667992059766

/-! ## A190690.P7410670331071417494

`eq[1, A190688(A065033(2*n))]`
-/

namespace A190690.P7410670331071417494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P7410670331071417494

/-! ## A190690.P4292349628610924544

`eq[1, A190688(A123108(2*n))]`
-/

namespace A190690.P4292349628610924544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P4292349628610924544

/-! ## A190690.P3171026748617663020

`eq[1, A080590(3*(n+1))%3]`
-/

namespace A190690.P3171026748617663020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080590 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P3171026748617663020

/-! ## A190690.P14147555880871404802

`eq[1, A180123(3*n+2)%3]`
-/

namespace A190690.P14147555880871404802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180123 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P14147555880871404802

/-! ## A190690.P1236844308435077354

`eq[2, A180122(3*n+2)%3]`
-/

namespace A190690.P1236844308435077354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180122 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P1236844308435077354

/-! ## A190690.P9847313710983486561

`eq[2, A198081(3*n+2)%3]`
-/

namespace A190690.P9847313710983486561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P9847313710983486561

/-! ## A190690.P2049603799811438632

`eq[1, A049347(A195120(3*n+2))]`
-/

namespace A190690.P2049603799811438632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195120 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190690.P2049603799811438632

/-!
# A190691: Positions of 2 in A190688.

The programs for A190691, there is no canonical definition to state claims against.
-/

/-! ## A190691.P3404729131350939096

`eq[2, A190688(n+1)]+1`
-/

namespace A190691.P3404729131350939096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190691.P3404729131350939096

/-! ## A190691.P10641117785762385028

`eq[0, A180122(3*n+2)%3]`
-/

namespace A190691.P10641117785762385028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180122 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190691.P10641117785762385028

/-! ## A190691.P2197043222056695442

`eq[2, A080590(3*(n+1))%3]`
-/

namespace A190691.P2197043222056695442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080590 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190691.P2197043222056695442

/-! ## A190691.P3839498583822623462

`eq[2, A180123(3*n+2)%3]`
-/

namespace A190691.P3839498583822623462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180123 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190691.P3839498583822623462

/-! ## A190691.P13309026623600595381

`eq[3, gcd(3, A198081(3*n+2))]`
-/

namespace A190691.P13309026623600595381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A198081 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190691.P13309026623600595381

/-! ## A190691.P4685294496990207408

`eq[0, A049347(A195120(3*n+2))]`
-/

namespace A190691.P4685294496990207408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195120 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190691.P4685294496990207408

/-! ## A190691.P6713014891188754150

`eq[A014682(A195120(2*n)), A195120(3*n+2)]`
-/

namespace A190691.P6713014891188754150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A195120 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190691.P6713014891188754150

/-! ## A190691.P10015350361861324799

`eq[A000007(n), A184334(A180122(3*n+2))]`
-/

namespace A190691.P10015350361861324799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184334 (A180122 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190691.P10015350361861324799

/-!
# A190692: Positions of 3 in A190688.

The programs for A190692, the canonical program `A190692.P17579498809585757927` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190692 has offset 1).

The definition of A190692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190692.P485305419002525758

`eq[3, A190688(A028310(n))]`
-/

namespace A190692.P485305419002525758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190692.P485305419002525758

namespace A190692

/-- `eq[3, A190688(A028310(n))]` -/
def P485305419002525758.Spec : Prop :=
  ∀ n, (P485305419002525758.a n : ℤ) = A190692 (n + 1)

end A190692

/-! ## A190692.P2424508718201463626

`A054086(record[A026255(3*(n+1))])`
-/

namespace A190692.P2424508718201463626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054086 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190692.P2424508718201463626

namespace A190692

/-- `A054086(record[A026255(3*(n+1))])` -/
def P2424508718201463626.Spec : Prop :=
  ∀ n, P2424508718201463626.a n = A190692 (n + 1)

end A190692

/-! ## A190692.P17579498809585757927

`eq[A024548(A022838(n+1)), A327180(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190692

/-- `eq[A024548(A022838(n+1)), A327180(n)]` -/
def P17579498809585757927.Spec : Prop :=
  ∀ n, (P17579498809585757927.a n : ℤ) = A190692 (n + 1)

theorem P17579498809585757927.correct : P17579498809585757927.Spec := by
  intro n
  simp only [A190692, Nat.add_sub_cancel]

end A190692

/-! ## A190692.P10979098636273634099

`eq[A024548(A144077(n+1)), A327180(n)]`
-/

namespace A190692.P10979098636273634099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (A144077 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190692.P10979098636273634099

namespace A190692

/-- `eq[A024548(A144077(n+1)), A327180(n)]` -/
def P10979098636273634099.Spec : Prop :=
  ∀ n, (P10979098636273634099.a n : ℤ) = A190692 (n + 1)

end A190692

/-! ## A190692.P15680806715879064649

`eq[A188068(n+1), A285684(A016789(n))]`
-/

namespace A190692.P15680806715879064649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285684 (A016789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190692.P15680806715879064649

namespace A190692

/-- `eq[A188068(n+1), A285684(A016789(n))]` -/
def P15680806715879064649.Spec : Prop :=
  ∀ n, (P15680806715879064649.a n : ℤ) = A190692 (n + 1)

end A190692

/-! ## A190692.P9150058301894729370

`eq[1, A190688(A233583(n+1))-2]`
-/

namespace A190692.P9150058301894729370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190688 (A233583 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190692.P9150058301894729370

namespace A190692

/-- `eq[1, A190688(A233583(n+1))-2]` -/
def P9150058301894729370.Spec : Prop :=
  ∀ n, (P9150058301894729370.a n : ℤ) = A190692 (n + 1)

end A190692

/-!
# A190693: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,0) and [ ]=floor.

The programs for A190693, the canonical program `A190693.P18273087012902611684` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190693 has offset 1).

The definition of A190693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190693.P18273087012902611684

`floor((n+1)*sqrt(48))%4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190693

/-- `floor((n+1)*sqrt(48))%4` -/
def P18273087012902611684.Spec : Prop :=
  ∀ n, P18273087012902611684.a n = A190693 (n + 1)

theorem P18273087012902611684.correct : P18273087012902611684.Spec := by
  intro n
  simp only [A190693, Nat.add_sub_cancel]

end A190693

/-! ## A190693.P16437407863174588925

`and(3, floor((n+1)*sqrt(48)))`
-/

namespace A190693.P16437407863174588925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌊(n + 1 : ℝ) * Real.sqrt (48 : ℝ)⌋

end

end A190693.P16437407863174588925

namespace A190693

/-- `and(3, floor((n+1)*sqrt(48)))` -/
def P16437407863174588925.Spec : Prop :=
  ∀ n, P16437407863174588925.a n = A190693 (n + 1)

end A190693

/-! ## A190693.P10524355903301854777

`floor((4*n+2)/A024547(n+1))`
-/

namespace A190693.P10524355903301854777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * n + 2 : ℚ) / (A024547 (n + 1) : ℚ)⌋

end

end A190693.P10524355903301854777

namespace A190693

/-- `floor((4*n+2)/A024547(n+1))` -/
def P10524355903301854777.Spec : Prop :=
  ∀ n, P10524355903301854777.a n = A190693 (n + 1)

end A190693

/-! ## A190693.P18123372858852318292

`dr(A194028(2*(n+1))%4)`
-/

namespace A190693.P18123372858852318292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A194028 (2 * (n + 1))) 4)

end

end A190693.P18123372858852318292

namespace A190693

/-- `dr(A194028(2*(n+1))%4)` -/
def P18123372858852318292.Spec : Prop :=
  ∀ n, (P18123372858852318292.a n : ℤ) = A190693 (n + 1)

end A190693

/-! ## A190693.P13740738637363870952

`A010873(A194028(2*(n+1)))`
-/

namespace A190693.P13740738637363870952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A194028 (2 * (n + 1))).toNat

end

end A190693.P13740738637363870952

namespace A190693

/-- `A010873(A194028(2*(n+1)))` -/
def P13740738637363870952.Spec : Prop :=
  ∀ n, P13740738637363870952.a n = A190693 (n + 1)

end A190693

/-! ## A190693.P10037127273473190558

`A190669(2*(n+1))+2*A190669(n+1)`
-/

namespace A190693.P10037127273473190558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190669 (2 * (n + 1)) + 2 * A190669 (n + 1)

end

end A190693.P10037127273473190558

namespace A190693

/-- `A190669(2*(n+1))+2*A190669(n+1)` -/
def P10037127273473190558.Spec : Prop :=
  ∀ n, P10037127273473190558.a n = A190693 (n + 1)

end A190693

/-! ## A190693.P11694130441873335540

`A008574(A195120(n+1))-A195120(A008574(n+1))`
-/

namespace A190693.P11694130441873335540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A195120 (n + 1)).toNat - A195120 (A008574 (n + 1)).toNat

end

end A190693.P11694130441873335540

namespace A190693

/-- `A008574(A195120(n+1))-A195120(A008574(n+1))` -/
def P11694130441873335540.Spec : Prop :=
  ∀ n, P11694130441873335540.a n = A190693 (n + 1)

end A190693

/-!
# A190694: Positions of 0 in A190693.

The programs for A190694, the canonical program `A190694.P15947102220208234512` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190694 has offset 1).

The definition of A190694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190694.P451218402490645989

`eq[0, A190693(n+1)]+1`
-/

namespace A190694.P451218402490645989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190694.P451218402490645989

namespace A190694

/-- `eq[0, A190693(n+1)]+1` -/
def P451218402490645989.Spec : Prop :=
  ∀ n, (P451218402490645989.a n : ℤ) = A190694 (n + 1)

end A190694

/-! ## A190694.P9841008083311919030

`lt[3, A024548(n+1)]+1`
-/

namespace A190694.P9841008083311919030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190694.P9841008083311919030

namespace A190694

/-- `lt[3, A024548(n+1)]+1` -/
def P9841008083311919030.Spec : Prop :=
  ∀ n, (P9841008083311919030.a n : ℤ) = A190694 (n + 1)

end A190694

/-! ## A190694.P7775889364938208857

`eq[1, A190693(A028310(n))+1]`
-/

namespace A190694.P7775889364938208857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190694.P7775889364938208857

namespace A190694

/-- `eq[1, A190693(A028310(n))+1]` -/
def P7775889364938208857.Spec : Prop :=
  ∀ n, (P7775889364938208857.a n : ℤ) = A190694 (n + 1)

end A190694

/-! ## A190694.P15947102220208234512

`eq[1, xor(A198268(n), A198269(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190694

/-- `eq[1, xor(A198268(n), A198269(n))]` -/
def P15947102220208234512.Spec : Prop :=
  ∀ n, (P15947102220208234512.a n : ℤ) = A190694 (n + 1)

theorem P15947102220208234512.correct : P15947102220208234512.Spec := by
  intro n
  simp only [A190694, Nat.add_sub_cancel]

end A190694

/-! ## A190694.P12444403691599265131

`lt[A014682(A198268(n)), A198081(n)]`
-/

namespace A190694.P12444403691599265131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198268 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190694.P12444403691599265131

namespace A190694

/-- `lt[A014682(A198268(n)), A198081(n)]` -/
def P12444403691599265131.Spec : Prop :=
  ∀ n, (P12444403691599265131.a n : ℤ) = A190694 (n + 1)

end A190694

/-! ## A190694.P12269634910898719931

`eq[1, A010873(A198269(2*n))]`
-/

namespace A190694.P12269634910898719931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A198269 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190694.P12269634910898719931

namespace A190694

/-- `eq[1, A010873(A198269(2*n))]` -/
def P12269634910898719931.Spec : Prop :=
  ∀ n, (P12269634910898719931.a n : ℤ) = A190694 (n + 1)

end A190694

/-! ## A190694.P10013301318690847202

`A195120(A190699(n+1))`
-/

namespace A190694.P10013301318690847202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A190699 (n + 1)).toNat

end

end A190694.P10013301318690847202

namespace A190694

/-- `A195120(A190699(n+1))` -/
def P10013301318690847202.Spec : Prop :=
  ∀ n, P10013301318690847202.a n = A190694 (n + 1)

end A190694

/-! ## A190694.P17102805079750177704

`eq[A024547(4*(n+1)), A024547(n+1)]+1`
-/

namespace A190694.P17102805079750177704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024547 (4 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190694.P17102805079750177704

namespace A190694

/-- `eq[A024547(4*(n+1)), A024547(n+1)]+1` -/
def P17102805079750177704.Spec : Prop :=
  ∀ n, (P17102805079750177704.a n : ℤ) = A190694 (n + 1)

end A190694

/-! ## A190694.P6117065358825109155

`eq[3, A056753(A198269(A005843(n)))]`
-/

namespace A190694.P6117065358825109155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A198269 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190694.P6117065358825109155

namespace A190694

/-- `eq[3, A056753(A198269(A005843(n)))]` -/
def P6117065358825109155.Spec : Prop :=
  ∀ n, (P6117065358825109155.a n : ℤ) = A190694 (n + 1)

end A190694

/-! ## A190694.P4958046501273194642

`eq[2, A001511(A080590(4*n+1))]`
-/

namespace A190694.P4958046501273194642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A080590 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190694.P4958046501273194642

namespace A190694

/-- `eq[2, A001511(A080590(4*n+1))]` -/
def P4958046501273194642.Spec : Prop :=
  ∀ n, (P4958046501273194642.a n : ℤ) = A190694 (n + 1)

end A190694

/-!
# A190695: Positions of 1's in A190693.

The programs for A190695, the canonical program `A190695.P12868016274228505227` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190695 has offset 1).

The definition of A190695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190695.P12868016274228505227

`eq[1, A190693(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190695

/-- `eq[1, A190693(n+1)]+1` -/
def P12868016274228505227.Spec : Prop :=
  ∀ n, (P12868016274228505227.a n : ℤ) = A190695 (n + 1)

theorem P12868016274228505227.correct : P12868016274228505227.Spec := by
  intro n
  simp only [A190695, Nat.add_sub_cancel]

end A190695

/-! ## A190695.P12718816756650914890

`eq[1, A190693(A028310(n))]`
-/

namespace A190695.P12718816756650914890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190695.P12718816756650914890

namespace A190695

/-- `eq[1, A190693(A028310(n))]` -/
def P12718816756650914890.Spec : Prop :=
  ∀ n, (P12718816756650914890.a n : ℤ) = A190695 (n + 1)

end A190695

/-! ## A190695.P13296919913450092447

`eq[2, A010873(A198269(2*n))]`
-/

namespace A190695.P13296919913450092447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A198269 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190695.P13296919913450092447

namespace A190695

/-- `eq[2, A010873(A198269(2*n))]` -/
def P13296919913450092447.Spec : Prop :=
  ∀ n, (P13296919913450092447.a n : ℤ) = A190695 (n + 1)

end A190695

/-! ## A190695.P2231387552400315584

`eq[A024548(2*(n+1)), A024548(n+3)]+1`
-/

namespace A190695.P2231387552400315584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190695.P2231387552400315584

namespace A190695

/-- `eq[A024548(2*(n+1)), A024548(n+3)]+1` -/
def P2231387552400315584.Spec : Prop :=
  ∀ n, (P2231387552400315584.a n : ℤ) = A190695 (n + 1)

end A190695

/-! ## A190695.P11203967351128997098

`eq[1, A190693(A123108(2*n))]`
-/

namespace A190695.P11203967351128997098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190695.P11203967351128997098

namespace A190695

/-- `eq[1, A190693(A123108(2*n))]` -/
def P11203967351128997098.Spec : Prop :=
  ∀ n, (P11203967351128997098.a n : ℤ) = A190695 (n + 1)

end A190695

/-! ## A190695.P1925077089508241291

`eq[A022847(n), A057979(A022847(2*n))]`
-/

namespace A190695.P1925077089508241291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A022847 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190695.P1925077089508241291

namespace A190695

/-- `eq[A022847(n), A057979(A022847(2*n))]` -/
def P1925077089508241291.Spec : Prop :=
  ∀ n, (P1925077089508241291.a n : ℤ) = A190695 (n + 1)

end A190695

/-! ## A190695.P17559432523730213690

`eq[2, gcd(8, A198081(4*n))]`
-/

namespace A190695.P17559432523730213690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A198081 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190695.P17559432523730213690

namespace A190695

/-- `eq[2, gcd(8, A198081(4*n))]` -/
def P17559432523730213690.Spec : Prop :=
  ∀ n, (P17559432523730213690.a n : ℤ) = A190695 (n + 1)

end A190695

/-! ## A190695.P4441856281466151465

`eq[1, A009531(A003512(A008574(n)))]`
-/

namespace A190695.P4441856281466151465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A003512 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190695.P4441856281466151465

namespace A190695

/-- `eq[1, A009531(A003512(A008574(n)))]` -/
def P4441856281466151465.Spec : Prop :=
  ∀ n, (P4441856281466151465.a n : ℤ) = A190695 (n + 1)

end A190695

/-!
# A190696: Positions of 2 in A190693.

The programs for A190696, the canonical program `A190696.P2091379119421115800` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190696 has offset 1).

The definition of A190696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190696.P2091379119421115800

`eq[2, A190693(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190696

/-- `eq[2, A190693(n+1)]+1` -/
def P2091379119421115800.Spec : Prop :=
  ∀ n, (P2091379119421115800.a n : ℤ) = A190696 (n + 1)

theorem P2091379119421115800.correct : P2091379119421115800.Spec := by
  intro n
  simp only [A190696, Nat.add_sub_cancel]

end A190696

/-! ## A190696.P857076548054289930

`eq[3, A010873(A198269(2*n))]`
-/

namespace A190696.P857076548054289930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A198269 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190696.P857076548054289930

namespace A190696

/-- `eq[3, A010873(A198269(2*n))]` -/
def P857076548054289930.Spec : Prop :=
  ∀ n, (P857076548054289930.a n : ℤ) = A190696 (n + 1)

end A190696

/-! ## A190696.P15617764952727698054

`eq[A022847(n), A032742(A022847(2*n)+1)]`
-/

namespace A190696.P15617764952727698054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A022847 (2 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190696.P15617764952727698054

namespace A190696

/-- `eq[A022847(n), A032742(A022847(2*n)+1)]` -/
def P15617764952727698054.Spec : Prop :=
  ∀ n, (P15617764952727698054.a n : ℤ) = A190696 (n + 1)

end A190696

/-! ## A190696.P7747467796163653478

`eq[A134967(A198269(2*n)), A198269(n)]`
-/

namespace A190696.P7747467796163653478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134967 (A198269 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190696.P7747467796163653478

namespace A190696

/-- `eq[A134967(A198269(2*n)), A198269(n)]` -/
def P7747467796163653478.Spec : Prop :=
  ∀ n, (P7747467796163653478.a n : ℤ) = A190696 (n + 1)

end A190696

/-! ## A190696.P14180598549026516549

`eq[1, A040668(A172475(8*n))]`
-/

namespace A190696.P14180598549026516549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040668 (A172475 (8 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190696.P14180598549026516549

namespace A190696

/-- `eq[1, A040668(A172475(8*n))]` -/
def P14180598549026516549.Spec : Prop :=
  ∀ n, (P14180598549026516549.a n : ℤ) = A190696 (n + 1)

end A190696

/-! ## A190696.P5832241837342370062

`eq[0, A325144(A080590(4*n+1))]`
-/

namespace A190696.P5832241837342370062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325144 (A080590 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190696.P5832241837342370062

namespace A190696

/-- `eq[0, A325144(A080590(4*n+1))]` -/
def P5832241837342370062.Spec : Prop :=
  ∀ n, (P5832241837342370062.a n : ℤ) = A190696 (n + 1)

end A190696

/-! ## A190696.P2247162088453183384

`eq[2, A001511(A003512(A008574(n)))]`
-/

namespace A190696.P2247162088453183384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003512 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190696.P2247162088453183384

namespace A190696

/-- `eq[2, A001511(A003512(A008574(n)))]` -/
def P2247162088453183384.Spec : Prop :=
  ∀ n, (P2247162088453183384.a n : ℤ) = A190696 (n + 1)

end A190696

/-!
# A190697: Positions of 3 in A190693.

The programs for A190697, the canonical program `A190697.P17780005310990267503` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190697 has offset 1).

The definition of A190697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190697.P17780005310990267503

`eq[3, A190693(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190697

/-- `eq[3, A190693(n+1)]+1` -/
def P17780005310990267503.Spec : Prop :=
  ∀ n, (P17780005310990267503.a n : ℤ) = A190697 (n + 1)

theorem P17780005310990267503.correct : P17780005310990267503.Spec := by
  intro n
  simp only [A190697, Nat.add_sub_cancel]

end A190697

/-! ## A190697.P7741281596242155496

`eq[3, A190693(A028310(n))]`
-/

namespace A190697.P7741281596242155496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190697.P7741281596242155496

namespace A190697

/-- `eq[3, A190693(A028310(n))]` -/
def P7741281596242155496.Spec : Prop :=
  ∀ n, (P7741281596242155496.a n : ℤ) = A190697 (n + 1)

end A190697

/-! ## A190697.P13059716788179918745

`eq[A080590(n+1)-A198268(n), A195120(n)]`
-/

namespace A190697.P13059716788179918745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) - A198268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190697.P13059716788179918745

namespace A190697

/-- `eq[A080590(n+1)-A198268(n), A195120(n)]` -/
def P13059716788179918745.Spec : Prop :=
  ∀ n, (P13059716788179918745.a n : ℤ) = A190697 (n + 1)

end A190697

/-! ## A190697.P6888236351541699057

`eq[A024548(2*(n+1)), A024548(n+1)]+1`
-/

namespace A190697.P6888236351541699057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190697.P6888236351541699057

namespace A190697

/-- `eq[A024548(2*(n+1)), A024548(n+1)]+1` -/
def P6888236351541699057.Spec : Prop :=
  ∀ n, (P6888236351541699057.a n : ℤ) = A190697 (n + 1)

end A190697

/-! ## A190697.P14223268250512964093

`eq[A000007(n), A010873(A198269(2*n))]`
-/

namespace A190697.P14223268250512964093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A198269 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190697.P14223268250512964093

namespace A190697

/-- `eq[A000007(n), A010873(A198269(2*n))]` -/
def P14223268250512964093.Spec : Prop :=
  ∀ n, (P14223268250512964093.a n : ℤ) = A190697 (n + 1)

end A190697

/-! ## A190697.P1721038844805854663

`eq[A000038(n), A010873(A198269(2*n))]`
-/

namespace A190697.P1721038844805854663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A198269 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190697.P1721038844805854663

namespace A190697

/-- `eq[A000038(n), A010873(A198269(2*n))]` -/
def P1721038844805854663.Spec : Prop :=
  ∀ n, (P1721038844805854663.a n : ℤ) = A190697 (n + 1)

end A190697

/-! ## A190697.P12192901430389877187

`eq[10, A010131(A198269(2*n))]`
-/

namespace A190697.P12192901430389877187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (A198269 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190697.P12192901430389877187

namespace A190697

/-- `eq[10, A010131(A198269(2*n))]` -/
def P12192901430389877187.Spec : Prop :=
  ∀ n, (P12192901430389877187.a n : ℤ) = A190697 (n + 1)

end A190697

/-! ## A190697.P5930143490309596150

`eq[A000034(A198268(n)), A188068(n+1)]`
-/

namespace A190697.P5930143490309596150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A198268 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190697.P5930143490309596150

namespace A190697

/-- `eq[A000034(A198268(n)), A188068(n+1)]` -/
def P5930143490309596150.Spec : Prop :=
  ∀ n, (P5930143490309596150.a n : ℤ) = A190697 (n + 1)

end A190697

/-! ## A190697.P1688369302919475601

`eq[A000034(A022847(2*n)), A188068(n+1)]`
-/

namespace A190697.P1688369302919475601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A022847 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190697.P1688369302919475601

namespace A190697

/-- `eq[A000034(A022847(2*n)), A188068(n+1)]` -/
def P1688369302919475601.Spec : Prop :=
  ∀ n, (P1688369302919475601.a n : ℤ) = A190697 (n + 1)

end A190697

/-!
# A190698: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,1) and [ ]=floor.

The programs for A190698, the canonical program `A190698.P11569126701504910814` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190698 has offset 1).

The definition of A190698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190698.P11569126701504910814

`A190672(2*(n+1))+A005843(val(A022847(n+1), A198081(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190698

/-- `A190672(2*(n+1))+A005843(val(A022847(n+1), A198081(n+1)))` -/
def P11569126701504910814.Spec : Prop :=
  ∀ n, P11569126701504910814.a n = A190698 (n + 1)

theorem P11569126701504910814.correct : P11569126701504910814.Spec := by
  intro n
  simp only [A190698, Nat.add_sub_cancel]

end A190698

/-! ## A190698.P246515580023806623

`A190672(2*(n+1))+A014681(val(A022847(n+1), A198081(n+1)))`
-/

namespace A190698.P246515580023806623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * (n + 1)) + A014681 (SequenceMachineLib.valuation (A022847 (n + 1)).toNat (A198081 (n + 1)).toNat)

end

end A190698.P246515580023806623

namespace A190698

/-- `A190672(2*(n+1))+A014681(val(A022847(n+1), A198081(n+1)))` -/
def P246515580023806623.Spec : Prop :=
  ∀ n, P246515580023806623.a n = A190698 (n + 1)

end A190698

/-! ## A190698.P10391275752804769217

`A190672(2*(n+1))+A005843(A194028(n+1)-2*A022838(n+1))`
-/

namespace A190698.P10391275752804769217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * (n + 1)) + A005843 (A194028 (n + 1) - 2 * A022838 (n + 1)).toNat

end

end A190698.P10391275752804769217

namespace A190698

/-- `A190672(2*(n+1))+A005843(A194028(n+1)-2*A022838(n+1))` -/
def P10391275752804769217.Spec : Prop :=
  ∀ n, P10391275752804769217.a n = A190698 (n + 1)

end A190698

/-! ## A190698.P17616316657308761487

`A190672(2*(n+1))+A014681(A194028(n+1)-2*A022838(n+1))`
-/

namespace A190698.P17616316657308761487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * (n + 1)) + A014681 (A194028 (n + 1) - 2 * A022838 (n + 1)).toNat

end

end A190698.P17616316657308761487

namespace A190698

/-- `A190672(2*(n+1))+A014681(A194028(n+1)-2*A022838(n+1))` -/
def P17616316657308761487.Spec : Prop :=
  ∀ n, P17616316657308761487.a n = A190698 (n + 1)

end A190698

/-! ## A190698.P17922777343976136953

`A188069(4*n+6)%A188069(n+2)`
-/

namespace A190698.P17922777343976136953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188069 (4 * n + 6)) (A188069 (n + 2))

end

end A190698.P17922777343976136953

namespace A190698

/-- `A188069(4*n+6)%A188069(n+2)` -/
def P17922777343976136953.Spec : Prop :=
  ∀ n, P17922777343976136953.a n = A190698 (n + 1)

end A190698

/-! ## A190698.P11557682157307481863

`A022838(A016813(n+1))-A016813(A022838(n+1))`
-/

namespace A190698.P11557682157307481863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A016813 (n + 1)).toNat - A016813 (A022838 (n + 1)).toNat

end

end A190698.P11557682157307481863

namespace A190698

/-- `A022838(A016813(n+1))-A016813(A022838(n+1))` -/
def P11557682157307481863.Spec : Prop :=
  ∀ n, P11557682157307481863.a n = A190698 (n + 1)

end A190698

/-! ## A190698.P13992369593877867920

`A016813(A195120(n+1))-A195120(A016813(n+1))`
-/

namespace A190698.P13992369593877867920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A195120 (n + 1)).toNat - A195120 (A016813 (n + 1)).toNat

end

end A190698.P13992369593877867920

namespace A190698

/-- `A016813(A195120(n+1))-A195120(A016813(n+1))` -/
def P13992369593877867920.Spec : Prop :=
  ∀ n, P13992369593877867920.a n = A190698 (n + 1)

end A190698

/-!
# A190699: Positions of 0 in A190698.

The programs for A190699, the canonical program `A190699.P1703073338234724298` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190699 has offset 1).

The definition of A190699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190699.P1703073338234724298

`A003512(A190694(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190699

/-- `A003512(A190694(n+1))` -/
def P1703073338234724298.Spec : Prop :=
  ∀ n, P1703073338234724298.a n = A190699 (n + 1)

theorem P1703073338234724298.correct : P1703073338234724298.Spec := by
  intro n
  simp only [A190699, Nat.add_sub_cancel]

end A190699

/-! ## A190699.P1146434291897318481

`A180123(A190694(n+1))+char[A002251(n)]`
-/

namespace A190699.P1146434291897318481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (A190694 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190699.P1146434291897318481

namespace A190699

/-- `A180123(A190694(n+1))+char[A002251(n)]` -/
def P1146434291897318481.Spec : Prop :=
  ∀ n, P1146434291897318481.a n = A190699 (n + 1)

end A190699

/-! ## A190699.P13529123057344995842

`A180123(A190694(n+1))+char[A006068(n)]`
-/

namespace A190699.P13529123057344995842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (A190694 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190699.P13529123057344995842

namespace A190699

/-- `A180123(A190694(n+1))+char[A006068(n)]` -/
def P13529123057344995842.Spec : Prop :=
  ∀ n, P13529123057344995842.a n = A190699 (n + 1)

end A190699

/-! ## A190699.P17664111981930458092

`A180123(A190694(n+1))+char[A006368(n)]`
-/

namespace A190699.P17664111981930458092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (A190694 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190699.P17664111981930458092

namespace A190699

/-- `A180123(A190694(n+1))+char[A006368(n)]` -/
def P17664111981930458092.Spec : Prop :=
  ∀ n, P17664111981930458092.a n = A190699 (n + 1)

end A190699

/-! ## A190699.P4785891555136086547

`A180123(A190694(n+1))+A000034(2*n)`
-/

namespace A190699.P4785891555136086547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (A190694 (n + 1)).toNat + A000034 (2 * n)

end

end A190699.P4785891555136086547

namespace A190699

/-- `A180123(A190694(n+1))+A000034(2*n)` -/
def P4785891555136086547.Spec : Prop :=
  ∀ n, P4785891555136086547.a n = A190699 (n + 1)

end A190699

/-! ## A190699.P7304041891432265647

`eq[1, A190698(A028310(n))+1]`
-/

namespace A190699.P7304041891432265647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190699.P7304041891432265647

namespace A190699

/-- `eq[1, A190698(A028310(n))+1]` -/
def P7304041891432265647.Spec : Prop :=
  ∀ n, (P7304041891432265647.a n : ℤ) = A190699 (n + 1)

end A190699

/-! ## A190699.P13346754103771778294

`eq[A000038(n), A190698(n+1)]+1`
-/

namespace A190699.P13346754103771778294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190699.P13346754103771778294

namespace A190699

/-- `eq[A000038(n), A190698(n+1)]+1` -/
def P13346754103771778294.Spec : Prop :=
  ∀ n, (P13346754103771778294.a n : ℤ) = A190699 (n + 1)

end A190699

