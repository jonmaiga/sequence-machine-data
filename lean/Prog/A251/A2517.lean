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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A251700: a(n) = (8*n+1) * (9*n+1)^(n-2) * 10^n.

The programs for A251700, the canonical program `A251700.P4266059864923752673` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251700 has offset 0).

The definition of A251700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251700.P4266059864923752673

`(8*n+1)*(9*n+1)^(n-2)*10^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251700

/-- `(8*n+1)*(9*n+1)^(n-2)*10^n` -/
def P4266059864923752673.Spec : Prop :=
  ∀ n, P4266059864923752673.a n = (A251700 n : ℚ)

end A251700

/-!
# A251701: a(n) = 3^n + n^2.

The programs for A251701, the canonical program `A251701.P15458223301603124718` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251701 has offset 0).

The definition of A251701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+n²` (program `A251701.P15458223301603124718`, by `A251701.P15458223301603124718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251701.P15458223301603124718

`3^n+n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251701

/-- `3^n+n²` -/
def P15458223301603124718.Spec : Prop :=
  ∀ n, (P15458223301603124718.a n : ℤ) = A251701 n

theorem P15458223301603124718.correct : P15458223301603124718.Spec := by
  intro n
  simp only [A251701]

end A251701

/-! ## A251701.P7946750853558795641

`floor(3^n+n/acot(n))`
-/

namespace A251701.P7946750853558795641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℝ) + (n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A251701.P7946750853558795641

namespace A251701

/-- `floor(3^n+n/acot(n))` -/
def P7946750853558795641.Spec : Prop :=
  ∀ n, P7946750853558795641.a n = A251701 n

end A251701

/-! ## A251701.P10382772759102997213

`round(3^n+n/acot(n))`
-/

namespace A251701.P10382772759102997213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ n : ℝ) + (n : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A251701.P10382772759102997213

namespace A251701

/-- `round(3^n+n/acot(n))` -/
def P10382772759102997213.Spec : Prop :=
  ∀ n, P10382772759102997213.a n = A251701 n

end A251701

/-! ## A251701.P13156148347613218598

`abs(lcm(n, n+1)+3^n-n)`
-/

namespace A251701.P13156148347613218598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm n (n + 1) + 3 ^ n : ℤ) - (n : ℤ)|

end

end A251701.P13156148347613218598

namespace A251701

/-- `abs(lcm(n, n+1)+3^n-n)` -/
def P13156148347613218598.Spec : Prop :=
  ∀ n, P13156148347613218598.a n = A251701 n

end A251701

/-! ## A251701.P5752918794682633012

`floor(∑[3*a(n-1)]+n²)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A251701.P5752918794682633012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A251701.P5752918794682633012

namespace A251701

/-- `floor(∑[3*a(n-1)]+n²)` -/
def P5752918794682633012.Spec : Prop :=
  ∀ n, (P5752918794682633012.a n : ℤ) = A251701 n

end A251701

/-! ## A251701.P10983111322708653181

`floor(n²-∑[3*a(n-1)])` with `a(0)=-1, a(1)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A251701.P10983111322708653181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251701.P10983111322708653181

namespace A251701

/-- `floor(n²-∑[3*a(n-1)])` -/
def P10983111322708653181.Spec : Prop :=
  ∀ n, P10983111322708653181.a n = A251701 n

end A251701

/-! ## A251701.P1459536376196672335

`xor(1, A105723(n)+n²)`
-/

namespace A251701.P1459536376196672335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A105723 n + (n ^ 2 : ℤ))

end

end A251701.P1459536376196672335

namespace A251701

/-- `xor(1, A105723(n)+n²)` -/
def P1459536376196672335.Spec : Prop :=
  ∀ n, P1459536376196672335.a n = A251701 n

end A251701

/-! ## A251701.P4293915547877284413

`abs(Δ[A003462(n)]+n²)`
-/

namespace A251701.P4293915547877284413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n ^ 2 : ℤ)|

end

end A251701.P4293915547877284413

namespace A251701

/-- `abs(Δ[A003462(n)]+n²)` -/
def P4293915547877284413.Spec : Prop :=
  ∀ n, P4293915547877284413.a n = A251701 n

end A251701

/-! ## A251701.P7212395351890554028

`abs(Δ[A007051(n)]+n²)`
-/

namespace A251701.P7212395351890554028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n ^ 2 : ℤ)|

end

end A251701.P7212395351890554028

namespace A251701

/-- `abs(Δ[A007051(n)]+n²)` -/
def P7212395351890554028.Spec : Prop :=
  ∀ n, P7212395351890554028.a n = A251701 n

end A251701

/-! ## A251701.P10571501361075641051

`abs(3^n-(n-A005563(n))-n)`
-/

namespace A251701.P10571501361075641051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - ((n : ℤ) - A005563 n) - (n : ℤ)|

end

end A251701.P10571501361075641051

namespace A251701

/-- `abs(3^n-(n-A005563(n))-n)` -/
def P10571501361075641051.Spec : Prop :=
  ∀ n, P10571501361075641051.a n = A251701 n

end A251701

/-! ## A251701.P2618380649274520678

`∑[A025192(n)+A004273(n)]`
-/

namespace A251701.P2618380649274520678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251701.P2618380649274520678

namespace A251701

/-- `∑[A025192(n)+A004273(n)]` -/
def P2618380649274520678.Spec : Prop :=
  ∀ n, P2618380649274520678.a n = A251701 n

end A251701

/-! ## A251701.P5786084708098209678

`(2*n²+A038754(2*n+1))/2`
-/

namespace A251701.P5786084708098209678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) + A038754 (2 * n + 1) : ℚ) / 2

end

end A251701.P5786084708098209678

namespace A251701

/-- `(2*n²+A038754(2*n+1))/2` -/
def P5786084708098209678.Spec : Prop :=
  ∀ n, P5786084708098209678.a n = (A251701 n : ℚ)

end A251701

/-! ## A251701.P2073885842367820517

`floor(sqrt(A034513(n))+n²)`
-/

namespace A251701.P2073885842367820517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A034513 n : ℝ) + (n ^ 2 : ℝ)⌋

end

end A251701.P2073885842367820517

namespace A251701

/-- `floor(sqrt(A034513(n))+n²)` -/
def P2073885842367820517.Spec : Prop :=
  ∀ n, P2073885842367820517.a n = A251701 n

end A251701

/-! ## A251701.P8623611496066227246

`floor(sqrt(A062396(n))+n²)`
-/

namespace A251701.P8623611496066227246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A062396 n : ℝ) + (n ^ 2 : ℝ)⌋

end

end A251701.P8623611496066227246

namespace A251701

/-- `floor(sqrt(A062396(n))+n²)` -/
def P8623611496066227246.Spec : Prop :=
  ∀ n, P8623611496066227246.a n = A251701 n

end A251701

/-! ## A251701.P7393858593571634240

`floor(sqrt(A074610(n))+n²)`
-/

namespace A251701.P7393858593571634240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A074610 n : ℝ) + (n ^ 2 : ℝ)⌋

end

end A251701.P7393858593571634240

namespace A251701

/-- `floor(sqrt(A074610(n))+n²)` -/
def P7393858593571634240.Spec : Prop :=
  ∀ n, P7393858593571634240.a n = A251701 n

end A251701

/-! ## A251701.P16501542336316404660

`(A127960(n)+A000244(n)²)/A000244(n)`
-/

namespace A251701.P16501542336316404660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 n + A000244 n ^ 2 : ℚ) / (A000244 n : ℚ)

end

end A251701.P16501542336316404660

namespace A251701

/-- `(A127960(n)+A000244(n)²)/A000244(n)` -/
def P16501542336316404660.Spec : Prop :=
  ∀ n, P16501542336316404660.a n = (A251701 n : ℚ)

theorem P16501542336316404660.correct : P16501542336316404660.Spec := by
  intro n
  simp only [A251701, Nat.add_sub_cancel, A251701.P16501542336316404660.a, A251701.P15458223301603124718.a, A000244, A000244.P17162167222172810417.a, A127960, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251701

/-!
# A251702: a(1)=5, a(n) = a(n-1)*(a(n-1)-1)*(a(n-1)-2)/6.

The programs for A251702, there is no canonical definition to state claims against.
-/

/-! ## A251702.P8743057109426653092

`a(n-1)*(a(n-1)-1)*(a(n-1)-2)/6` with `a(0)=5`
-/

namespace A251702.P8743057109426653092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * ((a (n - 1) - 1) * ((a (n - 1) - 2) / 6))

end

end A251702.P8743057109426653092

/-!
# A251703: 4-step Fibonacci sequence starting with 1,1,0,0.

The programs for A251703, the canonical program `A251703.P11193644302280101743` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251703 has offset 0).

The definition of A251703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251703.P11193644302280101743

`A000078(n+3)-2*A000078(n+1)-2*A000078(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251703

/-- `A000078(n+3)-2*A000078(n+1)-2*A000078(n)` -/
def P11193644302280101743.Spec : Prop :=
  ∀ n, P11193644302280101743.a n = A251703 n

theorem P11193644302280101743.correct : P11193644302280101743.Spec := by
  intro n
  simp only [A251703]

end A251703

/-! ## A251703.P3183993417804385731

`ogf((-1+2x^2+2x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A251703.P3183993417804385731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -2] [1, -1, -1, -1, -1] n

end

end A251703.P3183993417804385731

namespace A251703

/-- `ogf((-1+2x^2+2x^3)/(-1+x+x^2+x^3+x^4))` -/
def P3183993417804385731.Spec : Prop :=
  ∀ n, P3183993417804385731.a n = A251703 n

end A251703

/-! ## A251703.P13426001736812105833

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A251703.P13426001736812105833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 2] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A251703.P13426001736812105833

namespace A251703

/-- `2*a(n-1)-a(n-5)` -/
def P13426001736812105833.Spec : Prop :=
  ∀ n, P13426001736812105833.a n = A251703 n

end A251703

/-! ## A251703.P15510420616817960975

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A251703.P15510420616817960975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 2] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A251703.P15510420616817960975

namespace A251703

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P15510420616817960975.Spec : Prop :=
  ∀ n, P15510420616817960975.a n = A251703 n

end A251703

/-! ## A251703.P9172158404200406743

`abs(Δ[A251655(abs(1-n))])`
-/

namespace A251703.P9172158404200406743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A251703.P9172158404200406743

namespace A251703

/-- `abs(Δ[A251655(abs(1-n))])` -/
def P9172158404200406743.Spec : Prop :=
  ∀ n, P9172158404200406743.a n = A251703 n

end A251703

/-! ## A251703.P5540716947483125036

`A251704(n)-A000078(n)`
-/

namespace A251703.P5540716947483125036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n - A000078 n

end

end A251703.P5540716947483125036

namespace A251703

/-- `A251704(n)-A000078(n)` -/
def P5540716947483125036.Spec : Prop :=
  ∀ n, P5540716947483125036.a n = A251703 n

end A251703

/-! ## A251703.P7618575183279304506

`A251705(n)-A001631(n)`
-/

namespace A251703.P7618575183279304506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n - A001631 n

end

end A251703.P7618575183279304506

namespace A251703

/-- `A251705(n)-A001631(n)` -/
def P7618575183279304506.Spec : Prop :=
  ∀ n, P7618575183279304506.a n = A251703 n

end A251703

/-! ## A251703.P12676401438375766881

`A251654(n)+A251704(n)-A251655(n)`
-/

namespace A251703.P12676401438375766881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n + (A251704 n - A251655 n)

end

end A251703.P12676401438375766881

namespace A251703

/-- `A251654(n)+A251704(n)-A251655(n)` -/
def P12676401438375766881.Spec : Prop :=
  ∀ n, P12676401438375766881.a n = A251703 n

end A251703

/-! ## A251703.P13484149376023611015

`A001631(n)+A251704(n)-∑[A001631(n)]`
-/

namespace A251703.P13484149376023611015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n + (A251704 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251703.P13484149376023611015

namespace A251703

/-- `A001631(n)+A251704(n)-∑[A001631(n)]` -/
def P13484149376023611015.Spec : Prop :=
  ∀ n, P13484149376023611015.a n = A251703 n

end A251703

/-! ## A251703.P7870149815270855672

`A000078(n)+A251705(n)-A000078(n+1)`
-/

namespace A251703.P7870149815270855672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n + (A251705 n - A000078 (n + 1))

end

end A251703.P7870149815270855672

namespace A251703

/-- `A000078(n)+A251705(n)-A000078(n+1)` -/
def P7870149815270855672.Spec : Prop :=
  ∀ n, P7870149815270855672.a n = A251703 n

end A251703

/-! ## A251703.P13978205344313257045

`A251656(n+1)+A251656(n)-A001630(n)`
-/

namespace A251703.P13978205344313257045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251656 n - A001630 n)

end

end A251703.P13978205344313257045

namespace A251703

/-- `A251656(n+1)+A251656(n)-A001630(n)` -/
def P13978205344313257045.Spec : Prop :=
  ∀ n, P13978205344313257045.a n = A251703 n

end A251703

/-! ## A251703.P10002470629206750361

`A001631(n+1)+A251656(n)-A000078(n+1)`
-/

namespace A251703.P10002470629206750361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + (A251656 n - A000078 (n + 1))

end

end A251703.P10002470629206750361

namespace A251703

/-- `A001631(n+1)+A251656(n)-A000078(n+1)` -/
def P10002470629206750361.Spec : Prop :=
  ∀ n, P10002470629206750361.a n = A251703 n

end A251703

/-! ## A251703.P16766735189096196946

`A000288(n)-∑[A001631(n)]`
-/

namespace A251703.P16766735189096196946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251703.P16766735189096196946

namespace A251703

/-- `A000288(n)-∑[A001631(n)]` -/
def P16766735189096196946.Spec : Prop :=
  ∀ n, P16766735189096196946.a n = A251703 n

end A251703

/-! ## A251703.P1094323368065294008

`A000288(n)-A000078(n+1)`
-/

namespace A251703.P1094323368065294008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - A000078 (n + 1)

end

end A251703.P1094323368065294008

namespace A251703

/-- `A000288(n)-A000078(n+1)` -/
def P1094323368065294008.Spec : Prop :=
  ∀ n, P1094323368065294008.a n = A251703 n

end A251703

/-! ## A251703.P13350919145925628873

`A251654(n+1)-2*A000078(n)`
-/

namespace A251703.P13350919145925628873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) - 2 * A000078 n

end

end A251703.P13350919145925628873

namespace A251703

/-- `A251654(n+1)-2*A000078(n)` -/
def P13350919145925628873.Spec : Prop :=
  ∀ n, P13350919145925628873.a n = A251703 n

end A251703

/-! ## A251703.P2578168917457931778

`A251655(n+1)-(A001630(n)+A000078(n))`
-/

namespace A251703.P2578168917457931778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) - (A001630 n + A000078 n)

end

end A251703.P2578168917457931778

namespace A251703

/-- `A251655(n+1)-(A001630(n)+A000078(n))` -/
def P2578168917457931778.Spec : Prop :=
  ∀ n, P2578168917457931778.a n = A251703 n

end A251703

/-! ## A251703.P166692362245217889

`A251654(n+1)+A001631(n)-A001630(n)`
-/

namespace A251703.P166692362245217889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) + (A001631 n - A001630 n)

end

end A251703.P166692362245217889

namespace A251703

/-- `A251654(n+1)+A001631(n)-A001630(n)` -/
def P166692362245217889.Spec : Prop :=
  ∀ n, P166692362245217889.a n = A251703 n

end A251703

/-! ## A251703.P10874068339350217369

`A251704(n)+A251704(n)-A251654(n+1)`
-/

namespace A251703.P10874068339350217369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n + (A251704 n - A251654 (n + 1))

end

end A251703.P10874068339350217369

namespace A251703

/-- `A251704(n)+A251704(n)-A251654(n+1)` -/
def P10874068339350217369.Spec : Prop :=
  ∀ n, P10874068339350217369.a n = A251703 n

end A251703

/-! ## A251703.P11653977931589433244

`A251655(n+1)+A251654(n)-A001630(n+1)`
-/

namespace A251703.P11653977931589433244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) + (A251654 n - A001630 (n + 1))

end

end A251703.P11653977931589433244

namespace A251703

/-- `A251655(n+1)+A251654(n)-A001630(n+1)` -/
def P11653977931589433244.Spec : Prop :=
  ∀ n, P11653977931589433244.a n = A251703 n

end A251703

/-! ## A251703.P12783395359977066884

`A251705(n+1)+A251656(n)-A251704(n+1)`
-/

namespace A251703.P12783395359977066884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (n + 1) + (A251656 n - A251704 (n + 1))

end

end A251703.P12783395359977066884

namespace A251703

/-- `A251705(n+1)+A251656(n)-A251704(n+1)` -/
def P12783395359977066884.Spec : Prop :=
  ∀ n, P12783395359977066884.a n = A251703 n

end A251703

/-!
# A251704: 4-step Fibonacci sequence starting with 1, 1, 0, 1.

The programs for A251704, the canonical program `A251704.P15775240905378854447` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251704 has offset 0).

The definition of A251704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251704.P5822336236391658411

`ogf((-1+2x^2+x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A251704.P5822336236391658411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -1] [1, -1, -1, -1, -1] n

end

end A251704.P5822336236391658411

namespace A251704

/-- `ogf((-1+2x^2+x^3)/(-1+x+x^2+x^3+x^4))` -/
def P5822336236391658411.Spec : Prop :=
  ∀ n, P5822336236391658411.a n = A251704 n

end A251704

/-! ## A251704.P15775240905378854447

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251704

/-- `2*a(n-1)-a(n-5)` -/
def P15775240905378854447.Spec : Prop :=
  ∀ n, P15775240905378854447.a n = A251704 n

theorem P15775240905378854447.correct : P15775240905378854447.Spec := by
  intro n
  simp only [A251704]

end A251704

/-! ## A251704.P861199000121999766

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A251704.P861199000121999766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A251704.P861199000121999766

namespace A251704

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P861199000121999766.Spec : Prop :=
  ∀ n, P861199000121999766.a n = A251704 n

theorem P861199000121999766.correct : P861199000121999766.Spec := by
  intro n
  simp only [A251704, Nat.add_sub_cancel, A251704.P861199000121999766.a, A251704.P15775240905378854447.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A251704

/-! ## A251704.P14661546943346220324

`A001630(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A251704.P14661546943346220324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001630 n - a (n - 2)

end

end A251704.P14661546943346220324

namespace A251704

/-- `A001630(n)-a(n-2)` -/
def P14661546943346220324.Spec : Prop :=
  ∀ n, P14661546943346220324.a n = A251704 n

end A251704

/-! ## A251704.P18076471332326103343

`A251703(n)+A000078(n)`
-/

namespace A251704.P18076471332326103343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n + A000078 n

end

end A251704.P18076471332326103343

namespace A251704

/-- `A251703(n)+A000078(n)` -/
def P18076471332326103343.Spec : Prop :=
  ∀ n, P18076471332326103343.a n = A251704 n

end A251704

/-! ## A251704.P16149371063747183402

`A251656(n)+Δ[A001631(n)]`
-/

namespace A251704.P16149371063747183402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 n + (f1 (n + 1) - f1 n)

end

end A251704.P16149371063747183402

namespace A251704

/-- `A251656(n)+Δ[A001631(n)]` -/
def P16149371063747183402.Spec : Prop :=
  ∀ n, P16149371063747183402.a n = A251704 n

end A251704

/-! ## A251704.P9524374341056184767

`A000078(n)+A251705(n)-A001631(n)`
-/

namespace A251704.P9524374341056184767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n + (A251705 n - A001631 n)

end

end A251704.P9524374341056184767

namespace A251704

/-- `A000078(n)+A251705(n)-A001631(n)` -/
def P9524374341056184767.Spec : Prop :=
  ∀ n, P9524374341056184767.a n = A251704 n

end A251704

/-! ## A251704.P3459725568291217619

`A251655(n)+A251703(n)-A251654(n)`
-/

namespace A251704.P3459725568291217619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n + (A251703 n - A251654 n)

end

end A251704.P3459725568291217619

namespace A251704

/-- `A251655(n)+A251703(n)-A251654(n)` -/
def P3459725568291217619.Spec : Prop :=
  ∀ n, P3459725568291217619.a n = A251704 n

end A251704

/-! ## A251704.P13346286959527533316

`∑[A001631(n)]+A251703(n)-A001631(n)`
-/

namespace A251704.P13346286959527533316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A251703 n - A001631 n)

end

end A251704.P13346286959527533316

namespace A251704

/-- `∑[A001631(n)]+A251703(n)-A001631(n)` -/
def P13346286959527533316.Spec : Prop :=
  ∀ n, P13346286959527533316.a n = A251704 n

end A251704

/-! ## A251704.P14329791868459949405

`A001631(n+1)+A251656(n)-A001631(n)`
-/

namespace A251704.P14329791868459949405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + (A251656 n - A001631 n)

end

end A251704.P14329791868459949405

namespace A251704

/-- `A001631(n+1)+A251656(n)-A001631(n)` -/
def P14329791868459949405.Spec : Prop :=
  ∀ n, P14329791868459949405.a n = A251704 n

end A251704

/-! ## A251704.P17322246237129016302

`A251656(n+1)+A251705(n)-A251655(n)`
-/

namespace A251704.P17322246237129016302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251705 n - A251655 n)

end

end A251704.P17322246237129016302

namespace A251704

/-- `A251656(n+1)+A251705(n)-A251655(n)` -/
def P17322246237129016302.Spec : Prop :=
  ∀ n, P17322246237129016302.a n = A251704 n

end A251704

/-! ## A251704.P7563317983828387664

`A251656(n+1)+A251656(n)-A000078(n+1)`
-/

namespace A251704.P7563317983828387664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251656 n - A000078 (n + 1))

end

end A251704.P7563317983828387664

namespace A251704

/-- `A251656(n+1)+A251656(n)-A000078(n+1)` -/
def P7563317983828387664.Spec : Prop :=
  ∀ n, P7563317983828387664.a n = A251704 n

end A251704

/-! ## A251704.P8441453677935852117

`A000288(n)-A001631(n)`
-/

namespace A251704.P8441453677935852117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - A001631 n

end

end A251704.P8441453677935852117

namespace A251704

/-- `A000288(n)-A001631(n)` -/
def P8441453677935852117.Spec : Prop :=
  ∀ n, P8441453677935852117.a n = A251704 n

end A251704

/-! ## A251704.P2231888083500775886

`A000288(n)-Δ[A000078(n)]`
-/

namespace A251704.P2231888083500775886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - (f1 (n + 1) - f1 n)

end

end A251704.P2231888083500775886

namespace A251704

/-- `A000288(n)-Δ[A000078(n)]` -/
def P2231888083500775886.Spec : Prop :=
  ∀ n, P2231888083500775886.a n = A251704 n

end A251704

/-! ## A251704.P10595702391107341530

`A251654(n+1)-A000078(n)`
-/

namespace A251704.P10595702391107341530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) - A000078 n

end

end A251704.P10595702391107341530

namespace A251704

/-- `A251654(n+1)-A000078(n)` -/
def P10595702391107341530.Spec : Prop :=
  ∀ n, P10595702391107341530.a n = A251704 n

end A251704

/-! ## A251704.P14124508617895009163

`A251655(n+1)-A001630(n)`
-/

namespace A251704.P14124508617895009163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) - A001630 n

end

end A251704.P14124508617895009163

namespace A251704

/-- `A251655(n+1)-A001630(n)` -/
def P14124508617895009163.Spec : Prop :=
  ∀ n, P14124508617895009163.a n = A251704 n

end A251704

/-! ## A251704.P14665316342587687732

`A251705(n+1)-2*A000078(n)`
-/

namespace A251704.P14665316342587687732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (n + 1) - 2 * A000078 n

end

end A251704.P14665316342587687732

namespace A251704

/-- `A251705(n+1)-2*A000078(n)` -/
def P14665316342587687732.Spec : Prop :=
  ∀ n, P14665316342587687732.a n = A251704 n

end A251704

/-! ## A251704.P17081081961704840552

`A000288(n)+A251703(n)-A251705(n)`
-/

namespace A251704.P17081081961704840552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (A251703 n - A251705 n)

end

end A251704.P17081081961704840552

namespace A251704

/-- `A000288(n)+A251703(n)-A251705(n)` -/
def P17081081961704840552.Spec : Prop :=
  ∀ n, P17081081961704840552.a n = A251704 n

end A251704

/-! ## A251704.P4136598134101316742

`A000078(n)+A000288(n)-A000078(n+1)`
-/

namespace A251704.P4136598134101316742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n + (A000288 n - A000078 (n + 1))

end

end A251704.P4136598134101316742

namespace A251704

/-- `A000078(n)+A000288(n)-A000078(n+1)` -/
def P4136598134101316742.Spec : Prop :=
  ∀ n, P4136598134101316742.a n = A251704 n

end A251704

/-! ## A251704.P18331967791103332873

`A251705(n+1)+A001631(n)-A001630(n)`
-/

namespace A251704.P18331967791103332873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (n + 1) + (A001631 n - A001630 n)

end

end A251704.P18331967791103332873

namespace A251704

/-- `A251705(n+1)+A001631(n)-A001630(n)` -/
def P18331967791103332873.Spec : Prop :=
  ∀ n, P18331967791103332873.a n = A251704 n

end A251704

/-!
# A251705: 4-step Fibonacci sequence starting with 1, 1, 1, 0.

The programs for A251705, the canonical program `A251705.P3515363141737824374` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251705 has offset 0).

The definition of A251705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251705.P1328818970809273803

`ogf((-1+x^2+3x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A251705.P1328818970809273803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -3] [1, -1, -1, -1, -1] n

end

end A251705.P1328818970809273803

namespace A251705

/-- `ogf((-1+x^2+3x^3)/(-1+x+x^2+x^3+x^4))` -/
def P1328818970809273803.Spec : Prop :=
  ∀ n, P1328818970809273803.a n = A251705 n

end A251705

/-! ## A251705.P3515363141737824374

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251705

/-- `2*a(n-1)-a(n-5)` -/
def P3515363141737824374.Spec : Prop :=
  ∀ n, P3515363141737824374.a n = A251705 n

theorem P3515363141737824374.correct : P3515363141737824374.Spec := by
  intro n
  simp only [A251705]

end A251705

/-! ## A251705.P16200678944215979791

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=3`
-/

namespace A251705.P16200678944215979791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 3] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A251705.P16200678944215979791

namespace A251705

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P16200678944215979791.Spec : Prop :=
  ∀ n, P16200678944215979791.a n = A251705 n

theorem P16200678944215979791.correct : P16200678944215979791.Spec := by
  intro n
  simp only [A251705, Nat.add_sub_cancel, A251705.P16200678944215979791.a, A251705.P3515363141737824374.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A251705

/-! ## A251705.P1289781009051955476

`A251703(n)+A001631(n)`
-/

namespace A251705.P1289781009051955476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n + A001631 n

end

end A251705.P1289781009051955476

namespace A251705

/-- `A251703(n)+A001631(n)` -/
def P1289781009051955476.Spec : Prop :=
  ∀ n, P1289781009051955476.a n = A251705 n

end A251705

/-! ## A251705.P9697508340873399592

`A251703(n)+Δ[A000078(n)]`
-/

namespace A251705.P9697508340873399592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n + (f1 (n + 1) - f1 n)

end

end A251705.P9697508340873399592

namespace A251705

/-- `A251703(n)+Δ[A000078(n)]` -/
def P9697508340873399592.Spec : Prop :=
  ∀ n, P9697508340873399592.a n = A251705 n

end A251705

/-! ## A251705.P14951227616392110456

`A001631(n)+A251704(n)-A000078(n)`
-/

namespace A251705.P14951227616392110456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n + (A251704 n - A000078 n)

end

end A251705.P14951227616392110456

namespace A251705

/-- `A001631(n)+A251704(n)-A000078(n)` -/
def P14951227616392110456.Spec : Prop :=
  ∀ n, P14951227616392110456.a n = A251705 n

end A251705

/-! ## A251705.P15354589291130373608

`A251654(n)+A251656(n)-A001631(n)`
-/

namespace A251705.P15354589291130373608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n + (A251656 n - A001631 n)

end

end A251705.P15354589291130373608

namespace A251705

/-- `A251654(n)+A251656(n)-A001631(n)` -/
def P15354589291130373608.Spec : Prop :=
  ∀ n, P15354589291130373608.a n = A251705 n

end A251705

/-! ## A251705.P12526654162945718421

`A000078(n+1)+A251703(n)-A000078(n)`
-/

namespace A251705.P12526654162945718421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A251703 n - A000078 n)

end

end A251705.P12526654162945718421

namespace A251705

/-- `A000078(n+1)+A251703(n)-A000078(n)` -/
def P12526654162945718421.Spec : Prop :=
  ∀ n, P12526654162945718421.a n = A251705 n

end A251705

/-! ## A251705.P13910950480006274589

`A251656(n)+A001631(n+1)-A000078(n)`
-/

namespace A251705.P13910950480006274589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 n + (A001631 (n + 1) - A000078 n)

end

end A251705.P13910950480006274589

namespace A251705

/-- `A251656(n)+A001631(n+1)-A000078(n)` -/
def P13910950480006274589.Spec : Prop :=
  ∀ n, P13910950480006274589.a n = A251705 n

end A251705

/-! ## A251705.P12160901833911369081

`A251654(n)+A251704(n)-A001631(n+1)`
-/

namespace A251705.P12160901833911369081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n + (A251704 n - A001631 (n + 1))

end

end A251705.P12160901833911369081

namespace A251705

/-- `A251654(n)+A251704(n)-A001631(n+1)` -/
def P12160901833911369081.Spec : Prop :=
  ∀ n, P12160901833911369081.a n = A251705 n

end A251705

/-! ## A251705.P4534915845750527866

`A251655(n)+A251704(n)-A251656(n+1)`
-/

namespace A251705.P4534915845750527866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n + (A251704 n - A251656 (n + 1))

end

end A251705.P4534915845750527866

namespace A251705

/-- `A251655(n)+A251704(n)-A251656(n+1)` -/
def P4534915845750527866.Spec : Prop :=
  ∀ n, P4534915845750527866.a n = A251705 n

end A251705

/-! ## A251705.P1948361865774787947

`A000288(n)-A000078(n)`
-/

namespace A251705.P1948361865774787947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - A000078 n

end

end A251705.P1948361865774787947

namespace A251705

/-- `A000288(n)-A000078(n)` -/
def P1948361865774787947.Spec : Prop :=
  ∀ n, P1948361865774787947.a n = A251705 n

end A251705

/-! ## A251705.P2596183446870090244

`A000288(n)+A251703(n)-A251704(n)`
-/

namespace A251705.P2596183446870090244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (A251703 n - A251704 n)

end

end A251705.P2596183446870090244

namespace A251705

/-- `A000288(n)+A251703(n)-A251704(n)` -/
def P2596183446870090244.Spec : Prop :=
  ∀ n, P2596183446870090244.a n = A251705 n

end A251705

/-! ## A251705.P2481347458117915069

`A000288(n)+A001631(n)-∑[A001631(n)]`
-/

namespace A251705.P2481347458117915069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (A001631 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251705.P2481347458117915069

namespace A251705

/-- `A000288(n)+A001631(n)-∑[A001631(n)]` -/
def P2481347458117915069.Spec : Prop :=
  ∀ n, P2481347458117915069.a n = A251705 n

end A251705

/-! ## A251705.P4584395911224076538

`A001631(n+1)+A000288(n)-A251656(n+1)`
-/

namespace A251705.P4584395911224076538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + (A000288 n - A251656 (n + 1))

end

end A251705.P4584395911224076538

namespace A251705

/-- `A001631(n+1)+A000288(n)-A251656(n+1)` -/
def P4584395911224076538.Spec : Prop :=
  ∀ n, P4584395911224076538.a n = A251705 n

end A251705

/-! ## A251705.P15509132493477140567

`A251654(n+1)+A251654(n)-A251656(n+1)`
-/

namespace A251705.P15509132493477140567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) + (A251654 n - A251656 (n + 1))

end

end A251705.P15509132493477140567

namespace A251705

/-- `A251654(n+1)+A251654(n)-A251656(n+1)` -/
def P15509132493477140567.Spec : Prop :=
  ∀ n, P15509132493477140567.a n = A251705 n

end A251705

/-! ## A251705.P11517310301949747735

`Δ[A001630(n+1)-A000288(n)]`
-/

namespace A251705.P11517310301949747735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) - A000288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251705.P11517310301949747735

namespace A251705

/-- `Δ[A001630(n+1)-A000288(n)]` -/
def P11517310301949747735.Spec : Prop :=
  ∀ n, P11517310301949747735.a n = A251705 n

end A251705

/-! ## A251705.P6376733267229496898

`A251655(n+1)+A000288(n)-A000288(n+1)`
-/

namespace A251705.P6376733267229496898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) + (A000288 n - A000288 (n + 1))

end

end A251705.P6376733267229496898

namespace A251705

/-- `A251655(n+1)+A000288(n)-A000288(n+1)` -/
def P6376733267229496898.Spec : Prop :=
  ∀ n, P6376733267229496898.a n = A251705 n

end A251705

/-! ## A251705.P3218177056787660300

`A135492(n+2)/2-A073817(n+1)`
-/

namespace A251705.P3218177056787660300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135492 (n + 2) : ℚ) / 2 - (A073817 (n + 1) : ℚ)

end

end A251705.P3218177056787660300

namespace A251705

/-- `A135492(n+2)/2-A073817(n+1)` -/
def P3218177056787660300.Spec : Prop :=
  ∀ n, P3218177056787660300.a n = (A251705 n : ℚ)

end A251705

/-!
# A251706: 6-step Fibonacci sequence starting with (0,0,0,0,1,0).

The programs for A251706, the canonical program `A251706.P10800495160873675911` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251706 has offset 0).

The definition of A251706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251706.P10800495160873675911

`A001592(n+1)-A001592(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251706

/-- `A001592(n+1)-A001592(n)` -/
def P10800495160873675911.Spec : Prop :=
  ∀ n, P10800495160873675911.a n = A251706 n

theorem P10800495160873675911.correct : P10800495160873675911.Spec := by
  intro n
  simp only [A251706]

end A251706

/-! ## A251706.P3889103534896558713

`Δ[A001592(n)]`
-/

namespace A251706.P3889103534896558713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P3889103534896558713

namespace A251706

/-- `Δ[A001592(n)]` -/
def P3889103534896558713.Spec : Prop :=
  ∀ n, P3889103534896558713.a n = A251706 n

theorem P3889103534896558713.correct : P3889103534896558713.Spec := by
  intro n
  simp only [A251706, Nat.add_sub_cancel, A251706.P3889103534896558713.f1, A251706.P3889103534896558713.a, A251706.P10800495160873675911.a, SequenceMachineLib.memo_apply]

end A251706

/-! ## A251706.P9674118888418908688

`Δ[A251707(n+1)-A251708(n)]`
-/

namespace A251706.P9674118888418908688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251707 (n + 1) - A251708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P9674118888418908688

namespace A251706

/-- `Δ[A251707(n+1)-A251708(n)]` -/
def P9674118888418908688.Spec : Prop :=
  ∀ n, P9674118888418908688.a n = A251706 n

theorem P9674118888418908688.correct : P9674118888418908688.Spec := by
  intro n
  simp only [A251706, Nat.add_sub_cancel, A251706.P9674118888418908688.f1, A251706.P9674118888418908688.a, A251706.P10800495160873675911.a, A001592, A001592.P16428630272280428975.a, A251707, A251707.P16439731495366822498.a, A251708, A251708.P2113703706727638287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251706

/-! ## A251706.P9093983892934645003

`Δ[A251708(n+1)-A251709(n)]`
-/

namespace A251706.P9093983892934645003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251708 (n + 1) - A251709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P9093983892934645003

namespace A251706

/-- `Δ[A251708(n+1)-A251709(n)]` -/
def P9093983892934645003.Spec : Prop :=
  ∀ n, P9093983892934645003.a n = A251706 n

end A251706

/-! ## A251706.P16432205591148955218

`Δ[Δ[A000383(n)/5]]`
-/

namespace A251706.P16432205591148955218
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 n : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P16432205591148955218

namespace A251706

/-- `Δ[Δ[A000383(n)/5]]` -/
def P16432205591148955218.Spec : Prop :=
  ∀ n, P16432205591148955218.a n = (A251706 n : ℚ)

end A251706

/-! ## A251706.P4328631773357604825

`Δ[Δ[A143662(n)]-A143662(n)]`
-/

namespace A251706.P4328631773357604825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143662 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A143662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P4328631773357604825

namespace A251706

/-- `Δ[Δ[A143662(n)]-A143662(n)]` -/
def P4328631773357604825.Spec : Prop :=
  ∀ n, P4328631773357604825.a n = A251706 n

end A251706

/-! ## A251706.P12641007200262324038

`Δ[A092921(A077169(n)+A005408(n))]`
-/

namespace A251706.P12641007200262324038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A077169 n + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P12641007200262324038

namespace A251706

/-- `Δ[A092921(A077169(n)+A005408(n))]` -/
def P12641007200262324038.Spec : Prop :=
  ∀ n, P12641007200262324038.a n = A251706 n

end A251706

/-! ## A251706.P7129596744208560503

`Δ[A092921(A130543(n)*A167499(n))]`
-/

namespace A251706.P7129596744208560503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A130543 n * A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P7129596744208560503

namespace A251706

/-- `Δ[A092921(A130543(n)*A167499(n))]` -/
def P7129596744208560503.Spec : Prop :=
  ∀ n, P7129596744208560503.a n = A251706 n

end A251706

/-! ## A251706.P8684213582127065082

`Δ[A092921(A167499(n))%A000322(n)]`
-/

namespace A251706.P8684213582127065082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092921 (A167499 n).toNat) (A000322 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P8684213582127065082

namespace A251706

/-- `Δ[A092921(A167499(n))%A000322(n)]` -/
def P8684213582127065082.Spec : Prop :=
  ∀ n, P8684213582127065082.a n = A251706 n

end A251706

/-! ## A251706.P10972650987816780593

`Δ[A092921(A167499(n)%A288465(n))]`
-/

namespace A251706.P10972650987816780593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (Int.tmod (A167499 n) (A288465 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251706.P10972650987816780593

namespace A251706

/-- `Δ[A092921(A167499(n)%A288465(n))]` -/
def P10972650987816780593.Spec : Prop :=
  ∀ n, P10972650987816780593.a n = A251706 n

end A251706

/-!
# A251707: 6-step Fibonacci sequence starting with (0,0,0,1,0,0).

The programs for A251707, the canonical program `A251707.P16439731495366822498` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251707 has offset 0).

The definition of A251707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251707.P16439731495366822498

`A251706(n+1)-A001592(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A251707

/-- `A251706(n+1)-A001592(n)` -/
def P16439731495366822498.Spec : Prop :=
  ∀ n, P16439731495366822498.a n = A251707 n

theorem P16439731495366822498.correct : P16439731495366822498.Spec := by
  intro n
  simp only [A251707]

end A251707

/-! ## A251707.P4827408436736791969

`A251706(n+1)+A251709(n)-A251708(n+1)`
-/

namespace A251707.P4827408436736791969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 1) + (A251709 n - A251708 (n + 1))

end

end A251707.P4827408436736791969

namespace A251707

/-- `A251706(n+1)+A251709(n)-A251708(n+1)` -/
def P4827408436736791969.Spec : Prop :=
  ∀ n, P4827408436736791969.a n = A251707 n

end A251707

/-! ## A251707.P13730043779459351925

`Δ[A001592(n+1)]-A001592(n)`
-/

namespace A251707.P13730043779459351925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001592 n

end

end A251707.P13730043779459351925

namespace A251707

/-- `Δ[A001592(n+1)]-A001592(n)` -/
def P13730043779459351925.Spec : Prop :=
  ∀ n, P13730043779459351925.a n = A251707 n

end A251707

/-! ## A251707.P6369258457820159205

`A001592(n+2)-A251709(n+2)`
-/

namespace A251707.P6369258457820159205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 2) - A251709 (n + 2)

end

end A251707.P6369258457820159205

namespace A251707

/-- `A001592(n+2)-A251709(n+2)` -/
def P6369258457820159205.Spec : Prop :=
  ∀ n, P6369258457820159205.a n = A251707 n

end A251707

/-! ## A251707.P7734922307425512533

`A251706(n+1)-Δ[A000383(n)/5]`
-/

namespace A251707.P7734922307425512533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251706 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A251707.P7734922307425512533

namespace A251707

/-- `A251706(n+1)-Δ[A000383(n)/5]` -/
def P7734922307425512533.Spec : Prop :=
  ∀ n, P7734922307425512533.a n = (A251707 n : ℚ)

end A251707

/-! ## A251707.P13972851676210270158

`A251706(n+1)-A092921(A167499(n))%A000322(n)`
-/

namespace A251707.P13972851676210270158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 1) - Int.tmod (A092921 (A167499 n).toNat) (A000322 n)

end

end A251707.P13972851676210270158

namespace A251707

/-- `A251706(n+1)-A092921(A167499(n))%A000322(n)` -/
def P13972851676210270158.Spec : Prop :=
  ∀ n, P13972851676210270158.a n = A251707 n

end A251707

/-!
# A251708: 6-step Fibonacci sequence starting with (0,0,1,0,0,0).

The programs for A251708, the canonical program `A251708.P2113703706727638287` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251708 has offset 0).

The definition of A251708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251708.P2113703706727638287

`A251707(n+1)-A001592(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A251708

/-- `A251707(n+1)-A001592(n)` -/
def P2113703706727638287.Spec : Prop :=
  ∀ n, P2113703706727638287.a n = A251708 n

theorem P2113703706727638287.correct : P2113703706727638287.Spec := by
  intro n
  simp only [A251708]

end A251708

/-! ## A251708.P2100390424110606084

`A251707(n+1)+A251707(n)-A251706(n+1)`
-/

namespace A251708.P2100390424110606084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251707 (n + 1) + (A251707 n - A251706 (n + 1))

end

end A251708.P2100390424110606084

namespace A251708

/-- `A251707(n+1)+A251707(n)-A251706(n+1)` -/
def P2100390424110606084.Spec : Prop :=
  ∀ n, P2100390424110606084.a n = A251708 n

theorem P2100390424110606084.correct : P2100390424110606084.Spec := by
  intro n
  simp only [A251708, Nat.add_sub_cancel, A251708.P2100390424110606084.a, A251708.P2113703706727638287.a, A001592, A001592.P16428630272280428975.a, A251706, A251706.P10800495160873675911.a, A251707, A251707.P16439731495366822498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251708

/-! ## A251708.P1173555700069463821

`A251706(n+2)-A251709(n+2)`
-/

namespace A251708.P1173555700069463821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 2) - A251709 (n + 2)

end

end A251708.P1173555700069463821

namespace A251708

/-- `A251706(n+2)-A251709(n+2)` -/
def P1173555700069463821.Spec : Prop :=
  ∀ n, P1173555700069463821.a n = A251708 n

end A251708

/-! ## A251708.P9603960128694356975

`Δ[A001592(n+2)]-(A001592(n+1)+A001592(n))`
-/

namespace A251708.P9603960128694356975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001592 (n + 1) + A001592 n)

end

end A251708.P9603960128694356975

namespace A251708

/-- `Δ[A001592(n+2)]-(A001592(n+1)+A001592(n))` -/
def P9603960128694356975.Spec : Prop :=
  ∀ n, P9603960128694356975.a n = A251708 n

theorem P9603960128694356975.correct : P9603960128694356975.Spec := by
  intro n
  simp only [A251708, Nat.add_sub_cancel, A251708.P9603960128694356975.f1, A251708.P9603960128694356975.a, A251708.P2113703706727638287.a, A001592, A001592.P16428630272280428975.a, A251707, A251707.P16439731495366822498.a, A251706, A251706.P10800495160873675911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251708

/-! ## A251708.P3437405134831373449

`A001592(n+3)-(A001592(n+1)+A001592(n+2)+A001592(n))`
-/

namespace A251708.P3437405134831373449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 3) - (A001592 (n + 1) + (A001592 (n + 2) + A001592 n))

end

end A251708.P3437405134831373449

namespace A251708

/-- `A001592(n+3)-(A001592(n+1)+A001592(n+2)+A001592(n))` -/
def P3437405134831373449.Spec : Prop :=
  ∀ n, P3437405134831373449.a n = A251708 n

theorem P3437405134831373449.correct : P3437405134831373449.Spec := by
  intro n
  simp only [A251708, Nat.add_sub_cancel, A251708.P3437405134831373449.a, A251708.P2113703706727638287.a, A001592, A001592.P16428630272280428975.a, A251707, A251707.P16439731495366822498.a, A251706, A251706.P10800495160873675911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251708

/-!
# A251709: 6-step Fibonacci sequence starting with (0,1,0,0,0,0).

The programs for A251709, the canonical program `A251709.P12918611578298396581` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251709 has offset 0).

The definition of A251709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251709.P12918611578298396581

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251709

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P12918611578298396581.Spec : Prop :=
  ∀ n, (P12918611578298396581.a n : ℤ) = A251709 n

theorem P12918611578298396581.correct : P12918611578298396581.Spec := by
  intro n
  simp only [A251709]

end A251709

/-! ## A251709.P11374286107968598510

`A251707(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A251709.P11374286107968598510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A251707 n - a (n - 2)

end

end A251709.P11374286107968598510

namespace A251709

/-- `A251707(n)-a(n-2)` -/
def P11374286107968598510.Spec : Prop :=
  ∀ n, P11374286107968598510.a n = A251709 n

end A251709

/-! ## A251709.P6440918568447497929

`A251708(n+1)-A001592(n)`
-/

namespace A251709.P6440918568447497929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251708 (n + 1) - A001592 n

end

end A251709.P6440918568447497929

namespace A251709

/-- `A251708(n+1)-A001592(n)` -/
def P6440918568447497929.Spec : Prop :=
  ∀ n, P6440918568447497929.a n = A251709 n

end A251709

/-! ## A251709.P14342679683855357260

`A251708(n+1)+A251707(n)-A251706(n+1)`
-/

namespace A251709.P14342679683855357260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251708 (n + 1) + (A251707 n - A251706 (n + 1))

end

end A251709.P14342679683855357260

namespace A251709

/-- `A251708(n+1)+A251707(n)-A251706(n+1)` -/
def P14342679683855357260.Spec : Prop :=
  ∀ n, P14342679683855357260.a n = A251709 n

end A251709

/-! ## A251709.P575206548383669682

`A251708(n+1)+A251708(n)-A251707(n+1)`
-/

namespace A251709.P575206548383669682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251708 (n + 1) + (A251708 n - A251707 (n + 1))

end

end A251709.P575206548383669682

namespace A251709

/-- `A251708(n+1)+A251708(n)-A251707(n+1)` -/
def P575206548383669682.Spec : Prop :=
  ∀ n, P575206548383669682.a n = A251709 n

end A251709

/-! ## A251709.P2553467117575683915

`A251706(n+3)-A251708(n+3)`
-/

namespace A251709.P2553467117575683915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 3) - A251708 (n + 3)

end

end A251709.P2553467117575683915

namespace A251709

/-- `A251706(n+3)-A251708(n+3)` -/
def P2553467117575683915.Spec : Prop :=
  ∀ n, P2553467117575683915.a n = A251709 n

end A251709

/-! ## A251709.P16700017021206042097

`A251708(n+1)-Δ[A000383(n)/5]`
-/

namespace A251709.P16700017021206042097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251708 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A251709.P16700017021206042097

namespace A251709

/-- `A251708(n+1)-Δ[A000383(n)/5]` -/
def P16700017021206042097.Spec : Prop :=
  ∀ n, P16700017021206042097.a n = (A251709 n : ℚ)

end A251709

/-! ## A251709.P3662299737676404563

`A251708(n+1)-(A143662(n+1)-2*A143662(n))`
-/

namespace A251709.P3662299737676404563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251708 (n + 1) - (A143662 (n + 1) - 2 * A143662 n)

end

end A251709.P3662299737676404563

namespace A251709

/-- `A251708(n+1)-(A143662(n+1)-2*A143662(n))` -/
def P3662299737676404563.Spec : Prop :=
  ∀ n, P3662299737676404563.a n = A251709 n

end A251709

/-!
# A251710: 7-step Fibonacci sequence starting with (0,0,0,0,0,1,0).

The programs for A251710, the canonical program `A251710.P11301060952533710946` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251710 has offset 0).

The definition of A251710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251710.P11301060952533710946

`Δ[A122189(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251710

/-- `Δ[A122189(n)]` -/
def P11301060952533710946.Spec : Prop :=
  ∀ n, P11301060952533710946.a n = A251710 n

theorem P11301060952533710946.correct : P11301060952533710946.Spec := by
  intro n
  simp only [A251710]

end A251710

/-! ## A251710.P12476255490489543963

`A122189(n+1)-A122189(n)`
-/

namespace A251710.P12476255490489543963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 (n + 1) - A122189 n

end

end A251710.P12476255490489543963

namespace A251710

/-- `A122189(n+1)-A122189(n)` -/
def P12476255490489543963.Spec : Prop :=
  ∀ n, P12476255490489543963.a n = A251710 n

theorem P12476255490489543963.correct : P12476255490489543963.Spec := by
  intro n
  simp only [A251710, Nat.add_sub_cancel, A251710.P12476255490489543963.a, A251710.P11301060952533710946.f1, A251710.P11301060952533710946.a, SequenceMachineLib.memo_apply]

end A251710

/-! ## A251710.P1424403347652649811

`Δ[A251714(n+1)-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A251710.P1424403347652649811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A251714 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251710.P1424403347652649811

namespace A251710

/-- `Δ[A251714(n+1)-a(n-1)]` -/
def P1424403347652649811.Spec : Prop :=
  ∀ n, P1424403347652649811.a n = A251710 n

end A251710

/-! ## A251710.P640695190600428759

`Δ[A251712(n+1)-A251713(n)]`
-/

namespace A251710.P640695190600428759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251712 (n + 1) - A251713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251710.P640695190600428759

namespace A251710

/-- `Δ[A251712(n+1)-A251713(n)]` -/
def P640695190600428759.Spec : Prop :=
  ∀ n, P640695190600428759.a n = A251710 n

theorem P640695190600428759.correct : P640695190600428759.Spec := by
  intro n
  simp only [A251710, Nat.add_sub_cancel, A251710.P640695190600428759.f1, A251710.P640695190600428759.a, A251710.P11301060952533710946.f1, A251710.P11301060952533710946.a, A122189, A122189.P7650355426111617210.a, A251712, A251712.P6674266782435870888.a, A251713, A251713.P10776453534213913153.a, A251711, A251711.P4002084624491784275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251710

/-! ## A251710.P16004024946527303745

`Δ[Δ[A060455(n)/6]]`
-/

namespace A251710.P16004024946527303745
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060455 n : ℚ) / 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251710.P16004024946527303745

namespace A251710

/-- `Δ[Δ[A060455(n)/6]]` -/
def P16004024946527303745.Spec : Prop :=
  ∀ n, P16004024946527303745.a n = (A251710 n : ℚ)

end A251710

/-! ## A251710.P17814454318442668749

`Δ[Δ[A151975(n)]-A151975(n)]`
-/

namespace A251710.P17814454318442668749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A151975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251710.P17814454318442668749

namespace A251710

/-- `Δ[Δ[A151975(n)]-A151975(n)]` -/
def P17814454318442668749.Spec : Prop :=
  ∀ n, P17814454318442668749.a n = A251710 n

end A251710

/-!
# A251711: 7-step Fibonacci sequence starting with (0,0,0,0,1,0,0).

The programs for A251711, the canonical program `A251711.P4002084624491784275` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251711 has offset 0).

The definition of A251711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251711.P4002084624491784275

`A251710(n+1)-A122189(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A251711

/-- `A251710(n+1)-A122189(n)` -/
def P4002084624491784275.Spec : Prop :=
  ∀ n, P4002084624491784275.a n = A251711 n

theorem P4002084624491784275.correct : P4002084624491784275.Spec := by
  intro n
  simp only [A251711]

end A251711

/-! ## A251711.P16283677970655011853

`A251710(n+1)+A251713(n)-A251712(n+1)`
-/

namespace A251711.P16283677970655011853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 1) + (A251713 n - A251712 (n + 1))

end

end A251711.P16283677970655011853

namespace A251711

/-- `A251710(n+1)+A251713(n)-A251712(n+1)` -/
def P16283677970655011853.Spec : Prop :=
  ∀ n, P16283677970655011853.a n = A251711 n

theorem P16283677970655011853.correct : P16283677970655011853.Spec := by
  intro n
  simp only [A251711, Nat.add_sub_cancel, A251711.P16283677970655011853.a, A251711.P4002084624491784275.a, A122189, A122189.P7650355426111617210.a, A251710, A251710.P11301060952533710946.f1, A251710.P11301060952533710946.a, A251712, A251712.P6674266782435870888.a, A251713, A251713.P10776453534213913153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251711

/-! ## A251711.P2932114946158305106

`A251710(n+1)+A251714(n)-A251713(n+1)`
-/

namespace A251711.P2932114946158305106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 1) + (A251714 n - A251713 (n + 1))

end

end A251711.P2932114946158305106

namespace A251711

/-- `A251710(n+1)+A251714(n)-A251713(n+1)` -/
def P2932114946158305106.Spec : Prop :=
  ∀ n, P2932114946158305106.a n = A251711 n

end A251711

/-! ## A251711.P17442717864294629369

`Δ[A122189(n+1)]-A122189(n)`
-/

namespace A251711.P17442717864294629369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122189 n

end

end A251711.P17442717864294629369

namespace A251711

/-- `Δ[A122189(n+1)]-A122189(n)` -/
def P17442717864294629369.Spec : Prop :=
  ∀ n, P17442717864294629369.a n = A251711 n

end A251711

/-! ## A251711.P10652572524607068127

`A122189(n+2)-A251714(n+2)`
-/

namespace A251711.P10652572524607068127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 (n + 2) - A251714 (n + 2)

end

end A251711.P10652572524607068127

namespace A251711

/-- `A122189(n+2)-A251714(n+2)` -/
def P10652572524607068127.Spec : Prop :=
  ∀ n, P10652572524607068127.a n = A251711 n

end A251711

/-!
# A251712: 7-step Fibonacci sequence starting with (0,0,0,1,0,0,0).

The programs for A251712, the canonical program `A251712.P6674266782435870888` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251712 has offset 0).

The definition of A251712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251712.P6674266782435870888

`A251711(n+1)-A122189(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A251712

/-- `A251711(n+1)-A122189(n)` -/
def P6674266782435870888.Spec : Prop :=
  ∀ n, P6674266782435870888.a n = A251712 n

theorem P6674266782435870888.correct : P6674266782435870888.Spec := by
  intro n
  simp only [A251712]

end A251712

/-! ## A251712.P7447335269311563335

`A251711(n+1)+A251711(n)-A251710(n+1)`
-/

namespace A251712.P7447335269311563335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 1) + (A251711 n - A251710 (n + 1))

end

end A251712.P7447335269311563335

namespace A251712

/-- `A251711(n+1)+A251711(n)-A251710(n+1)` -/
def P7447335269311563335.Spec : Prop :=
  ∀ n, P7447335269311563335.a n = A251712 n

theorem P7447335269311563335.correct : P7447335269311563335.Spec := by
  intro n
  simp only [A251712, Nat.add_sub_cancel, A251712.P7447335269311563335.a, A251712.P6674266782435870888.a, A122189, A122189.P7650355426111617210.a, A251710, A251710.P11301060952533710946.f1, A251710.P11301060952533710946.a, A251711, A251711.P4002084624491784275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251712

/-! ## A251712.P9247263012991920708

`A251711(n+1)+A251714(n)-A251713(n+1)`
-/

namespace A251712.P9247263012991920708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 1) + (A251714 n - A251713 (n + 1))

end

end A251712.P9247263012991920708

namespace A251712

/-- `A251711(n+1)+A251714(n)-A251713(n+1)` -/
def P9247263012991920708.Spec : Prop :=
  ∀ n, P9247263012991920708.a n = A251712 n

end A251712

/-! ## A251712.P14498363188606589731

`A251710(n+2)-A251714(n+2)`
-/

namespace A251712.P14498363188606589731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 2) - A251714 (n + 2)

end

end A251712.P14498363188606589731

namespace A251712

/-- `A251710(n+2)-A251714(n+2)` -/
def P14498363188606589731.Spec : Prop :=
  ∀ n, P14498363188606589731.a n = A251712 n

end A251712

/-! ## A251712.P4719391725156288564

`A122189(n+3)-A251713(n+3)`
-/

namespace A251712.P4719391725156288564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 (n + 3) - A251713 (n + 3)

end

end A251712.P4719391725156288564

namespace A251712

/-- `A122189(n+3)-A251713(n+3)` -/
def P4719391725156288564.Spec : Prop :=
  ∀ n, P4719391725156288564.a n = A251712 n

end A251712

/-!
# A251713: 7-step Fibonacci sequence starting with (0,0,1,0,0,0,0).

The programs for A251713, the canonical program `A251713.P10776453534213913153` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251713 has offset 0).

The definition of A251713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251713.P10776453534213913153

`A251712(n+1)-A122189(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251713

/-- `A251712(n+1)-A122189(n)` -/
def P10776453534213913153.Spec : Prop :=
  ∀ n, P10776453534213913153.a n = A251713 n

theorem P10776453534213913153.correct : P10776453534213913153.Spec := by
  intro n
  simp only [A251713]

end A251713

/-! ## A251713.P1119236244324358002

`A251712(n+1)+A251711(n)-A251710(n+1)`
-/

namespace A251713.P1119236244324358002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251712 (n + 1) + (A251711 n - A251710 (n + 1))

end

end A251713.P1119236244324358002

namespace A251713

/-- `A251712(n+1)+A251711(n)-A251710(n+1)` -/
def P1119236244324358002.Spec : Prop :=
  ∀ n, P1119236244324358002.a n = A251713 n

theorem P1119236244324358002.correct : P1119236244324358002.Spec := by
  intro n
  simp only [A251713, Nat.add_sub_cancel, A251713.P1119236244324358002.a, A251713.P10776453534213913153.a, A122189, A122189.P7650355426111617210.a, A251710, A251710.P11301060952533710946.f1, A251710.P11301060952533710946.a, A251711, A251711.P4002084624491784275.a, A251712, A251712.P6674266782435870888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251713

/-! ## A251713.P6097595803888338612

`A251712(n+1)+A251712(n)-A251711(n+1)`
-/

namespace A251713.P6097595803888338612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251712 (n + 1) + (A251712 n - A251711 (n + 1))

end

end A251713.P6097595803888338612

namespace A251713

/-- `A251712(n+1)+A251712(n)-A251711(n+1)` -/
def P6097595803888338612.Spec : Prop :=
  ∀ n, P6097595803888338612.a n = A251713 n

theorem P6097595803888338612.correct : P6097595803888338612.Spec := by
  intro n
  simp only [A251713, Nat.add_sub_cancel, A251713.P6097595803888338612.a, A251713.P10776453534213913153.a, A122189, A122189.P7650355426111617210.a, A251711, A251711.P4002084624491784275.a, A251712, A251712.P6674266782435870888.a, A251710, A251710.P11301060952533710946.f1, A251710.P11301060952533710946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251713

/-! ## A251713.P11617014861422628072

`A251711(n+2)-A251714(n+2)`
-/

namespace A251713.P11617014861422628072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 2) - A251714 (n + 2)

end

end A251713.P11617014861422628072

namespace A251713

/-- `A251711(n+2)-A251714(n+2)` -/
def P11617014861422628072.Spec : Prop :=
  ∀ n, P11617014861422628072.a n = A251713 n

end A251713

/-! ## A251713.P3040080544345480072

`Δ[A218189(n+1)-A218189(n+2)/2]`
-/

namespace A251713.P3040080544345480072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218189 (n + 1) : ℚ) - (A218189 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251713.P3040080544345480072

namespace A251713

/-- `Δ[A218189(n+1)-A218189(n+2)/2]` -/
def P3040080544345480072.Spec : Prop :=
  ∀ n, P3040080544345480072.a n = (A251713 n : ℚ)

end A251713

/-!
# A251714: 7-step Fibonacci sequence starting with (0,1,0,0,0,0,0).

The programs for A251714, the canonical program `A251714.P7486523241703354123` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251714 has offset 0).

The definition of A251714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251714.P7486523241703354123

`A251712(n)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251714

/-- `A251712(n)-a(n-2)` -/
def P7486523241703354123.Spec : Prop :=
  ∀ n, P7486523241703354123.a n = A251714 n

theorem P7486523241703354123.correct : P7486523241703354123.Spec := by
  intro n
  simp only [A251714]

end A251714

/-! ## A251714.P7183747572797739481

`A251713(n+1)-A122189(n)`
-/

namespace A251714.P7183747572797739481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251713 (n + 1) - A122189 n

end

end A251714.P7183747572797739481

namespace A251714

/-- `A251713(n+1)-A122189(n)` -/
def P7183747572797739481.Spec : Prop :=
  ∀ n, P7183747572797739481.a n = A251714 n

end A251714

/-! ## A251714.P12719551603479943380

`A251713(n+1)+A251711(n)-A251710(n+1)`
-/

namespace A251714.P12719551603479943380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251713 (n + 1) + (A251711 n - A251710 (n + 1))

end

end A251714.P12719551603479943380

namespace A251714

/-- `A251713(n+1)+A251711(n)-A251710(n+1)` -/
def P12719551603479943380.Spec : Prop :=
  ∀ n, P12719551603479943380.a n = A251714 n

end A251714

/-! ## A251714.P9279292428754551265

`A251713(n+1)+A251712(n)-A251711(n+1)`
-/

namespace A251714.P9279292428754551265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251713 (n + 1) + (A251712 n - A251711 (n + 1))

end

end A251714.P9279292428754551265

namespace A251714

/-- `A251713(n+1)+A251712(n)-A251711(n+1)` -/
def P9279292428754551265.Spec : Prop :=
  ∀ n, P9279292428754551265.a n = A251714 n

end A251714

/-! ## A251714.P4142433836296394593

`A251713(n+1)+A251713(n)-A251712(n+1)`
-/

namespace A251714.P4142433836296394593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251713 (n + 1) + (A251713 n - A251712 (n + 1))

end

end A251714.P4142433836296394593

namespace A251714

/-- `A251713(n+1)+A251713(n)-A251712(n+1)` -/
def P4142433836296394593.Spec : Prop :=
  ∀ n, P4142433836296394593.a n = A251714 n

end A251714

/-! ## A251714.P8399285210799266169

`A251711(n+3)-A251713(n+3)`
-/

namespace A251714.P8399285210799266169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 3) - A251713 (n + 3)

end

end A251714.P8399285210799266169

namespace A251714

/-- `A251711(n+3)-A251713(n+3)` -/
def P8399285210799266169.Spec : Prop :=
  ∀ n, P8399285210799266169.a n = A251714 n

end A251714

/-!
# A251715: Array: A251637(n,k) / prime(n).

The programs for A251715, there is no canonical definition to state claims against.
-/

/-! ## A251715.P11034045006124410471

`A251637(n+1)/A104887(n+1)`
-/

namespace A251715.P11034045006124410471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251637 (n + 1) : ℚ) / (A104887 (n + 1) : ℚ)

end

end A251715.P11034045006124410471

/-! ## A251715.P6567836889991548256

`A251637(n+1)/A067747(A099375(n))`
-/

namespace A251715.P6567836889991548256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251637 (n + 1) : ℚ) / (A067747 (A099375 n).toNat : ℚ)

end

end A251715.P6567836889991548256

/-! ## A251715.P7099893026750588513

`A251637(n+1)/A037126(A278818(n))`
-/

namespace A251715.P7099893026750588513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251637 (n + 1) : ℚ) / (A037126 (A278818 n).toNat : ℚ)

end

end A251715.P7099893026750588513

/-! ## A251715.P6552184454086921774

`A251637(n+1)/A000040(A004736(n+1))`
-/

namespace A251715.P6552184454086921774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251637 (n + 1) : ℚ) / (A000040 (A004736 (n + 1)).toNat : ℚ)

end

end A251715.P6552184454086921774

/-! ## A251715.P12735497881662706101

`A098550(A251716(n+1))/A104887(n+1)`
-/

namespace A251715.P12735497881662706101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098550 (A251716 (n + 1)).toNat : ℚ) / (A104887 (n + 1) : ℚ)

end

end A251715.P12735497881662706101

/-! ## A251715.P7135128623474082440

`A251637(n+1)/A019565(A130321(n))`
-/

namespace A251715.P7135128623474082440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251637 (n + 1) : ℚ) / (A019565 (A130321 n).toNat : ℚ)

end

end A251715.P7135128623474082440

/-!
# A251716: Array of positions of A251637(n,k) in A098550.

The programs for A251716, there is no canonical definition to state claims against.
-/

/-! ## A251716.P6389688796191340267

`A098551(A251637(n+1))`
-/

namespace A251716.P6389688796191340267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251637 (n + 1)).toNat

end

end A251716.P6389688796191340267

/-! ## A251716.P10521152931816688836

`A098551(A104887(n+1)*A251715(n+1))`
-/

namespace A251716.P10521152931816688836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A104887 (n + 1) * A251715 (n + 1)).toNat

end

end A251716.P10521152931816688836

/-!
# A251717: a(n) = smallest positive integer k such that A083221(k, n) has at most two prime factors (is a prime or semiprime).

The programs for A251717, there is no canonical definition to state claims against.
-/

/-! ## A251717.P2708929339867771967

`A010553(A005408(n)^A334107(n+1))`
-/

namespace A251717.P2708929339867771967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((A005408 n : ℚ) ^ (A334107 (n + 1) : ℤ))).toNat

end

end A251717.P2708929339867771967

/-! ## A251717.P2417668033050240650

`A010553(A130773(n)^A334107(n+1))`
-/

namespace A251717.P2417668033050240650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((A130773 n : ℚ) ^ (A334107 (n + 1) : ℤ))).toNat

end

end A251717.P2417668033050240650

/-! ## A251717.P10898605267143773064

`A010553(A347694(n+1)^A334107(n+1))`
-/

namespace A251717.P10898605267143773064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((A347694 (n + 1) : ℚ) ^ (A334107 (n + 1) : ℤ))).toNat

end

end A251717.P10898605267143773064

/-! ## A251717.P11472442387236807295

`A073184(A014673(n+1)^A014673(2*n+1))`
-/

namespace A251717.P11472442387236807295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (SequenceMachineLib.roundAway ((A014673 (n + 1) : ℚ) ^ (A014673 (2 * n + 1) : ℤ))).toNat

end

end A251717.P11472442387236807295

/-!
# A251718: a(n) = smallest positive integer k such that both A083221(k, n) and A083221(k+1, n) have at most two prime factors (are primes or semiprimes).

The programs for A251718, there is no canonical definition to state claims against.
-/

/-! ## A251718.P6166180323645450781

`A000120(A164316(n+8))-A000120(n+8)`
-/

namespace A251718.P6166180323645450781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A164316 (n + 8)).toNat - A000120 (n + 8)

end

end A251718.P6166180323645450781

/-! ## A251718.P12087495753407647747

`A033264(xor(A098859(3*n+4), A216345(n+1)))`
-/

namespace A251718.P12087495753407647747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (Int.xor (A098859 (3 * n + 4)) (A216345 (n + 1))).toNat

end

end A251718.P12087495753407647747

/-!
# A251719: a(n) = the least k such that A250474(k) > n.

The programs for A251719, the canonical program `A251719.P1076790489604256652` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251719 has offset 1).

The definition of A251719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251719.P7597538282312404297

`A055396(A251724(n+1))`
-/

namespace A251719.P7597538282312404297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A251724 (n + 1)).toNat

end

end A251719.P7597538282312404297

namespace A251719

/-- `A055396(A251724(n+1))` -/
def P7597538282312404297.Spec : Prop :=
  ∀ n, P7597538282312404297.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P2394701380021800268

`A284263(n)+1`
-/

namespace A251719.P2394701380021800268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284263 n + 1

end

end A251719.P2394701380021800268

namespace A251719

/-- `A284263(n)+1` -/
def P2394701380021800268.Spec : Prop :=
  ∀ n, P2394701380021800268.a n = A251719 (n + 1)

theorem P2394701380021800268.correct : P2394701380021800268.Spec := by
  intro n
  simp only [A251719, Nat.add_sub_cancel, A251719.P2394701380021800268.a, A251719.P1076790489604256652.f2, A251719.P1076790489604256652.f1, A251719.P1076790489604256652.a, A250473, A250473.P15728952414264512561.a, A284263, A284263.P2360290570486179856.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251719

/-! ## A251719.P1076790489604256652

`∑[char[A250473(n+1)]]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251719

/-- `∑[char[A250473(n+1)]]+1` -/
def P1076790489604256652.Spec : Prop :=
  ∀ n, (P1076790489604256652.a n : ℤ) = A251719 (n + 1)

theorem P1076790489604256652.correct : P1076790489604256652.Spec := by
  intro n
  simp only [A251719, Nat.add_sub_cancel]

end A251719

/-! ## A251719.P12393534600455969758

`comp[A062773(n+1)]+1-n`
-/

namespace A251719.P12393534600455969758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A251719.P12393534600455969758

namespace A251719

/-- `comp[A062773(n+1)]+1-n` -/
def P12393534600455969758.Spec : Prop :=
  ∀ n, P12393534600455969758.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P6539418194147356086

`comp[∑[A050216(n)]+1]+1-n`
-/

namespace A251719.P6539418194147356086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A251719.P6539418194147356086

namespace A251719

/-- `comp[∑[A050216(n)]+1]+1-n` -/
def P6539418194147356086.Spec : Prop :=
  ∀ n, P6539418194147356086.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P12947575934365645062

`A001316(A001316(n))-(1-A284263(n))`
-/

namespace A251719.P12947575934365645062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A284263 n)

end

end A251719.P12947575934365645062

namespace A251719

/-- `A001316(A001316(n))-(1-A284263(n))` -/
def P12947575934365645062.Spec : Prop :=
  ∀ n, P12947575934365645062.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P5121199580638910657

`A252459(A001747(n+1))+1`
-/

namespace A251719.P5121199580638910657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A001747 (n + 1)).toNat + 1

end

end A251719.P5121199580638910657

namespace A251719

/-- `A252459(A001747(n+1))+1` -/
def P5121199580638910657.Spec : Prop :=
  ∀ n, P5121199580638910657.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P968769937672025461

`A252459(A074845(n+1))+1`
-/

namespace A251719.P968769937672025461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A074845 (n + 1)).toNat + 1

end

end A251719.P968769937672025461

namespace A251719

/-- `A252459(A074845(n+1))+1` -/
def P968769937672025461.Spec : Prop :=
  ∀ n, P968769937672025461.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P11182383792411446084

`A252459(A077017(n+1))+1`
-/

namespace A251719.P11182383792411446084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A077017 (n + 1)).toNat + 1

end

end A251719.P11182383792411446084

namespace A251719

/-- `A252459(A077017(n+1))+1` -/
def P11182383792411446084.Spec : Prop :=
  ∀ n, P11182383792411446084.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P17184431756323134197

`A252459(A161344(n+1))+1`
-/

namespace A251719.P17184431756323134197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A161344 (n + 1)).toNat + 1

end

end A251719.P17184431756323134197

namespace A251719

/-- `A252459(A161344(n+1))+1` -/
def P17184431756323134197.Spec : Prop :=
  ∀ n, P17184431756323134197.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P6868525396218756008

`A000005(2^A284263(n))`
-/

namespace A251719.P6868525396218756008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A284263 n : ℤ))).toNat

end

end A251719.P6868525396218756008

namespace A251719

/-- `A000005(2^A284263(n))` -/
def P6868525396218756008.Spec : Prop :=
  ∀ n, P6868525396218756008.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P1248746978743442399

`A252459(A083251(n+1)/2)+1`
-/

namespace A251719.P1248746978743442399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (SequenceMachineLib.roundAway ((A083251 (n + 1) : ℚ) / 2)).toNat + 1

end

end A251719.P1248746978743442399

namespace A251719

/-- `A252459(A083251(n+1)/2)+1` -/
def P1248746978743442399.Spec : Prop :=
  ∀ n, P1248746978743442399.a n = A251719 (n + 1)

end A251719

/-! ## A251719.P997341261422118528

`A252459(A083251(n+1))+1`
-/

namespace A251719.P997341261422118528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A083251 (n + 1)).toNat + 1

end

end A251719.P997341261422118528

namespace A251719

/-- `A252459(A083251(n+1))+1` -/
def P997341261422118528.Spec : Prop :=
  ∀ n, P997341261422118528.a n = A251719 (n + 1)

end A251719

/-!
# A251720: a(n) = (p_n)^2 * p_{n+1}, where p_n is the n-th prime, A000040(n).

The programs for A251720, the canonical program `A251720.P7553802040136073168` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251720 has offset 1).

The definition of A251720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251720.P7553802040136073168

`A000040(n+1)*A006094(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A251720

/-- `A000040(n+1)*A006094(n+1)` -/
def P7553802040136073168.Spec : Prop :=
  ∀ n, P7553802040136073168.a n = A251720 (n + 1)

theorem P7553802040136073168.correct : P7553802040136073168.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel]

end A251720

/-! ## A251720.P4083790344402433977

`A001248(n+1)*A000040(n+2)`
-/

namespace A251720.P4083790344402433977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A000040 (n + 2)

end

end A251720.P4083790344402433977

namespace A251720

/-- `A001248(n+1)*A000040(n+2)` -/
def P4083790344402433977.Spec : Prop :=
  ∀ n, P4083790344402433977.a n = A251720 (n + 1)

theorem P4083790344402433977.correct : P4083790344402433977.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P4083790344402433977.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P7597555856443722144

`A000040(n+1)*A000040(n+1)*A000040(n+2)`
-/

namespace A251720.P7597555856443722144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 1) * A000040 (n + 2)

end

end A251720.P7597555856443722144

namespace A251720

/-- `A000040(n+1)*A000040(n+1)*A000040(n+2)` -/
def P7597555856443722144.Spec : Prop :=
  ∀ n, P7597555856443722144.a n = A251720 (n + 1)

theorem P7597555856443722144.correct : P7597555856443722144.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P7597555856443722144.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P5847777628346604871

`Δ[A007504(n)]*A006094(n+1)`
-/

namespace A251720.P5847777628346604871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006094 (n + 1)

end

end A251720.P5847777628346604871

namespace A251720

/-- `Δ[A007504(n)]*A006094(n+1)` -/
def P5847777628346604871.Spec : Prop :=
  ∀ n, P5847777628346604871.a n = A251720 (n + 1)

end A251720

/-! ## A251720.P16745179374182233493

`A001248(n+1)*A065091(n+1)`
-/

namespace A251720.P16745179374182233493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A065091 (n + 1)

end

end A251720.P16745179374182233493

namespace A251720

/-- `A001248(n+1)*A065091(n+1)` -/
def P16745179374182233493.Spec : Prop :=
  ∀ n, P16745179374182233493.a n = A251720 (n + 1)

theorem P16745179374182233493.correct : P16745179374182233493.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P16745179374182233493.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P5351267367933463540

`A166329(n+1)/A065091(n+1)`
-/

namespace A251720.P5351267367933463540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166329 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A251720.P5351267367933463540

namespace A251720

/-- `A166329(n+1)/A065091(n+1)` -/
def P5351267367933463540.Spec : Prop :=
  ∀ n, P5351267367933463540.a n = (A251720 (n + 1) : ℚ)

end A251720

/-! ## A251720.P15821758248877373

`lcm(A001248(n+1), A006094(n+1))`
-/

namespace A251720.P15821758248877373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001248 (n + 1)) (A006094 (n + 1))

end

end A251720.P15821758248877373

namespace A251720

/-- `lcm(A001248(n+1), A006094(n+1))` -/
def P15821758248877373.Spec : Prop :=
  ∀ n, (P15821758248877373.a n : ℤ) = A251720 (n + 1)

end A251720

/-! ## A251720.P3324484625799853775

`Δ[A007504(n)]²*A065091(n+1)`
-/

namespace A251720.P3324484625799853775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A065091 (n + 1)

end

end A251720.P3324484625799853775

namespace A251720

/-- `Δ[A007504(n)]²*A065091(n+1)` -/
def P3324484625799853775.Spec : Prop :=
  ∀ n, P3324484625799853775.a n = A251720 (n + 1)

end A251720

/-! ## A251720.P272608248851770688

`Δ[A008348(n)]²*A065091(n+1)`
-/

namespace A251720.P272608248851770688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A065091 (n + 1)

end

end A251720.P272608248851770688

namespace A251720

/-- `Δ[A008348(n)]²*A065091(n+1)` -/
def P272608248851770688.Spec : Prop :=
  ∀ n, P272608248851770688.a n = A251720 (n + 1)

end A251720

/-! ## A251720.P6461917364850203583

`Δ[A022837(n)]²*A065091(n+1)`
-/

namespace A251720.P6461917364850203583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A065091 (n + 1)

end

end A251720.P6461917364850203583

namespace A251720

/-- `Δ[A022837(n)]²*A065091(n+1)` -/
def P6461917364850203583.Spec : Prop :=
  ∀ n, P6461917364850203583.a n = A251720 (n + 1)

end A251720

/-! ## A251720.P351000335068308380

`Δ[A064365(n)]²*A065091(n+1)`
-/

namespace A251720.P351000335068308380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A065091 (n + 1)

end

end A251720.P351000335068308380

namespace A251720

/-- `Δ[A064365(n)]²*A065091(n+1)` -/
def P351000335068308380.Spec : Prop :=
  ∀ n, P351000335068308380.a n = A251720 (n + 1)

end A251720

/-! ## A251720.P12272612256440303570

`A000040(n+1)²*A065091(n+1)`
-/

namespace A251720.P12272612256440303570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A065091 (n + 1)

end

end A251720.P12272612256440303570

namespace A251720

/-- `A000040(n+1)²*A065091(n+1)` -/
def P12272612256440303570.Spec : Prop :=
  ∀ n, P12272612256440303570.a n = A251720 (n + 1)

theorem P12272612256440303570.correct : P12272612256440303570.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P12272612256440303570.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P15062415365636479435

`A273960(n+1)²*A065091(n+1)`
-/

namespace A251720.P15062415365636479435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 * A065091 (n + 1)

end

end A251720.P15062415365636479435

namespace A251720

/-- `A273960(n+1)²*A065091(n+1)` -/
def P15062415365636479435.Spec : Prop :=
  ∀ n, P15062415365636479435.a n = A251720 (n + 1)

end A251720

/-! ## A251720.P10451391931668012027

`sqrt(A166329(n+1))*A000040(n+1)`
-/

namespace A251720.P10451391931668012027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ) * (A000040 (n + 1) : ℝ)

end

end A251720.P10451391931668012027

namespace A251720

/-- `sqrt(A166329(n+1))*A000040(n+1)` -/
def P10451391931668012027.Spec : Prop :=
  ∀ n, P10451391931668012027.a n = (A251720 (n + 1) : ℝ)

end A251720

/-! ## A251720.P5463459577097172955

`(A006254(n+1)+A005097(n+1))*A001248(n+1)`
-/

namespace A251720.P5463459577097172955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) + A005097 (n + 1)) * A001248 (n + 1)

end

end A251720.P5463459577097172955

namespace A251720

/-- `(A006254(n+1)+A005097(n+1))*A001248(n+1)` -/
def P5463459577097172955.Spec : Prop :=
  ∀ n, P5463459577097172955.a n = A251720 (n + 1)

end A251720

/-! ## A251720.P8144673378381440953

`(A065091(n+1)+A062235(n+1))*A065091(n+1)`
-/

namespace A251720.P8144673378381440953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) + A062235 (n + 1)) * A065091 (n + 1)

end

end A251720.P8144673378381440953

namespace A251720

/-- `(A065091(n+1)+A062235(n+1))*A065091(n+1)` -/
def P8144673378381440953.Spec : Prop :=
  ∀ n, P8144673378381440953.a n = A251720 (n + 1)

theorem P8144673378381440953.correct : P8144673378381440953.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P8144673378381440953.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A062235, A062235.P6585490763339673002.a, A065091, A065091.P6971844946592549357.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P7753942259414190475

`(A167770(n+1)+A113396(n+1))*A001248(n+1)`
-/

namespace A251720.P7753942259414190475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167770 (n + 1) + A113396 (n + 1)) * A001248 (n + 1)

end

end A251720.P7753942259414190475

namespace A251720

/-- `(A167770(n+1)+A113396(n+1))*A001248(n+1)` -/
def P7753942259414190475.Spec : Prop :=
  ∀ n, P7753942259414190475.a n = A251720 (n + 1)

theorem P7753942259414190475.correct : P7753942259414190475.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P7753942259414190475.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A113396, A113396.P8242604359773002746.a, A167770, A167770.P15250803839821873356.a, A065091, A065091.P6971844946592549357.a, A069482, A069482.P16607122436003558489.f1, A069482.P16607122436003558489.a, A066872, A066872.P16309924819967402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P11370516462461361063

`A006094(n+1)*A008864(n+1)-A006094(n+1)`
-/

namespace A251720.P11370516462461361063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A008864 (n + 1) - A006094 (n + 1)

end

end A251720.P11370516462461361063

namespace A251720

/-- `A006094(n+1)*A008864(n+1)-A006094(n+1)` -/
def P11370516462461361063.Spec : Prop :=
  ∀ n, P11370516462461361063.a n = A251720 (n + 1)

theorem P11370516462461361063.correct : P11370516462461361063.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P11370516462461361063.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P4252188833659756639

`(A001248(n+1)-A062235(n+1))*A001248(n+1)`
-/

namespace A251720.P4252188833659756639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) - A062235 (n + 1)) * A001248 (n + 1)

end

end A251720.P4252188833659756639

namespace A251720

/-- `(A001248(n+1)-A062235(n+1))*A001248(n+1)` -/
def P4252188833659756639.Spec : Prop :=
  ∀ n, P4252188833659756639.a n = A251720 (n + 1)

theorem P4252188833659756639.correct : P4252188833659756639.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P4252188833659756639.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A062235, A062235.P6585490763339673002.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-! ## A251720.P6741763511441940141

`(A123134(n+1)-A006094(n+1))*A006094(n+1)`
-/

namespace A251720.P6741763511441940141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123134 (n + 1) - A006094 (n + 1)) * A006094 (n + 1)

end

end A251720.P6741763511441940141

namespace A251720

/-- `(A123134(n+1)-A006094(n+1))*A006094(n+1)` -/
def P6741763511441940141.Spec : Prop :=
  ∀ n, P6741763511441940141.a n = A251720 (n + 1)

theorem P6741763511441940141.correct : P6741763511441940141.Spec := by
  intro n
  simp only [A251720, Nat.add_sub_cancel, A251720.P6741763511441940141.a, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A123134, A123134.P8662972197791221738.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251720

/-!
# A251721: Square array of permutations: A(row,col) = A249822(row, A249821(row+1, col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A251721, there is no canonical definition to state claims against.
-/

/-! ## A251721.P7675188209124584590

`A078898(A266645(A083221(n+2)))`
-/

namespace A251721.P7675188209124584590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A266645 (A083221 (n + 2)).toNat).toNat

end

end A251721.P7675188209124584590

/-! ## A251721.P13970199333940624631

`A078898(A266645(A249817(A246278(n+2))))`
-/

namespace A251721.P13970199333940624631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A266645 (A249817 (A246278 (n + 2)).toNat).toNat).toNat

end

end A251721.P13970199333940624631

/-! ## A251721.P15355623385528713964

`A000120(A172221(A209434(n)))`
-/

namespace A251721.P15355623385528713964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A172221 (A209434 n).toNat).toNat

end

end A251721.P15355623385528713964

/-! ## A251721.P11431234057575236943

`A251722(n+1)-A051584(A174255(n+1))`
-/

namespace A251721.P11431234057575236943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251722 (n + 1) - A051584 (A174255 (n + 1)).toNat

end

end A251721.P11431234057575236943

/-! ## A251721.P8482436427761023934

`A104543(A134134(n+1))`
-/

namespace A251721.P8482436427761023934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104543 (A134134 (n + 1)).toNat

end

end A251721.P8482436427761023934

/-!
# A251722: Square array of permutations: A(row,col) = A249822(row+1, A249821(row, col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A251722, there is no canonical definition to state claims against.
-/

/-! ## A251722.P10810069258091392414

`A249810(A083221(n+2))`
-/

namespace A251722.P10810069258091392414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A083221 (n + 2)).toNat

end

end A251722.P10810069258091392414

/-! ## A251722.P8180595793061854823

`A249810(A249741(n+1)+1)`
-/

namespace A251722.P8180595793061854823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A249741 (n + 1) + 1).toNat

end

end A251722.P8180595793061854823

/-! ## A251722.P3518756516748627397

`A078898(A003961(A249741(n+1)+1))`
-/

namespace A251722.P3518756516748627397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A249741 (n + 1) + 1).toNat).toNat

end

end A251722.P3518756516748627397

/-! ## A251722.P12624021776851943851

`A078898(or(1, A003961(A083221(n+2))))`
-/

namespace A251722.P12624021776851943851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.lor 1 (A003961 (A083221 (n + 2)).toNat)).toNat

end

end A251722.P12624021776851943851

/-! ## A251722.P9743351699436306920

`A249820(A083221(n+2))+A004736(n+1)`
-/

namespace A251722.P9743351699436306920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (A083221 (n + 2)).toNat + A004736 (n + 1)

end

end A251722.P9743351699436306920

/-! ## A251722.P11967476500766356974

`A249820(A083221(n+2))+A025581(n)+1`
-/

namespace A251722.P11967476500766356974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (A083221 (n + 2)).toNat + (A025581 n + 1)

end

end A251722.P11967476500766356974

/-! ## A251722.P5201373702596266760

`A078898(A003961(A255408(A255127(n+2))))`
-/

namespace A251722.P5201373702596266760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (A255408 (A255127 (n + 2)).toNat).toNat).toNat

end

end A251722.P5201373702596266760

/-! ## A251722.P17332090963212542797

`A249820(A083221(n+2))+A055396(A083140(n+2))`
-/

namespace A251722.P17332090963212542797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (A083221 (n + 2)).toNat + A055396 (A083140 (n + 2)).toNat

end

end A251722.P17332090963212542797

/-! ## A251722.P14052007369391805854

`A078898(A003961(A083221(n+2)))%A000040(n+1)`
-/

namespace A251722.P14052007369391805854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A003961 (A083221 (n + 2)).toNat).toNat) (A000040 (n + 1))

end

end A251722.P14052007369391805854

/-! ## A251722.P12154332685701843319

`A078898(A003961(A083221(n+2)%A030078(n+1)))`
-/

namespace A251722.P12154332685701843319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003961 (Int.tmod (A083221 (n + 2)) (A030078 (n + 1))).toNat).toNat

end

end A251722.P12154332685701843319

/-!
# A251723: First differences of A054272, A250473 and A250474: a(n) = A054272(n+1) - A054272(n).

The programs for A251723, the canonical program `A251723.P8283630235415226138` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251723 has offset 1).

The definition of A251723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251723.P8283630235415226138

`A054272(n+2)-A054272(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A251723

/-- `A054272(n+2)-A054272(n+1)` -/
def P8283630235415226138.Spec : Prop :=
  ∀ n, P8283630235415226138.a n = A251723 (n + 1)

theorem P8283630235415226138.correct : P8283630235415226138.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel]

end A251723

/-! ## A251723.P17187475164319638597

`A256447(n+1)+A256448(n+1)`
-/

namespace A251723.P17187475164319638597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + A256448 (n + 1)

end

end A251723.P17187475164319638597

namespace A251723

/-- `A256447(n+1)+A256448(n+1)` -/
def P17187475164319638597.Spec : Prop :=
  ∀ n, P17187475164319638597.a n = A251723 (n + 1)

theorem P17187475164319638597.correct : P17187475164319638597.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P17187475164319638597.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P12520648425068049768

`Δ[A250474(n+1)]`
-/

namespace A251723.P12520648425068049768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251723.P12520648425068049768

namespace A251723

/-- `Δ[A250474(n+1)]` -/
def P12520648425068049768.Spec : Prop :=
  ∀ n, P12520648425068049768.a n = A251723 (n + 1)

theorem P12520648425068049768.correct : P12520648425068049768.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P12520648425068049768.f1, A251723.P12520648425068049768.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P17824905458592516876

`A050216(n+1)-1`
-/

namespace A251723.P17824905458592516876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) - 1

end

end A251723.P17824905458592516876

namespace A251723

/-- `A050216(n+1)-1` -/
def P17824905458592516876.Spec : Prop :=
  ∀ n, P17824905458592516876.a n = A251723 (n + 1)

end A251723

/-! ## A251723.P4459369130945955040

`Δ[∑[A050216(n)]-n]`
-/

namespace A251723.P4459369130945955040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251723.P4459369130945955040

namespace A251723

/-- `Δ[∑[A050216(n)]-n]` -/
def P4459369130945955040.Spec : Prop :=
  ∀ n, P4459369130945955040.a n = A251723 (n + 1)

end A251723

/-! ## A251723.P11592668273756023756

`Δ[A000879(n+1)]-1`
-/

namespace A251723.P11592668273756023756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A251723.P11592668273756023756

namespace A251723

/-- `Δ[A000879(n+1)]-1` -/
def P11592668273756023756.Spec : Prop :=
  ∀ n, P11592668273756023756.a n = A251723 (n + 1)

theorem P11592668273756023756.correct : P11592668273756023756.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P11592668273756023756.f1, A251723.P11592668273756023756.a, A251723.P8283630235415226138.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P12012415976791057527

`A250474(n+2)-A250474(n+1)`
-/

namespace A251723.P12012415976791057527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 2) - A250474 (n + 1)

end

end A251723.P12012415976791057527

namespace A251723

/-- `A250474(n+2)-A250474(n+1)` -/
def P12012415976791057527.Spec : Prop :=
  ∀ n, P12012415976791057527.a n = A251723 (n + 1)

theorem P12012415976791057527.correct : P12012415976791057527.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P12012415976791057527.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P15945808837071014264

`A256468(n+1)+A256469(n+1)-1`
-/

namespace A251723.P15945808837071014264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + (A256469 (n + 1) - 1)

end

end A251723.P15945808837071014264

namespace A251723

/-- `A256468(n+1)+A256469(n+1)-1` -/
def P15945808837071014264.Spec : Prop :=
  ∀ n, P15945808837071014264.a n = A251723 (n + 1)

theorem P15945808837071014264.correct : P15945808837071014264.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P15945808837071014264.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A256468, A256468.P15833489412511418299.a, A256469, A256469.P956244140118081997.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P8567673070739998702

`A000879(n+2)-(A000879(n+1)+1)`
-/

namespace A251723.P8567673070739998702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 2) - (A000879 (n + 1) + 1)

end

end A251723.P8567673070739998702

namespace A251723

/-- `A000879(n+2)-(A000879(n+1)+1)` -/
def P8567673070739998702.Spec : Prop :=
  ∀ n, P8567673070739998702.a n = A251723 (n + 1)

theorem P8567673070739998702.correct : P8567673070739998702.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P8567673070739998702.a, A251723.P8283630235415226138.a, A000879, A000879.P11642258310759995278.a, A054272, A054272.P16500536369367462355.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P12509107539892542716

`Δ[A054272(n+1)]`
-/

namespace A251723.P12509107539892542716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251723.P12509107539892542716

namespace A251723

/-- `Δ[A054272(n+1)]` -/
def P12509107539892542716.Spec : Prop :=
  ∀ n, P12509107539892542716.a n = A251723 (n + 1)

theorem P12509107539892542716.correct : P12509107539892542716.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P12509107539892542716.f1, A251723.P12509107539892542716.a, A251723.P8283630235415226138.a, SequenceMachineLib.memo_apply]

end A251723

/-! ## A251723.P2837789612880694013

`Δ[A250473(n+1)]`
-/

namespace A251723.P2837789612880694013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251723.P2837789612880694013

namespace A251723

/-- `Δ[A250473(n+1)]` -/
def P2837789612880694013.Spec : Prop :=
  ∀ n, P2837789612880694013.a n = A251723 (n + 1)

theorem P2837789612880694013.correct : P2837789612880694013.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P2837789612880694013.f1, A251723.P2837789612880694013.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P2793901325919578315

`A250473(n+2)-A250473(n+1)`
-/

namespace A251723.P2793901325919578315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 2) - A250473 (n + 1)

end

end A251723.P2793901325919578315

namespace A251723

/-- `A250473(n+2)-A250473(n+1)` -/
def P2793901325919578315.Spec : Prop :=
  ∀ n, P2793901325919578315.a n = A251723 (n + 1)

theorem P2793901325919578315.correct : P2793901325919578315.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P2793901325919578315.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P1860697119122687508

`A001223(n+1)+A066883(n+2)-A066883(n+1)`
-/

namespace A251723.P1860697119122687508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A066883 (n + 2) - A066883 (n + 1))

end

end A251723.P1860697119122687508

namespace A251723

/-- `A001223(n+1)+A066883(n+2)-A066883(n+1)` -/
def P1860697119122687508.Spec : Prop :=
  ∀ n, P1860697119122687508.a n = A251723 (n + 1)

theorem P1860697119122687508.correct : P1860697119122687508.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P1860697119122687508.a, A251723.P8283630235415226138.a, A001223, A001223.P5083310856331133973.a, A054272, A054272.P16500536369367462355.a, A066883, A066883.P6672544760734734469.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P13345149143208960448

`A000879(n+2)-A062773(n+1)`
-/

namespace A251723.P13345149143208960448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 2) - A062773 (n + 1)

end

end A251723.P13345149143208960448

namespace A251723

/-- `A000879(n+2)-A062773(n+1)` -/
def P13345149143208960448.Spec : Prop :=
  ∀ n, P13345149143208960448.a n = A251723 (n + 1)

end A251723

/-! ## A251723.P15932410670114871694

`Δ[A062773(n+1)]-1`
-/

namespace A251723.P15932410670114871694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A251723.P15932410670114871694

namespace A251723

/-- `Δ[A062773(n+1)]-1` -/
def P15932410670114871694.Spec : Prop :=
  ∀ n, P15932410670114871694.a n = A251723 (n + 1)

end A251723

/-! ## A251723.P9854443683222550533

`Δ[A181962(n+1)]-2`
-/

namespace A251723.P9854443683222550533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A251723.P9854443683222550533

namespace A251723

/-- `Δ[A181962(n+1)]-2` -/
def P9854443683222550533.Spec : Prop :=
  ∀ n, P9854443683222550533.a n = A251723 (n + 1)

theorem P9854443683222550533.correct : P9854443683222550533.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P9854443683222550533.f1, A251723.P9854443683222550533.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A181962, A181962.P15147201020200271264.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P9462371950069306178

`A256446(n+1)+A256468(n+1)-A256468(n+2)`
-/

namespace A251723.P9462371950069306178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256446 (n + 1) + (A256468 (n + 1) - A256468 (n + 2))

end

end A251723.P9462371950069306178

namespace A251723

/-- `A256446(n+1)+A256468(n+1)-A256468(n+2)` -/
def P9462371950069306178.Spec : Prop :=
  ∀ n, P9462371950069306178.a n = A251723 (n + 1)

theorem P9462371950069306178.correct : P9462371950069306178.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P9462371950069306178.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A256446, A256446.P17907843069056531532.a, A256468, A256468.P15833489412511418299.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P2814863667760460332

`A256449(n+1)+2*A256448(n+1)`
-/

namespace A251723.P2814863667760460332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256449 (n + 1) + 2 * A256448 (n + 1)

end

end A251723.P2814863667760460332

namespace A251723

/-- `A256449(n+1)+2*A256448(n+1)` -/
def P2814863667760460332.Spec : Prop :=
  ∀ n, P2814863667760460332.a n = A251723 (n + 1)

theorem P2814863667760460332.correct : P2814863667760460332.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P2814863667760460332.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A256448, A256448.P8888948745584736931.a, A256449, A256449.P3394376339508603245.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P16097127714240266375

`A256447(n+1)+A256469(n+1)-2`
-/

namespace A251723.P16097127714240266375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + (A256469 (n + 1) - 2)

end

end A251723.P16097127714240266375

namespace A251723

/-- `A256447(n+1)+A256469(n+1)-2` -/
def P16097127714240266375.Spec : Prop :=
  ∀ n, P16097127714240266375.a n = A251723 (n + 1)

theorem P16097127714240266375.correct : P16097127714240266375.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P16097127714240266375.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A256447, A256447.P10526496064396814310.a, A256469, A256469.P956244140118081997.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-! ## A251723.P187494220037236049

`2*A256447(n+1)-A256449(n+1)`
-/

namespace A251723.P187494220037236049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256447 (n + 1) - A256449 (n + 1)

end

end A251723.P187494220037236049

namespace A251723

/-- `2*A256447(n+1)-A256449(n+1)` -/
def P187494220037236049.Spec : Prop :=
  ∀ n, P187494220037236049.a n = A251723 (n + 1)

theorem P187494220037236049.correct : P187494220037236049.Spec := by
  intro n
  simp only [A251723, Nat.add_sub_cancel, A251723.P187494220037236049.a, A251723.P8283630235415226138.a, A054272, A054272.P16500536369367462355.a, A256447, A256447.P10526496064396814310.a, A256449, A256449.P3394376339508603245.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A251723

/-!
# A251725: Smallest number b such that in base-b representation the prime factors of n have equal lengths.

The programs for A251725, there is no canonical definition to state claims against.
-/

/-! ## A251725.P15811040201712261328

`A252375(n+1)-A010055(n+1)`
-/

namespace A251725.P15811040201712261328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252375 (n + 1) - A010055 (n + 1)

end

end A251725.P15811040201712261328

/-! ## A251725.P12897123584025682510

`A252375(n+1)-A000007(A046665(n+1))`
-/

namespace A251725.P12897123584025682510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252375 (n + 1) - A000007 (A046665 (n + 1)).toNat

end

end A251725.P12897123584025682510

/-! ## A251725.P14323782552862256581

`A252375(n+1)-A128229(A034444(n+1))`
-/

namespace A251725.P14323782552862256581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252375 (n + 1) - A128229 (A034444 (n + 1)).toNat

end

end A251725.P14323782552862256581

/-! ## A251725.P16365132803375180964

`A252375(n+1)-A000007(A243055(n+1))`
-/

namespace A251725.P16365132803375180964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252375 (n + 1) - A000007 (A243055 (n + 1)).toNat

end

end A251725.P16365132803375180964

/-! ## A251725.P37398468608947851

`A252375(n+1)-A100995(n+1)^A046665(n+1)`
-/

namespace A251725.P37398468608947851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252375 (n + 1) : ℚ) - (A100995 (n + 1) : ℚ) ^ (A046665 (n + 1) : ℤ)

end

end A251725.P37398468608947851

/-! ## A251725.P6994329747767617699

`floor(A252375(n+1)/ratio[A000015(n+1)])`
-/

namespace A251725.P6994329747767617699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A252375 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A251725.P6994329747767617699

/-! ## A251725.P2915690733758708564

`A252375(n+1)-A000007(A344876(n+1))`
-/

namespace A251725.P2915690733758708564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252375 (n + 1) - A000007 (A344876 (n + 1)).toNat

end

end A251725.P2915690733758708564

/-!
# A251726: Numbers n > 1 for which gpf(n) < lpf(n)^2, where lpf and gpf (least and greatest prime factor of n) are given by A020639(n) and A006530(n).

The programs for A251726, there is no canonical definition to state claims against.
-/

/-! ## A251726.P5833493424114358875

`record[A284253(n+2)]`
-/

namespace A251726.P5833493424114358875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251726.P5833493424114358875

/-! ## A251726.P57360289288200461

`record[A284255(n+2)]`
-/

namespace A251726.P57360289288200461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251726.P57360289288200461

/-! ## A251726.P7227282084808058031

`lt[A284258(n+2), 1]+2`
-/

namespace A251726.P7227282084808058031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A251726.P7227282084808058031

/-! ## A251726.P4232722066668924169

`A020725(lt[A006530(n+1), A020639(n+1)²])`
-/

namespace A251726.P4232722066668924169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A251726.P4232722066668924169

/-! ## A251726.P3926743283699336431

`filter[n+1, A252372(#)]`
-/

namespace A251726.P3926743283699336431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j) = 1) n)

end

end A251726.P3926743283699336431

/-! ## A251726.P614958596468911363

`eq[1, A252372(n+1)]+1`
-/

namespace A251726.P614958596468911363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A251726.P614958596468911363

/-! ## A251726.P2993389652312837059

`eq[A000007(n)+1, A284254(n+1)]+1`
-/

namespace A251726.P2993389652312837059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A251726.P2993389652312837059

/-! ## A251726.P17087099691805678727

`record[A233583(n+1)/A284254(A233583(n+1))]`
-/

namespace A251726.P17087099691805678727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) : ℚ) / (A284254 (A233583 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251726.P17087099691805678727

/-!
# A251727: Numbers n > 1 for which gpf(n) > spf(n)^2, where spf and gpf (smallest and greatest prime factor of n) are given by A020639(n) and A006530(n).

The programs for A251727, there is no canonical definition to state claims against.
-/

/-! ## A251727.P16261746973528000504

`lt[A020639(n+1)², A006530(n+1)]+1`
-/

namespace A251727.P16261746973528000504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A251727.P16261746973528000504

/-! ## A251727.P7570197047832034142

`lt[A074828(n+1)², A006530(n+1)]+1`
-/

namespace A251727.P7570197047832034142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A251727.P7570197047832034142

/-! ## A251727.P12481390870544058622

`eq[0, A252372(n+2)]+2`
-/

namespace A251727.P12481390870544058622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252372 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A251727.P12481390870544058622

/-! ## A251727.P9352643460343810112

`lt[1, A284252(n+1)]+1`
-/

namespace A251727.P9352643460343810112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A251727.P9352643460343810112

/-! ## A251727.P10537191153604099495

`lt[A284253(n+1), n]+1`
-/

namespace A251727.P10537191153604099495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284253 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A251727.P10537191153604099495

/-! ## A251727.P5200360367758424153

`lt[A284255(n+1), n]+1`
-/

namespace A251727.P5200360367758424153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A251727.P5200360367758424153

/-! ## A251727.P2213429880821538665

`eq[1, A183946(a(A284254(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A251727.P2213429880821538665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A183946 (f2 (A284254 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A251727.P2213429880821538665

/-! ## A251727.P8977998878902875947

`eq[1, A210557(a(A284254(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A251727.P8977998878902875947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A210557 (f2 (A284254 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A251727.P8977998878902875947

/-! ## A251727.P8630388245957751256

`A020725(lt[A020639(n+1)², A006530(n+1)])`
-/

namespace A251727.P8630388245957751256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A251727.P8630388245957751256

/-! ## A251727.P15206158655822889366

`∩[A047229(n+1), A362982(n+1)]`
-/

namespace A251727.P15206158655822889366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251727.P15206158655822889366

/-!
# A251728: Semiprimes p*q for which p <= q < p^2.

The programs for A251728, there is no canonical definition to state claims against.
-/

/-! ## A251728.P15846215632140144694

`∪[A138109(n+1), A033476(n)]`
-/

namespace A251728.P15846215632140144694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P15846215632140144694

/-! ## A251728.P11422029174378939098

`∪[A001248(n+1), A138109(n+1)]`
-/

namespace A251728.P11422029174378939098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P11422029174378939098

/-! ## A251728.P2356237965876070015

`∪[A085721(n+1), A138109(n+1)]`
-/

namespace A251728.P2356237965876070015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P2356237965876070015

/-! ## A251728.P6837848300667774578

`∪[A087718(n+1), A138109(n+1)]`
-/

namespace A251728.P6837848300667774578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P6837848300667774578

/-! ## A251728.P17772373432302881735

`filter[A088380(n+1), A064911(#)]`
-/

namespace A251728.P17772373432302881735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A251728.P17772373432302881735

/-! ## A251728.P6667320270130331880

`filter[A088380(n+1), A353476(#)]`
-/

namespace A251728.P6667320270130331880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P6667320270130331880

/-! ## A251728.P18350330606212482900

`filter[A088380(n+2), A065043(#)]`
-/

namespace A251728.P18350330606212482900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A251728.P18350330606212482900

/-! ## A251728.P17284083177819843654

`filter[A088380(n+2), A359764(#)]`
-/

namespace A251728.P17284083177819843654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A251728.P17284083177819843654

/-! ## A251728.P10784317365431093694

`∩[A001358(n+1), A088380(n+1)]`
-/

namespace A251728.P10784317365431093694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P10784317365431093694

/-! ## A251728.P9769225024185163649

`filter[A251726(n+1), A064911(#)]`
-/

namespace A251728.P9769225024185163649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A251728.P9769225024185163649

/-! ## A251728.P4159784620412207797

`filter[A251726(n+1), A353476(#)]`
-/

namespace A251728.P4159784620412207797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P4159784620412207797

/-! ## A251728.P10066948142472976158

`∩[A001358(n+1), A251726(n+1)]`
-/

namespace A251728.P10066948142472976158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P10066948142472976158

/-! ## A251728.P4141758310251038785

`filter[A088382(n+1), A353476(#)]`
-/

namespace A251728.P4141758310251038785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P4141758310251038785

/-! ## A251728.P5250915155069823754

`filter[A001358(n+1), A353476(#)]`
-/

namespace A251728.P5250915155069823754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P5250915155069823754

/-! ## A251728.P6836869039142967120

`filter[A176540(n+1), A353476(#)]`
-/

namespace A251728.P6836869039142967120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P6836869039142967120

/-! ## A251728.P6824657165624588740

`∩[A176540(n+1), A251726(n+1)]`
-/

namespace A251728.P6824657165624588740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251728.P6824657165624588740

/-! ## A251728.P4533464252298849095

`filter[A323644(n+1), A353476(#)]`
-/

namespace A251728.P4533464252298849095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P4533464252298849095

/-! ## A251728.P15109528431974285381

`filter[A346041(n+1), A353476(#)]`
-/

namespace A251728.P15109528431974285381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P15109528431974285381

/-! ## A251728.P6031393103558877627

`filter[A085155(n+1), A353476(#)]`
-/

namespace A251728.P6031393103558877627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P6031393103558877627

/-! ## A251728.P13769054814209178419

`filter[A339424(n+1), A353476(#)]`
-/

namespace A251728.P13769054814209178419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A251728.P13769054814209178419

/-!
# A251729: Number of gap-free but not complete compositions of n.

The programs for A251729, there is no canonical definition to state claims against.
-/

/-! ## A251729.P6466961566018104440

`A107428(n+1)-A107429(n+1)`
-/

namespace A251729.P6466961566018104440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) - A107429 (n + 1)

end

end A251729.P6466961566018104440

/-! ## A251729.P6180148750693823910

`A188575(n+1)-A356846(n+1)`
-/

namespace A251729.P6180148750693823910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188575 (n + 1) - A356846 (n + 1)

end

end A251729.P6180148750693823910

/-! ## A251729.P14003915876332875467

`A107428(n+1)+A188575(n+1)-A000079(n)`
-/

namespace A251729.P14003915876332875467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) + (A188575 (n + 1) - A000079 n)

end

end A251729.P14003915876332875467

/-! ## A251729.P14663765569662095414

`and(A188575(n+1)+A107428(n+1), A000225(n))`
-/

namespace A251729.P14663765569662095414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188575 (n + 1) + A107428 (n + 1)) (A000225 n)

end

end A251729.P14663765569662095414

/-! ## A251729.P10339661827219655879

`A107428(n+1)-(A000918(n)+2-A188575(n+1))`
-/

namespace A251729.P10339661827219655879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) - (A000918 n + (2 - A188575 (n + 1)))

end

end A251729.P10339661827219655879

/-! ## A251729.P16702024647311186353

`A107428(n+1)-(Δ[A000295(n)]+1-A188575(n+1))`
-/

namespace A251729.P16702024647311186353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) - (f1 (n + 1) - f1 n + (1 - A188575 (n + 1)))

end

end A251729.P16702024647311186353

/-!
# A251730: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to the sum of two pentagonal numbers P(m) and P(m+1) for some m.

The programs for A251730, there is no canonical definition to state claims against.
-/

/-! ## A251730.P6308295742358655954

`∑[ogf((10+2x)/(1-14x+x^2))]`
-/

namespace A251730.P6308295742358655954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 2] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251730.P6308295742358655954

/-! ## A251730.P8371568254507303282

`ogf((10+2x)/(1-15x+15x^2-x^3))`
-/

namespace A251730.P8371568254507303282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 2] [1, -15, 15, -1] n

end

end A251730.P8371568254507303282

/-! ## A251730.P14005999473285745586

`abs(floor((sqrt(3)+2)²*a(n-1))+7)+6` with `a(0)=10`
-/

namespace A251730.P14005999473285745586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 7| + 6

end

end A251730.P14005999473285745586

/-! ## A251730.P513040633817213266

`A122769(n+2)-1`
-/

namespace A251730.P513040633817213266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122769 (n + 2) - 1

end

end A251730.P513040633817213266

/-! ## A251730.P15933897889706807372

`2*A011918(n+1)`
-/

namespace A251730.P15933897889706807372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011918 (n + 1)

end

end A251730.P15933897889706807372

/-! ## A251730.P3619386303264500956

`Δ[A046174(n+1)]-1`
-/

namespace A251730.P3619386303264500956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A251730.P3619386303264500956

/-! ## A251730.P11583309179632315048

`A375098(3*(n+1))-1`
-/

namespace A251730.P11583309179632315048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375098 (3 * (n + 1)) - 1

end

end A251730.P11583309179632315048

/-! ## A251730.P1077088558336842766

`A001835(2*n+3)-1`
-/

namespace A251730.P1077088558336842766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (2 * n + 3) - 1

end

end A251730.P1077088558336842766

/-! ## A251730.P4487044460513265385

`2*A061278(2*(n+1))`
-/

namespace A251730.P4487044460513265385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061278 (2 * (n + 1))

end

end A251730.P4487044460513265385

/-! ## A251730.P16357690228160342724

`A079935(2*n+3)-1`
-/

namespace A251730.P16357690228160342724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (2 * n + 3) - 1

end

end A251730.P16357690228160342724

/-!
# A251731: Least k such that k^3 + q is divisible by 3^n where q is the n-th number congruent to 1 or -1 (mod 18).

The programs for A251731, there is no canonical definition to state claims against.
-/

/-! ## A251731.P14260775652754342091

`A171173(∑[A005700(comp[Δ[lcm(3, n)]])])`
-/

namespace A251731.P14260775652754342091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251731.P14260775652754342091

/-! ## A251731.P2680092883571260472

`A333222(or(A003609(n+1), A340805(n+4)))`
-/

namespace A251731.P2680092883571260472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (Int.lor (A003609 (n + 1)) (A340805 (n + 4))).toNat

end

end A251731.P2680092883571260472

/-!
# A251732: a(n) = 3^n*A123335(n). Rational parts of the integers in Q(sqrt(2)) giving the length of a Lévy C-curve variant at iteration step n.

The programs for A251732, the canonical program `A251732.P11083506637498144455` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251732 has offset 0).

The definition of A251732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A123335(n)` (program `A251732.P11083506637498144455`, by `A251732.P11083506637498144455.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251732.P11083506637498144455

`3^n*A123335(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251732

/-- `3^n*A123335(n)` -/
def P11083506637498144455.Spec : Prop :=
  ∀ n, P11083506637498144455.a n = A251732 n

theorem P11083506637498144455.correct : P11083506637498144455.Spec := by
  intro n
  simp only [A251732]

end A251732

/-! ## A251732.P2531156357531864439

`ogf((1+3x)/(1+6x-9x^2))`
-/

namespace A251732.P2531156357531864439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 6, -9] n

end

end A251732.P2531156357531864439

namespace A251732

/-- `ogf((1+3x)/(1+6x-9x^2))` -/
def P2531156357531864439.Spec : Prop :=
  ∀ n, P2531156357531864439.a n = A251732 n

end A251732

/-! ## A251732.P6910797403892108304

`(-3)^n*A001333(n)`
-/

namespace A251732.P6910797403892108304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A001333 n

end

end A251732.P6910797403892108304

namespace A251732

/-- `(-3)^n*A001333(n)` -/
def P6910797403892108304.Spec : Prop :=
  ∀ n, P6910797403892108304.a n = A251732 n

end A251732

/-! ## A251732.P15238109158318149460

`A001333(n)*A352779(n)`
-/

namespace A251732.P15238109158318149460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A352779 n

end

end A251732.P15238109158318149460

namespace A251732

/-- `A001333(n)*A352779(n)` -/
def P15238109158318149460.Spec : Prop :=
  ∀ n, P15238109158318149460.a n = A251732 n

end A251732

/-! ## A251732.P15691651074202800196

`A123335(n)*A254006(2*n)`
-/

namespace A251732.P15691651074202800196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n * A254006 (2 * n)

end

end A251732.P15691651074202800196

namespace A251732

/-- `A123335(n)*A254006(2*n)` -/
def P15691651074202800196.Spec : Prop :=
  ∀ n, P15691651074202800196.a n = A251732 n

end A251732

/-! ## A251732.P4250837840754016248

`Δ[A000129(n)]*Δ[A084222(n)]`
-/

namespace A251732.P4250837840754016248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A251732.P4250837840754016248

namespace A251732

/-- `Δ[A000129(n)]*Δ[A084222(n)]` -/
def P4250837840754016248.Spec : Prop :=
  ∀ n, P4250837840754016248.a n = A251732 n

end A251732

/-! ## A251732.P14547100523345174286

`A001333(n)*A287479(2*(n+1))`
-/

namespace A251732.P14547100523345174286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A287479 (2 * (n + 1))

end

end A251732.P14547100523345174286

namespace A251732

/-- `A001333(n)*A287479(2*(n+1))` -/
def P14547100523345174286.Spec : Prop :=
  ∀ n, P14547100523345174286.a n = A251732 n

end A251732

/-!
# A251733: a(n) = 3^n*A077985(n-1), A077985(-1) = 0. Irrational parts of the integers in Q(sqrt(2)) giving the length of a Lévy C-curve variant at iteration step n.

The programs for A251733, the canonical program `A251733.P6895821694826956816` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251733 has offset 0).

The definition of A251733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251733.P16357468886602979566

`ogf(3x/(1+6x-9x^2))`
-/

namespace A251733.P16357468886602979566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, 6, -9] n

end

end A251733.P16357468886602979566

namespace A251733

/-- `ogf(3x/(1+6x-9x^2))` -/
def P16357468886602979566.Spec : Prop :=
  ∀ n, P16357468886602979566.a n = A251733 n

end A251733

/-! ## A251733.P6895821694826956816

`3*(3*a(n-2)-2*a(n-1))` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251733

/-- `3*(3*a(n-2)-2*a(n-1))` -/
def P6895821694826956816.Spec : Prop :=
  ∀ n, P6895821694826956816.a n = A251733 n

theorem P6895821694826956816.correct : P6895821694826956816.Spec := by
  intro n
  simp only [A251733]

end A251733

/-! ## A251733.P17715536918221150763

`3^n*A215936(n+2)`
-/

namespace A251733.P17715536918221150763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A215936 (n + 2)

end

end A251733.P17715536918221150763

namespace A251733

/-- `3^n*A215936(n+2)` -/
def P17715536918221150763.Spec : Prop :=
  ∀ n, P17715536918221150763.a n = A251733 n

end A251733

/-! ## A251733.P5965125928616984167

`Δ[A084567(n)]*A000129(n)`
-/

namespace A251733.P5965125928616984167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000129 n

end

end A251733.P5965125928616984167

namespace A251733

/-- `Δ[A084567(n)]*A000129(n)` -/
def P5965125928616984167.Spec : Prop :=
  ∀ n, P5965125928616984167.a n = A251733 n

end A251733

/-! ## A251733.P4459132104502928074

`Δ[-A084222(n)]*A000129(n)`
-/

namespace A251733.P4459132104502928074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A084222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000129 n

end

end A251733.P4459132104502928074

namespace A251733

/-- `Δ[-A084222(n)]*A000129(n)` -/
def P4459132104502928074.Spec : Prop :=
  ∀ n, P4459132104502928074.a n = A251733 n

end A251733

/-! ## A251733.P17790709029493644552

`(A123335(n)-A077985(n))*A000244(n)`
-/

namespace A251733.P17790709029493644552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123335 n - A077985 n) * A000244 n

end

end A251733.P17790709029493644552

namespace A251733

/-- `(A123335(n)-A077985(n))*A000244(n)` -/
def P17790709029493644552.Spec : Prop :=
  ∀ n, P17790709029493644552.a n = A251733 n

end A251733

/-! ## A251733.P10891588105669855858

`(A014983(n)-A014983(n+1))*A000129(n)`
-/

namespace A251733.P10891588105669855858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014983 n - A014983 (n + 1)) * A000129 n

end

end A251733.P10891588105669855858

namespace A251733

/-- `(A014983(n)-A014983(n+1))*A000129(n)` -/
def P10891588105669855858.Spec : Prop :=
  ∀ n, P10891588105669855858.a n = A251733 n

end A251733

/-! ## A251733.P14307409719393646836

`(A084222(n)-A084222(n+1))*A000129(n)`
-/

namespace A251733.P14307409719393646836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084222 n - A084222 (n + 1)) * A000129 n

end

end A251733.P14307409719393646836

namespace A251733

/-- `(A084222(n)-A084222(n+1))*A000129(n)` -/
def P14307409719393646836.Spec : Prop :=
  ∀ n, P14307409719393646836.a n = A251733 n

end A251733

/-!
# A251737: Number of tilings of a 5 X n rectangle using n pentominoes of shapes L, U, I.

The programs for A251737, there is no canonical definition to state claims against.
-/

/-! ## A251737.P2044230271791549435

`A165477(A238279(n+4)+(n-1)^n)`
-/

namespace A251737.P2044230271791549435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A238279 (n + 4) + ((n : ℤ) - 1) ^ n).toNat

end

end A251737.P2044230271791549435

/-! ## A251737.P12879761723532376649

`A330109(A001006(n))+A035607(n)`
-/

namespace A251737.P12879761723532376649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330109 (A001006 n).toNat + A035607 n

end

end A251737.P12879761723532376649

/-! ## A251737.P1584809436728839008

`A056239(A329738(n)+A000255(n))`
-/

namespace A251737.P1584809436728839008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A329738 n + A000255 n).toNat

end

end A251737.P1584809436728839008

/-!
# A251738: Smallest k such that n * sum(i=0..k, binomial(k,i) mod (n-1) ) < 2^n.

The programs for A251738, there is no canonical definition to state claims against.
-/

/-! ## A251738.P3088280920440843394

`A251739(char[2]+2+n)`
-/

namespace A251738.P3088280920440843394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251739 ((if ∃ j, f1 j = n then 1 else 0) + 2 + n)

end

end A251738.P3088280920440843394

/-! ## A251738.P10510023347305200247

`A251739(n+2)*A329684(n)`
-/

namespace A251738.P10510023347305200247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251739 (n + 2) * A329684 n

end

end A251738.P10510023347305200247

/-! ## A251738.P17396239694887908691

`A000034(A055672(n))*A251739(n+2)`
-/

namespace A251738.P17396239694887908691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A055672 n).toNat * A251739 (n + 2)

end

end A251738.P17396239694887908691

/-! ## A251738.P15615143746041288250

`A051340(A048298(n))*A251739(n+2)`
-/

namespace A251738.P15615143746041288250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A048298 n).toNat * A251739 (n + 2)

end

end A251738.P15615143746041288250

/-! ## A251738.P1964268742107822383

`A014963(A103505(n))*A251739(n+2)`
-/

namespace A251738.P1964268742107822383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A103505 n).toNat * A251739 (n + 2)

end

end A251738.P1964268742107822383

/-! ## A251738.P14931974890050839976

`A014963(A187710(n))*A251739(n+2)`
-/

namespace A251738.P14931974890050839976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A187710 n).toNat * A251739 (n + 2)

end

end A251738.P14931974890050839976

/-! ## A251738.P14595812783219175750

`A244226(A267873(n))*A251739(n+2)`
-/

namespace A251738.P14595812783219175750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (A267873 n).toNat * A251739 (n + 2)

end

end A251738.P14595812783219175750

/-! ## A251738.P16888934418716911002

`A001222(A266620(n+1))*A251739(n+2)`
-/

namespace A251738.P16888934418716911002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A266620 (n + 1)).toNat * A251739 (n + 2)

end

end A251738.P16888934418716911002

/-! ## A251738.P16314300585496286883

`lcm(A014963(A000123(n)), A251739(n+2))`
-/

namespace A251738.P16314300585496286883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A000123 n).toNat) (A251739 (n + 2))

end

end A251738.P16314300585496286883

/-! ## A251738.P15516570097813994767

`A014963(A208919(n+1))*A251739(n+2)`
-/

namespace A251738.P15516570097813994767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A208919 (n + 1)).toNat * A251739 (n + 2)

end

end A251738.P15516570097813994767

/-!
# A251739: Smallest k such that n * sum(i=0..k, binomial(k,i) mod (n-1) ) <= 2^n.

The programs for A251739, there is no canonical definition to state claims against.
-/

/-! ## A251739.P3658175538507946037

`A251738(n+2)/(char[2]+1)`
-/

namespace A251739.P3658175538507946037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251738 (n + 2) : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A251739.P3658175538507946037

/-! ## A251739.P6480381758557117366

`gcd(A119522(n+1), A251738(n+2))`
-/

namespace A251739.P6480381758557117366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119522 (n + 1)) (A251738 (n + 2))

end

end A251739.P6480381758557117366

/-! ## A251739.P18121844126093793232

`A251738(n+2)-char[2]*A000032(n)`
-/

namespace A251739.P18121844126093793232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A000032 n

end

end A251739.P18121844126093793232

/-! ## A251739.P13262420041719611725

`A251738(n+2)-char[2]*A000217(n)`
-/

namespace A251739.P13262420041719611725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A000217 n

end

end A251739.P13262420041719611725

/-! ## A251739.P4305124921400256109

`A251738(n+2)-char[2]*A006906(n)`
-/

namespace A251739.P4305124921400256109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A006906 n

end

end A251739.P4305124921400256109

/-! ## A251739.P9148067662958877050

`A251738(n+2)-char[2]*A010705(n)`
-/

namespace A251739.P9148067662958877050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A010705 n

end

end A251739.P9148067662958877050

/-! ## A251739.P10025918557107648349

`A251738(n+2)-char[2]*A103947(n)`
-/

namespace A251739.P10025918557107648349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A103947 n

end

end A251739.P10025918557107648349

/-! ## A251739.P11703929101248641072

`A251738(n+2)-char[2]*A008578(n+1)`
-/

namespace A251739.P11703929101248641072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A008578 (n + 1)

end

end A251739.P11703929101248641072

/-! ## A251739.P15292524707699852916

`A251738(n+2)-char[2]*A052410(n+1)`
-/

namespace A251739.P15292524707699852916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A052410 (n + 1)

end

end A251739.P15292524707699852916

/-! ## A251739.P9696292040032548215

`A251738(n+2)-char[2]*A248635(n+1)`
-/

namespace A251739.P9696292040032548215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251738 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A248635 (n + 1)

end

end A251739.P9696292040032548215

/-!
# A251740: 8-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0.

The programs for A251740, the canonical program `A251740.P8481188142973137277` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251740 has offset 0).

The definition of A251740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251740.P8481188142973137277

`A079262(n+2)-A079262(n+1)-A079262(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251740

/-- `A079262(n+2)-A079262(n+1)-A079262(n)` -/
def P8481188142973137277.Spec : Prop :=
  ∀ n, P8481188142973137277.a n = A251740 n

theorem P8481188142973137277.correct : P8481188142973137277.Spec := by
  intro n
  simp only [A251740]

end A251740

/-! ## A251740.P9367936545103530405

`A251672(n+1)-A079262(n)`
-/

namespace A251740.P9367936545103530405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (n + 1) - A079262 n

end

end A251740.P9367936545103530405

namespace A251740

/-- `A251672(n+1)-A079262(n)` -/
def P9367936545103530405.Spec : Prop :=
  ∀ n, P9367936545103530405.a n = A251740 n

end A251740

/-! ## A251740.P6192301471202199527

`A251672(n+1)+A251742(n)-A251741(n+1)`
-/

namespace A251740.P6192301471202199527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (n + 1) + (A251742 n - A251741 (n + 1))

end

end A251740.P6192301471202199527

namespace A251740

/-- `A251672(n+1)+A251742(n)-A251741(n+1)` -/
def P6192301471202199527.Spec : Prop :=
  ∀ n, P6192301471202199527.a n = A251740 n

theorem P6192301471202199527.correct : P6192301471202199527.Spec := by
  intro n
  simp only [A251740, Nat.add_sub_cancel, A251740.P6192301471202199527.a, A251740.P8481188142973137277.a, A079262, A079262.P2136821458848240640.a, A251672, A251672.P9400077849588543496.a, A251741, A251741.P8014523365454003641.a, A251742, A251742.P7292228339883376358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251740

/-! ## A251740.P15614585396191421117

`A251672(n+1)+A251744(n)-A251742(n+1)`
-/

namespace A251740.P15614585396191421117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (n + 1) + (A251744 n - A251742 (n + 1))

end

end A251740.P15614585396191421117

namespace A251740

/-- `A251672(n+1)+A251744(n)-A251742(n+1)` -/
def P15614585396191421117.Spec : Prop :=
  ∀ n, P15614585396191421117.a n = A251740 n

theorem P15614585396191421117.correct : P15614585396191421117.Spec := by
  intro n
  simp only [A251740, Nat.add_sub_cancel, A251740.P15614585396191421117.a, A251740.P8481188142973137277.a, A079262, A079262.P2136821458848240640.a, A251672, A251672.P9400077849588543496.a, A251742, A251742.P7292228339883376358.a, A251744, A251744.P2670266574410106303.a, A251741, A251741.P8014523365454003641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251740

/-! ## A251740.P9848328998468635977

`A251672(n+1)+A251745(n)-A251744(n+1)`
-/

namespace A251740.P9848328998468635977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (n + 1) + (A251745 n - A251744 (n + 1))

end

end A251740.P9848328998468635977

namespace A251740

/-- `A251672(n+1)+A251745(n)-A251744(n+1)` -/
def P9848328998468635977.Spec : Prop :=
  ∀ n, P9848328998468635977.a n = A251740 n

end A251740

/-! ## A251740.P4912090380981818046

`Δ[A079262(n+1)]-A079262(n)`
-/

namespace A251740.P4912090380981818046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A079262 n

end

end A251740.P4912090380981818046

namespace A251740

/-- `Δ[A079262(n+1)]-A079262(n)` -/
def P4912090380981818046.Spec : Prop :=
  ∀ n, P4912090380981818046.a n = A251740 n

theorem P4912090380981818046.correct : P4912090380981818046.Spec := by
  intro n
  simp only [A251740, Nat.add_sub_cancel, A251740.P4912090380981818046.f1, A251740.P4912090380981818046.a, A251740.P8481188142973137277.a, SequenceMachineLib.memo_apply]

end A251740

/-! ## A251740.P8596313588183905017

`A079262(n+2)-A251745(n+2)`
-/

namespace A251740.P8596313588183905017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 2) - A251745 (n + 2)

end

end A251740.P8596313588183905017

namespace A251740

/-- `A079262(n+2)-A251745(n+2)` -/
def P8596313588183905017.Spec : Prop :=
  ∀ n, P8596313588183905017.a n = A251740 n

end A251740

/-!
# A251741: 8-step Fibonacci sequence starting with 0,0,0,0,1,0,0,0.

The programs for A251741, the canonical program `A251741.P8014523365454003641` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251741 has offset 0).

The definition of A251741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251741.P8014523365454003641

`A251740(n+1)-A079262(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A251741

/-- `A251740(n+1)-A079262(n)` -/
def P8014523365454003641.Spec : Prop :=
  ∀ n, P8014523365454003641.a n = A251741 n

theorem P8014523365454003641.correct : P8014523365454003641.Spec := by
  intro n
  simp only [A251741]

end A251741

/-! ## A251741.P13995907650173912515

`A251740(n+1)-(∑[A251672(n)]-A251672(n))`
-/

namespace A251741.P13995907650173912515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A251672 n)

end

end A251741.P13995907650173912515

namespace A251741

/-- `A251740(n+1)-(∑[A251672(n)]-A251672(n))` -/
def P13995907650173912515.Spec : Prop :=
  ∀ n, P13995907650173912515.a n = A251741 n

end A251741

/-! ## A251741.P1099065305574666926

`A251740(n+1)+A251740(n)-A251672(n+1)`
-/

namespace A251741.P1099065305574666926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) + (A251740 n - A251672 (n + 1))

end

end A251741.P1099065305574666926

namespace A251741

/-- `A251740(n+1)+A251740(n)-A251672(n+1)` -/
def P1099065305574666926.Spec : Prop :=
  ∀ n, P1099065305574666926.a n = A251741 n

theorem P1099065305574666926.correct : P1099065305574666926.Spec := by
  intro n
  simp only [A251741, Nat.add_sub_cancel, A251741.P1099065305574666926.a, A251741.P8014523365454003641.a, A079262, A079262.P2136821458848240640.a, A251672, A251672.P9400077849588543496.a, A251740, A251740.P8481188142973137277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251741

/-! ## A251741.P1776072999371605388

`A251740(n+1)+A251744(n)-A251742(n+1)`
-/

namespace A251741.P1776072999371605388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) + (A251744 n - A251742 (n + 1))

end

end A251741.P1776072999371605388

namespace A251741

/-- `A251740(n+1)+A251744(n)-A251742(n+1)` -/
def P1776072999371605388.Spec : Prop :=
  ∀ n, P1776072999371605388.a n = A251741 n

theorem P1776072999371605388.correct : P1776072999371605388.Spec := by
  intro n
  simp only [A251741, Nat.add_sub_cancel, A251741.P1776072999371605388.a, A251741.P8014523365454003641.a, A079262, A079262.P2136821458848240640.a, A251740, A251740.P8481188142973137277.a, A251742, A251742.P7292228339883376358.a, A251744, A251744.P2670266574410106303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251741

/-! ## A251741.P4974661195467178896

`A251740(n+1)+A251745(n)-A251744(n+1)`
-/

namespace A251741.P4974661195467178896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) + (A251745 n - A251744 (n + 1))

end

end A251741.P4974661195467178896

namespace A251741

/-- `A251740(n+1)+A251745(n)-A251744(n+1)` -/
def P4974661195467178896.Spec : Prop :=
  ∀ n, P4974661195467178896.a n = A251741 n

end A251741

/-! ## A251741.P9375821843873290825

`A251672(n+2)-A251745(n+2)`
-/

namespace A251741.P9375821843873290825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (n + 2) - A251745 (n + 2)

end

end A251741.P9375821843873290825

namespace A251741

/-- `A251672(n+2)-A251745(n+2)` -/
def P9375821843873290825.Spec : Prop :=
  ∀ n, P9375821843873290825.a n = A251741 n

end A251741

/-!
# A251742: 8-step Fibonacci sequence starting with 0,0,0,1,0,0,0,0.

The programs for A251742, the canonical program `A251742.P7292228339883376358` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251742 has offset 0).

The definition of A251742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251742.P7292228339883376358

`A251741(n+1)-A079262(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A251742

/-- `A251741(n+1)-A079262(n)` -/
def P7292228339883376358.Spec : Prop :=
  ∀ n, P7292228339883376358.a n = A251742 n

theorem P7292228339883376358.correct : P7292228339883376358.Spec := by
  intro n
  simp only [A251742]

end A251742

/-! ## A251742.P6236788175603928055

`A251741(n+1)+A251740(n)-A251672(n+1)`
-/

namespace A251742.P6236788175603928055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) + (A251740 n - A251672 (n + 1))

end

end A251742.P6236788175603928055

namespace A251742

/-- `A251741(n+1)+A251740(n)-A251672(n+1)` -/
def P6236788175603928055.Spec : Prop :=
  ∀ n, P6236788175603928055.a n = A251742 n

theorem P6236788175603928055.correct : P6236788175603928055.Spec := by
  intro n
  simp only [A251742, Nat.add_sub_cancel, A251742.P6236788175603928055.a, A251742.P7292228339883376358.a, A079262, A079262.P2136821458848240640.a, A251672, A251672.P9400077849588543496.a, A251740, A251740.P8481188142973137277.a, A251741, A251741.P8014523365454003641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251742

/-! ## A251742.P14773867126817540921

`A251741(n+1)+A251741(n)-A251740(n+1)`
-/

namespace A251742.P14773867126817540921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) + (A251741 n - A251740 (n + 1))

end

end A251742.P14773867126817540921

namespace A251742

/-- `A251741(n+1)+A251741(n)-A251740(n+1)` -/
def P14773867126817540921.Spec : Prop :=
  ∀ n, P14773867126817540921.a n = A251742 n

theorem P14773867126817540921.correct : P14773867126817540921.Spec := by
  intro n
  simp only [A251742, Nat.add_sub_cancel, A251742.P14773867126817540921.a, A251742.P7292228339883376358.a, A079262, A079262.P2136821458848240640.a, A251740, A251740.P8481188142973137277.a, A251741, A251741.P8014523365454003641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251742

/-! ## A251742.P14676852391541358854

`A251741(n+1)+A251745(n)-A251744(n+1)`
-/

namespace A251742.P14676852391541358854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) + (A251745 n - A251744 (n + 1))

end

end A251742.P14676852391541358854

namespace A251742

/-- `A251741(n+1)+A251745(n)-A251744(n+1)` -/
def P14676852391541358854.Spec : Prop :=
  ∀ n, P14676852391541358854.a n = A251742 n

end A251742

/-! ## A251742.P12431046267681587714

`A251740(n+2)-A251745(n+2)`
-/

namespace A251742.P12431046267681587714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 2) - A251745 (n + 2)

end

end A251742.P12431046267681587714

namespace A251742

/-- `A251740(n+2)-A251745(n+2)` -/
def P12431046267681587714.Spec : Prop :=
  ∀ n, P12431046267681587714.a n = A251742 n

end A251742

/-! ## A251742.P11586859214125941412

`A251672(n+3)-A251744(n+3)`
-/

namespace A251742.P11586859214125941412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 (n + 3) - A251744 (n + 3)

end

end A251742.P11586859214125941412

namespace A251742

/-- `A251672(n+3)-A251744(n+3)` -/
def P11586859214125941412.Spec : Prop :=
  ∀ n, P11586859214125941412.a n = A251742 n

end A251742

/-!
# A251743: Pairs of nodes in a complete binary tree that are at an absolute height difference of less than 2 from each other.

The programs for A251743, the canonical program `A251743.P2904173335467476531` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251743 has offset 1).

The definition of A251743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251743.P10559958855239252199

`∑[ogf((3-8x)/(1-6x+8x^2))]`
-/

namespace A251743.P10559958855239252199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251743.P10559958855239252199

namespace A251743

/-- `∑[ogf((3-8x)/(1-6x+8x^2))]` -/
def P10559958855239252199.Spec : Prop :=
  ∀ n, P10559958855239252199.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P4083808103849833737

`ogf((3-8x)/(1-7x+14x^2-8x^3))`
-/

namespace A251743.P4083808103849833737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -7, 14, -8] n

end

end A251743.P4083808103849833737

namespace A251743

/-- `ogf((3-8x)/(1-7x+14x^2-8x^3))` -/
def P4083808103849833737.Spec : Prop :=
  ∀ n, P4083808103849833737.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P14229477779035061316

`∑[2^n+2*4^n]`
-/

namespace A251743.P14229477779035061316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251743.P14229477779035061316

namespace A251743

/-- `∑[2^n+2*4^n]` -/
def P14229477779035061316.Spec : Prop :=
  ∀ n, (P14229477779035061316.a n : ℤ) = A251743 (n + 1)

end A251743

/-! ## A251743.P11059777063876483306

`abs(∑[4*a(n-1)-2^n])` with `a(0)=3`
-/

namespace A251743.P11059777063876483306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A251743.P11059777063876483306

namespace A251743

/-- `abs(∑[4*a(n-1)-2^n])` -/
def P11059777063876483306.Spec : Prop :=
  ∀ n, P11059777063876483306.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P5991876950478935473

`floor(∑[4*a(n-1)-2^n])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A251743.P5991876950478935473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251743.P5991876950478935473

namespace A251743

/-- `floor(∑[4*a(n-1)-2^n])` -/
def P5991876950478935473.Spec : Prop :=
  ∀ n, P5991876950478935473.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P2212405921391153160

`ceil(∑[4*a(n-1)-2^n])` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A251743.P2212405921391153160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251743.P2212405921391153160

namespace A251743

/-- `ceil(∑[4*a(n-1)-2^n])` -/
def P2212405921391153160.Spec : Prop :=
  ∀ n, P2212405921391153160.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P5766072171598346324

`round(∑[4*a(n-1)-2^n])` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A251743.P5766072171598346324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251743.P5766072171598346324

namespace A251743

/-- `round(∑[4*a(n-1)-2^n])` -/
def P5766072171598346324.Spec : Prop :=
  ∀ n, P5766072171598346324.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P1919224415877216064

`or(1, ∑[4*a(n-1)-2^n])` with `a(0)=3`
-/

namespace A251743.P1919224415877216064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251743.P1919224415877216064

namespace A251743

/-- `or(1, ∑[4*a(n-1)-2^n])` -/
def P1919224415877216064.Spec : Prop :=
  ∀ n, P1919224415877216064.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P3285830992180293211

`4*a(n-1)-2^(n+1)+5` with `a(0)=3`
-/

namespace A251743.P3285830992180293211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) - (2 ^ (n + 1) : ℤ) + 5

end

end A251743.P3285830992180293211

namespace A251743

/-- `4*a(n-1)-2^(n+1)+5` -/
def P3285830992180293211.Spec : Prop :=
  ∀ n, P3285830992180293211.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P14916627669412057559

`floor(∑[a(n-1)+a(n-1)+4^n])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A251743.P14916627669412057559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251743.P14916627669412057559

namespace A251743

/-- `floor(∑[a(n-1)+a(n-1)+4^n])` -/
def P14916627669412057559.Spec : Prop :=
  ∀ n, (P14916627669412057559.a n : ℤ) = A251743 (n + 1)

end A251743

/-! ## A251743.P2904173335467476531

`6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` with `a(0)=3, a(1)=13, a(2)=49, a(3)=185`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251743

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` -/
def P2904173335467476531.Spec : Prop :=
  ∀ n, P2904173335467476531.a n = A251743 (n + 1)

theorem P2904173335467476531.correct : P2904173335467476531.Spec := by
  intro n
  simp only [A251743, Nat.add_sub_cancel]

end A251743

/-! ## A251743.P4234802994123893522

`A076024(n+2)-1`
-/

namespace A251743.P4234802994123893522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 (n + 2) - 1

end

end A251743.P4234802994123893522

namespace A251743

/-- `A076024(n+2)-1` -/
def P4234802994123893522.Spec : Prop :=
  ∀ n, P4234802994123893522.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P16889670958884328053

`A007581(n+2)-2`
-/

namespace A251743.P16889670958884328053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 2) - 2

end

end A251743.P16889670958884328053

namespace A251743

/-- `A007581(n+2)-2` -/
def P16889670958884328053.Spec : Prop :=
  ∀ n, P16889670958884328053.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P12491206635774528756

`A124303(n+3)-2`
-/

namespace A251743.P12491206635774528756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 3) - 2

end

end A251743.P12491206635774528756

namespace A251743

/-- `A124303(n+3)-2` -/
def P12491206635774528756.Spec : Prop :=
  ∀ n, P12491206635774528756.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P7132859259918859486

`Δ[A243514(n+2)]-2`
-/

namespace A251743.P7132859259918859486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243514 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A251743.P7132859259918859486

namespace A251743

/-- `Δ[A243514(n+2)]-2` -/
def P7132859259918859486.Spec : Prop :=
  ∀ n, P7132859259918859486.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P9332540436341952180

`A329908(2*(n+2))-2`
-/

namespace A251743.P9332540436341952180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329908 (2 * (n + 2)) - 2

end

end A251743.P9332540436341952180

namespace A251743

/-- `A329908(2*(n+2))-2` -/
def P9332540436341952180.Spec : Prop :=
  ∀ n, P9332540436341952180.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P5415700549430495269

`A083584(n)+2^(n+1)`
-/

namespace A251743.P5415700549430495269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083584 n + (2 ^ (n + 1) : ℤ)

end

end A251743.P5415700549430495269

namespace A251743

/-- `A083584(n)+2^(n+1)` -/
def P5415700549430495269.Spec : Prop :=
  ∀ n, P5415700549430495269.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P10986058813688728219

`or(1, ∑[A001445(2*(n+1))])`
-/

namespace A251743.P10986058813688728219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001445 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251743.P10986058813688728219

namespace A251743

/-- `or(1, ∑[A001445(2*(n+1))])` -/
def P10986058813688728219.Spec : Prop :=
  ∀ n, P10986058813688728219.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P6241746353540742984

`∑[A092431(n+1)]+n+1`
-/

namespace A251743.P6241746353540742984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A251743.P6241746353540742984

namespace A251743

/-- `∑[A092431(n+1)]+n+1` -/
def P6241746353540742984.Spec : Prop :=
  ∀ n, P6241746353540742984.a n = A251743 (n + 1)

end A251743

/-! ## A251743.P9379565973519986934

`A007582(n+1)+a(n-1)` with `a(0)=3`
-/

namespace A251743.P9379565973519986934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007582 (n + 1) + a (n - 1)

end

end A251743.P9379565973519986934

namespace A251743

/-- `A007582(n+1)+a(n-1)` -/
def P9379565973519986934.Spec : Prop :=
  ∀ n, P9379565973519986934.a n = A251743 (n + 1)

end A251743

/-!
# A251744: 8-step Fibonacci sequence starting with 0,0,1,0,0,0,0,0.

The programs for A251744, the canonical program `A251744.P2670266574410106303` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251744 has offset 0).

The definition of A251744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251744.P2670266574410106303

`A251742(n+1)-A079262(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251744

/-- `A251742(n+1)-A079262(n)` -/
def P2670266574410106303.Spec : Prop :=
  ∀ n, P2670266574410106303.a n = A251744 n

theorem P2670266574410106303.correct : P2670266574410106303.Spec := by
  intro n
  simp only [A251744]

end A251744

/-! ## A251744.P14629805245492283493

`A251742(n+1)+A251740(n)-A251672(n+1)`
-/

namespace A251744.P14629805245492283493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251742 (n + 1) + (A251740 n - A251672 (n + 1))

end

end A251744.P14629805245492283493

namespace A251744

/-- `A251742(n+1)+A251740(n)-A251672(n+1)` -/
def P14629805245492283493.Spec : Prop :=
  ∀ n, P14629805245492283493.a n = A251744 n

theorem P14629805245492283493.correct : P14629805245492283493.Spec := by
  intro n
  simp only [A251744, Nat.add_sub_cancel, A251744.P14629805245492283493.a, A251744.P2670266574410106303.a, A079262, A079262.P2136821458848240640.a, A251672, A251672.P9400077849588543496.a, A251740, A251740.P8481188142973137277.a, A251742, A251742.P7292228339883376358.a, A251741, A251741.P8014523365454003641.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251744

/-! ## A251744.P8770443726998960126

`A251742(n+1)+A251741(n)-A251740(n+1)`
-/

namespace A251744.P8770443726998960126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251742 (n + 1) + (A251741 n - A251740 (n + 1))

end

end A251744.P8770443726998960126

namespace A251744

/-- `A251742(n+1)+A251741(n)-A251740(n+1)` -/
def P8770443726998960126.Spec : Prop :=
  ∀ n, P8770443726998960126.a n = A251744 n

theorem P8770443726998960126.correct : P8770443726998960126.Spec := by
  intro n
  simp only [A251744, Nat.add_sub_cancel, A251744.P8770443726998960126.a, A251744.P2670266574410106303.a, A079262, A079262.P2136821458848240640.a, A251740, A251740.P8481188142973137277.a, A251741, A251741.P8014523365454003641.a, A251742, A251742.P7292228339883376358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251744

/-! ## A251744.P5153111392109040659

`A251742(n+1)+A251742(n)-A251741(n+1)`
-/

namespace A251744.P5153111392109040659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251742 (n + 1) + (A251742 n - A251741 (n + 1))

end

end A251744.P5153111392109040659

namespace A251744

/-- `A251742(n+1)+A251742(n)-A251741(n+1)` -/
def P5153111392109040659.Spec : Prop :=
  ∀ n, P5153111392109040659.a n = A251744 n

theorem P5153111392109040659.correct : P5153111392109040659.Spec := by
  intro n
  simp only [A251744, Nat.add_sub_cancel, A251744.P5153111392109040659.a, A251744.P2670266574410106303.a, A079262, A079262.P2136821458848240640.a, A251741, A251741.P8014523365454003641.a, A251742, A251742.P7292228339883376358.a, A251740, A251740.P8481188142973137277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251744

/-! ## A251744.P7295549199367160021

`A251741(n+2)-A251745(n+2)`
-/

namespace A251744.P7295549199367160021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 2) - A251745 (n + 2)

end

end A251744.P7295549199367160021

namespace A251744

/-- `A251741(n+2)-A251745(n+2)` -/
def P7295549199367160021.Spec : Prop :=
  ∀ n, P7295549199367160021.a n = A251744 n

end A251744

/-!
# A251745: 8-step Fibonacci sequence starting with 0,1,0,0,0,0,0,0.

The programs for A251745, the canonical program `A251745.P11340030167898601430` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251745 has offset 0).

The definition of A251745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251745.P11340030167898601430

`A251742(n)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251745

/-- `A251742(n)-a(n-2)` -/
def P11340030167898601430.Spec : Prop :=
  ∀ n, P11340030167898601430.a n = A251745 n

theorem P11340030167898601430.correct : P11340030167898601430.Spec := by
  intro n
  simp only [A251745]

end A251745

/-! ## A251745.P5660086945971025280

`A251744(n+1)-A079262(n)`
-/

namespace A251745.P5660086945971025280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 (n + 1) - A079262 n

end

end A251745.P5660086945971025280

namespace A251745

/-- `A251744(n+1)-A079262(n)` -/
def P5660086945971025280.Spec : Prop :=
  ∀ n, P5660086945971025280.a n = A251745 n

end A251745

/-! ## A251745.P14228050221247197809

`A251744(n+1)+A251740(n)-A251672(n+1)`
-/

namespace A251745.P14228050221247197809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 (n + 1) + (A251740 n - A251672 (n + 1))

end

end A251745.P14228050221247197809

namespace A251745

/-- `A251744(n+1)+A251740(n)-A251672(n+1)` -/
def P14228050221247197809.Spec : Prop :=
  ∀ n, P14228050221247197809.a n = A251745 n

end A251745

/-! ## A251745.P968271631085573437

`A251744(n+1)+A251741(n)-A251740(n+1)`
-/

namespace A251745.P968271631085573437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 (n + 1) + (A251741 n - A251740 (n + 1))

end

end A251745.P968271631085573437

namespace A251745

/-- `A251744(n+1)+A251741(n)-A251740(n+1)` -/
def P968271631085573437.Spec : Prop :=
  ∀ n, P968271631085573437.a n = A251745 n

end A251745

/-! ## A251745.P16662922204059983641

`A251744(n+1)+A251742(n)-A251741(n+1)`
-/

namespace A251745.P16662922204059983641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 (n + 1) + (A251742 n - A251741 (n + 1))

end

end A251745.P16662922204059983641

namespace A251745

/-- `A251744(n+1)+A251742(n)-A251741(n+1)` -/
def P16662922204059983641.Spec : Prop :=
  ∀ n, P16662922204059983641.a n = A251745 n

end A251745

/-! ## A251745.P628926617466785975

`A251744(n+1)+A251744(n)-A251742(n+1)`
-/

namespace A251745.P628926617466785975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 (n + 1) + (A251744 n - A251742 (n + 1))

end

end A251745.P628926617466785975

namespace A251745

/-- `A251744(n+1)+A251744(n)-A251742(n+1)` -/
def P628926617466785975.Spec : Prop :=
  ∀ n, P628926617466785975.a n = A251745 n

end A251745

/-! ## A251745.P5129321384715139616

`A251741(n+3)-A251744(n+3)`
-/

namespace A251745.P5129321384715139616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 3) - A251744 (n + 3)

end

end A251745.P5129321384715139616

namespace A251745

/-- `A251741(n+3)-A251744(n+3)` -/
def P5129321384715139616.Spec : Prop :=
  ∀ n, P5129321384715139616.a n = A251745 n

end A251745

/-!
# A251746: 9-step Fibonacci sequence starting with 0,0,0,0,0,0,0,1,0.

The programs for A251746, the canonical program `A251746.P9920030553128613572` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251746 has offset 0).

The definition of A251746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A251746.P9920030553128613572

`A104144(n+1)-A104144(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A251746

/-- `A104144(n+1)-A104144(n)` -/
def P9920030553128613572.Spec : Prop :=
  ∀ n, P9920030553128613572.a n = A251746 n

theorem P9920030553128613572.correct : P9920030553128613572.Spec := by
  intro n
  simp only [A251746]

end A251746

/-! ## A251746.P199095085433956179

`Δ[A104144(n)]`
-/

namespace A251746.P199095085433956179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251746.P199095085433956179

namespace A251746

/-- `Δ[A104144(n)]` -/
def P199095085433956179.Spec : Prop :=
  ∀ n, P199095085433956179.a n = A251746 n

theorem P199095085433956179.correct : P199095085433956179.Spec := by
  intro n
  simp only [A251746, Nat.add_sub_cancel, A251746.P199095085433956179.f1, A251746.P199095085433956179.a, A251746.P9920030553128613572.a, SequenceMachineLib.memo_apply]

end A251746

/-! ## A251746.P1332438251318179584

`Δ[A251747(n+1)-A251748(n)]`
-/

namespace A251746.P1332438251318179584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) - A251748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251746.P1332438251318179584

namespace A251746

/-- `Δ[A251747(n+1)-A251748(n)]` -/
def P1332438251318179584.Spec : Prop :=
  ∀ n, P1332438251318179584.a n = A251746 n

theorem P1332438251318179584.correct : P1332438251318179584.Spec := by
  intro n
  simp only [A251746, Nat.add_sub_cancel, A251746.P1332438251318179584.f1, A251746.P1332438251318179584.a, A251746.P9920030553128613572.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251747, A251747.P15525027116418191893.a, A251748, A251748.P1350453629097894107.a, A127193, A127193.P18137219135264365321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251746

/-! ## A251746.P8363255541930975239

`Δ[A251748(n+1)-A251749(n)]`
-/

namespace A251746.P8363255541930975239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 (n + 1) - A251749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251746.P8363255541930975239

namespace A251746

/-- `Δ[A251748(n+1)-A251749(n)]` -/
def P8363255541930975239.Spec : Prop :=
  ∀ n, P8363255541930975239.a n = A251746 n

theorem P8363255541930975239.correct : P8363255541930975239.Spec := by
  intro n
  simp only [A251746, Nat.add_sub_cancel, A251746.P8363255541930975239.f1, A251746.P8363255541930975239.a, A251746.P9920030553128613572.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251748, A251748.P1350453629097894107.a, A251749, A251749.P7611603450799538815.a, A127193, A127193.P18137219135264365321.a, A251747, A251747.P15525027116418191893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251746

/-! ## A251746.P5902128988397361029

`Δ[A251749(n+1)-A251750(n)]`
-/

namespace A251746.P5902128988397361029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 1) - A251750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251746.P5902128988397361029

namespace A251746

/-- `Δ[A251749(n+1)-A251750(n)]` -/
def P5902128988397361029.Spec : Prop :=
  ∀ n, P5902128988397361029.a n = A251746 n

theorem P5902128988397361029.correct : P5902128988397361029.Spec := by
  intro n
  simp only [A251746, Nat.add_sub_cancel, A251746.P5902128988397361029.f1, A251746.P5902128988397361029.a, A251746.P9920030553128613572.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251749, A251749.P7611603450799538815.a, A251750, A251750.P1137512469229179182.a, A127193, A127193.P18137219135264365321.a, A251748, A251748.P1350453629097894107.a, A251747, A251747.P15525027116418191893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251746

/-! ## A251746.P4934043258118628164

`Δ[A251750(n+1)-A251751(n)]`
-/

namespace A251746.P4934043258118628164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) - A251751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251746.P4934043258118628164

namespace A251746

/-- `Δ[A251750(n+1)-A251751(n)]` -/
def P4934043258118628164.Spec : Prop :=
  ∀ n, P4934043258118628164.a n = A251746 n

theorem P4934043258118628164.correct : P4934043258118628164.Spec := by
  intro n
  simp only [A251746, Nat.add_sub_cancel, A251746.P4934043258118628164.f1, A251746.P4934043258118628164.a, A251746.P9920030553128613572.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251750, A251750.P1137512469229179182.a, A251751, A251751.P14863279123700905689.a, A127193, A127193.P18137219135264365321.a, A251749, A251749.P7611603450799538815.a, A251748, A251748.P1350453629097894107.a, A251747, A251747.P15525027116418191893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251746

/-! ## A251746.P8730267484575452250

`Δ[A251751(n+1)-A251752(n)]`
-/

namespace A251746.P8730267484575452250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) - A251752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251746.P8730267484575452250

namespace A251746

/-- `Δ[A251751(n+1)-A251752(n)]` -/
def P8730267484575452250.Spec : Prop :=
  ∀ n, P8730267484575452250.a n = A251746 n

end A251746

/-!
# A251747: 9-step Fibonacci sequence starting with 0,0,0,0,0,0,1,0,0.

The programs for A251747, the canonical program `A251747.P15525027116418191893` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251747 has offset 0).

The definition of A251747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A251747.P15525027116418191893

`A104144(n+2)-A104144(n+1)-A104144(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A251747

/-- `A104144(n+2)-A104144(n+1)-A104144(n)` -/
def P15525027116418191893.Spec : Prop :=
  ∀ n, P15525027116418191893.a n = A251747 n

theorem P15525027116418191893.correct : P15525027116418191893.Spec := by
  intro n
  simp only [A251747]

end A251747

/-! ## A251747.P8365790747864988117

`A251746(n+1)-A104144(n)`
-/

namespace A251747.P8365790747864988117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 1) - A104144 n

end

end A251747.P8365790747864988117

namespace A251747

/-- `A251746(n+1)-A104144(n)` -/
def P8365790747864988117.Spec : Prop :=
  ∀ n, P8365790747864988117.a n = A251747 n

end A251747

/-! ## A251747.P9313146719909283545

`A251746(n+1)+A251749(n)-A251748(n+1)`
-/

namespace A251747.P9313146719909283545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 1) + (A251749 n - A251748 (n + 1))

end

end A251747.P9313146719909283545

namespace A251747

/-- `A251746(n+1)+A251749(n)-A251748(n+1)` -/
def P9313146719909283545.Spec : Prop :=
  ∀ n, P9313146719909283545.a n = A251747 n

theorem P9313146719909283545.correct : P9313146719909283545.Spec := by
  intro n
  simp only [A251747, Nat.add_sub_cancel, A251747.P9313146719909283545.a, A251747.P15525027116418191893.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251746, A251746.P9920030553128613572.a, A251748, A251748.P1350453629097894107.a, A251749, A251749.P7611603450799538815.a, A127193, A127193.P18137219135264365321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251747

/-! ## A251747.P9154824639620446024

`A251746(n+1)+A251750(n)-A251749(n+1)`
-/

namespace A251747.P9154824639620446024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 1) + (A251750 n - A251749 (n + 1))

end

end A251747.P9154824639620446024

namespace A251747

/-- `A251746(n+1)+A251750(n)-A251749(n+1)` -/
def P9154824639620446024.Spec : Prop :=
  ∀ n, P9154824639620446024.a n = A251747 n

theorem P9154824639620446024.correct : P9154824639620446024.Spec := by
  intro n
  simp only [A251747, Nat.add_sub_cancel, A251747.P9154824639620446024.a, A251747.P15525027116418191893.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251746, A251746.P9920030553128613572.a, A251749, A251749.P7611603450799538815.a, A251750, A251750.P1137512469229179182.a, A127193, A127193.P18137219135264365321.a, A251748, A251748.P1350453629097894107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251747

/-! ## A251747.P11689170337253979107

`A251746(n+1)+A251751(n)-A251750(n+1)`
-/

namespace A251747.P11689170337253979107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 1) + (A251751 n - A251750 (n + 1))

end

end A251747.P11689170337253979107

namespace A251747

/-- `A251746(n+1)+A251751(n)-A251750(n+1)` -/
def P11689170337253979107.Spec : Prop :=
  ∀ n, P11689170337253979107.a n = A251747 n

theorem P11689170337253979107.correct : P11689170337253979107.Spec := by
  intro n
  simp only [A251747, Nat.add_sub_cancel, A251747.P11689170337253979107.a, A251747.P15525027116418191893.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251746, A251746.P9920030553128613572.a, A251750, A251750.P1137512469229179182.a, A251751, A251751.P14863279123700905689.a, A127193, A127193.P18137219135264365321.a, A251749, A251749.P7611603450799538815.a, A251748, A251748.P1350453629097894107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251747

/-! ## A251747.P2371912410595093666

`A251746(n+1)+A251752(n)-A251751(n+1)`
-/

namespace A251747.P2371912410595093666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 1) + (A251752 n - A251751 (n + 1))

end

end A251747.P2371912410595093666

namespace A251747

/-- `A251746(n+1)+A251752(n)-A251751(n+1)` -/
def P2371912410595093666.Spec : Prop :=
  ∀ n, P2371912410595093666.a n = A251747 n

end A251747

/-! ## A251747.P11338683809304697222

`Δ[A104144(n+1)]-A104144(n)`
-/

namespace A251747.P11338683809304697222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A104144 n

end

end A251747.P11338683809304697222

namespace A251747

/-- `Δ[A104144(n+1)]-A104144(n)` -/
def P11338683809304697222.Spec : Prop :=
  ∀ n, P11338683809304697222.a n = A251747 n

theorem P11338683809304697222.correct : P11338683809304697222.Spec := by
  intro n
  simp only [A251747, Nat.add_sub_cancel, A251747.P11338683809304697222.f1, A251747.P11338683809304697222.a, A251747.P15525027116418191893.a, SequenceMachineLib.memo_apply]

end A251747

/-! ## A251747.P11428386170847994383

`A104144(n+2)-A251752(n+2)`
-/

namespace A251747.P11428386170847994383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 2) - A251752 (n + 2)

end

end A251747.P11428386170847994383

namespace A251747

/-- `A104144(n+2)-A251752(n+2)` -/
def P11428386170847994383.Spec : Prop :=
  ∀ n, P11428386170847994383.a n = A251747 n

end A251747

/-! ## A251747.P8801654576607577460

`∑[A251746(n+1)]-A251752(n+2)`
-/

namespace A251747.P8801654576607577460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251752 (n + 2)

end

end A251747.P8801654576607577460

namespace A251747

/-- `∑[A251746(n+1)]-A251752(n+2)` -/
def P8801654576607577460.Spec : Prop :=
  ∀ n, P8801654576607577460.a n = A251747 n

end A251747

/-!
# A251748: 9-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0,0.

The programs for A251748, the canonical program `A251748.P1350453629097894107` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251748 has offset 0).

The definition of A251748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251748.P1350453629097894107

`A251747(n+1)-A104144(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A251748

/-- `A251747(n+1)-A104144(n)` -/
def P1350453629097894107.Spec : Prop :=
  ∀ n, P1350453629097894107.a n = A251748 n

theorem P1350453629097894107.correct : P1350453629097894107.Spec := by
  intro n
  simp only [A251748]

end A251748

/-! ## A251748.P15006563125907398224

`A251747(n+1)+A251747(n)-A251746(n+1)`
-/

namespace A251748.P15006563125907398224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) + (A251747 n - A251746 (n + 1))

end

end A251748.P15006563125907398224

namespace A251748

/-- `A251747(n+1)+A251747(n)-A251746(n+1)` -/
def P15006563125907398224.Spec : Prop :=
  ∀ n, P15006563125907398224.a n = A251748 n

theorem P15006563125907398224.correct : P15006563125907398224.Spec := by
  intro n
  simp only [A251748, Nat.add_sub_cancel, A251748.P15006563125907398224.a, A251748.P1350453629097894107.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251746, A251746.P9920030553128613572.a, A251747, A251747.P15525027116418191893.a, A127193, A127193.P18137219135264365321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251748

/-! ## A251748.P11785128118699446067

`A251747(n+1)+A251750(n)-A251749(n+1)`
-/

namespace A251748.P11785128118699446067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) + (A251750 n - A251749 (n + 1))

end

end A251748.P11785128118699446067

namespace A251748

/-- `A251747(n+1)+A251750(n)-A251749(n+1)` -/
def P11785128118699446067.Spec : Prop :=
  ∀ n, P11785128118699446067.a n = A251748 n

theorem P11785128118699446067.correct : P11785128118699446067.Spec := by
  intro n
  simp only [A251748, Nat.add_sub_cancel, A251748.P11785128118699446067.a, A251748.P1350453629097894107.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251747, A251747.P15525027116418191893.a, A251749, A251749.P7611603450799538815.a, A251750, A251750.P1137512469229179182.a, A127193, A127193.P18137219135264365321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251748

/-! ## A251748.P18410951590652304340

`A251747(n+1)+A251751(n)-A251750(n+1)`
-/

namespace A251748.P18410951590652304340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) + (A251751 n - A251750 (n + 1))

end

end A251748.P18410951590652304340

namespace A251748

/-- `A251747(n+1)+A251751(n)-A251750(n+1)` -/
def P18410951590652304340.Spec : Prop :=
  ∀ n, P18410951590652304340.a n = A251748 n

theorem P18410951590652304340.correct : P18410951590652304340.Spec := by
  intro n
  simp only [A251748, Nat.add_sub_cancel, A251748.P18410951590652304340.a, A251748.P1350453629097894107.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251747, A251747.P15525027116418191893.a, A251750, A251750.P1137512469229179182.a, A251751, A251751.P14863279123700905689.a, A127193, A127193.P18137219135264365321.a, A251749, A251749.P7611603450799538815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251748

/-! ## A251748.P14920245040620263980

`A251747(n+1)+A251752(n)-A251751(n+1)`
-/

namespace A251748.P14920245040620263980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) + (A251752 n - A251751 (n + 1))

end

end A251748.P14920245040620263980

namespace A251748

/-- `A251747(n+1)+A251752(n)-A251751(n+1)` -/
def P14920245040620263980.Spec : Prop :=
  ∀ n, P14920245040620263980.a n = A251748 n

end A251748

/-! ## A251748.P17315191368851377790

`A251746(n+2)-A251752(n+2)`
-/

namespace A251748.P17315191368851377790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 (n + 2) - A251752 (n + 2)

end

end A251748.P17315191368851377790

namespace A251748

/-- `A251746(n+2)-A251752(n+2)` -/
def P17315191368851377790.Spec : Prop :=
  ∀ n, P17315191368851377790.a n = A251748 n

end A251748

/-!
# A251749: 9-step Fibonacci sequence starting with 0,0,0,0,1,0,0,0,0.

The programs for A251749, the canonical program `A251749.P7611603450799538815` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251749 has offset 0).

The definition of A251749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251749.P7611603450799538815

`A251748(n+1)-A104144(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251749

/-- `A251748(n+1)-A104144(n)` -/
def P7611603450799538815.Spec : Prop :=
  ∀ n, P7611603450799538815.a n = A251749 n

theorem P7611603450799538815.correct : P7611603450799538815.Spec := by
  intro n
  simp only [A251749]

end A251749

/-! ## A251749.P2091327353241299480

`A251748(n+1)+A251747(n)-A251746(n+1)`
-/

namespace A251749.P2091327353241299480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 (n + 1) + (A251747 n - A251746 (n + 1))

end

end A251749.P2091327353241299480

namespace A251749

/-- `A251748(n+1)+A251747(n)-A251746(n+1)` -/
def P2091327353241299480.Spec : Prop :=
  ∀ n, P2091327353241299480.a n = A251749 n

theorem P2091327353241299480.correct : P2091327353241299480.Spec := by
  intro n
  simp only [A251749, Nat.add_sub_cancel, A251749.P2091327353241299480.a, A251749.P7611603450799538815.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251746, A251746.P9920030553128613572.a, A251747, A251747.P15525027116418191893.a, A251748, A251748.P1350453629097894107.a, A127193, A127193.P18137219135264365321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251749

/-! ## A251749.P1745226699773608095

`A251748(n+1)+A251748(n)-A251747(n+1)`
-/

namespace A251749.P1745226699773608095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 (n + 1) + (A251748 n - A251747 (n + 1))

end

end A251749.P1745226699773608095

namespace A251749

/-- `A251748(n+1)+A251748(n)-A251747(n+1)` -/
def P1745226699773608095.Spec : Prop :=
  ∀ n, P1745226699773608095.a n = A251749 n

theorem P1745226699773608095.correct : P1745226699773608095.Spec := by
  intro n
  simp only [A251749, Nat.add_sub_cancel, A251749.P1745226699773608095.a, A251749.P7611603450799538815.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251747, A251747.P15525027116418191893.a, A251748, A251748.P1350453629097894107.a, A127193, A127193.P18137219135264365321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251749

/-! ## A251749.P164952150497287077

`A251748(n+1)+A251752(n)-A251751(n+1)`
-/

namespace A251749.P164952150497287077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 (n + 1) + (A251752 n - A251751 (n + 1))

end

end A251749.P164952150497287077

namespace A251749

/-- `A251748(n+1)+A251752(n)-A251751(n+1)` -/
def P164952150497287077.Spec : Prop :=
  ∀ n, P164952150497287077.a n = A251749 n

end A251749

/-! ## A251749.P17468841642563318427

`A251747(n+2)-A251752(n+2)`
-/

namespace A251749.P17468841642563318427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 2) - A251752 (n + 2)

end

end A251749.P17468841642563318427

namespace A251749

/-- `A251747(n+2)-A251752(n+2)` -/
def P17468841642563318427.Spec : Prop :=
  ∀ n, P17468841642563318427.a n = A251749 n

end A251749

/-! ## A251749.P14232398446445209990

`A082267(2*n+1)-Δ[A082267(2*n+1)]`
-/

namespace A251749.P14232398446445209990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082267 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082267 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A251749.P14232398446445209990

namespace A251749

/-- `A082267(2*n+1)-Δ[A082267(2*n+1)]` -/
def P14232398446445209990.Spec : Prop :=
  ∀ n, P14232398446445209990.a n = A251749 n

end A251749

/-!
# A251750: 9-step Fibonacci sequence starting with 0,0,0,1,0,0,0,0,0.

The programs for A251750, the canonical program `A251750.P1137512469229179182` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251750 has offset 0).

The definition of A251750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251750.P1137512469229179182

`A251749(n+1)-A104144(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A251750

/-- `A251749(n+1)-A104144(n)` -/
def P1137512469229179182.Spec : Prop :=
  ∀ n, P1137512469229179182.a n = A251750 n

theorem P1137512469229179182.correct : P1137512469229179182.Spec := by
  intro n
  simp only [A251750]

end A251750

/-! ## A251750.P17423706513504540962

`A251749(n+1)+A251747(n)-A251746(n+1)`
-/

namespace A251750.P17423706513504540962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 1) + (A251747 n - A251746 (n + 1))

end

end A251750.P17423706513504540962

namespace A251750

/-- `A251749(n+1)+A251747(n)-A251746(n+1)` -/
def P17423706513504540962.Spec : Prop :=
  ∀ n, P17423706513504540962.a n = A251750 n

theorem P17423706513504540962.correct : P17423706513504540962.Spec := by
  intro n
  simp only [A251750, Nat.add_sub_cancel, A251750.P17423706513504540962.a, A251750.P1137512469229179182.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251746, A251746.P9920030553128613572.a, A251747, A251747.P15525027116418191893.a, A251749, A251749.P7611603450799538815.a, A127193, A127193.P18137219135264365321.a, A251748, A251748.P1350453629097894107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251750

/-! ## A251750.P5167141750699872107

`A251749(n+1)+A251748(n)-A251747(n+1)`
-/

namespace A251750.P5167141750699872107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 1) + (A251748 n - A251747 (n + 1))

end

end A251750.P5167141750699872107

namespace A251750

/-- `A251749(n+1)+A251748(n)-A251747(n+1)` -/
def P5167141750699872107.Spec : Prop :=
  ∀ n, P5167141750699872107.a n = A251750 n

theorem P5167141750699872107.correct : P5167141750699872107.Spec := by
  intro n
  simp only [A251750, Nat.add_sub_cancel, A251750.P5167141750699872107.a, A251750.P1137512469229179182.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251747, A251747.P15525027116418191893.a, A251748, A251748.P1350453629097894107.a, A251749, A251749.P7611603450799538815.a, A127193, A127193.P18137219135264365321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251750

/-! ## A251750.P651277357293669756

`A251749(n+1)+A251749(n)-A251748(n+1)`
-/

namespace A251750.P651277357293669756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 1) + (A251749 n - A251748 (n + 1))

end

end A251750.P651277357293669756

namespace A251750

/-- `A251749(n+1)+A251749(n)-A251748(n+1)` -/
def P651277357293669756.Spec : Prop :=
  ∀ n, P651277357293669756.a n = A251750 n

theorem P651277357293669756.correct : P651277357293669756.Spec := by
  intro n
  simp only [A251750, Nat.add_sub_cancel, A251750.P651277357293669756.a, A251750.P1137512469229179182.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251748, A251748.P1350453629097894107.a, A251749, A251749.P7611603450799538815.a, A127193, A127193.P18137219135264365321.a, A251747, A251747.P15525027116418191893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251750

/-! ## A251750.P13423563472186039402

`A251749(n+1)+A251752(n)-A251751(n+1)`
-/

namespace A251750.P13423563472186039402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 1) + (A251752 n - A251751 (n + 1))

end

end A251750.P13423563472186039402

namespace A251750

/-- `A251749(n+1)+A251752(n)-A251751(n+1)` -/
def P13423563472186039402.Spec : Prop :=
  ∀ n, P13423563472186039402.a n = A251750 n

end A251750

/-! ## A251750.P10608800908498962771

`A251748(n+2)-A251752(n+2)`
-/

namespace A251750.P10608800908498962771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251748 (n + 2) - A251752 (n + 2)

end

end A251750.P10608800908498962771

namespace A251750

/-- `A251748(n+2)-A251752(n+2)` -/
def P10608800908498962771.Spec : Prop :=
  ∀ n, P10608800908498962771.a n = A251750 n

end A251750

/-! ## A251750.P10083313635031776883

`A251747(n+3)-A251751(n+3)`
-/

namespace A251750.P10083313635031776883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 3) - A251751 (n + 3)

end

end A251750.P10083313635031776883

namespace A251750

/-- `A251747(n+3)-A251751(n+3)` -/
def P10083313635031776883.Spec : Prop :=
  ∀ n, P10083313635031776883.a n = A251750 n

end A251750

/-!
# A251751: 9-step Fibonacci sequence starting with 0,0,1,0,0,0,0,0,0.

The programs for A251751, the canonical program `A251751.P14863279123700905689` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251751 has offset 0).

The definition of A251751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251751.P14863279123700905689

`A251750(n+1)-A104144(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A251751

/-- `A251750(n+1)-A104144(n)` -/
def P14863279123700905689.Spec : Prop :=
  ∀ n, P14863279123700905689.a n = A251751 n

theorem P14863279123700905689.correct : P14863279123700905689.Spec := by
  intro n
  simp only [A251751]

end A251751

/-! ## A251751.P308093366132236618

`A251750(n+1)+A251747(n)-A251746(n+1)`
-/

namespace A251751.P308093366132236618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) + (A251747 n - A251746 (n + 1))

end

end A251751.P308093366132236618

namespace A251751

/-- `A251750(n+1)+A251747(n)-A251746(n+1)` -/
def P308093366132236618.Spec : Prop :=
  ∀ n, P308093366132236618.a n = A251751 n

theorem P308093366132236618.correct : P308093366132236618.Spec := by
  intro n
  simp only [A251751, Nat.add_sub_cancel, A251751.P308093366132236618.a, A251751.P14863279123700905689.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251746, A251746.P9920030553128613572.a, A251747, A251747.P15525027116418191893.a, A251750, A251750.P1137512469229179182.a, A127193, A127193.P18137219135264365321.a, A251749, A251749.P7611603450799538815.a, A251748, A251748.P1350453629097894107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251751

/-! ## A251751.P1206066479314254602

`A251750(n+1)+A251748(n)-A251747(n+1)`
-/

namespace A251751.P1206066479314254602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) + (A251748 n - A251747 (n + 1))

end

end A251751.P1206066479314254602

namespace A251751

/-- `A251750(n+1)+A251748(n)-A251747(n+1)` -/
def P1206066479314254602.Spec : Prop :=
  ∀ n, P1206066479314254602.a n = A251751 n

theorem P1206066479314254602.correct : P1206066479314254602.Spec := by
  intro n
  simp only [A251751, Nat.add_sub_cancel, A251751.P1206066479314254602.a, A251751.P14863279123700905689.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251747, A251747.P15525027116418191893.a, A251748, A251748.P1350453629097894107.a, A251750, A251750.P1137512469229179182.a, A127193, A127193.P18137219135264365321.a, A251749, A251749.P7611603450799538815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251751

/-! ## A251751.P4635630710051206423

`A251750(n+1)+A251749(n)-A251748(n+1)`
-/

namespace A251751.P4635630710051206423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) + (A251749 n - A251748 (n + 1))

end

end A251751.P4635630710051206423

namespace A251751

/-- `A251750(n+1)+A251749(n)-A251748(n+1)` -/
def P4635630710051206423.Spec : Prop :=
  ∀ n, P4635630710051206423.a n = A251751 n

theorem P4635630710051206423.correct : P4635630710051206423.Spec := by
  intro n
  simp only [A251751, Nat.add_sub_cancel, A251751.P4635630710051206423.a, A251751.P14863279123700905689.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251748, A251748.P1350453629097894107.a, A251749, A251749.P7611603450799538815.a, A251750, A251750.P1137512469229179182.a, A127193, A127193.P18137219135264365321.a, A251747, A251747.P15525027116418191893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251751

/-! ## A251751.P13882136010096422854

`A251750(n+1)+A251750(n)-A251749(n+1)`
-/

namespace A251751.P13882136010096422854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) + (A251750 n - A251749 (n + 1))

end

end A251751.P13882136010096422854

namespace A251751

/-- `A251750(n+1)+A251750(n)-A251749(n+1)` -/
def P13882136010096422854.Spec : Prop :=
  ∀ n, P13882136010096422854.a n = A251751 n

theorem P13882136010096422854.correct : P13882136010096422854.Spec := by
  intro n
  simp only [A251751, Nat.add_sub_cancel, A251751.P13882136010096422854.a, A251751.P14863279123700905689.a, A104144, A104144.P15865153976698881542.f1, A104144.P15865153976698881542.a, A251749, A251749.P7611603450799538815.a, A251750, A251750.P1137512469229179182.a, A127193, A127193.P18137219135264365321.a, A251748, A251748.P1350453629097894107.a, A251747, A251747.P15525027116418191893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A251751

/-! ## A251751.P11611625095490477391

`A251749(n+2)-A251752(n+2)`
-/

namespace A251751.P11611625095490477391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 2) - A251752 (n + 2)

end

end A251751.P11611625095490477391

namespace A251751

/-- `A251749(n+2)-A251752(n+2)` -/
def P11611625095490477391.Spec : Prop :=
  ∀ n, P11611625095490477391.a n = A251751 n

end A251751

/-!
# A251752: 9-step Fibonacci sequence starting with 0,1,0,0,0,0,0,0,0.

The programs for A251752, the canonical program `A251752.P3616439645300721180` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251752 has offset 0).

The definition of A251752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251752.P3616439645300721180

`A251750(n)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A251752

/-- `A251750(n)-a(n-2)` -/
def P3616439645300721180.Spec : Prop :=
  ∀ n, P3616439645300721180.a n = A251752 n

theorem P3616439645300721180.correct : P3616439645300721180.Spec := by
  intro n
  simp only [A251752]

end A251752

/-! ## A251752.P12643358466948270203

`A251751(n+1)-A104144(n)`
-/

namespace A251752.P12643358466948270203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) - A104144 n

end

end A251752.P12643358466948270203

namespace A251752

/-- `A251751(n+1)-A104144(n)` -/
def P12643358466948270203.Spec : Prop :=
  ∀ n, P12643358466948270203.a n = A251752 n

end A251752

/-! ## A251752.P6295210328994813845

`A251751(n+1)+A251747(n)-A251746(n+1)`
-/

namespace A251752.P6295210328994813845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) + (A251747 n - A251746 (n + 1))

end

end A251752.P6295210328994813845

namespace A251752

/-- `A251751(n+1)+A251747(n)-A251746(n+1)` -/
def P6295210328994813845.Spec : Prop :=
  ∀ n, P6295210328994813845.a n = A251752 n

end A251752

/-! ## A251752.P7073379518597404278

`A251751(n+1)+A251748(n)-A251747(n+1)`
-/

namespace A251752.P7073379518597404278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) + (A251748 n - A251747 (n + 1))

end

end A251752.P7073379518597404278

namespace A251752

/-- `A251751(n+1)+A251748(n)-A251747(n+1)` -/
def P7073379518597404278.Spec : Prop :=
  ∀ n, P7073379518597404278.a n = A251752 n

end A251752

/-! ## A251752.P8901970013402665827

`A251751(n+1)+A251749(n)-A251748(n+1)`
-/

namespace A251752.P8901970013402665827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) + (A251749 n - A251748 (n + 1))

end

end A251752.P8901970013402665827

namespace A251752

/-- `A251751(n+1)+A251749(n)-A251748(n+1)` -/
def P8901970013402665827.Spec : Prop :=
  ∀ n, P8901970013402665827.a n = A251752 n

end A251752

/-! ## A251752.P3453924578341103095

`A251751(n+1)+A251750(n)-A251749(n+1)`
-/

namespace A251752.P3453924578341103095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) + (A251750 n - A251749 (n + 1))

end

end A251752.P3453924578341103095

namespace A251752

/-- `A251751(n+1)+A251750(n)-A251749(n+1)` -/
def P3453924578341103095.Spec : Prop :=
  ∀ n, P3453924578341103095.a n = A251752 n

end A251752

/-! ## A251752.P4999375629959864956

`A251751(n+1)+A251751(n)-A251750(n+1)`
-/

namespace A251752.P4999375629959864956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251751 (n + 1) + (A251751 n - A251750 (n + 1))

end

end A251752.P4999375629959864956

namespace A251752

/-- `A251751(n+1)+A251751(n)-A251750(n+1)` -/
def P4999375629959864956.Spec : Prop :=
  ∀ n, P4999375629959864956.a n = A251752 n

end A251752

/-! ## A251752.P15312982653964768436

`A251749(n+3)-A251751(n+3)`
-/

namespace A251752.P15312982653964768436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 3) - A251751 (n + 3)

end

end A251752.P15312982653964768436

namespace A251752

/-- `A251749(n+3)-A251751(n+3)` -/
def P15312982653964768436.Spec : Prop :=
  ∀ n, P15312982653964768436.a n = A251752 n

end A251752

/-!
# A251753: n!/pp, where pp is the largest perfect power (A001597) which divides n!.

The programs for A251753, there is no canonical definition to state claims against.
-/

/-! ## A251753.P14495590802933921163

`n!/A090630(n)`
-/

namespace A251753.P14495590802933921163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A090630 n : ℚ)

end

end A251753.P14495590802933921163

/-! ## A251753.P9374879196010515419

`A000142(n)/A090630(n)`
-/

namespace A251753.P9374879196010515419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A090630 n : ℚ)

end

end A251753.P9374879196010515419

/-! ## A251753.P10539358540397690995

`abs(A133942(n)/A090630(n))`
-/

namespace A251753.P10539358540397690995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A133942 n : ℚ) / (A090630 n : ℚ)|

end

end A251753.P10539358540397690995

/-! ## A251753.P15363830298053002720

`A081123(2*n)/A090630(n)`
-/

namespace A251753.P15363830298053002720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (2 * n) : ℚ) / (A090630 n : ℚ)

end

end A251753.P15363830298053002720

/-!
# A251754: Digital root of A027444(n) = n + n^2 + n^3, n>=1. Repeat(3, 5, 3, 3, 2, 6, 3, 8, 9).

The programs for A251754, the canonical program `A251754.P8536042043638474551` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251754 has offset 1).

The definition of A251754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251754.P8536042043638474551

`A010888(A027444(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251754

/-- `A010888(A027444(n+1))` -/
def P8536042043638474551.Spec : Prop :=
  ∀ n, P8536042043638474551.a n = A251754 (n + 1)

theorem P8536042043638474551.correct : P8536042043638474551.Spec := by
  intro n
  simp only [A251754, Nat.add_sub_cancel]

end A251754

/-!
# A251755: Digital root of n + n^2.

The programs for A251755, the canonical program `A251755.P8297826548140478426` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251755 has offset 0).

The definition of A251755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251755.P8297826548140478426

`A010888(A002378(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251755

/-- `A010888(A002378(n))` -/
def P8297826548140478426.Spec : Prop :=
  ∀ n, P8297826548140478426.a n = A251755 n

theorem P8297826548140478426.correct : P8297826548140478426.Spec := by
  intro n
  simp only [A251755]

end A251755

/-!
# A251756: a(0) = 0; for n>0, a(n) is the smallest integer not already in the list with a composite common factor with a(n-1).

The programs for A251756, there is no canonical definition to state claims against.
-/

/-! ## A251756.P2612008022410962007

`A064418(n+3)%(A279026(3*(n+1))+1)`
-/

namespace A251756.P2612008022410962007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064418 (n + 3)) (A279026 (3 * (n + 1)) + 1)

end

end A251756.P2612008022410962007

/-! ## A251756.P15726064086850915585

`A064418(n+3)*A325977(A007097(n))`
-/

namespace A251756.P15726064086850915585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064418 (n + 3) * A325977 (A007097 n).toNat

end

end A251756.P15726064086850915585

/-! ## A251756.P14529386704011184112

`A064418(n+3)%A069609(A083937(n))`
-/

namespace A251756.P14529386704011184112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064418 (n + 3)) (A069609 (A083937 n).toNat)

end

end A251756.P14529386704011184112

/-!
# A251758: Let n>=2 be a positive integer with divisors 1 = d_1 < d_2 < ... < d_k = n, and s = d_1*d_2 + d_2*d_3 + ... + d_(k-1)*d_k. The sequence lists the values a(n) = floor(n^2/s).

The programs for A251758, there is no canonical definition to state claims against.
-/

/-! ## A251758.P8025915351564404653

`floor((n+2)²/A078730(n+2))`
-/

namespace A251758.P8025915351564404653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 : ℚ) / (A078730 (n + 2) : ℚ)⌋

end

end A251758.P8025915351564404653

/-! ## A251758.P6807443921372463263

`A250480(A055396(A000040(n+2)))`
-/

namespace A251758.P6807443921372463263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250480 (A055396 (A000040 (n + 2)).toNat).toNat

end

end A251758.P6807443921372463263

/-! ## A251758.P17743721136999312465

`A286477(A290641(n+2))`
-/

namespace A251758.P17743721136999312465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A290641 (n + 2)).toNat

end

end A251758.P17743721136999312465

/-! ## A251758.P11521565997641075850

`gcd(A084129(n+1)*A250480(n+2), A250480(n+2))`
-/

namespace A251758.P11521565997641075850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084129 (n + 1) * A250480 (n + 2)) (A250480 (n + 2))

end

end A251758.P11521565997641075850

/-! ## A251758.P2428828166832546771

`A286477(A064988(n+2))-1`
-/

namespace A251758.P2428828166832546771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A064988 (n + 2)).toNat - 1

end

end A251758.P2428828166832546771

/-! ## A251758.P9210619642787597157

`A005171(A250480(n+2)²)*A250480(n+2)`
-/

namespace A251758.P9210619642787597157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A250480 (n + 2) ^ 2).toNat * A250480 (n + 2)

end

end A251758.P9210619642787597157

/-! ## A251758.P643859429043061977

`A092925(n+3)%A308480(n+2)`
-/

namespace A251758.P643859429043061977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092925 (n + 3)) (A308480 (n + 2))

end

end A251758.P643859429043061977

/-! ## A251758.P13498322876736696238

`A089026(A089026(n+2)²)*A250480(n+2)`
-/

namespace A251758.P13498322876736696238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A089026 (n + 2) ^ 2).toNat * A250480 (n + 2)

end

end A251758.P13498322876736696238

/-! ## A251758.P14027959450602293869

`A250480(n+2)/A089026(A250480(n+2)²)`
-/

namespace A251758.P14027959450602293869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250480 (n + 2) : ℚ) / (A089026 (A250480 (n + 2) ^ 2).toNat : ℚ)

end

end A251758.P14027959450602293869

/-!
# A251759: 10-step Fibonacci sequence starting with 0,0,0,0,0,0,0,0,1,0.

The programs for A251759, there is no canonical definition to state claims against.
-/

/-! ## A251759.P8500902487922356063

`A122265(n+1)-A122265(n)`
-/

namespace A251759.P8500902487922356063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 (n + 1) - A122265 n

end

end A251759.P8500902487922356063

/-! ## A251759.P1608855082539539615

`Δ[A122265(n)]`
-/

namespace A251759.P1608855082539539615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251759.P1608855082539539615

/-! ## A251759.P11687363528231681266

`Δ[A251760(n+1)-A251761(n)]`
-/

namespace A251759.P11687363528231681266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) - A251761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251759.P11687363528231681266

/-! ## A251759.P3070683703563589889

`Δ[A251761(n+1)-A251762(n)]`
-/

namespace A251759.P3070683703563589889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) - A251762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251759.P3070683703563589889

/-! ## A251759.P133395303569891104

`Δ[Δ[A127194(n+1)/9]]`
-/

namespace A251759.P133395303569891104
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127194 (n + 1) : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251759.P133395303569891104

/-!
# A251760: 10-step Fibonacci sequence starting with 0,0,0,0,0,0,0,1,0,0.

The programs for A251760, there is no canonical definition to state claims against.
-/

/-! ## A251760.P1281830997953217131

`A122265(n+2)-A122265(n+1)-A122265(n)`
-/

namespace A251760.P1281830997953217131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 (n + 2) - A122265 (n + 1) - A122265 n

end

end A251760.P1281830997953217131

/-! ## A251760.P14361739994096806118

`A251759(n+1)-A122265(n)`
-/

namespace A251760.P14361739994096806118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 1) - A122265 n

end

end A251760.P14361739994096806118

/-! ## A251760.P12135973292267368153

`A251759(n+1)+A251762(n)-A251761(n+1)`
-/

namespace A251760.P12135973292267368153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 1) + (A251762 n - A251761 (n + 1))

end

end A251760.P12135973292267368153

/-! ## A251760.P5088121452106526058

`A251759(n+1)+A251763(n)-A251762(n+1)`
-/

namespace A251760.P5088121452106526058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 1) + (A251763 n - A251762 (n + 1))

end

end A251760.P5088121452106526058

/-! ## A251760.P12030756342049335775

`A251759(n+1)+A251764(n)-A251763(n+1)`
-/

namespace A251760.P12030756342049335775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 1) + (A251764 n - A251763 (n + 1))

end

end A251760.P12030756342049335775

/-! ## A251760.P14170492262547234258

`A251759(n+1)+A251765(n)-A251764(n+1)`
-/

namespace A251760.P14170492262547234258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 1) + (A251765 n - A251764 (n + 1))

end

end A251760.P14170492262547234258

/-! ## A251760.P6396785857213987747

`A251759(n+1)+A251766(n)-A251765(n+1)`
-/

namespace A251760.P6396785857213987747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 1) + (A251766 n - A251765 (n + 1))

end

end A251760.P6396785857213987747

/-! ## A251760.P11290488517278080268

`Δ[A122265(n+1)]-A122265(n)`
-/

namespace A251760.P11290488517278080268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122265 n

end

end A251760.P11290488517278080268

/-! ## A251760.P1824435450169298253

`A122265(n+2)-A251766(n+2)`
-/

namespace A251760.P1824435450169298253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 (n + 2) - A251766 (n + 2)

end

end A251760.P1824435450169298253

/-!
# A251761: 10-step Fibonacci sequence starting with 0,0,0,0,0,0,1,0,0,0.

The programs for A251761, there is no canonical definition to state claims against.
-/

/-! ## A251761.P7246665603729549752

`A251760(n+1)-A122265(n)`
-/

namespace A251761.P7246665603729549752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) - A122265 n

end

end A251761.P7246665603729549752

/-! ## A251761.P12176696488025012543

`A251760(n+1)+A251760(n)-A251759(n+1)`
-/

namespace A251761.P12176696488025012543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) + (A251760 n - A251759 (n + 1))

end

end A251761.P12176696488025012543

/-! ## A251761.P2488441169979284832

`A251760(n+1)+A251763(n)-A251762(n+1)`
-/

namespace A251761.P2488441169979284832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) + (A251763 n - A251762 (n + 1))

end

end A251761.P2488441169979284832

/-! ## A251761.P15980065392931928532

`A251760(n+1)+A251764(n)-A251763(n+1)`
-/

namespace A251761.P15980065392931928532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) + (A251764 n - A251763 (n + 1))

end

end A251761.P15980065392931928532

/-! ## A251761.P9620612200535635949

`A251760(n+1)+A251765(n)-A251764(n+1)`
-/

namespace A251761.P9620612200535635949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) + (A251765 n - A251764 (n + 1))

end

end A251761.P9620612200535635949

/-! ## A251761.P14021339392767794597

`A251760(n+1)+A251766(n)-A251765(n+1)`
-/

namespace A251761.P14021339392767794597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 1) + (A251766 n - A251765 (n + 1))

end

end A251761.P14021339392767794597

/-! ## A251761.P6716579578660108296

`A251759(n+2)-A251766(n+2)`
-/

namespace A251761.P6716579578660108296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251759 (n + 2) - A251766 (n + 2)

end

end A251761.P6716579578660108296

/-!
# A251762: 10-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0,0,0.

The programs for A251762, there is no canonical definition to state claims against.
-/

/-! ## A251762.P7085992858727010821

`A251761(n+1)-A122265(n)`
-/

namespace A251762.P7085992858727010821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) - A122265 n

end

end A251762.P7085992858727010821

/-! ## A251762.P2697060050713846373

`A251761(n+1)+A251760(n)-A251759(n+1)`
-/

namespace A251762.P2697060050713846373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) + (A251760 n - A251759 (n + 1))

end

end A251762.P2697060050713846373

/-! ## A251762.P2353905872594872489

`A251761(n+1)+A251761(n)-A251760(n+1)`
-/

namespace A251762.P2353905872594872489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) + (A251761 n - A251760 (n + 1))

end

end A251762.P2353905872594872489

/-! ## A251762.P3759645633439439173

`A251761(n+1)+A251764(n)-A251763(n+1)`
-/

namespace A251762.P3759645633439439173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) + (A251764 n - A251763 (n + 1))

end

end A251762.P3759645633439439173

/-! ## A251762.P4140093477293983208

`A251761(n+1)+A251765(n)-A251764(n+1)`
-/

namespace A251762.P4140093477293983208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) + (A251765 n - A251764 (n + 1))

end

end A251762.P4140093477293983208

/-! ## A251762.P2961356686667944707

`A251761(n+1)+A251766(n)-A251765(n+1)`
-/

namespace A251762.P2961356686667944707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 1) + (A251766 n - A251765 (n + 1))

end

end A251762.P2961356686667944707

/-! ## A251762.P10668532025553226860

`A251760(n+2)-A251766(n+2)`
-/

namespace A251762.P10668532025553226860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (n + 2) - A251766 (n + 2)

end

end A251762.P10668532025553226860

/-!
# A251763: 10-step Fibonacci sequence starting with 0,0,0,0,1,0,0,0,0,0.

The programs for A251763, there is no canonical definition to state claims against.
-/

/-! ## A251763.P12939857176687680983

`A251762(n+1)-A122265(n)`
-/

namespace A251763.P12939857176687680983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 1) - A122265 n

end

end A251763.P12939857176687680983

/-! ## A251763.P15505693272206789345

`A251762(n+1)+A251760(n)-A251759(n+1)`
-/

namespace A251763.P15505693272206789345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 1) + (A251760 n - A251759 (n + 1))

end

end A251763.P15505693272206789345

/-! ## A251763.P12620719192000627079

`A251762(n+1)+A251761(n)-A251760(n+1)`
-/

namespace A251763.P12620719192000627079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 1) + (A251761 n - A251760 (n + 1))

end

end A251763.P12620719192000627079

/-! ## A251763.P6396041873358520817

`A251762(n+1)+A251762(n)-A251761(n+1)`
-/

namespace A251763.P6396041873358520817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 1) + (A251762 n - A251761 (n + 1))

end

end A251763.P6396041873358520817

/-! ## A251763.P15163380842110726063

`A251762(n+1)+A251765(n)-A251764(n+1)`
-/

namespace A251763.P15163380842110726063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 1) + (A251765 n - A251764 (n + 1))

end

end A251763.P15163380842110726063

/-! ## A251763.P18233088607485484255

`A251762(n+1)+A251766(n)-A251765(n+1)`
-/

namespace A251763.P18233088607485484255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 1) + (A251766 n - A251765 (n + 1))

end

end A251763.P18233088607485484255

/-! ## A251763.P14220752592473612661

`A251761(n+2)-A251766(n+2)`
-/

namespace A251763.P14220752592473612661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 2) - A251766 (n + 2)

end

end A251763.P14220752592473612661

/-!
# A251764: 10-step Fibonacci sequence starting with 0,0,0,1,0,0,0,0,0,0.

The programs for A251764, there is no canonical definition to state claims against.
-/

/-! ## A251764.P12044829447520027992

`A251763(n+1)-A122265(n)`
-/

namespace A251764.P12044829447520027992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 1) - A122265 n

end

end A251764.P12044829447520027992

/-! ## A251764.P155270677324679280

`A251763(n+1)+A251760(n)-A251759(n+1)`
-/

namespace A251764.P155270677324679280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 1) + (A251760 n - A251759 (n + 1))

end

end A251764.P155270677324679280

/-! ## A251764.P7665727313947141915

`A251763(n+1)+A251761(n)-A251760(n+1)`
-/

namespace A251764.P7665727313947141915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 1) + (A251761 n - A251760 (n + 1))

end

end A251764.P7665727313947141915

/-! ## A251764.P13312659842307711478

`A251763(n+1)+A251762(n)-A251761(n+1)`
-/

namespace A251764.P13312659842307711478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 1) + (A251762 n - A251761 (n + 1))

end

end A251764.P13312659842307711478

/-! ## A251764.P4715080743975324907

`A251763(n+1)+A251763(n)-A251762(n+1)`
-/

namespace A251764.P4715080743975324907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 1) + (A251763 n - A251762 (n + 1))

end

end A251764.P4715080743975324907

/-! ## A251764.P16709638787871403838

`A251763(n+1)+A251766(n)-A251765(n+1)`
-/

namespace A251764.P16709638787871403838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 1) + (A251766 n - A251765 (n + 1))

end

end A251764.P16709638787871403838

/-! ## A251764.P14196239928796419325

`A251762(n+2)-A251766(n+2)`
-/

namespace A251764.P14196239928796419325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251762 (n + 2) - A251766 (n + 2)

end

end A251764.P14196239928796419325

/-! ## A251764.P11373668415702362046

`A251761(n+3)-A251765(n+3)`
-/

namespace A251764.P11373668415702362046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251761 (n + 3) - A251765 (n + 3)

end

end A251764.P11373668415702362046

/-! ## A251764.P8147027982970997190

`A122265(n+6)-A251762(n+6)`
-/

namespace A251764.P8147027982970997190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 (n + 6) - A251762 (n + 6)

end

end A251764.P8147027982970997190

/-!
# A251765: 10-step Fibonacci sequence starting with 0,0,1,0,0,0,0,0,0,0.

The programs for A251765, there is no canonical definition to state claims against.
-/

/-! ## A251765.P5005267649453166915

`A251764(n+1)-A122265(n)`
-/

namespace A251765.P5005267649453166915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (n + 1) - A122265 n

end

end A251765.P5005267649453166915

/-! ## A251765.P992758639986066317

`A251764(n+1)+A251760(n)-A251759(n+1)`
-/

namespace A251765.P992758639986066317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (n + 1) + (A251760 n - A251759 (n + 1))

end

end A251765.P992758639986066317

/-! ## A251765.P5926503166937611234

`A251764(n+1)+A251761(n)-A251760(n+1)`
-/

namespace A251765.P5926503166937611234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (n + 1) + (A251761 n - A251760 (n + 1))

end

end A251765.P5926503166937611234

/-! ## A251765.P263148380785906992

`A251764(n+1)+A251762(n)-A251761(n+1)`
-/

namespace A251765.P263148380785906992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (n + 1) + (A251762 n - A251761 (n + 1))

end

end A251765.P263148380785906992

/-! ## A251765.P15171537645398014040

`A251764(n+1)+A251763(n)-A251762(n+1)`
-/

namespace A251765.P15171537645398014040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (n + 1) + (A251763 n - A251762 (n + 1))

end

end A251765.P15171537645398014040

/-! ## A251765.P11103242595698670594

`A251764(n+1)+A251764(n)-A251763(n+1)`
-/

namespace A251765.P11103242595698670594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251764 (n + 1) + (A251764 n - A251763 (n + 1))

end

end A251765.P11103242595698670594

/-! ## A251765.P13197687055233889504

`A251763(n+2)-A251766(n+2)`
-/

namespace A251765.P13197687055233889504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 2) - A251766 (n + 2)

end

end A251765.P13197687055233889504

/-! ## A251765.P526370505866573192

`Δ[A122265(n+6)]-A251762(n+6)`
-/

namespace A251765.P526370505866573192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122265 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251762 (n + 6)

end

end A251765.P526370505866573192

/-!
# A251766: 10-step Fibonacci sequence starting with 0,1,0,0,0,0,0,0,0,0.

The programs for A251766, there is no canonical definition to state claims against.
-/

/-! ## A251766.P10553309870148302754

`A251764(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A251766.P10553309870148302754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A251764 n - a (n - 2)

end

end A251766.P10553309870148302754

/-! ## A251766.P2344821127412472937

`A251765(n+1)-A122265(n)`
-/

namespace A251766.P2344821127412472937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) - A122265 n

end

end A251766.P2344821127412472937

/-! ## A251766.P7621734361514558596

`A251765(n+1)+A251760(n)-A251759(n+1)`
-/

namespace A251766.P7621734361514558596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) + (A251760 n - A251759 (n + 1))

end

end A251766.P7621734361514558596

/-! ## A251766.P12238056215353297101

`A251765(n+1)+A251761(n)-A251760(n+1)`
-/

namespace A251766.P12238056215353297101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) + (A251761 n - A251760 (n + 1))

end

end A251766.P12238056215353297101

/-! ## A251766.P4444691332555601591

`A251765(n+1)+A251762(n)-A251761(n+1)`
-/

namespace A251766.P4444691332555601591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) + (A251762 n - A251761 (n + 1))

end

end A251766.P4444691332555601591

/-! ## A251766.P12744504541548014351

`A251765(n+1)+A251763(n)-A251762(n+1)`
-/

namespace A251766.P12744504541548014351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) + (A251763 n - A251762 (n + 1))

end

end A251766.P12744504541548014351

/-! ## A251766.P16713266851889806362

`A251765(n+1)+A251764(n)-A251763(n+1)`
-/

namespace A251766.P16713266851889806362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) + (A251764 n - A251763 (n + 1))

end

end A251766.P16713266851889806362

/-! ## A251766.P5808727813102711450

`A251765(n+1)+A251765(n)-A251764(n+1)`
-/

namespace A251766.P5808727813102711450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251765 (n + 1) + (A251765 n - A251764 (n + 1))

end

end A251766.P5808727813102711450

/-! ## A251766.P8572345421153210041

`A251763(n+3)-A251765(n+3)`
-/

namespace A251766.P8572345421153210041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251763 (n + 3) - A251765 (n + 3)

end

end A251766.P8572345421153210041

/-!
# A251767: Consecutive repeated terms removed from in A251539.

The programs for A251767, there is no canonical definition to state claims against.
-/

/-! ## A251767.P11628650724608836359

`A251539(∑[A251768(n+1)])`
-/

namespace A251767.P11628650724608836359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251539 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251767.P11628650724608836359

/-! ## A251767.P5466638249382770580

`A301848(Δ[(n+1)*A048381(n+1)])`
-/

namespace A251767.P5466638249382770580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301848 (f1 (n + 1) - f1 n).toNat

end

end A251767.P5466638249382770580

/-! ## A251767.P17402438393063398325

`5-A002828(A008863(n))`
-/

namespace A251767.P17402438393063398325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A002828 (A008863 n).toNat

end

end A251767.P17402438393063398325

/-! ## A251767.P11948564131589087763

`5-A002828(Δ[A219531(n)])`
-/

namespace A251767.P11948564131589087763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A002828 (f1 (n + 1) - f1 n).toNat

end

end A251767.P11948564131589087763

/-!
# A251768: Run lengths in A251539.

The programs for A251768, there is no canonical definition to state claims against.
-/

/-! ## A251768.P10213367269302077648

`A000087(A353845(6*n-a(n-1)-1))` with `a(0)=7, a(1)=1`
-/

namespace A251768.P10213367269302077648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n a =>
  A000087 (A353845 ((6 * n : ℤ) - a (n - 1) - 1).toNat).toNat

end

end A251768.P10213367269302077648

/-! ## A251768.P15688853110504748601

`A125842(A040719(n)^A299581(n+1))`
-/

namespace A251768.P15688853110504748601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125842 (SequenceMachineLib.roundAway ((A040719 n : ℚ) ^ (A299581 (n + 1) : ℤ))).toNat

end

end A251768.P15688853110504748601

/-!
# A251771: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251771, there is no canonical definition to state claims against.
-/

/-! ## A251771.P6567777235234066760

`A251779(∑[4*n]+1)`
-/

namespace A251771.P6567777235234066760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251771.P6567777235234066760

/-! ## A251771.P10158940658377633823

`lcm(2, A251779(A001844(n)))`
-/

namespace A251771.P10158940658377633823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251779 (A001844 n).toNat)

end

end A251771.P10158940658377633823

/-! ## A251771.P10167986454919449232

`record[A003982(n)*A251779(n+1)]`
-/

namespace A251771.P10167986454919449232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251771.P10167986454919449232

/-! ## A251771.P9049165925219395797

`record[gcd(A114327(n), A251779(n+1))]`
-/

namespace A251771.P9049165925219395797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251779 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251771.P9049165925219395797

/-! ## A251771.P4154576369021626457

`or(A000038(n), A251779(A001844(n)))`
-/

namespace A251771.P4154576369021626457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251779 (A001844 n).toNat)

end

end A251771.P4154576369021626457

/-!
# A251772: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251772, there is no canonical definition to state claims against.
-/

/-! ## A251772.P256271650457587465

`A251779(∑[n]+1)`
-/

namespace A251772.P256271650457587465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251772.P256271650457587465

/-! ## A251772.P12694046781853400654

`lcm(2, A251779(A000124(n)))`
-/

namespace A251772.P12694046781853400654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251779 (A000124 n).toNat)

end

end A251772.P12694046781853400654

/-! ## A251772.P13374903239599240541

`record[A251779(A056534(n+1))]`
-/

namespace A251772.P13374903239599240541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251772.P13374903239599240541

/-! ## A251772.P10380703149182224883

`record[A176270(n)*A251779(n+1)]`
-/

namespace A251772.P10380703149182224883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A251779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251772.P10380703149182224883

/-! ## A251772.P10494999215031174257

`record[A251779(n+1)/A117401(n)]`
-/

namespace A251772.P10494999215031174257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251779 (n + 1) : ℚ) / (A117401 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251772.P10494999215031174257

/-!
# A251773: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251773, there is no canonical definition to state claims against.
-/

/-! ## A251773.P2489290547649739381

`A251779(∑[n+1]+2)`
-/

namespace A251773.P2489290547649739381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251773.P2489290547649739381

/-! ## A251773.P3990093907981828750

`lcm(2, A251779(A133263(n+1)))`
-/

namespace A251773.P3990093907981828750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251779 (A133263 (n + 1)).toNat)

end

end A251773.P3990093907981828750

/-! ## A251773.P7172947143919531543

`record[A251779(A339334(n+1)+2)]`
-/

namespace A251773.P7172947143919531543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A339334 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251773.P7172947143919531543

/-! ## A251773.P10610998509159784782

`A014963(10*20*(n+1))*A251779(A133263(n+1))`
-/

namespace A251773.P10610998509159784782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (20 * (n + 1))) * A251779 (A133263 (n + 1)).toNat

end

end A251773.P10610998509159784782

/-! ## A251773.P10202662738094630148

`A001222(A002148(n+1))*A251779(A133263(n+1))`
-/

namespace A251773.P10202662738094630148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002148 (n + 1)).toNat * A251779 (A133263 (n + 1)).toNat

end

end A251773.P10202662738094630148

/-!
# A251774: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251774, there is no canonical definition to state claims against.
-/

/-! ## A251774.P8330039556395712989

`A251779(∑[n+2]+4)`
-/

namespace A251774.P8330039556395712989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251774.P8330039556395712989

/-! ## A251774.P10905448138117721718

`lcm(2, A251779(A167614(n+1)))`
-/

namespace A251774.P10905448138117721718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251779 (A167614 (n + 1)).toNat)

end

end A251774.P10905448138117721718

/-! ## A251774.P805555088233081283

`A251779(A167614(n+1))*A291168(n)`
-/

namespace A251774.P805555088233081283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A167614 (n + 1)).toNat * A291168 n

end

end A251774.P805555088233081283

/-! ## A251774.P15470756963650072955

`A251779(A167614(n+1))+A034459(n+1)`
-/

namespace A251774.P15470756963650072955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A167614 (n + 1)).toNat + A034459 (n + 1)

end

end A251774.P15470756963650072955

/-! ## A251774.P16430524136378003484

`A251779(A000124(n+2)+2)*A304042(n)`
-/

namespace A251774.P16430524136378003484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A000124 (n + 2) + 2).toNat * A304042 n

end

end A251774.P16430524136378003484

/-!
# A251775: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251775, there is no canonical definition to state claims against.
-/

/-! ## A251775.P12138958175012065821

`A251779(∑[n+3]+7)`
-/

namespace A251775.P12138958175012065821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251775.P12138958175012065821

/-! ## A251775.P9612222685015450720

`A251779(A055999(n)+10)+A000007(2*(n+2))`
-/

namespace A251775.P9612222685015450720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A055999 n + 10).toNat + A000007 (2 * (n + 2))

end

end A251775.P9612222685015450720

/-! ## A251775.P3126808350445461935

`lcm(2, A251779(A141214(n+1)))`
-/

namespace A251775.P3126808350445461935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251779 (A141214 (n + 1)).toNat)

end

end A251775.P3126808350445461935

/-! ## A251775.P472914149190534354

`A251779(A141214(n+1))+A000035(2*n)`
-/

namespace A251775.P472914149190534354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A141214 (n + 1)).toNat + A000035 (2 * n)

end

end A251775.P472914149190534354

/-! ## A251775.P15401562123113766901

`A251779(A056000(n)+7)+A020761(2*n+3)`
-/

namespace A251775.P15401562123113766901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A056000 n + 7).toNat + A020761 (2 * n + 3)

end

end A251775.P15401562123113766901

/-!
# A251776: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251776, there is no canonical definition to state claims against.
-/

/-! ## A251776.P8835234208493378294

`A251779(A374005(n+1))`
-/

namespace A251776.P8835234208493378294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A374005 (n + 1)).toNat

end

end A251776.P8835234208493378294

/-! ## A251776.P9630201125439939894

`A251779(A167499(n+3))`
-/

namespace A251776.P9630201125439939894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A167499 (n + 3)).toNat

end

end A251776.P9630201125439939894

/-! ## A251776.P5229872690871349499

`A251779(A056000(n)+15)`
-/

namespace A251776.P5229872690871349499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A056000 n + 15).toNat

end

end A251776.P5229872690871349499

/-! ## A251776.P4404119195582579044

`A251779(Δ[A264443(n)])`
-/

namespace A251776.P4404119195582579044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (f1 (n + 1) - f1 n).toNat

end

end A251776.P4404119195582579044

/-! ## A251776.P5564208151143625335

`A251779(eq[4, A193592(n)])`
-/

namespace A251776.P5564208151143625335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251776.P5564208151143625335

/-!
# A251777: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251777, there is no canonical definition to state claims against.
-/

/-! ## A251777.P2582533768213511118

`A251779(A374007(n+1))`
-/

namespace A251777.P2582533768213511118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A374007 (n + 1)).toNat

end

end A251777.P2582533768213511118

/-! ## A251777.P9239075709069349246

`A251779(eq[7, A131818(n+1)])`
-/

namespace A251777.P9239075709069349246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251777.P9239075709069349246

/-! ## A251777.P4725514809374779606

`A251779(eq[3, A219347(n)])`
-/

namespace A251777.P4725514809374779606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251777.P4725514809374779606

/-! ## A251777.P1113369664434928928

`A251779(eq[5, A193592(n)])`
-/

namespace A251777.P1113369664434928928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251777.P1113369664434928928

/-! ## A251777.P13794767757321030637

`A251779(eq[8, A258709(n)])`
-/

namespace A251777.P13794767757321030637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251777.P13794767757321030637

/-!
# A251778: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum 3 or 6 and every diagonal and antidiagonal sum not 3 or 6.

The programs for A251778, there is no canonical definition to state claims against.
-/

/-! ## A251778.P13910596090375327298

`A251779(A374008(n+1))`
-/

namespace A251778.P13910596090375327298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A374008 (n + 1)).toNat

end

end A251778.P13910596090375327298

/-! ## A251778.P3970747202061121125

`A251779(A141214(n+3)+10)`
-/

namespace A251778.P3970747202061121125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A141214 (n + 3) + 10).toNat

end

end A251778.P3970747202061121125

/-! ## A251778.P6931803886076667333

`A251779(eq[8, A131818(n+1)])`
-/

namespace A251778.P6931803886076667333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251778.P6931803886076667333

/-! ## A251778.P8660583531823632825

`A251779(A055999(n+4))`
-/

namespace A251778.P8660583531823632825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (A055999 (n + 4)).toNat

end

end A251778.P8660583531823632825

/-! ## A251778.P4715656395016698258

`A251779(eq[4, A219347(n)])`
-/

namespace A251778.P4715656395016698258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251778.P4715656395016698258

/-!
# A251780: Digital root of A069778(n-1) = n^3 - n^2 + 1, n >= 1. Repeat(1, 6, 3, 7, 6, 6, 4, 6, 9).

The programs for A251780, the canonical program `A251780.P12883412261493277198` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251780 has offset 1).

The definition of A251780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251780.P12883412261493277198

`dr(abs((n+1)²-(n+1)-(n+1)^3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A251780

/-- `dr(abs((n+1)²-(n+1)-(n+1)^3))` -/
def P12883412261493277198.Spec : Prop :=
  ∀ n, (P12883412261493277198.a n : ℤ) = A251780 (n + 1)

theorem P12883412261493277198.correct : P12883412261493277198.Spec := by
  intro n
  simp only [A251780, Nat.add_sub_cancel]

end A251780

/-!
# A251781: Numbers whose square is the sum of two distinct positive cubes.

The programs for A251781, there is no canonical definition to state claims against.
-/

/-! ## A251781.P4194921067107117136

`lt[0, A025468(n²)]`
-/

namespace A251781.P4194921067107117136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A251781.P4194921067107117136

/-! ## A251781.P6840587418608301089

`eq[1, A025468(n*n^floor(atan(n)))]`
-/

namespace A251781.P6840587418608301089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (SequenceMachineLib.roundAway ((n : ℚ) * (n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A251781.P6840587418608301089

/-! ## A251781.P15703980664611724808

`eq[1, A025468(A000290(n))]`
-/

namespace A251781.P15703980664611724808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A000290 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A251781.P15703980664611724808

/-!
# A251783: Number of (n+2) X (n+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3 X 3 subblock summing to 2, 3, 6, or 7.

The programs for A251783, there is no canonical definition to state claims against.
-/

/-! ## A251783.P3568716237139456839

`A251791(∑[4*n]+1)`
-/

namespace A251783.P3568716237139456839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251783.P3568716237139456839

/-! ## A251783.P14268101912809190584

`lcm(2, A251791(A001844(n)))`
-/

namespace A251783.P14268101912809190584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251791 (A001844 n).toNat)

end

end A251783.P14268101912809190584

/-! ## A251783.P7695486137882084172

`record[gcd(A114327(n), A251791(n+1))]`
-/

namespace A251783.P7695486137882084172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251791 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251783.P7695486137882084172

/-! ## A251783.P15426197514263965088

`A251791(A001844(n))/A007318(C(n+2, 2))`
-/

namespace A251783.P15426197514263965088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251791 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose (n + 2) 2) : ℚ)

end

end A251783.P15426197514263965088

/-! ## A251783.P16243227500069216424

`A251791(A001844(n))/A001221(∑{p}[n+2, #])`
-/

namespace A251783.P16243227500069216424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251791 (A001844 n).toNat : ℚ) / (A001221 (∑ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A251783.P16243227500069216424

/-!
# A251784: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 3 6 or 7.

The programs for A251784, there is no canonical definition to state claims against.
-/

/-! ## A251784.P18082339809049942266

`A251791(∑[n]+1)`
-/

namespace A251784.P18082339809049942266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251784.P18082339809049942266

/-! ## A251784.P7618501934524256702

`A251791(A000124(n))+char[24]`
-/

namespace A251784.P7618501934524256702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251784.P7618501934524256702

/-! ## A251784.P17562952543678701916

`record[A010054(n)*A251791(n+1)]`
-/

namespace A251784.P17562952543678701916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251784.P17562952543678701916

/-! ## A251784.P11395387161942441391

`record[A251791(n+1)/A091042(n)]`
-/

namespace A251784.P11395387161942441391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251791 (n + 1) : ℚ) / (A091042 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251784.P11395387161942441391

/-! ## A251784.P12571747662326766690

`record[A251791(gcd(n+1, A002262(n)))]`
-/

namespace A251784.P12571747662326766690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (Int.gcd (n + 1 : ℤ) (A002262 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251784.P12571747662326766690

/-!
# A251785: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 3 6 or 7.

The programs for A251785, there is no canonical definition to state claims against.
-/

/-! ## A251785.P583492783996957500

`A251791(∑[n+1]+2)`
-/

namespace A251785.P583492783996957500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251785.P583492783996957500

/-! ## A251785.P14440952335471167829

`record[A251791(A008795(n)+2)]`
-/

namespace A251785.P14440952335471167829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251785.P14440952335471167829

/-! ## A251785.P12020133361594611834

`record[A251791(A133263(abs(1-n)))]`
-/

namespace A251785.P12020133361594611834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251785.P12020133361594611834

/-! ## A251785.P9337210148178077201

`record[A010054(n)*A251791(n+2)]`
-/

namespace A251785.P9337210148178077201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251791 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251785.P9337210148178077201

/-! ## A251785.P5160335429898202883

`record[A251791(n+2)/A091042(n)]`
-/

namespace A251785.P5160335429898202883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251791 (n + 2) : ℚ) / (A091042 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251785.P5160335429898202883

/-!
# A251786: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 3 6 or 7.

The programs for A251786, there is no canonical definition to state claims against.
-/

/-! ## A251786.P818749847266317905

`A251791(∑[n+2]+4)`
-/

namespace A251786.P818749847266317905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251786.P818749847266317905

/-! ## A251786.P17000028449710800852

`lcm(2, A251791(A167614(n+1)))`
-/

namespace A251786.P17000028449710800852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251791 (A167614 (n + 1)).toNat)

end

end A251786.P17000028449710800852

/-! ## A251786.P13639122857943925714

`record[A251791(A167614(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A251786.P13639122857943925714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251786.P13639122857943925714

/-! ## A251786.P6266090945398933835

`A251791(A167614(n+1))+A061858(n)`
-/

namespace A251786.P6266090945398933835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A167614 (n + 1)).toNat + A061858 n

end

end A251786.P6266090945398933835

/-! ## A251786.P3814615016999656447

`A251791(A167614(n+1))+A185284(n)`
-/

namespace A251786.P3814615016999656447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A167614 (n + 1)).toNat + A185284 n

end

end A251786.P3814615016999656447

/-!
# A251787: Number of (n+2)X(4+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 3 6 or 7.

The programs for A251787, there is no canonical definition to state claims against.
-/

/-! ## A251787.P7893674705502681696

`A251791(A141214(n)+7)`
-/

namespace A251787.P7893674705502681696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A141214 n + 7).toNat

end

end A251787.P7893674705502681696

/-! ## A251787.P6453543808488100060

`A251791(A055999(n)+10)`
-/

namespace A251787.P6453543808488100060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A055999 n + 10).toNat

end

end A251787.P6453543808488100060

/-! ## A251787.P17278227198002155133

`A251791(A167614(n+2)+1)`
-/

namespace A251787.P17278227198002155133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A167614 (n + 2) + 1).toNat

end

end A251787.P17278227198002155133

/-! ## A251787.P8863755923387067217

`A251791(Δ[A264443(n)-n²])`
-/

namespace A251787.P8863755923387067217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (f1 (n + 1) - f1 n).toNat

end

end A251787.P8863755923387067217

/-! ## A251787.P786236627692044263

`A251791(A080036(A167614(n+1)))`
-/

namespace A251787.P786236627692044263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A251787.P786236627692044263

/-!
# A251788: Number of (n+2)X(5+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 3 6 or 7.

The programs for A251788, there is no canonical definition to state claims against.
-/

/-! ## A251788.P5349511779518976873

`A251791(A167499(n+3))`
-/

namespace A251788.P5349511779518976873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A167499 (n + 3)).toNat

end

end A251788.P5349511779518976873

/-! ## A251788.P6497066269496743616

`A251791(A077169(n+5))`
-/

namespace A251788.P6497066269496743616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A077169 (n + 5)).toNat

end

end A251788.P6497066269496743616

/-! ## A251788.P16244987635727020305

`A251791(A038722(Δ[A264443(n)]))`
-/

namespace A251788.P16244987635727020305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A251788.P16244987635727020305

/-! ## A251788.P6323504594791960654

`A251791(A110654(Δ[A026046(n+6)]))`
-/

namespace A251788.P6323504594791960654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A110654 (f1 (n + 1) - f1 n).toNat).toNat

end

end A251788.P6323504594791960654

/-! ## A251788.P6448528291527577539

`A251791(Δ[A264443(n)])`
-/

namespace A251788.P6448528291527577539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (f1 (n + 1) - f1 n).toNat

end

end A251788.P6448528291527577539

/-!
# A251789: Number of (n+2)X(6+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 3 6 or 7.

The programs for A251789, there is no canonical definition to state claims against.
-/

/-! ## A251789.P10323796687727135624

`A251791(A000124(n+5)+5)`
-/

namespace A251789.P10323796687727135624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A000124 (n + 5) + 5).toNat

end

end A251789.P10323796687727135624

/-! ## A251789.P1138970824479480095

`A251791(A000217(n+5)+6)`
-/

namespace A251789.P1138970824479480095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A000217 (n + 5) + 6).toNat

end

end A251789.P1138970824479480095

/-! ## A251789.P5823840771025890385

`A251791(A161680(n+6)+6)`
-/

namespace A251789.P5823840771025890385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A161680 (n + 6) + 6).toNat

end

end A251789.P5823840771025890385

/-! ## A251789.P5527940639110627465

`A251791(A046691(n+3)+10)`
-/

namespace A251789.P5527940639110627465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A046691 (n + 3) + 10).toNat

end

end A251789.P5527940639110627465

/-! ## A251789.P10668373923952936096

`A251791(A374007(n+1))`
-/

namespace A251789.P10668373923952936096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A374007 (n + 1)).toNat

end

end A251789.P10668373923952936096

/-!
# A251790: Number of (n+2)X(7+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 3 6 or 7.

The programs for A251790, there is no canonical definition to state claims against.
-/

/-! ## A251790.P7570205204481023824

`A251791(A167499(n+5)+2)`
-/

namespace A251790.P7570205204481023824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A167499 (n + 5) + 2).toNat

end

end A251790.P7570205204481023824

/-! ## A251790.P17884264207869572548

`A251791(A374008(n+1))`
-/

namespace A251790.P17884264207869572548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A374008 (n + 1)).toNat

end

end A251790.P17884264207869572548

/-! ## A251790.P5352159902440542002

`A251791(A055999(n+4))`
-/

namespace A251790.P5352159902440542002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (A055999 (n + 4)).toNat

end

end A251790.P5352159902440542002

/-! ## A251790.P1669810470280068291

`A251791(eq[4, A219347(n)])`
-/

namespace A251790.P1669810470280068291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251790.P1669810470280068291

/-! ## A251790.P13635228702701477126

`A251791(eq[6, A193592(n)])`
-/

namespace A251790.P13635228702701477126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251790.P13635228702701477126

/-!
# A251793: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to the sum of the octagonal numbers N(m) and N(m+1) for some m.

The programs for A251793, the canonical program `A251793.P15173361847487606656` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251793 has offset 1).

The definition of A251793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251793.P15173361847487606656

`2*A077288(A042948(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251793

/-- `2*A077288(A042948(n))` -/
def P15173361847487606656.Spec : Prop :=
  ∀ n, P15173361847487606656.a n = A251793 (n + 1)

theorem P15173361847487606656.correct : P15173361847487606656.Spec := by
  intro n
  simp only [A251793, Nat.add_sub_cancel]

end A251793

/-! ## A251793.P9385652585478226260

`A080806(A042963(n+1))-1`
-/

namespace A251793.P9385652585478226260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (A042963 (n + 1)).toNat - 1

end

end A251793.P9385652585478226260

namespace A251793

/-- `A080806(A042963(n+1))-1` -/
def P9385652585478226260.Spec : Prop :=
  ∀ n, P9385652585478226260.a n = A251793 (n + 1)

end A251793

/-! ## A251793.P16890262340053829196

`A080806(A109613(n)+n)-1`
-/

namespace A251793.P16890262340053829196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (A109613 n + (n : ℤ)).toNat - 1

end

end A251793.P16890262340053829196

namespace A251793

/-- `A080806(A109613(n)+n)-1` -/
def P16890262340053829196.Spec : Prop :=
  ∀ n, P16890262340053829196.a n = A251793 (n + 1)

end A251793

/-! ## A251793.P6110392280074346326

`A132596(n)+A105038(A052928(n))`
-/

namespace A251793.P6110392280074346326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n + A105038 (A052928 n).toNat

end

end A251793.P6110392280074346326

namespace A251793

/-- `A132596(n)+A105038(A052928(n))` -/
def P6110392280074346326.Spec : Prop :=
  ∀ n, P6110392280074346326.a n = A251793 (n + 1)

end A251793

/-! ## A251793.P380227896217194223

`xor(A158388(n)², A080806(A042963(n+1)))`
-/

namespace A251793.P380227896217194223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158388 n ^ 2) (A080806 (A042963 (n + 1)).toNat)

end

end A251793.P380227896217194223

namespace A251793

/-- `xor(A158388(n)², A080806(A042963(n+1)))` -/
def P380227896217194223.Spec : Prop :=
  ∀ n, P380227896217194223.a n = A251793 (n + 1)

end A251793

/-! ## A251793.P4782745228571080599

`xor(A057427(n+1), A080806(A042963(n+1)))`
-/

namespace A251793.P4782745228571080599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (n + 1)) (A080806 (A042963 (n + 1)).toNat)

end

end A251793.P4782745228571080599

namespace A251793

/-- `xor(A057427(n+1), A080806(A042963(n+1)))` -/
def P4782745228571080599.Spec : Prop :=
  ∀ n, P4782745228571080599.a n = A251793 (n + 1)

end A251793

/-! ## A251793.P9339319720960434137

`xor(A033999(2*n), A080806(A042963(n+1)))`
-/

namespace A251793.P9339319720960434137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (2 * n)) (A080806 (A042963 (n + 1)).toNat)

end

end A251793.P9339319720960434137

namespace A251793

/-- `xor(A033999(2*n), A080806(A042963(n+1)))` -/
def P9339319720960434137.Spec : Prop :=
  ∀ n, P9339319720960434137.a n = A251793 (n + 1)

end A251793

/-! ## A251793.P881560880129210363

`xor(A080806(A042963(n+1)), A294619(n+11))`
-/

namespace A251793.P881560880129210363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080806 (A042963 (n + 1)).toNat) (A294619 (n + 11))

end

end A251793.P881560880129210363

namespace A251793

/-- `xor(A080806(A042963(n+1)), A294619(n+11))` -/
def P881560880129210363.Spec : Prop :=
  ∀ n, P881560880129210363.a n = A251793 (n + 1)

end A251793

/-! ## A251793.P5469282922883707670

`xor((2*n+1)/A005408(n), A080806(A042963(n+1)))`
-/

namespace A251793.P5469282922883707670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (A005408 n : ℚ))) (A080806 (A042963 (n + 1)).toNat)

end

end A251793.P5469282922883707670

namespace A251793

/-- `xor((2*n+1)/A005408(n), A080806(A042963(n+1)))` -/
def P5469282922883707670.Spec : Prop :=
  ∀ n, P5469282922883707670.a n = A251793 (n + 1)

end A251793

/-!
# A251795: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251795, there is no canonical definition to state claims against.
-/

/-! ## A251795.P17881847843302844737

`A251801(∑[n+2])`
-/

namespace A251795.P17881847843302844737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251795.P17881847843302844737

/-! ## A251795.P4352160365251698627

`lcm(2, A251801(A000096(n+1)))`
-/

namespace A251795.P4352160365251698627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251801 (A000096 (n + 1)).toNat)

end

end A251795.P4352160365251698627

/-! ## A251795.P4565379481646747705

`A251801(A000096(n+1))+A000007(n+1)`
-/

namespace A251795.P4565379481646747705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A251795.P4565379481646747705

/-! ## A251795.P1820485153772272932

`A326291(n+1)+A251801(A000096(n+1))`
-/

namespace A251795.P1820485153772272932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A251801 (A000096 (n + 1)).toNat

end

end A251795.P1820485153772272932

/-! ## A251795.P2368975670237229073

`A033999(2*n)*A251801(A000096(n+1))`
-/

namespace A251795.P2368975670237229073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A251801 (A000096 (n + 1)).toNat

end

end A251795.P2368975670237229073

/-!
# A251796: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251796, there is no canonical definition to state claims against.
-/

/-! ## A251796.P1496104095905718782

`A251801(∑[n+3]+1)`
-/

namespace A251796.P1496104095905718782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251796.P1496104095905718782

/-! ## A251796.P12570820177761000353

`A251801(Δ[A008778(n)])*A257993(2*n+1)`
-/

namespace A251796.P12570820177761000353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (f1 (n + 1) - f1 n).toNat * A257993 (2 * n + 1)

end

end A251796.P12570820177761000353

/-!
# A251797: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251797, there is no canonical definition to state claims against.
-/

/-! ## A251797.P18245768795986669131

`A251801(A141214(n+1))`
-/

namespace A251797.P18245768795986669131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A141214 (n + 1)).toNat

end

end A251797.P18245768795986669131

/-! ## A251797.P14824197784072172536

`A251801(A056000(n)+7)`
-/

namespace A251797.P14824197784072172536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A056000 n + 7).toNat

end

end A251797.P14824197784072172536

/-! ## A251797.P5904746241393426291

`A251801(A052905(n+1)+2)`
-/

namespace A251797.P5904746241393426291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A052905 (n + 1) + 2).toNat

end

end A251797.P5904746241393426291

/-!
# A251798: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251798, there is no canonical definition to state claims against.
-/

/-! ## A251798.P4257798152003754613

`A251801(Δ[A023545(n+1)])`
-/

namespace A251798.P4257798152003754613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (f1 (n + 1) - f1 n).toNat

end

end A251798.P4257798152003754613

/-!
# A251799: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251799, there is no canonical definition to state claims against.
-/

/-! ## A251799.P17715143008455730045

`A251801(eq[3, A219347(n)])`
-/

namespace A251799.P17715143008455730045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251799.P17715143008455730045

