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
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
# A144400: Triangle read by rows: row n (n > 0) gives the coefficients of x^k (0 <= k <= n - 1) in the expansion of Sum_{j=0..n} A000931(j+4)*binomial(n, j)*x^(j - 1)*(1 - x)^(n - j).

The programs for A144400, there is no canonical definition to state claims against.
-/

/-! ## A144400.P16180534387764966660

`A135356(n+1)-A129186(A130750(n))`
-/

namespace A144400.P16180534387764966660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135356 (n + 1) - A129186 (A130750 n).toNat

end

end A144400.P16180534387764966660

/-!
# A144401: Padovan ( A000931) version of A038137: expansion of polynomials as antidiagonal: p(x,n)=1/(1-x-x^3)^n.

The programs for A144401, there is no canonical definition to state claims against.
-/

/-! ## A144401.P10189186775051053299

`A202191(gcd(A010816(n), A038722(n+1)))`
-/

namespace A144401.P10189186775051053299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A144401.P10189186775051053299

/-! ## A144401.P5439943018494839529

`A202191(∑[char[∑[n]]]²-n)`
-/

namespace A144401.P5439943018494839529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A144401.P5439943018494839529

/-! ## A144401.P6881756010138805535

`gcd(A198954(n), A202191(A038722(n+1)))`
-/

namespace A144401.P6881756010138805535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198954 n) (A202191 (A038722 (n + 1)).toNat)

end

end A144401.P6881756010138805535

/-! ## A144401.P17810582554151554100

`lcm(A033999(n), A202191(A038722(n+1)))`
-/

namespace A144401.P17810582554151554100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A202191 (A038722 (n + 1)).toNat)

end

end A144401.P17810582554151554100

/-! ## A144401.P4819168886890631101

`A009001(2*n)²*A202191(A038722(n+1))`
-/

namespace A144401.P4819168886890631101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A202191 (A038722 (n + 1)).toNat

end

end A144401.P4819168886890631101

/-!
# A144402: Triangle in A144385 read downwards by columns.

The programs for A144402, there is no canonical definition to state claims against.
-/

/-! ## A144402.P7151091717913393266

`A144417(∑[2*n]%comp[∑[n]])`
-/

namespace A144402.P7151091717913393266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144417 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A144402.P7151091717913393266

/-! ## A144402.P16459511005553120060

`A144417(∑[char[∑[n]]]²-(n+1))`
-/

namespace A144402.P16459511005553120060
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144417 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A144402.P16459511005553120060

/-! ## A144402.P15656105874029607536

`or(char[2], A144417(A061579(n)))`
-/

namespace A144402.P15656105874029607536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144417 (A061579 n).toNat)

end

end A144402.P15656105874029607536

/-! ## A144402.P8976374947612747068

`A144417(A061579(n))%A000032(n)`
-/

namespace A144402.P8976374947612747068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144417 (A061579 n).toNat) (A000032 n)

end

end A144402.P8976374947612747068

/-! ## A144402.P14456337354881222559

`∑{d}[A144417(A061579(n)), A000010(#)]`
-/

namespace A144402.P14456337354881222559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144417 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A144402.P14456337354881222559

/-! ## A144402.P13012958619366773801

`A144417(A061579(n))^Δ[A002262(n)]`
-/

namespace A144402.P13012958619366773801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144417 (A061579 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A144402.P13012958619366773801

/-! ## A144402.P9715147656714788372

`A000108(C(2, n))*A144417(A061579(n))`
-/

namespace A144402.P9715147656714788372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A144417 (A061579 n).toNat

end

end A144402.P9715147656714788372

/-! ## A144402.P4364054730997708272

`A007318(C(2, n))*A144417(A061579(n))`
-/

namespace A144402.P4364054730997708272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A144417 (A061579 n).toNat

end

end A144402.P4364054730997708272

/-! ## A144402.P569473632020126989

`A144417(A061579(n))+val(A007318(n), 77)`
-/

namespace A144402.P569473632020126989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144417 (A061579 n).toNat + (SequenceMachineLib.valuation (A007318 n).toNat 77 : ℤ)

end

end A144402.P569473632020126989

/-! ## A144402.P6768937197168240635

`A144417(A061579(n))+A008683(4*(n+1))`
-/

namespace A144402.P6768937197168240635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144417 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A144402.P6768937197168240635

/-!
# A144403: Triangle T(n, k) = binomial(n, k)^2 - binomial(n, k) - 1, read by rows.

The programs for A144403, the canonical program `A144403.P18283006545070846630` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144403 has offset 0).

The definition of A144403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144403.P18283006545070846630

`2*C(A007318(n), 2)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144403

/-- `2*C(A007318(n), 2)-1` -/
def P18283006545070846630.Spec : Prop :=
  ∀ n, P18283006545070846630.a n = A144403 n

theorem P18283006545070846630.correct : P18283006545070846630.Spec := by
  intro n
  simp only [A144403]

end A144403

/-! ## A144403.P5267525809549584847

`A008459(n)-(A007318(n)+1)`
-/

namespace A144403.P5267525809549584847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n - (A007318 n + 1)

end

end A144403.P5267525809549584847

namespace A144403

/-- `A008459(n)-(A007318(n)+1)` -/
def P5267525809549584847.Spec : Prop :=
  ∀ n, P5267525809549584847.a n = A144403 n

end A144403

/-! ## A144403.P4145476302302502997

`A007318(n)*A014473(n)-1`
-/

namespace A144403.P4145476302302502997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A014473 n - 1

end

end A144403.P4145476302302502997

namespace A144403

/-- `A007318(n)*A014473(n)-1` -/
def P4145476302302502997.Spec : Prop :=
  ∀ n, P4145476302302502997.a n = A144403 n

end A144403

/-! ## A144403.P16969998786766615386

`A014473(n)*A131830(n)-1`
-/

namespace A144403.P16969998786766615386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A131830 n - 1

end

end A144403.P16969998786766615386

namespace A144403

/-- `A014473(n)*A131830(n)-1` -/
def P16969998786766615386.Spec : Prop :=
  ∀ n, P16969998786766615386.a n = A144403 n

end A144403

/-! ## A144403.P10988291097084910155

`A014473(n)*A132749(n)-1`
-/

namespace A144403.P10988291097084910155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A132749 n - 1

end

end A144403.P10988291097084910155

namespace A144403

/-- `A014473(n)*A132749(n)-1` -/
def P10988291097084910155.Spec : Prop :=
  ∀ n, P10988291097084910155.a n = A144403 n

end A144403

/-! ## A144403.P13823710614610900967

`A014473(n)*A135227(n)-1`
-/

namespace A144403.P13823710614610900967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A135227 n - 1

end

end A144403.P13823710614610900967

namespace A144403

/-- `A014473(n)*A135227(n)-1` -/
def P13823710614610900967.Spec : Prop :=
  ∀ n, P13823710614610900967.a n = A144403 n

end A144403

/-! ## A144403.P3657451394666520366

`A144404(n)-2*A008459(n)`
-/

namespace A144403.P3657451394666520366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144404 n - 2 * A008459 n

end

end A144403.P3657451394666520366

namespace A144403

/-- `A144404(n)-2*A008459(n)` -/
def P3657451394666520366.Spec : Prop :=
  ∀ n, P3657451394666520366.a n = A144403 n

end A144403

/-! ## A144403.P18359467131811167356

`A108086(n)²-(A007318(n)+1)`
-/

namespace A144403.P18359467131811167356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 - (A007318 n + 1)

end

end A144403.P18359467131811167356

namespace A144403

/-- `A108086(n)²-(A007318(n)+1)` -/
def P18359467131811167356.Spec : Prop :=
  ∀ n, P18359467131811167356.a n = A144403 n

end A144403

/-! ## A144403.P14882918682038262643

`A117440(n)²-(A007318(n)+1)`
-/

namespace A144403.P14882918682038262643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n ^ 2 - (A007318 n + 1)

end

end A144403.P14882918682038262643

namespace A144403

/-- `A117440(n)²-(A007318(n)+1)` -/
def P14882918682038262643.Spec : Prop :=
  ∀ n, P14882918682038262643.a n = A144403 n

end A144403

/-! ## A144403.P1170312291305480216

`abs(A014473(n)*A117440(n))-1`
-/

namespace A144403.P1170312291305480216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014473 n * A117440 n| - 1

end

end A144403.P1170312291305480216

namespace A144403

/-- `abs(A014473(n)*A117440(n))-1` -/
def P1170312291305480216.Spec : Prop :=
  ∀ n, P1170312291305480216.a n = A144403 n

end A144403

/-! ## A144403.P4981882364067830057

`A130595(n)²-(A007318(n)+1)`
-/

namespace A144403.P4981882364067830057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 - (A007318 n + 1)

end

end A144403.P4981882364067830057

namespace A144403

/-- `A130595(n)²-(A007318(n)+1)` -/
def P4981882364067830057.Spec : Prop :=
  ∀ n, P4981882364067830057.a n = A144403 n

end A144403

/-! ## A144403.P4694320708120510722

`A206735(n)²-(A206735(n)+1)`
-/

namespace A144403.P4694320708120510722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n ^ 2 - (A206735 n + 1)

end

end A144403.P4694320708120510722

namespace A144403

/-- `A206735(n)²-(A206735(n)+1)` -/
def P4694320708120510722.Spec : Prop :=
  ∀ n, P4694320708120510722.a n = A144403 n

end A144403

/-! ## A144403.P818179049866764680

`A130595(n)²-(A014473(n)+2)`
-/

namespace A144403.P818179049866764680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 - (A014473 n + 2)

end

end A144403.P818179049866764680

namespace A144403

/-- `A130595(n)²-(A014473(n)+2)` -/
def P818179049866764680.Spec : Prop :=
  ∀ n, P818179049866764680.a n = A144403 n

end A144403

/-! ## A144403.P13877700677870173213

`(1-A104795(n))²-A104795(n)`
-/

namespace A144403.P13877700677870173213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A104795 n) ^ 2 - A104795 n

end

end A144403.P13877700677870173213

namespace A144403

/-- `(1-A104795(n))²-A104795(n)` -/
def P13877700677870173213.Spec : Prop :=
  ∀ n, P13877700677870173213.a n = A144403 n

end A144403

/-! ## A144403.P10586449101155735923

`(1-A132735(n))²-A132735(n)`
-/

namespace A144403.P10586449101155735923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A132735 n) ^ 2 - A132735 n

end

end A144403.P10586449101155735923

namespace A144403

/-- `(1-A132735(n))²-A132735(n)` -/
def P10586449101155735923.Spec : Prop :=
  ∀ n, P10586449101155735923.a n = A144403 n

end A144403

/-! ## A144403.P7200558228384843746

`A144404(n)-2*A007318(n)²`
-/

namespace A144403.P7200558228384843746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144404 n - 2 * A007318 n ^ 2

end

end A144403.P7200558228384843746

namespace A144403

/-- `A144404(n)-2*A007318(n)²` -/
def P7200558228384843746.Spec : Prop :=
  ∀ n, P7200558228384843746.a n = A144403 n

end A144403

/-! ## A144403.P10155087818128762630

`A144404(n)-2*A130595(n)²`
-/

namespace A144403.P10155087818128762630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144404 n - 2 * A130595 n ^ 2

end

end A144403.P10155087818128762630

namespace A144403

/-- `A144404(n)-2*A130595(n)²` -/
def P10155087818128762630.Spec : Prop :=
  ∀ n, P10155087818128762630.a n = A144403 n

end A144403

/-! ## A144403.P10247527732886898454

`2*C(A285118(n)+A285116(n), 2)-1`
-/

namespace A144403.P10247527732886898454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A285118 n + A285116 n).toNat 2 : ℤ) - 1

end

end A144403.P10247527732886898454

namespace A144403

/-- `2*C(A285118(n)+A285116(n), 2)-1` -/
def P10247527732886898454.Spec : Prop :=
  ∀ n, P10247527732886898454.a n = A144403 n

end A144403

/-! ## A144403.P5315225586127833837

`A153881(n+2)+A007318(n)*A014473(n)`
-/

namespace A144403.P5315225586127833837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A007318 n * A014473 n

end

end A144403.P5315225586127833837

namespace A144403

/-- `A153881(n+2)+A007318(n)*A014473(n)` -/
def P5315225586127833837.Spec : Prop :=
  ∀ n, P5315225586127833837.a n = A144403 n

end A144403

/-! ## A144403.P5894317087825084081

`2*C(A176348(n)/A176346(n), 2)-1`
-/

namespace A144403.P5894317087825084081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))).toNat 2 : ℤ) - 1

end

end A144403.P5894317087825084081

namespace A144403

/-- `2*C(A176348(n)/A176346(n), 2)-1` -/
def P5894317087825084081.Spec : Prop :=
  ∀ n, P5894317087825084081.a n = A144403 n

end A144403

/-!
# A144404: Triangle T(n,k) = 3*binomial(n, k)^2 - binomial(n, k) - 1, read by rows.

The programs for A144404, the canonical program `A144404.P1827414218033536067` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144404 has offset 0).

The definition of A144404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144404.P1827414218033536067

`A144390(A007318(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144404

/-- `A144390(A007318(n))` -/
def P1827414218033536067.Spec : Prop :=
  ∀ n, P1827414218033536067.a n = A144404 n

theorem P1827414218033536067.correct : P1827414218033536067.Spec := by
  intro n
  simp only [A144404]

end A144404

/-! ## A144404.P10274697131562261589

`A144403(n)+2*A007318(n)²`
-/

namespace A144404.P10274697131562261589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144403 n + 2 * A007318 n ^ 2

end

end A144404.P10274697131562261589

namespace A144404

/-- `A144403(n)+2*A007318(n)²` -/
def P10274697131562261589.Spec : Prop :=
  ∀ n, P10274697131562261589.a n = A144404 n

end A144404

/-! ## A144404.P15502689961653174221

`A131063(n)+3*A014473(n)²`
-/

namespace A144404.P15502689961653174221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131063 n + 3 * A014473 n ^ 2

end

end A144404.P15502689961653174221

namespace A144404

/-- `A131063(n)+3*A014473(n)²` -/
def P15502689961653174221.Spec : Prop :=
  ∀ n, P15502689961653174221.a n = A144404 n

end A144404

/-! ## A144404.P2582327534630518441

`(A124928(n)+2)*(A007318(n)-1)+1`
-/

namespace A144404.P2582327534630518441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124928 n + 2) * (A007318 n - 1) + 1

end

end A144404.P2582327534630518441

namespace A144404

/-- `(A124928(n)+2)*(A007318(n)-1)+1` -/
def P2582327534630518441.Spec : Prop :=
  ∀ n, P2582327534630518441.a n = A144404 n

end A144404

/-! ## A144404.P9181476459516276088

`A014473(n)+A007318(n)*A131060(n)`
-/

namespace A144404.P9181476459516276088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A007318 n * A131060 n

end

end A144404.P9181476459516276088

namespace A144404

/-- `A014473(n)+A007318(n)*A131060(n)` -/
def P9181476459516276088.Spec : Prop :=
  ∀ n, P9181476459516276088.a n = A144404 n

end A144404

/-! ## A144404.P11108915334175870319

`A131061(n)+A014473(n)*A131060(n)`
-/

namespace A144404.P11108915334175870319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n + A014473 n * A131060 n

end

end A144404.P11108915334175870319

namespace A144404

/-- `A131061(n)+A014473(n)*A131060(n)` -/
def P11108915334175870319.Spec : Prop :=
  ∀ n, P11108915334175870319.a n = A144404 n

end A144404

/-! ## A144404.P9865055004921462244

`A144405(n)/A007318(n)`
-/

namespace A144404.P9865055004921462244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144405 n : ℚ) / (A007318 n : ℚ)

end

end A144404.P9865055004921462244

namespace A144404

/-- `A144405(n)/A007318(n)` -/
def P9865055004921462244.Spec : Prop :=
  ∀ n, P9865055004921462244.a n = (A144404 n : ℚ)

end A144404

/-! ## A144404.P6671930342266293261

`A144390(A014473(n)+1)`
-/

namespace A144404.P6671930342266293261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (A014473 n + 1).toNat

end

end A144404.P6671930342266293261

namespace A144404

/-- `A144390(A014473(n)+1)` -/
def P6671930342266293261.Spec : Prop :=
  ∀ n, P6671930342266293261.a n = A144404 n

end A144404

/-! ## A144404.P17121827831352618710

`A135370(A109128(n))`
-/

namespace A144404.P17121827831352618710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (A109128 n).toNat

end

end A144404.P17121827831352618710

namespace A144404

/-- `A135370(A109128(n))` -/
def P17121827831352618710.Spec : Prop :=
  ∀ n, P17121827831352618710.a n = A144404 n

end A144404

/-! ## A144404.P15497513724206620410

`A135370(2*A007318(n)-1)`
-/

namespace A144404.P15497513724206620410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (2 * A007318 n - 1).toNat

end

end A144404.P15497513724206620410

namespace A144404

/-- `A135370(2*A007318(n)-1)` -/
def P15497513724206620410.Spec : Prop :=
  ∀ n, P15497513724206620410.a n = A144404 n

end A144404

/-! ## A144404.P17892179978010867596

`A135370(A007318(n)+A007318(n)-1)`
-/

namespace A144404.P17892179978010867596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (A007318 n + (A007318 n - 1)).toNat

end

end A144404.P17892179978010867596

namespace A144404

/-- `A135370(A007318(n)+A007318(n)-1)` -/
def P17892179978010867596.Spec : Prop :=
  ∀ n, P17892179978010867596.a n = A144404 n

end A144404

/-! ## A144404.P4088171304321027802

`A135370(A007318(n)-(1-A007318(n)))`
-/

namespace A144404.P4088171304321027802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (A007318 n - (1 - A007318 n)).toNat

end

end A144404.P4088171304321027802

namespace A144404

/-- `A135370(A007318(n)-(1-A007318(n)))` -/
def P4088171304321027802.Spec : Prop :=
  ∀ n, P4088171304321027802.a n = A144404 n

end A144404

/-! ## A144404.P5236152110614001014

`A138984(A131060(n))`
-/

namespace A144404.P5236152110614001014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138984 (A131060 n).toNat

end

end A144404.P5236152110614001014

namespace A144404

/-- `A138984(A131060(n))` -/
def P5236152110614001014.Spec : Prop :=
  ∀ n, P5236152110614001014.a n = A144404 n

end A144404

/-!
# A144405: Triangle T(n,k) = binomial(n, k)*(3*binomial(n, k)^2 - binomial(n, k) - 1), read by rows.

The programs for A144405, the canonical program `A144405.P5741731572261963603` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144405 has offset 0).

The definition of A144405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144405.P5741731572261963603

`A007318(n)*A144404(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A144405

/-- `A007318(n)*A144404(n)` -/
def P5741731572261963603.Spec : Prop :=
  ∀ n, P5741731572261963603.a n = A144405 n

theorem P5741731572261963603.correct : P5741731572261963603.Spec := by
  intro n
  simp only [A144405]

end A144405

/-! ## A144405.P6996474411066632008

`lcm(A130595(n), A144404(n))`
-/

namespace A144405.P6996474411066632008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130595 n) (A144404 n)

end

end A144405.P6996474411066632008

namespace A144405

/-- `lcm(A130595(n), A144404(n))` -/
def P6996474411066632008.Spec : Prop :=
  ∀ n, (P6996474411066632008.a n : ℤ) = A144405 n

end A144405

/-! ## A144405.P10231127247178600676

`abs(A117440(n)*A144404(n))`
-/

namespace A144405.P10231127247178600676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A144404 n|

end

end A144405.P10231127247178600676

namespace A144405

/-- `abs(A117440(n)*A144404(n))` -/
def P10231127247178600676.Spec : Prop :=
  ∀ n, P10231127247178600676.a n = A144405 n

end A144405

/-! ## A144405.P11753718607821496392

`sqrt(A008459(n))*A144404(n)`
-/

namespace A144405.P11753718607821496392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A144404 n : ℝ)

end

end A144405.P11753718607821496392

namespace A144405

/-- `sqrt(A008459(n))*A144404(n)` -/
def P11753718607821496392.Spec : Prop :=
  ∀ n, P11753718607821496392.a n = (A144405 n : ℝ)

end A144405

/-! ## A144405.P4489800831496414617

`Δ[A102363(n)]*A144404(n)`
-/

namespace A144405.P4489800831496414617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A144404 n

end

end A144405.P4489800831496414617

namespace A144405

/-- `Δ[A102363(n)]*A144404(n)` -/
def P4489800831496414617.Spec : Prop :=
  ∀ n, P4489800831496414617.a n = A144405 n

end A144405

/-! ## A144405.P4450170839476526989

`A074909(A083920(n))*A144404(n)`
-/

namespace A144405.P4450170839476526989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 n).toNat * A144404 n

end

end A144405.P4450170839476526989

namespace A144405

/-- `A074909(A083920(n))*A144404(n)` -/
def P4450170839476526989.Spec : Prop :=
  ∀ n, P4450170839476526989.a n = A144405 n

end A144405

/-! ## A144405.P1687634432709103552

`A007318(n)*A144390(A014473(n)+1)`
-/

namespace A144405.P1687634432709103552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A144390 (A014473 n + 1).toNat

end

end A144405.P1687634432709103552

namespace A144405

/-- `A007318(n)*A144390(A014473(n)+1)` -/
def P1687634432709103552.Spec : Prop :=
  ∀ n, P1687634432709103552.a n = A144405 n

end A144405

/-! ## A144405.P16147600176054084486

`A004525(A134058(n))*A144404(n)`
-/

namespace A144405.P16147600176054084486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A134058 n).toNat * A144404 n

end

end A144405.P16147600176054084486

namespace A144405

/-- `A004525(A134058(n))*A144404(n)` -/
def P16147600176054084486.Spec : Prop :=
  ∀ n, P16147600176054084486.a n = A144405 n

end A144405

/-! ## A144405.P18204723430961867426

`A110654(A109128(n))*A144404(n)`
-/

namespace A144405.P18204723430961867426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A109128 n).toNat * A144404 n

end

end A144405.P18204723430961867426

namespace A144405

/-- `A110654(A109128(n))*A144404(n)` -/
def P18204723430961867426.Spec : Prop :=
  ∀ n, P18204723430961867426.a n = A144405 n

end A144405

/-!
# A144406: Rectangular array A read by upward antidiagonals: entry A(n,k) in row n and column k gives the number of compositions of k in which no part exceeds n, n>=1, k>=0.

The programs for A144406, there is no canonical definition to state claims against.
-/

/-! ## A144406.P6671440618386677136

`A048887(2*n-comp[∑[n+1]]+1)`
-/

namespace A144406.P6671440618386677136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1).toNat

end

end A144406.P6671440618386677136

/-! ## A144406.P8064347724862460592

`A175331(A056943(n)+2)`
-/

namespace A144406.P8064347724862460592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175331 (A056943 n + 2).toNat

end

end A144406.P8064347724862460592

/-! ## A144406.P5832532492422912103

`A092921(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A144406.P5832532492422912103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A144406.P5832532492422912103

/-! ## A144406.P14894433301195296019

`A092921(A099375(n)+n)`
-/

namespace A144406.P14894433301195296019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A099375 n + (n : ℤ)).toNat

end

end A144406.P14894433301195296019

/-! ## A144406.P8260453818639209578

`A092921(A038722(n+1)+A003056(n))`
-/

namespace A144406.P8260453818639209578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A038722 (n + 1) + A003056 n).toNat

end

end A144406.P8260453818639209578

/-! ## A144406.P9539338677884860806

`A247506(comp[∑[n-1]])`
-/

namespace A144406.P9539338677884860806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A144406.P9539338677884860806

/-! ## A144406.P16594314072230136098

`A092921(A380649(n+1))`
-/

namespace A144406.P16594314072230136098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A380649 (n + 1)).toNat

end

end A144406.P16594314072230136098

/-!
# A144407: a(n) = A058529(n+1)^2.

The programs for A144407, there is no canonical definition to state claims against.
-/

/-! ## A144407.P9569973517134269674

`A058529(n+2)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144407.P9569973517134269674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 2) ^ 2

end

end A144407.P9569973517134269674

/-! ## A144407.P15157535009575563340

`Δ[A058529(n+1)+a(n-1)]^2` with `a(0)=0`
-/

namespace A144407.P15157535009575563340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A058529 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A144407.P15157535009575563340

/-! ## A144407.P2074603109191892997

`A058529(n+2)*A058529((n+1)%A001132(n+1)+1)`
-/

namespace A144407.P2074603109191892997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 2) * A058529 (Int.tmod (n + 1 : ℤ) (A001132 (n + 1)) + 1).toNat

end

end A144407.P2074603109191892997

/-! ## A144407.P11430926803217381865

`A253408(n+3)²`
-/

namespace A144407.P11430926803217381865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 3) ^ 2

end

end A144407.P11430926803217381865

/-! ## A144407.P5433362769264003156

`record[A198437(A323404(n+1))]`
-/

namespace A144407.P5433362769264003156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (A323404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144407.P5433362769264003156

/-! ## A144407.P18222578371522570113

`record[A198437(A351033(n+1))]`
-/

namespace A144407.P18222578371522570113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198437 (A351033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144407.P18222578371522570113

/-! ## A144407.P361914890647722596

`∩[A047522(n+2), A057126(n+2)]²`
-/

namespace A144407.P361914890647722596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P361914890647722596

/-! ## A144407.P2081653447107331387

`∩[A007775(n+2), A057126(n+2)]²`
-/

namespace A144407.P2081653447107331387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P2081653447107331387

/-! ## A144407.P14067987564533515801

`∩[A007310(n+2), A057126(n+2)]²`
-/

namespace A144407.P14067987564533515801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P14067987564533515801

/-! ## A144407.P17229091950377382489

`∩[A047478(n+2), A057126(n+2)]²`
-/

namespace A144407.P17229091950377382489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P17229091950377382489

/-! ## A144407.P14812839998458980471

`∩[A047523(n+2), A057126(n+2)]²`
-/

namespace A144407.P14812839998458980471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P14812839998458980471

/-! ## A144407.P2845690284584092542

`∩[A047529(n+2), A057126(n+2)]²`
-/

namespace A144407.P2845690284584092542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P2845690284584092542

/-! ## A144407.P8368616643083462181

`∩[A045572(n+2), A057126(n+2)]²`
-/

namespace A144407.P8368616643083462181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P8368616643083462181

/-! ## A144407.P14890521077481075066

`∩[A046642(n+2), A057126(n+2)]²`
-/

namespace A144407.P14890521077481075066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046642 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P14890521077481075066

/-! ## A144407.P8918935286055225717

`∩[A069909(n+1), A057126(n+2)]²`
-/

namespace A144407.P8918935286055225717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P8918935286055225717

/-! ## A144407.P6947430440501336767

`∩[A223134(n+1), A057126(n+2)]²`
-/

namespace A144407.P6947430440501336767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P6947430440501336767

/-! ## A144407.P12328423940684795701

`∩[A047479(n+2), A057126(n+2)]²`
-/

namespace A144407.P12328423940684795701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047479 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P12328423940684795701

/-! ## A144407.P2889271712585490335

`∩[A047493(n+2), A057126(n+2)]²`
-/

namespace A144407.P2889271712585490335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047493 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P2889271712585490335

/-! ## A144407.P16453750143838617278

`∩[A047530(n+2), A057126(n+2)]²`
-/

namespace A144407.P16453750143838617278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144407.P16453750143838617278

/-!
# A144408: Last digit of A135266(n).

The programs for A144408, the canonical program `A144408.P12771811640547746423` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144408 has offset 0).

The definition of A144408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144408.P12771811640547746423

`A135266(n)%10`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A144408

/-- `A135266(n)%10` -/
def P12771811640547746423.Spec : Prop :=
  ∀ n, P12771811640547746423.a n = A144408 n

theorem P12771811640547746423.correct : P12771811640547746423.Spec := by
  intro n
  simp only [A144408]

end A144408

/-!
# A144409: Antidiagonal expansion of: f(t,n) = If[n == 1, 1/(1 - t), 1/(1 - t^floor(n/2) - t^n)].

The programs for A144409, there is no canonical definition to state claims against.
-/

/-! ## A144409.P13754124755213593174

`round(A305027(n)/A331461(n)^A304942(n+3))`
-/

namespace A144409.P13754124755213593174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305027 n : ℚ) / (A331461 n : ℚ) ^ (A304942 (n + 3) : ℤ))

end

end A144409.P13754124755213593174

/-! ## A144409.P11584027693270965855

`A162642(A214676(n+2)+1)`
-/

namespace A144409.P11584027693270965855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A214676 (n + 2) + 1).toNat

end

end A144409.P11584027693270965855

/-!
# A144410: a(n) = 4*(3*n+1)*(3*n+2).

The programs for A144410, the canonical program `A144410.P11718001685947677624` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144410 has offset 0).

The definition of A144410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(3*n+1)*(3*n+2)` (program `A144410.P11718001685947677624`, by `A144410.P11718001685947677624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144410.P3908206520227022944

`a(n-1)+72*n` with `a(0)=8`
-/

namespace A144410.P3908206520227022944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 72 * n

end

end A144410.P3908206520227022944

namespace A144410

/-- `a(n-1)+72*n` -/
def P3908206520227022944.Spec : Prop :=
  ∀ n, (P3908206520227022944.a n : ℤ) = A144410 n

theorem P3908206520227022944.correct : P3908206520227022944.Spec := by
  intro n
  induction n with
  | zero => simp [A144410, A144410.P3908206520227022944.a, A144410.P11718001685947677624.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A144410, Nat.add_sub_cancel, A144410.P3908206520227022944.a, A144410.P11718001685947677624.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A144410

/-! ## A144410.P11718001685947677624

`4*(3*n+1)*(3*n+2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144410

/-- `4*(3*n+1)*(3*n+2)` -/
def P11718001685947677624.Spec : Prop :=
  ∀ n, (P11718001685947677624.a n : ℤ) = A144410 n

theorem P11718001685947677624.correct : P11718001685947677624.Spec := by
  intro n
  simp only [A144410]

end A144410

/-! ## A144410.P4852812966320127960

`A136016(2*n+1)`
-/

namespace A144410.P4852812966320127960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136016 (2 * n + 1)

end

end A144410.P4852812966320127960

namespace A144410

/-- `A136016(2*n+1)` -/
def P4852812966320127960.Spec : Prop :=
  ∀ n, P4852812966320127960.a n = A144410 n

end A144410

/-! ## A144410.P17663551139668446127

`xor(1, (6*n+3)²)`
-/

namespace A144410.P17663551139668446127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((6 * n + 3) ^ 2)

end

end A144410.P17663551139668446127

namespace A144410

/-- `xor(1, (6*n+3)²)` -/
def P17663551139668446127.Spec : Prop :=
  ∀ n, (P17663551139668446127.a n : ℤ) = A144410 n

end A144410

/-! ## A144410.P9198376414462540404

`and(-2, (6*n+3)²)`
-/

namespace A144410.P9198376414462540404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((6 * n + 3) ^ 2 : ℤ)

end

end A144410.P9198376414462540404

namespace A144410

/-- `and(-2, (6*n+3)²)` -/
def P9198376414462540404.Spec : Prop :=
  ∀ n, P9198376414462540404.a n = A144410 n

end A144410

/-! ## A144410.P817644318468960756

`abs(1-lcm(3, (6*n+3)²))`
-/

namespace A144410.P817644318468960756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 3 ((6 * n + 3) ^ 2) : ℤ)|

end

end A144410.P817644318468960756

namespace A144410

/-- `abs(1-lcm(3, (6*n+3)²))` -/
def P817644318468960756.Spec : Prop :=
  ∀ n, P817644318468960756.a n = A144410 n

end A144410

/-! ## A144410.P15475117421866072187

`lcm(2, 1-(3*(2*n+1))²)`
-/

namespace A144410.P15475117421866072187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - ((3 * (2 * n + 1)) ^ 2 : ℤ))

end

end A144410.P15475117421866072187

namespace A144410

/-- `lcm(2, 1-(3*(2*n+1))²)` -/
def P15475117421866072187.Spec : Prop :=
  ∀ n, (P15475117421866072187.a n : ℤ) = A144410 n

end A144410

/-! ## A144410.P4250015235758095864

`A016946(n)-1`
-/

namespace A144410.P4250015235758095864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n - 1

end

end A144410.P4250015235758095864

namespace A144410

/-- `A016946(n)-1` -/
def P4250015235758095864.Spec : Prop :=
  ∀ n, P4250015235758095864.a n = A144410 n

end A144410

/-! ## A144410.P4764583878473305601

`A001513(n)+3`
-/

namespace A144410.P4764583878473305601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001513 n + 3

end

end A144410.P4764583878473305601

namespace A144410

/-- `A001513(n)+3` -/
def P4764583878473305601.Spec : Prop :=
  ∀ n, P4764583878473305601.a n = A144410 n

end A144410

/-! ## A144410.P1192242053420093734

`A016945(n)²-1`
-/

namespace A144410.P1192242053420093734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ 2 - 1

end

end A144410.P1192242053420093734

namespace A144410

/-- `A016945(n)²-1` -/
def P1192242053420093734.Spec : Prop :=
  ∀ n, P1192242053420093734.a n = A144410 n

end A144410

/-! ## A144410.P12326454617216475119

`sqrt(A016948(n))-1`
-/

namespace A144410.P12326454617216475119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016948 n : ℝ) - 1

end

end A144410.P12326454617216475119

namespace A144410

/-- `sqrt(A016948(n))-1` -/
def P12326454617216475119.Spec : Prop :=
  ∀ n, P12326454617216475119.a n = (A144410 n : ℝ)

end A144410

/-! ## A144410.P11534237154828037053

`A017594(n)/4-1`
-/

namespace A144410.P11534237154828037053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017594 n : ℚ) / 4 - 1

end

end A144410.P11534237154828037053

namespace A144410

/-- `A017594(n)/4-1` -/
def P11534237154828037053.Spec : Prop :=
  ∀ n, P11534237154828037053.a n = (A144410 n : ℚ)

end A144410

/-! ## A144410.P3063414865757241380

`Δ[A033428(n)]²-1`
-/

namespace A144410.P3063414865757241380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A144410.P3063414865757241380

namespace A144410

/-- `Δ[A033428(n)]²-1` -/
def P3063414865757241380.Spec : Prop :=
  ∀ n, P3063414865757241380.a n = A144410 n

end A144410

/-! ## A144410.P4296275607678110843

`A017569(n)+A016934(n)`
-/

namespace A144410.P4296275607678110843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n + A016934 n

end

end A144410.P4296275607678110843

namespace A144410

/-- `A017569(n)+A016934(n)` -/
def P4296275607678110843.Spec : Prop :=
  ∀ n, P4296275607678110843.a n = A144410 n

end A144410

/-! ## A144410.P18066361306969749958

`A135659(n)+A016922(n)`
-/

namespace A144410.P18066361306969749958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n + A016922 n

end

end A144410.P18066361306969749958

namespace A144410

/-- `A135659(n)+A016922(n)` -/
def P18066361306969749958.Spec : Prop :=
  ∀ n, P18066361306969749958.a n = A144410 n

end A144410

/-! ## A144410.P16005515240521261223

`A016958(n)-A017617(n)`
-/

namespace A144410.P16005515240521261223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n - A017617 n

end

end A144410.P16005515240521261223

namespace A144410

/-- `A016958(n)-A017617(n)` -/
def P16005515240521261223.Spec : Prop :=
  ∀ n, P16005515240521261223.a n = A144410 n

end A144410

/-! ## A144410.P3417478984806738520

`A304505(n)-A051062(n)`
-/

namespace A144410.P3417478984806738520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304505 n - A051062 n

end

end A144410.P3417478984806738520

namespace A144410

/-- `A304505(n)-A051062(n)` -/
def P3417478984806738520.Spec : Prop :=
  ∀ n, P3417478984806738520.a n = A144410 n

end A144410

/-! ## A144410.P18274690654846739121

`A016970(n)-A350052(n)`
-/

namespace A144410.P18274690654846739121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n - A350052 n

end

end A144410.P18274690654846739121

namespace A144410

/-- `A016970(n)-A350052(n)` -/
def P18274690654846739121.Spec : Prop :=
  ∀ n, P18274690654846739121.a n = A144410 n

end A144410

/-! ## A144410.P4704779309281367794

`A193448(n+1)+A016826(n)`
-/

namespace A144410.P4704779309281367794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193448 (n + 1) + A016826 n

end

end A144410.P4704779309281367794

namespace A144410

/-- `A193448(n+1)+A016826(n)` -/
def P4704779309281367794.Spec : Prop :=
  ∀ n, P4704779309281367794.a n = A144410 n

end A144410

/-! ## A144410.P14407063559425827094

`(A016951(n)-A016949(n))/A016949(n)`
-/

namespace A144410.P14407063559425827094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 n - A016949 n : ℚ) / (A016949 n : ℚ)

end

end A144410.P14407063559425827094

namespace A144410

/-- `(A016951(n)-A016949(n))/A016949(n)` -/
def P14407063559425827094.Spec : Prop :=
  ∀ n, P14407063559425827094.a n = (A144410 n : ℚ)

end A144410

/-!
# A144411: Odd nonprime gaps adjusted to be {2,1,0,-1}: a(n)=A067970(n)/2-2.

The programs for A144411, the canonical program `A144411.P17247777929449242437` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144411 has offset 1).

The definition of A144411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144411.P17247777929449242437

`A067970(n+1)/2-2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A144411

/-- `A067970(n+1)/2-2` -/
def P17247777929449242437.Spec : Prop :=
  ∀ n, P17247777929449242437.a n = (A144411 (n + 1) : ℚ)

end A144411

/-! ## A144411.P17834989138659116376

`A196274(n+1)-2`
-/

namespace A144411.P17834989138659116376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1) - 2

end

end A144411.P17834989138659116376

namespace A144411

/-- `A196274(n+1)-2` -/
def P17834989138659116376.Spec : Prop :=
  ∀ n, P17834989138659116376.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P9247082158964504262

`Δ[A104275(n+1)]-2`
-/

namespace A144411.P9247082158964504262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A144411.P9247082158964504262

namespace A144411

/-- `Δ[A104275(n+1)]-2` -/
def P9247082158964504262.Spec : Prop :=
  ∀ n, P9247082158964504262.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P1814171492256395330

`A153052(n+1)-A047845(n+1)`
-/

namespace A144411.P1814171492256395330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) - A047845 (n + 1)

end

end A144411.P1814171492256395330

namespace A144411

/-- `A153052(n+1)-A047845(n+1)` -/
def P1814171492256395330.Spec : Prop :=
  ∀ n, P1814171492256395330.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P859336203644763514

`A153238(n+1)-A104275(n+1)`
-/

namespace A144411.P859336203644763514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - A104275 (n + 1)

end

end A144411.P859336203644763514

namespace A144411

/-- `A153238(n+1)-A104275(n+1)` -/
def P859336203644763514.Spec : Prop :=
  ∀ n, P859336203644763514.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P8247974239556798916

`A153040(n+1)-A153044(n+1)`
-/

namespace A144411.P8247974239556798916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - A153044 (n + 1)

end

end A144411.P8247974239556798916

namespace A144411

/-- `A153040(n+1)-A153044(n+1)` -/
def P8247974239556798916.Spec : Prop :=
  ∀ n, P8247974239556798916.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P10303614295029483750

`A153047(n+1)-A153041(n+1)`
-/

namespace A144411.P10303614295029483750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - A153041 (n + 1)

end

end A144411.P10303614295029483750

namespace A144411

/-- `A153047(n+1)-A153041(n+1)` -/
def P10303614295029483750.Spec : Prop :=
  ∀ n, P10303614295029483750.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P18217273109367135793

`A153238(n+1)-(A047845(n+1)+1)`
-/

namespace A144411.P18217273109367135793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - (A047845 (n + 1) + 1)

end

end A144411.P18217273109367135793

namespace A144411

/-- `A153238(n+1)-(A047845(n+1)+1)` -/
def P18217273109367135793.Spec : Prop :=
  ∀ n, P18217273109367135793.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P5471570612099614280

`A053726(n+1)-(A104275(n+1)+2)`
-/

namespace A144411.P5471570612099614280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - (A104275 (n + 1) + 2)

end

end A144411.P5471570612099614280

namespace A144411

/-- `A053726(n+1)-(A104275(n+1)+2)` -/
def P5471570612099614280.Spec : Prop :=
  ∀ n, P5471570612099614280.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P4830379717259989677

`A104275(n+2)-(A104275(n+1)+2)`
-/

namespace A144411.P4830379717259989677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - (A104275 (n + 1) + 2)

end

end A144411.P4830379717259989677

namespace A144411

/-- `A104275(n+2)-(A104275(n+1)+2)` -/
def P4830379717259989677.Spec : Prop :=
  ∀ n, P4830379717259989677.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P8191335411145553257

`A000720(A071904(n+1)-A014076(n+1))-2`
-/

namespace A144411.P8191335411145553257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071904 (n + 1) - A014076 (n + 1)).toNat - 2

end

end A144411.P8191335411145553257

namespace A144411

/-- `A000720(A071904(n+1)-A014076(n+1))-2` -/
def P8191335411145553257.Spec : Prop :=
  ∀ n, P8191335411145553257.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P18158309510506008415

`Δ[A047845(n+1)]-2`
-/

namespace A144411.P18158309510506008415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A144411.P18158309510506008415

namespace A144411

/-- `Δ[A047845(n+1)]-2` -/
def P18158309510506008415.Spec : Prop :=
  ∀ n, P18158309510506008415.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P15966640402368631143

`Δ[A153041(n+1)]-2`
-/

namespace A144411.P15966640402368631143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A144411.P15966640402368631143

namespace A144411

/-- `Δ[A153041(n+1)]-2` -/
def P15966640402368631143.Spec : Prop :=
  ∀ n, P15966640402368631143.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P442422283276169721

`Δ[A153043(n+1)]-2`
-/

namespace A144411.P442422283276169721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A144411.P442422283276169721

namespace A144411

/-- `Δ[A153043(n+1)]-2` -/
def P442422283276169721.Spec : Prop :=
  ∀ n, P442422283276169721.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P11843377092480917241

`Δ[A153044(n+1)]-2`
-/

namespace A144411.P11843377092480917241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A144411.P11843377092480917241

namespace A144411

/-- `Δ[A153044(n+1)]-2` -/
def P11843377092480917241.Spec : Prop :=
  ∀ n, P11843377092480917241.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P4725772404391735378

`Δ[A153049(n+1)]-2`
-/

namespace A144411.P4725772404391735378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A144411.P4725772404391735378

namespace A144411

/-- `Δ[A153049(n+1)]-2` -/
def P4725772404391735378.Spec : Prop :=
  ∀ n, P4725772404391735378.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P4395249514795820326

`Δ[A153051(n+1)]-2`
-/

namespace A144411.P4395249514795820326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A144411.P4395249514795820326

namespace A144411

/-- `Δ[A153051(n+1)]-2` -/
def P4395249514795820326.Spec : Prop :=
  ∀ n, P4395249514795820326.a n = A144411 (n + 1)

end A144411

/-! ## A144411.P10275302993377834285

`Δ[comp[A005097(n+1)]]-2`
-/

namespace A144411.P10275302993377834285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2

end

end A144411.P10275302993377834285

namespace A144411

/-- `Δ[comp[A005097(n+1)]]-2` -/
def P10275302993377834285.Spec : Prop :=
  ∀ n, P10275302993377834285.a n = A144411 (n + 1)

end A144411

/-!
# A144412: Invert transform of odd nonprime gaps adjusted to be from the set {2,1,0,-1}: b(n)=A067970(n)/2-2; a(n)=Sum[b(n + 1)*a(n - k), {k, 1, n}].

The programs for A144412, the canonical program `A144412.P16963643404803757217` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144412 has offset 1).

The definition of A144412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144412.P16963643404803757217

`(n-6)*a(n-2)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144412

/-- `(n-6)*a(n-2)` -/
def P16963643404803757217.Spec : Prop :=
  ∀ n, P16963643404803757217.a n = A144412 (n + 1)

theorem P16963643404803757217.correct : P16963643404803757217.Spec := by
  intro n
  simp only [A144412, Nat.add_sub_cancel]

end A144412

/-!
# A144413: a(n) = Sum_{k=0..n} (-1)^k * binomial(n, k) * A000931(n-k+4).

The programs for A144413, the canonical program `A144413.P11029616263859765889` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144413 has offset 0).

The definition of A144413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144413.P11029616263859765889

`A050935(record[lcm(2, n)+1])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144413

/-- `A050935(record[lcm(2, n)+1])` -/
def P11029616263859765889.Spec : Prop :=
  ∀ n, P11029616263859765889.a n = A144413 n

theorem P11029616263859765889.correct : P11029616263859765889.Spec := by
  intro n
  simp only [A144413]

end A144413

/-! ## A144413.P10804677795032747208

`A050935(record[n²%8+n]+1)`
-/

namespace A144413.P10804677795032747208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 8 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A144413.P10804677795032747208

namespace A144413

/-- `A050935(record[n²%8+n]+1)` -/
def P10804677795032747208.Spec : Prop :=
  ∀ n, P10804677795032747208.a n = A144413 n

end A144413

/-! ## A144413.P9564627748096568908

`A050935(record[n*gcd(2, n+1)]+1)`
-/

namespace A144413.P9564627748096568908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A144413.P9564627748096568908

namespace A144413

/-- `A050935(record[n*gcd(2, n+1)]+1)` -/
def P9564627748096568908.Spec : Prop :=
  ∀ n, P9564627748096568908.a n = A144413 n

end A144413

/-! ## A144413.P14066442085297729771

`A050935(A131098(n+1))`
-/

namespace A144413.P14066442085297729771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A131098 (n + 1)).toNat

end

end A144413.P14066442085297729771

namespace A144413

/-- `A050935(A131098(n+1))` -/
def P14066442085297729771.Spec : Prop :=
  ∀ n, P14066442085297729771.a n = A144413 n

end A144413

/-! ## A144413.P12355761078892738629

`A176971(A130824(n)+1)`
-/

namespace A144413.P12355761078892738629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (A130824 n + 1).toNat

end

end A144413.P12355761078892738629

namespace A144413

/-- `A176971(A130824(n)+1)` -/
def P12355761078892738629.Spec : Prop :=
  ∀ n, P12355761078892738629.a n = A144413 n

end A144413

/-! ## A144413.P12804074271482214005

`A176971(record[A109043(n)+1])`
-/

namespace A144413.P12804074271482214005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144413.P12804074271482214005

namespace A144413

/-- `A176971(record[A109043(n)+1])` -/
def P12804074271482214005.Spec : Prop :=
  ∀ n, P12804074271482214005.a n = A144413 n

end A144413

/-! ## A144413.P13440106218560957054

`A050935(2*A004273(n)+1)`
-/

namespace A144413.P13440106218560957054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * A004273 n + 1).toNat

end

end A144413.P13440106218560957054

namespace A144413

/-- `A050935(2*A004273(n)+1)` -/
def P13440106218560957054.Spec : Prop :=
  ∀ n, P13440106218560957054.a n = A144413 n

end A144413

/-! ## A144413.P8093414291136775403

`A176971(A004275(2*n)+1)`
-/

namespace A144413.P8093414291136775403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (A004275 (2 * n) + 1).toNat

end

end A144413.P8093414291136775403

namespace A144413

/-- `A176971(A004275(2*n)+1)` -/
def P8093414291136775403.Spec : Prop :=
  ∀ n, P8093414291136775403.a n = A144413 n

end A144413

/-! ## A144413.P16285854274461500848

`A050935(2*A004277(n)-1)`
-/

namespace A144413.P16285854274461500848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * A004277 n - 1).toNat

end

end A144413.P16285854274461500848

namespace A144413

/-- `A050935(2*A004277(n)-1)` -/
def P16285854274461500848.Spec : Prop :=
  ∀ n, P16285854274461500848.a n = A144413 n

end A144413

/-! ## A144413.P11407718685643022168

`A176971(record[A006368(n+1)+n]-n)`
-/

namespace A144413.P11407718685643022168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A144413.P11407718685643022168

namespace A144413

/-- `A176971(record[A006368(n+1)+n]-n)` -/
def P11407718685643022168.Spec : Prop :=
  ∀ n, P11407718685643022168.a n = A144413 n

end A144413

/-! ## A144413.P17187085347504645771

`A050935(A004273(A004277(n)))`
-/

namespace A144413.P17187085347504645771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A004273 (A004277 n).toNat).toNat

end

end A144413.P17187085347504645771

namespace A144413

/-- `A050935(A004273(A004277(n)))` -/
def P17187085347504645771.Spec : Prop :=
  ∀ n, P17187085347504645771.a n = A144413 n

end A144413

/-! ## A144413.P16079437259608448363

`A050935(A004273(n)+A004273(n)+1)`
-/

namespace A144413.P16079437259608448363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A004273 n + (A004273 n + 1)).toNat

end

end A144413.P16079437259608448363

namespace A144413

/-- `A050935(A004273(n)+A004273(n)+1)` -/
def P16079437259608448363.Spec : Prop :=
  ∀ n, P16079437259608448363.a n = A144413 n

end A144413

/-! ## A144413.P6713403674708333277

`A050935(A004277(n)+A004277(n)-1)`
-/

namespace A144413.P6713403674708333277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A004277 n + (A004277 n - 1)).toNat

end

end A144413.P6713403674708333277

namespace A144413

/-- `A050935(A004277(n)+A004277(n)-1)` -/
def P6713403674708333277.Spec : Prop :=
  ∀ n, P6713403674708333277.a n = A144413 n

end A144413

/-! ## A144413.P12479547020824722183

`A050935(A004277(n)-(1-A004277(n)))`
-/

namespace A144413.P12479547020824722183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A004277 n - (1 - A004277 n)).toNat

end

end A144413.P12479547020824722183

namespace A144413

/-- `A050935(A004277(n)-(1-A004277(n)))` -/
def P12479547020824722183.Spec : Prop :=
  ∀ n, P12479547020824722183.a n = A144413 n

end A144413

/-! ## A144413.P1574652537659497635

`A050935(A004273(n)-(n-A008486(n)))`
-/

namespace A144413.P1574652537659497635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A004273 n - ((n : ℤ) - A008486 n)).toNat

end

end A144413.P1574652537659497635

namespace A144413

/-- `A050935(A004273(n)-(n-A008486(n)))` -/
def P1574652537659497635.Spec : Prop :=
  ∀ n, P1574652537659497635.a n = A144413 n

end A144413

/-! ## A144413.P15107412594705938997

`A050935(4*n+1)-A104769(4*n)`
-/

namespace A144413.P15107412594705938997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (4 * n + 1) - A104769 (4 * n)

end

end A144413.P15107412594705938997

namespace A144413

/-- `A050935(4*n+1)-A104769(4*n)` -/
def P15107412594705938997.Spec : Prop :=
  ∀ n, P15107412594705938997.a n = A144413 n

end A144413

/-! ## A144413.P6049078333400950983

`A166117(2*n+1)+A077954(2*(n+1))`
-/

namespace A144413.P6049078333400950983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166117 (2 * n + 1) + A077954 (2 * (n + 1))

end

end A144413.P6049078333400950983

namespace A144413

/-- `A166117(2*n+1)+A077954(2*(n+1))` -/
def P6049078333400950983.Spec : Prop :=
  ∀ n, P6049078333400950983.a n = A144413 n

end A144413

/-! ## A144413.P4454628646271092175

`A166117(2*n+1)+A077979(2*(n+1))`
-/

namespace A144413.P4454628646271092175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166117 (2 * n + 1) + A077979 (2 * (n + 1))

end

end A144413.P4454628646271092175

namespace A144413

/-- `A166117(2*n+1)+A077979(2*(n+1))` -/
def P4454628646271092175.Spec : Prop :=
  ∀ n, P4454628646271092175.a n = A144413 n

end A144413

/-! ## A144413.P16042612811577099409

`(A166117(2*n)-A141576(2*n+1))/2`
-/

namespace A144413.P16042612811577099409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166117 (2 * n) - A141576 (2 * n + 1) : ℚ) / 2

end

end A144413.P16042612811577099409

namespace A144413

/-- `(A166117(2*n)-A141576(2*n+1))/2` -/
def P16042612811577099409.Spec : Prop :=
  ∀ n, P16042612811577099409.a n = (A144413 n : ℚ)

end A144413

/-!
# A144414: a(n) = 2*(4^n - 1)/3 - n.

The programs for A144414, the canonical program `A144414.P8465682955443024568` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144414 has offset 1).

The definition of A144414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144414.P8465682955443024568

`2*(4^(n+1)-1)/3-(n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144414

/-- `2*(4^(n+1)-1)/3-(n+1)` -/
def P8465682955443024568.Spec : Prop :=
  ∀ n, P8465682955443024568.a n = (A144414 (n + 1) : ℚ)

end A144414

/-! ## A144414.P13915690971640183611

`-∑[or(1, -2*4^n)]`
-/

namespace A144414.P13915690971640183611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * 4 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144414.P13915690971640183611

namespace A144414

/-- `-∑[or(1, -2*4^n)]` -/
def P13915690971640183611.Spec : Prop :=
  ∀ n, P13915690971640183611.a n = A144414 (n + 1)

end A144414

/-! ## A144414.P2712439622648469017

`-∑[xor(1, -2*4^n)]`
-/

namespace A144414.P2712439622648469017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * 4 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144414.P2712439622648469017

namespace A144414

/-- `-∑[xor(1, -2*4^n)]` -/
def P2712439622648469017.Spec : Prop :=
  ∀ n, P2712439622648469017.a n = A144414 (n + 1)

end A144414

/-! ## A144414.P1532967673659195948

`A011377(2*n)`
-/

namespace A144414.P1532967673659195948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011377 (2 * n)

end

end A144414.P1532967673659195948

namespace A144414

/-- `A011377(2*n)` -/
def P1532967673659195948.Spec : Prop :=
  ∀ n, P1532967673659195948.a n = A144414 (n + 1)

end A144414

/-! ## A144414.P2263855237849919472

`A083579(2*(n+1))`
-/

namespace A144414.P2263855237849919472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083579 (2 * (n + 1))

end

end A144414.P2263855237849919472

namespace A144414

/-- `A083579(2*(n+1))` -/
def P2263855237849919472.Spec : Prop :=
  ∀ n, P2263855237849919472.a n = A144414 (n + 1)

end A144414

/-! ## A144414.P4951422498435926384

`A178420(2*(n+1))`
-/

namespace A144414.P4951422498435926384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178420 (2 * (n + 1))

end

end A144414.P4951422498435926384

namespace A144414

/-- `A178420(2*(n+1))` -/
def P4951422498435926384.Spec : Prop :=
  ∀ n, P4951422498435926384.a n = A144414 (n + 1)

end A144414

/-!
# A144416: a(n) is the total number of partitions of [1, 2, ..., k] into exactly n blocks, each of size 1, 2 or 3, for 0 <= k <= 3n.

The programs for A144416, there is no canonical definition to state claims against.
-/

/-! ## A144416.P7525056015833408245

`A144422(n)/n!`
-/

namespace A144416.P7525056015833408245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (Nat.factorial n : ℚ)

end

end A144416.P7525056015833408245

/-! ## A144416.P256378237349046170

`A144422(n)/A000142(n)`
-/

namespace A144416.P256378237349046170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (A000142 n : ℚ)

end

end A144416.P256378237349046170

/-! ## A144416.P7912375748648091753

`A144422(n)/∏[A028310(n)]`
-/

namespace A144416.P7912375748648091753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A144416.P7912375748648091753

/-! ## A144416.P15956391077880665597

`A144422(n)/∏[A123108(2*n)]`
-/

namespace A144416.P15956391077880665597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A144416.P15956391077880665597

/-!
# A144417: Triangle in A144385 read upwards by columns.

The programs for A144417, there is no canonical definition to state claims against.
-/

/-! ## A144417.P17817969896739847648

`A144402(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A144417.P17817969896739847648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A144417.P17817969896739847648

/-! ## A144417.P699609985948793004

`A144402(char[A014132(n+1)]*A061579(n))`
-/

namespace A144417.P699609985948793004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A144417.P699609985948793004

/-! ## A144417.P11945900241646214518

`A144402(∑[char[∑[n]]]²-(n+1))`
-/

namespace A144417.P11945900241646214518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A144417.P11945900241646214518

/-! ## A144417.P1735658299166908557

`or(char[1], A144402(A061579(n)))`
-/

namespace A144417.P1735658299166908557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144402 (A061579 n).toNat)

end

end A144417.P1735658299166908557

/-! ## A144417.P14336586432004213585

`A144402(A061579(n))%A022367(n)`
-/

namespace A144417.P14336586432004213585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144402 (A061579 n).toNat) (A022367 n)

end

end A144417.P14336586432004213585

/-! ## A144417.P7670374542813576415

`∑{d}[A144402(A061579(n)), A000010(#)]`
-/

namespace A144417.P7670374542813576415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A144417.P7670374542813576415

/-! ## A144417.P12652183130613354277

`A007318(C(6, n))*A144402(A061579(n))`
-/

namespace A144417.P12652183130613354277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 6 n) * A144402 (A061579 n).toNat

end

end A144417.P12652183130613354277

/-! ## A144417.P4560463245308691457

`A144402(A061579(n))^A014963(∑[n+1])`
-/

namespace A144417.P4560463245308691457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144402 (A061579 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A144417.P4560463245308691457

/-! ## A144417.P15945319543503721250

`A144402(A061579(n))+char[A000108(n+9)]`
-/

namespace A144417.P15945319543503721250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 (A061579 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A144417.P15945319543503721250

/-! ## A144417.P1693574923384895265

`A007318(4-(-1)^n)*A144402(A061579(n))`
-/

namespace A144417.P1693574923384895265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 - (-1) ^ n).toNat * A144402 (A061579 n).toNat

end

end A144417.P1693574923384895265

/-!
# A144419: Primes of the form prime(k) - 2*k (terms can be repeated).

The programs for A144419, the canonical program `A144419.P7004838141369626204` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144419 has offset 1).

The definition of A144419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144419.P10438901727393731778

`p?[A179437(n+1)]`
-/

namespace A144419.P10438901727393731778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P10438901727393731778

namespace A144419

/-- `p?[A179437(n+1)]` -/
def P10438901727393731778.Spec : Prop :=
  ∀ n, P10438901727393731778.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P7004838141369626204

`p?[Δ[A135267(n+1)]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144419

/-- `p?[Δ[A135267(n+1)]]` -/
def P7004838141369626204.Spec : Prop :=
  ∀ n, P7004838141369626204.a n = A144419 (n + 1)

theorem P7004838141369626204.correct : P7004838141369626204.Spec := by
  intro n
  simp only [A144419, Nat.add_sub_cancel]

end A144419

/-! ## A144419.P6706363315001960972

`p?[A131733(n+1)-1]`
-/

namespace A144419.P6706363315001960972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P6706363315001960972

namespace A144419

/-- `p?[A131733(n+1)-1]` -/
def P6706363315001960972.Spec : Prop :=
  ∀ n, P6706363315001960972.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P3914335027082682445

`p?[A065890(n+1)-n]`
-/

namespace A144419.P3914335027082682445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P3914335027082682445

namespace A144419

/-- `p?[A065890(n+1)-n]` -/
def P3914335027082682445.Spec : Prop :=
  ∀ n, P3914335027082682445.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P9685293560404767065

`p?[A073170(n+1)-n]`
-/

namespace A144419.P9685293560404767065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P9685293560404767065

namespace A144419

/-- `p?[A073170(n+1)-n]` -/
def P9685293560404767065.Spec : Prop :=
  ∀ n, P9685293560404767065.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P13087797212029306324

`p?[A162177(n+2)-n]`
-/

namespace A144419.P13087797212029306324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P13087797212029306324

namespace A144419

/-- `p?[A162177(n+2)-n]` -/
def P13087797212029306324.Spec : Prop :=
  ∀ n, P13087797212029306324.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P13140595204555895145

`p?[∑[A046933(n+1)-1]]`
-/

namespace A144419.P13140595204555895145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P13140595204555895145

namespace A144419

/-- `p?[∑[A046933(n+1)-1]]` -/
def P13140595204555895145.Spec : Prop :=
  ∀ n, P13140595204555895145.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P2114206600924222704

`p?[∑[A001223(n+1)-2]]`
-/

namespace A144419.P2114206600924222704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P2114206600924222704

namespace A144419

/-- `p?[∑[A001223(n+1)-2]]` -/
def P2114206600924222704.Spec : Prop :=
  ∀ n, P2114206600924222704.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P16004294026761420128

`p?[∑[A054541(n+1)-2]]`
-/

namespace A144419.P16004294026761420128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P16004294026761420128

namespace A144419

/-- `p?[∑[A054541(n+1)-2]]` -/
def P16004294026761420128.Spec : Prop :=
  ∀ n, P16004294026761420128.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P17065651312327482950

`filter[A179437(n+2), A010051(#)]`
-/

namespace A144419.P17065651312327482950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A144419.P17065651312327482950

namespace A144419

/-- `filter[A179437(n+2), A010051(#)]` -/
def P17065651312327482950.Spec : Prop :=
  ∀ n, P17065651312327482950.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P6951579086858815058

`filter[A179437(n+2), A379969(#)]`
-/

namespace A144419.P6951579086858815058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A144419.P6951579086858815058

namespace A144419

/-- `filter[A179437(n+2), A379969(#)]` -/
def P6951579086858815058.Spec : Prop :=
  ∀ n, P6951579086858815058.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P16281539992728214170

`p?[A006093(n+1)-A005408(n)]`
-/

namespace A144419.P16281539992728214170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P16281539992728214170

namespace A144419

/-- `p?[A006093(n+1)-A005408(n)]` -/
def P16281539992728214170.Spec : Prop :=
  ∀ n, P16281539992728214170.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P7694616424613602482

`p?[A008578(n+1)-A005843(n)]`
-/

namespace A144419.P7694616424613602482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P7694616424613602482

namespace A144419

/-- `p?[A008578(n+1)-A005843(n)]` -/
def P7694616424613602482.Spec : Prop :=
  ∀ n, P7694616424613602482.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P1574367705447185287

`p?[A008578(n+2)-A000027(2*(n+1))]`
-/

namespace A144419.P1574367705447185287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A000027 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P1574367705447185287

namespace A144419

/-- `p?[A008578(n+2)-A000027(2*(n+1))]` -/
def P1574367705447185287.Spec : Prop :=
  ∀ n, P1574367705447185287.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P9241619992491194722

`filter[A179437(n+2), A323153(#)]`
-/

namespace A144419.P9241619992491194722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A144419.P9241619992491194722

namespace A144419

/-- `filter[A179437(n+2), A323153(#)]` -/
def P9241619992491194722.Spec : Prop :=
  ∀ n, P9241619992491194722.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P10894072021701945649

`filter[A179437(n+2), A353670(#)]`
-/

namespace A144419.P10894072021701945649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A144419.P10894072021701945649

namespace A144419

/-- `filter[A179437(n+2), A353670(#)]` -/
def P10894072021701945649.Spec : Prop :=
  ∀ n, P10894072021701945649.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P3007535498255842718

`p?[A008578(n+2)-A014681(2*n+1)]`
-/

namespace A144419.P3007535498255842718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A014681 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P3007535498255842718

namespace A144419

/-- `p?[A008578(n+2)-A014681(2*n+1)]` -/
def P3007535498255842718.Spec : Prop :=
  ∀ n, P3007535498255842718.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P7327455220930830489

`p?[A000040(n+2)-A061228(2*(n+1))]`
-/

namespace A144419.P7327455220930830489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A061228 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P7327455220930830489

namespace A144419

/-- `p?[A000040(n+2)-A061228(2*(n+1))]` -/
def P7327455220930830489.Spec : Prop :=
  ∀ n, P7327455220930830489.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P17718061000630105686

`p?[A130008(n+1)-n]`
-/

namespace A144419.P17718061000630105686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P17718061000630105686

namespace A144419

/-- `p?[A130008(n+1)-n]` -/
def P17718061000630105686.Spec : Prop :=
  ∀ n, P17718061000630105686.a n = A144419 (n + 1)

end A144419

/-! ## A144419.P13640472580257927213

`p?[p?[A227142(n+1)]-A051755(n+2)]`
-/

namespace A144419.P13640472580257927213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P13640472580257927213

namespace A144419

/-- `p?[p?[A227142(n+1)]-A051755(n+2)]` -/
def P13640472580257927213.Spec : Prop :=
  ∀ n, P13640472580257927213.a n = A144419 (n + 1)

end A144419

/-!
# A144421: Primes of the form (p(n)+p(n+1)+p(n+2))/7, where p(n)=n-th prime.

The programs for A144421, there is no canonical definition to state claims against.
-/

/-! ## A144421.P1599302753835316686

`p?[A106608(A188651(n+1))]`
-/

namespace A144421.P1599302753835316686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A188651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144421.P1599302753835316686

/-! ## A144421.P17617579553518972606

`p?[A257847(A034961(n+1)+1)]`
-/

namespace A144421.P17617579553518972606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (A034961 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144421.P17617579553518972606

/-!
# A144422: a(n) = n!*A144416(n).

The programs for A144422, there is no canonical definition to state claims against.
-/

/-! ## A144422.P2618705960698206588

`n!*A144416(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144422.P2618705960698206588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A144416 n

end

end A144422.P2618705960698206588

/-! ## A144422.P6094856293310204666

`A000142(n)*A144416(n)`
-/

namespace A144422.P6094856293310204666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A144416 n

end

end A144422.P6094856293310204666

/-! ## A144422.P6261972390719273374

`∏[A028310(n)]*A144416(n)`
-/

namespace A144422.P6261972390719273374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A144416 n

end

end A144422.P6261972390719273374

/-! ## A144422.P3188379064440696851

`n!*A144510(A167614(n+1))`
-/

namespace A144422.P3188379064440696851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A144510 (A167614 (n + 1)).toNat

end

end A144422.P3188379064440696851

/-!
# A144426: Primes of the form (p(n)-2*(n-1))/7, where p(n)=n-th prime.

The programs for A144426, there is no canonical definition to state claims against.
-/

/-! ## A144426.P8471487833822345053

`A087525(7*n+2)`
-/

namespace A144426.P8471487833822345053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087525 (7 * n + 2)

end

end A144426.P8471487833822345053

/-! ## A144426.P1910975220583195967

`A180101(A340040(n+2))`
-/

namespace A144426.P1910975220583195967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A340040 (n + 2)).toNat

end

end A144426.P1910975220583195967

/-! ## A144426.P8572866153169267493

`A180101(A005277(n+1)-A180101(n))`
-/

namespace A144426.P8572866153169267493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A005277 (n + 1) - A180101 n).toNat

end

end A144426.P8572866153169267493

/-! ## A144426.P8286715231810065108

`A180101(A333224(n)+A009003(3*n+5))`
-/

namespace A144426.P8286715231810065108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A333224 n + A009003 (3 * n + 5)).toNat

end

end A144426.P8286715231810065108

/-! ## A144426.P13471702184644566956

`A124741(lt[A169867(n+1), A347131(n+1)])`
-/

namespace A144426.P13471702184644566956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A144426.P13471702184644566956

/-!
# A144427: Primes of the form (prime(k) + (-1)^k*3)/2.

The programs for A144427, there is no canonical definition to state claims against.
-/

/-! ## A144427.P11032630758844699002

`p?[abs(ceil(A273960(n+1)/2)+1)]`
-/

namespace A144427.P11032630758844699002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A273960 (n + 1) : ℚ) / 2⌉ + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P11032630758844699002

/-! ## A144427.P2884492549278238213

`p?[A124678(n+1)-or(n, -2)²]`
-/

namespace A144427.P2884492549278238213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 1) - Int.lor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P2884492549278238213

/-! ## A144427.P3987534739180832848

`p?[A005097(n+1)+gcd(2, n)²-2]`
-/

namespace A144427.P3987534739180832848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + ((Nat.gcd 2 n ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P3987534739180832848

/-! ## A144427.P7937893584899969790

`p?[A089253(n+1)-(3*and(1, n)+1)]`
-/

namespace A144427.P7937893584899969790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - (3 * Nat.land 1 n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P7937893584899969790

/-! ## A144427.P420924472567349707

`p?[A063934(2*n+1)-a(n-1)]` with `a(0)=3`
-/

namespace A144427.P420924472567349707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A063934 (2 * n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P420924472567349707

/-! ## A144427.P3146438158024621719

`p?[A089253(n+1)-A010685(n)]`
-/

namespace A144427.P3146438158024621719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - A010685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P3146438158024621719

/-! ## A144427.P880828935848505848

`p?[A098090(n+1)-A010674(n)]`
-/

namespace A144427.P880828935848505848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - A010674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P880828935848505848

/-! ## A144427.P12985266827266455778

`p?[A111333(n+1)-A280193(n)]`
-/

namespace A144427.P12985266827266455778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P12985266827266455778

/-! ## A144427.P4598230918905077551

`p?[A089253(n+1)-A000034(n)²]`
-/

namespace A144427.P4598230918905077551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - A000034 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P4598230918905077551

/-! ## A144427.P4191622176966357245

`p?[A008619(A000040(n+1))-A280193(n)]`
-/

namespace A144427.P4191622176966357245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000040 (n + 1)).toNat - A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144427.P4191622176966357245

/-!
# A144428: Square array read by ascending antidiagonals. A(L, n) is a table of sequences representing the number of valid nodes in level n of a labeled binary tree when the labeling rule forbids 1 of the 2^L states given by the last L digits of the parent label.

The programs for A144428, there is no canonical definition to state claims against.
-/

/-! ## A144428.P10908902790719122565

`A048887(2*comp[∑[n]]-n+1)`
-/

namespace A144428.P10908902790719122565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 ((2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat

end

end A144428.P10908902790719122565

/-! ## A144428.P6685723831088752793

`A247506(lt[1, A080934(n)])`
-/

namespace A144428.P6685723831088752793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144428.P6685723831088752793

/-! ## A144428.P12729766104774790531

`A247506(lt[1, A240608(n)])`
-/

namespace A144428.P12729766104774790531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144428.P12729766104774790531

/-! ## A144428.P10094043705483981827

`A247506(lt[1, A242784(n)])`
-/

namespace A144428.P10094043705483981827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144428.P10094043705483981827

/-! ## A144428.P14513758151871570556

`A247506(lt[1, A247506(n)])`
-/

namespace A144428.P14513758151871570556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144428.P14513758151871570556

/-! ## A144428.P12695684249769137502

`abs(1-A048887(lt[2, A059268(n)]))+1`
-/

namespace A144428.P12695684249769137502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A048887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)| + 1

end

end A144428.P12695684249769137502

/-! ## A144428.P13612194026444574026

`A048887(lt[2, A059268(n)])%A167487(n)`
-/

namespace A144428.P13612194026444574026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A167487 n)

end

end A144428.P13612194026444574026

/-! ## A144428.P16751751810823425885

`A087960(n)²*A048887(lt[2, A059268(n)])`
-/

namespace A144428.P16751751810823425885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A048887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144428.P16751751810823425885

/-! ## A144428.P14411190725991048543

`A048887(lt[2, A059268(n)])+A000035(2*n)`
-/

namespace A144428.P14411190725991048543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + A000035 (2 * n)

end

end A144428.P14411190725991048543

/-!
# A144429: Starts 1 2 3 then successive terms have differences 1 2 3.

The programs for A144429, the canonical program `A144429.P14733041582403829773` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144429 has offset 1).

The definition of A144429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144429.P14733041582403829773

`a(n-3)+6` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144429

/-- `a(n-3)+6` -/
def P14733041582403829773.Spec : Prop :=
  ∀ n, (P14733041582403829773.a n : ℤ) = A144429 (n + 1)

theorem P14733041582403829773.correct : P14733041582403829773.Spec := by
  intro n
  simp only [A144429, Nat.add_sub_cancel]

end A144429

/-! ## A144429.P15657421324113036226

`∑[ceil(ϕ^((n-3)%3))]`
-/

namespace A144429.P15657421324113036226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 3) 3 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144429.P15657421324113036226

namespace A144429

/-- `∑[ceil(ϕ^((n-3)%3))]` -/
def P15657421324113036226.Spec : Prop :=
  ∀ n, P15657421324113036226.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P4670251612481688112

`floor(∑[(3-(3-n)%3)/2])`
-/

namespace A144429.P4670251612481688112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - Int.tmod (3 - (n : ℤ)) 3 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A144429.P4670251612481688112

namespace A144429

/-- `floor(∑[(3-(3-n)%3)/2])` -/
def P4670251612481688112.Spec : Prop :=
  ∀ n, P4670251612481688112.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P14032512032520760360

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A144429.P14032512032520760360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144429.P14032512032520760360

namespace A144429

/-- `∑[abs(a(n-3))]` -/
def P14032512032520760360.Spec : Prop :=
  ∀ n, (P14032512032520760360.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P5882345591317661570

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A144429.P5882345591317661570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144429.P5882345591317661570

namespace A144429

/-- `∑[dr(a(n-3))]` -/
def P5882345591317661570.Spec : Prop :=
  ∀ n, (P5882345591317661570.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P17463619993480235535

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A144429.P17463619993480235535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144429.P17463619993480235535

namespace A144429

/-- `∑[floor(a(n-3))]` -/
def P17463619993480235535.Spec : Prop :=
  ∀ n, (P17463619993480235535.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P8696220932642481172

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

`round` is left out, it is the identity on integers.
-/

namespace A144429.P8696220932642481172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144429.P8696220932642481172

namespace A144429

/-- `∑[round(a(n-3))]` -/
def P8696220932642481172.Spec : Prop :=
  ∀ n, (P8696220932642481172.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P4789489656606617567

`∑[n%or(1, 3%(n+1))+1]`
-/

namespace A144429.P4789489656606617567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 (3 % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144429.P4789489656606617567

namespace A144429

/-- `∑[n%or(1, 3%(n+1))+1]` -/
def P4789489656606617567.Spec : Prop :=
  ∀ n, (P4789489656606617567.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P16760199411819700307

`∑[a(n-3)%4]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A144429.P16760199411819700307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144429.P16760199411819700307

namespace A144429

/-- `∑[a(n-3)%4]` -/
def P16760199411819700307.Spec : Prop :=
  ∀ n, (P16760199411819700307.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P8013424598915004926

`2*n-gcd(2, a(n-2)%3)` with `a(0)=1, a(1)=2`
-/

namespace A144429.P8013424598915004926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - (Int.gcd 2 (Int.tmod (a (n - 2)) 3) : ℤ)

end

end A144429.P8013424598915004926

namespace A144429

/-- `2*n-gcd(2, a(n-2)%3)` -/
def P8013424598915004926.Spec : Prop :=
  ∀ n, P8013424598915004926.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P14736959231188443993

`comp[n*(4*n+1)%3+4]+1`
-/

namespace A144429.P14736959231188443993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((4 * n + 1) % 3) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A144429.P14736959231188443993

namespace A144429

/-- `comp[n*(4*n+1)%3+4]+1` -/
def P14736959231188443993.Spec : Prop :=
  ∀ n, (P14736959231188443993.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P14887863976703930829

`A144430(n+1)-1`
-/

namespace A144429.P14887863976703930829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144430 (n + 1) - 1

end

end A144429.P14887863976703930829

namespace A144429

/-- `A144430(n+1)-1` -/
def P14887863976703930829.Spec : Prop :=
  ∀ n, P14887863976703930829.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P8065664865446376922

`A010882(n)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A144429.P8065664865446376922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A010882 n + a (n - 1)

end

end A144429.P8065664865446376922

namespace A144429

/-- `A010882(n)+a(n-1)` -/
def P8065664865446376922.Spec : Prop :=
  ∀ n, P8065664865446376922.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P12193171352174100350

`comp[abs(∑[2*n-(A047240(n+1)+3)]-1)]+1`
-/

namespace A144429.P12193171352174100350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A047240 (n + 1) + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A144429.P12193171352174100350

namespace A144429

/-- `comp[abs(∑[2*n-(A047240(n+1)+3)]-1)]+1` -/
def P12193171352174100350.Spec : Prop :=
  ∀ n, (P12193171352174100350.a n : ℤ) = A144429 (n + 1)

end A144429

/-! ## A144429.P12389654135373309140

`A107751(n)+A004274(n)`
-/

namespace A144429.P12389654135373309140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 n + A004274 n

end

end A144429.P12389654135373309140

namespace A144429

/-- `A107751(n)+A004274(n)` -/
def P12389654135373309140.Spec : Prop :=
  ∀ n, P12389654135373309140.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P5735645750516428191

`A113679(n)+A047267(n+1)`
-/

namespace A144429.P5735645750516428191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n + A047267 (n + 1)

end

end A144429.P5735645750516428191

namespace A144429

/-- `A113679(n)+A047267(n+1)` -/
def P5735645750516428191.Spec : Prop :=
  ∀ n, P5735645750516428191.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P14677071915288404728

`A264788(n)-A173857(n+1)`
-/

namespace A144429.P14677071915288404728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 n - A173857 (n + 1)

end

end A144429.P14677071915288404728

namespace A144429

/-- `A264788(n)-A173857(n+1)` -/
def P14677071915288404728.Spec : Prop :=
  ∀ n, P14677071915288404728.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P10951714863899799034

`A004278(n+1)+A107751(n)-1`
-/

namespace A144429.P10951714863899799034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1) + (A107751 n - 1)

end

end A144429.P10951714863899799034

namespace A144429

/-- `A004278(n+1)+A107751(n)-1` -/
def P10951714863899799034.Spec : Prop :=
  ∀ n, P10951714863899799034.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P1891875774793757441

`A300576(n+1)+A177702(n)-1`
-/

namespace A144429.P1891875774793757441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1) + (A177702 n - 1)

end

end A144429.P1891875774793757441

namespace A144429

/-- `A300576(n+1)+A177702(n)-1` -/
def P1891875774793757441.Spec : Prop :=
  ∀ n, P1891875774793757441.a n = A144429 (n + 1)

end A144429

/-! ## A144429.P15234894810148089946

`∪[A038179(n+1), A016957(n)]-1`
-/

namespace A144429.P15234894810148089946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A144429.P15234894810148089946

namespace A144429

/-- `∪[A038179(n+1), A016957(n)]-1` -/
def P15234894810148089946.Spec : Prop :=
  ∀ n, P15234894810148089946.a n = A144429 (n + 1)

end A144429

/-!
# A144430: a(n) = 1 + A144429(n).

The programs for A144430, the canonical program `A144430.P375800706036090337` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144430 has offset 1).

The definition of A144430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144430.P2351032585306623483

`a(n-3)+6` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A144430.P2351032585306623483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5, 7] fun n a =>
  a (n - 3) + 6

end

end A144430.P2351032585306623483

namespace A144430

/-- `a(n-3)+6` -/
def P2351032585306623483.Spec : Prop :=
  ∀ n, (P2351032585306623483.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P375800706036090337

`1+A144429(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144430

/-- `1+A144429(n+1)` -/
def P375800706036090337.Spec : Prop :=
  ∀ n, P375800706036090337.a n = A144430 (n + 1)

theorem P375800706036090337.correct : P375800706036090337.Spec := by
  intro n
  simp only [A144430, Nat.add_sub_cancel]

end A144430

/-! ## A144430.P6934162061311194004

`∑[ceil(ϕ^((n-3)%3))]+1`
-/

namespace A144430.P6934162061311194004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 3) 3 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A144430.P6934162061311194004

namespace A144430

/-- `∑[ceil(ϕ^((n-3)%3))]+1` -/
def P6934162061311194004.Spec : Prop :=
  ∀ n, P6934162061311194004.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P12001226650579157451

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A144430.P12001226650579157451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144430.P12001226650579157451

namespace A144430

/-- `∑[floor(a(n-3))]` -/
def P12001226650579157451.Spec : Prop :=
  ∀ n, (P12001226650579157451.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P4836967979432630352

`∑[a(n-3)%4]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A144430.P4836967979432630352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144430.P4836967979432630352

namespace A144430

/-- `∑[a(n-3)%4]` -/
def P4836967979432630352.Spec : Prop :=
  ∀ n, (P4836967979432630352.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P16747783241368767954

`comp[n*(4*n+1)%3+4]+2`
-/

namespace A144430.P16747783241368767954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((4 * n + 1) % 3) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A144430.P16747783241368767954

namespace A144430

/-- `comp[n*(4*n+1)%3+4]+2` -/
def P16747783241368767954.Spec : Prop :=
  ∀ n, (P16747783241368767954.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P1093956291980655906

`A004274(n)+A107751(n)+1`
-/

namespace A144430.P1093956291980655906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n + (A107751 n + 1)

end

end A144430.P1093956291980655906

namespace A144430

/-- `A004274(n)+A107751(n)+1` -/
def P1093956291980655906.Spec : Prop :=
  ∀ n, P1093956291980655906.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P14853708549570127424

`A107751(n)+A004278(n+1)`
-/

namespace A144430.P14853708549570127424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 n + A004278 (n + 1)

end

end A144430.P14853708549570127424

namespace A144430

/-- `A107751(n)+A004278(n+1)` -/
def P14853708549570127424.Spec : Prop :=
  ∀ n, P14853708549570127424.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P1641655346640832837

`A300576(n+1)+A177702(n)`
-/

namespace A144430.P1641655346640832837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1) + A177702 n

end

end A144430.P1641655346640832837

namespace A144430

/-- `A300576(n+1)+A177702(n)` -/
def P1641655346640832837.Spec : Prop :=
  ∀ n, P1641655346640832837.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P13507941734509795218

`∪[A038179(n+1), A016957(n)]`
-/

namespace A144430.P13507941734509795218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144430.P13507941734509795218

namespace A144430

/-- `∪[A038179(n+1), A016957(n)]` -/
def P13507941734509795218.Spec : Prop :=
  ∀ n, (P13507941734509795218.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P3264614549351107747

`A047267(n+1)+A113679(n)+1`
-/

namespace A144430.P3264614549351107747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1) + (A113679 n + 1)

end

end A144430.P3264614549351107747

namespace A144430

/-- `A047267(n+1)+A113679(n)+1` -/
def P3264614549351107747.Spec : Prop :=
  ∀ n, P3264614549351107747.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P4260194616531907337

`A264788(n)+1-A173857(n+1)`
-/

namespace A144430.P4260194616531907337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 n + (1 - A173857 (n + 1))

end

end A144430.P4260194616531907337

namespace A144430

/-- `A264788(n)+1-A173857(n+1)` -/
def P4260194616531907337.Spec : Prop :=
  ∀ n, P4260194616531907337.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P15529855950320331260

`∪[A038179(n+1), A047257(n+1)]`
-/

namespace A144430.P15529855950320331260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144430.P15529855950320331260

namespace A144430

/-- `∪[A038179(n+1), A047257(n+1)]` -/
def P15529855950320331260.Spec : Prop :=
  ∀ n, (P15529855950320331260.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P17644461288124230962

`A131793(a(n-1))+3` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A144430.P17644461288124230962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  A131793 (a (n - 1)).toNat + 3

end

end A144430.P17644461288124230962

namespace A144430

/-- `A131793(a(n-1))+3` -/
def P17644461288124230962.Spec : Prop :=
  ∀ n, P17644461288124230962.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P6604748712629643202

`A020725(A144429(n+1))`
-/

namespace A144430.P6604748712629643202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A144429 (n + 1)).toNat

end

end A144430.P6604748712629643202

namespace A144430

/-- `A020725(A144429(n+1))` -/
def P6604748712629643202.Spec : Prop :=
  ∀ n, P6604748712629643202.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P9356790694653469464

`record[gcd(n, A130481(A181569(n+1)))+n+1]`
-/

namespace A144430.P9356790694653469464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A130481 (A181569 (n + 1)).toNat) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144430.P9356790694653469464

namespace A144430

/-- `record[gcd(n, A130481(A181569(n+1)))+n+1]` -/
def P9356790694653469464.Spec : Prop :=
  ∀ n, (P9356790694653469464.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P5934027783529000315

`A133223(A107750(n+1))`
-/

namespace A144430.P5934027783529000315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (A107750 (n + 1)).toNat

end

end A144430.P5934027783529000315

namespace A144430

/-- `A133223(A107750(n+1))` -/
def P5934027783529000315.Spec : Prop :=
  ∀ n, P5934027783529000315.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P17950016365287472039

`eq[A130877(n+1), A313059(n)]`
-/

namespace A144430.P17950016365287472039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144430.P17950016365287472039

namespace A144430

/-- `eq[A130877(n+1), A313059(n)]` -/
def P17950016365287472039.Spec : Prop :=
  ∀ n, (P17950016365287472039.a n : ℤ) = A144430 (n + 1)

end A144430

/-! ## A144430.P12773402247465880843

`∑[∑[A146345(n+1)]%3+1]`
-/

namespace A144430.P12773402247465880843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144430.P12773402247465880843

namespace A144430

/-- `∑[∑[A146345(n+1)]%3+1]` -/
def P12773402247465880843.Spec : Prop :=
  ∀ n, P12773402247465880843.a n = A144430 (n + 1)

end A144430

/-! ## A144430.P7431170871193543329

`A049727(A060577(n+1))`
-/

namespace A144430.P7431170871193543329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049727 (A060577 (n + 1)).toNat

end

end A144430.P7431170871193543329

namespace A144430

/-- `A049727(A060577(n+1))` -/
def P7431170871193543329.Spec : Prop :=
  ∀ n, P7431170871193543329.a n = A144430 (n + 1)

end A144430

/-!
# A144431: Triangle read by rows: T(n,k) (1 <= k <= n) given by T(n,1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = -1.

The programs for A144431, there is no canonical definition to state claims against.
-/

/-! ## A144431.P5763306427669957865

`A016116(A152714(n))-A004197(A174450(n))`
-/

namespace A144431.P5763306427669957865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A152714 n).toNat - A004197 (A174450 n).toNat

end

end A144431.P5763306427669957865

/-! ## A144431.P8884755176015868259

`A000079(A004197(n)²)-A004197(A174450(n))`
-/

namespace A144431.P8884755176015868259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n ^ 2).toNat - A004197 (A174450 n).toNat

end

end A144431.P8884755176015868259

/-! ## A144431.P7552223893868271961

`2-A065363(A022167(n))`
-/

namespace A144431.P7552223893868271961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A065363 (A022167 n).toNat

end

end A144431.P7552223893868271961

/-! ## A144431.P12812817355961067153

`2-A357621(A099594(n))`
-/

namespace A144431.P12812817355961067153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A357621 (A099594 n).toNat

end

end A144431.P12812817355961067153

/-! ## A144431.P13846224389416880110

`2-A357621(A328887(n))`
-/

namespace A144431.P13846224389416880110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A357621 (A328887 n).toNat

end

end A144431.P13846224389416880110

/-!
# A144432: Triangle, T(n, k), read by rows: T(n, k) = t(n, k)^2 - t(n, k) - 1, where t(n,k) = (m*(n-k) + 1)*t(n-1, k-1) + (m*k - (m-1))*t(n-1, k) and m = -1.

The programs for A144432, there is no canonical definition to state claims against.
-/

/-! ## A144432.P6372428381806371671

`A144431(n+1)²-(A144431(n+1)+1)`
-/

namespace A144432.P6372428381806371671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144431 (n + 1) ^ 2 - (A144431 (n + 1) + 1)

end

end A144432.P6372428381806371671

/-! ## A144432.P6662944954837312099

`A023443(A144431(n+1)²-A144431(n+1))`
-/

namespace A144432.P6662944954837312099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A144431 (n + 1) ^ 2 - A144431 (n + 1)).toNat

end

end A144432.P6662944954837312099

/-! ## A144432.P6196124345113965303

`A023443((A144431(n+1)-1)*A144431(n+1))`
-/

namespace A144432.P6196124345113965303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((A144431 (n + 1) - 1) * A144431 (n + 1)).toNat

end

end A144432.P6196124345113965303

/-!
# A144433: Multiples of 8 interleaved with the sequence of odd numbers >= 3.

The programs for A144433, the canonical program `A144433.P16024093945098854949` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144433 has offset 1).

The definition of A144433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144433.P16024093945098854949

`2*a(n-2)-a(n-4)` with `a(0)=8, a(1)=3, a(2)=16, a(3)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144433

/-- `2*a(n-2)-a(n-4)` -/
def P16024093945098854949.Spec : Prop :=
  ∀ n, P16024093945098854949.a n = A144433 (n + 1)

theorem P16024093945098854949.correct : P16024093945098854949.Spec := by
  intro n
  simp only [A144433, Nat.add_sub_cancel]

end A144433

/-! ## A144433.P11598563673085812427

`(n+2)*gcd(2, n)²`
-/

namespace A144433.P11598563673085812427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 2 n ^ 2

end

end A144433.P11598563673085812427

namespace A144433

/-- `(n+2)*gcd(2, n)²` -/
def P11598563673085812427.Spec : Prop :=
  ∀ n, (P11598563673085812427.a n : ℤ) = A144433 (n + 1)

end A144433

/-! ## A144433.P13472466988179509579

`(n+2)*gcd(4, n^3)`
-/

namespace A144433.P13472466988179509579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 4 (n ^ 3)

end

end A144433.P13472466988179509579

namespace A144433

/-- `(n+2)*gcd(4, n^3)` -/
def P13472466988179509579.Spec : Prop :=
  ∀ n, (P13472466988179509579.a n : ℤ) = A144433 (n + 1)

end A144433

/-! ## A144433.P14255528805141975370

`(n+2)*or(n, -2)²`
-/

namespace A144433.P14255528805141975370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.lor (n : ℤ) (-2) ^ 2

end

end A144433.P14255528805141975370

namespace A144433

/-- `(n+2)*or(n, -2)²` -/
def P14255528805141975370.Spec : Prop :=
  ∀ n, P14255528805141975370.a n = A144433 (n + 1)

end A144433

/-! ## A144433.P9067252526069987855

`(n+2)*(2-n%2)²`
-/

namespace A144433.P9067252526069987855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) ^ 2

end

end A144433.P9067252526069987855

namespace A144433

/-- `(n+2)*(2-n%2)²` -/
def P9067252526069987855.Spec : Prop :=
  ∀ n, P9067252526069987855.a n = A144433 (n + 1)

end A144433

/-! ## A144433.P1861387549069958746

`(n+2)*(and(1, n)-2)²`
-/

namespace A144433.P1861387549069958746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((Nat.land 1 n : ℤ) - 2) ^ 2

end

end A144433.P1861387549069958746

namespace A144433

/-- `(n+2)*(and(1, n)-2)²` -/
def P1861387549069958746.Spec : Prop :=
  ∀ n, P1861387549069958746.a n = A144433 (n + 1)

end A144433

/-! ## A144433.P3447025058752758848

`(n+2)*and(5, or(2, n)²)`
-/

namespace A144433.P3447025058752758848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 5 (Nat.lor 2 n ^ 2)

end

end A144433.P3447025058752758848

namespace A144433

/-- `(n+2)*and(5, or(2, n)²)` -/
def P3447025058752758848.Spec : Prop :=
  ∀ n, (P3447025058752758848.a n : ℤ) = A144433 (n + 1)

end A144433

/-! ## A144433.P6895122086091345677

`(n+2)*4^∑[(-1)^n]`
-/

namespace A144433.P6895122086091345677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A144433.P6895122086091345677

namespace A144433

/-- `(n+2)*4^∑[(-1)^n]` -/
def P6895122086091345677.Spec : Prop :=
  ∀ n, P6895122086091345677.a n = (A144433 (n + 1) : ℚ)

end A144433

/-! ## A144433.P14014773024695875925

`(n+2)/4^(and(1, n)-1)`
-/

namespace A144433.P14014773024695875925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (4 : ℚ) ^ ((Nat.land 1 n : ℤ) - 1 : ℤ)

end

end A144433.P14014773024695875925

namespace A144433

/-- `(n+2)/4^(and(1, n)-1)` -/
def P14014773024695875925.Spec : Prop :=
  ∀ n, P14014773024695875925.a n = (A144433 (n + 1) : ℚ)

end A144433

/-! ## A144433.P14126413025857568963

`(n+2)/((and(1, n)+1)/2)²`
-/

namespace A144433.P14126413025857568963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((Nat.land 1 n + 1 : ℚ) / 2) ^ 2

end

end A144433.P14126413025857568963

namespace A144433

/-- `(n+2)/((and(1, n)+1)/2)²` -/
def P14126413025857568963.Spec : Prop :=
  ∀ n, P14126413025857568963.a n = (A144433 (n + 1) : ℚ)

end A144433

/-! ## A144433.P7444494063401850403

`(n+2)/4^-and(1, n+1)`
-/

namespace A144433.P7444494063401850403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (4 : ℚ) ^ (-(Nat.land 1 (n + 1) : ℤ) : ℤ)

end

end A144433.P7444494063401850403

namespace A144433

/-- `(n+2)/4^-and(1, n+1)` -/
def P7444494063401850403.Spec : Prop :=
  ∀ n, P7444494063401850403.a n = (A144433 (n + 1) : ℚ)

end A144433

/-! ## A144433.P5293030139431229572

`∑[8*(n+1)]/a(n-1)` with `a(0)=8`
-/

namespace A144433.P5293030139431229572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A144433.P5293030139431229572

namespace A144433

/-- `∑[8*(n+1)]/a(n-1)` -/
def P5293030139431229572.Spec : Prop :=
  ∀ n, P5293030139431229572.a n = (A144433 (n + 1) : ℚ)

end A144433

/-! ## A144433.P14135092350251511877

`∑{d}[or(2*n, -3), #*(n+2)]`
-/

namespace A144433.P14135092350251511877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 2)

end

end A144433.P14135092350251511877

namespace A144433

/-- `∑{d}[or(2*n, -3), #*(n+2)]` -/
def P14135092350251511877.Spec : Prop :=
  ∀ n, (P14135092350251511877.a n : ℤ) = A144433 (n + 1)

end A144433

/-! ## A144433.P17199670224088042884

`A019426(n+3)+n+1`
-/

namespace A144433.P17199670224088042884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (n + 3) + (n + 1 : ℤ)

end

end A144433.P17199670224088042884

namespace A144433

/-- `A019426(n+3)+n+1` -/
def P17199670224088042884.Spec : Prop :=
  ∀ n, P17199670224088042884.a n = A144433 (n + 1)

end A144433

/-! ## A144433.P16647132235533582889

`gcd(A086302(n), A099761(n))`
-/

namespace A144433.P16647132235533582889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086302 n) (A099761 n)

end

end A144433.P16647132235533582889

namespace A144433

/-- `gcd(A086302(n), A099761(n))` -/
def P16647132235533582889.Spec : Prop :=
  ∀ n, (P16647132235533582889.a n : ℤ) = A144433 (n + 1)

end A144433

/-! ## A144433.P16814132058836479086

`A195161(n)+A040015(n+2)`
-/

namespace A144433.P16814132058836479086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n + A040015 (n + 2)

end

end A144433.P16814132058836479086

namespace A144433

/-- `A195161(n)+A040015(n+2)` -/
def P16814132058836479086.Spec : Prop :=
  ∀ n, P16814132058836479086.a n = A144433 (n + 1)

end A144433

/-! ## A144433.P5481319240020838481

`2*A016777(A027656(n))+n`
-/

namespace A144433.P5481319240020838481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016777 (A027656 n).toNat + (n : ℤ)

end

end A144433.P5481319240020838481

namespace A144433

/-- `2*A016777(A027656(n))+n` -/
def P5481319240020838481.Spec : Prop :=
  ∀ n, P5481319240020838481.a n = A144433 (n + 1)

end A144433

/-! ## A144433.P2837790114902680734

`A192544(n+1)/A010685(n)`
-/

namespace A144433.P2837790114902680734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192544 (n + 1) : ℚ) / (A010685 n : ℚ)

end

end A144433.P2837790114902680734

namespace A144433

/-- `A192544(n+1)/A010685(n)` -/
def P2837790114902680734.Spec : Prop :=
  ∀ n, P2837790114902680734.a n = (A144433 (n + 1) : ℚ)

end A144433

/-! ## A144433.P17418353347907129760

`gcd(A152619(n), A192544(n+1))`
-/

namespace A144433.P17418353347907129760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152619 n) (A192544 (n + 1))

end

end A144433.P17418353347907129760

namespace A144433

/-- `gcd(A152619(n), A192544(n+1))` -/
def P17418353347907129760.Spec : Prop :=
  ∀ n, (P17418353347907129760.a n : ℤ) = A144433 (n + 1)

end A144433

/-!
# A144434: Triangle read by rows formed from golden-mean-like generalized factorials: t(n,m)=Round(phi*a(n)/(a(m)*a(n-m))), where phi=-(1 - Sqrt[5])/2, b(n)=b(n-1)+phi, a(n)=b(n)*a(n-1).

The programs for A144434, there is no canonical definition to state claims against.
-/

/-! ## A144434.P14551157950918808116

`A366580(A318045(n+1))`
-/

namespace A144434.P14551157950918808116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366580 (A318045 (n + 1)).toNat

end

end A144434.P14551157950918808116

/-! ## A144434.P2346706604550488544

`A351700(A003983(n+1)*A172356(n))`
-/

namespace A144434.P2346706604550488544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351700 (A003983 (n + 1) * A172356 n).toNat

end

end A144434.P2346706604550488544

/-! ## A144434.P9127370245000573040

`A377722(A220602(n+1))`
-/

namespace A144434.P9127370245000573040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377722 (A220602 (n + 1)).toNat

end

end A144434.P9127370245000573040

/-! ## A144434.P17380498591257472837

`A255270(A328888(n+1)+10)`
-/

namespace A144434.P17380498591257472837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A328888 (n + 1) + 10).toNat

end

end A144434.P17380498591257472837

/-! ## A144434.P14782482660268655432

`A134021(A300639(A131404(n)))`
-/

namespace A144434.P14782482660268655432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A300639 (A131404 n).toNat).toNat

end

end A144434.P14782482660268655432

/-!
# A144435: Triangle T(n, k) = (m*(n-k) + 1)*T(n-1, k-1) + (m*(k-1) + 1)*T(n-1, k) + j*T(n-2, k-1), where T(n, 1) = T(n, n) = 1, m = -1, and j = 2, read by rows.

The programs for A144435, there is no canonical definition to state claims against.
-/

/-! ## A144435.P543383996104655017

`A323211(n)-A046660(A155971(n))`
-/

namespace A144435.P543383996104655017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n - A046660 (A155971 n).toNat

end

end A144435.P543383996104655017

/-! ## A144435.P1321517313067151455

`A186809(A144439(n+1))`
-/

namespace A144435.P1321517313067151455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186809 (A144439 (n + 1)).toNat

end

end A144435.P1321517313067151455

/-! ## A144435.P10939006946544199665

`2-A203571(A157277(n))`
-/

namespace A144435.P10939006946544199665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A203571 (A157277 n).toNat

end

end A144435.P10939006946544199665

/-! ## A144435.P10603586868914947789

`A099917(lcm(4, A168551(n)))`
-/

namespace A144435.P10603586868914947789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099917 (Int.lcm 4 (A168551 n))

end

end A144435.P10603586868914947789

/-! ## A144435.P4353918644208528362

`A152714(n)-A023416(A296548(n))`
-/

namespace A144435.P4353918644208528362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n - A023416 (A296548 n).toNat

end

end A144435.P4353918644208528362

/-!
# A144436: Triangle T(n, k) = (m*(n-k) + 1)*T(n-1, k-1) + (m*(k-1) + 1)*T(n-1, k) + j*T(n-2, k-1), where T(n, 1) = T(n, n) = 1, m = 1, and j = 4, read by rows.

The programs for A144436, there is no canonical definition to state claims against.
-/

/-! ## A144436.P12419257785986893504

`A176488(A020485(n))`
-/

namespace A144436.P12419257785986893504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176488 (A020485 n).toNat

end

end A144436.P12419257785986893504

/-! ## A144436.P11208797999871754288

`A176488(A049872(n))`
-/

namespace A144436.P11208797999871754288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176488 (A049872 n).toNat

end

end A144436.P11208797999871754288

/-! ## A144436.P5026384673895128399

`A079392(A157221(n))`
-/

namespace A144436.P5026384673895128399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079392 (A157221 n).toNat

end

end A144436.P5026384673895128399

/-! ## A144436.P17839176460654978025

`A176488(A061816(n))`
-/

namespace A144436.P17839176460654978025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176488 (A061816 n).toNat

end

end A144436.P17839176460654978025

/-! ## A144436.P10270832855691749260

`A176488(A062003(n))`
-/

namespace A144436.P10270832855691749260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176488 (A062003 n).toNat

end

end A144436.P10270832855691749260

/-!
# A144437: Period 3: repeat [3, 3, 1].

The programs for A144437, the canonical program `A144437.P2680265335679252657` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144437 has offset 1).

The definition of A144437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144437.P2680265335679252657

`a(n-3)` with `a(0)=3, a(1)=3, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144437

/-- `a(n-3)` -/
def P2680265335679252657.Spec : Prop :=
  ∀ n, (P2680265335679252657.a n : ℤ) = A144437 (n + 1)

theorem P2680265335679252657.correct : P2680265335679252657.Spec := by
  intro n
  simp only [A144437, Nat.add_sub_cancel]

end A144437

/-!
# A144438: Triangle T(n,k) by rows: T(n, k) = (n-k+1)*T(n-1, k-1) + k*T(n-1, k) + T(n-2, k-1) with T(n, 1) = T(n, n) = 1.

The programs for A144438, there is no canonical definition to state claims against.
-/

/-! ## A144438.P7554874794951708731

`A000196(A002061(A166344(n+1)))`
-/

namespace A144438.P7554874794951708731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002061 (A166344 (n + 1)).toNat).toNat

end

end A144438.P7554874794951708731

/-! ## A144438.P11912911060381726010

`A157207(n)+A066035(A174125(n))`
-/

namespace A144438.P11912911060381726010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157207 n + A066035 (A174125 n).toNat

end

end A144438.P11912911060381726010

/-! ## A144438.P9207689069012686767

`A299904(n)+A087276(A022166(n))`
-/

namespace A144438.P9207689069012686767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299904 n + A087276 (A022166 n).toNat

end

end A144438.P9207689069012686767

/-! ## A144438.P6737514133545193477

`A157207(n)-A004197(A174410(n))`
-/

namespace A144438.P6737514133545193477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157207 n - A004197 (A174410 n).toNat

end

end A144438.P6737514133545193477

/-! ## A144438.P6293595878869496807

`A157207(n)-A137579(A143007(n))`
-/

namespace A144438.P6293595878869496807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157207 n - A137579 (A143007 n).toNat

end

end A144438.P6293595878869496807

/-!
# A144441: Triangle T(n,k) read by rows: T(n, k) = (4*n-4*k+1)*T(n-1, k-1) + (4*k-3)*T(n-1, k) + 4*T(n-2, k-1) with T(n, 1) = T(n, n) = 1.

The programs for A144441, there is no canonical definition to state claims against.
-/

/-! ## A144441.P17807050206881410065

`A157641(n)+A130696(A022168(n))`
-/

namespace A144441.P17807050206881410065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157641 n + A130696 (A022168 n).toNat

end

end A144441.P17807050206881410065

/-! ## A144441.P5549209293000759013

`or(A141690(n), A167034(A157221(n)))`
-/

namespace A144441.P5549209293000759013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141690 n) (A167034 (A157221 n).toNat)

end

end A144441.P5549209293000759013

/-! ## A144441.P11238749619741209579

`or(A141690(n), A167034(A174526(n)))`
-/

namespace A144441.P11238749619741209579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141690 n) (A167034 (A174526 n).toNat)

end

end A144441.P11238749619741209579

/-! ## A144441.P5084236039239956736

`or(A167034(A157221(n)), A168289(n))`
-/

namespace A144441.P5084236039239956736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167034 (A157221 n).toNat) (A168289 n)

end

end A144441.P5084236039239956736

/-! ## A144441.P8535414345176641458

`or(A141690(n), A167034(A008292(n+1)))`
-/

namespace A144441.P8535414345176641458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141690 n) (A167034 (A008292 (n + 1)).toNat)

end

end A144441.P8535414345176641458

/-!
# A144442: Triangle read by rows: T(n, k) = (5*n-5*k+1)*T(n-1, k-1) +(5*k-4)*T(n-1, k) + 5*T(n-2, k-1) with T(n, 1) = T(n, n) = 1.

The programs for A144442, there is no canonical definition to state claims against.
-/

/-! ## A144442.P4975651307507143839

`A330396(A155493(A228912(n)+n))`
-/

namespace A144442.P4975651307507143839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A155493 (A228912 n + (n : ℤ)).toNat).toNat

end

end A144442.P4975651307507143839

/-! ## A144442.P11972739463525632373

`A330396(A155493(n)%A071314(n))`
-/

namespace A144442.P11972739463525632373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (Int.tmod (A155493 n) (A071314 n)).toNat

end

end A144442.P11972739463525632373

/-! ## A144442.P8512069935683814246

`A022095(and(A103407(n), A335776(n)))`
-/

namespace A144442.P8512069935683814246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (Int.land (A103407 n) (A335776 n)).toNat

end

end A144442.P8512069935683814246

/-! ## A144442.P15367860474808454967

`A263831(A304321(n+1))`
-/

namespace A144442.P15367860474808454967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263831 (A304321 (n + 1)).toNat

end

end A144442.P15367860474808454967

/-!
# A144443: Triangle read by rows: T(n, k) = (6*n-6*k+1)*T(n-1, k-1) + (6*k-5)*T(n-1, k) + 6*T(n-2, k-1) with T(n, 1) = T(n, n) = 1.

The programs for A144443, there is no canonical definition to state claims against.
-/

/-! ## A144443.P2551420370423933200

`A337478(2*A338756(n+1))`
-/

namespace A144443.P2551420370423933200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337478 (2 * A338756 (n + 1)).toNat

end

end A144443.P2551420370423933200

/-! ## A144443.P562550324502008032

`A337478(and(A000108(n), A006370(n)))`
-/

namespace A144443.P562550324502008032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337478 (Int.land (A000108 n) (A006370 n)).toNat

end

end A144443.P562550324502008032

/-! ## A144443.P12509649944187694199

`A337478(A338756(n+1)+A338756(n+1))`
-/

namespace A144443.P12509649944187694199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337478 (A338756 (n + 1) + A338756 (n + 1)).toNat

end

end A144443.P12509649944187694199

/-! ## A144443.P1597845169269098911

`A241510(A125181(n+1)^A181391(3*n+2))`
-/

namespace A144443.P1597845169269098911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241510 (SequenceMachineLib.roundAway ((A125181 (n + 1) : ℚ) ^ (A181391 (3 * n + 2) : ℤ))).toNat

end

end A144443.P1597845169269098911

/-! ## A144443.P5469864930711489013

`A028236(A174678(n))+A006530(n!)*A068606(n)`
-/

namespace A144443.P5469864930711489013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (A174678 n).toNat + A006530 (Nat.factorial n) * A068606 n

end

end A144443.P5469864930711489013

/-!
# A144444: Triangle read by rows: T(n, k) = (1-n+k)*T(n-1, k-1) + (2-k)*T(n-1, k) - T(n-2, k-1) with T(n, 1) = T(n, n) = 1.

The programs for A144444, there is no canonical definition to state claims against.
-/

/-! ## A144444.P8769566761785308114

`A316441(36*A155497(n))`
-/

namespace A144444.P8769566761785308114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (36 * A155497 n).toNat

end

end A144444.P8769566761785308114

/-! ## A144444.P7452743856290571889

`A081577(n)-A130242(A022171(n))`
-/

namespace A144444.P7452743856290571889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 n - A130242 (A022171 n).toNat

end

end A144444.P7452743856290571889

/-! ## A144444.P16684384250817308776

`A168315(A155971(n))-A014473(n)`
-/

namespace A144444.P16684384250817308776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (A155971 n).toNat - A014473 n

end

end A144444.P16684384250817308776

/-! ## A144444.P4154488761756630857

`A008683(A000032(A173077(n)))*A132044(n)`
-/

namespace A144444.P4154488761756630857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000032 (A173077 n).toNat).toNat * A132044 n

end

end A144444.P4154488761756630857

/-!
# A144445: Triangle, read by rows, T(n,k) = (7*n-7*k+1)*T(n-1, k-2) + (7*k-6)*T(n-1, k) + 7*T(n-2, k-1) with T(n, 1) = T(n, n) = 1.

The programs for A144445, there is no canonical definition to state claims against.
-/

/-! ## A144445.P2715526863753224543

`A181160(C(9, A338756(n+1)))`
-/

namespace A144445.P2715526863753224543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (Nat.choose 9 (A338756 (n + 1)).toNat)

end

end A144445.P2715526863753224543

/-! ## A144445.P4473252574324708554

`A181160(A181144(A228912(n)+n))`
-/

namespace A144445.P4473252574324708554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (A181144 (A228912 n + (n : ℤ)).toNat).toNat

end

end A144445.P4473252574324708554

/-! ## A144445.P3859492134964243777

`A181160(A181144(n)%A071314(n))`
-/

namespace A144445.P3859492134964243777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (Int.tmod (A181144 n) (A071314 n)).toNat

end

end A144445.P3859492134964243777

/-! ## A144445.P719536569219165278

`A181160(xor(A181144(n), A228912(n)))`
-/

namespace A144445.P719536569219165278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181160 (Int.xor (A181144 n) (A228912 n)).toNat

end

end A144445.P719536569219165278

/-! ## A144445.P2446775574927130402

`A117120(A022179(n)%A193831(3*(n+1)))`
-/

namespace A144445.P2446775574927130402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (Int.tmod (A022179 n) (A193831 (3 * (n + 1)))).toNat

end

end A144445.P2446775574927130402

/-!
# A144447: Triangle T(n, k) = T(n-1, k) + T(n, k-1) + T(n-1, k-1) + T(n-2, k-1), with T(n, 1) = T(n, n) = 1, read by rows.

The programs for A144447, there is no canonical definition to state claims against.
-/

/-! ## A144447.P3791763975755727873

`A096966(A194061(n+1))`
-/

namespace A144447.P3791763975755727873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096966 (A194061 (n + 1)).toNat

end

end A144447.P3791763975755727873

/-! ## A144447.P7006247046058387704

`∏{e}[(∑[2*n]+1)*2^n, A119673(#)]`
-/

namespace A144447.P7006247046058387704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A119673 (Nat.factorization (f1 n) p)

end

end A144447.P7006247046058387704

/-! ## A144447.P15337070435065077068

`A119673(n)%A128867(n+1)`
-/

namespace A144447.P15337070435065077068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119673 n) (A128867 (n + 1))

end

end A144447.P15337070435065077068

/-! ## A144447.P12901935062806419533

`A185708(A218293(n))+A119673(n)`
-/

namespace A144447.P12901935062806419533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185708 (A218293 n).toNat + A119673 n

end

end A144447.P12901935062806419533

/-! ## A144447.P6831991083875764654

`gcd(A087623(A060091(n+4)), A119673(n))`
-/

namespace A144447.P6831991083875764654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087623 (A060091 (n + 4)).toNat) (A119673 n)

end

end A144447.P6831991083875764654

/-!
# A144448: First bisection of A061039.

The programs for A144448, the canonical program `A144448.P991437666402583573` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144448 has offset 1).

The definition of A144448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144448.P14554718737342184540

`8*A178978(n)`
-/

namespace A144448.P14554718737342184540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A178978 n

end

end A144448.P14554718737342184540

namespace A144448

/-- `8*A178978(n)` -/
def P14554718737342184540.Spec : Prop :=
  ∀ n, P14554718737342184540.a n = A144448 (n + 1)

end A144448

/-! ## A144448.P2347593069389687582

`A061039(2*n+3)`
-/

namespace A144448.P2347593069389687582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (2 * n + 3)

end

end A144448.P2347593069389687582

namespace A144448

/-- `A061039(2*n+3)` -/
def P2347593069389687582.Spec : Prop :=
  ∀ n, P2347593069389687582.a n = A144448 (n + 1)

end A144448

/-! ## A144448.P991437666402583573

`8*lcm(81, ∑[n]+n)/81`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144448

/-- `8*lcm(81, ∑[n]+n)/81` -/
def P991437666402583573.Spec : Prop :=
  ∀ n, P991437666402583573.a n = (A144448 (n + 1) : ℚ)

end A144448

/-! ## A144448.P8585207665692778640

`A061039(Δ[A005563(n)])%A001358(n+1)²`
-/

namespace A144448.P8585207665692778640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061039 (f1 (n + 1) - f1 n).toNat) (A001358 (n + 1) ^ 2)

end

end A144448.P8585207665692778640

namespace A144448

/-- `A061039(Δ[A005563(n)])%A001358(n+1)²` -/
def P8585207665692778640.Spec : Prop :=
  ∀ n, P8585207665692778640.a n = A144448 (n + 1)

end A144448

/-! ## A144448.P9265170613590479755

`A008590(A178978(n))`
-/

namespace A144448.P9265170613590479755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A178978 n).toNat

end

end A144448.P9265170613590479755

namespace A144448

/-- `A008590(A178978(n))` -/
def P9265170613590479755.Spec : Prop :=
  ∀ n, P9265170613590479755.a n = A144448 (n + 1)

end A144448

/-! ## A144448.P5004196537465136024

`filter[A061039(n+3), A121262(#)]`
-/

namespace A144448.P5004196537465136024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A144448.P5004196537465136024

namespace A144448

/-- `filter[A061039(n+3), A121262(#)]` -/
def P5004196537465136024.Spec : Prop :=
  ∀ n, P5004196537465136024.a n = A144448 (n + 1)

end A144448

/-!
# A144449: a(n) = 4*(4 + 9*n^2 + 15*n).

The programs for A144449, the canonical program `A144449.P16112728441674391944` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144449 has offset 0).

The definition of A144449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(4+9*n²+15*n)` (program `A144449.P16112728441674391944`, by `A144449.P16112728441674391944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144449.P16913889913587546466

`(6*n+5)²-9`
-/

namespace A144449.P16913889913587546466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 5) ^ 2 : ℤ) - 9

end

end A144449.P16913889913587546466

namespace A144449

/-- `(6*n+5)²-9` -/
def P16913889913587546466.Spec : Prop :=
  ∀ n, P16913889913587546466.a n = A144449 n

theorem P16913889913587546466.correct : P16913889913587546466.Spec := by
  intro n
  simp only [A144449, Nat.add_sub_cancel, A144449.P16913889913587546466.a, A144449.P16112728441674391944.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A144449

/-! ## A144449.P16112728441674391944

`4*(4+9*n²+15*n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144449

/-- `4*(4+9*n²+15*n)` -/
def P16112728441674391944.Spec : Prop :=
  ∀ n, (P16112728441674391944.a n : ℤ) = A144449 n

theorem P16112728441674391944.correct : P16112728441674391944.Spec := by
  intro n
  simp only [A144449]

end A144449

/-! ## A144449.P2997739674257376084

`lcm(A017569(n+1), A017569(n))`
-/

namespace A144449.P2997739674257376084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017569 (n + 1)) (A017569 n)

end

end A144449.P2997739674257376084

namespace A144449

/-- `lcm(A017569(n+1), A017569(n))` -/
def P2997739674257376084.Spec : Prop :=
  ∀ n, (P2997739674257376084.a n : ℤ) = A144449 n

end A144449

/-! ## A144449.P10073720968118954606

`sqrt(A016934(n+1)*A016934(n))`
-/

namespace A144449.P10073720968118954606
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016934 (n + 1) * A016934 n : ℝ)

end

end A144449.P10073720968118954606

namespace A144449

/-- `sqrt(A016934(n+1)*A016934(n))` -/
def P10073720968118954606.Spec : Prop :=
  ∀ n, P10073720968118954606.a n = (A144449 n : ℝ)

end A144449

/-! ## A144449.P8452144137565745273

`A144448(3*n+2)`
-/

namespace A144449.P8452144137565745273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144448 (3 * n + 2)

end

end A144449.P8452144137565745273

namespace A144449

/-- `A144448(3*n+2)` -/
def P8452144137565745273.Spec : Prop :=
  ∀ n, P8452144137565745273.a n = A144449 n

end A144449

/-! ## A144449.P13189198266056296894

`A332519(3*n+2)`
-/

namespace A144449.P13189198266056296894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332519 (3 * n + 2)

end

end A144449.P13189198266056296894

namespace A144449

/-- `A332519(3*n+2)` -/
def P13189198266056296894.Spec : Prop :=
  ∀ n, P13189198266056296894.a n = A144449 n

end A144449

/-! ## A144449.P17005399760731274877

`A028560(A016933(n))`
-/

namespace A144449.P17005399760731274877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (A016933 n).toNat

end

end A144449.P17005399760731274877

namespace A144449

/-- `A028560(A016933(n))` -/
def P17005399760731274877.Spec : Prop :=
  ∀ n, P17005399760731274877.a n = A144449 n

end A144449

/-!
# A144450: Second bisection of A061039.

The programs for A144450, there is no canonical definition to state claims against.
-/

/-! ## A144450.P3164494005368677084

`A061039(2*(n+1)+2)`
-/

namespace A144450.P3164494005368677084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (2 * (n + 1) + 2)

end

end A144450.P3164494005368677084

/-! ## A144450.P12510377465148217588

`A061045(4*(n+2))`
-/

namespace A144450.P12510377465148217588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061045 (4 * (n + 2))

end

end A144450.P12510377465148217588

/-! ## A144450.P18017754814715516745

`abs(A061045(Δ[A059993(n)]))`
-/

namespace A144450.P18017754814715516745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061045 (f1 (n + 1) - f1 n).toNat|

end

end A144450.P18017754814715516745

/-! ## A144450.P3867549453242241974

`filter[A061039(n+3), A359550(#)]`
-/

namespace A144450.P3867549453242241974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A144450.P3867549453242241974

/-! ## A144450.P9701055150260105965

`filter[A061039(n+4), A374134(#)]`
-/

namespace A144450.P9701055150260105965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A144450.P9701055150260105965

/-! ## A144450.P17666085111470805344

`filter[A061039(n+3), A098725(#)]`
-/

namespace A144450.P17666085111470805344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A144450.P17666085111470805344

/-! ## A144450.P8331018143212732354

`filter[A061039(n+3), A166486(#)]`
-/

namespace A144450.P8331018143212732354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A144450.P8331018143212732354

/-! ## A144450.P10761049069740539441

`filter[A061039(n+3), A341625(#)]`
-/

namespace A144450.P10761049069740539441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A144450.P10761049069740539441

/-! ## A144450.P1673307861632892553

`filter[A061039(n+4), A039982(#)]`
-/

namespace A144450.P1673307861632892553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A144450.P1673307861632892553

/-!
# A144451: Triangle A(n,k) read by rows: A(n,1)=A(n,n)=1 and A(n,k) = A(n-2,k-1) - 2*A(n,k-1) + 1 for 1

The programs for A144451, there is no canonical definition to state claims against.
-/

/-! ## A144451.P6889310205753088769

`A089688(n)%p?[A251633(n)]`
-/

namespace A144451.P6889310205753088769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089688 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A144451.P6889310205753088769

/-! ## A144451.P15860982072240582708

`A152719(n)%p?[A251633(n)]`
-/

namespace A144451.P15860982072240582708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152719 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A144451.P15860982072240582708

/-! ## A144451.P10911738447863197280

`and(A152719(n), A266164(n+1))`
-/

namespace A144451.P10911738447863197280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152719 n) (A266164 (n + 1))

end

end A144451.P10911738447863197280

/-! ## A144451.P15362374716879480860

`and(A003983(n+1), A266164(n+1))`
-/

namespace A144451.P15362374716879480860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003983 (n + 1)) (A266164 (n + 1))

end

end A144451.P15362374716879480860

/-! ## A144451.P8212670549968041564

`and(A087062(n+1), A266164(n+1))`
-/

namespace A144451.P8212670549968041564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087062 (n + 1)) (A266164 (n + 1))

end

end A144451.P8212670549968041564

/-!
# A144452: Antidiagonal expansion of the polynomials: f(x,n) = 1/(exp(t) - Sum_{i=1..n} t^i/i!).

The programs for A144452, there is no canonical definition to state claims against.
-/

/-! ## A144452.P3314806604967977866

`A127093(n+1)*A260192(A220472(n+1))`
-/

namespace A144452.P3314806604967977866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A260192 (A220472 (n + 1)).toNat

end

end A144452.P3314806604967977866

/-! ## A144452.P2815179967247815229

`A127093(n+1)*A260192(A220473(n+1))`
-/

namespace A144452.P2815179967247815229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A260192 (A220473 (n + 1)).toNat

end

end A144452.P2815179967247815229

/-!
# A144453: a(n) = A061039(8*n+5).

The programs for A144453, there is no canonical definition to state claims against.
-/

/-! ## A144453.P11419416994871041974

`A061039(8*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144453.P11419416994871041974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (8 * n + 5)

end

end A144453.P11419416994871041974

/-! ## A144453.P9643324363291052459

`16*A146537(n)`
-/

namespace A144453.P9643324363291052459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A146537 n

end

end A144453.P9643324363291052459

/-! ## A144453.P11224855523318105151

`lcm(A059164(n), A146537(n))`
-/

namespace A144453.P11224855523318105151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059164 n) (A146537 n)

end

end A144453.P11224855523318105151

/-! ## A144453.P17729790637076938039

`A144448(4*n+2)`
-/

namespace A144453.P17729790637076938039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144448 (4 * n + 2)

end

end A144453.P17729790637076938039

/-! ## A144453.P3499296485113009175

`lcm(2, A061039(A004770(n+1)))`
-/

namespace A144453.P3499296485113009175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A061039 (A004770 (n + 1)).toNat)

end

end A144453.P3499296485113009175

/-! ## A144453.P4931207612633046611

`4*A061045(Δ[A033566(n)])`
-/

namespace A144453.P4931207612633046611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061045 (f1 (n + 1) - f1 n).toNat

end

end A144453.P4931207612633046611

/-! ## A144453.P10470427765324972362

`A008598(A146537(n))`
-/

namespace A144453.P10470427765324972362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (A146537 n).toNat

end

end A144453.P10470427765324972362

/-!
# A144454: First trisection of A061039.

The programs for A144454, the canonical program `A144454.P6512232522785513048` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144454 has offset 1).

The definition of A144454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144454.P5218758657254221059

`A061039(3*(n+1))`
-/

namespace A144454.P5218758657254221059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (3 * (n + 1))

end

end A144454.P5218758657254221059

namespace A144454

/-- `A061039(3*(n+1))` -/
def P5218758657254221059.Spec : Prop :=
  ∀ n, P5218758657254221059.a n = A144454 (n + 1)

end A144454

/-! ## A144454.P13870404411381573194

`lcm(9, n*(n+2))/9`
-/

namespace A144454.P13870404411381573194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (n * (n + 2)) : ℚ) / 9

end

end A144454.P13870404411381573194

namespace A144454

/-- `lcm(9, n*(n+2))/9` -/
def P13870404411381573194.Spec : Prop :=
  ∀ n, P13870404411381573194.a n = (A144454 (n + 1) : ℚ)

end A144454

/-! ## A144454.P6512232522785513048

`floor(A300295(n)/12)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144454

/-- `floor(A300295(n)/12)` -/
def P6512232522785513048.Spec : Prop :=
  ∀ n, P6512232522785513048.a n = A144454 (n + 1)

theorem P6512232522785513048.correct : P6512232522785513048.Spec := by
  intro n
  simp only [A144454, Nat.add_sub_cancel]

end A144454

/-! ## A144454.P4457978626987433360

`(n+2)*n/A154629(n)`
-/

namespace A144454.P4457978626987433360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (A154629 n : ℚ))

end

end A144454.P4457978626987433360

namespace A144454

/-- `(n+2)*n/A154629(n)` -/
def P4457978626987433360.Spec : Prop :=
  ∀ n, P4457978626987433360.a n = (A144454 (n + 1) : ℚ)

end A144454

/-! ## A144454.P6214835059112446407

`A005563(n)/A154629(n)`
-/

namespace A144454.P6214835059112446407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 n : ℚ) / (A154629 n : ℚ)

end

end A144454.P6214835059112446407

namespace A144454

/-- `A005563(n)/A154629(n)` -/
def P6214835059112446407.Spec : Prop :=
  ∀ n, P6214835059112446407.a n = (A144454 (n + 1) : ℚ)

end A144454

/-! ## A144454.P10205085372240739686

`A147651(n)/A147674(n)`
-/

namespace A144454.P10205085372240739686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147651 n : ℚ) / (A147674 n : ℚ)

end

end A144454.P10205085372240739686

namespace A144454

/-- `A147651(n)/A147674(n)` -/
def P10205085372240739686.Spec : Prop :=
  ∀ n, P10205085372240739686.a n = (A144454 (n + 1) : ℚ)

end A144454

/-! ## A144454.P1986738690032117956

`A106610(n+2)*A106610(n)`
-/

namespace A144454.P1986738690032117956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (n + 2) * A106610 n

end

end A144454.P1986738690032117956

namespace A144454

/-- `A106610(n+2)*A106610(n)` -/
def P1986738690032117956.Spec : Prop :=
  ∀ n, P1986738690032117956.a n = A144454 (n + 1)

end A144454

/-! ## A144454.P16188685830906408658

`A051176(A051176(n))*A051176(A145064(n))`
-/

namespace A144454.P16188685830906408658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 n).toNat * A051176 (A145064 n).toNat

end

end A144454.P16188685830906408658

namespace A144454

/-- `A051176(A051176(n))*A051176(A145064(n))` -/
def P16188685830906408658.Spec : Prop :=
  ∀ n, P16188685830906408658.a n = A144454 (n + 1)

end A144454

/-! ## A144454.P4154196273226348032

`A106610(n*(n+2))`
-/

namespace A144454.P4154196273226348032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (n * (n + 2))

end

end A144454.P4154196273226348032

namespace A144454

/-- `A106610(n*(n+2))` -/
def P4154196273226348032.Spec : Prop :=
  ∀ n, P4154196273226348032.a n = A144454 (n + 1)

end A144454

/-! ## A144454.P5152838891715416578

`A051176(A051176(n)*A145064(n))`
-/

namespace A144454.P5152838891715416578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 n * A145064 n).toNat

end

end A144454.P5152838891715416578

namespace A144454

/-- `A051176(A051176(n)*A145064(n))` -/
def P5152838891715416578.Spec : Prop :=
  ∀ n, P5152838891715416578.a n = A144454 (n + 1)

end A144454

/-! ## A144454.P1241779025729805556

`A051176(A051176(n*(n+2)))`
-/

namespace A144454.P1241779025729805556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 (n * (n + 2))).toNat

end

end A144454.P1241779025729805556

namespace A144454

/-- `A051176(A051176(n*(n+2)))` -/
def P1241779025729805556.Spec : Prop :=
  ∀ n, P1241779025729805556.a n = A144454 (n + 1)

end A144454

/-! ## A144454.P725113061896834424

`A185727(A004523(n*(n+2)))`
-/

namespace A144454.P725113061896834424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185727 (A004523 (n * (n + 2))).toNat

end

end A144454.P725113061896834424

namespace A144454

/-- `A185727(A004523(n*(n+2)))` -/
def P725113061896834424.Spec : Prop :=
  ∀ n, P725113061896834424.a n = A144454 (n + 1)

end A144454

/-!
# A144459: a(n) = (3*n+1)*(5*n+1).

The programs for A144459, the canonical program `A144459.P3022142960089245478` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144459 has offset 0).

The definition of A144459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(5*n+1)` (program `A144459.P3022142960089245478`, by `A144459.P3022142960089245478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144459.P3022142960089245478

`(3*n+1)*(5*n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144459

/-- `(3*n+1)*(5*n+1)` -/
def P3022142960089245478.Spec : Prop :=
  ∀ n, (P3022142960089245478.a n : ℤ) = A144459 n

theorem P3022142960089245478.correct : P3022142960089245478.Spec := by
  intro n
  simp only [A144459]

end A144459

/-! ## A144459.P11926993719309456182

`∑[a(n-1)+30]` with `a(0)=1, a(1)=23`
-/

namespace A144459.P11926993719309456182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144459.P11926993719309456182

namespace A144459

/-- `∑[a(n-1)+30]` -/
def P11926993719309456182.Spec : Prop :=
  ∀ n, (P11926993719309456182.a n : ℤ) = A144459 n

end A144459

/-! ## A144459.P7767702749764366366

`Δ[C(2*n, 2)]²-n²`
-/

namespace A144459.P7767702749764366366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (n ^ 2 : ℤ)

end

end A144459.P7767702749764366366

namespace A144459

/-- `Δ[C(2*n, 2)]²-n²` -/
def P7767702749764366366.Spec : Prop :=
  ∀ n, P7767702749764366366.a n = A144459 n

end A144459

/-! ## A144459.P4888101334302847222

`A134153(n)-n`
-/

namespace A144459.P4888101334302847222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134153 n - (n : ℤ)

end

end A144459.P4888101334302847222

namespace A144459

/-- `A134153(n)-n` -/
def P4888101334302847222.Spec : Prop :=
  ∀ n, P4888101334302847222.a n = A144459 n

end A144459

/-! ## A144459.P9516932893342197654

`A016814(n)-n²`
-/

namespace A144459.P9516932893342197654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n - (n ^ 2 : ℤ)

end

end A144459.P9516932893342197654

namespace A144459

/-- `A016814(n)-n²` -/
def P9516932893342197654.Spec : Prop :=
  ∀ n, P9516932893342197654.a n = A144459 n

end A144459

/-! ## A144459.P11819971063001561447

`A080861(n)+2*n`
-/

namespace A144459.P11819971063001561447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080861 n + (2 * n : ℤ)

end

end A144459.P11819971063001561447

namespace A144459

/-- `A080861(n)+2*n` -/
def P11819971063001561447.Spec : Prop :=
  ∀ n, P11819971063001561447.a n = A144459 n

end A144459

/-! ## A144459.P4930721299426057460

`A016813(n)²-n²`
-/

namespace A144459.P4930721299426057460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2 - (n ^ 2 : ℤ)

end

end A144459.P4930721299426057460

namespace A144459

/-- `A016813(n)²-n²` -/
def P4930721299426057460.Spec : Prop :=
  ∀ n, P4930721299426057460.a n = A144459 n

end A144459

/-! ## A144459.P17884396641438556297

`n*A164284(n+1)+1`
-/

namespace A144459.P17884396641438556297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164284 (n + 1) + 1

end

end A144459.P17884396641438556297

namespace A144459

/-- `n*A164284(n+1)+1` -/
def P17884396641438556297.Spec : Prop :=
  ∀ n, P17884396641438556297.a n = A144459 n

end A144459

/-! ## A144459.P10427862176161560533

`2*A220083(n)-(n+1)`
-/

namespace A144459.P10427862176161560533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220083 n - (n + 1 : ℤ)

end

end A144459.P10427862176161560533

namespace A144459

/-- `2*A220083(n)-(n+1)` -/
def P10427862176161560533.Spec : Prop :=
  ∀ n, P10427862176161560533.a n = A144459 n

end A144459

/-! ## A144459.P12480330070774071122

`A128473(n)+a(n-1)` with `a(0)=1`
-/

namespace A144459.P12480330070774071122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128473 n + a (n - 1)

end

end A144459.P12480330070774071122

namespace A144459

/-- `A128473(n)+a(n-1)` -/
def P12480330070774071122.Spec : Prop :=
  ∀ n, P12480330070774071122.a n = A144459 n

end A144459

/-! ## A144459.P17595733952313965804

`A033569(n)+A001504(n)`
-/

namespace A144459.P17595733952313965804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n + A001504 n

end

end A144459.P17595733952313965804

namespace A144459

/-- `A033569(n)+A001504(n)` -/
def P17595733952313965804.Spec : Prop :=
  ∀ n, P17595733952313965804.a n = A144459 n

end A144459

/-! ## A144459.P5685721980801372196

`A033586(n)+A005892(n)`
-/

namespace A144459.P5685721980801372196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A005892 n

end

end A144459.P5685721980801372196

namespace A144459

/-- `A033586(n)+A005892(n)` -/
def P5685721980801372196.Spec : Prop :=
  ∀ n, P5685721980801372196.a n = A144459 n

end A144459

/-! ## A144459.P13845685599956453451

`A033428(n)+A014641(n)`
-/

namespace A144459.P13845685599956453451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A014641 n

end

end A144459.P13845685599956453451

namespace A144459

/-- `A033428(n)+A014641(n)` -/
def P13845685599956453451.Spec : Prop :=
  ∀ n, P13845685599956453451.a n = A144459 n

end A144459

/-! ## A144459.P5074593422361369106

`A033580(n)+A016778(n)`
-/

namespace A144459.P5074593422361369106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n + A016778 n

end

end A144459.P5074593422361369106

namespace A144459

/-- `A033580(n)+A016778(n)` -/
def P5074593422361369106.Spec : Prop :=
  ∀ n, P5074593422361369106.a n = A144459 n

end A144459

/-! ## A144459.P12247366048257150236

`A045945(n)+A033570(n)`
-/

namespace A144459.P12247366048257150236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + A033570 n

end

end A144459.P12247366048257150236

namespace A144459

/-- `A045945(n)+A033570(n)` -/
def P12247366048257150236.Spec : Prop :=
  ∀ n, P12247366048257150236.a n = A144459 n

end A144459

/-! ## A144459.P8609548139454919970

`A064761(n)+A017077(n)`
-/

namespace A144459.P8609548139454919970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n + A017077 n

end

end A144459.P8609548139454919970

namespace A144459

/-- `A064761(n)+A017077(n)` -/
def P8609548139454919970.Spec : Prop :=
  ∀ n, P8609548139454919970.a n = A144459 n

end A144459

/-! ## A144459.P17424856628189998272

`A049451(n)+A033577(n)`
-/

namespace A144459.P17424856628189998272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + A033577 n

end

end A144459.P17424856628189998272

namespace A144459

/-- `A049451(n)+A033577(n)` -/
def P17424856628189998272.Spec : Prop :=
  ∀ n, P17424856628189998272.a n = A144459 n

end A144459

/-! ## A144459.P17148851026968278691

`A081271(n)+A022279(n)`
-/

namespace A144459.P17148851026968278691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n + A022279 n

end

end A144459.P17148851026968278691

namespace A144459

/-- `A081271(n)+A022279(n)` -/
def P17148851026968278691.Spec : Prop :=
  ∀ n, P17148851026968278691.a n = A144459 n

end A144459

/-! ## A144459.P14986928070404688211

`A082109(n)+A033584(n)`
-/

namespace A144459.P14986928070404688211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n + A033584 n

end

end A144459.P14986928070404688211

namespace A144459

/-- `A082109(n)+A033584(n)` -/
def P14986928070404688211.Spec : Prop :=
  ∀ n, P14986928070404688211.a n = A144459 n

end A144459

/-!
# A144462: A triangle sequence designed as a step function around the determinants: a(n)=A000045(n); t(n,m)=If[m == 0 || m == 1, 2 - m, If[ m < n, Ceiling[(a(m) - 1)/a(n) + 1], a(n) + 1]].

The programs for A144462, there is no canonical definition to state claims against.
-/

/-! ## A144462.P3052808968592777370

`A154958(A138036(A243641(n+1)))`
-/

namespace A144462.P3052808968592777370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A138036 (A243641 (n + 1)).toNat).toNat

end

end A144462.P3052808968592777370

/-! ## A144462.P12590576563785538545

`gcd(A033994(A008955(n)), A103438(n))`
-/

namespace A144462.P12590576563785538545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033994 (A008955 n).toNat) (A103438 n)

end

end A144462.P12590576563785538545

/-! ## A144462.P14680329048389755838

`A239550(n)+A034366(A212829(n+1))`
-/

namespace A144462.P14680329048389755838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 n + A034366 (A212829 (n + 1)).toNat

end

end A144462.P14680329048389755838

/-! ## A144462.P3101659033574404679

`A066888(A141539(n)%A088268(n+1))`
-/

namespace A144462.P3101659033574404679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (Int.tmod (A141539 n) (A088268 (n + 1))).toNat

end

end A144462.P3101659033574404679

/-! ## A144462.P14445363581772308941

`A136167(A203647(n+1))+A000265(A344110(n))`
-/

namespace A144462.P14445363581772308941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136167 (A203647 (n + 1)).toNat + A000265 (A344110 n).toNat

end

end A144462.P14445363581772308941

/-!
# A144463: Triangle T(n,m) read by rows: T(n,m)= A013609(n,m) if m <= n/2, T(n,m)= T(n,n-m) otherwise.

The programs for A144463, there is no canonical definition to state claims against.
-/

/-! ## A144463.P7912770054032547817

`A007318(n)*A144464(n)`
-/

namespace A144463.P7912770054032547817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A144464 n

end

end A144463.P7912770054032547817

/-! ## A144463.P7186131625413747409

`A174376(n)/A140356(n)`
-/

namespace A144463.P7186131625413747409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174376 n : ℚ) / (A140356 n : ℚ)

end

end A144463.P7186131625413747409

/-! ## A144463.P10192626316321344194

`A174301(n)/A144464(n)`
-/

namespace A144463.P10192626316321344194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174301 n : ℚ) / (A144464 n : ℚ)

end

end A144463.P10192626316321344194

/-! ## A144463.P15250944221688817229

`gcd(A013609(n), A013620(n))`
-/

namespace A144463.P15250944221688817229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013609 n) (A013620 n)

end

end A144463.P15250944221688817229

/-! ## A144463.P7559798802351472041

`gcd(A013613(n), A013621(n))`
-/

namespace A144463.P7559798802351472041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013613 n) (A013621 n)

end

end A144463.P7559798802351472041

/-! ## A144463.P15511084459827429498

`gcd(A013617(n), A013623(n))`
-/

namespace A144463.P15511084459827429498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013617 n) (A013623 n)

end

end A144463.P15511084459827429498

/-! ## A144463.P1010166352894355491

`gcd(A013627(n), A038244(n))`
-/

namespace A144463.P1010166352894355491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013627 n) (A038244 n)

end

end A144463.P1010166352894355491

/-! ## A144463.P15808230709175163166

`gcd(A038207(n), A038220(n))`
-/

namespace A144463.P15808230709175163166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038207 n) (A038220 n)

end

end A144463.P15808230709175163166

/-! ## A144463.P11596342350253592394

`gcd(A038217(n), A038224(n))`
-/

namespace A144463.P11596342350253592394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038217 n) (A038224 n)

end

end A144463.P11596342350253592394

/-! ## A144463.P7169166350359742830

`gcd(A038215(n), A038252(n))`
-/

namespace A144463.P7169166350359742830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038215 n) (A038252 n)

end

end A144463.P7169166350359742830

/-!
# A144464: Triangle T(n,m) read by rows: T(n,m) = 2^min(m,n-m).

The programs for A144464, the canonical program `A144464.P14632589415150791803` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144464 has offset 0).

The definition of A144464 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004197, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144464.P14632589415150791803

`2^A004197(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A144464

/-- `2^A004197(n)` -/
def P14632589415150791803.Spec : Prop :=
  ∀ n, P14632589415150791803.a n = (A144464 n : ℚ)

end A144464

/-! ## A144464.P8421997662954368333

`sqrt(A152716(n))`
-/

namespace A144464.P8421997662954368333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152716 n : ℝ)

end

end A144464.P8421997662954368333

namespace A144464

/-- `sqrt(A152716(n))` -/
def P8421997662954368333.Spec : Prop :=
  ∀ n, P8421997662954368333.a n = (A144464 n : ℝ)

end A144464

/-! ## A144464.P15710384376857607183

`round(A143086(n)/2)`
-/

namespace A144464.P15710384376857607183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143086 n : ℚ) / 2)

end

end A144464.P15710384376857607183

namespace A144464

/-- `round(A143086(n)/2)` -/
def P15710384376857607183.Spec : Prop :=
  ∀ n, P15710384376857607183.a n = A144464 n

end A144464

/-! ## A144464.P8801705466641569099

`2^val(A036561(n), 6)`
-/

namespace A144464.P8801705466641569099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A036561 n).toNat 6

end

end A144464.P8801705466641569099

namespace A144464

/-- `2^val(A036561(n), 6)` -/
def P8801705466641569099.Spec : Prop :=
  ∀ n, (P8801705466641569099.a n : ℤ) = A144464 n

end A144464

/-! ## A144464.P12962355836503585899

`2^(A003983(n+1)-1)`
-/

namespace A144464.P12962355836503585899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003983 (n + 1) - 1 : ℤ)

end

end A144464.P12962355836503585899

namespace A144464

/-- `2^(A003983(n+1)-1)` -/
def P12962355836503585899.Spec : Prop :=
  ∀ n, P12962355836503585899.a n = (A144464 n : ℚ)

end A144464

/-! ## A144464.P16338860306079451696

`gcd(10*a(n-1), A057728(n+1))` with `a(0)=1`
-/

namespace A144464.P16338860306079451696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (10 * a (n - 1) : ℤ) (A057728 (n + 1))

end

end A144464.P16338860306079451696

namespace A144464

/-- `gcd(10*a(n-1), A057728(n+1))` -/
def P16338860306079451696.Spec : Prop :=
  ∀ n, (P16338860306079451696.a n : ℤ) = A144464 n

end A144464

/-! ## A144464.P11819705764386256054

`A000079(A004197(n))`
-/

namespace A144464.P11819705764386256054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat

end

end A144464.P11819705764386256054

namespace A144464

/-- `A000079(A004197(n))` -/
def P11819705764386256054.Spec : Prop :=
  ∀ n, P11819705764386256054.a n = A144464 n

end A144464

/-! ## A144464.P15160547230026844526

`A016116(A157458(n))`
-/

namespace A144464.P15160547230026844526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A157458 n).toNat

end

end A144464.P15160547230026844526

namespace A144464

/-- `A016116(A157458(n))` -/
def P15160547230026844526.Spec : Prop :=
  ∀ n, P15160547230026844526.a n = A144464 n

end A144464

/-! ## A144464.P4988891393385885123

`A011782(A003983(n+1))`
-/

namespace A144464.P4988891393385885123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003983 (n + 1)).toNat

end

end A144464.P4988891393385885123

namespace A144464

/-- `A011782(A003983(n+1))` -/
def P4988891393385885123.Spec : Prop :=
  ∀ n, P4988891393385885123.a n = A144464 n

end A144464

/-! ## A144464.P9495652797722825389

`A016116(A157454(n+1))`
-/

namespace A144464.P9495652797722825389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A157454 (n + 1)).toNat

end

end A144464.P9495652797722825389

namespace A144464

/-- `A016116(A157454(n+1))` -/
def P9495652797722825389.Spec : Prop :=
  ∀ n, P9495652797722825389.a n = A144464 n

end A144464

/-! ## A144464.P3087910260957960214

`A016116(2*A004197(n))`
-/

namespace A144464.P3087910260957960214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A004197 n).toNat

end

end A144464.P3087910260957960214

namespace A144464

/-- `A016116(2*A004197(n))` -/
def P3087910260957960214.Spec : Prop :=
  ∀ n, P3087910260957960214.a n = A144464 n

end A144464

/-! ## A144464.P18436618145145045318

`A000079(val(A036561(n), 6))`
-/

namespace A144464.P18436618145145045318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A036561 n).toNat 6)

end

end A144464.P18436618145145045318

namespace A144464

/-- `A000079(val(A036561(n), 6))` -/
def P18436618145145045318.Spec : Prop :=
  ∀ n, P18436618145145045318.a n = A144464 n

end A144464

/-! ## A144464.P12975312726098853351

`A000079(val(A175840(n), 6))`
-/

namespace A144464.P12975312726098853351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A175840 n).toNat 6)

end

end A144464.P12975312726098853351

namespace A144464

/-- `A000079(val(A175840(n), 6))` -/
def P12975312726098853351.Spec : Prop :=
  ∀ n, P12975312726098853351.a n = A144464 n

end A144464

/-! ## A144464.P10843242359428727064

`gcd(A036561(n), A059268(n))`
-/

namespace A144464.P10843242359428727064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036561 n) (A059268 n)

end

end A144464.P10843242359428727064

namespace A144464

/-- `gcd(A036561(n), A059268(n))` -/
def P10843242359428727064.Spec : Prop :=
  ∀ n, (P10843242359428727064.a n : ℤ) = A144464 n

end A144464

/-! ## A144464.P12406910028614868044

`gcd(A131817(n), A176224(n))`
-/

namespace A144464.P12406910028614868044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131817 n) (A176224 n)

end

end A144464.P12406910028614868044

namespace A144464

/-- `gcd(A131817(n), A176224(n))` -/
def P12406910028614868044.Spec : Prop :=
  ∀ n, (P12406910028614868044.a n : ℤ) = A144464 n

end A144464

/-! ## A144464.P5491842287823864074

`gcd(A175840(n), A230435(n))`
-/

namespace A144464.P5491842287823864074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175840 n) (A230435 n)

end

end A144464.P5491842287823864074

namespace A144464

/-- `gcd(A175840(n), A230435(n))` -/
def P5491842287823864074.Spec : Prop :=
  ∀ n, (P5491842287823864074.a n : ℤ) = A144464 n

end A144464

/-! ## A144464.P3193400283513041088

`A216274(2*A004197(n)²)`
-/

namespace A144464.P3193400283513041088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 (2 * A004197 n ^ 2).toNat

end

end A144464.P3193400283513041088

namespace A144464

/-- `A216274(2*A004197(n)²)` -/
def P3193400283513041088.Spec : Prop :=
  ∀ n, P3193400283513041088.a n = A144464 n

end A144464

/-! ## A144464.P14209852746476788327

`A000079(A003983(n+1)-1)`
-/

namespace A144464.P14209852746476788327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003983 (n + 1) - 1).toNat

end

end A144464.P14209852746476788327

namespace A144464

/-- `A000079(A003983(n+1)-1)` -/
def P14209852746476788327.Spec : Prop :=
  ∀ n, P14209852746476788327.a n = A144464 n

end A144464

/-! ## A144464.P8975221298306301870

`A000225(A003983(n+1)-1)+1`
-/

namespace A144464.P8975221298306301870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A003983 (n + 1) - 1).toNat + 1

end

end A144464.P8975221298306301870

namespace A144464

/-- `A000225(A003983(n+1)-1)+1` -/
def P8975221298306301870.Spec : Prop :=
  ∀ n, P8975221298306301870.a n = A144464 n

end A144464

/-! ## A144464.P8561722174499877163

`A000051(A003983(n+1)-1)-1`
-/

namespace A144464.P8561722174499877163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A003983 (n + 1) - 1).toNat - 1

end

end A144464.P8561722174499877163

namespace A144464

/-- `A000051(A003983(n+1)-1)-1` -/
def P8561722174499877163.Spec : Prop :=
  ∀ n, P8561722174499877163.a n = A144464 n

end A144464

/-!
# A144465: a(n) = 5^n - 2^(n - 1) for n > 0; a(0) = 1.

The programs for A144465, the canonical program `A144465.P6234886934766518351` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144465 has offset 0).

The definition of A144465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144465.P6234886934766518351

`7*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=4, a(2)=23`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144465

/-- `7*a(n-1)-10*a(n-2)` -/
def P6234886934766518351.Spec : Prop :=
  ∀ n, P6234886934766518351.a n = A144465 n

theorem P6234886934766518351.correct : P6234886934766518351.Spec := by
  intro n
  simp only [A144465]

end A144465

/-! ## A144465.P15305942905837077548

`5^n-floor(2^(n-1))`
-/

namespace A144465.P15305942905837077548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A144465.P15305942905837077548

namespace A144465

/-- `5^n-floor(2^(n-1))` -/
def P15305942905837077548.Spec : Prop :=
  ∀ n, P15305942905837077548.a n = A144465 n

end A144465

/-! ## A144465.P12786348780455472440

`abs(5^n-A131577(n))`
-/

namespace A144465.P12786348780455472440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A131577 n|

end

end A144465.P12786348780455472440

namespace A144465

/-- `abs(5^n-A131577(n))` -/
def P12786348780455472440.Spec : Prop :=
  ∀ n, P12786348780455472440.a n = A144465 n

end A144465

/-! ## A144465.P1686983849362138801

`ceil(A005057(n)+2^(n-1))`
-/

namespace A144465.P1686983849362138801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005057 n : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A144465.P1686983849362138801

namespace A144465

/-- `ceil(A005057(n)+2^(n-1))` -/
def P1686983849362138801.Spec : Prop :=
  ∀ n, P1686983849362138801.a n = A144465 n

end A144465

/-! ## A144465.P9756290222194489363

`ceil(A000351(n)-2^(n-1))`
-/

namespace A144465.P9756290222194489363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000351 n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A144465.P9756290222194489363

namespace A144465

/-- `ceil(A000351(n)-2^(n-1))` -/
def P9756290222194489363.Spec : Prop :=
  ∀ n, P9756290222194489363.a n = A144465 n

end A144465

/-! ## A144465.P10287272551687041233

`abs(A131577(n)-A000351(n))`
-/

namespace A144465.P10287272551687041233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131577 n - A000351 n|

end

end A144465.P10287272551687041233

namespace A144465

/-- `abs(A131577(n)-A000351(n))` -/
def P10287272551687041233.Spec : Prop :=
  ∀ n, P10287272551687041233.a n = A144465 n

end A144465

/-! ## A144465.P9688211007238066484

`ceil(A083421(n)/2)`
-/

namespace A144465.P9688211007238066484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083421 n : ℚ) / 2⌉

end

end A144465.P9688211007238066484

namespace A144465

/-- `ceil(A083421(n)/2)` -/
def P9688211007238066484.Spec : Prop :=
  ∀ n, P9688211007238066484.a n = A144465 n

end A144465

/-! ## A144465.P12856665814513464066

`round((2*5^n-A000079(n))/2)`
-/

namespace A144465.P12856665814513464066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * 5 ^ n : ℤ) - A000079 n : ℚ) / 2)

end

end A144465.P12856665814513464066

namespace A144465

/-- `round((2*5^n-A000079(n))/2)` -/
def P12856665814513464066.Spec : Prop :=
  ∀ n, P12856665814513464066.a n = A144465 n

end A144465

/-! ## A144465.P12505831346079002182

`Δ[A003463(n)-A011782(n)]`
-/

namespace A144465.P12505831346079002182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144465.P12505831346079002182

namespace A144465

/-- `Δ[A003463(n)-A011782(n)]` -/
def P12505831346079002182.Spec : Prop :=
  ∀ n, P12505831346079002182.a n = A144465 n

end A144465

/-! ## A144465.P10765529602326786504

`A083421(n)/2*A014963(4*n+2)`
-/

namespace A144465.P10765529602326786504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083421 n : ℚ) / 2 * (A014963 (4 * n + 2) : ℚ)

end

end A144465.P10765529602326786504

namespace A144465

/-- `A083421(n)/2*A014963(4*n+2)` -/
def P10765529602326786504.Spec : Prop :=
  ∀ n, P10765529602326786504.a n = (A144465 n : ℚ)

end A144465

/-! ## A144465.P1713125715755957902

`A011782(n)/A011782(n+1)*A083421(n)`
-/

namespace A144465.P1713125715755957902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 (n + 1) : ℚ) * (A083421 n : ℚ)

end

end A144465.P1713125715755957902

namespace A144465

/-- `A011782(n)/A011782(n+1)*A083421(n)` -/
def P1713125715755957902.Spec : Prop :=
  ∀ n, P1713125715755957902.a n = (A144465 n : ℚ)

end A144465

/-!
# A144466: Primes p such that the partition number of the p-th prime is also a prime.

The programs for A144466, there is no canonical definition to state claims against.
-/

/-! ## A144466.P830603545985492539

`A000720(∩[A006450(n+1), A046063(n+1)])`
-/

namespace A144466.P830603545985492539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A144466.P830603545985492539

/-!
# A144467: A038601 type numbers where Prime of Prime numbers: a(n)=Prime[A038601 (n)].

The programs for A144467, there is no canonical definition to state claims against.
-/

/-! ## A144467.P10821956950195024635

`A064988(A038601(n+1))`
-/

namespace A144467.P10821956950195024635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A038601 (n + 1)).toNat

end

end A144467.P10821956950195024635

/-! ## A144467.P8467143372184486850

`A008578(A038601(n+1)+1)`
-/

namespace A144467.P8467143372184486850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A038601 (n + 1) + 1).toNat

end

end A144467.P8467143372184486850

/-! ## A144467.P4773743700193151168

`A000040(abs((-1)^n*A038601(n+1)))`
-/

namespace A144467.P4773743700193151168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |(-1) ^ n * A038601 (n + 1)|.toNat

end

end A144467.P4773743700193151168

/-! ## A144467.P431730996092351696

`A000040(abs(A038601(n+1)*A160357(n)))`
-/

namespace A144467.P431730996092351696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |A038601 (n + 1) * A160357 n|.toNat

end

end A144467.P431730996092351696

/-! ## A144467.P6489730705447651721

`A000040(A038601(n+1)%A145609(n+1))`
-/

namespace A144467.P6489730705447651721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A038601 (n + 1)) (A145609 (n + 1))).toNat

end

end A144467.P6489730705447651721

/-!
# A144468: Final digit of multiples of 7.

The programs for A144468, the canonical program `A144468.P728365568732059719` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144468 has offset 0).

The definition of A144468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144468.P728365568732059719

`(7*n)%10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144468

/-- `(7*n)%10` -/
def P728365568732059719.Spec : Prop :=
  ∀ n, (P728365568732059719.a n : ℤ) = A144468 n

theorem P728365568732059719.correct : P728365568732059719.Spec := by
  intro n
  simp only [A144468]

end A144468

/-!
# A144470: Triangle t(n,m) read by rows: t(n,m) = binomial(n,m)*3^m if m <= n/2, else t(n,m) = t(n,n-m).

The programs for A144470, there is no canonical definition to state claims against.
-/

/-! ## A144470.P14287937512267527810

`A007318(n)*A152714(n)`
-/

namespace A144470.P14287937512267527810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A152714 n

end

end A144470.P14287937512267527810

/-! ## A144470.P18362131715467305384

`A174377(n)/A140356(n)`
-/

namespace A144470.P18362131715467305384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174377 n : ℚ) / (A140356 n : ℚ)

end

end A144470.P18362131715467305384

/-! ## A144470.P8085421131856758843

`gcd(A013610(n), A013622(n))`
-/

namespace A144470.P8085421131856758843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013610 n) (A013622 n)

end

end A144470.P8085421131856758843

/-! ## A144470.P16959445903131589664

`gcd(A013613(n), A013624(n))`
-/

namespace A144470.P16959445903131589664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013613 n) (A013624 n)

end

end A144470.P16959445903131589664

/-! ## A144470.P18035139751653344867

`gcd(A013619(n), A027465(n))`
-/

namespace A144470.P18035139751653344867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013619 n) (A027465 n)

end

end A144470.P18035139751653344867

/-! ## A144470.P4964416316287750957

`gcd(A013620(n), A027467(n))`
-/

namespace A144470.P4964416316287750957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013620 n) (A027467 n)

end

end A144470.P4964416316287750957

/-! ## A144470.P7334885664853804653

`gcd(A013627(n), A038245(n))`
-/

namespace A144470.P7334885664853804653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013627 n) (A038245 n)

end

end A144470.P7334885664853804653

/-! ## A144470.P3757652256468242589

`gcd(A038212(n), A038229(n))`
-/

namespace A144470.P3757652256468242589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038212 n) (A038229 n)

end

end A144470.P3757652256468242589

/-! ## A144470.P15583520551738495264

`gcd(A038220(n), A038269(n))`
-/

namespace A144470.P15583520551738495264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038220 n) (A038269 n)

end

end A144470.P15583520551738495264

/-! ## A144470.P3890560485289572353

`gcd(A038222(n), A038317(n))`
-/

namespace A144470.P3890560485289572353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038222 n) (A038317 n)

end

end A144470.P3890560485289572353

/-!
# A144472: Negative values along the main diagonal of the array defined by A020806 and its differences.

The programs for A144472, the canonical program `A144472.P12511744179752286426` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144472 has offset 1).

The definition of A144472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144472.P12511744179752286426

`a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=2, a(2)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144472

/-- `a(n-1)+2*a(n-2)` -/
def P12511744179752286426.Spec : Prop :=
  ∀ n, P12511744179752286426.a n = A144472 (n + 1)

theorem P12511744179752286426.correct : P12511744179752286426.Spec := by
  intro n
  simp only [A144472, Nat.add_sub_cancel]

end A144472

/-! ## A144472.P14845381524694259211

`4*A001045(n)-A156067(n)`
-/

namespace A144472.P14845381524694259211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001045 n - A156067 n

end

end A144472.P14845381524694259211

namespace A144472

/-- `4*A001045(n)-A156067(n)` -/
def P14845381524694259211.Spec : Prop :=
  ∀ n, P14845381524694259211.a n = A144472 (n + 1)

end A144472

/-! ## A144472.P12527767868065914641

`A171382(n+1)+A078008(n)-A154570(n)`
-/

namespace A144472.P12527767868065914641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171382 (n + 1) + (A078008 n - A154570 n)

end

end A144472.P12527767868065914641

namespace A144472

/-- `A171382(n+1)+A078008(n)-A154570(n)` -/
def P12527767868065914641.Spec : Prop :=
  ∀ n, P12527767868065914641.a n = A144472 (n + 1)

end A144472

/-! ## A144472.P4014689078863429028

`9*A131577(n)-A083582(n)`
-/

namespace A144472.P4014689078863429028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A131577 n - A083582 n

end

end A144472.P4014689078863429028

namespace A144472

/-- `9*A131577(n)-A083582(n)` -/
def P4014689078863429028.Spec : Prop :=
  ∀ n, P4014689078863429028.a n = A144472 (n + 1)

end A144472

/-! ## A144472.P18031096716428186484

`record[abs(A140360(n))]-A042950(n)`
-/

namespace A144472.P18031096716428186484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A042950 n

end

end A144472.P18031096716428186484

namespace A144472

/-- `record[abs(A140360(n))]-A042950(n)` -/
def P18031096716428186484.Spec : Prop :=
  ∀ n, P18031096716428186484.a n = A144472 (n + 1)

end A144472

/-! ## A144472.P15927776985928466178

`A087940(n+1)-xor(2, A000975(n))`
-/

namespace A144472.P15927776985928466178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087940 (n + 1) - Int.xor 2 (A000975 n)

end

end A144472.P15927776985928466178

namespace A144472

/-- `A087940(n+1)-xor(2, A000975(n))` -/
def P15927776985928466178.Spec : Prop :=
  ∀ n, P15927776985928466178.a n = A144472 (n + 1)

end A144472

/-! ## A144472.P9744666600138436661

`A087940(n+1)-xor(3, A097072(n))`
-/

namespace A144472.P9744666600138436661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087940 (n + 1) - Int.xor 3 (A097072 n)

end

end A144472.P9744666600138436661

namespace A144472

/-- `A087940(n+1)-xor(3, A097072(n))` -/
def P9744666600138436661.Spec : Prop :=
  ∀ n, P9744666600138436661.a n = A144472 (n + 1)

end A144472

/-! ## A144472.P7056452940994814913

`A083582(n)-(A154570(n)+A000079(n))`
-/

namespace A144472.P7056452940994814913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083582 n - (A154570 n + A000079 n)

end

end A144472.P7056452940994814913

namespace A144472

/-- `A083582(n)-(A154570(n)+A000079(n))` -/
def P7056452940994814913.Spec : Prop :=
  ∀ n, P7056452940994814913.a n = A144472 (n + 1)

end A144472

/-! ## A144472.P4473844958101774398

`A154589(n+1)+A083582(n)-A154570(n)`
-/

namespace A144472.P4473844958101774398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 (n + 1) + (A083582 n - A154570 n)

end

end A144472.P4473844958101774398

namespace A144472

/-- `A154589(n+1)+A083582(n)-A154570(n)` -/
def P4473844958101774398.Spec : Prop :=
  ∀ n, P4473844958101774398.a n = A144472 (n + 1)

end A144472

/-!
# A144473: A triangle sequence of determinants: a(n)=If[Mod[n, 3] == 0, 1, If[Mod[n, 3] == 1, -1, If[Mod[n, 3] == 2, 0]]]; b(n,m)=If[m < n && Mod[n, 3] == 0, 0, If[m < n && Mod[n, 3] == 1, 0, If[m < n && Mod[n, 3] == 2 && Mod[n, 2] == 0, 1, If[m < n && Mod[n, 3] == 2 && Mod[n, 2] == 1, -1, If[m == n, -1, 0]]]]]; M={{a(m), b(n, m)}, {a(n), b(n, n)}}; t(n,m)=Det[M].

The programs for A144473, there is no canonical definition to state claims against.
-/

/-! ## A144473.P8411084305565027993

`(C(∑[char[∑[n]]], 2)-(n+2))%3+1`
-/

namespace A144473.P8411084305565027993
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n + 2 : ℤ)) 3 + 1

end

end A144473.P8411084305565027993

/-! ## A144473.P9467819201514345023

`(2*(n-C(∑[char[∑[n]]], 2)))%3-1`
-/

namespace A144473.P9467819201514345023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))) 3 - 1

end

end A144473.P9467819201514345023

/-! ## A144473.P5610446220366711395

`(18-(n-C(∑[char[∑[n]]], 2)))%3-1`
-/

namespace A144473.P5610446220366711395
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (18 - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))) 3 - 1

end

end A144473.P5610446220366711395

/-! ## A144473.P16326851836302990099

`round(-cos(2*(n-C(∑[char[∑[n]]], 2))+1))`
-/

namespace A144473.P16326851836302990099
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-Real.cos (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1 : ℝ))

end

end A144473.P16326851836302990099

/-! ## A144473.P8692173520213366215

`(n-(Δ[n²]+(n-comp[∑[n]])²))%3+1`
-/

namespace A144473.P8692173520213366215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2)) 3 + 1

end

end A144473.P8692173520213366215

/-! ## A144473.P5859254568176036468

`1-A174028(n)%3`
-/

namespace A144473.P5859254568176036468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A174028 n) 3

end

end A144473.P5859254568176036468

/-! ## A144473.P6479752768229675985

`round(-cos(A158405(n+1)))`
-/

namespace A144473.P6479752768229675985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-Real.cos (A158405 (n + 1) : ℝ))

end

end A144473.P6479752768229675985

/-! ## A144473.P8090423046582823287

`1-(A002262(n)+2)%3`
-/

namespace A144473.P8090423046582823287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A002262 n + 2) 3

end

end A144473.P8090423046582823287

/-! ## A144473.P18256585981230822896

`floor(atan(-tan(A002260(n+1))))`
-/

namespace A144473.P18256585981230822896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (-Real.tan (A002260 (n + 1) : ℝ))⌋

end

end A144473.P18256585981230822896

/-! ## A144473.P12786799828754522805

`A011646(A131413(n))`
-/

namespace A144473.P12786799828754522805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A131413 n).toNat

end

end A144473.P12786799828754522805

/-!
# A144474: A triangle sequence of determinants: a(n)=If[Mod[n, 2] == 0, 1, If[Mod[n, 2] == 1, -1, 0]]; b(n,m)=If[m < n && Mod[n, 3] == 0, 0, If[m < n && Mod[n, 3] == 1, 0, If[m < n && Mod[n, 3] == 2 && Mod[n, 2] == 0, 1, If[m < n && Mod[n, 3] == 2 && Mod[n, 2] == 1, -1, If[m == n, -1, 0]]]]]; M={{a(m), b(n, m)}, {a(n), b(n, n)}}; t(n,m)=Det[M].

The programs for A144474, there is no canonical definition to state claims against.
-/

/-! ## A144474.P8067917059512624245

`A204435(n+1)-(A059268(n)+1)%3`
-/

namespace A144474.P8067917059512624245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204435 (n + 1) - Int.tmod (A059268 n + 1) 3

end

end A144474.P8067917059512624245

/-! ## A144474.P13835583474412166051

`A204435(n+1)-A000122(A059268(n))`
-/

namespace A144474.P13835583474412166051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204435 (n + 1) - A000122 (A059268 n).toNat

end

end A144474.P13835583474412166051

/-! ## A144474.P11945922789131547871

`A015435(A002260(n+1))-A057944(n)%3`
-/

namespace A144474.P11945922789131547871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015435 (A002260 (n + 1)).toNat - Int.tmod (A057944 n) 3

end

end A144474.P11945922789131547871

/-! ## A144474.P16868820608041360514

`(A002262(n)-n)%3-A033999(A002262(n))`
-/

namespace A144474.P16868820608041360514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n - (n : ℤ)) 3 - A033999 (A002262 n).toNat

end

end A144474.P16868820608041360514

/-! ## A144474.P15028751159679469043

`A015435(A002260(n+1))-A102283(A057944(n))`
-/

namespace A144474.P15028751159679469043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015435 (A002260 (n + 1)).toNat - A102283 (A057944 n).toNat

end

end A144474.P15028751159679469043

/-!
# A144475: A triangle sequence of determinants: a(n)=If[Mod[n, 3] == 0, 1, If[Mod[n, 3] == 1, -1, If[Mod[n, 3] == 2, 0]]]; b(n,m)=If[m < n && Mod[m, 3] == 0, 0, If[m < n && Mod[m, 3] == 1, 0, If[m < n && Mod[m, 3] == 2 && Mod[n, 2] == 0, 1, If[m < n && Mod[m, 3] == 2 && Mod[n, 2] == 1, -1, If[m == n, -1, 0]]]]]; M={{a(m), b(n, m)}, {a(n), b(n, n)}}; t(n,m)=Det[M].

The programs for A144475, there is no canonical definition to state claims against.
-/

/-! ## A144475.P12461361138290098149

`A008683(A345999(A046899(n)²))`
-/

namespace A144475.P12461361138290098149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A345999 (A046899 n ^ 2).toNat).toNat

end

end A144475.P12461361138290098149

/-! ## A144475.P13881662967850715191

`A049347(C(A266921(n+1), A240086(n+1)))`
-/

namespace A144475.P13881662967850715191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (Nat.choose (A266921 (n + 1)).toNat (A240086 (n + 1)).toNat)

end

end A144475.P13881662967850715191

/-! ## A144475.P6457649837174573021

`A049347(lcm(A246076(n+1)², A266878(n+1)))`
-/

namespace A144475.P6457649837174573021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (Int.lcm (A246076 (n + 1) ^ 2) (A266878 (n + 1)))

end

end A144475.P6457649837174573021

/-! ## A144475.P1183223659049783696

`A010891(A256311(A292717(n)))`
-/

namespace A144475.P1183223659049783696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (A256311 (A292717 n).toNat).toNat

end

end A144475.P1183223659049783696

/-! ## A144475.P13134009388836204968

`A129667(A054886(n)+A002654(n+1))`
-/

namespace A144475.P13134009388836204968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A054886 n + A002654 (n + 1)).toNat

end

end A144475.P13134009388836204968

/-!
# A144476: Four interlaced copies of A117373.

The programs for A144476, the canonical program `A144476.P5377450236881497881` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144476 has offset 1).

The definition of A144476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144476.P5377450236881497881

`a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=3, a(4)=-2, a(5)=-2, a(6)=2, a(7)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144476

/-- `a(n-4)-a(n-8)` -/
def P5377450236881497881.Spec : Prop :=
  ∀ n, P5377450236881497881.a n = A144476 (n + 1)

theorem P5377450236881497881.correct : P5377450236881497881.Spec := by
  intro n
  simp only [A144476, Nat.add_sub_cancel]

end A144476

/-!
# A144477: a(n) = minimal number of 0's that must be changed to 1's in the binary expansion of the n-th prime in order to make it into a palindrome.

The programs for A144477, the canonical program `A144477.P14831174345250397113` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144477 has offset 1).

The definition of A144477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144477.P14831174345250397113

`A037888(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144477

/-- `A037888(p?[a(n-1)+2])` -/
def P14831174345250397113.Spec : Prop :=
  ∀ n, P14831174345250397113.a n = A144477 (n + 1)

theorem P14831174345250397113.correct : P14831174345250397113.Spec := by
  intro n
  simp only [A144477, Nat.add_sub_cancel]

end A144477

/-! ## A144477.P8865305242638381040

`A037888(Δ[A007504(n)])`
-/

namespace A144477.P8865305242638381040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (n + 1) - f1 n).toNat

end

end A144477.P8865305242638381040

namespace A144477

/-- `A037888(Δ[A007504(n)])` -/
def P8865305242638381040.Spec : Prop :=
  ∀ n, P8865305242638381040.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P3639341086663883553

`A037888(record[A051698(n)])`
-/

namespace A144477.P3639341086663883553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144477.P3639341086663883553

namespace A144477

/-- `A037888(record[A051698(n)])` -/
def P3639341086663883553.Spec : Prop :=
  ∀ n, P3639341086663883553.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P11589841482470094743

`A037888(p?[A259153(n)])`
-/

namespace A144477.P11589841482470094743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144477.P11589841482470094743

namespace A144477

/-- `A037888(p?[A259153(n)])` -/
def P11589841482470094743.Spec : Prop :=
  ∀ n, P11589841482470094743.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P17053256631790637858

`A037888(p?[A344180(n)])`
-/

namespace A144477.P17053256631790637858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144477.P17053256631790637858

namespace A144477

/-- `A037888(p?[A344180(n)])` -/
def P17053256631790637858.Spec : Prop :=
  ∀ n, P17053256631790637858.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P10000956562928302898

`A037888(A000040(n+1))`
-/

namespace A144477.P10000956562928302898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A000040 (n + 1)).toNat

end

end A144477.P10000956562928302898

namespace A144477

/-- `A037888(A000040(n+1))` -/
def P10000956562928302898.Spec : Prop :=
  ∀ n, P10000956562928302898.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P6499719956764578331

`A037888(A063884(n+1))`
-/

namespace A144477.P6499719956764578331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A063884 (n + 1)).toNat

end

end A144477.P6499719956764578331

namespace A144477

/-- `A037888(A063884(n+1))` -/
def P6499719956764578331.Spec : Prop :=
  ∀ n, P6499719956764578331.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P3163597796253859818

`A037888(A063904(n+1))`
-/

namespace A144477.P3163597796253859818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A063904 (n + 1)).toNat

end

end A144477.P3163597796253859818

namespace A144477

/-- `A037888(A063904(n+1))` -/
def P3163597796253859818.Spec : Prop :=
  ∀ n, P3163597796253859818.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P8722331987224650939

`A037888(A161847(n+1))`
-/

namespace A144477.P8722331987224650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A161847 (n + 1)).toNat

end

end A144477.P8722331987224650939

namespace A144477

/-- `A037888(A161847(n+1))` -/
def P8722331987224650939.Spec : Prop :=
  ∀ n, P8722331987224650939.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P4635602758100112293

`A037888(A008578(n+2))`
-/

namespace A144477.P4635602758100112293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A008578 (n + 2)).toNat

end

end A144477.P4635602758100112293

namespace A144477

/-- `A037888(A008578(n+2))` -/
def P4635602758100112293.Spec : Prop :=
  ∀ n, P4635602758100112293.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P835578840192133891

`A037888(A182986(n+2))`
-/

namespace A144477.P835578840192133891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A182986 (n + 2)).toNat

end

end A144477.P835578840192133891

namespace A144477

/-- `A037888(A182986(n+2))` -/
def P835578840192133891.Spec : Prop :=
  ∀ n, P835578840192133891.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P9174331093964670529

`A037888(eq[1, A003415(n)])`
-/

namespace A144477.P9174331093964670529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144477.P9174331093964670529

namespace A144477

/-- `A037888(eq[1, A003415(n)])` -/
def P9174331093964670529.Spec : Prop :=
  ∀ n, P9174331093964670529.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P14134554422409203979

`A037888(record[A006530(n+2)])`
-/

namespace A144477.P14134554422409203979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144477.P14134554422409203979

namespace A144477

/-- `A037888(record[A006530(n+2)])` -/
def P14134554422409203979.Spec : Prop :=
  ∀ n, P14134554422409203979.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P14514175877397351718

`A037888(record[A014963(n+2)])`
-/

namespace A144477.P14514175877397351718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144477.P14514175877397351718

namespace A144477

/-- `A037888(record[A014963(n+2)])` -/
def P14514175877397351718.Spec : Prop :=
  ∀ n, P14514175877397351718.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P893430341804703778

`A037888(record[A020639(n+2)])`
-/

namespace A144477.P893430341804703778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144477.P893430341804703778

namespace A144477

/-- `A037888(record[A020639(n+2)])` -/
def P893430341804703778.Spec : Prop :=
  ∀ n, P893430341804703778.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P1210332842696912979

`A037888(record[A000010(n+1)+1])`
-/

namespace A144477.P1210332842696912979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144477.P1210332842696912979

namespace A144477

/-- `A037888(record[A000010(n+1)+1])` -/
def P1210332842696912979.Spec : Prop :=
  ∀ n, P1210332842696912979.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P3587812674561645248

`A037888(A007504(n+1)-A007504(n))`
-/

namespace A144477.P3587812674561645248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A007504 (n + 1) - A007504 n).toNat

end

end A144477.P3587812674561645248

namespace A144477

/-- `A037888(A007504(n+1)-A007504(n))` -/
def P3587812674561645248.Spec : Prop :=
  ∀ n, P3587812674561645248.a n = A144477 (n + 1)

end A144477

/-! ## A144477.P151471169547979027

`A037888(A083190(n+2))`
-/

namespace A144477.P151471169547979027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A083190 (n + 2)).toNat

end

end A144477.P151471169547979027

namespace A144477

/-- `A037888(A083190(n+2))` -/
def P151471169547979027.Spec : Prop :=
  ∀ n, P151471169547979027.a n = A144477 (n + 1)

end A144477

/-!
# A144478: Period 9: repeat [1, 0, 5, 7, 6, 2, 4, 3, 8].

The programs for A144478, the canonical program `A144478.P6153117773716772634` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144478 has offset 1).

The definition of A144478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144478.P6153117773716772634

`dr(∑[6*n+2])-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144478

/-- `dr(∑[6*n+2])-1` -/
def P6153117773716772634.Spec : Prop :=
  ∀ n, P6153117773716772634.a n = A144478 (n + 1)

theorem P6153117773716772634.correct : P6153117773716772634.Spec := by
  intro n
  simp only [A144478, Nat.add_sub_cancel]

end A144478

/-!
# A144479: a(0)=1, a(1)=3, a(n) = 8*a(n-1) - a(n-2).

The programs for A144479, the canonical program `A144479.P3142805812909204977` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144479 has offset 0).

The definition of A144479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A144479.P3142805812909204977`, by `A144479.P3142805812909204977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144479.P3142805812909204977

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144479

/-- `8*a(n-1)-a(n-2)` -/
def P3142805812909204977.Spec : Prop :=
  ∀ n, P3142805812909204977.a n = A144479 n

theorem P3142805812909204977.correct : P3142805812909204977.Spec := by
  intro n
  simp only [A144479]

end A144479

/-! ## A144479.P162088332905061993

`A001090(n+1)-5*A001090(n)`
-/

namespace A144479.P162088332905061993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - 5 * A001090 n

end

end A144479.P162088332905061993

namespace A144479

/-- `A001090(n+1)-5*A001090(n)` -/
def P162088332905061993.Spec : Prop :=
  ∀ n, P162088332905061993.a n = A144479 n

end A144479

/-! ## A144479.P143473550615361692

`lcm(8, a(n-1))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A144479.P143473550615361692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 8 (a (n - 1)) : ℤ) - a (n - 2)

end

end A144479.P143473550615361692

namespace A144479

/-- `lcm(8, a(n-1))-a(n-2)` -/
def P143473550615361692.Spec : Prop :=
  ∀ n, P143473550615361692.a n = A144479 n

end A144479

/-! ## A144479.P3376098068476341657

`a(n-1)/(1/2)^3-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A144479.P3376098068476341657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 - a (n - 2)

end

end A144479.P3376098068476341657

namespace A144479

/-- `a(n-1)/(1/2)^3-a(n-2)` -/
def P3376098068476341657.Spec : Prop :=
  ∀ n, P3376098068476341657.a n = (A144479 n : ℚ)

end A144479

/-! ## A144479.P15531242205353206040

`A199336(comp[2*(n+1)]+1)`
-/

namespace A144479.P15531242205353206040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A144479.P15531242205353206040

namespace A144479

/-- `A199336(comp[2*(n+1)]+1)` -/
def P15531242205353206040.Spec : Prop :=
  ∀ n, P15531242205353206040.a n = A144479 n

end A144479

/-! ## A144479.P8820358755474571938

`A341929(n)+A001090(n)`
-/

namespace A144479.P8820358755474571938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341929 n + A001090 n

end

end A144479.P8820358755474571938

namespace A144479

/-- `A341929(n)+A001090(n)` -/
def P8820358755474571938.Spec : Prop :=
  ∀ n, P8820358755474571938.a n = A144479 n

end A144479

/-! ## A144479.P4027932490134073551

`A134824(n+1)+2*A105045(2*n)`
-/

namespace A144479.P4027932490134073551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 1) + 2 * A105045 (2 * n)

end

end A144479.P4027932490134073551

namespace A144479

/-- `A134824(n+1)+2*A105045(2*n)` -/
def P4027932490134073551.Spec : Prop :=
  ∀ n, P4027932490134073551.a n = A144479 n

end A144479

/-! ## A144479.P15908797004221939181

`A260196(2*n)+2*A105045(2*n)`
-/

namespace A144479.P15908797004221939181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * n) + 2 * A105045 (2 * n)

end

end A144479.P15908797004221939181

namespace A144479

/-- `A260196(2*n)+2*A105045(2*n)` -/
def P15908797004221939181.Spec : Prop :=
  ∀ n, P15908797004221939181.a n = A144479 n

end A144479

/-! ## A144479.P7368149497449609761

`A001091(n)-A001090(n)`
-/

namespace A144479.P7368149497449609761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n - A001090 n

end

end A144479.P7368149497449609761

namespace A144479

/-- `A001091(n)-A001090(n)` -/
def P7368149497449609761.Spec : Prop :=
  ∀ n, P7368149497449609761.a n = A144479 n

end A144479

/-! ## A144479.P240324140253087206

`A077246(n)-A077245(n)`
-/

namespace A144479.P240324140253087206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n - A077245 n

end

end A144479.P240324140253087206

namespace A144479

/-- `A077246(n)-A077245(n)` -/
def P240324140253087206.Spec : Prop :=
  ∀ n, P240324140253087206.a n = A144479 n

end A144479

/-! ## A144479.P11330211569578118432

`A070997(n)-A273053(n+1)`
-/

namespace A144479.P11330211569578118432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - A273053 (n + 1)

end

end A144479.P11330211569578118432

namespace A144479

/-- `A070997(n)-A273053(n+1)` -/
def P11330211569578118432.Spec : Prop :=
  ∀ n, P11330211569578118432.a n = A144479 n

end A144479

/-! ## A144479.P13965028007314727933

`A080871(2*n)-A001090(n)`
-/

namespace A144479.P13965028007314727933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n) - A001090 n

end

end A144479.P13965028007314727933

namespace A144479

/-- `A080871(2*n)-A001090(n)` -/
def P13965028007314727933.Spec : Prop :=
  ∀ n, P13965028007314727933.a n = A144479 n

end A144479

/-! ## A144479.P2469590623761967392

`A105426(n)-2*A001090(n)`
-/

namespace A144479.P2469590623761967392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105426 n - 2 * A001090 n

end

end A144479.P2469590623761967392

namespace A144479

/-- `A105426(n)-2*A001090(n)` -/
def P2469590623761967392.Spec : Prop :=
  ∀ n, P2469590623761967392.a n = A144479 n

end A144479

/-! ## A144479.P13720410345971506144

`A077248(2*n)-A077245(n)`
-/

namespace A144479.P13720410345971506144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (2 * n) - A077245 n

end

end A144479.P13720410345971506144

namespace A144479

/-- `A077248(2*n)-A077245(n)` -/
def P13720410345971506144.Spec : Prop :=
  ∀ n, P13720410345971506144.a n = A144479 n

end A144479

/-! ## A144479.P7987169367137961720

`A077246(n)-A077247(2*n)`
-/

namespace A144479.P7987169367137961720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n - A077247 (2 * n)

end

end A144479.P7987169367137961720

namespace A144479

/-- `A077246(n)-A077247(2*n)` -/
def P7987169367137961720.Spec : Prop :=
  ∀ n, P7987169367137961720.a n = A144479 n

end A144479

/-! ## A144479.P17473859686139183776

`(A341929(n)+A001091(n))/2`
-/

namespace A144479.P17473859686139183776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341929 n + A001091 n : ℚ) / 2

end

end A144479.P17473859686139183776

namespace A144479

/-- `(A341929(n)+A001091(n))/2` -/
def P17473859686139183776.Spec : Prop :=
  ∀ n, P17473859686139183776.a n = (A144479 n : ℚ)

end A144479

/-! ## A144479.P5594094963499547930

`A077248(2*n)-A077247(2*n)`
-/

namespace A144479.P5594094963499547930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (2 * n) - A077247 (2 * n)

end

end A144479.P5594094963499547930

namespace A144479

/-- `A077248(2*n)-A077247(2*n)` -/
def P5594094963499547930.Spec : Prop :=
  ∀ n, P5594094963499547930.a n = A144479 n

end A144479

/-!
# A144480: T(n,k) = binomial(n, k)*min(k + 1, n - k + 1), triangle read by rows (n >= 0, 0 <= k <= n).

The programs for A144480, the canonical program `A144480.P9166723768350089559` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144480 has offset 0).

The definition of A144480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144480.P9166723768350089559

`A003983(n+1)*A007318(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A144480

/-- `A003983(n+1)*A007318(n)` -/
def P9166723768350089559.Spec : Prop :=
  ∀ n, P9166723768350089559.a n = A144480 n

theorem P9166723768350089559.correct : P9166723768350089559.Spec := by
  intro n
  simp only [A144480]

end A144480

/-! ## A144480.P8387542946939905436

`(A004197(n)+1)*A007318(n)`
-/

namespace A144480.P8387542946939905436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004197 n + 1) * A007318 n

end

end A144480.P8387542946939905436

namespace A144480

/-- `(A004197(n)+1)*A007318(n)` -/
def P8387542946939905436.Spec : Prop :=
  ∀ n, P8387542946939905436.a n = A144480 n

end A144480

/-! ## A144480.P16321888069831488552

`A141611(n)/A051125(n+1)`
-/

namespace A144480.P16321888069831488552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A051125 (n + 1) : ℚ)

end

end A144480.P16321888069831488552

namespace A144480

/-- `A141611(n)/A051125(n+1)` -/
def P16321888069831488552.Spec : Prop :=
  ∀ n, P16321888069831488552.a n = (A144480 n : ℚ)

end A144480

/-! ## A144480.P5741100669972737146

`sqrt(A008459(n))*A003983(n+1)`
-/

namespace A144480.P5741100669972737146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A003983 (n + 1) : ℝ)

end

end A144480.P5741100669972737146

namespace A144480

/-- `sqrt(A008459(n))*A003983(n+1)` -/
def P5741100669972737146.Spec : Prop :=
  ∀ n, P5741100669972737146.a n = (A144480 n : ℝ)

end A144480

/-! ## A144480.P15680962135154172622

`sqrt(A106314(n+1))*A007318(n)`
-/

namespace A144480.P15680962135154172622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106314 (n + 1) : ℝ) * (A007318 n : ℝ)

end

end A144480.P15680962135154172622

namespace A144480

/-- `sqrt(A106314(n+1))*A007318(n)` -/
def P15680962135154172622.Spec : Prop :=
  ∀ n, P15680962135154172622.a n = (A144480 n : ℝ)

end A144480

/-! ## A144480.P8107914899253860964

`(A014473(n)+1)*A003983(n+1)`
-/

namespace A144480.P8107914899253860964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A003983 (n + 1)

end

end A144480.P8107914899253860964

namespace A144480

/-- `(A014473(n)+1)*A003983(n+1)` -/
def P8107914899253860964.Spec : Prop :=
  ∀ n, P8107914899253860964.a n = A144480 n

end A144480

/-! ## A144480.P10014168358623117656

`A007318(n)*A053616(comp[∑[n]])`
-/

namespace A144480.P10014168358623117656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A053616 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A144480.P10014168358623117656

namespace A144480

/-- `A007318(n)*A053616(comp[∑[n]])` -/
def P10014168358623117656.Spec : Prop :=
  ∀ n, P10014168358623117656.a n = A144480 n

end A144480

/-! ## A144480.P8716913551305430129

`A007318(n)*A000005(A144464(n))`
-/

namespace A144480.P8716913551305430129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000005 (A144464 n).toNat

end

end A144480.P8716913551305430129

namespace A144480

/-- `A007318(n)*A000005(A144464(n))` -/
def P8716913551305430129.Spec : Prop :=
  ∀ n, P8716913551305430129.a n = A144480 n

end A144480

/-!
# A144481: a(n) = A078371(n-1) mod 9.

The programs for A144481, the canonical program `A144481.P15125495051296054159` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144481 has offset 1).

The definition of A144481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144481.P15125495051296054159

`6-∑[n+1]%9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144481

/-- `6-∑[n+1]%9` -/
def P15125495051296054159.Spec : Prop :=
  ∀ n, P15125495051296054159.a n = A144481 (n + 1)

theorem P15125495051296054159.correct : P15125495051296054159.Spec := by
  intro n
  simp only [A144481, Nat.add_sub_cancel]

end A144481

/-!
# A144482: Semiprimes that are a product of Mersenne primes.

The programs for A144482, there is no canonical definition to state claims against.
-/

/-! ## A144482.P13666908700581550949

`∩[A056652(n+1), A335882(n+1)]`
-/

namespace A144482.P13666908700581550949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144482.P13666908700581550949

/-! ## A144482.P108879854515631886

`∩[A056652(n+1), A391248(n+1)]`
-/

namespace A144482.P108879854515631886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144482.P108879854515631886

/-! ## A144482.P7020616848876514081

`∩[A163205(n+1), A335882(n+1)]`
-/

namespace A144482.P7020616848876514081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144482.P7020616848876514081

/-! ## A144482.P2979178304847002067

`∩[A219174(n+1), A391248(n+1)]`
-/

namespace A144482.P2979178304847002067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144482.P2979178304847002067

/-! ## A144482.P823119655347692734

`∩[A282572(n+1), A391248(n+1)]`
-/

namespace A144482.P823119655347692734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144482.P823119655347692734

/-!
# A144483: A144481(4n-3).

The programs for A144483, the canonical program `A144483.P3915174990611328427` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144483 has offset 1).

The definition of A144483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144483.P3915174990611328427

`A144481(4*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144483

/-- `A144481(4*n+1)` -/
def P3915174990611328427.Spec : Prop :=
  ∀ n, P3915174990611328427.a n = A144483 (n + 1)

theorem P3915174990611328427.correct : P3915174990611328427.Spec := by
  intro n
  simp only [A144483, Nat.add_sub_cancel]

end A144483

/-! ## A144483.P16159891087040551368

`A144481(4*(n+1)-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144483.P16159891087040551368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144481 (4 * (n + 1) - 3)

end

end A144483.P16159891087040551368

namespace A144483

/-- `A144481(4*(n+1)-3)` -/
def P16159891087040551368.Spec : Prop :=
  ∀ n, P16159891087040551368.a n = A144483 (n + 1)

end A144483

/-!
# A144484: Triangle read by rows: T(n, k) = binomial(3*n+1-k, n-k) for n, k >= 0.

The programs for A144484, the canonical program `A144484.P18161828126570306983` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144484 has offset 0).

The definition of A144484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144484.P18161828126570306983

`C(A134483(A038722(n+1)), A131507(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144484

/-- `C(A134483(A038722(n+1)), A131507(n))` -/
def P18161828126570306983.Spec : Prop :=
  ∀ n, (P18161828126570306983.a n : ℤ) = A144484 n

theorem P18161828126570306983.correct : P18161828126570306983.Spec := by
  intro n
  simp only [A144484]

end A144484

/-! ## A144484.P12251357518855241893

`A092392(record[xor(1, n)+round(sqrt(n+1))²]+C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A144484.P12251357518855241893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A144484.P12251357518855241893

namespace A144484

/-- `A092392(record[xor(1, n)+round(sqrt(n+1))²]+C(comp[∑[n]]-n, 2)-(n+1))` -/
def P12251357518855241893.Spec : Prop :=
  ∀ n, P12251357518855241893.a n = A144484 n

end A144484

/-! ## A144484.P2294898837395154462

`A100100(eq[1, (floor(sqrt(8*n+1))+3)%4])`
-/

namespace A144484.P2294898837395154462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (8 * n + 1) + 3) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A144484.P2294898837395154462

namespace A144484

/-- `A100100(eq[1, (floor(sqrt(8*n+1))+3)%4])` -/
def P2294898837395154462.Spec : Prop :=
  ∀ n, P2294898837395154462.a n = A144484 n

end A144484

/-! ## A144484.P3956817804299188166

`A100100(A292565(n+1))`
-/

namespace A144484.P3956817804299188166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A292565 (n + 1)).toNat

end

end A144484.P3956817804299188166

namespace A144484

/-- `A100100(A292565(n+1))` -/
def P3956817804299188166.Spec : Prop :=
  ∀ n, P3956817804299188166.a n = A144484 n

end A144484

/-! ## A144484.P2146297043472211264

`A100400(n+1)/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A144484.P2146297043472211264
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100400 (n + 1) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A144484.P2146297043472211264

namespace A144484

/-- `A100400(n+1)/(1-C(∑[char[∑[n]]], 2)+n)` -/
def P2146297043472211264.Spec : Prop :=
  ∀ n, P2146297043472211264.a n = (A144484 n : ℚ)

end A144484

/-! ## A144484.P746130119241252866

`A100400(n+1)/A002260(n+1)`
-/

namespace A144484.P746130119241252866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100400 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A144484.P746130119241252866

namespace A144484

/-- `A100400(n+1)/A002260(n+1)` -/
def P746130119241252866.Spec : Prop :=
  ∀ n, P746130119241252866.a n = (A144484 n : ℚ)

end A144484

/-!
# A144485: a(n) = (3n + 2)*binomial(3n + 1,n).

The programs for A144485, the canonical program `A144485.P11574501166754988567` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144485 has offset 0).

The definition of A144485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144485.P11574501166754988567

`2*A090763(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144485

/-- `2*A090763(n)` -/
def P11574501166754988567.Spec : Prop :=
  ∀ n, P11574501166754988567.a n = A144485 n

theorem P11574501166754988567.correct : P11574501166754988567.Spec := by
  intro n
  simp only [A144485]

end A144485

/-! ## A144485.P4039293858552931866

`(3*n+2)*A045721(n)`
-/

namespace A144485.P4039293858552931866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A045721 n

end

end A144485.P4039293858552931866

namespace A144485

/-- `(3*n+2)*A045721(n)` -/
def P4039293858552931866.Spec : Prop :=
  ∀ n, P4039293858552931866.a n = A144485 n

end A144485

/-! ## A144485.P7202934244261532430

`2*(n+1)*A005809(n+1)/3`
-/

namespace A144485.P7202934244261532430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 1 : ℤ) * A005809 (n + 1)) : ℚ) / 3

end

end A144485.P7202934244261532430

namespace A144485

/-- `2*(n+1)*A005809(n+1)/3` -/
def P7202934244261532430.Spec : Prop :=
  ∀ n, P7202934244261532430.a n = (A144485 n : ℚ)

end A144485

/-! ## A144485.P11716248028109374979

`3*(3*n+1)*(3*n+2)*a(n-1)/(2*n*(2*n+1))` with `a(0)=2`
-/

namespace A144485.P11716248028109374979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  3 * ((3 * n + 1 : ℚ) * ((3 * n + 2 : ℚ) * a (n - 1))) / (2 * (n * (2 * n + 1)) : ℚ)

end

end A144485.P11716248028109374979

namespace A144485

/-- `3*(3*n+1)*(3*n+2)*a(n-1)/(2*n*(2*n+1))` -/
def P11716248028109374979.Spec : Prop :=
  ∀ n, P11716248028109374979.a n = (A144485 n : ℚ)

end A144485

/-! ## A144485.P11778079588673580839

`(n+1)*A165817(n+1)`
-/

namespace A144485.P11778079588673580839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165817 (n + 1)

end

end A144485.P11778079588673580839

namespace A144485

/-- `(n+1)*A165817(n+1)` -/
def P11778079588673580839.Spec : Prop :=
  ∀ n, P11778079588673580839.a n = A144485 n

end A144485

/-! ## A144485.P1058140025863300557

`(n+1)*A081204(Δ[n²])`
-/

namespace A144485.P1058140025863300557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081204 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144485.P1058140025863300557

namespace A144485

/-- `(n+1)*A081204(Δ[n²])` -/
def P1058140025863300557.Spec : Prop :=
  ∀ n, P1058140025863300557.a n = A144485 n

end A144485

/-! ## A144485.P16959808053211894396

`2*(n+1)*A025174(n+1)`
-/

namespace A144485.P16959808053211894396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A025174 (n + 1))

end

end A144485.P16959808053211894396

namespace A144485

/-- `2*(n+1)*A025174(n+1)` -/
def P16959808053211894396.Spec : Prop :=
  ∀ n, P16959808053211894396.a n = A144485 n

end A144485

/-! ## A144485.P16863364260398616594

`2*(n+1)*A099578(comp[2*n])`
-/

namespace A144485.P16863364260398616594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A099578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A144485.P16863364260398616594

namespace A144485

/-- `2*(n+1)*A099578(comp[2*n])` -/
def P16863364260398616594.Spec : Prop :=
  ∀ n, P16863364260398616594.a n = A144485 n

end A144485

/-! ## A144485.P10546176831418556519

`(3*n+2)*A065942(2*n+1)`
-/

namespace A144485.P10546176831418556519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A065942 (2 * n + 1)

end

end A144485.P10546176831418556519

namespace A144485

/-- `(3*n+2)*A065942(2*n+1)` -/
def P10546176831418556519.Spec : Prop :=
  ∀ n, P10546176831418556519.a n = A144485 n

end A144485

/-! ## A144485.P7741589211661991558

`(3*n+2)*A051033(3*n+1)`
-/

namespace A144485.P7741589211661991558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A051033 (3 * n + 1)

end

end A144485.P7741589211661991558

namespace A144485

/-- `(3*n+2)*A051033(3*n+1)` -/
def P7741589211661991558.Spec : Prop :=
  ∀ n, P7741589211661991558.a n = A144485 n

end A144485

/-! ## A144485.P3425891046030329224

`(n+1)*(A291662(n+1)+1+n)`
-/

namespace A144485.P3425891046030329224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A291662 (n + 1) + 1 + (n : ℤ))

end

end A144485.P3425891046030329224

namespace A144485

/-- `(n+1)*(A291662(n+1)+1+n)` -/
def P3425891046030329224.Spec : Prop :=
  ∀ n, P3425891046030329224.a n = A144485 n

end A144485

/-! ## A144485.P1912784276732636234

`A001504(n)*A001764(n)`
-/

namespace A144485.P1912784276732636234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n * A001764 n

end

end A144485.P1912784276732636234

namespace A144485

/-- `A001504(n)*A001764(n)` -/
def P1912784276732636234.Spec : Prop :=
  ∀ n, P1912784276732636234.a n = A144485 n

end A144485

/-! ## A144485.P17421551371074627989

`2*A001764(n)*Δ[A004188(n)]`
-/

namespace A144485.P17421551371074627989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001764 n * (f1 (n + 1) - f1 n)

end

end A144485.P17421551371074627989

namespace A144485

/-- `2*A001764(n)*Δ[A004188(n)]` -/
def P17421551371074627989.Spec : Prop :=
  ∀ n, P17421551371074627989.a n = A144485 n

end A144485

/-! ## A144485.P8803740431442495243

`A005843(n+1)*A025174(n+1)`
-/

namespace A144485.P8803740431442495243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A025174 (n + 1)

end

end A144485.P8803740431442495243

namespace A144485

/-- `A005843(n+1)*A025174(n+1)` -/
def P8803740431442495243.Spec : Prop :=
  ∀ n, P8803740431442495243.a n = A144485 n

end A144485

/-! ## A144485.P12935446395790878628

`2*A060544(n+1)*A001764(n)`
-/

namespace A144485.P12935446395790878628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060544 (n + 1) * A001764 n

end

end A144485.P12935446395790878628

namespace A144485

/-- `2*A060544(n+1)*A001764(n)` -/
def P12935446395790878628.Spec : Prop :=
  ∀ n, P12935446395790878628.a n = A144485 n

end A144485

/-! ## A144485.P8850786257523851017

`A001764(n)*A002378(A016777(n))`
-/

namespace A144485.P8850786257523851017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A002378 (A016777 n).toNat

end

end A144485.P8850786257523851017

namespace A144485

/-- `A001764(n)*A002378(A016777(n))` -/
def P8850786257523851017.Spec : Prop :=
  ∀ n, P8850786257523851017.a n = A144485 n

end A144485

/-! ## A144485.P1036197170830261300

`A001764(n)*A008133(A017221(n))`
-/

namespace A144485.P1036197170830261300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A008133 (A017221 n).toNat

end

end A144485.P1036197170830261300

namespace A144485

/-- `A001764(n)*A008133(A017221(n))` -/
def P1036197170830261300.Spec : Prop :=
  ∀ n, P1036197170830261300.a n = A144485 n

end A144485

/-! ## A144485.P18047460905038892651

`record[A028242(n)*A165817(A028242(n))]`
-/

namespace A144485.P18047460905038892651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A165817 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144485.P18047460905038892651

namespace A144485

/-- `record[A028242(n)*A165817(A028242(n))]` -/
def P18047460905038892651.Spec : Prop :=
  ∀ n, P18047460905038892651.a n = A144485 n

end A144485

/-! ## A144485.P12205638726432162797

`record[A133310(n)*A165817(A133310(n))]`
-/

namespace A144485.P12205638726432162797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n * A165817 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144485.P12205638726432162797

namespace A144485

/-- `record[A133310(n)*A165817(A133310(n))]` -/
def P12205638726432162797.Spec : Prop :=
  ∀ n, P12205638726432162797.a n = A144485 n

end A144485

/-! ## A144485.P3744160949930048019

`2*A001764(n)*A161680(A016789(n))`
-/

namespace A144485.P3744160949930048019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001764 n * A161680 (A016789 n).toNat)

end

end A144485.P3744160949930048019

namespace A144485

/-- `2*A001764(n)*A161680(A016789(n))` -/
def P3744160949930048019.Spec : Prop :=
  ∀ n, P3744160949930048019.a n = A144485 n

end A144485

/-!
# A144486: Triangular numbers n*(n+1)/2 with n and n+1 composite, where number of prime factors in n = number of prime factors in n+1. (Prime factors are counted with multiplicity.)

The programs for A144486, the canonical program `A144486.P13073146412438038976` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144486 has offset 1).

The definition of A144486 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144486.P13073146412438038976

`A000217(A045920(n+2))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A144486

/-- `A000217(A045920(n+2))` -/
def P13073146412438038976.Spec : Prop :=
  ∀ n, P13073146412438038976.a n = A144486 (n + 1)

theorem P13073146412438038976.correct : P13073146412438038976.Spec := by
  intro n
  simp only [A144486, Nat.add_sub_cancel]

end A144486

/-! ## A144486.P443306574090843495

`C(A278291(n+2), 2)`
-/

namespace A144486.P443306574090843495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A278291 (n + 2)).toNat 2

end

end A144486.P443306574090843495

namespace A144486

/-- `C(A278291(n+2), 2)` -/
def P443306574090843495.Spec : Prop :=
  ∀ n, (P443306574090843495.a n : ℤ) = A144486 (n + 1)

end A144486

/-! ## A144486.P13537300751994178060

`C(round(A115167(n+2)/2), 2)`
-/

namespace A144486.P13537300751994178060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A115167 (n + 2) : ℚ) / 2)).toNat 2

end

end A144486.P13537300751994178060

namespace A144486

/-- `C(round(A115167(n+2)/2), 2)` -/
def P13537300751994178060.Spec : Prop :=
  ∀ n, (P13537300751994178060.a n : ℤ) = A144486 (n + 1)

end A144486

/-! ## A144486.P17151943100291240029

`C(Δ[∑[A115167(n+1)+1]/2], 2)`
-/

namespace A144486.P17151943100291240029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat 2

end

end A144486.P17151943100291240029

namespace A144486

/-- `C(Δ[∑[A115167(n+1)+1]/2], 2)` -/
def P17151943100291240029.Spec : Prop :=
  ∀ n, (P17151943100291240029.a n : ℤ) = A144486 (n + 1)

end A144486

/-! ## A144486.P1582067876959071199

`A161680(A278291(n+2))`
-/

namespace A144486.P1582067876959071199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A278291 (n + 2)).toNat

end

end A144486.P1582067876959071199

namespace A144486

/-- `A161680(A278291(n+2))` -/
def P1582067876959071199.Spec : Prop :=
  ∀ n, P1582067876959071199.a n = A144486 (n + 1)

end A144486

/-! ## A144486.P15673733442373917611

`A001971(A115167(n+2))`
-/

namespace A144486.P15673733442373917611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A115167 (n + 2)).toNat

end

end A144486.P15673733442373917611

namespace A144486

/-- `A001971(A115167(n+2))` -/
def P15673733442373917611.Spec : Prop :=
  ∀ n, P15673733442373917611.a n = A144486 (n + 1)

end A144486

/-!
# A144487: Primes of the form 2^k + 15.

The programs for A144487, there is no canonical definition to state claims against.
-/

/-! ## A144487.P7840232094575784012

`2^A057197(n+1)+15`
-/

namespace A144487.P7840232094575784012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057197 (n + 1) : ℤ) + 15

end

end A144487.P7840232094575784012

/-! ## A144487.P12154515830189557503

`A250738(A057197(n+1))/2`
-/

namespace A144487.P12154515830189557503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250738 (A057197 (n + 1)).toNat : ℚ) / 2

end

end A144487.P12154515830189557503

/-! ## A144487.P11583227966317456770

`p?[2^n+15]`
-/

namespace A144487.P11583227966317456770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144487.P11583227966317456770

/-! ## A144487.P4881253868431600187

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=1, a(1)=15, a(2)=1`
-/

namespace A144487.P4881253868431600187
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 15, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A144487.P4881253868431600187

/-! ## A144487.P5388454462451639417

`record[A006530(∑[2^n]+16)]`
-/

namespace A144487.P5388454462451639417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144487.P5388454462451639417

/-!
# A144488: Ludwig van Beethoven, Bagatelle No. 25, "Für Elise".

The programs for A144488, there is no canonical definition to state claims against.
-/

/-! ## A144488.P18350782169919537000

`A123456(n+1)+20`
-/

namespace A144488.P18350782169919537000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123456 (n + 1) + 20

end

end A144488.P18350782169919537000

/-!
# A144489: Partial sums of A087624.

The programs for A144489, the canonical program `A144489.P15765927739890328625` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144489 has offset 1).

The definition of A144489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144489.P15765927739890328625

`∑[∑{p}[n+1, C(#%n, #)]]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144489

/-- `∑[∑{p}[n+1, C(#%n, #)]]` -/
def P15765927739890328625.Spec : Prop :=
  ∀ n, (P15765927739890328625.a n : ℤ) = A144489 (n + 1)

theorem P15765927739890328625.correct : P15765927739890328625.Spec := by
  intro n
  simp only [A144489, Nat.add_sub_cancel]

end A144489

/-! ## A144489.P6414240998695104824

`∑[∑{p}[n+1, C(n, C(#, n))]]`
-/

namespace A144489.P6414240998695104824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose n (Nat.choose p n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P6414240998695104824

namespace A144489

/-- `∑[∑{p}[n+1, C(n, C(#, n))]]` -/
def P6414240998695104824.Spec : Prop :=
  ∀ n, (P6414240998695104824.a n : ℤ) = A144489 (n + 1)

end A144489

/-! ## A144489.P1292505640073755136

`∑[∑{p}[n+1, 1-val(#, n+1)]]`
-/

namespace A144489.P1292505640073755136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (1 - (SequenceMachineLib.valuation p (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P1292505640073755136

namespace A144489

/-- `∑[∑{p}[n+1, 1-val(#, n+1)]]` -/
def P1292505640073755136.Spec : Prop :=
  ∀ n, P1292505640073755136.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P11905206356496691205

`∑[A087624(n+1)]`
-/

namespace A144489.P11905206356496691205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P11905206356496691205

namespace A144489

/-- `∑[A087624(n+1)]` -/
def P11905206356496691205.Spec : Prop :=
  ∀ n, P11905206356496691205.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P17701071239894223819

`∑[A001221(A005451(n+1))]`
-/

namespace A144489.P17701071239894223819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P17701071239894223819

namespace A144489

/-- `∑[A001221(A005451(n+1))]` -/
def P17701071239894223819.Spec : Prop :=
  ∀ n, P17701071239894223819.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P954863530663917781

`∑[A001221(A005730(n+1))]`
-/

namespace A144489.P954863530663917781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P954863530663917781

namespace A144489

/-- `∑[A001221(A005730(n+1))]` -/
def P954863530663917781.Spec : Prop :=
  ∀ n, P954863530663917781.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P1383804666820077130

`∑[A001221(A048671(n+1))]`
-/

namespace A144489.P1383804666820077130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P1383804666820077130

namespace A144489

/-- `∑[A001221(A048671(n+1))]` -/
def P1383804666820077130.Spec : Prop :=
  ∀ n, P1383804666820077130.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P8913393648917142529

`∑[A001221(A144907(n+1))]`
-/

namespace A144489.P8913393648917142529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144907 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P8913393648917142529

namespace A144489

/-- `∑[A001221(A144907(n+1))]` -/
def P8913393648917142529.Spec : Prop :=
  ∀ n, P8913393648917142529.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P14179524861243331241

`A355538(n+1)+A065855(n+1)`
-/

namespace A144489.P14179524861243331241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355538 (n + 1) + A065855 (n + 1)

end

end A144489.P14179524861243331241

namespace A144489

/-- `A355538(n+1)+A065855(n+1)` -/
def P14179524861243331241.Spec : Prop :=
  ∀ n, P14179524861243331241.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P52123686094002523

`A013939(n+1)-A000720(n+1)`
-/

namespace A144489.P52123686094002523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) - A000720 (n + 1)

end

end A144489.P52123686094002523

namespace A144489

/-- `A013939(n+1)-A000720(n+1)` -/
def P52123686094002523.Spec : Prop :=
  ∀ n, P52123686094002523.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P10227709671591398609

`A082186(n+1)-A036234(n+1)`
-/

namespace A144489.P10227709671591398609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 1) - A036234 (n + 1)

end

end A144489.P10227709671591398609

namespace A144489

/-- `A082186(n+1)-A036234(n+1)` -/
def P10227709671591398609.Spec : Prop :=
  ∀ n, P10227709671591398609.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P11368098717028160840

`A055636(n+1)-A069812(n+1)`
-/

namespace A144489.P11368098717028160840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055636 (n + 1) - A069812 (n + 1)

end

end A144489.P11368098717028160840

namespace A144489

/-- `A055636(n+1)-A069812(n+1)` -/
def P11368098717028160840.Spec : Prop :=
  ∀ n, P11368098717028160840.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P17769547683771038050

`∑[A001221(n+1)]-A000720(n+1)`
-/

namespace A144489.P17769547683771038050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A144489.P17769547683771038050

namespace A144489

/-- `∑[A001221(n+1)]-A000720(n+1)` -/
def P17769547683771038050.Spec : Prop :=
  ∀ n, P17769547683771038050.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P3405985340266203470

`∑[A001221(n+1)-A010051(n+1)]`
-/

namespace A144489.P3405985340266203470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P3405985340266203470

namespace A144489

/-- `∑[A001221(n+1)-A010051(n+1)]` -/
def P3405985340266203470.Spec : Prop :=
  ∀ n, P3405985340266203470.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P12989804593345571414

`∑[A001221((n+1)/A014963(n+1))]`
-/

namespace A144489.P12989804593345571414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P12989804593345571414

namespace A144489

/-- `∑[A001221((n+1)/A014963(n+1))]` -/
def P12989804593345571414.Spec : Prop :=
  ∀ n, P12989804593345571414.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P7062073903351640755

`∑[A001221(n%(2-A000203(n+1))+1)]`
-/

namespace A144489.P7062073903351640755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (n : ℤ) (2 - A000203 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P7062073903351640755

namespace A144489

/-- `∑[A001221(n%(2-A000203(n+1))+1)]` -/
def P7062073903351640755.Spec : Prop :=
  ∀ n, P7062073903351640755.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P6541982690411850200

`∑[∑{p}[n+1, A001222(#)]-A010051(n+1)]`
-/

namespace A144489.P6541982690411850200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A001222 p - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P6541982690411850200

namespace A144489

/-- `∑[∑{p}[n+1, A001222(#)]-A010051(n+1)]` -/
def P6541982690411850200.Spec : Prop :=
  ∀ n, P6541982690411850200.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P8487173094510131656

`∑[A001222(∏{p}[n+1, #])-A010051(n+1)]`
-/

namespace A144489.P8487173094510131656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P8487173094510131656

namespace A144489

/-- `∑[A001222(∏{p}[n+1, #])-A010051(n+1)]` -/
def P8487173094510131656.Spec : Prop :=
  ∀ n, P8487173094510131656.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P16248180432466245566

`A013939(n+1)-(A048865(n+1)+A001221(n+1))`
-/

namespace A144489.P16248180432466245566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) - (A048865 (n + 1) + A001221 (n + 1))

end

end A144489.P16248180432466245566

namespace A144489

/-- `A013939(n+1)-(A048865(n+1)+A001221(n+1))` -/
def P16248180432466245566.Spec : Prop :=
  ∀ n, P16248180432466245566.a n = A144489 (n + 1)

end A144489

/-! ## A144489.P4154643882350700558

`A092494(n+1)-(A048865(n+1)+A000720(n+1))`
-/

namespace A144489.P4154643882350700558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) - (A048865 (n + 1) + A000720 (n + 1))

end

end A144489.P4154643882350700558

namespace A144489

/-- `A092494(n+1)-(A048865(n+1)+A000720(n+1))` -/
def P4154643882350700558.Spec : Prop :=
  ∀ n, P4154643882350700558.a n = A144489 (n + 1)

end A144489

/-!
# A144493: Triangle read by rows. Let k=-3, m=3. Row n is a vector v(n) defined as follows: v(n)=k*{0,v(n-2),0}+m*{-(m-1)/m,v(n-1)}+m*{v(n-1),-(m-1)/m}.

The programs for A144493, there is no canonical definition to state claims against.
-/

/-! ## A144493.P11303987669369393647

`A078644(A342891(n))`
-/

namespace A144493.P11303987669369393647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (A342891 n).toNat

end

end A144493.P11303987669369393647

/-! ## A144493.P16405323566241315751

`A169697(A328300(n))`
-/

namespace A144493.P16405323566241315751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169697 (A328300 n).toNat

end

end A144493.P16405323566241315751

/-! ## A144493.P9556390568635579360

`A092421(A202549(n+1))`
-/

namespace A144493.P9556390568635579360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092421 (A202549 (n + 1)).toNat

end

end A144493.P9556390568635579360

/-! ## A144493.P7500680058709549753

`A092421(A268056(n+1))`
-/

namespace A144493.P7500680058709549753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092421 (A268056 (n + 1)).toNat

end

end A144493.P7500680058709549753

/-! ## A144493.P16910221796281313894

`A092421(A268079(n+1))`
-/

namespace A144493.P16910221796281313894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092421 (A268079 (n + 1)).toNat

end

end A144493.P16910221796281313894

/-!
# A144494: a(n) = 0 if n is prime, otherwise A001222(n).

The programs for A144494, the canonical program `A144494.P11108585045372272003` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144494 has offset 1).

The definition of A144494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144494.P3613077611647132750

`∑{e}[n+1, #]-char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A144494.P3613077611647132750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144494.P3613077611647132750

namespace A144494

/-- `∑{e}[n+1, #]-char[eq[1, ∑{e}[n+1, #]]]` -/
def P3613077611647132750.Spec : Prop :=
  ∀ n, P3613077611647132750.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P11108585045372272003

`∑{e}[A005451(n+1), #]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144494

/-- `∑{e}[A005451(n+1), #]` -/
def P11108585045372272003.Spec : Prop :=
  ∀ n, (P11108585045372272003.a n : ℤ) = A144494 (n + 1)

theorem P11108585045372272003.correct : P11108585045372272003.Spec := by
  intro n
  simp only [A144494, Nat.add_sub_cancel]

end A144494

/-! ## A144494.P4510962218997769904

`∑{e}[A191558(n+1), #]`
-/

namespace A144494.P4510962218997769904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A144494.P4510962218997769904

namespace A144494

/-- `∑{e}[A191558(n+1), #]` -/
def P4510962218997769904.Spec : Prop :=
  ∀ n, (P4510962218997769904.a n : ℤ) = A144494 (n + 1)

end A144494

/-! ## A144494.P12945051667869366740

`∑{e}[A322820(n+1), #]`
-/

namespace A144494.P12945051667869366740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A144494.P12945051667869366740

namespace A144494

/-- `∑{e}[A322820(n+1), #]` -/
def P12945051667869366740.Spec : Prop :=
  ∀ n, (P12945051667869366740.a n : ℤ) = A144494 (n + 1)

end A144494

/-! ## A144494.P17254545977664928037

`∑{e}[n+1, #-A010051(n+1)]`
-/

namespace A144494.P17254545977664928037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - A010051 (n + 1))

end

end A144494.P17254545977664928037

namespace A144494

/-- `∑{e}[n+1, #-A010051(n+1)]` -/
def P17254545977664928037.Spec : Prop :=
  ∀ n, P17254545977664928037.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P9629611945808313184

`∑{e}[n+1, #]%A000032(∑{e}[n+1, #])`
-/

namespace A144494.P9629611945808313184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A000032 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A144494.P9629611945808313184

namespace A144494

/-- `∑{e}[n+1, #]%A000032(∑{e}[n+1, #])` -/
def P9629611945808313184.Spec : Prop :=
  ∀ n, P9629611945808313184.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P5315975183471370326

`A001222(A005451(n+1))`
-/

namespace A144494.P5315975183471370326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005451 (n + 1)).toNat

end

end A144494.P5315975183471370326

namespace A144494

/-- `A001222(A005451(n+1))` -/
def P5315975183471370326.Spec : Prop :=
  ∀ n, P5315975183471370326.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P6839759209914871809

`A080331(A073093(n+1))`
-/

namespace A144494.P6839759209914871809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080331 (A073093 (n + 1)).toNat

end

end A144494.P6839759209914871809

namespace A144494

/-- `A080331(A073093(n+1))` -/
def P6839759209914871809.Spec : Prop :=
  ∀ n, P6839759209914871809.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P17849647039455619551

`A132349(A068794(n+1))`
-/

namespace A144494.P17849647039455619551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132349 (A068794 (n + 1)).toNat

end

end A144494.P17849647039455619551

namespace A144494

/-- `A132349(A068794(n+1))` -/
def P17849647039455619551.Spec : Prop :=
  ∀ n, P17849647039455619551.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P18285860781604298282

`A001222(A322820(n+1))`
-/

namespace A144494.P18285860781604298282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322820 (n + 1)).toNat

end

end A144494.P18285860781604298282

namespace A144494

/-- `A001222(A322820(n+1))` -/
def P18285860781604298282.Spec : Prop :=
  ∀ n, P18285860781604298282.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P16118220691499127000

`A325223(A105560(n+1)²)`
-/

namespace A144494.P16118220691499127000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325223 (A105560 (n + 1) ^ 2).toNat

end

end A144494.P16118220691499127000

namespace A144494

/-- `A325223(A105560(n+1)²)` -/
def P16118220691499127000.Spec : Prop :=
  ∀ n, P16118220691499127000.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P10398586159339595454

`A267185(2*A001222(n+1))`
-/

namespace A144494.P10398586159339595454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267185 (2 * A001222 (n + 1)).toNat

end

end A144494.P10398586159339595454

namespace A144494

/-- `A267185(2*A001222(n+1))` -/
def P10398586159339595454.Spec : Prop :=
  ∀ n, P10398586159339595454.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P1465764120040352723

`A068527(2*C(A001222(n+1), 2))`
-/

namespace A144494.P1465764120040352723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (2 * Nat.choose (A001222 (n + 1)).toNat 2)

end

end A144494.P1465764120040352723

namespace A144494

/-- `A068527(2*C(A001222(n+1), 2))` -/
def P1465764120040352723.Spec : Prop :=
  ∀ n, P1465764120040352723.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P5000446971966111451

`A087624(n+1)+A046660(n+1)`
-/

namespace A144494.P5000446971966111451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1) + A046660 (n + 1)

end

end A144494.P5000446971966111451

namespace A144494

/-- `A087624(n+1)+A046660(n+1)` -/
def P5000446971966111451.Spec : Prop :=
  ∀ n, P5000446971966111451.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P16260583178194301435

`A252736(n+1)+A066247(n+1)`
-/

namespace A144494.P16260583178194301435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1) + A066247 (n + 1)

end

end A144494.P16260583178194301435

namespace A144494

/-- `A252736(n+1)+A066247(n+1)` -/
def P16260583178194301435.Spec : Prop :=
  ∀ n, P16260583178194301435.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P7377564294378843316

`A001222(n+1)-A010051(n+1)`
-/

namespace A144494.P7377564294378843316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A010051 (n + 1)

end

end A144494.P7377564294378843316

namespace A144494

/-- `A001222(n+1)-A010051(n+1)` -/
def P7377564294378843316.Spec : Prop :=
  ∀ n, P7377564294378843316.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P4248408735619794410

`A064800(n+1)-A014683(n+1)`
-/

namespace A144494.P4248408735619794410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A014683 (n + 1)

end

end A144494.P4248408735619794410

namespace A144494

/-- `A064800(n+1)-A014683(n+1)` -/
def P4248408735619794410.Spec : Prop :=
  ∀ n, P4248408735619794410.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P6438800301599915165

`A014684(n+1)-A069345(n+1)`
-/

namespace A144494.P6438800301599915165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A069345 (n + 1)

end

end A144494.P6438800301599915165

namespace A144494

/-- `A014684(n+1)-A069345(n+1)` -/
def P6438800301599915165.Spec : Prop :=
  ∀ n, P6438800301599915165.a n = A144494 (n + 1)

end A144494

/-! ## A144494.P17542993681784777786

`A086436(n+1)-A080339(n+1)`
-/

namespace A144494.P17542993681784777786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) - A080339 (n + 1)

end

end A144494.P17542993681784777786

namespace A144494

/-- `A086436(n+1)-A080339(n+1)` -/
def P17542993681784777786.Spec : Prop :=
  ∀ n, P17542993681784777786.a n = A144494 (n + 1)

end A144494

/-!
# A144495: Row 2 of array in A144502.

The programs for A144495, the canonical program `A144495.P1709474972171092925` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144495 has offset 0).

The definition of A144495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144495.P1709474972171092925

`1/2*(3+n+(1+3*n+n²)*A000522(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144495

/-- `1/2*(3+n+(1+3*n+n²)*A000522(n))` -/
def P1709474972171092925.Spec : Prop :=
  ∀ n, P1709474972171092925.a n = (A144495 n : ℚ)

end A144495

/-! ## A144495.P14056940605197606177

`1/2*(A001339(n)+A001339(n+1))`
-/

namespace A144495.P14056940605197606177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001339 n + A001339 (n + 1) : ℚ)

end

end A144495.P14056940605197606177

namespace A144495

/-- `1/2*(A001339(n)+A001339(n+1))` -/
def P14056940605197606177.Spec : Prop :=
  ∀ n, P14056940605197606177.a n = (A144495 n : ℚ)

end A144495

/-! ## A144495.P3682650251349080782

`1/2*(A000522(n+2)-A000522(n))`
-/

namespace A144495.P3682650251349080782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000522 (n + 2) - A000522 n : ℚ)

end

end A144495.P3682650251349080782

namespace A144495

/-- `1/2*(A000522(n+2)-A000522(n))` -/
def P3682650251349080782.Spec : Prop :=
  ∀ n, P3682650251349080782.a n = (A144495 n : ℚ)

end A144495

/-! ## A144495.P16447437244306085612

`(n*(n²+3*n+1)*a(n-1)-(n+2))/(n²+n-1)` with `a(0)=2`
-/

namespace A144495.P16447437244306085612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((n : ℚ) * ((n ^ 2 + 3 * n + 1 : ℚ) * a (n - 1)) - (n + 2 : ℚ)) / ((n ^ 2 : ℤ) + ((n : ℤ) - 1) : ℚ)

end

end A144495.P16447437244306085612

namespace A144495

/-- `(n*(n²+3*n+1)*a(n-1)-(n+2))/(n²+n-1)` -/
def P16447437244306085612.Spec : Prop :=
  ∀ n, P16447437244306085612.a n = (A144495 n : ℚ)

end A144495

/-! ## A144495.P13992964278088978032

`((3*n+4)*a(n-1)-(n+3)*(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3))/2` with `a(0)=2, a(1)=7, a(2)=30`
-/

namespace A144495.P13992964278088978032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 7, 30] fun n a =>
  ((3 * n + 4 : ℚ) * a (n - 1) - (n + 3 : ℚ) * (((n : ℤ) - 1 : ℚ) * a (n - 2)) + ((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * a (n - 3))) / 2

end

end A144495.P13992964278088978032

namespace A144495

/-- `((3*n+4)*a(n-1)-(n+3)*(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3))/2` -/
def P13992964278088978032.Spec : Prop :=
  ∀ n, P13992964278088978032.a n = (A144495 n : ℚ)

end A144495

/-! ## A144495.P6465275049740701466

`A259104(n)/2`
-/

namespace A144495.P6465275049740701466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259104 n : ℚ) / 2

end

end A144495.P6465275049740701466

namespace A144495

/-- `A259104(n)/2` -/
def P6465275049740701466.Spec : Prop :=
  ∀ n, P6465275049740701466.a n = (A144495 n : ℚ)

end A144495

/-! ## A144495.P9687217056768856083

`Δ[abs(Δ[A009132(n)])]+1`
-/

namespace A144495.P9687217056768856083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A144495.P9687217056768856083

namespace A144495

/-- `Δ[abs(Δ[A009132(n)])]+1` -/
def P9687217056768856083.Spec : Prop :=
  ∀ n, P9687217056768856083.a n = A144495 n

end A144495

/-! ## A144495.P2247350644291608115

`Δ[abs(Δ[A009578(n)])]-1`
-/

namespace A144495.P2247350644291608115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A144495.P2247350644291608115

namespace A144495

/-- `Δ[abs(Δ[A009578(n)])]-1` -/
def P2247350644291608115.Spec : Prop :=
  ∀ n, P2247350644291608115.a n = A144495 n

end A144495

/-! ## A144495.P14190134134905601306

`A082030(n)+floor(Δ[e*n!])+1`
-/

namespace A144495.P14190134134905601306
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082030 n + (⌊f1 (n + 1) - f1 n⌋ + 1)

end

end A144495.P14190134134905601306

namespace A144495

/-- `A082030(n)+floor(Δ[e*n!])+1` -/
def P14190134134905601306.Spec : Prop :=
  ∀ n, P14190134134905601306.a n = A144495 n

end A144495

/-! ## A144495.P11235810231233740275

`A143409(∑[n+1])+n*a(n-1)` with `a(0)=2`
-/

namespace A144495.P11235810231233740275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A143409 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A144495.P11235810231233740275

namespace A144495

/-- `A143409(∑[n+1])+n*a(n-1)` -/
def P11235810231233740275.Spec : Prop :=
  ∀ n, P11235810231233740275.a n = A144495 n

end A144495

/-!
# A144496: Row 3 of array in A144502.

The programs for A144496, there is no canonical definition to state claims against.
-/

/-! ## A144496.P17371234166122353740

`(A144495(n+2)-A144495(n))/4`
-/

namespace A144496.P17371234166122353740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144495 (n + 2) - A144495 n : ℚ) / 4

end

end A144496.P17371234166122353740

/-! ## A144496.P10161787518319468304

`Δ[A144497(n)]%A144497(n)`
-/

namespace A144496.P10161787518319468304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A144497 n)

end

end A144496.P10161787518319468304

/-! ## A144496.P6385735305269556144

`A144497(n+1)%A144497(n)`
-/

namespace A144496.P6385735305269556144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144497 (n + 1)) (A144497 n)

end

end A144496.P6385735305269556144

/-! ## A144496.P1221461227009947404

`A144502(∑[n+3]+n+3)`
-/

namespace A144496.P1221461227009947404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A144496.P1221461227009947404

/-!
# A144497: Row 4 of array in A144502.

The programs for A144497, there is no canonical definition to state claims against.
-/

/-! ## A144497.P7830543234292575522

`A144502(A056115(n)+10)`
-/

namespace A144497.P7830543234292575522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (A056115 n + 10).toNat

end

end A144497.P7830543234292575522

/-! ## A144497.P5416771423873699108

`A144502(eq[4, A025581(n)])`
-/

namespace A144497.P5416771423873699108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144497.P5416771423873699108

/-! ## A144497.P7207665046894270880

`A144502(eq[9, A099375(n)])`
-/

namespace A144497.P7207665046894270880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144497.P7207665046894270880

/-! ## A144497.P18260516853002952430

`A144502(eq[16, A130321(n)])`
-/

namespace A144497.P18260516853002952430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144497.P18260516853002952430

/-! ## A144497.P6062972772927094414

`A144502(A246172(n+1)+9)`
-/

namespace A144497.P6062972772927094414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (A246172 (n + 1) + 9).toNat

end

end A144497.P6062972772927094414

/-! ## A144497.P7430396539582202472

`A144502(eq[5, A004736(n+1)])`
-/

namespace A144497.P7430396539582202472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144497.P7430396539582202472

/-!
# A144498: Column 2 of array in A144502.

The programs for A144498, the canonical program `A144498.P11939167362090134045` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144498 has offset 0).

The definition of A144498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144498.P11939167362090134045

`A001515(n+1)-A001515(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144498

/-- `A001515(n+1)-A001515(n)` -/
def P11939167362090134045.Spec : Prop :=
  ∀ n, P11939167362090134045.a n = A144498 n

theorem P11939167362090134045.correct : P11939167362090134045.Spec := by
  intro n
  simp only [A144498]

end A144498

/-! ## A144498.P6808995185541496278

`A144301(n+2)-A144301(n+1)`
-/

namespace A144498.P6808995185541496278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 (n + 2) - A144301 (n + 1)

end

end A144498.P6808995185541496278

namespace A144498

/-- `A144301(n+2)-A144301(n+1)` -/
def P6808995185541496278.Spec : Prop :=
  ∀ n, P6808995185541496278.a n = A144498 n

end A144498

/-! ## A144498.P13820122666564948730

`Δ[a(n-2)+(2*n-1)*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A144498.P13820122666564948730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + ((2 * n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144498.P13820122666564948730

namespace A144498

/-- `Δ[a(n-2)+(2*n-1)*a(n-1)]` -/
def P13820122666564948730.Spec : Prop :=
  ∀ n, P13820122666564948730.a n = A144498 n

end A144498

/-! ## A144498.P1531547633381599937

`∑[A144647(n)]`
-/

namespace A144498.P1531547633381599937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144498.P1531547633381599937

namespace A144498

/-- `∑[A144647(n)]` -/
def P1531547633381599937.Spec : Prop :=
  ∀ n, P1531547633381599937.a n = A144498 n

end A144498

/-! ## A144498.P13548981420845655572

`Δ[A001515(n)]`
-/

namespace A144498.P13548981420845655572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144498.P13548981420845655572

namespace A144498

/-- `Δ[A001515(n)]` -/
def P13548981420845655572.Spec : Prop :=
  ∀ n, P13548981420845655572.a n = A144498 n

theorem P13548981420845655572.correct : P13548981420845655572.Spec := by
  intro n
  simp only [A144498, Nat.add_sub_cancel, A144498.P13548981420845655572.f1, A144498.P13548981420845655572.a, A144498.P11939167362090134045.a, SequenceMachineLib.memo_apply]

end A144498

/-! ## A144498.P18289943329899313522

`Δ[record[A144502(n)]]`
-/

namespace A144498.P18289943329899313522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144498.P18289943329899313522

namespace A144498

/-- `Δ[record[A144502(n)]]` -/
def P18289943329899313522.Spec : Prop :=
  ∀ n, P18289943329899313522.a n = A144498 n

end A144498

/-! ## A144498.P1913631866473599550

`Δ[A144301(n+1)]`
-/

namespace A144498.P1913631866473599550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144498.P1913631866473599550

namespace A144498

/-- `Δ[A144301(n+1)]` -/
def P1913631866473599550.Spec : Prop :=
  ∀ n, P1913631866473599550.a n = A144498 n

end A144498

/-! ## A144498.P6320830460326758586

`abs(A144505(∑[n+2]))`
-/

namespace A144498.P6320830460326758586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144505 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A144498.P6320830460326758586

namespace A144498

/-- `abs(A144505(∑[n+2]))` -/
def P6320830460326758586.Spec : Prop :=
  ∀ n, P6320830460326758586.a n = A144498 n

end A144498

/-! ## A144498.P3586210880132462098

`Δ[A144502(∑[n+1])]`
-/

namespace A144498.P3586210880132462098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144498.P3586210880132462098

namespace A144498

/-- `Δ[A144502(∑[n+1])]` -/
def P3586210880132462098.Spec : Prop :=
  ∀ n, P3586210880132462098.a n = A144498 n

end A144498

/-! ## A144498.P7403434570804895284

`Δ[A144505(∑[n+1])]`
-/

namespace A144498.P7403434570804895284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144498.P7403434570804895284

namespace A144498

/-- `Δ[A144505(∑[n+1])]` -/
def P7403434570804895284.Spec : Prop :=
  ∀ n, P7403434570804895284.a n = A144498 n

end A144498

/-!
# A144499: Column 3 of array in A144502.

The programs for A144499, the canonical program `A144499.P13172014164544406557` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144499 has offset 0).

The definition of A144499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144499.P13172014164544406557

`((12*n²+8*n+3)*a(n-1)+(6*n+1)*a(n-2))/(6*n-5)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144499

/-- `((12*n²+8*n+3)*a(n-1)+(6*n+1)*a(n-2))/(6*n-5)` -/
def P13172014164544406557.Spec : Prop :=
  ∀ n, P13172014164544406557.a n = (A144499 n : ℚ)

end A144499

/-! ## A144499.P4598071888495685827

`A144502(A167614(n+2))`
-/

namespace A144499.P4598071888495685827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (A167614 (n + 2)).toNat

end

end A144499.P4598071888495685827

namespace A144499

/-- `A144502(A167614(n+2))` -/
def P4598071888495685827.Spec : Prop :=
  ∀ n, P4598071888495685827.a n = A144499 n

end A144499

/-! ## A144499.P10663681775741031150

`A144502(A055999(n)+9)`
-/

namespace A144499.P10663681775741031150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (A055999 n + 9).toNat

end

end A144499.P10663681775741031150

namespace A144499

/-- `A144502(A055999(n)+9)` -/
def P10663681775741031150.Spec : Prop :=
  ∀ n, P10663681775741031150.a n = A144499 n

end A144499

/-! ## A144499.P12695727289609520264

`A144502(eq[2, A141169(n)])`
-/

namespace A144499.P12695727289609520264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144499.P12695727289609520264

namespace A144499

/-- `A144502(eq[2, A141169(n)])` -/
def P12695727289609520264.Spec : Prop :=
  ∀ n, P12695727289609520264.a n = A144499 n

end A144499

/-! ## A144499.P151067597991471081

`A144502(eq[3, A002262(n)])`
-/

namespace A144499.P151067597991471081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144499.P151067597991471081

namespace A144499

/-- `A144502(eq[3, A002262(n)])` -/
def P151067597991471081.Spec : Prop :=
  ∀ n, P151067597991471081.a n = A144499 n

end A144499

/-! ## A144499.P8143963468366345345

`A144513(n)-A001515(n)`
-/

namespace A144499.P8143963468366345345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144513 n - A001515 n

end

end A144499.P8143963468366345345

namespace A144499

/-- `A144513(n)-A001515(n)` -/
def P8143963468366345345.Spec : Prop :=
  ∀ n, P8143963468366345345.a n = A144499 n

end A144499

/-! ## A144499.P9557149623925609058

`A144513(n)-record[A144502(n)]`
-/

namespace A144499.P9557149623925609058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144513 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144499.P9557149623925609058

namespace A144499

/-- `A144513(n)-record[A144502(n)]` -/
def P9557149623925609058.Spec : Prop :=
  ∀ n, P9557149623925609058.a n = A144499 n

end A144499

/-! ## A144499.P18384946984404278957

`A144513(n)-A144301(n+1)`
-/

namespace A144499.P18384946984404278957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144513 n - A144301 (n + 1)

end

end A144499.P18384946984404278957

namespace A144499

/-- `A144513(n)-A144301(n+1)` -/
def P18384946984404278957.Spec : Prop :=
  ∀ n, P18384946984404278957.a n = A144499 n

end A144499

/-! ## A144499.P16325912566759516180

`A144513(n)-A144502(∑[n+1])`
-/

namespace A144499.P16325912566759516180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144513 n - A144502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144499.P16325912566759516180

namespace A144499

/-- `A144513(n)-A144502(∑[n+1])` -/
def P16325912566759516180.Spec : Prop :=
  ∀ n, P16325912566759516180.a n = A144499 n

end A144499

/-! ## A144499.P6735980701468178832

`A144502(eq[2, A002260(n+1)-2])`
-/

namespace A144499.P6735980701468178832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144499.P6735980701468178832

namespace A144499

/-- `A144502(eq[2, A002260(n+1)-2])` -/
def P6735980701468178832.Spec : Prop :=
  ∀ n, P6735980701468178832.a n = A144499 n

end A144499

