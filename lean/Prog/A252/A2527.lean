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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A252700: Number of strings of length n over a 7-letter alphabet that do not begin with a palindrome.

The programs for A252700, there is no canonical definition to state claims against.
-/

/-! ## A252700.P279081575069067068

`A342238(A055999(n+3))`
-/

namespace A252700.P279081575069067068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A055999 (n + 3)).toNat

end

end A252700.P279081575069067068

/-! ## A252700.P4252266771890825326

`A342238(A000096(n+5)-5)`
-/

namespace A252700.P4252266771890825326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000096 (n + 5) - 5).toNat

end

end A252700.P4252266771890825326

/-! ## A252700.P5797623742069226762

`A342238(A000217(n+6)-6)`
-/

namespace A252700.P5797623742069226762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000217 (n + 6) - 6).toNat

end

end A252700.P5797623742069226762

/-! ## A252700.P2355972092787851572

`A342238(A161680(n+7)-6)`
-/

namespace A252700.P2355972092787851572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A161680 (n + 7) - 6).toNat

end

end A252700.P2355972092787851572

/-! ## A252700.P8175969763331979661

`A342238(A133263(n+6)-8)`
-/

namespace A252700.P8175969763331979661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A133263 (n + 6) - 8).toNat

end

end A252700.P8175969763331979661

/-! ## A252700.P12801072773006392769

`A342238(Δ[A023545(n+2)]-2)`
-/

namespace A252700.P12801072773006392769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (f1 (n + 1) - f1 n - 2).toNat

end

end A252700.P12801072773006392769

/-! ## A252700.P173203973403891611

`A342238(A167614(n+1)+4*n+9)`
-/

namespace A252700.P173203973403891611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A167614 (n + 1) + (4 * n + 9 : ℤ)).toNat

end

end A252700.P173203973403891611

/-!
# A252701: Number of strings of length n over an 8-letter alphabet that do not begin with a palindrome.

The programs for A252701, there is no canonical definition to state claims against.
-/

/-! ## A252701.P8647191718382598331

`A342238(eq[6, A025581(n)])`
-/

namespace A252701.P8647191718382598331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252701.P8647191718382598331

/-! ## A252701.P5625753566456253104

`A342238(A055999(n+4)-1)`
-/

namespace A252701.P5625753566456253104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A055999 (n + 4) - 1).toNat

end

end A252701.P5625753566456253104

/-! ## A252701.P4762068539247923926

`A342238(A000217(n+7)-7)`
-/

namespace A252701.P4762068539247923926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000217 (n + 7) - 7).toNat

end

end A252701.P4762068539247923926

/-! ## A252701.P2847694069779027546

`A342238(A000124(n+7)-8)`
-/

namespace A252701.P2847694069779027546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000124 (n + 7) - 8).toNat

end

end A252701.P2847694069779027546

/-! ## A252701.P13825867465689775598

`A342238(A161680(n+8)-7)`
-/

namespace A252701.P13825867465689775598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A161680 (n + 8) - 7).toNat

end

end A252701.P13825867465689775598

/-! ## A252701.P13108392334646645285

`A342238(A000096(n+5)+n+1)`
-/

namespace A252701.P13108392334646645285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A252701.P13108392334646645285

/-!
# A252702: Number of strings of length n over a 9-letter alphabet that do not begin with a palindrome.

The programs for A252702, there is no canonical definition to state claims against.
-/

/-! ## A252702.P13654268863219273474

`A342238(eq[7, A025581(n)])`
-/

namespace A252702.P13654268863219273474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252702.P13654268863219273474

/-! ## A252702.P8365930406642275890

`A342238(eq[15, A099375(n)])`
-/

namespace A252702.P8365930406642275890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252702.P8365930406642275890

/-! ## A252702.P3343779778138154653

`A342238(A034856(n+7)-6)`
-/

namespace A252702.P3343779778138154653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A034856 (n + 7) - 6).toNat

end

end A252702.P3343779778138154653

/-! ## A252702.P2046188403285052009

`A342238(A000096(n+7)-7)`
-/

namespace A252702.P2046188403285052009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000096 (n + 7) - 7).toNat

end

end A252702.P2046188403285052009

/-! ## A252702.P2738760268404949243

`A342238(A000217(n+8)-8)`
-/

namespace A252702.P2738760268404949243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000217 (n + 8) - 8).toNat

end

end A252702.P2738760268404949243

/-! ## A252702.P5135398702102616722

`A342238(A161680(n+9)-8)`
-/

namespace A252702.P5135398702102616722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A161680 (n + 9) - 8).toNat

end

end A252702.P5135398702102616722

/-! ## A252702.P16809700462664005515

`A342238(eq[8, A004736(n+1)])`
-/

namespace A252702.P16809700462664005515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252702.P16809700462664005515

/-!
# A252703: Number of strings of length n over a 10-letter alphabet that do not begin with a palindrome.

The programs for A252703, there is no canonical definition to state claims against.
-/

/-! ## A252703.P2383069011977904090

`A342238(A000096(n+8)-8)`
-/

namespace A252703.P2383069011977904090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000096 (n + 8) - 8).toNat

end

end A252703.P2383069011977904090

/-! ## A252703.P7088352899728779350

`A342238(A000217(n+9)-9)`
-/

namespace A252703.P7088352899728779350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000217 (n + 9) - 9).toNat

end

end A252703.P7088352899728779350

/-! ## A252703.P9143839280169820316

`A342238(A161680(n+10)-9)`
-/

namespace A252703.P9143839280169820316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A161680 (n + 10) - 9).toNat

end

end A252703.P9143839280169820316

/-! ## A252703.P17005852484379025468

`A342238(eq[9, A004736(n+1)])`
-/

namespace A252703.P17005852484379025468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252703.P17005852484379025468

/-! ## A252703.P10412913364792137950

`A342238(A017089(n+4)+A000124(n+1))`
-/

namespace A252703.P10412913364792137950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A017089 (n + 4) + A000124 (n + 1)).toNat

end

end A252703.P10412913364792137950

/-!
# A252704: The number of ways to color the faces of a regular icosahedron with n colors, counting mirror images as one.

The programs for A252704, the canonical program `A252704.P14111611536729371917` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252704 has offset 1).

The definition of A252704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252704.P14111611536729371917

`A337959(n+1)+A337960(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A252704

/-- `A337959(n+1)+A337960(n+1)` -/
def P14111611536729371917.Spec : Prop :=
  ∀ n, P14111611536729371917.a n = A252704 (n + 1)

theorem P14111611536729371917.correct : P14111611536729371917.Spec := by
  intro n
  simp only [A252704, Nat.add_sub_cancel]

end A252704

/-! ## A252704.P7620560895880997991

`A054472(n+1)-A337959(n+1)`
-/

namespace A252704.P7620560895880997991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054472 (n + 1) - A337959 (n + 1)

end

end A252704.P7620560895880997991

namespace A252704

/-- `A054472(n+1)-A337959(n+1)` -/
def P7620560895880997991.Spec : Prop :=
  ∀ n, P7620560895880997991.a n = A252704 (n + 1)

end A252704

/-!
# A252705: The number of ways to color the faces of a regular dodecahedron with n colors, counting mirror images as one.

The programs for A252705, the canonical program `A252705.P2848912562946953733` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252705 has offset 1).

The definition of A252705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252705.P2848912562946953733

`(n+1)²*((n+1)²+1)*((n+1)^8-(n+1)^6+16*(n+1)^4+44)/120`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252705

/-- `(n+1)²*((n+1)²+1)*((n+1)^8-(n+1)^6+16*(n+1)^4+44)/120` -/
def P2848912562946953733.Spec : Prop :=
  ∀ n, P2848912562946953733.a n = (A252705 (n + 1) : ℚ)

end A252705

/-! ## A252705.P11682736147489939936

`A337961(n+1)+A337962(n+1)`
-/

namespace A252705.P11682736147489939936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337961 (n + 1) + A337962 (n + 1)

end

end A252705.P11682736147489939936

namespace A252705

/-- `A337961(n+1)+A337962(n+1)` -/
def P11682736147489939936.Spec : Prop :=
  ∀ n, P11682736147489939936.a n = A252705 (n + 1)

end A252705

/-! ## A252705.P9354992895868945973

`A000545(n+1)-A337961(n+1)`
-/

namespace A252705.P9354992895868945973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000545 (n + 1) - A337961 (n + 1)

end

end A252705.P9354992895868945973

namespace A252705

/-- `A000545(n+1)-A337961(n+1)` -/
def P9354992895868945973.Spec : Prop :=
  ∀ n, P9354992895868945973.a n = A252705 (n + 1)

end A252705

/-!
# A252706: Expansion of phi(-q) / phi(-q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A252706, there is no canonical definition to state claims against.
-/

/-! ## A252706.P1959204536629290267

`(-1)^n*A139137(n)`
-/

namespace A252706.P1959204536629290267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A139137 n

end

end A252706.P1959204536629290267

/-! ## A252706.P7793458610355988509

`A057079(n)*A139136(n)`
-/

namespace A252706.P7793458610355988509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A139136 n

end

end A252706.P7793458610355988509

/-! ## A252706.P6992683900151935330

`A122792(n)*A131713(n)`
-/

namespace A252706.P6992683900151935330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 n * A131713 n

end

end A252706.P6992683900151935330

/-! ## A252706.P1972779627185784284

`A132954(n)*A139136(n)`
-/

namespace A252706.P1972779627185784284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A139136 n

end

end A252706.P1972779627185784284

/-! ## A252706.P886085564804421967

`A139137(n)/A033999(n)`
-/

namespace A252706.P886085564804421967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139137 n : ℚ) / (A033999 n : ℚ)

end

end A252706.P886085564804421967

/-! ## A252706.P2385493522523586514

`(2-A100402(n))*A122792(n)`
-/

namespace A252706.P2385493522523586514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A100402 n) * A122792 n

end

end A252706.P2385493522523586514

/-! ## A252706.P5756490467342255939

`(2-A057079(n)²)*A122792(n)`
-/

namespace A252706.P5756490467342255939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A122792 n

end

end A252706.P5756490467342255939

/-! ## A252706.P9145420533823568230

`(2-A132954(n)²)*A122792(n)`
-/

namespace A252706.P9145420533823568230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A122792 n

end

end A252706.P9145420533823568230

/-! ## A252706.P7043241767950454197

`A057079(4*n)*A122792(n)`
-/

namespace A252706.P7043241767950454197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A122792 n

end

end A252706.P7043241767950454197

/-!
# A252711: Number of (n+2)X(n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252711, there is no canonical definition to state claims against.
-/

/-! ## A252711.P3210123629233457662

`A252719(∑[4*n]+1)`
-/

namespace A252711.P3210123629233457662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252711.P3210123629233457662

/-! ## A252711.P13962053348647863273

`or(char[3], A252719(A001844(n)))`
-/

namespace A252711.P13962053348647863273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252719 (A001844 n).toNat)

end

end A252711.P13962053348647863273

/-! ## A252711.P10074118520004353986

`record[A003982(n)*A252719(n+1)]`
-/

namespace A252711.P10074118520004353986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252711.P10074118520004353986

/-! ## A252711.P11087784032531605789

`record[gcd(A003987(n), A252719(n+1))]`
-/

namespace A252711.P11087784032531605789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A252719 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252711.P11087784032531605789

/-! ## A252711.P6904746847133356358

`A252719(A001844(n))+A185264(n)`
-/

namespace A252711.P6904746847133356358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A001844 n).toNat + A185264 n

end

end A252711.P6904746847133356358

/-!
# A252712: Number of (n+2) X (1+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252712, there is no canonical definition to state claims against.
-/

/-! ## A252712.P16498460983544092716

`A252719(∑[n+1])`
-/

namespace A252712.P16498460983544092716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252712.P16498460983544092716

/-! ## A252712.P15636204079629072371

`record[A252719(A257506(n+1))]`
-/

namespace A252712.P15636204079629072371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252712.P15636204079629072371

/-! ## A252712.P3950384083489864085

`record[A252719(A083920(3*(n+1)))]`
-/

namespace A252712.P3950384083489864085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A083920 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252712.P3950384083489864085

/-! ## A252712.P7440507739001891254

`record[A023531(n)*A252719(n+1)]`
-/

namespace A252712.P7440507739001891254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A252719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252712.P7440507739001891254

/-! ## A252712.P10352112301604243682

`record[A252719(n+1)/A029653(n)]`
-/

namespace A252712.P10352112301604243682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252719 (n + 1) : ℚ) / (A029653 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252712.P10352112301604243682

/-!
# A252713: Number of (n+2) X (2+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252713, the canonical program `A252713.P14816038717360764124` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252713 has offset 1).

The definition of A252713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252713.P14816038717360764124

`a(n-1)+7*a(n-3)-7*a(n-4)-12*a(n-6)+12*a(n-7)` with `a(0)=52, a(1)=46, a(2)=56, a(3)=76, a(4)=102, a(5)=154, a(6)=220, a(7)=306, a(8)=478`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252713

/-- `a(n-1)+7*a(n-3)-7*a(n-4)-12*a(n-6)+12*a(n-7)` -/
def P14816038717360764124.Spec : Prop :=
  ∀ n, P14816038717360764124.a n = A252713 (n + 1)

theorem P14816038717360764124.correct : P14816038717360764124.Spec := by
  intro n
  simp only [A252713, Nat.add_sub_cancel]

end A252713

/-! ## A252713.P10610156387838064793

`A252719(∑[n+2])`
-/

namespace A252713.P10610156387838064793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252713.P10610156387838064793

namespace A252713

/-- `A252719(∑[n+2])` -/
def P10610156387838064793.Spec : Prop :=
  ∀ n, P10610156387838064793.a n = A252713 (n + 1)

end A252713

/-! ## A252713.P15890897304421064529

`lcm(2, A252719(A000096(n+1)))`
-/

namespace A252713.P15890897304421064529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252719 (A000096 (n + 1)).toNat)

end

end A252713.P15890897304421064529

namespace A252713

/-- `lcm(2, A252719(A000096(n+1)))` -/
def P15890897304421064529.Spec : Prop :=
  ∀ n, (P15890897304421064529.a n : ℤ) = A252713 (n + 1)

end A252713

/-! ## A252713.P11340382191731237826

`lcm(A154990(n+1), A252719(A132337(n+2)))`
-/

namespace A252713.P11340382191731237826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154990 (n + 1)) (A252719 (A132337 (n + 2)).toNat)

end

end A252713.P11340382191731237826

namespace A252713

/-- `lcm(A154990(n+1), A252719(A132337(n+2)))` -/
def P11340382191731237826.Spec : Prop :=
  ∀ n, (P11340382191731237826.a n : ℤ) = A252713 (n + 1)

end A252713

/-! ## A252713.P2197210836225534331

`A000041(and(1, -n))*A252719(A000096(n+1))`
-/

namespace A252713.P2197210836225534331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A252719 (A000096 (n + 1)).toNat

end

end A252713.P2197210836225534331

namespace A252713

/-- `A000041(and(1, -n))*A252719(A000096(n+1))` -/
def P2197210836225534331.Spec : Prop :=
  ∀ n, P2197210836225534331.a n = A252713 (n + 1)

end A252713

/-!
# A252714: Number of (n+2) X (3+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252714, the canonical program `A252714.P3845372102356092360` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252714 has offset 1).

The definition of A252714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252714.P3845372102356092360

`a(n-1)+3*a(n-3)-3*a(n-4)` with `a(0)=70, a(1)=50, a(2)=62, a(3)=80, a(4)=119, a(5)=170`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252714

/-- `a(n-1)+3*a(n-3)-3*a(n-4)` -/
def P3845372102356092360.Spec : Prop :=
  ∀ n, P3845372102356092360.a n = A252714 (n + 1)

theorem P3845372102356092360.correct : P3845372102356092360.Spec := by
  intro n
  simp only [A252714, Nat.add_sub_cancel]

end A252714

/-! ## A252714.P15987837303385332487

`A252719(∑[n+3]+1)`
-/

namespace A252714.P15987837303385332487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252714.P15987837303385332487

namespace A252714

/-- `A252719(∑[n+3]+1)` -/
def P15987837303385332487.Spec : Prop :=
  ∀ n, P15987837303385332487.a n = A252714 (n + 1)

end A252714

/-! ## A252714.P9746049353935705206

`or(char[13], A252719(A034856(n+2)))`
-/

namespace A252714.P9746049353935705206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252719 (A034856 (n + 2)).toNat)

end

end A252714.P9746049353935705206

namespace A252714

/-- `or(char[13], A252719(A034856(n+2)))` -/
def P9746049353935705206.Spec : Prop :=
  ∀ n, P9746049353935705206.a n = A252714 (n + 1)

end A252714

/-! ## A252714.P10481231834291574359

`or(char[4], A252719(A000124(n+3)-3))`
-/

namespace A252714.P10481231834291574359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252719 (A000124 (n + 3) - 3).toNat)

end

end A252714.P10481231834291574359

namespace A252714

/-- `or(char[4], A252719(A000124(n+3)-3))` -/
def P10481231834291574359.Spec : Prop :=
  ∀ n, P10481231834291574359.a n = A252714 (n + 1)

end A252714

/-! ## A252714.P3290766958686698482

`A007318(C(n+2, 2))*A252719(A034856(n+2))`
-/

namespace A252714.P3290766958686698482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A252719 (A034856 (n + 2)).toNat

end

end A252714.P3290766958686698482

namespace A252714

/-- `A007318(C(n+2, 2))*A252719(A034856(n+2))` -/
def P3290766958686698482.Spec : Prop :=
  ∀ n, P3290766958686698482.a n = A252714 (n + 1)

end A252714

/-!
# A252715: Number of (n+2) X (4+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252715, there is no canonical definition to state claims against.
-/

/-! ## A252715.P3929525358542804872

`A252719(∑[n+4]+3)`
-/

namespace A252715.P3929525358542804872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252715.P3929525358542804872

/-! ## A252715.P17087092975090269823

`A252719(A027379(n+2))/A019303(2*n)`
-/

namespace A252715.P17087092975090269823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252719 (A027379 (n + 2)).toNat : ℚ) / (A019303 (2 * n) : ℚ)

end

end A252715.P17087092975090269823

/-! ## A252715.P16642701096989966566

`A252719(A027379(n+2))%A252690(n+1)`
-/

namespace A252715.P16642701096989966566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252719 (A027379 (n + 2)).toNat) (A252690 (n + 1))

end

end A252715.P16642701096989966566

/-! ## A252715.P9651610033921935388

`A252719(A027379(n+2))/A282738(2*(n+1))`
-/

namespace A252715.P9651610033921935388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252719 (A027379 (n + 2)).toNat : ℚ) / (A282738 (2 * (n + 1)) : ℚ)

end

end A252715.P9651610033921935388

/-! ## A252715.P4502228633214948628

`A252719(A027379(n+2))/A001221(A051642(n))`
-/

namespace A252715.P4502228633214948628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252719 (A027379 (n + 2)).toNat : ℚ) / (A001221 (A051642 n).toNat : ℚ)

end

end A252715.P4502228633214948628

/-!
# A252716: Number of (n+2) X (5+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252716, there is no canonical definition to state claims against.
-/

/-! ## A252716.P13881512967195290585

`A252719(Δ[A264443(n)])`
-/

namespace A252716.P13881512967195290585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (f1 (n + 1) - f1 n).toNat

end

end A252716.P13881512967195290585

/-! ## A252716.P5105501162970488355

`A252719(A046691(n+3))`
-/

namespace A252716.P5105501162970488355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A046691 (n + 3)).toNat

end

end A252716.P5105501162970488355

/-! ## A252716.P63747071167546181

`A252719(A056115(n)+11)`
-/

namespace A252716.P63747071167546181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A056115 n + 11).toNat

end

end A252716.P63747071167546181

/-! ## A252716.P1546465980080679045

`A252719(eq[3, A152157(n)])`
-/

namespace A252716.P1546465980080679045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252716.P1546465980080679045

/-! ## A252716.P13482019418196127099

`A252719(eq[4, A193592(n)])`
-/

namespace A252716.P13482019418196127099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252716.P13482019418196127099

/-!
# A252717: Number of (n+2) X (6+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252717, the canonical program `A252717.P2253609838789639285` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252717 has offset 1).

The definition of A252717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252717.P2253609838789639285

`a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` with `a(0)=175, a(1)=91, a(2)=110, a(3)=132, a(4)=191, a(5)=262, a(6)=324, a(7)=478, a(8)=664`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252717

/-- `a(n-1)+3*a(n-3)-3*a(n-4)-a(n-6)+a(n-7)` -/
def P2253609838789639285.Spec : Prop :=
  ∀ n, P2253609838789639285.a n = A252717 (n + 1)

theorem P2253609838789639285.correct : P2253609838789639285.Spec := by
  intro n
  simp only [A252717, Nat.add_sub_cancel]

end A252717

/-! ## A252717.P6005705777677433945

`A252719(∑[n+6]+10)`
-/

namespace A252717.P6005705777677433945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A252717.P6005705777677433945

namespace A252717

/-- `A252719(∑[n+6]+10)` -/
def P6005705777677433945.Spec : Prop :=
  ∀ n, P6005705777677433945.a n = A252717 (n + 1)

end A252717

/-! ## A252717.P7982421086414686877

`A252719(A052905(n+3))%A158358(n+1)`
-/

namespace A252717.P7982421086414686877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252719 (A052905 (n + 3)).toNat) (A158358 (n + 1))

end

end A252717.P7982421086414686877

namespace A252717

/-- `A252719(A052905(n+3))%A158358(n+1)` -/
def P7982421086414686877.Spec : Prop :=
  ∀ n, P7982421086414686877.a n = A252717 (n + 1)

end A252717

/-!
# A252718: Number of (n+2) X (7+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252718, there is no canonical definition to state claims against.
-/

/-! ## A252718.P13683205960759770511

`A252719(A055999(n+4))`
-/

namespace A252718.P13683205960759770511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A055999 (n + 4)).toNat

end

end A252718.P13683205960759770511

/-! ## A252718.P11264225862278041707

`A252719(eq[4, A219347(n)])`
-/

namespace A252718.P11264225862278041707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252718.P11264225862278041707

/-! ## A252718.P739052643480820641

`A252719(eq[6, A193592(n)])`
-/

namespace A252718.P739052643480820641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252718.P739052643480820641

/-! ## A252718.P11664007738713120770

`A252719(Δ[A023551(n+2)])`
-/

namespace A252718.P11664007738713120770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (f1 (n + 1) - f1 n).toNat

end

end A252718.P11664007738713120770

/-! ## A252718.P10287203421065764382

`A252719(A155212(n+3)+2)`
-/

namespace A252718.P10287203421065764382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A155212 (n + 3) + 2).toNat

end

end A252718.P10287203421065764382

/-!
# A252720: Number of (1+2) X (n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252720, there is no canonical definition to state claims against.
-/

/-! ## A252720.P10723618218756451748

`A252719(∑[n]+1)`
-/

namespace A252720.P10723618218756451748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252720.P10723618218756451748

/-! ## A252720.P16590826739887802215

`record[A252719(A114091(n+1))]`
-/

namespace A252720.P16590826739887802215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252720.P16590826739887802215

/-! ## A252720.P10350183435902534578

`record[A252719(A278506(n+1))]`
-/

namespace A252720.P10350183435902534578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A278506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252720.P10350183435902534578

/-! ## A252720.P8988135721626546998

`record[A010054(n)*A252719(n+1)]`
-/

namespace A252720.P8988135721626546998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252720.P8988135721626546998

/-! ## A252720.P206839374118619271

`A252719(A000124(n))%A017452(n)`
-/

namespace A252720.P206839374118619271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252719 (A000124 n).toNat) (A017452 n)

end

end A252720.P206839374118619271

/-!
# A252721: Number of (2+2) X (n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252721, the canonical program `A252721.P7879823609798290239` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252721 has offset 1).

The definition of A252721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252721.P7879823609798290239

`a(n-2)+2*a(n-3)-2*a(n-5)` with `a(0)=45, a(1)=46, a(2)=50, a(3)=63, a(4)=69, a(5)=91, a(6)=107, a(7)=131`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252721

/-- `a(n-2)+2*a(n-3)-2*a(n-5)` -/
def P7879823609798290239.Spec : Prop :=
  ∀ n, P7879823609798290239.a n = A252721 (n + 1)

theorem P7879823609798290239.correct : P7879823609798290239.Spec := by
  intro n
  simp only [A252721, Nat.add_sub_cancel]

end A252721

/-! ## A252721.P6353300752267117146

`A252719(∑[n+1]+2)`
-/

namespace A252721.P6353300752267117146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252721.P6353300752267117146

namespace A252721

/-- `A252719(∑[n+1]+2)` -/
def P6353300752267117146.Spec : Prop :=
  ∀ n, P6353300752267117146.a n = A252721 (n + 1)

end A252721

/-! ## A252721.P5084166903557315356

`or(char[3], A252719(A133263(n+1)))`
-/

namespace A252721.P5084166903557315356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252719 (A133263 (n + 1)).toNat)

end

end A252721.P5084166903557315356

namespace A252721

/-- `or(char[3], A252719(A133263(n+1)))` -/
def P5084166903557315356.Spec : Prop :=
  ∀ n, P5084166903557315356.a n = A252721 (n + 1)

end A252721

/-! ## A252721.P9341947877631793274

`A252719(A152948(n+3))%A052197(n+1)`
-/

namespace A252721.P9341947877631793274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252719 (A152948 (n + 3)).toNat) (A052197 (n + 1))

end

end A252721.P9341947877631793274

namespace A252721

/-- `A252719(A152948(n+3))%A052197(n+1)` -/
def P9341947877631793274.Spec : Prop :=
  ∀ n, P9341947877631793274.a n = A252721 (n + 1)

end A252721

/-! ## A252721.P2021825816150406237

`or(A252719(A252752(2*(n+2))), A252743(n))`
-/

namespace A252721.P2021825816150406237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252719 (A252752 (2 * (n + 2))).toNat) (A252743 n)

end

end A252721.P2021825816150406237

namespace A252721

/-- `or(A252719(A252752(2*(n+2))), A252743(n))` -/
def P2021825816150406237.Spec : Prop :=
  ∀ n, P2021825816150406237.a n = A252721 (n + 1)

end A252721

/-!
# A252722: Number of (3+2) X (n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252722, the canonical program `A252722.P724923384929107228` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252722 has offset 1).

The definition of A252722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252722.P724923384929107228

`a(n-2)+2*a(n-3)-2*a(n-5)` with `a(0)=54, a(1)=56, a(2)=62, a(3)=70, a(4)=86, a(5)=110`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252722

/-- `a(n-2)+2*a(n-3)-2*a(n-5)` -/
def P724923384929107228.Spec : Prop :=
  ∀ n, P724923384929107228.a n = A252722 (n + 1)

theorem P724923384929107228.correct : P724923384929107228.Spec := by
  intro n
  simp only [A252722, Nat.add_sub_cancel]

end A252722

/-! ## A252722.P2171455608780907323

`A252719(∑[n+2]+4)`
-/

namespace A252722.P2171455608780907323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252722.P2171455608780907323

namespace A252722

/-- `A252719(∑[n+2]+4)` -/
def P2171455608780907323.Spec : Prop :=
  ∀ n, P2171455608780907323.a n = A252722 (n + 1)

end A252722

/-! ## A252722.P1536529069880230872

`lcm(2, A252719(A167614(n+1)))`
-/

namespace A252722.P1536529069880230872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252719 (A167614 (n + 1)).toNat)

end

end A252722.P1536529069880230872

namespace A252722

/-- `lcm(2, A252719(A167614(n+1)))` -/
def P1536529069880230872.Spec : Prop :=
  ∀ n, (P1536529069880230872.a n : ℤ) = A252722 (n + 1)

end A252722

/-! ## A252722.P1468027043907028524

`A252719(A167614(n+1))+A025439(n)`
-/

namespace A252722.P1468027043907028524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A167614 (n + 1)).toNat + A025439 n

end

end A252722.P1468027043907028524

namespace A252722

/-- `A252719(A167614(n+1))+A025439(n)` -/
def P1468027043907028524.Spec : Prop :=
  ∀ n, P1468027043907028524.a n = A252722 (n + 1)

end A252722

/-! ## A252722.P6784188252338783144

`A252719(A167614(n+1))%A033447(n+1)`
-/

namespace A252722.P6784188252338783144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252719 (A167614 (n + 1)).toNat) (A033447 (n + 1))

end

end A252722.P6784188252338783144

namespace A252722

/-- `A252719(A167614(n+1))%A033447(n+1)` -/
def P6784188252338783144.Spec : Prop :=
  ∀ n, P6784188252338783144.a n = A252722 (n + 1)

end A252722

/-!
# A252723: Number of (4+2) X (n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252723, there is no canonical definition to state claims against.
-/

/-! ## A252723.P12781551663955560076

`A252719(∑[n+3]+7)`
-/

namespace A252723.P12781551663955560076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252723.P12781551663955560076

/-! ## A252723.P11047622269680766319

`or(char[30], A252719(A052905(n)+9))`
-/

namespace A252723.P11047622269680766319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252719 (A052905 n + 9).toNat)

end

end A252723.P11047622269680766319

/-! ## A252723.P11640916369680078237

`and(-3, A252719(A167614(n+2)+1))`
-/

namespace A252723.P11640916369680078237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A252719 (A167614 (n + 2) + 1).toNat)

end

end A252723.P11640916369680078237

/-! ## A252723.P935715735943836120

`or(char[3], A252719(A000217(n+3)+4))`
-/

namespace A252723.P935715735943836120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252719 (A000217 (n + 3) + 4).toNat)

end

end A252723.P935715735943836120

/-! ## A252723.P15683390103724743734

`A007318(C(n, 2))*A252719(A052905(n)+9)`
-/

namespace A252723.P15683390103724743734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252719 (A052905 n + 9).toNat

end

end A252723.P15683390103724743734

/-!
# A252724: Number of (5+2) X (n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252724, there is no canonical definition to state claims against.
-/

/-! ## A252724.P18049585303709297922

`A252719(A167499(n+3))`
-/

namespace A252724.P18049585303709297922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A167499 (n + 3)).toNat

end

end A252724.P18049585303709297922

/-! ## A252724.P17623231430274997036

`A252719(A155212(n)+13)`
-/

namespace A252724.P17623231430274997036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A155212 n + 13).toNat

end

end A252724.P17623231430274997036

/-! ## A252724.P3726858320968856837

`A252719(A056000(n)+15)`
-/

namespace A252724.P3726858320968856837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A056000 n + 15).toNat

end

end A252724.P3726858320968856837

/-! ## A252724.P12996628863820000840

`A252719(A167614(n+3)+2)`
-/

namespace A252724.P12996628863820000840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A167614 (n + 3) + 2).toNat

end

end A252724.P12996628863820000840

/-! ## A252724.P12512872288158060517

`A252719(A000124(n+4)+4)`
-/

namespace A252724.P12512872288158060517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A000124 (n + 4) + 4).toNat

end

end A252724.P12512872288158060517

/-!
# A252725: Number of (6+2) X (n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252725, there is no canonical definition to state claims against.
-/

/-! ## A252725.P11820452728426880774

`A252719(∑[n+5]+16)`
-/

namespace A252725.P11820452728426880774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252725.P11820452728426880774

/-! ## A252725.P2648936013951650350

`or(2*char[1], A252719(A166136(n+4)))`
-/

namespace A252725.P2648936013951650350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A252719 (A166136 (n + 4)).toNat)

end

end A252725.P2648936013951650350

/-! ## A252725.P1552220939798316443

`-or(2, -A252719(A253145(n+4)+6))`
-/

namespace A252725.P1552220939798316443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-A252719 (A253145 (n + 4) + 6).toNat)

end

end A252725.P1552220939798316443

/-! ## A252725.P644955795147887766

`A007318(C(n, 2))*A252719(A166136(n+4))`
-/

namespace A252725.P644955795147887766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252719 (A166136 (n + 4)).toNat

end

end A252725.P644955795147887766

/-! ## A252725.P3809733786447190323

`A000041(and(1, -n))*A252719(A166136(n+4))`
-/

namespace A252725.P3809733786447190323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A252719 (A166136 (n + 4)).toNat

end

end A252725.P3809733786447190323

/-!
# A252726: Number of (7+2) X (n+2) 0..3 arrays with every consecutive three elements in every row and diagonal having exactly two distinct values, and in every column and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252726, there is no canonical definition to state claims against.
-/

/-! ## A252726.P15641830043456125700

`A252719(A167487(n+5))`
-/

namespace A252726.P15641830043456125700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A167487 (n + 5)).toNat

end

end A252726.P15641830043456125700

/-! ## A252726.P13710276546561869289

`A252719(A056119(n)+28)`
-/

namespace A252726.P13710276546561869289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A056119 n + 28).toNat

end

end A252726.P13710276546561869289

/-! ## A252726.P17569485260058498146

`A252719(A167499(n+5)+2)`
-/

namespace A252726.P17569485260058498146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A167499 (n + 5) + 2).toNat

end

end A252726.P17569485260058498146

/-! ## A252726.P1751273976883420578

`A252719(A167614(n+5)+4)`
-/

namespace A252726.P1751273976883420578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A167614 (n + 5) + 4).toNat

end

end A252726.P1751273976883420578

/-! ## A252726.P371736008907016488

`A252719(A000124(n+6)+6)`
-/

namespace A252726.P371736008907016488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252719 (A000124 (n + 6) + 6).toNat

end

end A252726.P371736008907016488

/-!
# A252727: a(n) = n-th number of the n-th iteration of the hyperbinomial transform on sequence A001858 (number of forests of trees on n labeled nodes).

The programs for A252727, there is no canonical definition to state claims against.
-/

/-! ## A252727.P4271415866493247821

`A144304(∑[4*n])`
-/

namespace A252727.P4271415866493247821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252727.P4271415866493247821

/-! ## A252727.P6259862559548429525

`record[A144304(A226725(n+1))]`
-/

namespace A252727.P6259862559548429525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252727.P6259862559548429525

/-! ## A252727.P2436002424764455410

`record[A003982(n)*A144304(n)]`
-/

namespace A252727.P2436002424764455410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A144304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252727.P2436002424764455410

/-! ## A252727.P4413890811255537661

`record[A144304(n)*A203994(n+1)]`
-/

namespace A252727.P4413890811255537661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 n * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252727.P4413890811255537661

/-! ## A252727.P9567139827149510974

`record[A144304(gcd(n, A323376(n+1)))]`
-/

namespace A252727.P9567139827149510974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144304 (Int.gcd (n : ℤ) (A323376 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252727.P9567139827149510974

/-!
# A252730: a(n) = P_n(n) with P_0(z) = z+1 and P_n(z) = z + P_{n-1}(z)*(P_{n-1}(z)-z) for n>1.

The programs for A252730, there is no canonical definition to state claims against.
-/

/-! ## A252730.P8855024137843788340

`A177888(∑[4*n])`
-/

namespace A252730.P8855024137843788340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252730.P8855024137843788340

/-!
# A252732: In view of their definitions, let us refer to A251964 as sequence "5", A252280 as sequence "7", and similarly define sequence "prime(n)"; a(n) is the third term of the intersection of sequences "5", ..., "prime(n)".

The programs for A252732, there is no canonical definition to state claims against.
-/

/-! ## A252732.P1798906139880410540

`A103783(A336619(n))+2`
-/

namespace A252732.P1798906139880410540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103783 (A336619 n).toNat + 2

end

end A252732.P1798906139880410540

/-! ## A252732.P610205019196416115

`A293712(or(3, A080877(n)))`
-/

namespace A252732.P610205019196416115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293712 (Int.lor 3 (A080877 n)).toNat

end

end A252732.P610205019196416115

/-!
# A252735: a(1) = 0; for n > 1: a(2n) = a(n), a(2n+1) = 1 + a(A064989(n)).

The programs for A252735, the canonical program `A252735.P7279640988574489034` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252735 has offset 1).

The definition of A252735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252735.P7279640988574489034

`A080791(A156552(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A252735

/-- `A080791(A156552(n+1))` -/
def P7279640988574489034.Spec : Prop :=
  ∀ n, P7279640988574489034.a n = A252735 (n + 1)

theorem P7279640988574489034.correct : P7279640988574489034.Spec := by
  intro n
  simp only [A252735, Nat.add_sub_cancel]

end A252735

/-! ## A252735.P17744540865269118724

`A297167(∏{p}[n+1, #])`
-/

namespace A252735.P17744540865269118724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A252735.P17744540865269118724

namespace A252735

/-- `A297167(∏{p}[n+1, #])` -/
def P17744540865269118724.Spec : Prop :=
  ∀ n, P17744540865269118724.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P4824281180950608500

`A061395(2*(n+1))-1`
-/

namespace A252735.P4824281180950608500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1)) - 1

end

end A252735.P4824281180950608500

namespace A252735

/-- `A061395(2*(n+1))-1` -/
def P4824281180950608500.Spec : Prop :=
  ∀ n, P4824281180950608500.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P5590758580110647924

`(A061395(n+1)-1)%(n+1)`
-/

namespace A252735.P5590758580110647924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1) - 1) (n + 1 : ℤ)

end

end A252735.P5590758580110647924

namespace A252735

/-- `(A061395(n+1)-1)%(n+1)` -/
def P5590758580110647924.Spec : Prop :=
  ∀ n, P5590758580110647924.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P4550338513959892720

`(n-A243291(n+1))*ceil(acot(n-1))`
-/

namespace A252735.P4550338513959892720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A243291 (n + 1)) * ⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉

end

end A252735.P4550338513959892720

namespace A252735

/-- `(n-A243291(n+1))*ceil(acot(n-1))` -/
def P4550338513959892720.Spec : Prop :=
  ∀ n, P4550338513959892720.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P6965056879657687669

`A285715(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A252735.P6965056879657687669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A252735.P6965056879657687669

namespace A252735

/-- `A285715(floor(n/(xor(n, n+1)+1))+1)` -/
def P6965056879657687669.Spec : Prop :=
  ∀ n, P6965056879657687669.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P15230458552062200859

`A033270(A006530(n+1))`
-/

namespace A252735.P15230458552062200859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A006530 (n + 1)).toNat

end

end A252735.P15230458552062200859

namespace A252735

/-- `A033270(A006530(n+1))` -/
def P15230458552062200859.Spec : Prop :=
  ∀ n, P15230458552062200859.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P7480017907609348634

`A000720(A070777(n+1))`
-/

namespace A252735.P7480017907609348634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070777 (n + 1)).toNat

end

end A252735.P7480017907609348634

namespace A252735

/-- `A000720(A070777(n+1))` -/
def P7480017907609348634.Spec : Prop :=
  ∀ n, P7480017907609348634.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P11240595640224760614

`A000720(A117364(n+1))`
-/

namespace A252735.P11240595640224760614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A117364 (n + 1)).toNat

end

end A252735.P11240595640224760614

namespace A252735

/-- `A000720(A117364(n+1))` -/
def P11240595640224760614.Spec : Prop :=
  ∀ n, P11240595640224760614.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P4044676299325715483

`A061395(A064989(n+1))`
-/

namespace A252735.P4044676299325715483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064989 (n + 1)).toNat

end

end A252735.P4044676299325715483

namespace A252735

/-- `A061395(A064989(n+1))` -/
def P4044676299325715483.Spec : Prop :=
  ∀ n, P4044676299325715483.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P8143977456881012764

`A079067(A053585(n+1))`
-/

namespace A252735.P8143977456881012764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A053585 (n + 1)).toNat

end

end A252735.P8143977456881012764

namespace A252735

/-- `A079067(A053585(n+1))` -/
def P8143977456881012764.Spec : Prop :=
  ∀ n, P8143977456881012764.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P18299902637303773028

`A033270(A111089(n+1))`
-/

namespace A252735.P18299902637303773028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A111089 (n + 1)).toNat

end

end A252735.P18299902637303773028

namespace A252735

/-- `A033270(A111089(n+1))` -/
def P18299902637303773028.Spec : Prop :=
  ∀ n, P18299902637303773028.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P9715248283409883844

`A084360(A117366(n+1))`
-/

namespace A252735.P9715248283409883844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A117366 (n + 1)).toNat

end

end A252735.P9715248283409883844

namespace A252735

/-- `A084360(A117366(n+1))` -/
def P9715248283409883844.Spec : Prop :=
  ∀ n, P9715248283409883844.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P17821583572611560037

`A285715(A003602(n+1))`
-/

namespace A252735.P17821583572611560037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (A003602 (n + 1)).toNat

end

end A252735.P17821583572611560037

namespace A252735

/-- `A285715(A003602(n+1))` -/
def P17821583572611560037.Spec : Prop :=
  ∀ n, P17821583572611560037.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P4647405249607927208

`A297167(A007947(n+1))`
-/

namespace A252735.P4647405249607927208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A007947 (n + 1)).toNat

end

end A252735.P4647405249607927208

namespace A252735

/-- `A297167(A007947(n+1))` -/
def P4647405249607927208.Spec : Prop :=
  ∀ n, P4647405249607927208.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P13452274412862777747

`A289207(A061395(n+1)+1)`
-/

namespace A252735.P13452274412862777747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A061395 (n + 1) + 1).toNat

end

end A252735.P13452274412862777747

namespace A252735

/-- `A289207(A061395(n+1)+1)` -/
def P13452274412862777747.Spec : Prop :=
  ∀ n, P13452274412862777747.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P9768584678713182850

`A230980(A006530(n+1)-1)`
-/

namespace A252735.P9768584678713182850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A006530 (n + 1) - 1).toNat

end

end A252735.P9768584678713182850

namespace A252735

/-- `A230980(A006530(n+1)-1)` -/
def P9768584678713182850.Spec : Prop :=
  ∀ n, P9768584678713182850.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P7346483372694836844

`A023443(A061395(2*(n+1)))`
-/

namespace A252735.P7346483372694836844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A061395 (2 * (n + 1))).toNat

end

end A252735.P7346483372694836844

namespace A252735

/-- `A023443(A061395(2*(n+1)))` -/
def P7346483372694836844.Spec : Prop :=
  ∀ n, P7346483372694836844.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P4550926616538228399

`A079067(A006530(2*(n+1)))`
-/

namespace A252735.P4550926616538228399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A006530 (2 * (n + 1))).toNat

end

end A252735.P4550926616538228399

namespace A252735

/-- `A079067(A006530(2*(n+1)))` -/
def P4550926616538228399.Spec : Prop :=
  ∀ n, P4550926616538228399.a n = A252735 (n + 1)

end A252735

/-! ## A252735.P2398866596546006603

`A297173(2*A006530(n+1))`
-/

namespace A252735.P2398866596546006603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (2 * A006530 (n + 1)).toNat

end

end A252735.P2398866596546006603

namespace A252735

/-- `A297173(2*A006530(n+1))` -/
def P2398866596546006603.Spec : Prop :=
  ∀ n, P2398866596546006603.a n = A252735 (n + 1)

end A252735

/-!
# A252736: a(1) = a(2) = 0; for n > 2: a(2n) = 1 + a(n), a(2n+1) = a(A064989(2n+1)).

The programs for A252736, the canonical program `A252736.P2865412191134230649` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252736 has offset 1).

The definition of A252736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252736.P15775683899725067382

`A080791(A243071(n+1))`
-/

namespace A252736.P15775683899725067382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A243071 (n + 1)).toNat

end

end A252736.P15775683899725067382

namespace A252736

/-- `A080791(A243071(n+1))` -/
def P15775683899725067382.Spec : Prop :=
  ∀ n, P15775683899725067382.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P17726521934667999705

`floor(log(cosh(∑{e}[n+1, #])))`
-/

namespace A252736.P17726521934667999705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A252736.P17726521934667999705

namespace A252736

/-- `floor(log(cosh(∑{e}[n+1, #])))` -/
def P17726521934667999705.Spec : Prop :=
  ∀ n, P17726521934667999705.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P5669560489660540391

`round(log(cosh(∑{e}[n+1, #])))`
-/

namespace A252736.P5669560489660540391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A252736.P5669560489660540391

namespace A252736

/-- `round(log(cosh(∑{e}[n+1, #])))` -/
def P5669560489660540391.Spec : Prop :=
  ∀ n, P5669560489660540391.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P2865412191134230649

`∑{e}[abs(1-n)+2, #]-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252736

/-- `∑{e}[abs(1-n)+2, #]-1` -/
def P2865412191134230649.Spec : Prop :=
  ∀ n, P2865412191134230649.a n = A252736 (n + 1)

theorem P2865412191134230649.correct : P2865412191134230649.Spec := by
  intro n
  simp only [A252736, Nat.add_sub_cancel]

end A252736

/-! ## A252736.P11851922992246998868

`floor(∑{e}[n+1, #-1/n])`
-/

namespace A252736.P11851922992246998868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) - 1 / (n : ℚ))⌋

end

end A252736.P11851922992246998868

namespace A252736

/-- `floor(∑{e}[n+1, #-1/n])` -/
def P11851922992246998868.Spec : Prop :=
  ∀ n, P11851922992246998868.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P17226389219926086127

`(∑{e}[n+1, #]-1)%(n+1)`
-/

namespace A252736.P17226389219926086127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A252736.P17226389219926086127

namespace A252736

/-- `(∑{e}[n+1, #]-1)%(n+1)` -/
def P17226389219926086127.Spec : Prop :=
  ∀ n, P17226389219926086127.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P15280729531774026487

`round(∑{e}[n+1, #]-2*n/(2*n+1))`
-/

namespace A252736.P15280729531774026487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) - (2 * n : ℚ) / (2 * n + 1 : ℚ))

end

end A252736.P15280729531774026487

namespace A252736

/-- `round(∑{e}[n+1, #]-2*n/(2*n+1))` -/
def P15280729531774026487.Spec : Prop :=
  ∀ n, P15280729531774026487.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P17967450416342665080

`A086436(n+1)-1`
-/

namespace A252736.P17967450416342665080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) - 1

end

end A252736.P17967450416342665080

namespace A252736

/-- `A086436(n+1)-1` -/
def P17967450416342665080.Spec : Prop :=
  ∀ n, P17967450416342665080.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P1570403508459149818

`val(A331188(n+1), 2)`
-/

namespace A252736.P1570403508459149818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A331188 (n + 1)).toNat 2

end

end A252736.P1570403508459149818

namespace A252736

/-- `val(A331188(n+1), 2)` -/
def P1570403508459149818.Spec : Prop :=
  ∀ n, (P1570403508459149818.a n : ℤ) = A252736 (n + 1)

end A252736

/-! ## A252736.P15742335131995536447

`n%A069345(n+1)`
-/

namespace A252736.P15742335131995536447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A069345 (n + 1))

end

end A252736.P15742335131995536447

namespace A252736

/-- `n%A069345(n+1)` -/
def P15742335131995536447.Spec : Prop :=
  ∀ n, P15742335131995536447.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P8469156239252788102

`∑{e}[A032742(n+1), #]`
-/

namespace A252736.P8469156239252788102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A252736.P8469156239252788102

namespace A252736

/-- `∑{e}[A032742(n+1), #]` -/
def P8469156239252788102.Spec : Prop :=
  ∀ n, (P8469156239252788102.a n : ℤ) = A252736 (n + 1)

end A252736

/-! ## A252736.P13580385066800027990

`∑{e}[A052126(n+1), #]`
-/

namespace A252736.P13580385066800027990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A252736.P13580385066800027990

namespace A252736

/-- `∑{e}[A052126(n+1), #]` -/
def P13580385066800027990.Spec : Prop :=
  ∀ n, (P13580385066800027990.a n : ℤ) = A252736 (n + 1)

end A252736

/-! ## A252736.P4168940630999578127

`∑{e}[A079880(n+1), #]`
-/

namespace A252736.P4168940630999578127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A252736.P4168940630999578127

namespace A252736

/-- `∑{e}[A079880(n+1), #]` -/
def P4168940630999578127.Spec : Prop :=
  ∀ n, (P4168940630999578127.a n : ℤ) = A252736 (n + 1)

end A252736

/-! ## A252736.P10465050955237296792

`∑{e}[A094522(n+1), #]`
-/

namespace A252736.P10465050955237296792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A252736.P10465050955237296792

namespace A252736

/-- `∑{e}[A094522(n+1), #]` -/
def P10465050955237296792.Spec : Prop :=
  ∀ n, (P10465050955237296792.a n : ℤ) = A252736 (n + 1)

end A252736

/-! ## A252736.P13237836198574321098

`∑{e}[A246277(n+1), #]`
-/

namespace A252736.P13237836198574321098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A252736.P13237836198574321098

namespace A252736

/-- `∑{e}[A246277(n+1), #]` -/
def P13237836198574321098.Spec : Prop :=
  ∀ n, (P13237836198574321098.a n : ℤ) = A252736 (n + 1)

end A252736

/-! ## A252736.P4952329167888413281

`floor(log(cosh(A001222(n+1))))`
-/

namespace A252736.P4952329167888413281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A001222 (n + 1) : ℝ))⌋

end

end A252736.P4952329167888413281

namespace A252736

/-- `floor(log(cosh(A001222(n+1))))` -/
def P4952329167888413281.Spec : Prop :=
  ∀ n, P4952329167888413281.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P15014225782408143562

`∑{e}[A061142(n+1), #-1]`
-/

namespace A252736.P15014225782408143562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A252736.P15014225782408143562

namespace A252736

/-- `∑{e}[A061142(n+1), #-1]` -/
def P15014225782408143562.Spec : Prop :=
  ∀ n, P15014225782408143562.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P7702407159114597546

`∑{e}[A068794(n+1), #-1]`
-/

namespace A252736.P7702407159114597546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A252736.P7702407159114597546

namespace A252736

/-- `∑{e}[A068794(n+1), #-1]` -/
def P7702407159114597546.Spec : Prop :=
  ∀ n, P7702407159114597546.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P15138698488037588407

`A001222(abs(1-n)+2)-1`
-/

namespace A252736.P15138698488037588407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 2).toNat - 1

end

end A252736.P15138698488037588407

namespace A252736

/-- `A001222(abs(1-n)+2)-1` -/
def P15138698488037588407.Spec : Prop :=
  ∀ n, P15138698488037588407.a n = A252736 (n + 1)

end A252736

/-! ## A252736.P13495158190528943747

`(A001222(2*(n+1))-2)%(n+1)`
-/

namespace A252736.P13495158190528943747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (2 * (n + 1)) - 2) (n + 1 : ℤ)

end

end A252736.P13495158190528943747

namespace A252736

/-- `(A001222(2*(n+1))-2)%(n+1)` -/
def P13495158190528943747.Spec : Prop :=
  ∀ n, P13495158190528943747.a n = A252736 (n + 1)

end A252736

/-!
# A252737: Row sums of irregular tables A005940, A163511, and A332977.

The programs for A252737, there is no canonical definition to state claims against.
-/

/-! ## A252737.P2053488647036608343

`A220658(A225621(n+1))`
-/

namespace A252737.P2053488647036608343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A225621 (n + 1)).toNat

end

end A252737.P2053488647036608343

/-! ## A252737.P17839013174252351957

`floor(A186320(Δ[A005500(n)])/(n+1))`
-/

namespace A252737.P17839013174252351957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186320 (f1 (n + 1) - f1 n).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A252737.P17839013174252351957

/-!
# A252738: Row products of irregular table A005940: a(0) = 1; a(1) = 2; for n > 1: 2^(2^(n-2)) * a(n-1) * A003961(a(n-1)); also row products of A163511, A253563, A253565, and A332977.

The programs for A252738, there is no canonical definition to state claims against.
-/

/-! ## A252738.P12229714761512958671

`A267096(n-2)*a(n-1)²` with `a(0)=1, a(1)=2`
-/

namespace A252738.P12229714761512958671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A267096 (n - 2) * a (n - 1) ^ 2

end

end A252738.P12229714761512958671

/-! ## A252738.P3924752501643389892

`∏[A252740(n)]`
-/

namespace A252738.P3924752501643389892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A252738.P3924752501643389892

/-! ## A252738.P18361626343643255908

`n!*A252741(n)`
-/

namespace A252738.P18361626343643255908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A252741 n

end

end A252738.P18361626343643255908

/-!
# A252739: 

The programs for A252739, there is no canonical definition to state claims against.
-/

/-! ## A252739.P16818191766403763102

`A252738(n+1)/(n+1)`
-/

namespace A252739.P16818191766403763102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252738 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A252739.P16818191766403763102

/-!
# A252740: First quotients of A252738: a(0) = 1; for n >= 1, a(n) = A252738(n) / A252738(n-1).

The programs for A252740, there is no canonical definition to state claims against.
-/

/-! ## A252740.P13849590182070178133

`2^(n-2)*a(n-1)*A003961(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A252740.P13849590182070178133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * a (n - 1) * (A003961 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ)

end

end A252740.P13849590182070178133

/-!
# A252741: a(n) = A252738(n) / n!

The programs for A252741, there is no canonical definition to state claims against.
-/

/-! ## A252741.P7082697739162437930

`A252738(n)/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252741.P7082697739162437930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252738 n : ℚ) / (Nat.factorial n : ℚ)

end

end A252741.P7082697739162437930

/-! ## A252741.P10750661678958091794

`A252738(n)/A000142(n)`
-/

namespace A252741.P10750661678958091794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252738 n : ℚ) / (A000142 n : ℚ)

end

end A252741.P10750661678958091794

/-!
# A252742: Characteristic function of A246282: if A003961(n) > 2*n, then a(n) = 1, otherwise 0 (when A003961(n) < 2*n) [where A003961(n) shifts the prime factorization of n one step towards larger primes].

The programs for A252742, the canonical program `A252742.P12034946379470004791` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252742 has offset 1).

The definition of A252742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252742.P2170309100800320445

`ceil(acot(A252748(n+1)))`
-/

namespace A252742.P2170309100800320445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A252748 (n + 1) : ℝ)⌉

end

end A252742.P2170309100800320445

namespace A252742

/-- `ceil(acot(A252748(n+1)))` -/
def P2170309100800320445.Spec : Prop :=
  ∀ n, P2170309100800320445.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P4945266311617896966

`char[A246282(n+1)-1]`
-/

namespace A252742.P4945266311617896966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252742.P4945266311617896966

namespace A252742

/-- `char[A246282(n+1)-1]` -/
def P4945266311617896966.Spec : Prop :=
  ∀ n, (P4945266311617896966.a n : ℤ) = A252742 (n + 1)

end A252742

/-! ## A252742.P8522012454921733309

`char[lt[n, A336853(n+1)]]`
-/

namespace A252742.P8522012454921733309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252742.P8522012454921733309

namespace A252742

/-- `char[lt[n, A336853(n+1)]]` -/
def P8522012454921733309.Spec : Prop :=
  ∀ n, (P8522012454921733309.a n : ℤ) = A252742 (n + 1)

end A252742

/-! ## A252742.P12445994628865916543

`(n+2)%A378664(n+1)`
-/

namespace A252742.P12445994628865916543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A378664 (n + 1))

end

end A252742.P12445994628865916543

namespace A252742

/-- `(n+2)%A378664(n+1)` -/
def P12445994628865916543.Spec : Prop :=
  ∀ n, P12445994628865916543.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P10168305211741710501

`ceil(A337345(n+1)/(n+1))`
-/

namespace A252742.P10168305211741710501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337345 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A252742.P10168305211741710501

namespace A252742

/-- `ceil(A337345(n+1)/(n+1))` -/
def P10168305211741710501.Spec : Prop :=
  ∀ n, P10168305211741710501.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P15044022131664361913

`char[lt[n+1, A048673(n+1)]]`
-/

namespace A252742.P15044022131664361913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252742.P15044022131664361913

namespace A252742

/-- `char[lt[n+1, A048673(n+1)]]` -/
def P15044022131664361913.Spec : Prop :=
  ∀ n, (P15044022131664361913.a n : ℤ) = A252742 (n + 1)

end A252742

/-! ## A252742.P12034946379470004791

`1-round((n+1)/A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252742

/-- `1-round((n+1)/A003961(n+1))` -/
def P12034946379470004791.Spec : Prop :=
  ∀ n, P12034946379470004791.a n = A252742 (n + 1)

theorem P12034946379470004791.correct : P12034946379470004791.Spec := by
  intro n
  simp only [A252742, Nat.add_sub_cancel]

end A252742

/-! ## A252742.P5815920542540861407

`A057427(A337345(n+1))`
-/

namespace A252742.P5815920542540861407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A337345 (n + 1)).toNat

end

end A252742.P5815920542540861407

namespace A252742

/-- `A057427(A337345(n+1))` -/
def P5815920542540861407.Spec : Prop :=
  ∀ n, P5815920542540861407.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P6622117919813087868

`A049046(A378664(n+1))`
-/

namespace A252742.P6622117919813087868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049046 (A378664 (n + 1)).toNat

end

end A252742.P6622117919813087868

namespace A252742

/-- `A049046(A378664(n+1))` -/
def P6622117919813087868.Spec : Prop :=
  ∀ n, P6622117919813087868.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P16108523963577414322

`abs(A011597(A336836(n+1)))`
-/

namespace A252742.P16108523963577414322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011597 (A336836 (n + 1)).toNat|

end

end A252742.P16108523963577414322

namespace A252742

/-- `abs(A011597(A336836(n+1)))` -/
def P16108523963577414322.Spec : Prop :=
  ∀ n, P16108523963577414322.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P993237513487523281

`A011597(A336836(n+1)²)`
-/

namespace A252742.P993237513487523281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 (A336836 (n + 1) ^ 2).toNat

end

end A252742.P993237513487523281

namespace A252742

/-- `A011597(A336836(n+1)²)` -/
def P993237513487523281.Spec : Prop :=
  ∀ n, P993237513487523281.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P9034129808884117369

`A178334(2*A336836(n+1))`
-/

namespace A252742.P9034129808884117369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * A336836 (n + 1)).toNat

end

end A252742.P9034129808884117369

namespace A252742

/-- `A178334(2*A336836(n+1))` -/
def P9034129808884117369.Spec : Prop :=
  ∀ n, P9034129808884117369.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P2373543997591503212

`1-A267050(A336836(n+1)²)`
-/

namespace A252742.P2373543997591503212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267050 (A336836 (n + 1) ^ 2).toNat

end

end A252742.P2373543997591503212

namespace A252742

/-- `1-A267050(A336836(n+1)²)` -/
def P2373543997591503212.Spec : Prop :=
  ∀ n, P2373543997591503212.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P8796373208803684781

`A292438((A337345(n+1)+2)²)`
-/

namespace A252742.P8796373208803684781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 ((A337345 (n + 1) + 2) ^ 2).toNat

end

end A252742.P8796373208803684781

namespace A252742

/-- `A292438((A337345(n+1)+2)²)` -/
def P8796373208803684781.Spec : Prop :=
  ∀ n, P8796373208803684781.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P17439736813447383359

`ceil(A252748(n+1)/A152161(n))`
-/

namespace A252742.P17439736813447383359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252748 (n + 1) : ℚ) / (A152161 n : ℚ)⌉

end

end A252742.P17439736813447383359

namespace A252742

/-- `ceil(A252748(n+1)/A152161(n))` -/
def P17439736813447383359.Spec : Prop :=
  ∀ n, P17439736813447383359.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P15893186985980128484

`∑{d}[A337345(n+1), A008683(#²)]`
-/

namespace A252742.P15893186985980128484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 (d ^ 2)

end

end A252742.P15893186985980128484

namespace A252742

/-- `∑{d}[A337345(n+1), A008683(#²)]` -/
def P15893186985980128484.Spec : Prop :=
  ∀ n, P15893186985980128484.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P13906276140628859991

`∑{d}[A378662(n+1), A008683(#²)]`
-/

namespace A252742.P13906276140628859991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 (d ^ 2)

end

end A252742.P13906276140628859991

namespace A252742

/-- `∑{d}[A378662(n+1), A008683(#²)]` -/
def P13906276140628859991.Spec : Prop :=
  ∀ n, P13906276140628859991.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P12997048798099964656

`∑{d}[A337345(n+1), A069158(#²)]`
-/

namespace A252742.P12997048798099964656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069158 (d ^ 2)

end

end A252742.P12997048798099964656

namespace A252742

/-- `∑{d}[A337345(n+1), A069158(#²)]` -/
def P12997048798099964656.Spec : Prop :=
  ∀ n, P12997048798099964656.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P2980031581665203044

`∑{d}[A378662(n+1), A069158(#²)]`
-/

namespace A252742.P2980031581665203044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069158 (d ^ 2)

end

end A252742.P2980031581665203044

namespace A252742

/-- `∑{d}[A378662(n+1), A069158(#²)]` -/
def P2980031581665203044.Spec : Prop :=
  ∀ n, P2980031581665203044.a n = A252742 (n + 1)

end A252742

/-! ## A252742.P16289431291483896216

`∑{d}[A337345(n+1), A302050(#²)]`
-/

namespace A252742.P16289431291483896216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A302050 (d ^ 2)

end

end A252742.P16289431291483896216

namespace A252742

/-- `∑{d}[A337345(n+1), A302050(#²)]` -/
def P16289431291483896216.Spec : Prop :=
  ∀ n, P16289431291483896216.a n = A252742 (n + 1)

end A252742

/-!
# A252743: a(n) = A252742(A005940(1+n)).

The programs for A252743, the canonical program `A252743.P13320950522193927286` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252743 has offset 0).

The definition of A252743 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252743.P13320950522193927286

`A252742(A005940(1+n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A252743

/-- `A252742(A005940(1+n))` -/
def P13320950522193927286.Spec : Prop :=
  ∀ n, P13320950522193927286.a n = A252743 n

theorem P13320950522193927286.correct : P13320950522193927286.Spec := by
  intro n
  simp only [A252743]

end A252743

/-! ## A252743.P3643789541665163583

`char[lt[A005940(n+1), A244154(n)]]`
-/

namespace A252743.P3643789541665163583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A252743.P3643789541665163583

namespace A252743

/-- `char[lt[A005940(n+1), A244154(n)]]` -/
def P3643789541665163583.Spec : Prop :=
  ∀ n, (P3643789541665163583.a n : ℤ) = A252743 n

end A252743

/-! ## A252743.P17635282726979779832

`A252744(A053644(n)+A035327(n))`
-/

namespace A252743.P17635282726979779832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 (A053644 n + A035327 n).toNat

end

end A252743.P17635282726979779832

namespace A252743

/-- `A252744(A053644(n)+A035327(n))` -/
def P17635282726979779832.Spec : Prop :=
  ∀ n, P17635282726979779832.a n = A252743 n

end A252743

/-! ## A252743.P14611762565529021846

`A000007(round(A005940(n+1)/A005940(2*n+1)))`
-/

namespace A252743.P14611762565529021846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((A005940 (n + 1) : ℚ) / (A005940 (2 * n + 1) : ℚ))).toNat

end

end A252743.P14611762565529021846

namespace A252743

/-- `A000007(round(A005940(n+1)/A005940(2*n+1)))` -/
def P14611762565529021846.Spec : Prop :=
  ∀ n, P14611762565529021846.a n = A252743 n

end A252743

/-! ## A252743.P12107111898441257674

`A339404(round(A005940(n+1)/A005940(2*n+1)))`
-/

namespace A252743.P12107111898441257674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 (SequenceMachineLib.roundAway ((A005940 (n + 1) : ℚ) / (A005940 (2 * n + 1) : ℚ))).toNat

end

end A252743.P12107111898441257674

namespace A252743

/-- `A339404(round(A005940(n+1)/A005940(2*n+1)))` -/
def P12107111898441257674.Spec : Prop :=
  ∀ n, P12107111898441257674.a n = A252743 n

end A252743

/-! ## A252743.P1340816595416953634

`char[A054429(eq[1, A252744(n)])]`
-/

namespace A252743.P1340816595416953634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252743.P1340816595416953634

namespace A252743

/-- `char[A054429(eq[1, A252744(n)])]` -/
def P1340816595416953634.Spec : Prop :=
  ∀ n, (P1340816595416953634.a n : ℤ) = A252743 n

end A252743

/-! ## A252743.P17636129927143427032

`A252744(A252744(11*n)+A054429(n+1))`
-/

namespace A252743.P17636129927143427032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 (A252744 (11 * n) + A054429 (n + 1)).toNat

end

end A252743.P17636129927143427032

namespace A252743

/-- `A252744(A252744(11*n)+A054429(n+1))` -/
def P17636129927143427032.Spec : Prop :=
  ∀ n, P17636129927143427032.a n = A252743 n

end A252743

/-! ## A252743.P6912400015277575635

`A057427(A337345(A005940(n+1)))`
-/

namespace A252743.P6912400015277575635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A337345 (A005940 (n + 1)).toNat).toNat

end

end A252743.P6912400015277575635

namespace A252743

/-- `A057427(A337345(A005940(n+1)))` -/
def P6912400015277575635.Spec : Prop :=
  ∀ n, P6912400015277575635.a n = A252743 n

end A252743

/-! ## A252743.P7404105501189606112

`ceil(A252748(A005940(n+1))/A000051(n))`
-/

namespace A252743.P7404105501189606112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252748 (A005940 (n + 1)).toNat : ℚ) / (A000051 n : ℚ)⌉

end

end A252743.P7404105501189606112

namespace A252743

/-- `ceil(A252748(A005940(n+1))/A000051(n))` -/
def P7404105501189606112.Spec : Prop :=
  ∀ n, P7404105501189606112.a n = A252743 n

end A252743

/-!
# A252744: a(n) = A252742(A163511(n)).

The programs for A252744, the canonical program `A252744.P2309875151662509228` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252744 has offset 0).

The definition of A252744 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252744.P2309875151662509228

`A252742(A163511(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A252744

/-- `A252742(A163511(n))` -/
def P2309875151662509228.Spec : Prop :=
  ∀ n, P2309875151662509228.a n = A252744 n

theorem P2309875151662509228.correct : P2309875151662509228.Spec := by
  intro n
  simp only [A252744]

end A252744

/-! ## A252744.P3276533901666784864

`A252743(A092569(A033999(n)+n))`
-/

namespace A252744.P3276533901666784864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252743 (A092569 (A033999 n + (n : ℤ)).toNat).toNat

end

end A252744.P3276533901666784864

namespace A252744

/-- `A252743(A092569(A033999(n)+n))` -/
def P3276533901666784864.Spec : Prop :=
  ∀ n, P3276533901666784864.a n = A252744 n

end A252744

/-! ## A252744.P6015791245407461387

`A252743(A122155(n+1))`
-/

namespace A252744.P6015791245407461387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252743 (A122155 (n + 1)).toNat

end

end A252744.P6015791245407461387

namespace A252744

/-- `A252743(A122155(n+1))` -/
def P6015791245407461387.Spec : Prop :=
  ∀ n, P6015791245407461387.a n = A252744 n

end A252744

/-! ## A252744.P10034559119177129772

`A252743(A092569(2*n)/2)`
-/

namespace A252744.P10034559119177129772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252743 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A252744.P10034559119177129772

namespace A252744

/-- `A252743(A092569(2*n)/2)` -/
def P10034559119177129772.Spec : Prop :=
  ∀ n, P10034559119177129772.a n = A252744 n

end A252744

/-! ## A252744.P11230746666943830284

`char[A054429(eq[1, A252743(n)])]`
-/

namespace A252744.P11230746666943830284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252743 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252744.P11230746666943830284

namespace A252744

/-- `char[A054429(eq[1, A252743(n)])]` -/
def P11230746666943830284.Spec : Prop :=
  ∀ n, (P11230746666943830284.a n : ℤ) = A252744 n

end A252744

/-! ## A252744.P8376700491784732976

`A252743(A054429(n+1)+1)`
-/

namespace A252744.P8376700491784732976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252743 (A054429 (n + 1) + 1).toNat

end

end A252744.P8376700491784732976

namespace A252744

/-- `A252743(A054429(n+1)+1)` -/
def P8376700491784732976.Spec : Prop :=
  ∀ n, P8376700491784732976.a n = A252744 n

end A252744

/-! ## A252744.P13164807948155795779

`ceil(A337345(A163511(n))/A002522(n))`
-/

namespace A252744.P13164807948155795779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337345 (A163511 n).toNat : ℚ) / (A002522 n : ℚ)⌉

end

end A252744.P13164807948155795779

namespace A252744

/-- `ceil(A337345(A163511(n))/A002522(n))` -/
def P13164807948155795779.Spec : Prop :=
  ∀ n, P13164807948155795779.a n = A252744 n

end A252744

/-! ## A252744.P1239047041853231826

`ceil(A337345(A163511(n))/A003215(n))`
-/

namespace A252744.P1239047041853231826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337345 (A163511 n).toNat : ℚ) / (A003215 n : ℚ)⌉

end

end A252744.P1239047041853231826

namespace A252744

/-- `ceil(A337345(A163511(n))/A003215(n))` -/
def P1239047041853231826.Spec : Prop :=
  ∀ n, P1239047041853231826.a n = A252744 n

end A252744

/-! ## A252744.P16452709335909968957

`ceil(A337345(A163511(n))/A005408(n))`
-/

namespace A252744.P16452709335909968957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337345 (A163511 n).toNat : ℚ) / (A005408 n : ℚ)⌉

end

end A252744.P16452709335909968957

namespace A252744

/-- `ceil(A337345(A163511(n))/A005408(n))` -/
def P16452709335909968957.Spec : Prop :=
  ∀ n, P16452709335909968957.a n = A252744 n

end A252744

/-! ## A252744.P13360259371570988207

`A252742(A005940(A054429(n+1)+2))`
-/

namespace A252744.P13360259371570988207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A005940 (A054429 (n + 1) + 2).toNat).toNat

end

end A252744.P13360259371570988207

namespace A252744

/-- `A252742(A005940(A054429(n+1)+2))` -/
def P13360259371570988207.Spec : Prop :=
  ∀ n, P13360259371570988207.a n = A252744 n

end A252744

/-!
# A252745: Number of ones on each row of irregular tables A252743 and A252744.

The programs for A252745, there is no canonical definition to state claims against.
-/

/-! ## A252745.P18230991967140023616

`ceil(2^(n-1))-A252746(n)`
-/

namespace A252745.P18230991967140023616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A252746 n

end

end A252745.P18230991967140023616

/-! ## A252745.P14992274465561868822

`abs(A011782(n)-A252746(n))`
-/

namespace A252745.P14992274465561868822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A252746 n|

end

end A252745.P14992274465561868822

/-! ## A252745.P14772804498410983129

`A332726(n)-A262611(A332726(n))`
-/

namespace A252745.P14772804498410983129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 n - A262611 (A332726 n).toNat

end

end A252745.P14772804498410983129

/-!
# A252746: Number of zeros on each row of irregular tables A252743 and A252744.

The programs for A252746, there is no canonical definition to state claims against.
-/

/-! ## A252746.P11113873481050335709

`ceil(2^(n-1)-A252745(n))`
-/

namespace A252746.P11113873481050335709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A252745 n : ℚ)⌉

end

end A252746.P11113873481050335709

/-! ## A252746.P7986318940647987278

`A011782(n)-A252745(n)`
-/

namespace A252746.P7986318940647987278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A252745 n

end

end A252746.P7986318940647987278

/-! ## A252746.P14966593621782531442

`abs(A123344(n))-A252745(n)`
-/

namespace A252746.P14966593621782531442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123344 n| - A252745 n

end

end A252746.P14966593621782531442

/-! ## A252746.P3071876371863496513

`∑[A034008(n)]-A252745(n)`
-/

namespace A252746.P3071876371863496513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A252745 n

end

end A252746.P3071876371863496513

/-! ## A252746.P6347760534295265474

`Δ[A056469(n)]-A252745(n)`
-/

namespace A252746.P6347760534295265474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A252745 n

end

end A252746.P6347760534295265474

/-!
# A252747: Numbers n such that the hexagonal number H(n) is equal to the sum of four consecutive squares.

The programs for A252747, there is no canonical definition to state claims against.
-/

/-! ## A252747.P16406756402237197994

`ceil(A201632(n+1)/2)`
-/

namespace A252747.P16406756402237197994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201632 (n + 1) : ℚ) / 2⌉

end

end A252747.P16406756402237197994

/-! ## A252747.P4933618901687773725

`∑{e}[A000040(n+1)², (A201632(n+1)+1)/#]`
-/

namespace A252747.P4933618901687773725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A201632 (n + 1) + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A252747.P4933618901687773725

/-! ## A252747.P1847679747954820884

`(A201632(n+1)-A008683(A007918(n)))/2`
-/

namespace A252747.P1847679747954820884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201632 (n + 1) - A008683 (A007918 n).toNat : ℚ) / 2

end

end A252747.P1847679747954820884

/-!
# A252748: a(n) = A003961(n) - 2*n.

The programs for A252748, the canonical program `A252748.P16209281916487994805` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252748 has offset 1).

The definition of A252748 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A252750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252748.P2216043875100614995

`A003961(n+1)-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252748.P2216043875100614995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (2 * (n + 1) : ℤ)

end

end A252748.P2216043875100614995

namespace A252748

/-- `A003961(n+1)-2*(n+1)` -/
def P2216043875100614995.Spec : Prop :=
  ∀ n, P2216043875100614995.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P9575255882707867943

`A286385(n+1)-A033879(n+1)`
-/

namespace A252748.P9575255882707867943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) - A033879 (n + 1)

end

end A252748.P9575255882707867943

namespace A252748

/-- `A286385(n+1)-A033879(n+1)` -/
def P9575255882707867943.Spec : Prop :=
  ∀ n, P9575255882707867943.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P16209281916487994805

`A252750(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A252748

/-- `A252750(A156552(n+1))` -/
def P16209281916487994805.Spec : Prop :=
  ∀ n, P16209281916487994805.a n = A252748 (n + 1)

theorem P16209281916487994805.correct : P16209281916487994805.Spec := by
  intro n
  simp only [A252748, Nat.add_sub_cancel]

end A252748

/-! ## A252748.P8889506788072021041

`Δ[A252749(n)]`
-/

namespace A252748.P8889506788072021041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A252748.P8889506788072021041

namespace A252748

/-- `Δ[A252749(n)]` -/
def P8889506788072021041.Spec : Prop :=
  ∀ n, P8889506788072021041.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P9644026701223078947

`∑{d}[n+1, A349754(#)]`
-/

namespace A252748.P9644026701223078947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349754 d

end

end A252748.P9644026701223078947

namespace A252748

/-- `∑{d}[n+1, A349754(#)]` -/
def P9644026701223078947.Spec : Prop :=
  ∀ n, P9644026701223078947.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P14508926814004989331

`A253885(n)-Δ[n²]`
-/

namespace A252748.P14508926814004989331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A252748.P14508926814004989331

namespace A252748

/-- `A253885(n)-Δ[n²]` -/
def P14508926814004989331.Spec : Prop :=
  ∀ n, P14508926814004989331.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P15064258764574309347

`2*A349573(n+1)-1`
-/

namespace A252748.P15064258764574309347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349573 (n + 1) - 1

end

end A252748.P15064258764574309347

namespace A252748

/-- `2*A349573(n+1)-1` -/
def P15064258764574309347.Spec : Prop :=
  ∀ n, P15064258764574309347.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P11379446649687384341

`A336853(n+1)-(n+1)`
-/

namespace A252748.P11379446649687384341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - (n + 1 : ℤ)

end

end A252748.P11379446649687384341

namespace A252748

/-- `A336853(n+1)-(n+1)` -/
def P11379446649687384341.Spec : Prop :=
  ∀ n, P11379446649687384341.a n = A252748 (n + 1)

theorem P11379446649687384341.correct : P11379446649687384341.Spec := by
  intro n
  simp only [A252748, Nat.add_sub_cancel, A252748.P11379446649687384341.a, A252748.P16209281916487994805.a, A156552, A156552.P4268073137713085227.a, A252750, A252750.P12930142929614438506.a, A336853, A336853.P1645042944242011250.a, A005940, A005940.P5942875842694471387.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A364557, A364557.P16113127302810243144.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A252748

/-! ## A252748.P18176929447541034285

`A243501(n+1)-(2*n+3)`
-/

namespace A252748.P18176929447541034285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - (2 * n + 3 : ℤ)

end

end A252748.P18176929447541034285

namespace A252748

/-- `A243501(n+1)-(2*n+3)` -/
def P18176929447541034285.Spec : Prop :=
  ∀ n, P18176929447541034285.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P8271942173610966757

`2*(A048673(n+1)-(n+1))-1`
-/

namespace A252748.P8271942173610966757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048673 (n + 1) - (n + 1 : ℤ)) - 1

end

end A252748.P8271942173610966757

namespace A252748

/-- `2*(A048673(n+1)-(n+1))-1` -/
def P8271942173610966757.Spec : Prop :=
  ∀ n, P8271942173610966757.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P14203213234819750451

`A252749(n+1)-A252749(n)`
-/

namespace A252748.P14203213234819750451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 (n + 1) - A252749 n

end

end A252748.P14203213234819750451

namespace A252748

/-- `A252749(n+1)-A252749(n)` -/
def P14203213234819750451.Spec : Prop :=
  ∀ n, P14203213234819750451.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P11152780863790515534

`A286385(n+1)+A033880(n+1)`
-/

namespace A252748.P11152780863790515534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) + A033880 (n + 1)

end

end A252748.P11152780863790515534

namespace A252748

/-- `A286385(n+1)+A033880(n+1)` -/
def P11152780863790515534.Spec : Prop :=
  ∀ n, P11152780863790515534.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P10839609327157082340

`A280692(n+1)-A346476(n+1)`
-/

namespace A252748.P10839609327157082340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280692 (n + 1) - A346476 (n + 1)

end

end A252748.P10839609327157082340

namespace A252748

/-- `A280692(n+1)-A346476(n+1)` -/
def P10839609327157082340.Spec : Prop :=
  ∀ n, P10839609327157082340.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P15852883088639422197

`A346248(n+1)-A346250(n+1)`
-/

namespace A252748.P15852883088639422197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (n + 1) - A346250 (n + 1)

end

end A252748.P15852883088639422197

namespace A252748

/-- `A346248(n+1)-A346250(n+1)` -/
def P15852883088639422197.Spec : Prop :=
  ∀ n, P15852883088639422197.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P12127730996068535522

`A045965(n+1)-A051755(n+2)`
-/

namespace A252748.P12127730996068535522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) - A051755 (n + 2)

end

end A252748.P12127730996068535522

namespace A252748

/-- `A045965(n+1)-A051755(n+2)` -/
def P12127730996068535522.Spec : Prop :=
  ∀ n, P12127730996068535522.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P11049707549413479101

`A253885(n)-1-xor(n, A048724(n))`
-/

namespace A252748.P11049707549413479101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n - 1 - Int.xor (n : ℤ) (A048724 n)

end

end A252748.P11049707549413479101

namespace A252748

/-- `A253885(n)-1-xor(n, A048724(n))` -/
def P11049707549413479101.Spec : Prop :=
  ∀ n, P11049707549413479101.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P15780366156906216411

`∑{d}[n+1, A033880(#)*A378754((n+1)/#)]`
-/

namespace A252748.P15780366156906216411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033880 d * A378754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A252748.P15780366156906216411

namespace A252748

/-- `∑{d}[n+1, A033880(#)*A378754((n+1)/#)]` -/
def P15780366156906216411.Spec : Prop :=
  ∀ n, P15780366156906216411.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P7070023931844683300

`A280692(n+1)+A346477(n+1)-A346478(n+1)`
-/

namespace A252748.P7070023931844683300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280692 (n + 1) + (A346477 (n + 1) - A346478 (n + 1))

end

end A252748.P7070023931844683300

namespace A252748

/-- `A280692(n+1)+A346477(n+1)-A346478(n+1)` -/
def P7070023931844683300.Spec : Prop :=
  ∀ n, P7070023931844683300.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P2007865859664299917

`A286385(n+1)-(A346476(n+1)+A346473(n+1))`
-/

namespace A252748.P2007865859664299917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) - (A346476 (n + 1) + A346473 (n + 1))

end

end A252748.P2007865859664299917

namespace A252748

/-- `A286385(n+1)-(A346476(n+1)+A346473(n+1))` -/
def P2007865859664299917.Spec : Prop :=
  ∀ n, P2007865859664299917.a n = A252748 (n + 1)

end A252748

/-! ## A252748.P279479089132590921

`A286385(n+1)+A349573(n+1)-A378747(n+1)`
-/

namespace A252748.P279479089132590921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) + (A349573 (n + 1) - A378747 (n + 1))

end

end A252748.P279479089132590921

namespace A252748

/-- `A286385(n+1)+A349573(n+1)-A378747(n+1)` -/
def P279479089132590921.Spec : Prop :=
  ∀ n, P279479089132590921.a n = A252748 (n + 1)

end A252748

/-!
# A252749: Partial sums of A252748: a(0) = 0, a(n) = A252748(n) + a(n-1).

The programs for A252749, the canonical program `A252749.P15054942815197957636` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252749 has offset 0).

The definition of A252749 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252749.P15054942815197957636

`A252748(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252749

/-- `A252748(n)+a(n-1)` -/
def P15054942815197957636.Spec : Prop :=
  ∀ n, P15054942815197957636.a n = A252749 n

theorem P15054942815197957636.correct : P15054942815197957636.Spec := by
  intro n
  simp only [A252749]

end A252749

/-! ## A252749.P11172603776102708536

`a(n-1)+A336853(n)-n` with `a(0)=0`
-/

namespace A252749.P11172603776102708536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A336853 n - (n : ℤ))

end

end A252749.P11172603776102708536

namespace A252749

/-- `a(n-1)+A336853(n)-n` -/
def P11172603776102708536.Spec : Prop :=
  ∀ n, P11172603776102708536.a n = A252749 n

end A252749

/-! ## A252749.P10335603457676254622

`∑[A253885(n)]-(A253885(n)+n²)`
-/

namespace A252749.P10335603457676254622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A253885 n + (n ^ 2 : ℤ))

end

end A252749.P10335603457676254622

namespace A252749

/-- `∑[A253885(n)]-(A253885(n)+n²)` -/
def P10335603457676254622.Spec : Prop :=
  ∀ n, P10335603457676254622.a n = A252749 n

end A252749

/-! ## A252749.P11980771028081052318

`∑[A252748(n+1)]-A252748(n+1)`
-/

namespace A252749.P11980771028081052318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A252748 (n + 1)

end

end A252749.P11980771028081052318

namespace A252749

/-- `∑[A252748(n+1)]-A252748(n+1)` -/
def P11980771028081052318.Spec : Prop :=
  ∀ n, P11980771028081052318.a n = A252749 n

end A252749

/-! ## A252749.P5006770535637512447

`∑[A336853(n+1)-n]-A336853(n+1)`
-/

namespace A252749.P5006770535637512447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336853 (n + 1)

end

end A252749.P5006770535637512447

namespace A252749

/-- `∑[A336853(n+1)-n]-A336853(n+1)` -/
def P5006770535637512447.Spec : Prop :=
  ∀ n, P5006770535637512447.a n = A252749 n

end A252749

/-! ## A252749.P14968869538454102175

`∑[A003961(n+1)-2*n]-A003961(n+1)`
-/

namespace A252749.P14968869538454102175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003961 (n + 1)

end

end A252749.P14968869538454102175

namespace A252749

/-- `∑[A003961(n+1)-2*n]-A003961(n+1)` -/
def P14968869538454102175.Spec : Prop :=
  ∀ n, P14968869538454102175.a n = A252749 n

end A252749

/-! ## A252749.P7159162746508985320

`∑[A242378(A000124(n+1))-2*n]`
-/

namespace A252749.P7159162746508985320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 (A000124 (n + 1)).toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252749.P7159162746508985320

namespace A252749

/-- `∑[A242378(A000124(n+1))-2*n]` -/
def P7159162746508985320.Spec : Prop :=
  ∀ n, P7159162746508985320.a n = A252749 n

end A252749

/-!
# A252750: a(n) = A003961(A005940(n+1)) - 2 * A005940(n+1).

The programs for A252750, the canonical program `A252750.P12930142929614438506` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252750 has offset 0).

The definition of A252750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252750.P3784992672975511751

`A252748(A005940(n+1))`
-/

namespace A252750.P3784992672975511751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A005940 (n + 1)).toNat

end

end A252750.P3784992672975511751

namespace A252750

/-- `A252748(A005940(n+1))` -/
def P3784992672975511751.Spec : Prop :=
  ∀ n, P3784992672975511751.a n = A252750 n

end A252750

/-! ## A252750.P18008914367590059619

`A003961(A005940(1+n))-2*A005940(1+n)`
-/

namespace A252750.P18008914367590059619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A005940 (1 + n)).toNat - 2 * A005940 (1 + n)

end

end A252750.P18008914367590059619

namespace A252750

/-- `A003961(A005940(1+n))-2*A005940(1+n)` -/
def P18008914367590059619.Spec : Prop :=
  ∀ n, P18008914367590059619.a n = A252750 n

end A252750

/-! ## A252750.P6670767502219585743

`A003961(A005940(n+1))-2*A005940(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252750.P6670767502219585743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A005940 (n + 1)).toNat - 2 * A005940 (n + 1)

end

end A252750.P6670767502219585743

namespace A252750

/-- `A003961(A005940(n+1))-2*A005940(n+1)` -/
def P6670767502219585743.Spec : Prop :=
  ∀ n, P6670767502219585743.a n = A252750 n

end A252750

/-! ## A252750.P12930142929614438506

`A005940(2*n+1)-A005940(2*(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A252750

/-- `A005940(2*n+1)-A005940(2*(n+1))` -/
def P12930142929614438506.Spec : Prop :=
  ∀ n, P12930142929614438506.a n = A252750 n

theorem P12930142929614438506.correct : P12930142929614438506.Spec := by
  intro n
  simp only [A252750]

end A252750

/-! ## A252750.P57988594815178594

`A336853(A292602(4*n+3))-A292602(4*n+3)`
-/

namespace A252750.P57988594815178594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (A292602 (4 * n + 3)).toNat - A292602 (4 * n + 3)

end

end A252750.P57988594815178594

namespace A252750

/-- `A336853(A292602(4*n+3))-A292602(4*n+3)` -/
def P57988594815178594.Spec : Prop :=
  ∀ n, P57988594815178594.a n = A252750 n

end A252750

/-! ## A252750.P3810628627126655930

`A336853(A292602(4*n+3))-A366263(A193231(n))`
-/

namespace A252750.P3810628627126655930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (A292602 (4 * n + 3)).toNat - A366263 (A193231 n).toNat

end

end A252750.P3810628627126655930

namespace A252750

/-- `A336853(A292602(4*n+3))-A366263(A193231(n))` -/
def P3810628627126655930.Spec : Prop :=
  ∀ n, P3810628627126655930.a n = A252750 n

end A252750

/-! ## A252750.P12463660546507886982

`A336853(A292602(4*n+3))-A366260(A303768(n))`
-/

namespace A252750.P12463660546507886982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (A292602 (4 * n + 3)).toNat - A366260 (A303768 n).toNat

end

end A252750.P12463660546507886982

namespace A252750

/-- `A336853(A292602(4*n+3))-A366260(A303768(n))` -/
def P12463660546507886982.Spec : Prop :=
  ∀ n, P12463660546507886982.a n = A252750 n

end A252750

/-! ## A252750.P17565671277045434591

`A005940(2*n+1)-A004277(A005940(n+1))`
-/

namespace A252750.P17565671277045434591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (2 * n + 1) - A004277 (A005940 (n + 1)).toNat

end

end A252750.P17565671277045434591

namespace A252750

/-- `A005940(2*n+1)-A004277(A005940(n+1))` -/
def P17565671277045434591.Spec : Prop :=
  ∀ n, P17565671277045434591.a n = A252750 n

end A252750

/-! ## A252750.P15538006745207817405

`A241916(A253565(2*n))-A005940(2*(n+1))`
-/

namespace A252750.P15538006745207817405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A253565 (2 * n)).toNat - A005940 (2 * (n + 1))

end

end A252750.P15538006745207817405

namespace A252750

/-- `A241916(A253565(2*n))-A005940(2*(n+1))` -/
def P15538006745207817405.Spec : Prop :=
  ∀ n, P15538006745207817405.a n = A252750 n

end A252750

/-!
# A252751: Partial sums of A252750: a(0) = 0; for >= 1: a(n) = A252750(n) + a(n-1).

The programs for A252751, the canonical program `A252751.P3019683754980594127` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252751 has offset 0).

The definition of A252751 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A252751.P3019683754980594127

`A252750(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A252751

/-- `A252750(n)+a(n-1)` -/
def P3019683754980594127.Spec : Prop :=
  ∀ n, P3019683754980594127.a n = A252751 n

theorem P3019683754980594127.correct : P3019683754980594127.Spec := by
  intro n
  simp only [A252751]

end A252751

/-! ## A252751.P1564201637834290243

`∑[A252750(n)]+1`
-/

namespace A252751.P1564201637834290243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252751.P1564201637834290243

namespace A252751

/-- `∑[A252750(n)]+1` -/
def P1564201637834290243.Spec : Prop :=
  ∀ n, P1564201637834290243.a n = A252751 n

end A252751

/-! ## A252751.P16143581224076812688

`∑[A057427(n)*A252750(n)]`
-/

namespace A252751.P16143581224076812688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A252750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252751.P16143581224076812688

namespace A252751

/-- `∑[A057427(n)*A252750(n)]` -/
def P16143581224076812688.Spec : Prop :=
  ∀ n, P16143581224076812688.a n = A252751 n

end A252751

/-! ## A252751.P16238264114534198133

`∑[A252750(n)%A000123(n)]`
-/

namespace A252751.P16238264114534198133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252750 n) (A000123 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252751.P16238264114534198133

namespace A252751

/-- `∑[A252750(n)%A000123(n)]` -/
def P16238264114534198133.Spec : Prop :=
  ∀ n, P16238264114534198133.a n = A252751 n

end A252751

/-! ## A252751.P13006741056546102397

`∑[A005940(2*n+1)-A005940(2*(n+1))]+1`
-/

namespace A252751.P13006741056546102397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (2 * n + 1) - A005940 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252751.P13006741056546102397

namespace A252751

/-- `∑[A005940(2*n+1)-A005940(2*(n+1))]+1` -/
def P13006741056546102397.Spec : Prop :=
  ∀ n, P13006741056546102397.a n = A252751 n

end A252751

/-! ## A252751.P14989531835343570421

`∑[A252748(A005940(n+1))]+1`
-/

namespace A252751.P14989531835343570421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252751.P14989531835343570421

namespace A252751

/-- `∑[A252748(A005940(n+1))]+1` -/
def P14989531835343570421.Spec : Prop :=
  ∀ n, P14989531835343570421.a n = A252751 n

end A252751

/-!
# A252752: Inverse permutation to sequence A246278 when it is considered as a permutation of natural numbers (with assumption that a(1) = 1).

The programs for A252752, there is no canonical definition to state claims against.
-/

/-! ## A252752.P263782589436442659

`A246276(A028310(n))+A057427(n)`
-/

namespace A252752.P263782589436442659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A028310 n).toNat + A057427 n

end

end A252752.P263782589436442659

/-! ## A252752.P9273115033874386333

`A246276(A028310(n))-A057428(n)`
-/

namespace A252752.P9273115033874386333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A028310 n).toNat - A057428 n

end

end A252752.P9273115033874386333

/-! ## A252752.P1277171035895320525

`A133263(A252759(n+1))-A246277(n+1)`
-/

namespace A252752.P1277171035895320525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A252759 (n + 1)).toNat - A246277 (n + 1)

end

end A252752.P1277171035895320525

/-! ## A252752.P612204239799095397

`A246276(A028310(n))+and(1, A002313(n+1))`
-/

namespace A252752.P612204239799095397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A028310 n).toNat + Int.land 1 (A002313 (n + 1))

end

end A252752.P612204239799095397

/-! ## A252752.P16199796340886215944

`A252460(A249817(n+1))`
-/

namespace A252752.P16199796340886215944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A249817 (n + 1)).toNat

end

end A252752.P16199796340886215944

/-! ## A252752.P4434225220479078374

`A246276(n)+a(A292262(A034694(n+1)))` with `a(0)=1`
-/

namespace A252752.P4434225220479078374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246276 n + a (A292262 (A034694 (n + 1)).toNat).toNat

end

end A252752.P4434225220479078374

/-! ## A252752.P4388232491606876574

`A255128(A255407(A249817(n+1)%A016945(n)))`
-/

namespace A252752.P4388232491606876574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255128 (A255407 (Int.tmod (A249817 (n + 1)) (A016945 n)).toNat).toNat

end

end A252752.P4388232491606876574

/-! ## A252752.P11176408594546499170

`A256998(A279337(n+1))`
-/

namespace A252752.P11176408594546499170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256998 (A279337 (n + 1)).toNat

end

end A252752.P11176408594546499170

/-!
# A252753: Tree of Eratosthenes: a(0) = 1, a(1) = 2; after which, a(2n) = A250469(a(n)), a(2n+1) = 2 * a(n).

The programs for A252753, there is no canonical definition to state claims against.
-/

/-! ## A252753.P17689409898442187142

`A250245(A005940(1+n))`
-/

namespace A252753.P17689409898442187142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A005940 (1 + n)).toNat

end

end A252753.P17689409898442187142

/-! ## A252753.P2670140473725673363

`A286555(A006068(n))`
-/

namespace A252753.P2670140473725673363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286555 (A006068 n).toNat

end

end A252753.P2670140473725673363

/-! ## A252753.P7033849425073316498

`A269855(A233280(n))`
-/

namespace A252753.P7033849425073316498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (A233280 n).toNat

end

end A252753.P7033849425073316498

/-! ## A252753.P42063832068005015

`A279348(A279344(n))`
-/

namespace A252753.P42063832068005015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279348 (A279344 n).toNat

end

end A252753.P42063832068005015

/-! ## A252753.P2999781591449672086

`A252755(A054429(2*n+1))/2`
-/

namespace A252753.P2999781591449672086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252755 (A054429 (2 * n + 1)).toNat : ℚ) / 2

end

end A252753.P2999781591449672086

/-! ## A252753.P3074174294190571193

`A279348(A279347(A279342(n)))`
-/

namespace A252753.P3074174294190571193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279348 (A279347 (A279342 n).toNat).toNat

end

end A252753.P3074174294190571193

/-! ## A252753.P4710620727400582418

`A269172(A269387(n))`
-/

namespace A252753.P4710620727400582418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A269387 n).toNat

end

end A252753.P4710620727400582418

/-! ## A252753.P17196618875981215621

`A252755(A252754(A252755(n)))`
-/

namespace A252753.P17196618875981215621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A252754 (A252755 n).toNat).toNat

end

end A252753.P17196618875981215621

/-! ## A252753.P12566218791201467099

`A269172(A269385(A269388(A269385(n))))`
-/

namespace A252753.P12566218791201467099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A269385 (A269388 (A269385 n).toNat).toNat).toNat

end

end A252753.P12566218791201467099

/-! ## A252753.P14348667229790997508

`A252755(A269376(A269377(n)))`
-/

namespace A252753.P14348667229790997508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A269376 (A269377 n).toNat).toNat

end

end A252753.P14348667229790997508

/-!
# A252754: Inverse of "Tree of Eratosthenes" permutation: a(1) = 0, after which, a(2n) = 1 + 2*a(n), a(2n+1) = 2 * a(A268674(2n+1)).

The programs for A252754, there is no canonical definition to state claims against.
-/

/-! ## A252754.P5544146275615988573

`A156552(A250246(n+1))`
-/

namespace A252754.P5544146275615988573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A250246 (n + 1)).toNat

end

end A252754.P5544146275615988573

/-! ## A252754.P3249324671493886318

`xor(A286556(A253554(n+1)), A286556(n+1))`
-/

namespace A252754.P3249324671493886318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286556 (A253554 (n + 1)).toNat) (A286556 (n + 1))

end

end A252754.P3249324671493886318

/-! ## A252754.P12641482894629928547

`A269388(A269171(n+1))`
-/

namespace A252754.P12641482894629928547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A269171 (n + 1)).toNat

end

end A252754.P12641482894629928547

/-! ## A252754.P18068460186930163765

`A269388(ceil(A269393(2*n+1)/2))`
-/

namespace A252754.P18068460186930163765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 ⌈(A269393 (2 * n + 1) : ℚ) / 2⌉.toNat

end

end A252754.P18068460186930163765

/-! ## A252754.P11958303006507483946

`A269388(round(A269393(2*n+1)/2))`
-/

namespace A252754.P11958303006507483946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (SequenceMachineLib.roundAway ((A269393 (2 * n + 1) : ℚ) / 2)).toNat

end

end A252754.P11958303006507483946

/-! ## A252754.P8071414531787228193

`A156552(A280496(2*(n+1)))`
-/

namespace A252754.P8071414531787228193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A280496 (2 * (n + 1))).toNat

end

end A252754.P8071414531787228193

/-! ## A252754.P12181553654580540612

`A156552(A324546(n+1)+A324535(n+1))`
-/

namespace A252754.P12181553654580540612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A324546 (n + 1) + A324535 (n + 1)).toNat

end

end A252754.P12181553654580540612

/-! ## A252754.P6280927657047002052

`A156552(A324545(n+1)-A324535(n+1))`
-/

namespace A252754.P6280927657047002052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A252754.P6280927657047002052

/-! ## A252754.P10355666881452063722

`A269388(A269395(A269394(n+1)))`
-/

namespace A252754.P10355666881452063722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A269395 (A269394 (n + 1)).toNat).toNat

end

end A252754.P10355666881452063722

/-! ## A252754.P15339180490041476577

`A003188(A286556(n+1))`
-/

namespace A252754.P15339180490041476577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A286556 (n + 1)).toNat

end

end A252754.P15339180490041476577

/-!
# A252755: Tree of Eratosthenes, mirrored: a(0) = 1, a(1) = 2; after which, a(2n) = 2*a(n), a(2n+1) = A250469(a(n)).

The programs for A252755, there is no canonical definition to state claims against.
-/

/-! ## A252755.P14592075351382301244

`A250245(A163511(n))`
-/

namespace A252755.P14592075351382301244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A163511 n).toNat

end

end A252755.P14592075351382301244

/-! ## A252755.P5824607865040054559

`A286550(n)+n`
-/

namespace A252755.P5824607865040054559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286550 n + (n : ℤ)

end

end A252755.P5824607865040054559

/-! ## A252755.P17127576386516890772

`A269855(A003188(n))`
-/

namespace A252755.P17127576386516890772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (A003188 n).toNat

end

end A252755.P17127576386516890772

/-! ## A252755.P14646776357434015996

`A286555(A180200(n))`
-/

namespace A252755.P14646776357434015996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286555 (A180200 n).toNat

end

end A252755.P14646776357434015996

/-! ## A252755.P18133063290521570275

`A269855(A193231(A006068(A193231(n))))`
-/

namespace A252755.P18133063290521570275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (A193231 (A006068 (A193231 n).toNat).toNat).toNat

end

end A252755.P18133063290521570275

/-! ## A252755.P7917776049733634996

`A269855(xor(n, A002265(2*n)))`
-/

namespace A252755.P7917776049733634996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (Int.xor (n : ℤ) (A002265 (2 * n))).toNat

end

end A252755.P7917776049733634996

/-! ## A252755.P11046864730213531580

`A279348(A279342(n))`
-/

namespace A252755.P11046864730213531580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279348 (A279342 n).toNat

end

end A252755.P11046864730213531580

/-! ## A252755.P10728725582036622214

`A279348(A279347(A279344(n)))`
-/

namespace A252755.P10728725582036622214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279348 (A279347 (A279344 n).toNat).toNat

end

end A252755.P10728725582036622214

/-! ## A252755.P10280261826883005860

`A268674(A269855(A065621(n+1)))`
-/

namespace A252755.P10280261826883005860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A269855 (A065621 (n + 1)).toNat).toNat

end

end A252755.P10280261826883005860

/-! ## A252755.P10747055595199805584

`A268674(A269851(A267112(2*n+1)))`
-/

namespace A252755.P10747055595199805584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A269851 (A267112 (2 * n + 1)).toNat).toNat

end

end A252755.P10747055595199805584

/-! ## A252755.P17119831821766904909

`A269172(A269385(n))`
-/

namespace A252755.P17119831821766904909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A269385 n).toNat

end

end A252755.P17119831821766904909

/-! ## A252755.P15376221847113648735

`A269172(A260741(A269375(n)))`
-/

namespace A252755.P15376221847113648735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A260741 (A269375 n).toNat).toNat

end

end A252755.P15376221847113648735

/-! ## A252755.P4002808382490281609

`A269172(A269387(A269386(A269387(n))))`
-/

namespace A252755.P4002808382490281609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A269387 (A269386 (A269387 n).toNat).toNat).toNat

end

end A252755.P4002808382490281609

/-! ## A252755.P5216311477653142030

`A252753(A252756(A252753(n)))`
-/

namespace A252755.P5216311477653142030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A252756 (A252753 n).toNat).toNat

end

end A252755.P5216311477653142030

/-! ## A252755.P17566290073549880656

`A269857(A237739(n))`
-/

namespace A252755.P17566290073549880656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269857 (A237739 n).toNat

end

end A252755.P17566290073549880656

/-! ## A252755.P6028678703455977866

`A250249(A163511(2*n-n))`
-/

namespace A252755.P6028678703455977866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250249 (A163511 (2 * n - n)).toNat

end

end A252755.P6028678703455977866

/-! ## A252755.P1945128302042851055

`A260739(A252753(A269378(A269375(2*n))))`
-/

namespace A252755.P1945128302042851055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A252753 (A269378 (A269375 (2 * n)).toNat).toNat).toNat

end

end A252755.P1945128302042851055

/-!
# A252756: Permutation of nonnegative integers: a(1) = 0, a(2) = 1, a(2n) = 2*a(n), a(2n+1) = 1 + 2*a(A250470(2n+1)).

The programs for A252756, there is no canonical definition to state claims against.
-/

/-! ## A252756.P17874951336808210599

`A243071(A250246(n+1))`
-/

namespace A252756.P17874951336808210599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A250246 (n + 1)).toNat

end

end A252756.P17874951336808210599

/-! ## A252756.P6123439491509731970

`A269386(A269171(n+1))`
-/

namespace A252756.P6123439491509731970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A269171 (n + 1)).toNat

end

end A252756.P6123439491509731970

/-! ## A252756.P17960748981704098289

`A269386(ceil(A269393(2*n+1)/2))`
-/

namespace A252756.P17960748981704098289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 ⌈(A269393 (2 * n + 1) : ℚ) / 2⌉.toNat

end

end A252756.P17960748981704098289

/-! ## A252756.P14243244288560721908

`A243071(A280496(2*(n+1)))`
-/

namespace A252756.P14243244288560721908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A280496 (2 * (n + 1))).toNat

end

end A252756.P14243244288560721908

/-! ## A252756.P4489485003176550473

`∑{d}[A250246(n+1), A297171(#)]`
-/

namespace A252756.P4489485003176550473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d

end

end A252756.P4489485003176550473

/-! ## A252756.P4427945488700340971

`A243071(A324546(n+1)+A324535(n+1))`
-/

namespace A252756.P4427945488700340971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A324546 (n + 1) + A324535 (n + 1)).toNat

end

end A252756.P4427945488700340971

/-! ## A252756.P14002861614825057629

`A243071(A324545(n+1)-A324535(n+1))`
-/

namespace A252756.P14002861614825057629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A252756.P14002861614825057629

/-! ## A252756.P16005615609904759625

`A269386(A269395(A269394(n+1)))`
-/

namespace A252756.P16005615609904759625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A269395 (A269394 (n + 1)).toNat).toNat

end

end A252756.P16005615609904759625

/-! ## A252756.P11781223576421031949

`A000035(A273367(n))*A243071(A250250(n+1))`
-/

namespace A252756.P11781223576421031949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A273367 n).toNat * A243071 (A250250 (n + 1)).toNat

end

end A252756.P11781223576421031949

/-! ## A252756.P5905184659097028538

`A243071(A279338(A279349(n+1)))`
-/

namespace A252756.P5905184659097028538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A279338 (A279349 (n + 1)).toNat).toNat

end

end A252756.P5905184659097028538

/-!
# A252759: Manhattan distance of n in array A246278 from the top left corner: a(1) = 0; for n>1: a(n) = A055396(n) + A246277(n) - 1.

The programs for A252759, there is no canonical definition to state claims against.
-/

/-! ## A252759.P8909959225924921105

`A055396(n+1)+(A246277(n+1)+n)%(n+1)`
-/

namespace A252759.P8909959225924921105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + Int.tmod (A246277 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A252759.P8909959225924921105

/-! ## A252759.P9238632043708517334

`A246277(n+1)+A055396(A117365(n+1))`
-/

namespace A252759.P9238632043708517334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A055396 (A117365 (n + 1)).toNat

end

end A252759.P9238632043708517334

/-! ## A252759.P11568116256216981086

`A336316(A020639(n+1))+A246277(n+1)`
-/

namespace A252759.P11568116256216981086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336316 (A020639 (n + 1)).toNat + A246277 (n + 1)

end

end A252759.P11568116256216981086

/-! ## A252759.P2109074641165500599

`A249738(A348717(n+1))+A055396(n+1)`
-/

namespace A252759.P2109074641165500599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A348717 (n + 1)).toNat + A055396 (n + 1)

end

end A252759.P2109074641165500599

/-! ## A252759.P16196561318823007828

`A055396(n+1)+A246277(n+1)-A055396(A348717(n+1))`
-/

namespace A252759.P16196561318823007828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (A246277 (n + 1) - A055396 (A348717 (n + 1)).toNat)

end

end A252759.P16196561318823007828

/-! ## A252759.P17578250029223751825

`A055396(n+1)+A078898(A249817(n+1))-1`
-/

namespace A252759.P17578250029223751825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (A078898 (A249817 (n + 1)).toNat - 1)

end

end A252759.P17578250029223751825

/-! ## A252759.P1517352064841435267

`A055396(n+1)+A078898(A250247(n+1))-1`
-/

namespace A252759.P1517352064841435267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (A078898 (A250247 (n + 1)).toNat - 1)

end

end A252759.P1517352064841435267

/-! ## A252759.P703689153261311036

`A123578(A252752(n+1)-1)`
-/

namespace A252759.P703689153261311036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A252752 (n + 1) - 1).toNat

end

end A252759.P703689153261311036

/-!
# A252760: Number of moduli m such that the multiplicative order of n mod m equals n.

The programs for A252760, there is no canonical definition to state claims against.
-/

/-! ## A252760.P11439744500985660486

`A212957(∑[4*n]+1)`
-/

namespace A252760.P11439744500985660486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252760.P11439744500985660486

/-! ## A252760.P16720647296785877707

`or(char[1], A212957(A001844(n)))`
-/

namespace A252760.P16720647296785877707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212957 (A001844 n).toNat)

end

end A252760.P16720647296785877707

/-! ## A252760.P11095484018967889225

`A212957(A001844(n))%A000079(n)`
-/

namespace A252760.P11095484018967889225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A001844 n).toNat) (A000079 n)

end

end A252760.P11095484018967889225

/-! ## A252760.P2082165535447468445

`A007318(∑[n])*A212957(A001844(n))`
-/

namespace A252760.P2082165535447468445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A212957 (A001844 n).toNat

end

end A252760.P2082165535447468445

/-! ## A252760.P6029798141180400593

`A212957(A001844(n))+A000007(n+1)`
-/

namespace A252760.P6029798141180400593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A001844 n).toNat + A000007 (n + 1)

end

end A252760.P6029798141180400593

/-!
# A252761: Total sum of n-th powers of parts in all partitions of n.

The programs for A252761, there is no canonical definition to state claims against.
-/

/-! ## A252761.P4402068180344064282

`A213191(∑[4*n])`
-/

namespace A252761.P4402068180344064282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252761.P4402068180344064282

/-! ## A252761.P4706997240972529609

`record[A213191(n*A003982(n))]`
-/

namespace A252761.P4706997240972529609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252761.P4706997240972529609

/-! ## A252761.P17543673482153567180

`record[A213191(n*A028242(n))]`
-/

namespace A252761.P17543673482153567180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252761.P17543673482153567180

/-! ## A252761.P11425678454254982713

`record[A213191(gcd(n, A061579(n)))]`
-/

namespace A252761.P11425678454254982713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252761.P11425678454254982713

/-! ## A252761.P10733636765195569514

`record[A213191(∑[A064455(n+1)])]`
-/

namespace A252761.P10733636765195569514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252761.P10733636765195569514

/-!
# A252762: Numbers n such that the sum of the pentagonal numbers P(n), P(n+1), P(n+2) and P(n+3) is equal to the hexagonal number H(m) for some m.

The programs for A252762, the canonical program `A252762.P11896849117604688729` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252762 has offset 1).

The definition of A252762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252762.P11896849117604688729

`194*a(n-1)-a(n-2)+256` with `a(0)=3, a(1)=853`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252762

/-- `194*a(n-1)-a(n-2)+256` -/
def P11896849117604688729.Spec : Prop :=
  ∀ n, P11896849117604688729.a n = A252762 (n + 1)

theorem P11896849117604688729.correct : P11896849117604688729.Spec := by
  intro n
  simp only [A252762, Nat.add_sub_cancel]

end A252762

/-!
# A252763: Numbers n such that the hexagonal number H(n) is equal to the sum of the pentagonal numbers P(m), P(m+1), P(m+2) and P(m+3) for some m.

The programs for A252763, there is no canonical definition to state claims against.
-/

/-! ## A252763.P15746571262156475278

`A001922(2*n+1)+A007654(2*n+1)/2`
-/

namespace A252763.P15746571262156475278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001922 (2 * n + 1) : ℚ) + (A007654 (2 * n + 1) : ℚ) / 2

end

end A252763.P15746571262156475278

/-!
# A252764: Number of length n primitive (=aperiodic or period n) n-ary words.

The programs for A252764, the canonical program `A252764.P5086795476631920370` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252764 has offset 1).

The definition of A252764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252764.P5663959419853572248

`A075147(n+1)*(n+1)`
-/

namespace A252764.P5663959419853572248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075147 (n + 1) * (n + 1 : ℤ)

end

end A252764.P5663959419853572248

namespace A252764

/-- `A075147(n+1)*(n+1)` -/
def P5663959419853572248.Spec : Prop :=
  ∀ n, P5663959419853572248.a n = A252764 (n + 1)

end A252764

/-! ## A252764.P5086795476631920370

`∑{d}[n+1, (n+1)^#*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A252764

/-- `∑{d}[n+1, (n+1)^#*A008683((n+1)/#)]` -/
def P5086795476631920370.Spec : Prop :=
  ∀ n, P5086795476631920370.a n = A252764 (n + 1)

theorem P5086795476631920370.correct : P5086795476631920370.Spec := by
  intro n
  simp only [A252764, Nat.add_sub_cancel]

end A252764

/-! ## A252764.P11319194484677975965

`A143324(∑[4*n]+1)`
-/

namespace A252764.P11319194484677975965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252764.P11319194484677975965

namespace A252764

/-- `A143324(∑[4*n]+1)` -/
def P11319194484677975965.Spec : Prop :=
  ∀ n, P11319194484677975965.a n = A252764 (n + 1)

end A252764

/-! ## A252764.P2725480189344376434

`gcd(A000038(n), A143324(A001844(n)))`
-/

namespace A252764.P2725480189344376434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A143324 (A001844 n).toNat)

end

end A252764.P2725480189344376434

namespace A252764

/-- `gcd(A000038(n), A143324(A001844(n)))` -/
def P2725480189344376434.Spec : Prop :=
  ∀ n, (P2725480189344376434.a n : ℤ) = A252764 (n + 1)

end A252764

/-! ## A252764.P3143377791222170777

`lcm(A033999(n), A143324(A001844(n)))`
-/

namespace A252764.P3143377791222170777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A143324 (A001844 n).toNat)

end

end A252764.P3143377791222170777

namespace A252764

/-- `lcm(A033999(n), A143324(A001844(n)))` -/
def P3143377791222170777.Spec : Prop :=
  ∀ n, (P3143377791222170777.a n : ℤ) = A252764 (n + 1)

end A252764

/-!
# A252765: Number of distinct n-colored necklaces with n beads per color.

The programs for A252765, there is no canonical definition to state claims against.
-/

/-! ## A252765.P9308453808991200366

`A208183(∑[4*n])`
-/

namespace A252765.P9308453808991200366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252765.P9308453808991200366

/-! ## A252765.P12859017711603017569

`A043568(n)*A208183(A046092(n))`
-/

namespace A252765.P12859017711603017569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A208183 (A046092 n).toNat

end

end A252765.P12859017711603017569

/-! ## A252765.P16181444828121624033

`A208183(A046092(n))*A208183(n)`
-/

namespace A252765.P16181444828121624033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A046092 n).toNat * A208183 n

end

end A252765.P16181444828121624033

/-! ## A252765.P7263828655229984731

`A208183(A046092(n))^A178334(n)`
-/

namespace A252765.P7263828655229984731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208183 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A252765.P7263828655229984731

/-! ## A252765.P14524095545216880843

`gcd(A000038(n), A208183(A046092(n)))`
-/

namespace A252765.P14524095545216880843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208183 (A046092 n).toNat)

end

end A252765.P14524095545216880843

/-!
# A252766: a(n) = n-th number of the n-th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A252766, there is no canonical definition to state claims against.
-/

/-! ## A252766.P1514253207027665109

`A144303(∑[4*n])`
-/

namespace A252766.P1514253207027665109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252766.P1514253207027665109

/-! ## A252766.P674871691378419401

`record[A144303(∑[A071045(n)])]`
-/

namespace A252766.P674871691378419401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252766.P674871691378419401

/-! ## A252766.P6618243880681924969

`record[A144303(gcd(n, A114327(n)))]`
-/

namespace A252766.P6618243880681924969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252766.P6618243880681924969

/-! ## A252766.P1264511815135945058

`record[A144303(∑[A064455(n+1)])]`
-/

namespace A252766.P1264511815135945058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252766.P1264511815135945058

/-! ## A252766.P16303375142426897159

`A144303(A046092(n))^A178489(n)`
-/

namespace A252766.P16303375142426897159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144303 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A252766.P16303375142426897159

/-!
# A252767: Number of spanning trees in C_n X P_n.

The programs for A252767, there is no canonical definition to state claims against.
-/

/-! ## A252767.P1408109954743379462

`A173958((n+1)²+n²)`
-/

namespace A252767.P1408109954743379462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 ((n + 1) ^ 2 + n ^ 2)

end

end A252767.P1408109954743379462

/-!
# A252771: Number of (n+2)X(1+2) 0..3 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252771, there is no canonical definition to state claims against.
-/

/-! ## A252771.P8569160020410673805

`A252777(∑[n]+1)`
-/

namespace A252771.P8569160020410673805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252771.P8569160020410673805

/-! ## A252771.P5638330929877478222

`record[A252777(A091018(n)+1)]`
-/

namespace A252771.P5638330929877478222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A091018 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252771.P5638330929877478222

/-! ## A252771.P1931149177418226834

`record[A252777(A254052(n+1))]`
-/

namespace A252771.P1931149177418226834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252771.P1931149177418226834

/-! ## A252771.P10439489221992812877

`A252777(A000124(n))+char[17]`
-/

namespace A252771.P10439489221992812877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252771.P10439489221992812877

/-! ## A252771.P9099427202319576674

`record[A010054(n)*A252777(n+1)]`
-/

namespace A252771.P9099427202319576674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252771.P9099427202319576674

/-!
# A252772: Number of (n+2)X(2+2) 0..3 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252772, there is no canonical definition to state claims against.
-/

/-! ## A252772.P52978600486009851

`A252777(∑[n+1]+2)`
-/

namespace A252772.P52978600486009851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252772.P52978600486009851

/-! ## A252772.P2027265962707010057

`A252777(A133263(n+1))%A219064(n+4)`
-/

namespace A252772.P2027265962707010057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252777 (A133263 (n + 1)).toNat) (A219064 (n + 4))

end

end A252772.P2027265962707010057

/-! ## A252772.P4208464499107081036

`Δ[A048340(n+1)]*A252777(A133263(n+1))`
-/

namespace A252772.P4208464499107081036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A252777 (A133263 (n + 1)).toNat

end

end A252772.P4208464499107081036

/-! ## A252772.P17261462099070367632

`A014963(6*(n+1))*A252777(A133263(n+1))`
-/

namespace A252772.P17261462099070367632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A252777 (A133263 (n + 1)).toNat

end

end A252772.P17261462099070367632

/-! ## A252772.P15463271495834439478

`A252777(A252752(2*(n+2)))%A252773(n+1)`
-/

namespace A252772.P15463271495834439478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252777 (A252752 (2 * (n + 2))).toNat) (A252773 (n + 1))

end

end A252772.P15463271495834439478

/-!
# A252773: Number of (n+2)X(3+2) 0..3 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252773, there is no canonical definition to state claims against.
-/

/-! ## A252773.P10954580119807745188

`A252777(∑[n+2]+4)`
-/

namespace A252773.P10954580119807745188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252773.P10954580119807745188

/-! ## A252773.P16727006270178055880

`record[A023531(n)*A252777(n+4)]`
-/

namespace A252773.P16727006270178055880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A252777 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252773.P16727006270178055880

/-! ## A252773.P13903263568026905780

`or(floor(acot(n)), A252777(A167614(n+1)))`
-/

namespace A252773.P13903263568026905780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A252777 (A167614 (n + 1)).toNat)

end

end A252773.P13903263568026905780

/-! ## A252773.P11787605362692803271

`record[A252777(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A252773.P11787605362692803271
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252773.P11787605362692803271

/-! ## A252773.P4959285812657964896

`A252777(A167614(n+1))+A025469(n)`
-/

namespace A252773.P4959285812657964896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A167614 (n + 1)).toNat + A025469 n

end

end A252773.P4959285812657964896

/-!
# A252774: Number of (n+2)X(4+2) 0..3 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252774, there is no canonical definition to state claims against.
-/

/-! ## A252774.P5795703861708029732

`A252777(∑[n+3]+7)`
-/

namespace A252774.P5795703861708029732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252774.P5795703861708029732

/-! ## A252774.P16649624277439011861

`A252777(Δ[A006416(n+2)])+A000007(n+1)`
-/

namespace A252774.P16649624277439011861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A252774.P16649624277439011861

/-! ## A252774.P12280354589843269807

`A252777(Δ[A006416(n+2)])+A034501(n+1)`
-/

namespace A252774.P12280354589843269807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (f1 (n + 1) - f1 n).toNat + A034501 (n + 1)

end

end A252774.P12280354589843269807

/-!
# A252775: Number of (n+2)X(5+2) 0..3 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252775, there is no canonical definition to state claims against.
-/

/-! ## A252775.P4349016147821170531

`A252777(A077169(n+5))`
-/

namespace A252775.P4349016147821170531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A077169 (n + 5)).toNat

end

end A252775.P4349016147821170531

/-! ## A252775.P18072365827851311982

`A252777(A155212(n)+13)`
-/

namespace A252775.P18072365827851311982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A155212 n + 13).toNat

end

end A252775.P18072365827851311982

/-! ## A252775.P296265738656332894

`A252777(A056000(n)+15)`
-/

namespace A252775.P296265738656332894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A056000 n + 15).toNat

end

end A252775.P296265738656332894

/-! ## A252775.P16123317458410939334

`A252777(eq[7, A066657(n)])`
-/

namespace A252775.P16123317458410939334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252775.P16123317458410939334

/-! ## A252775.P9987561075691117781

`A252777(A167614(n+3)+2)`
-/

namespace A252775.P9987561075691117781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A167614 (n + 3) + 2).toNat

end

end A252775.P9987561075691117781

/-!
# A252776: Number of (n+2)X(6+2) 0..3 arrays with every consecutive three elements in every row, column and nw-se diagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252776, there is no canonical definition to state claims against.
-/

/-! ## A252776.P6516686129407259684

`A252777(C(2*n+7-n, 2)-n)`
-/

namespace A252776.P6516686129407259684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (Nat.choose ((2 * n + 7 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A252776.P6516686129407259684

/-! ## A252776.P2957862859782547165

`A252777(A056115(n)+21)`
-/

namespace A252776.P2957862859782547165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A056115 n + 21).toNat

end

end A252776.P2957862859782547165

/-! ## A252776.P15987540677747832321

`A252777(A167499(n+4)+1)`
-/

namespace A252776.P15987540677747832321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A167499 (n + 4) + 1).toNat

end

end A252776.P15987540677747832321

/-! ## A252776.P17648487804355802509

`A252777(A000217(n+5)+6)`
-/

namespace A252776.P17648487804355802509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (A000217 (n + 5) + 6).toNat

end

end A252776.P17648487804355802509

/-! ## A252776.P16693535171512116384

`A252777(eq[7, A131818(n+1)])`
-/

namespace A252776.P16693535171512116384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252776.P16693535171512116384

/-!
# A252778: Number of ways of n-coloring the square grid graph G_(3,3) such that no rectangle exists with sides parallel to the axes having all 4 corners of the same color.

The programs for A252778, the canonical program `A252778.P5944895226939848520` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252778 has offset 0).

The definition of A252778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252778.P5944895226939848520

`(((((n^3-9)*n²+12)*n+18)*n-36)*n+14)*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252778

/-- `(((((n^3-9)*n²+12)*n+18)*n-36)*n+14)*n` -/
def P5944895226939848520.Spec : Prop :=
  ∀ n, P5944895226939848520.a n = A252778 n

theorem P5944895226939848520.correct : P5944895226939848520.Spec := by
  intro n
  simp only [A252778]

end A252778

/-!
# A252779: Number of ways of n-coloring the square grid graph G_(3,3) such that no rectangle exists having all 4 corners of the same color.

The programs for A252779, the canonical program `A252779.P5403591562338973796` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252779 has offset 0).

The definition of A252779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252779.P5403591562338973796

`(((((n^3-10)*n²+20)*n+5)*n-28)*n+12)*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252779

/-- `(((((n^3-10)*n²+20)*n+5)*n-28)*n+12)*n` -/
def P5403591562338973796.Spec : Prop :=
  ∀ n, P5403591562338973796.a n = A252779 n

theorem P5403591562338973796.correct : P5403591562338973796.Spec := by
  intro n
  simp only [A252779]

end A252779

/-!
# A252781: Inverse permutation to A106001.

The programs for A252781, there is no canonical definition to state claims against.
-/

/-! ## A252781.P9457341069319878782

`A124107(n+1)%57`
-/

namespace A252781.P9457341069319878782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124107 (n + 1)) 57

end

end A252781.P9457341069319878782

/-! ## A252781.P14483753333183169539

`A282782(n+2)%98`
-/

namespace A252781.P14483753333183169539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282782 (n + 2)) 98

end

end A252781.P14483753333183169539

/-! ## A252781.P397959529827517991

`record[gcd(n+1, A324435(n))]`
-/

namespace A252781.P397959529827517991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324435 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252781.P397959529827517991

/-! ## A252781.P12475262523281498443

`floor(n/9)*A161828(n)+1+n`
-/

namespace A252781.P12475262523281498443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋ * A161828 n + 1 + (n : ℤ)

end

end A252781.P12475262523281498443

/-! ## A252781.P9619050662540525821

`A157007(∏{digits}[n+1, C(n+1, #)])+n`
-/

namespace A252781.P9619050662540525821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157007 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose (n + 1) x).prod + (n : ℤ)

end

end A252781.P9619050662540525821

/-!
# A252782: a(n) = n-th term of Euler transform of n-th powers.

The programs for A252782, there is no canonical definition to state claims against.
-/

/-! ## A252782.P4753071732465398521

`A144048(∑[4*n])`
-/

namespace A252782.P4753071732465398521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252782.P4753071732465398521

/-! ## A252782.P12633101611421103598

`A144048(A046092(n))+A025469(n)`
-/

namespace A252782.P12633101611421103598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A046092 n).toNat + A025469 n

end

end A252782.P12633101611421103598

/-! ## A252782.P8321245014476389736

`A144048(A046092(n))*A152847(n)`
-/

namespace A252782.P8321245014476389736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A046092 n).toNat * A152847 n

end

end A252782.P8321245014476389736

/-! ## A252782.P16066144320690181588

`gcd(A000038(n), A144048(A046092(n)))`
-/

namespace A252782.P16066144320690181588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144048 (A046092 n).toNat)

end

end A252782.P16066144320690181588

/-! ## A252782.P15064554208070081859

`or(A000007(n), A144048(A046092(n)))`
-/

namespace A252782.P15064554208070081859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144048 (A046092 n).toNat)

end

end A252782.P15064554208070081859

/-!
# A252785: Number of exponent-3 class 2 groups of order 3^n.

The programs for A252785, there is no canonical definition to state claims against.
-/

/-! ## A252785.P11123313873031163300

`A055679(∑[∏[n+1-2/a(n-1)]])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A252785.P11123313873031163300
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  (n + 1 : ℚ) - 2 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A252785.P11123313873031163300

/-! ## A252785.P16870463475428825487

`A092953(lcm(n, 2*n!)+1-∑{p}[n+1, C(#, n)]+n)`
-/

namespace A252785.P16870463475428825487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 ((Nat.lcm n (2 * Nat.factorial n) : ℤ) + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A252785.P16870463475428825487

/-! ## A252785.P15024938248727520247

`A035942(A024987(n))`
-/

namespace A252785.P15024938248727520247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 (A024987 n).toNat

end

end A252785.P15024938248727520247

/-!
# A252786: Number of exponent-5 class 2 groups of order 5^n.

The programs for A252786, there is no canonical definition to state claims against.
-/

/-! ## A252786.P11806783245668876746

`A002375(∏[ceil(sqrt(2^n))])`
-/

namespace A252786.P11806783245668876746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 ^ n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A252786.P11806783245668876746

/-! ## A252786.P9538742013529863287

`A105703(a(n-1)-2)-2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A252786.P9538742013529863287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  A105703 (a (n - 1) - 2).toNat - 2

end

end A252786.P9538742013529863287

/-! ## A252786.P93284422616732014

`A241092(A063757(n))`
-/

namespace A252786.P93284422616732014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (A063757 n).toNat

end

end A252786.P93284422616732014

/-!
# A252787: Number of exponent-7 class 2 groups of order 7^n.

The programs for A252787, there is no canonical definition to state claims against.
-/

/-! ## A252787.P11827586031855985685

`A346635(round(ϕ*(a(n-1)+a(n-2)))-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A252787.P11827586031855985685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  A346635 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + a (n - 2) : ℝ)) - 1).toNat

end

end A252787.P11827586031855985685

/-! ## A252787.P6810994830259561075

`A098236(A149401(n))`
-/

namespace A252787.P6810994830259561075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A149401 n).toNat

end

end A252787.P6810994830259561075

/-! ## A252787.P18214512126384638630

`A035942(A301229(n))`
-/

namespace A252787.P18214512126384638630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 (A301229 n).toNat

end

end A252787.P18214512126384638630

/-!
# A252788: Numbers m such that 3^m + m is a semiprime.

The programs for A252788, there is no canonical definition to state claims against.
-/

/-! ## A252788.P12981920596716804467

`eq[A141747(4*n+3), A325509(2*(n+6))]`
-/

namespace A252788.P12981920596716804467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141747 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (2 * (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A252788.P12981920596716804467

/-!
# A252789: Numbers m such that 4^m + m is a semiprime.

The programs for A252789, there is no canonical definition to state claims against.
-/

/-! ## A252789.P11330782308334651439

`A121388(A210286(n+1))`
-/

namespace A252789.P11330782308334651439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121388 (A210286 (n + 1)).toNat

end

end A252789.P11330782308334651439

/-!
# A252790: Numbers m such that 5^m + m is a semiprime.

The programs for A252790, there is no canonical definition to state claims against.
-/

/-! ## A252790.P6427660263201388567

`A003991(or(A001844(n), A099195(n)))`
-/

namespace A252790.P6427660263201388567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (Int.lor (A001844 n) (A099195 n)).toNat

end

end A252790.P6427660263201388567

/-!
# A252793: Numbers m such that 8^m + m is a semiprime.

The programs for A252793, there is no canonical definition to state claims against.
-/

/-! ## A252793.P6843963231770140884

`A194509(A022144(n)+A100552(n+1)%(5*A100560(n)))`
-/

namespace A252793.P6843963231770140884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A022144 n + Int.tmod (A100552 (n + 1)) (5 * A100560 n)).toNat

end

end A252793.P6843963231770140884

/-!
# A252796: Smallest of n consecutive integers whose product is divisible by at least n distinct prime factors.

The programs for A252796, there is no canonical definition to state claims against.
-/

/-! ## A252796.P918474462511704185

`A252797(n+1)-n`
-/

namespace A252796.P918474462511704185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252797 (n + 1) - (n : ℤ)

end

end A252796.P918474462511704185

/-! ## A252796.P4311407979187766942

`record[A252797(ceil(or(2, n)/10))]-n`
-/

namespace A252796.P4311407979187766942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252797 ⌈(Nat.lor 2 n : ℚ) / 10⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A252796.P4311407979187766942

/-! ## A252796.P11731153672713805928

`record[A252797(A152271(n))]-n`
-/

namespace A252796.P11731153672713805928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252797 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A252796.P11731153672713805928

/-! ## A252796.P18344942702882885928

`abs(A252797(n+1)+A001489(n))`
-/

namespace A252796.P18344942702882885928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A252797 (n + 1) + A001489 n|

end

end A252796.P18344942702882885928

/-! ## A252796.P5142956707021890605

`A001478(n+1)+A252797(n+1)+1`
-/

namespace A252796.P5142956707021890605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A252797 (n + 1) + 1)

end

end A252796.P5142956707021890605

/-! ## A252796.P11612244819928459739

`A185015(3*n+4)+A252797(n+1)+A001489(n)`
-/

namespace A252796.P11612244819928459739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (3 * n + 4) + (A252797 (n + 1) + A001489 n)

end

end A252796.P11612244819928459739

/-! ## A252796.P14383203736408302981

`A010052(A000124(n+6)+6)+A252797(n+1)+A001489(n)`
-/

namespace A252796.P14383203736408302981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000124 (n + 6) + 6).toNat + (A252797 (n + 1) + A001489 n)

end

end A252796.P14383203736408302981

/-! ## A252796.P4084618374324710784

`A020725(A252797(n+1)+A001478(n+1))`
-/

namespace A252796.P4084618374324710784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A252797 (n + 1) + A001478 (n + 1)).toNat

end

end A252796.P4084618374324710784

/-!
# A252797: Largest of n consecutive integers whose product is divisible by at least n distinct prime factors.

The programs for A252797, there is no canonical definition to state claims against.
-/

/-! ## A252797.P7030208053185379756

`A252796(n+1)+n`
-/

namespace A252797.P7030208053185379756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252796 (n + 1) + (n : ℤ)

end

end A252797.P7030208053185379756

/-! ## A252797.P3908462446387173164

`A123545(A351393(3*n+7))+A040067(n+1)`
-/

namespace A252797.P3908462446387173164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (A351393 (3 * n + 7)).toNat + A040067 (n + 1)

end

end A252797.P3908462446387173164

/-! ## A252797.P12316357899397513143

`A381431(A093832(n+2))`
-/

namespace A252797.P12316357899397513143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381431 (A093832 (n + 2)).toNat

end

end A252797.P12316357899397513143

/-! ## A252797.P11613774026601705207

`∑[A254045(A102942(n+1)+1)+1]`
-/

namespace A252797.P11613774026601705207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A102942 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252797.P11613774026601705207

/-! ## A252797.P18211903583687272901

`record[gcd(A005117(n+2), A320311(n+1))]`
-/

namespace A252797.P18211903583687272901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005117 (n + 2)) (A320311 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252797.P18211903583687272901

