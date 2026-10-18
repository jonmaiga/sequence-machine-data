import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A370302: Least number of vertices of a graph that contains an induced cycle of length k_i + 3 for i = 1, 2, ..., where n = 2^k_1 + 2^k_2 + ... is the binary expansion of n.

The programs for A370302, there is no canonical definition to state claims against.
-/

/-! ## A370302.P6681756094368171427

`A123119(∑[A260749(n+1)-A246674(n)²])`
-/

namespace A370302.P6681756094368171427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260749 (n + 1) - A246674 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123119 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A370302.P6681756094368171427

/-! ## A370302.P2269485537572234796

`A130233(A373953(2*n+1)+n+1)`
-/

namespace A370302.P2269485537572234796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A373953 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A370302.P2269485537572234796

/-! ## A370302.P11579820625614833259

`A070939(A007916(n+1)*A358372(2*n+3))`
-/

namespace A370302.P11579820625614833259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007916 (n + 1) * A358372 (2 * n + 3)).toNat

end

end A370302.P11579820625614833259

/-! ## A370302.P7388429453339441676

`A070939(A156253(2*(n+1))*A358372(2*n+3))`
-/

namespace A370302.P7388429453339441676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A156253 (2 * (n + 1)) * A358372 (2 * n + 3)).toNat

end

end A370302.P7388429453339441676

/-! ## A370302.P3236645560358296161

`A073458(A121944(n+1))`
-/

namespace A370302.P3236645560358296161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073458 (A121944 (n + 1)).toNat

end

end A370302.P3236645560358296161

/-!
# A370303: a(n) = A370302(n)-A000523(n)-3.

The programs for A370303, there is no canonical definition to state claims against.
-/

/-! ## A370303.P6363462606374862422

`A370302(n+1)-A000523(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370303.P6363462606374862422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370302 (n + 1) - A000523 (n + 1) - 3

end

end A370303.P6363462606374862422

/-! ## A370303.P2034465517097651288

`A238350(or(A000120(2*(n+1)), A345197(2*(n+2))))`
-/

namespace A370303.P2034465517097651288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238350 (Int.lor (A000120 (2 * (n + 1))) (A345197 (2 * (n + 2)))).toNat

end

end A370303.P2034465517097651288

/-! ## A370303.P6427082125717618035

`A001221(round(sqrt(A151691(2*n))))`
-/

namespace A370303.P6427082125717618035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sqrt (A151691 (2 * n) : ℝ))).toNat

end

end A370303.P6427082125717618035

/-! ## A370303.P363889927523525960

`A000120(A130058(n+1)%A000120(2*(n+1)))`
-/

namespace A370303.P363889927523525960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A130058 (n + 1)) (A000120 (2 * (n + 1)))).toNat

end

end A370303.P363889927523525960

/-! ## A370303.P13256101710501686384

`A139351(A088173(n+1)%A060632(and(n, n+1)))`
-/

namespace A370303.P13256101710501686384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.tmod (A088173 (n + 1)) (A060632 (Nat.land n (n + 1)))).toNat

end

end A370303.P13256101710501686384

/-!
# A370304: Number of multiplex juggling cards with n balls and capacity 2.

The programs for A370304, the canonical program `A370304.P8445468617132036536` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370304 has offset 0).

The definition of A370304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370304.P8445468617132036536

`A129707(n)+A055243(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A370304

/-- `A129707(n)+A055243(n)` -/
def P8445468617132036536.Spec : Prop :=
  ∀ n, P8445468617132036536.a n = A370304 n

theorem P8445468617132036536.correct : P8445468617132036536.Spec := by
  intro n
  simp only [A370304]

end A370304

/-! ## A370304.P5939208178100717989

`A036681(n)-A023610(n)`
-/

namespace A370304.P5939208178100717989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036681 n - A023610 n

end

end A370304.P5939208178100717989

namespace A370304

/-- `A036681(n)-A023610(n)` -/
def P5939208178100717989.Spec : Prop :=
  ∀ n, P5939208178100717989.a n = A370304 n

end A370304

/-! ## A370304.P11446842220205666779

`A001628(n)-∑[A010049(n)]`
-/

namespace A370304.P11446842220205666779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370304.P11446842220205666779

namespace A370304

/-- `A001628(n)-∑[A010049(n)]` -/
def P11446842220205666779.Spec : Prop :=
  ∀ n, P11446842220205666779.a n = A370304 n

end A370304

/-! ## A370304.P12718828186784774237

`∑[A055243(n)-A010049(n)]`
-/

namespace A370304.P12718828186784774237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n - A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370304.P12718828186784774237

namespace A370304

/-- `∑[A055243(n)-A010049(n)]` -/
def P12718828186784774237.Spec : Prop :=
  ∀ n, P12718828186784774237.a n = A370304 n

end A370304

/-! ## A370304.P15954115548680017630

`A001628(n)-A001629(n+1)`
-/

namespace A370304.P15954115548680017630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n - A001629 (n + 1)

end

end A370304.P15954115548680017630

namespace A370304

/-- `A001628(n)-A001629(n+1)` -/
def P15954115548680017630.Spec : Prop :=
  ∀ n, P15954115548680017630.a n = A370304 n

end A370304

/-! ## A370304.P5971160673260380308

`A129707(n+1)+A010049(n+1)`
-/

namespace A370304.P5971160673260380308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 (n + 1) + A010049 (n + 1)

end

end A370304.P5971160673260380308

namespace A370304

/-- `A129707(n+1)+A010049(n+1)` -/
def P5971160673260380308.Spec : Prop :=
  ∀ n, P5971160673260380308.a n = A370304 n

end A370304

/-! ## A370304.P11466165890976110299

`A212338(n+3)-A261055(n)`
-/

namespace A370304.P11466165890976110299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212338 (n + 3) - A261055 n

end

end A370304.P11466165890976110299

namespace A370304

/-- `A212338(n+3)-A261055(n)` -/
def P11466165890976110299.Spec : Prop :=
  ∀ n, P11466165890976110299.a n = A370304 n

end A370304

/-! ## A370304.P6770317554414734518

`A209755(∑[n+1]+n)`
-/

namespace A370304.P6770317554414734518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209755 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A370304.P6770317554414734518

namespace A370304

/-- `A209755(∑[n+1]+n)` -/
def P6770317554414734518.Spec : Prop :=
  ∀ n, P6770317554414734518.a n = A370304 n

end A370304

/-! ## A370304.P9494735927172143159

`A091562(A340266(n+1))`
-/

namespace A370304.P9494735927172143159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 (A340266 (n + 1)).toNat

end

end A370304.P9494735927172143159

namespace A370304

/-- `A091562(A340266(n+1))` -/
def P9494735927172143159.Spec : Prop :=
  ∀ n, P9494735927172143159.a n = A370304 n

end A370304

/-! ## A370304.P12598174336316154701

`A091562(∑[n+3])`
-/

namespace A370304.P12598174336316154701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370304.P12598174336316154701

namespace A370304

/-- `A091562(∑[n+3])` -/
def P12598174336316154701.Spec : Prop :=
  ∀ n, P12598174336316154701.a n = A370304 n

end A370304

/-!
# A370306: Number of multiplex juggling cards with n balls and capacity 3.

The programs for A370306, there is no canonical definition to state claims against.
-/

/-! ## A370306.P15534495416269492791

`A262194(2*(n+1))+A091237(A007852(n+1))`
-/

namespace A370306.P15534495416269492791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262194 (2 * (n + 1)) + A091237 (A007852 (n + 1)).toNat

end

end A370306.P15534495416269492791

/-! ## A370306.P11029311941457880164

`A365420(A003473(n+2))`
-/

namespace A370306.P11029311941457880164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365420 (A003473 (n + 2)).toNat

end

end A370306.P11029311941457880164

/-!
# A370307: a(n) = A002623(n) + n.

The programs for A370307, the canonical program `A370307.P1617785029507731027` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370307 has offset 0).

The definition of A370307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002623(n)+n` (program `A370307.P1617785029507731027`, by `A370307.P1617785029507731027.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370307.P3061861349565329416

`(2*n^3+15*n²+58*n+45/2+3/2*(-1)^n)/24`
-/

namespace A370307.P3061861349565329416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 3 + 15 * n ^ 2 + 58 * n : ℚ) + (45 : ℚ) / 2 + (3 : ℚ) / 2 * ((-1) ^ n : ℚ)) / 24

end

end A370307.P3061861349565329416

namespace A370307

/-- `(2*n^3+15*n²+58*n+45/2+3/2*(-1)^n)/24` -/
def P3061861349565329416.Spec : Prop :=
  ∀ n, P3061861349565329416.a n = (A370307 n : ℚ)

end A370307

/-! ## A370307.P6962509920396411624

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16, a(4)=26`
-/

namespace A370307.P6962509920396411624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 16, 26] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A370307.P6962509920396411624

namespace A370307

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P6962509920396411624.Spec : Prop :=
  ∀ n, P6962509920396411624.a n = A370307 n

end A370307

/-! ## A370307.P1617785029507731027

`A002623(n)+n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370307

/-- `A002623(n)+n` -/
def P1617785029507731027.Spec : Prop :=
  ∀ n, P1617785029507731027.a n = A370307 n

theorem P1617785029507731027.correct : P1617785029507731027.Spec := by
  intro n
  simp only [A370307]

end A370307

/-! ## A370307.P7669198020401510509

`∑[∑[round(cosh(log(n+ϕ)))]]`
-/

namespace A370307.P7669198020401510509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n : ℝ) + Real.goldenRatio)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370307.P7669198020401510509

namespace A370307

/-- `∑[∑[round(cosh(log(n+ϕ)))]]` -/
def P7669198020401510509.Spec : Prop :=
  ∀ n, P7669198020401510509.a n = A370307 n

end A370307

/-! ## A370307.P8579908058907016415

`∑[∑[∑[log2(gcd(2, n))]]]+n`
-/

namespace A370307.P8579908058907016415
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A370307.P8579908058907016415

namespace A370307

/-- `∑[∑[∑[log2(gcd(2, n))]]]+n` -/
def P8579908058907016415.Spec : Prop :=
  ∀ n, P8579908058907016415.a n = (A370307 n : ℝ)

end A370307

/-! ## A370307.P6890774653308351667

`∑[∑[a(n-2)+1]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A370307.P6890774653308351667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370307.P6890774653308351667

namespace A370307

/-- `∑[∑[a(n-2)+1]]` -/
def P6890774653308351667.Spec : Prop :=
  ∀ n, (P6890774653308351667.a n : ℤ) = A370307 n

end A370307

/-! ## A370307.P1883628152702306065

`∑[∑[n-a(n-3)]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A370307.P1883628152702306065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2, 3] fun n f2 =>
  (n : ℤ) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370307.P1883628152702306065

namespace A370307

/-- `∑[∑[n-a(n-3)]]` -/
def P1883628152702306065.Spec : Prop :=
  ∀ n, P1883628152702306065.a n = A370307 n

end A370307

/-! ## A370307.P17257931376673003268

`∑[∑[A263997(n+1)]]`
-/

namespace A370307.P17257931376673003268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370307.P17257931376673003268

namespace A370307

/-- `∑[∑[A263997(n+1)]]` -/
def P17257931376673003268.Spec : Prop :=
  ∀ n, P17257931376673003268.a n = A370307 n

end A370307

/-! ## A370307.P9165238786217281702

`A005744(n)+Δ[n²]`
-/

namespace A370307.P9165238786217281702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A370307.P9165238786217281702

namespace A370307

/-- `A005744(n)+Δ[n²]` -/
def P9165238786217281702.Spec : Prop :=
  ∀ n, P9165238786217281702.a n = A370307 n

end A370307

/-! ## A370307.P17047815222045557693

`∑[∑[A168050(n)+n]]`
-/

namespace A370307.P17047815222045557693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370307.P17047815222045557693

namespace A370307

/-- `∑[∑[A168050(n)+n]]` -/
def P17047815222045557693.Spec : Prop :=
  ∀ n, P17047815222045557693.a n = A370307 n

end A370307

/-! ## A370307.P15869286693276531349

`∑[A087811(n+1)]+n`
-/

namespace A370307.P15869286693276531349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A370307.P15869286693276531349

namespace A370307

/-- `∑[A087811(n+1)]+n` -/
def P15869286693276531349.Spec : Prop :=
  ∀ n, P15869286693276531349.a n = A370307 n

end A370307

/-! ## A370307.P11658956444341049061

`A240001(n)-a(n-1)` with `a(0)=1`
-/

namespace A370307.P11658956444341049061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A240001 n - a (n - 1)

end

end A370307.P11658956444341049061

namespace A370307

/-- `A240001(n)-a(n-1)` -/
def P11658956444341049061.Spec : Prop :=
  ∀ n, P11658956444341049061.a n = A370307 n

end A370307

/-! ## A370307.P11320350456928913921

`A266464(n)+A000096(n)`
-/

namespace A370307.P11320350456928913921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n + A000096 n

end

end A370307.P11320350456928913921

namespace A370307

/-- `A266464(n)+A000096(n)` -/
def P11320350456928913921.Spec : Prop :=
  ∀ n, P11320350456928913921.a n = A370307 n

end A370307

/-! ## A370307.P1112932567749489887

`A391995(n)+A213398(n)`
-/

namespace A370307.P1112932567749489887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391995 n + A213398 n

end

end A370307.P1112932567749489887

namespace A370307

/-- `A391995(n)+A213398(n)` -/
def P1112932567749489887.Spec : Prop :=
  ∀ n, P1112932567749489887.a n = A370307 n

end A370307

/-! ## A370307.P11185367077771290519

`A212983(n)-A084990(n)`
-/

namespace A370307.P11185367077771290519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212983 n - A084990 n

end

end A370307.P11185367077771290519

namespace A370307

/-- `A212983(n)-A084990(n)` -/
def P11185367077771290519.Spec : Prop :=
  ∀ n, P11185367077771290519.a n = A370307 n

end A370307

/-! ## A370307.P1815575864540724336

`A173154(n)-A173196(n)`
-/

namespace A370307.P1815575864540724336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173154 n - A173196 n

end

end A370307.P1815575864540724336

namespace A370307

/-- `A173154(n)-A173196(n)` -/
def P1815575864540724336.Spec : Prop :=
  ∀ n, P1815575864540724336.a n = A370307 n

end A370307

/-! ## A370307.P10206153120814094740

`A173196(n)+A034856(n+1)`
-/

namespace A370307.P10206153120814094740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A034856 (n + 1)

end

end A370307.P10206153120814094740

namespace A370307

/-- `A173196(n)+A034856(n+1)` -/
def P10206153120814094740.Spec : Prop :=
  ∀ n, P10206153120814094740.a n = A370307 n

end A370307

/-! ## A370307.P12231603783651801606

`∑[∑[A008619(n)]-A057428(n)]`
-/

namespace A370307.P12231603783651801606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370307.P12231603783651801606

namespace A370307

/-- `∑[∑[A008619(n)]-A057428(n)]` -/
def P12231603783651801606.Spec : Prop :=
  ∀ n, P12231603783651801606.a n = A370307 n

end A370307

/-! ## A370307.P4197517600308199271

`A004442(n+1)+A005744(n)+A004442(n)`
-/

namespace A370307.P4197517600308199271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 1) + (A005744 n + A004442 n)

end

end A370307.P4197517600308199271

namespace A370307

/-- `A004442(n+1)+A005744(n)+A004442(n)` -/
def P4197517600308199271.Spec : Prop :=
  ∀ n, P4197517600308199271.a n = A370307 n

end A370307

/-! ## A370307.P8863257863308488125

`A266464(n+2)-3`
-/

namespace A370307.P8863257863308488125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 2) - 3

end

end A370307.P8863257863308488125

namespace A370307

/-- `A266464(n+2)-3` -/
def P8863257863308488125.Spec : Prop :=
  ∀ n, P8863257863308488125.a n = A370307 n

end A370307

/-!
# A370315: Number of unlabeled simple graphs with n possibly isolated vertices and up to n edges.

The programs for A370315, there is no canonical definition to state claims against.
-/

/-! ## A370315.P267394489160153582

`A112325(A161006(n))`
-/

namespace A370315.P267394489160153582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A161006 n).toNat

end

end A370315.P267394489160153582

/-! ## A370315.P5663772667885416702

`A318759(A255126(n+1))`
-/

namespace A370315.P5663772667885416702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318759 (A255126 (n + 1)).toNat

end

end A370315.P5663772667885416702

/-! ## A370315.P9981405716094948886

`A373227(A245898(n+1))`
-/

namespace A370315.P9981405716094948886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373227 (A245898 (n + 1)).toNat

end

end A370315.P9981405716094948886

/-!
# A370317: Number of labeled graphs with n vertices (allowing isolated vertices) and n edges, such that the edge set is connected.

The programs for A370317, there is no canonical definition to state claims against.
-/

/-! ## A370317.P16681036672177069410

`A116508(A259389(n+1))%A100747(n+1)`
-/

namespace A370317.P16681036672177069410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116508 (A259389 (n + 1)).toNat) (A100747 (n + 1))

end

end A370317.P16681036672177069410

/-!
# A370318: Number of labeled simple graphs with n vertices and the same number of edges as covered vertices, such that the edge set is connected.

The programs for A370318, there is no canonical definition to state claims against.
-/

/-! ## A370318.P17041079725740341387

`A322058(C(n+3, 5))-1`
-/

namespace A370318.P17041079725740341387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (Nat.choose (n + 3) 5) - 1

end

end A370318.P17041079725740341387

/-! ## A370318.P3191959915060248732

`∑[A368679(a(n-1)+2^(n-1))]` with `a(0)=0`
-/

namespace A370318.P3191959915060248732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A368679 (SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370318.P3191959915060248732

/-!
# A370319: Triangle read by rows where T(n,k) is the number of labeled graphs with n vertices and k non-isolated vertices.

The programs for A370319, there is no canonical definition to state claims against.
-/

/-! ## A370319.P7536196334270276741

`A006129(A002262(n))*A007318(n)`
-/

namespace A370319.P7536196334270276741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 (A002262 n).toNat * A007318 n

end

end A370319.P7536196334270276741

/-! ## A370319.P9485858932898918729

`A198261(A061579(n))`
-/

namespace A370319.P9485858932898918729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198261 (A061579 n).toNat

end

end A370319.P9485858932898918729

/-! ## A370319.P12808820117011047778

`A098825(n)*A380561(A165313(n+1))`
-/

namespace A370319.P12808820117011047778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 n * A380561 (A165313 (n + 1)).toNat

end

end A370319.P12808820117011047778

/-! ## A370319.P17480419028130515635

`A296115(n+1)*A379669(A166350(n+1))`
-/

namespace A370319.P17480419028130515635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (n + 1) * A379669 (A166350 (n + 1)).toNat

end

end A370319.P17480419028130515635

/-! ## A370319.P12296970435270427647

`A379672(A291716(n+1))`
-/

namespace A370319.P12296970435270427647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379672 (A291716 (n + 1)).toNat

end

end A370319.P12296970435270427647

/-!
# A370320: Number of non-condensed integer partitions of n, or partitions where it is not possible to choose a different divisor of each part.

The programs for A370320, there is no canonical definition to state claims against.
-/

/-! ## A370320.P10190132030590618445

`A000041(n)-A239312(n)`
-/

namespace A370320.P10190132030590618445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239312 n

end

end A370320.P10190132030590618445

/-! ## A370320.P5622354103135364630

`A047967(n)-A370806(n)`
-/

namespace A370320.P5622354103135364630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - A370806 n

end

end A370320.P5622354103135364630

/-! ## A370320.P1821536585174244423

`A213598(n)-A239312(n)`
-/

namespace A370320.P1821536585174244423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A239312 n

end

end A370320.P1821536585174244423

/-! ## A370320.P3340953182517407042

`sqrt(A001255(n))-A239312(n)`
-/

namespace A370320.P3340953182517407042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A239312 n : ℝ)

end

end A370320.P3340953182517407042

/-! ## A370320.P1153748064414504526

`∑[A002865(n)]-A239312(n)`
-/

namespace A370320.P1153748064414504526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239312 n

end

end A370320.P1153748064414504526

/-!
# A370322: Least prime p such that exactly n distinct primes can be formed using one or more of the digits of p.

The programs for A370322, there is no canonical definition to state claims against.
-/

/-! ## A370322.P13499558572665975531

`A159477(A076449(n+1))`
-/

namespace A370322.P13499558572665975531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A076449 (n + 1)).toNat

end

end A370322.P13499558572665975531

/-! ## A370322.P16303024205753396984

`A076449(n+1)+A034154(A084857(n+1))`
-/

namespace A370322.P16303024205753396984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (n + 1) + A034154 (A084857 (n + 1)).toNat

end

end A370322.P16303024205753396984

/-!
# A370323: Number of derangements of [n] having no adjacent 2-cycles, no adjacent 3-cycles and no adjacent 4-cycles.

The programs for A370323, there is no canonical definition to state claims against.
-/

/-! ## A370323.P2962529795307493582

`A370324(n)+A365573(A368095(n))`
-/

namespace A370323.P2962529795307493582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370324 n + A365573 (A368095 n).toNat

end

end A370323.P2962529795307493582

/-! ## A370323.P7959564170344295892

`A338907(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A370323.P7959564170344295892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A338907 (a (n - 1)).toNat

end

end A370323.P7959564170344295892

/-! ## A370323.P13665276318838024973

`A038567(A327071(n))-and(n, floor(-n/2))`
-/

namespace A370323.P13665276318838024973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A327071 n).toNat - Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋

end

end A370323.P13665276318838024973

/-!
# A370324: Number of derangements of [n] having no adjacent 2-cycles, no adjacent 3-cycles, no adjacent 4-cycles and no adjacent 5-cycles.

The programs for A370324, there is no canonical definition to state claims against.
-/

/-! ## A370324.P13724718791943622534

`A370323(n)-A365573(A368095(n))`
-/

namespace A370324.P13724718791943622534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370323 n - A365573 (A368095 n).toNat

end

end A370324.P13724718791943622534

/-! ## A370324.P10190780213617378230

`A184185(n)+A124762(A126233(n+1))`
-/

namespace A370324.P10190780213617378230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184185 n + A124762 (A126233 (n + 1)).toNat

end

end A370324.P10190780213617378230

/-! ## A370324.P1891423940588854245

`A373601(A224281(2*(n+2)))+A184185(n)`
-/

namespace A370324.P1891423940588854245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373601 (A224281 (2 * (n + 2))).toNat + A184185 n

end

end A370324.P1891423940588854245

/-!
# A370325: Decimal expansion of exp(1)/(1+exp(1)).

The programs for A370325, there is no canonical definition to state claims against.
-/

/-! ## A370325.P10409965892094752917

`9-A201776(n)`
-/

namespace A370325.P10409965892094752917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A201776 n

end

end A370325.P10409965892094752917

/-!
# A370326: E.g.f.: exp(Sum_{k>=1} binomial(2*k,k) * x^k).

The programs for A370326, there is no canonical definition to state claims against.
-/

/-! ## A370326.P12424117546118286181

`A000079(n)*A049118(A028310(n))`
-/

namespace A370326.P12424117546118286181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A049118 (A028310 n).toNat

end

end A370326.P12424117546118286181

/-!
# A370328: The number of powerful divisors of the powerful numbers.

The programs for A370328, there is no canonical definition to state claims against.
-/

/-! ## A370328.P18238150902567949114

`A000005(A306458(n+1))`
-/

namespace A370328.P18238150902567949114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A306458 (n + 1)).toNat

end

end A370328.P18238150902567949114

/-! ## A370328.P2857533576271622897

`A005361(A001694(n+1))`
-/

namespace A370328.P2857533576271622897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A001694 (n + 1)).toNat

end

end A370328.P2857533576271622897

/-! ## A370328.P18154096303955862026

`∏{e}[1-A224866(n+1), #]`
-/

namespace A370328.P18154096303955862026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A224866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A370328.P18154096303955862026

/-! ## A370328.P16644308190970692208

`∏{e}[∪[A001597(n+1), A216427(n+1)], #]`
-/

namespace A370328.P16644308190970692208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A370328.P16644308190970692208

/-! ## A370328.P790199455256180373

`∑{d}[A306458(n+1), A057427(#)]`
-/

namespace A370328.P790199455256180373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A370328.P790199455256180373

/-! ## A370328.P14331151126139249552

`∏{e}[record[A057521(n+1)], #]`
-/

namespace A370328.P14331151126139249552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A370328.P14331151126139249552

/-!
# A370329: a(n) is the number of coreful divisors of the n-th powerful number that are also powerful numbers.

The programs for A370329, there is no canonical definition to state claims against.
-/

/-! ## A370329.P16403656851237300643

`A361430(A001694(n+1))`
-/

namespace A370329.P16403656851237300643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (A001694 (n + 1)).toNat

end

end A370329.P16403656851237300643

/-! ## A370329.P12203130726808137031

`∏{e}[A306458(n+1), #]`
-/

namespace A370329.P12203130726808137031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A370329.P12203130726808137031

/-! ## A370329.P4988093874792489647

`∏{e}[A001694(n+1)/A084371(n+1), #]`
-/

namespace A370329.P4988093874792489647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A370329.P4988093874792489647

/-! ## A370329.P15235651239862876331

`A000005(A306458(n+1)/A084371(n+1))`
-/

namespace A370329.P15235651239862876331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A306458 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ))).toNat

end

end A370329.P15235651239862876331

/-! ## A370329.P14031518134375862617

`A005361(A306458(n+1))`
-/

namespace A370329.P14031518134375862617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A306458 (n + 1)).toNat

end

end A370329.P14031518134375862617

/-!
# A370330: Expansion of e.g.f. C(x,k) satisfying C(x,k) = cos( x*cos(k*x*C(x,k)) ), as a triangle read by rows.

The programs for A370330, there is no canonical definition to state claims against.
-/

/-! ## A370330.P3251634036879428502

`A370332(∑[char[∑[n]]]²-n-1)`
-/

namespace A370330.P3251634036879428502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370332 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A370330.P3251634036879428502

/-! ## A370330.P7502897143982218616

`or(A000007(n), A370332(A061579(n)))`
-/

namespace A370330.P7502897143982218616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370332 (A061579 n).toNat)

end

end A370330.P7502897143982218616

/-! ## A370330.P7872852376907122067

`or(A010054(n), A370332(A061579(n)))`
-/

namespace A370330.P7872852376907122067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A370332 (A061579 n).toNat)

end

end A370330.P7872852376907122067

/-! ## A370330.P283673889178256891

`A370332(A061579(n))+A000038(3*n+1)`
-/

namespace A370330.P283673889178256891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370332 (A061579 n).toNat + A000038 (3 * n + 1)

end

end A370330.P283673889178256891

/-! ## A370330.P5745367037334169473

`A370332(A061579(n))+A000007(2*n+3)`
-/

namespace A370330.P5745367037334169473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370332 (A061579 n).toNat + A000007 (2 * n + 3)

end

end A370330.P5745367037334169473

/-!
# A370331: Expansion of e.g.f. S(x,k) satisfying S(x,k) = sin( x*cos(k*x*sqrt(1 - S(x,k)^2)) ), as a triangle read by rows.

The programs for A370331, there is no canonical definition to state claims against.
-/

/-! ## A370331.P16542203327440920099

`A370333(∑[2*n]%comp[∑[n]])`
-/

namespace A370331.P16542203327440920099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370333 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A370331.P16542203327440920099

/-! ## A370331.P7995049997483613706

`A370333(∑[char[∑[n]]]²-n-1)`
-/

namespace A370331.P7995049997483613706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370333 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A370331.P7995049997483613706

/-! ## A370331.P15752122460076289126

`A015526(n)*A370333(A061579(n))`
-/

namespace A370331.P15752122460076289126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A370333 (A061579 n).toNat

end

end A370331.P15752122460076289126

/-! ## A370331.P903021436528986365

`or(A000007(n), A370333(A061579(n)))`
-/

namespace A370331.P903021436528986365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370333 (A061579 n).toNat)

end

end A370331.P903021436528986365

/-! ## A370331.P11451144857902057932

`or(A010054(n), A370333(A061579(n)))`
-/

namespace A370331.P11451144857902057932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A370333 (A061579 n).toNat)

end

end A370331.P11451144857902057932

/-!
# A370332: Expansion of e.g.f. D(x,k) satisfying D(x,k) = cos( k*x*cos(x*D(x,k)) ), as a triangle read by rows.

The programs for A370332, there is no canonical definition to state claims against.
-/

/-! ## A370332.P10116042187370758574

`A370330(A061579(n))`
-/

namespace A370332.P10116042187370758574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370330 (A061579 n).toNat

end

end A370332.P10116042187370758574

/-! ## A370332.P4801668222834732435

`A370330(A114327(n)+n)`
-/

namespace A370332.P4801668222834732435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370330 (A114327 n + (n : ℤ)).toNat

end

end A370332.P4801668222834732435

/-! ## A370332.P10617737051561817760

`A370330(A038722(n+1)-1)`
-/

namespace A370332.P10617737051561817760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370330 (A038722 (n + 1) - 1).toNat

end

end A370332.P10617737051561817760

/-! ## A370332.P6318397894413867581

`A370331(n)/A370431(n)*A370432(n)`
-/

namespace A370332.P6318397894413867581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370331 n : ℚ) / (A370431 n : ℚ) * (A370432 n : ℚ)

end

end A370332.P6318397894413867581

/-! ## A370332.P9250119349159459454

`A370333(n)*A370432(n)/A370433(n)`
-/

namespace A370332.P9250119349159459454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370333 n * A370432 n : ℚ) / (A370433 n : ℚ)

end

end A370332.P9250119349159459454

/-!
# A370333: Expansion of e.g.f. T(x,k) satisfying T(x,k) = (1/k) * sin( k*x*cos(x*sqrt(1 - k^2*T(x,k)^2)) ), as a triangle read by rows.

The programs for A370333, there is no canonical definition to state claims against.
-/

/-! ## A370333.P2543250074644183022

`A370331(∑[char[∑[n]]]²-n-1)`
-/

namespace A370333.P2543250074644183022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370331 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A370333.P2543250074644183022

/-! ## A370333.P9897702314232807205

`A370331(A061579(n))^(-1)^(-1)`
-/

namespace A370333.P9897702314232807205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A370331 (A061579 n).toNat : ℚ) ^ (-1 : ℤ)) ^ (-1 : ℤ)

end

end A370333.P9897702314232807205

/-! ## A370333.P16752084572674662897

`A015526(n)*A370331(A061579(n))`
-/

namespace A370333.P16752084572674662897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A370331 (A061579 n).toNat

end

end A370333.P16752084572674662897

/-! ## A370333.P17973824321966647885

`or(A000007(n), A370331(A061579(n)))`
-/

namespace A370333.P17973824321966647885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370331 (A061579 n).toNat)

end

end A370333.P17973824321966647885

/-! ## A370333.P9261903453326847473

`or(A010054(n), A370331(A061579(n)))`
-/

namespace A370333.P9261903453326847473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A370331 (A061579 n).toNat)

end

end A370333.P9261903453326847473

/-!
# A370337: Expansion of Product_{n>=1} (1 - 2^(n-1)*x^n) * (1 + 2^(n-1)*x^n)^2.

The programs for A370337, there is no canonical definition to state claims against.
-/

/-! ## A370337.P5591654379966061779

`A345167(A053000(n)+A001045(n))`
-/

namespace A370337.P5591654379966061779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A053000 n + A001045 n).toNat

end

end A370337.P5591654379966061779

/-!
# A370338: Expansion of Product_{n>=1} (1 - 3^(n-1)*x^n) * (1 + 3^(n-1)*x^n)^2.

The programs for A370338, there is no canonical definition to state claims against.
-/

/-! ## A370338.P2656810342849989568

`A065825(A026117(n+1))`
-/

namespace A370338.P2656810342849989568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A026117 (n + 1)).toNat

end

end A370338.P2656810342849989568

/-! ## A370338.P1127850942127996143

`A018476(A036469(n))-n`
-/

namespace A370338.P1127850942127996143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018476 (A036469 n).toNat - (n : ℤ)

end

end A370338.P1127850942127996143

/-!
# A370340: Expansion of g.f. A(x) satisfying Sum_{n>=0} Product_{k=1..n} (x^(2*k-1) - 3*A(x)) = 1 - 2*Sum_{n>=1} x^(n^2).

The programs for A370340, there is no canonical definition to state claims against.
-/

/-! ## A370340.P14679490282918424543

`2*A338555(a(n-1))` with `a(0)=1`
-/

namespace A370340.P14679490282918424543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A338555 (a (n - 1)).toNat

end

end A370340.P14679490282918424543

/-! ## A370340.P11302715088295209202

`A074712(A150737(n))`
-/

namespace A370340.P11302715088295209202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A150737 n).toNat

end

end A370340.P11302715088295209202

/-! ## A370340.P14729702292127087504

`∑[A112970(A268600(n))]`
-/

namespace A370340.P14729702292127087504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112970 (A268600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370340.P14729702292127087504

/-! ## A370340.P645150485497945651

`A161205(A148437(n+1))`
-/

namespace A370340.P645150485497945651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A148437 (n + 1)).toNat

end

end A370340.P645150485497945651

/-!
# A370345: Expansion of g.f. A(x) satisfying 1 - 2*Sum_{n>=1} Product_{k=1..n} (x^(2*k-1) - 2*A(x)) = Product_{k>=1} (1 - x^(2*k)) * (1 + x^k - 2*A(x))^2 / (1 + x^(2*k) - 2*A(x))^2.

The programs for A370345, there is no canonical definition to state claims against.
-/

/-! ## A370345.P11748859502745222881

`A028310(A389435(n))`
-/

namespace A370345.P11748859502745222881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A389435 n).toNat

end

end A370345.P11748859502745222881

/-! ## A370345.P12110490956166566058

`A032742(2*A389435(n))`
-/

namespace A370345.P12110490956166566058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A389435 n).toNat

end

end A370345.P12110490956166566058

/-!
# A370346: Expansion of g.f. A(x) satisfying 1 - Sum_{n>=1} Product_{k=1..n} (x^(2*k-1) - 3*A(x)) = Product_{k>=1} (1 - x^(2*k)) * (1 + x^k - 3*A(x))^2 / (1 + x^(2*k) - 3*A(x))^2.

The programs for A370346, there is no canonical definition to state claims against.
-/

/-! ## A370346.P215216953082018285

`A077773(A386833(n)-A061395(n+1))`
-/

namespace A370346.P215216953082018285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A386833 n - A061395 (n + 1)).toNat

end

end A370346.P215216953082018285

/-!
# A370347: Number T(n,k) of partitions of [3n] into n sets of size 3 having exactly k sets {3j-2,3j-1,3j} (1<=j<=n); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A370347, there is no canonical definition to state claims against.
-/

/-! ## A370347.P1948279839566932577

`A061816(A339350(n+1)²)`
-/

namespace A370347.P1948279839566932577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (A339350 (n + 1) ^ 2).toNat

end

end A370347.P1948279839566932577

/-! ## A370347.P13360237082237485520

`A317023(A006068(n)*A082720(n+1))`
-/

namespace A370347.P13360237082237485520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (A006068 n * A082720 (n + 1)).toNat

end

end A370347.P13360237082237485520

/-! ## A370347.P12066328801007423635

`A317023(A000027(2*n+3)*A006068(n))`
-/

namespace A370347.P12066328801007423635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (A000027 (2 * n + 3) * A006068 n).toNat

end

end A370347.P12066328801007423635

/-!
# A370348: Numbers k such that there are fewer divisors of prime indices of k than there are prime indices of k.

The programs for A370348, there is no canonical definition to state claims against.
-/

/-! ## A370348.P2218128656996476884

`lt[A070080(A376198(2*n+1)), A140185(n)]`
-/

namespace A370348.P2218128656996476884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (A376198 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370348.P2218128656996476884

/-! ## A370348.P3913322122281392052

`A355740(lt[A284499(n), A326647(3*(n+1))])`
-/

namespace A370348.P3913322122281392052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326647 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370348.P3913322122281392052

/-! ## A370348.P5960164135795175102

`lt[A370820(n+1), ∑{e}[n+1, #]]+1`
-/

namespace A370348.P5960164135795175102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A370348.P5960164135795175102

/-! ## A370348.P4732153360537523924

`A053806(n+1)-A212619(A389088(n+1))`
-/

namespace A370348.P4732153360537523924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - A212619 (A389088 (n + 1)).toNat

end

end A370348.P4732153360537523924

/-! ## A370348.P13488488066213306385

`A053806(n+1)-A168020(A054435(n+3))`
-/

namespace A370348.P13488488066213306385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - A168020 (A054435 (n + 3)).toNat

end

end A370348.P13488488066213306385

/-!
# A370349: a(n) is the number of integer triples (x,y,z) satisfying a system of linear inequalities and congruences specified in the comments.

The programs for A370349, the canonical program `A370349.P7129333881566646392` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370349 has offset 0).

The definition of A370349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370349.P7129333881566646392

`floor((10+24*n+18*n²+4*n^3)/9)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A370349

/-- `floor((10+24*n+18*n²+4*n^3)/9)` -/
def P7129333881566646392.Spec : Prop :=
  ∀ n, P7129333881566646392.a n = A370349 n

theorem P7129333881566646392.correct : P7129333881566646392.Spec := by
  intro n
  simp only [A370349]

end A370349

/-! ## A370349.P10085562745400898634

`(A141530(n+2)-A102283(n))/9`
-/

namespace A370349.P10085562745400898634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141530 (n + 2) - A102283 n : ℚ) / 9

end

end A370349.P10085562745400898634

namespace A370349

/-- `(A141530(n+2)-A102283(n))/9` -/
def P10085562745400898634.Spec : Prop :=
  ∀ n, P10085562745400898634.a n = (A370349 n : ℚ)

end A370349

/-! ## A370349.P7469094493276539951

`∑[∑[A047537(n+1)]]`
-/

namespace A370349.P7469094493276539951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370349.P7469094493276539951

namespace A370349

/-- `∑[∑[A047537(n+1)]]` -/
def P7469094493276539951.Spec : Prop :=
  ∀ n, P7469094493276539951.a n = A370349 n

end A370349

/-! ## A370349.P9902329673044464034

`A001860(n)+∑[n+1]`
-/

namespace A370349.P9902329673044464034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001860 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A370349.P9902329673044464034

namespace A370349

/-- `A001860(n)+∑[n+1]` -/
def P9902329673044464034.Spec : Prop :=
  ∀ n, P9902329673044464034.a n = A370349 n

end A370349

/-! ## A370349.P6563898889573963139

`A212983(n)+A034198(n+1)`
-/

namespace A370349.P6563898889573963139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212983 n + A034198 (n + 1)

end

end A370349.P6563898889573963139

namespace A370349

/-- `A212983(n)+A034198(n+1)` -/
def P6563898889573963139.Spec : Prop :=
  ∀ n, P6563898889573963139.a n = A370349 n

end A370349

/-! ## A370349.P4242725257299249140

`∑[A256320(n+1)]`
-/

namespace A370349.P4242725257299249140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370349.P4242725257299249140

namespace A370349

/-- `∑[A256320(n+1)]` -/
def P4242725257299249140.Spec : Prop :=
  ∀ n, P4242725257299249140.a n = A370349 n

end A370349

/-! ## A370349.P5285897371011638199

`∑[A115285(n+1)-2]`
-/

namespace A370349.P5285897371011638199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370349.P5285897371011638199

namespace A370349

/-- `∑[A115285(n+1)-2]` -/
def P5285897371011638199.Spec : Prop :=
  ∀ n, P5285897371011638199.a n = A370349 n

end A370349

/-! ## A370349.P5403209149376488553

`A212971(n+1)+A060999(n+1)`
-/

namespace A370349.P5403209149376488553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212971 (n + 1) + A060999 (n + 1)

end

end A370349.P5403209149376488553

namespace A370349

/-- `A212971(n+1)+A060999(n+1)` -/
def P5403209149376488553.Spec : Prop :=
  ∀ n, P5403209149376488553.a n = A370349 n

end A370349

/-! ## A370349.P9141439343477480364

`A001845(n+1)-A299265(n+1)`
-/

namespace A370349.P9141439343477480364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 1) - A299265 (n + 1)

end

end A370349.P9141439343477480364

namespace A370349

/-- `A001845(n+1)-A299265(n+1)` -/
def P9141439343477480364.Spec : Prop :=
  ∀ n, P9141439343477480364.a n = A370349 n

end A370349

/-! ## A370349.P11415992216949647439

`A299261(n+1)-A001845(n+1)`
-/

namespace A370349.P11415992216949647439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299261 (n + 1) - A001845 (n + 1)

end

end A370349.P11415992216949647439

namespace A370349

/-- `A299261(n+1)-A001845(n+1)` -/
def P11415992216949647439.Spec : Prop :=
  ∀ n, P11415992216949647439.a n = A370349 n

end A370349

/-! ## A370349.P963751713898526353

`A014125(2*n)`
-/

namespace A370349.P963751713898526353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (2 * n)

end

end A370349.P963751713898526353

namespace A370349

/-- `A014125(2*n)` -/
def P963751713898526353.Spec : Prop :=
  ∀ n, P963751713898526353.a n = A370349 n

end A370349

/-! ## A370349.P2195844611569465483

`∑[A229154(2*(n+1))]`
-/

namespace A370349.P2195844611569465483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229154 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370349.P2195844611569465483

namespace A370349

/-- `∑[A229154(2*(n+1))]` -/
def P2195844611569465483.Spec : Prop :=
  ∀ n, P2195844611569465483.a n = A370349 n

end A370349

/-! ## A370349.P4646946878405890540

`A014126(2*n)+A000212(n+1)`
-/

namespace A370349.P4646946878405890540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (2 * n) + A000212 (n + 1)

end

end A370349.P4646946878405890540

namespace A370349

/-- `A014126(2*n)+A000212(n+1)` -/
def P4646946878405890540.Spec : Prop :=
  ∀ n, P4646946878405890540.a n = A370349 n

end A370349

/-! ## A370349.P3359188263148567232

`A002623(2*n+1)-A241526(n+1)`
-/

namespace A370349.P3359188263148567232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (2 * n + 1) - A241526 (n + 1)

end

end A370349.P3359188263148567232

namespace A370349

/-- `A002623(2*n+1)-A241526(n+1)` -/
def P3359188263148567232.Spec : Prop :=
  ∀ n, P3359188263148567232.a n = A370349 n

end A370349

/-! ## A370349.P15589150761898506625

`A002623(2*n+1)-A000601(2*n+1)`
-/

namespace A370349.P15589150761898506625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (2 * n + 1) - A000601 (2 * n + 1)

end

end A370349.P15589150761898506625

namespace A370349

/-- `A002623(2*n+1)-A000601(2*n+1)` -/
def P15589150761898506625.Spec : Prop :=
  ∀ n, P15589150761898506625.a n = A370349 n

end A370349

/-! ## A370349.P6259418105612618964

`A014126(2*n+1)-A001399(2*n+1)`
-/

namespace A370349.P6259418105612618964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (2 * n + 1) - A001399 (2 * n + 1)

end

end A370349.P6259418105612618964

namespace A370349

/-- `A014126(2*n+1)-A001399(2*n+1)` -/
def P6259418105612618964.Spec : Prop :=
  ∀ n, P6259418105612618964.a n = A370349 n

end A370349

/-! ## A370349.P17981046697442144296

`∑[A000212(2*(n+1))]`
-/

namespace A370349.P17981046697442144296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370349.P17981046697442144296

namespace A370349

/-- `∑[A000212(2*(n+1))]` -/
def P17981046697442144296.Spec : Prop :=
  ∀ n, P17981046697442144296.a n = A370349 n

end A370349

/-! ## A370349.P10332534395629737920

`A165188(4*(n+1))`
-/

namespace A370349.P10332534395629737920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (4 * (n + 1))

end

end A370349.P10332534395629737920

namespace A370349

/-- `A165188(4*(n+1))` -/
def P10332534395629737920.Spec : Prop :=
  ∀ n, P10332534395629737920.a n = A370349 n

end A370349

/-! ## A370349.P1120212984278668148

`∑[A008724(4*(n+1))]`
-/

namespace A370349.P1120212984278668148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370349.P1120212984278668148

namespace A370349

/-- `∑[A008724(4*(n+1))]` -/
def P1120212984278668148.Spec : Prop :=
  ∀ n, P1120212984278668148.a n = A370349 n

end A370349

/-! ## A370349.P15342199946538966419

`∑[A069905(4*(n+1))]`
-/

namespace A370349.P15342199946538966419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370349.P15342199946538966419

namespace A370349

/-- `∑[A069905(4*(n+1))]` -/
def P15342199946538966419.Spec : Prop :=
  ∀ n, P15342199946538966419.a n = A370349 n

end A370349

/-!
# A370352: The smallest number such that n or more numbers k exist with k - a(n) = sopfr(k) + sopfr(a(n)), where sopfr(m) is the sum of the primes dividing m with repetition.

The programs for A370352, there is no canonical definition to state claims against.
-/

/-! ## A370352.P15532543729610561903

`A304328(A370356(n+1))`
-/

namespace A370352.P15532543729610561903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A370356 (n + 1)).toNat

end

end A370352.P15532543729610561903

/-! ## A370352.P9645572779193074821

`A245474(A161122(n)+4)`
-/

namespace A370352.P9645572779193074821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 (A161122 n + 4).toNat

end

end A370352.P9645572779193074821

/-!
# A370354: Composite numbers k that share a factor with sopfr(k), the sum of the primes dividing k, with repetition.

The programs for A370354, the canonical program `A370354.P16956646947341725089` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370354 has offset 1).

The definition of A370354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370354.P16956646947341725089

`lt[A089026(n+1), A082299(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A370354

/-- `lt[A089026(n+1), A082299(n+1)]+1` -/
def P16956646947341725089.Spec : Prop :=
  ∀ n, (P16956646947341725089.a n : ℤ) = A370354 (n + 1)

theorem P16956646947341725089.correct : P16956646947341725089.Spec := by
  intro n
  simp only [A370354, Nat.add_sub_cancel]

end A370354

/-! ## A370354.P7780004132416420657

`lt[A067722(n^A342592(3*n+2)), n]`
-/

namespace A370354.P7780004132416420657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A342592 (3 * n + 2) : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370354.P7780004132416420657

namespace A370354

/-- `lt[A067722(n^A342592(3*n+2)), n]` -/
def P7780004132416420657.Spec : Prop :=
  ∀ n, (P7780004132416420657.a n : ℤ) = A370354 (n + 1)

end A370354

/-! ## A370354.P14467888668769809911

`lt[A067722(C(n, A342592(3*n+2))), n]`
-/

namespace A370354.P14467888668769809911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 (Nat.choose n (A342592 (3 * n + 2)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370354.P14467888668769809911

namespace A370354

/-- `lt[A067722(C(n, A342592(3*n+2))), n]` -/
def P14467888668769809911.Spec : Prop :=
  ∀ n, (P14467888668769809911.a n : ℤ) = A370354 (n + 1)

end A370354

/-! ## A370354.P18251885934204672797

`lt[A279387(3*(n+1)), A001222(n+2)]+2`
-/

namespace A370354.P18251885934204672797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A370354.P18251885934204672797

namespace A370354

/-- `lt[A279387(3*(n+1)), A001222(n+2)]+2` -/
def P18251885934204672797.Spec : Prop :=
  ∀ n, (P18251885934204672797.a n : ℤ) = A370354 (n + 1)

end A370354

/-!
# A370356: a(n) is the smallest number such that exactly n numbers k exist with k - a(n) = sopfr(k) + sopfr(a(n)), where sopfr(m) is the sum of the primes dividing m with repetition.

The programs for A370356, there is no canonical definition to state claims against.
-/

/-! ## A370356.P1506442571822874711

`A370352(n+1)-A005928(A057969(n))`
-/

namespace A370356.P1506442571822874711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370352 (n + 1) - A005928 (A057969 n).toNat

end

end A370356.P1506442571822874711

/-! ## A370356.P1753055190376345992

`A178764(A291232(n))*A370352(n+1)`
-/

namespace A370356.P1753055190376345992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178764 (A291232 n).toNat * A370352 (n + 1)

end

end A370356.P1753055190376345992

/-!
# A370357: Number of partitions of [3n] into n sets of size 3 avoiding any set {3j-2,3j-1,3j} (1<=j<=n).

The programs for A370357, there is no canonical definition to state claims against.
-/

/-! ## A370357.P3354988726158138390

`A025035(n)-A370358(n)`
-/

namespace A370357.P3354988726158138390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025035 n - A370358 n

end

end A370357.P3354988726158138390

/-! ## A370357.P17641753142614494966

`A370347(∑[n])`
-/

namespace A370357.P17641753142614494966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370357.P17641753142614494966

/-! ## A370357.P17083895068574732148

`lcm(n-1, A370347(A000217(n)))`
-/

namespace A370357.P17083895068574732148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (A370347 (A000217 n).toNat)

end

end A370357.P17083895068574732148

/-! ## A370357.P52889386224214138

`A370347(A000217(n))+A000007(3*n+2)`
-/

namespace A370357.P52889386224214138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370347 (A000217 n).toNat + A000007 (3 * n + 2)

end

end A370357.P52889386224214138

/-! ## A370357.P3438176430714780336

`A057427(2*(n+1))*A370347(A000217(n))`
-/

namespace A370357.P3438176430714780336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1)) * A370347 (A000217 n).toNat

end

end A370357.P3438176430714780336

/-!
# A370358: Number of partitions of [3n] into n sets of size 3 having at least one set {3j-2,3j-1,3j} (1<=j<=n).

The programs for A370358, there is no canonical definition to state claims against.
-/

/-! ## A370358.P5165562145281802693

`A025035(n)-A370357(n)`
-/

namespace A370358.P5165562145281802693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025035 n - A370357 n

end

end A370358.P5165562145281802693

/-! ## A370358.P10633989236942425637

`A025035(n)-A370347(A000217(n))`
-/

namespace A370358.P10633989236942425637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025035 n - A370347 (A000217 n).toNat

end

end A370358.P10633989236942425637

/-! ## A370358.P9592384298730097700

`A370363(A141214(n+1)-1)`
-/

namespace A370358.P9592384298730097700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370363 (A141214 (n + 1) - 1).toNat

end

end A370358.P9592384298730097700

/-! ## A370358.P12423237241908913796

`A370363(A000217(n+3)+n)`
-/

namespace A370358.P12423237241908913796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370363 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A370358.P12423237241908913796

/-! ## A370358.P3628408869220863807

`A370363(A005843(2*n+3)+n*(n+1)/2)`
-/

namespace A370358.P3628408869220863807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370363 (SequenceMachineLib.roundAway ((A005843 (2 * n + 3) : ℚ) + (n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A370358.P3628408869220863807

/-!
# A370359: Imaginary part of (n + n*i)^n where i = sqrt(-1).

The programs for A370359, the canonical program `A370359.P3050715892632633690` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370359 has offset 0).

The definition of A370359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370359.P3050715892632633690

`n^n*A009545(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370359

/-- `n^n*A009545(n)` -/
def P3050715892632633690.Spec : Prop :=
  ∀ n, P3050715892632633690.a n = A370359 n

theorem P3050715892632633690.correct : P3050715892632633690.Spec := by
  intro n
  simp only [A370359]

end A370359

/-! ## A370359.P8989723115156062731

`n^n*A138231(2*n)`
-/

namespace A370359.P8989723115156062731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A138231 (2 * n)

end

end A370359.P8989723115156062731

namespace A370359

/-- `n^n*A138231(2*n)` -/
def P8989723115156062731.Spec : Prop :=
  ∀ n, P8989723115156062731.a n = A370359 n

end A370359

/-! ## A370359.P3845303460104455984

`Δ[-A146559(n)]*A000312(n)`
-/

namespace A370359.P3845303460104455984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000312 n

end

end A370359.P3845303460104455984

namespace A370359

/-- `Δ[-A146559(n)]*A000312(n)` -/
def P3845303460104455984.Spec : Prop :=
  ∀ n, P3845303460104455984.a n = A370359 n

end A370359

/-! ## A370359.P10888364511025586761

`floor(A106664(n+1)/2)*A000312(n)`
-/

namespace A370359.P10888364511025586761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106664 (n + 1) : ℚ) / 2⌋ * A000312 n

end

end A370359.P10888364511025586761

namespace A370359

/-- `floor(A106664(n+1)/2)*A000312(n)` -/
def P10888364511025586761.Spec : Prop :=
  ∀ n, P10888364511025586761.a n = A370359 n

end A370359

/-! ## A370359.P18406561954599529530

`A046978(n)*A158780(n+2)*A000312(n)`
-/

namespace A370359.P18406561954599529530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n * A158780 (n + 2) * A000312 n

end

end A370359.P18406561954599529530

namespace A370359

/-- `A046978(n)*A158780(n+2)*A000312(n)` -/
def P18406561954599529530.Spec : Prop :=
  ∀ n, P18406561954599529530.a n = A370359 n

end A370359

/-!
# A370360: Number of labeled semisimple rings with n elements.

The programs for A370360, there is no canonical definition to state claims against.
-/

/-! ## A370360.P10434844390757581140

`record[∏{e}[4*n, #!]]`
-/

namespace A370360.P10434844390757581140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370360.P10434844390757581140

/-! ## A370360.P10876853311681179685

`((n+1)^round(atan(n)))!`
-/

namespace A370360.P10876853311681179685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (n : ℝ)) : ℤ))).toNat

end

end A370360.P10876853311681179685

/-! ## A370360.P4471124287199432774

`C(n+1, round(atan(n)))!`
-/

namespace A370360.P4471124287199432774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose (n + 1) (SequenceMachineLib.roundAway (Real.arctan (n : ℝ))).toNat)

end

end A370360.P4471124287199432774

/-!
# A370362: Numbers k such that any two consecutive decimal digits of k^2 differ by 1 after arranging the digits in decreasing order.

The programs for A370362, there is no canonical definition to state claims against.
-/

/-! ## A370362.P10201678976131516701

`sqrt(A370610(n+1))`
-/

namespace A370362.P10201678976131516701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A370610 (n + 1) : ℝ)

end

end A370362.P10201678976131516701

/-!
# A370363: Number A(n,k) of partitions of [k*n] into n sets of size k having at least one set of consecutive numbers whose maximum (if k>0) is a multiple of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A370363, there is no canonical definition to state claims against.
-/

/-! ## A370363.P17084426620458460749

`A361948(n)-A370366(n)`
-/

namespace A370363.P17084426620458460749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361948 n - A370366 n

end

end A370363.P17084426620458460749

/-! ## A370363.P13217946935574889221

`A327522(A180803(n+1))`
-/

namespace A370363.P13217946935574889221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327522 (A180803 (n + 1)).toNat

end

end A370363.P13217946935574889221

/-! ## A370363.P603986650827048179

`A304118(A208597(n+1))`
-/

namespace A370363.P603986650827048179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A208597 (n + 1)).toNat

end

end A370363.P603986650827048179

/-! ## A370363.P11938493760652188137

`A346697(∏{p}[A200057(n+1), #])`
-/

namespace A370363.P11938493760652188137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370363.P11938493760652188137

/-! ## A370363.P8364130537171659394

`A185620(A242095(n))-A010054(n)`
-/

namespace A370363.P8364130537171659394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185620 (A242095 n).toNat - A010054 n

end

end A370363.P8364130537171659394

/-!
# A370364: Number of partitions of [n^2] into n sets of size n having at least one set of consecutive numbers whose maximum (if n>0) is a multiple of n.

The programs for A370364, there is no canonical definition to state claims against.
-/

/-! ## A370364.P11674785683191185437

`A057599(n)-A370367(n)`
-/

namespace A370364.P11674785683191185437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057599 n - A370367 n

end

end A370364.P11674785683191185437

/-! ## A370364.P17873894403904161102

`A370363(∑[4*n])`
-/

namespace A370364.P17873894403904161102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370364.P17873894403904161102

/-!
# A370365: Total sum over all j in [n] of the number of partitions of [j*(n-j)] into (n-j) sets of size j having at least one set of consecutive numbers whose maximum (if j>0) is a multiple of j.

The programs for A370365, there is no canonical definition to state claims against.
-/

/-! ## A370365.P3239453054463795155

`A370407(n)-A370368(n)`
-/

namespace A370365.P3239453054463795155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370407 n - A370368 n

end

end A370365.P3239453054463795155

/-!
# A370366: Number A(n,k) of partitions of [k*n] into n sets of size k having no set of consecutive numbers whose maximum (if k>0) is a multiple of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A370366, there is no canonical definition to state claims against.
-/

/-! ## A370366.P565112483427002215

`A361948(n)-A370363(n)`
-/

namespace A370366.P565112483427002215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361948 n - A370363 n

end

end A370366.P565112483427002215

/-! ## A370366.P10144087408290400873

`A318584(A112351(n))`
-/

namespace A370366.P10144087408290400873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318584 (A112351 n).toNat

end

end A370366.P10144087408290400873

/-! ## A370366.P18317291576701957766

`A110283(2^A238010(n))`
-/

namespace A370366.P18317291576701957766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110283 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A238010 n : ℤ))).toNat

end

end A370366.P18317291576701957766

/-! ## A370366.P12595968557907707273

`A104637(A060556(n))`
-/

namespace A370366.P12595968557907707273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104637 (A060556 n).toNat

end

end A370366.P12595968557907707273

/-! ## A370366.P1011693720408045487

`A234954(A059300(n))`
-/

namespace A370366.P1011693720408045487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234954 (A059300 n).toNat

end

end A370366.P1011693720408045487

/-!
# A370367: Number of partitions of [n^2] into n sets of size n having no set of consecutive numbers whose maximum (if k>n) is a multiple of n.

The programs for A370367, there is no canonical definition to state claims against.
-/

/-! ## A370367.P7906850383706279887

`A057599(n)-A370364(n)`
-/

namespace A370367.P7906850383706279887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057599 n - A370364 n

end

end A370367.P7906850383706279887

/-! ## A370367.P2261631268922848105

`A370366(∑[4*n])`
-/

namespace A370367.P2261631268922848105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370367.P2261631268922848105

/-!
# A370368: Total sum over all j in [n] of the number of partitions of [j*(n-j)] into (n-j) sets of size j having no set of consecutive numbers whose maximum (if j>0) is a multiple of j.

The programs for A370368, there is no canonical definition to state claims against.
-/

/-! ## A370368.P7673206651700658003

`A370407(n)-A370365(n)`
-/

namespace A370368.P7673206651700658003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370407 n - A370365 n

end

end A370368.P7673206651700658003

/-! ## A370368.P9483835556099368581

`A241827(A099131(n+1))`
-/

namespace A370368.P9483835556099368581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (A099131 (n + 1)).toNat

end

end A370368.P9483835556099368581

/-! ## A370368.P2739008280016399993

`A340828(A006534(n+1))`
-/

namespace A370368.P2739008280016399993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340828 (A006534 (n + 1)).toNat

end

end A370368.P2739008280016399993

/-!
# A370369: a(n) = n! + Sum_{k=1..n-1} (n-k)*k! = n! + A014145(n-1); for n >= 2, number of m such that any two consecutive digits of the base-n expansion of m differ by 1 after arranging the digits in decreasing order.

The programs for A370369, the canonical program `A370369.P10592005557351599252` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370369 has offset 1).

The definition of A370369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370369.P10592005557351599252

`(n+1)!+A014145(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370369

/-- `(n+1)!+A014145(n)` -/
def P10592005557351599252.Spec : Prop :=
  ∀ n, P10592005557351599252.a n = A370369 (n + 1)

theorem P10592005557351599252.correct : P10592005557351599252.Spec := by
  intro n
  simp only [A370369, Nat.add_sub_cancel]

end A370369

/-! ## A370369.P16861022987372131100

`(n+1)*∑[n!]-n`
-/

namespace A370369.P16861022987372131100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A370369.P16861022987372131100

namespace A370369

/-- `(n+1)*∑[n!]-n` -/
def P16861022987372131100.Spec : Prop :=
  ∀ n, P16861022987372131100.a n = A370369 (n + 1)

end A370369

/-! ## A370369.P14960835428204696599

`(n+1)*∑[n*a(n-1)]-n` with `a(0)=1`
-/

namespace A370369.P14960835428204696599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A370369.P14960835428204696599

namespace A370369

/-- `(n+1)*∑[n*a(n-1)]-n` -/
def P14960835428204696599.Spec : Prop :=
  ∀ n, P14960835428204696599.a n = A370369 (n + 1)

end A370369

/-! ## A370369.P5264721998880623928

`A288780(n+1)+1`
-/

namespace A370369.P5264721998880623928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288780 (n + 1) + 1

end

end A370369.P5264721998880623928

namespace A370369

/-- `A288780(n+1)+1` -/
def P5264721998880623928.Spec : Prop :=
  ∀ n, P5264721998880623928.a n = A370369 (n + 1)

end A370369

/-! ## A370369.P10863409221909461070

`A014145(n)+A000142(n+1)`
-/

namespace A370369.P10863409221909461070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014145 n + A000142 (n + 1)

end

end A370369.P10863409221909461070

namespace A370369

/-- `A014145(n)+A000142(n+1)` -/
def P10863409221909461070.Spec : Prop :=
  ∀ n, P10863409221909461070.a n = A370369 (n + 1)

end A370369

/-! ## A370369.P4940972780524318885

`A014145(n+1)-A007489(n)`
-/

namespace A370369.P4940972780524318885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014145 (n + 1) - A007489 n

end

end A370369.P4940972780524318885

namespace A370369

/-- `A014145(n+1)-A007489(n)` -/
def P4940972780524318885.Spec : Prop :=
  ∀ n, P4940972780524318885.a n = A370369 (n + 1)

end A370369

/-! ## A370369.P3567176651531704881

`A129867(n+2)-A003422(n+1)`
-/

namespace A370369.P3567176651531704881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129867 (n + 2) - A003422 (n + 1)

end

end A370369.P3567176651531704881

namespace A370369

/-- `A129867(n+2)-A003422(n+1)` -/
def P3567176651531704881.Spec : Prop :=
  ∀ n, P3567176651531704881.a n = A370369 (n + 1)

end A370369

/-!
# A370371: Largest m such that any two consecutive digits of the base-n expansion of m^2 differ by 1 after arranging the digits in decreasing order.

The programs for A370371, there is no canonical definition to state claims against.
-/

/-! ## A370371.P7345965392106868968

`sqrt(A370611(n+2))`
-/

namespace A370371.P7345965392106868968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A370611 (n + 2) : ℝ)

end

end A370371.P7345965392106868968

/-!
# A370372: Row lengths of A369276.

The programs for A370372, there is no canonical definition to state claims against.
-/

/-! ## A370372.P16229343500338881375

`A076050(gcd(A088145(2*(n+1)), A146289(3*n+1)))`
-/

namespace A370372.P16229343500338881375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076050 (Int.gcd (A088145 (2 * (n + 1))) (A146289 (3 * n + 1)))

end

end A370372.P16229343500338881375

/-! ## A370372.P12907146863488693782

`A124767(gcd(A324886(n+1), A338322(3*n)))+1`
-/

namespace A370372.P12907146863488693782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.gcd (A324886 (n + 1)) (A338322 (3 * n))) + 1

end

end A370372.P12907146863488693782

/-! ## A370372.P13385981234030939175

`A373260(2*n+5)+A359238(A336168(2*(n+2)))`
-/

namespace A370372.P13385981234030939175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (2 * n + 5) + A359238 (A336168 (2 * (n + 2))).toNat

end

end A370372.P13385981234030939175

/-! ## A370372.P16480371439669527019

`A299229(gcd(A191655(n+1), A264613(n+1)))`
-/

namespace A370372.P16480371439669527019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299229 (Int.gcd (A191655 (n + 1)) (A264613 (n + 1)))

end

end A370372.P16480371439669527019

/-!
# A370375: Number of compositions of n where there are A005809(k) sorts of part k.

The programs for A370375, there is no canonical definition to state claims against.
-/

/-! ## A370375.P2163748867423060989

`A362210(n)+A007095(A002605(2*n))`
-/

namespace A370375.P2163748867423060989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362210 n + A007095 (A002605 (2 * n)).toNat

end

end A370375.P2163748867423060989

/-!
# A370376: Number of compositions of n where there are A025174(k) sorts of part k.

The programs for A370376, there is no canonical definition to state claims against.
-/

/-! ## A370376.P14234640916301768299

`A048864(A082141(n))`
-/

namespace A370376.P14234640916301768299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (A082141 n).toNat

end

end A370376.P14234640916301768299

/-!
# A370377: a(n) is the number of symmetrical linear hydrocarbon chains with n C-C bonds.

The programs for A370377, the canonical program `A370377.P18217661859686456735` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370377 has offset 0).

The definition of A370377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 569 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370377.P18429911286481266220

`2*A306334(n+1)-A006356(n)`
-/

namespace A370377.P18429911286481266220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306334 (n + 1) - A006356 n

end

end A370377.P18429911286481266220

namespace A370377

/-- `2*A306334(n+1)-A006356(n)` -/
def P18429911286481266220.Spec : Prop :=
  ∀ n, P18429911286481266220.a n = A370377 n

end A370377

/-! ## A370377.P18217661859686456735

`A038196(A103889(n+2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370377

/-- `A038196(A103889(n+2))` -/
def P18217661859686456735.Spec : Prop :=
  ∀ n, P18217661859686456735.a n = A370377 n

theorem P18217661859686456735.correct : P18217661859686456735.Spec := by
  intro n
  simp only [A370377]

end A370377

/-! ## A370377.P18360637445788112662

`A038196(A114112(n+2))`
-/

namespace A370377.P18360637445788112662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (A114112 (n + 2)).toNat

end

end A370377.P18360637445788112662

namespace A370377

/-- `A038196(A114112(n+2))` -/
def P18360637445788112662.Spec : Prop :=
  ∀ n, P18360637445788112662.a n = A370377 n

end A370377

/-! ## A370377.P5937615588058598704

`A038196(A146094(3*n+1)+n)`
-/

namespace A370377.P5937615588058598704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (A146094 (3 * n + 1) + (n : ℤ)).toNat

end

end A370377.P5937615588058598704

namespace A370377

/-- `A038196(A146094(3*n+1)+n)` -/
def P5937615588058598704.Spec : Prop :=
  ∀ n, P5937615588058598704.a n = A370377 n

end A370377

/-! ## A370377.P7381583414601521219

`A187070(A062157(n)+A009005(n+1))`
-/

namespace A370377.P7381583414601521219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A062157 n + A009005 (n + 1)).toNat

end

end A370377.P7381583414601521219

namespace A370377

/-- `A187070(A062157(n)+A009005(n+1))` -/
def P7381583414601521219.Spec : Prop :=
  ∀ n, P7381583414601521219.a n = A370377 n

end A370377

/-! ## A370377.P1633126163539905487

`A306334(n+1)+A306334(n+1)-A077998(n+1)`
-/

namespace A370377.P1633126163539905487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306334 (n + 1) + (A306334 (n + 1) - A077998 (n + 1))

end

end A370377.P1633126163539905487

namespace A370377

/-- `A306334(n+1)+A306334(n+1)-A077998(n+1)` -/
def P1633126163539905487.Spec : Prop :=
  ∀ n, P1633126163539905487.a n = A370377 n

end A370377

/-!
# A370381: Array read by downward antidiagonals: A(n,k) = Sum_{j=0..k+1} binomial(k+2, j+1)*A(n-1,j) with A(0,k) = 1, n >= 0, k >= 0.

The programs for A370381, there is no canonical definition to state claims against.
-/

/-! ## A370381.P11171728696441913785

`or(A113647(n), A377784(A113647(n)))`
-/

namespace A370381.P11171728696441913785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113647 n) (A377784 (A113647 n).toNat)

end

end A370381.P11171728696441913785

/-! ## A370381.P5947411159578219402

`or(A059268(n), A130048(A090642(n)))`
-/

namespace A370381.P5947411159578219402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059268 n) (A130048 (A090642 n).toNat)

end

end A370381.P5947411159578219402

/-! ## A370381.P6617141813808693970

`or(A113647(n), A322338(A006888(n)))`
-/

namespace A370381.P6617141813808693970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113647 n) (A322338 (A006888 n).toNat)

end

end A370381.P6617141813808693970

/-! ## A370381.P6341672865390265293

`or(A113340(n), A383014(A071949(n)))`
-/

namespace A370381.P6341672865390265293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113340 n) (A383014 (A071949 n).toNat)

end

end A370381.P6341672865390265293

/-!
# A370383: Number of permutations of [n] having no substring [k,k+1,k+2,k+3,k+4].

The programs for A370383, there is no canonical definition to state claims against.
-/

/-! ## A370383.P3919987397132647813

`A073288(A073288(n!))`
-/

namespace A370383.P3919987397132647813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A073288 (Nat.factorial n)).toNat

end

end A370383.P3919987397132647813

/-! ## A370383.P10856367697279527031

`A177533(n)-A086077(A177520(n))`
-/

namespace A370383.P10856367697279527031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177533 n - A086077 (A177520 n).toNat

end

end A370383.P10856367697279527031

/-! ## A370383.P9085205698392189275

`A000142(n)-A122286(A077393(n+1))`
-/

namespace A370383.P9085205698392189275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A122286 (A077393 (n + 1)).toNat

end

end A370383.P9085205698392189275

/-!
# A370384: Number of permutations of [n] having no substring [k,k+1,k+2,k+3,k+4,k+5].

The programs for A370384, there is no canonical definition to state claims against.
-/

/-! ## A370384.P10568250587145942501

`A230231(n)-A048735(A006248(n+1))`
-/

namespace A370384.P10568250587145942501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230231 n - A048735 (A006248 (n + 1)).toNat

end

end A370384.P10568250587145942501

/-! ## A370384.P16940677261613974756

`A306209(A051936(n+10)-1)-A000196(A205578(n+3))`
-/

namespace A370384.P16940677261613974756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A051936 (n + 10) - 1).toNat - A000196 (A205578 (n + 3)).toNat

end

end A370384.P16940677261613974756

/-! ## A370384.P18070700917237268785

`A306209(A034856(n+9)-8)-A000196(A205578(n+3))`
-/

namespace A370384.P18070700917237268785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A034856 (n + 9) - 8).toNat - A000196 (A205578 (n + 3)).toNat

end

end A370384.P18070700917237268785

/-! ## A370384.P1954407456238278859

`A306209(A000217(n+9)-9)-A000196(A205578(n+3))`
-/

namespace A370384.P1954407456238278859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000217 (n + 9) - 9).toNat - A000196 (A205578 (n + 3)).toNat

end

end A370384.P1954407456238278859

/-! ## A370384.P9072504882012486820

`A306209(2*n+A056119(n)+28)-A000196(A205578(n+3))`
-/

namespace A370384.P9072504882012486820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 ((2 * n : ℤ) + (A056119 n + 28)).toNat - A000196 (A205578 (n + 3)).toNat

end

end A370384.P9072504882012486820

/-!
# A370386: Irregular triangle read by rows. An infinite rooted tree having root node 1 in row n = 0. Nodes in row n each have n + 1 children with values m + k, where m is the value of the parent node and k takes the values of all nodes from the root to the parent including the parent itself.

The programs for A370386, there is no canonical definition to state claims against.
-/

/-! ## A370386.P9299848245293243910

`A064064(lt[A000041(n), A249707(n+1)])`
-/

namespace A370386.P9299848245293243910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064064 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A370386.P9299848245293243910

/-!
# A370390: Number of permutations of [n] whose longest block is of length 2. A block of a permutation is a maximal sequence of consecutive integers which appear in consecutive positions.

The programs for A370390, there is no canonical definition to state claims against.
-/

/-! ## A370390.P6845494993793889843

`A184182(∑[char[1]+n]+1)`
-/

namespace A370390.P6845494993793889843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A370390.P6845494993793889843

/-! ## A370390.P3675817130995376694

`A002266(n)+A002266(A112836(n))`
-/

namespace A370390.P3675817130995376694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + A002266 (A112836 n).toNat

end

end A370390.P3675817130995376694

/-! ## A370390.P7337198871786598501

`A002266(A345132(n)+A011782(n))`
-/

namespace A370390.P7337198871786598501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A345132 n + A011782 n).toNat

end

end A370390.P7337198871786598501

/-!
# A370391: Expansion of (1 - 2*x)/(1 - 9*x + 28*x^2 - 35*x^3 + 15*x^4 - x^5).

The programs for A370391, the canonical program `A370391.P4891300136031773264` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370391 has offset 0).

The definition of A370391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A370391.P4891300136031773264`, by `A370391.P4891300136031773264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370391.P4891300136031773264

`ogf((1-2x)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A370391

/-- `ogf((1-2x)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P4891300136031773264.Spec : Prop :=
  ∀ n, P4891300136031773264.a n = A370391 n

theorem P4891300136031773264.correct : P4891300136031773264.Spec := by
  intro n
  simp only [A370391]

end A370391

/-! ## A370391.P11059753993777246019

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=35, a(3)=154, a(4)=636`
-/

namespace A370391.P11059753993777246019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 35, 154, 636] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A370391.P11059753993777246019

namespace A370391

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P11059753993777246019.Spec : Prop :=
  ∀ n, P11059753993777246019.a n = A370391 n

end A370391

/-! ## A370391.P9343264298420193310

`A231185(2*n+3)`
-/

namespace A370391.P9343264298420193310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 (2 * n + 3)

end

end A370391.P9343264298420193310

namespace A370391

/-- `A231185(2*n+3)` -/
def P9343264298420193310.Spec : Prop :=
  ∀ n, P9343264298420193310.a n = A370391 n

end A370391

/-! ## A370391.P18010809241100768064

`record[A231185(record[A006369(n)])]`
-/

namespace A370391.P18010809241100768064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370391.P18010809241100768064

namespace A370391

/-- `record[A231185(record[A006369(n)])]` -/
def P18010809241100768064.Spec : Prop :=
  ∀ n, P18010809241100768064.a n = A370391 n

end A370391

/-! ## A370391.P5343320082028616733

`A221863(n+1)-A224422(n+1)`
-/

namespace A370391.P5343320082028616733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221863 (n + 1) - A224422 (n + 1)

end

end A370391.P5343320082028616733

namespace A370391

/-- `A221863(n+1)-A224422(n+1)` -/
def P5343320082028616733.Spec : Prop :=
  ∀ n, P5343320082028616733.a n = A370391 n

end A370391

/-! ## A370391.P5961897305644166580

`2*A370568(n)-A122588(n+1)`
-/

namespace A370391.P5961897305644166580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370568 n - A122588 (n + 1)

end

end A370391.P5961897305644166580

namespace A370391

/-- `2*A370568(n)-A122588(n+1)` -/
def P5961897305644166580.Spec : Prop :=
  ∀ n, P5961897305644166580.a n = A370391 n

end A370391

/-! ## A370391.P1124048434328307611

`A221863(n+1)-(A370051(n+1)+A221863(n))`
-/

namespace A370391.P1124048434328307611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221863 (n + 1) - (A370051 (n + 1) + A221863 n)

end

end A370391.P1124048434328307611

namespace A370391

/-- `A221863(n+1)-(A370051(n+1)+A221863(n))` -/
def P1124048434328307611.Spec : Prop :=
  ∀ n, P1124048434328307611.a n = A370391 n

end A370391

/-!
# A370392: Number of permutations of [n] whose longest block is of length 3. A block of a permutation is a maximal sequence of consecutive integers which appear in consecutive positions.

The programs for A370392, there is no canonical definition to state claims against.
-/

/-! ## A370392.P16837152604249870913

`A132647(n)-A002628(n)`
-/

namespace A370392.P16837152604249870913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132647 n - A002628 n

end

end A370392.P16837152604249870913

/-! ## A370392.P557150446583713030

`A132647(n)-A047921(A016028(n+1)-1)`
-/

namespace A370392.P557150446583713030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132647 n - A047921 (A016028 (n + 1) - 1).toNat

end

end A370392.P557150446583713030

/-! ## A370392.P737417519043189879

`A078640(A282062(n)+A078673(n+1))`
-/

namespace A370392.P737417519043189879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078640 (A282062 n + A078673 (n + 1)).toNat

end

end A370392.P737417519043189879

/-!
# A370395: Numbers k that are neither squarefree nor prime powers sandwiched between twin primes.

The programs for A370395, the canonical program `A370395.P6591152245152172924` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370395 has offset 1).

The definition of A370395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370395.P6591152245152172924

`A061368(n+2)+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A370395

/-- `A061368(n+2)+1` -/
def P6591152245152172924.Spec : Prop :=
  ∀ n, P6591152245152172924.a n = A370395 (n + 1)

theorem P6591152245152172924.correct : P6591152245152172924.Spec := by
  intro n
  simp only [A370395, Nat.add_sub_cancel]

end A370395

/-! ## A370395.P17113515014731286031

`A008864(A378620(n+2))`
-/

namespace A370395.P17113515014731286031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A378620 (n + 2)).toNat

end

end A370395.P17113515014731286031

namespace A370395

/-- `A008864(A378620(n+2))` -/
def P17113515014731286031.Spec : Prop :=
  ∀ n, P17113515014731286031.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P6230566953719100733

`∩[A135731(n+1), A145199(n+1)]`
-/

namespace A370395.P6230566953719100733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370395.P6230566953719100733

namespace A370395

/-- `∩[A135731(n+1), A145199(n+1)]` -/
def P6230566953719100733.Spec : Prop :=
  ∀ n, (P6230566953719100733.a n : ℤ) = A370395 (n + 1)

end A370395

/-! ## A370395.P8802800790574211616

`A000203(A061368(n+2))`
-/

namespace A370395.P8802800790574211616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A061368 (n + 2)).toNat

end

end A370395.P8802800790574211616

namespace A370395

/-- `A000203(A061368(n+2))` -/
def P8802800790574211616.Spec : Prop :=
  ∀ n, P8802800790574211616.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P14662765990621625208

`filter[A014574(n+1), A355447(#)]`
-/

namespace A370395.P14662765990621625208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A370395.P14662765990621625208

namespace A370395

/-- `filter[A014574(n+1), A355447(#)]` -/
def P14662765990621625208.Spec : Prop :=
  ∀ n, P14662765990621625208.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P3410100555557643444

`filter[A167706(n+1), A355447(#)]`
-/

namespace A370395.P3410100555557643444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A370395.P3410100555557643444

namespace A370395

/-- `filter[A167706(n+1), A355447(#)]` -/
def P3410100555557643444.Spec : Prop :=
  ∀ n, P3410100555557643444.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P3382388247987656860

`filter[A362296(n+2), A355447(#)]`
-/

namespace A370395.P3382388247987656860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A370395.P3382388247987656860

namespace A370395

/-- `filter[A362296(n+2), A355447(#)]` -/
def P3382388247987656860.Spec : Prop :=
  ∀ n, P3382388247987656860.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P7613203578988923859

`filter[A163656(2*(n+1)), A355447(#)]`
-/

namespace A370395.P7613203578988923859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A370395.P7613203578988923859

namespace A370395

/-- `filter[A163656(2*(n+1)), A355447(#)]` -/
def P7613203578988923859.Spec : Prop :=
  ∀ n, P7613203578988923859.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P9812930375830450975

`filter[A174219(n+1), A355447(#)]`
-/

namespace A370395.P9812930375830450975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A370395.P9812930375830450975

namespace A370395

/-- `filter[A174219(n+1), A355447(#)]` -/
def P9812930375830450975.Spec : Prop :=
  ∀ n, P9812930375830450975.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P6591993913805594137

`filter[A129297(n+2), A355447(#)]`
-/

namespace A370395.P6591993913805594137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A370395.P6591993913805594137

namespace A370395

/-- `filter[A129297(n+2), A355447(#)]` -/
def P6591993913805594137.Spec : Prop :=
  ∀ n, P6591993913805594137.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P10378565785948848485

`filter[A014574(n+2), A087049(#)]`
-/

namespace A370395.P10378565785948848485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A370395.P10378565785948848485

namespace A370395

/-- `filter[A014574(n+2), A087049(#)]` -/
def P10378565785948848485.Spec : Prop :=
  ∀ n, P10378565785948848485.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P9139773264362939736

`filter[A014574(n+2), A105234(#)]`
-/

namespace A370395.P9139773264362939736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A370395.P9139773264362939736

namespace A370395

/-- `filter[A014574(n+2), A105234(#)]` -/
def P9139773264362939736.Spec : Prop :=
  ∀ n, P9139773264362939736.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P11145533198442242263

`filter[A167706(n+3), A087049(#)]`
-/

namespace A370395.P11145533198442242263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A370395.P11145533198442242263

namespace A370395

/-- `filter[A167706(n+3), A087049(#)]` -/
def P11145533198442242263.Spec : Prop :=
  ∀ n, P11145533198442242263.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P3252165002989994762

`filter[A163656(2*(n+1)), A087049(#)]`
-/

namespace A370395.P3252165002989994762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A370395.P3252165002989994762

namespace A370395

/-- `filter[A163656(2*(n+1)), A087049(#)]` -/
def P3252165002989994762.Spec : Prop :=
  ∀ n, P3252165002989994762.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P15138814578840591284

`filter[A163656(2*(n+1)), A105234(#)]`
-/

namespace A370395.P15138814578840591284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A370395.P15138814578840591284

namespace A370395

/-- `filter[A163656(2*(n+1)), A105234(#)]` -/
def P15138814578840591284.Spec : Prop :=
  ∀ n, P15138814578840591284.a n = A370395 (n + 1)

end A370395

/-! ## A370395.P2880588750334081245

`∩[A014574(n+1), A087245(n+1)]`
-/

namespace A370395.P2880588750334081245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370395.P2880588750334081245

namespace A370395

/-- `∩[A014574(n+1), A087245(n+1)]` -/
def P2880588750334081245.Spec : Prop :=
  ∀ n, (P2880588750334081245.a n : ℤ) = A370395 (n + 1)

end A370395

/-! ## A370395.P3045658023543710977

`∩[A087245(n+1), A167706(n+1)]`
-/

namespace A370395.P3045658023543710977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370395.P3045658023543710977

namespace A370395

/-- `∩[A087245(n+1), A167706(n+1)]` -/
def P3045658023543710977.Spec : Prop :=
  ∀ n, (P3045658023543710977.a n : ℤ) = A370395 (n + 1)

end A370395

/-! ## A370395.P14210722206938179044

`∩[A087245(n+1), A174219(n+1)]`
-/

namespace A370395.P14210722206938179044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370395.P14210722206938179044

namespace A370395

/-- `∩[A087245(n+1), A174219(n+1)]` -/
def P14210722206938179044.Spec : Prop :=
  ∀ n, (P14210722206938179044.a n : ℤ) = A370395 (n + 1)

end A370395

/-! ## A370395.P5050421986574364851

`∩[A014574(n+1), A369516(n+1)]`
-/

namespace A370395.P5050421986574364851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370395.P5050421986574364851

namespace A370395

/-- `∩[A014574(n+1), A369516(n+1)]` -/
def P5050421986574364851.Spec : Prop :=
  ∀ n, (P5050421986574364851.a n : ℤ) = A370395 (n + 1)

end A370395

/-! ## A370395.P11103142705126686759

`∩[A167706(n+1), A369516(n+1)]`
-/

namespace A370395.P11103142705126686759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370395.P11103142705126686759

namespace A370395

/-- `∩[A167706(n+1), A369516(n+1)]` -/
def P11103142705126686759.Spec : Prop :=
  ∀ n, (P11103142705126686759.a n : ℤ) = A370395 (n + 1)

end A370395

/-!
# A370396: Number of nonnegative integer matrices with sum of entries equal to 2*n or 2*n+1, no zero rows or columns, which are symmetric about both diagonals.

The programs for A370396, there is no canonical definition to state claims against.
-/

/-! ## A370396.P6007156739713632858

`A087834((n+2)^(n+1))`
-/

namespace A370396.P6007156739713632858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 ((n + 2) ^ (n + 1))

end

end A370396.P6007156739713632858

/-!
# A370397: a(n) = floor(g(n + 1/4)), where g(x) is the function defined for all real numbers except the negative integers by the recurrence formula g(x+1) = g(x)*(x+1), with g(x) = 1 for 0 <= x < 1.

The programs for A370397, there is no canonical definition to state claims against.
-/

/-! ## A370397.P9556519638187088542

`floor(A007696(n+1)/4^n)`
-/

namespace A370397.P9556519638187088542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007696 (n + 1) : ℚ) / (4 ^ n : ℚ)⌋

end

end A370397.P9556519638187088542

/-! ## A370397.P7978000587476046711

`A247910(n!)`
-/

namespace A370397.P7978000587476046711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (Nat.factorial n)

end

end A370397.P7978000587476046711

/-!
# A370398: Triangle read by rows: T(n,k) is the numerator of the probability of winning a 1-player game M(n,k) as defined below while playing optimally.

The programs for A370398, there is no canonical definition to state claims against.
-/

/-! ## A370398.P17941083094526179703

`A319627(2*(n+2))%A350768(A107717(n))`
-/

namespace A370398.P17941083094526179703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319627 (2 * (n + 2))) (A350768 (A107717 n).toNat)

end

end A370398.P17941083094526179703

/-! ## A370398.P11820049610632675913

`A080335(A078012(2*(n+2)))%A093561(n)`
-/

namespace A370398.P11820049610632675913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080335 (A078012 (2 * (n + 2))).toNat) (A093561 n)

end

end A370398.P11820049610632675913

