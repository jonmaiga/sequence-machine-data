import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A326500: Number T(n,k) of colored integer partitions of n using all colors of a k-set such that each block of part i with multiplicity j has a pattern of i*j colors in (weakly) increasing order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A326500, there is no canonical definition to state claims against.
-/

/-! ## A326500.P5501799004681470243

`A255903(n)-A000120(A185213(n))`
-/

namespace A326500.P5501799004681470243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 n - A000120 (A185213 n).toNat

end

end A326500.P5501799004681470243

/-! ## A326500.P15677260568653381317

`A255903(n)-A107846(A042950(n))`
-/

namespace A326500.P15677260568653381317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 n - A107846 (A042950 n).toNat

end

end A326500.P15677260568653381317

/-! ## A326500.P2942155190969793956

`A255903(n)-A025466(A137814(n))`
-/

namespace A326500.P2942155190969793956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 n - A025466 (A137814 n).toNat

end

end A326500.P2942155190969793956

/-! ## A326500.P5527082867402626773

`A255903(n)-A185213(A185235(n))`
-/

namespace A326500.P5527082867402626773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 n - A185213 (A185235 n).toNat

end

end A326500.P5527082867402626773

/-! ## A326500.P11005296621607322947

`A255903(n)-A010060(A056465(n+2))`
-/

namespace A326500.P11005296621607322947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 n - A010060 (A056465 (n + 2)).toNat

end

end A326500.P11005296621607322947

/-!
# A326501: a(n) = Sum_{k=0..n} (-k)^k.

The programs for A326501, the canonical program `A326501.P9573000067223464910` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326501 has offset 0).

The definition of A326501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326501.P9573000067223464910

`a(n-1)+(-n)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326501

/-- `a(n-1)+(-n)^n` -/
def P9573000067223464910.Spec : Prop :=
  ∀ n, P9573000067223464910.a n = A326501 n

theorem P9573000067223464910.correct : P9573000067223464910.Spec := by
  intro n
  simp only [A326501]

end A326501

/-! ## A326501.P9289706791778748422

`∑[(-n)^n]`
-/

namespace A326501.P9289706791778748422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326501.P9289706791778748422

namespace A326501

/-- `∑[(-n)^n]` -/
def P9289706791778748422.Spec : Prop :=
  ∀ n, P9289706791778748422.a n = A326501 n

end A326501

/-! ## A326501.P11144996565203364708

`floor(∑[(n/(xor(1, n)-n))^n])`
-/

namespace A326501.P11144996565203364708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A326501.P11144996565203364708

namespace A326501

/-- `floor(∑[(n/(xor(1, n)-n))^n])` -/
def P11144996565203364708.Spec : Prop :=
  ∀ n, P11144996565203364708.a n = A326501 n

end A326501

/-! ## A326501.P12728680570869291302

`-∑[-A177885(n+1)]`
-/

namespace A326501.P12728680570869291302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A177885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326501.P12728680570869291302

namespace A326501

/-- `-∑[-A177885(n+1)]` -/
def P12728680570869291302.Spec : Prop :=
  ∀ n, P12728680570869291302.a n = A326501 n

end A326501

/-! ## A326501.P3872862344072033330

`floor(∑[(n/A033999(n))^n])`
-/

namespace A326501.P3872862344072033330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A033999 n : ℚ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A326501.P3872862344072033330

namespace A326501

/-- `floor(∑[(n/A033999(n))^n])` -/
def P3872862344072033330.Spec : Prop :=
  ∀ n, P3872862344072033330.a n = A326501 n

end A326501

/-! ## A326501.P14379245698855405508

`∑[A001489(n)^n]+C(n%2, 2)`
-/

namespace A326501.P14379245698855405508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n % 2) 2 : ℤ)

end

end A326501.P14379245698855405508

namespace A326501

/-- `∑[A001489(n)^n]+C(n%2, 2)` -/
def P14379245698855405508.Spec : Prop :=
  ∀ n, P14379245698855405508.a n = A326501 n

end A326501

/-! ## A326501.P3742548595946386256

`floor(∑[A000312(n)/A033999(n)])`
-/

namespace A326501.P3742548595946386256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A326501.P3742548595946386256

namespace A326501

/-- `floor(∑[A000312(n)/A033999(n)])` -/
def P3742548595946386256.Spec : Prop :=
  ∀ n, P3742548595946386256.a n = A326501 n

end A326501

/-! ## A326501.P16747207838373019850

`A000038(n+1)+∑[A177885(n+1)]`
-/

namespace A326501.P16747207838373019850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326501.P16747207838373019850

namespace A326501

/-- `A000038(n+1)+∑[A177885(n+1)]` -/
def P16747207838373019850.Spec : Prop :=
  ∀ n, P16747207838373019850.a n = A326501 n

end A326501

/-! ## A326501.P9917624533084650782

`∑[2*A057077(A004277(n))*n^n]/2`
-/

namespace A326501.P9917624533084650782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057077 (A004277 n).toNat * (n ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A326501.P9917624533084650782

namespace A326501

/-- `∑[2*A057077(A004277(n))*n^n]/2` -/
def P9917624533084650782.Spec : Prop :=
  ∀ n, P9917624533084650782.a n = (A326501 n : ℚ)

end A326501

/-! ## A326501.P8288570510280857912

`∑[A177885(n+1)]%A332157(n)`
-/

namespace A326501.P8288570510280857912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A332157 n)

end

end A326501.P8288570510280857912

namespace A326501

/-- `∑[A177885(n+1)]%A332157(n)` -/
def P8288570510280857912.Spec : Prop :=
  ∀ n, P8288570510280857912.a n = A326501 n

end A326501

/-!
# A326502: Indices of records of minimal distance between successive Riemann zeta zeros.

The programs for A326502, there is no canonical definition to state claims against.
-/

/-! ## A326502.P13092363509212824471

`A254297(n+2)-1`
-/

namespace A326502.P13092363509212824471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254297 (n + 2) - 1

end

end A326502.P13092363509212824471

/-! ## A326502.P15615445600030064381

`∑[abs(Δ[A254297(n+1)])]`
-/

namespace A326502.P15615445600030064381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254297 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326502.P15615445600030064381

/-! ## A326502.P17456544832466672207

`∑[Δ[A254297(n+1)]%A017331(n)]`
-/

namespace A326502.P17456544832466672207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254297 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017331 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326502.P17456544832466672207

/-! ## A326502.P14691203696010337512

`abs(A254297(n+2)+A057428(n+1))`
-/

namespace A326502.P14691203696010337512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254297 (n + 2) + A057428 (n + 1)|

end

end A326502.P14691203696010337512

/-! ## A326502.P9102757965182211346

`∑[A000007(n+1)+Δ[A254297(n+1)]]`
-/

namespace A326502.P9102757965182211346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254297 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326502.P9102757965182211346

/-!
# A326503: Expansion of Sum_{k>=1} x^k * (1 - x^(2*k)) / (1 + x^k + x^(2*k))^2.

The programs for A326503, the canonical program `A326503.P13743079522954983078` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326503 has offset 1).

The definition of A326503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326503.P13743079522954983078

`A078181(n+1)-A078182(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326503

/-- `A078181(n+1)-A078182(n+1)` -/
def P13743079522954983078.Spec : Prop :=
  ∀ n, P13743079522954983078.a n = A326503 (n + 1)

theorem P13743079522954983078.correct : P13743079522954983078.Spec := by
  intro n
  simp only [A326503, Nat.add_sub_cancel]

end A326503

/-! ## A326503.P15654907580032551287

`∑{d}[n+1, A162397(#)]`
-/

namespace A326503.P15654907580032551287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162397 d

end

end A326503.P15654907580032551287

namespace A326503

/-- `∑{d}[n+1, A162397(#)]` -/
def P15654907580032551287.Spec : Prop :=
  ∀ n, P15654907580032551287.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P11770405839002041559

`∑{d}[n+1, #*A049347(#-1)]`
-/

namespace A326503.P11770405839002041559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A049347 (d - 1)

end

end A326503.P11770405839002041559

namespace A326503

/-- `∑{d}[n+1, #*A049347(#-1)]` -/
def P11770405839002041559.Spec : Prop :=
  ∀ n, P11770405839002041559.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P5673267589663269635

`A082051(n+1)-A082050(n+1)`
-/

namespace A326503.P5673267589663269635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082051 (n + 1) - A082050 (n + 1)

end

end A326503.P5673267589663269635

namespace A326503

/-- `A082051(n+1)-A082050(n+1)` -/
def P5673267589663269635.Spec : Prop :=
  ∀ n, P5673267589663269635.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P8692280790874003528

`2*A078181(n+1)-A046913(n+1)`
-/

namespace A326503.P8692280790874003528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078181 (n + 1) - A046913 (n + 1)

end

end A326503.P8692280790874003528

namespace A326503

/-- `2*A078181(n+1)-A046913(n+1)` -/
def P8692280790874003528.Spec : Prop :=
  ∀ n, P8692280790874003528.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P10220038899524043720

`A046913(n+1)-2*A078182(n+1)`
-/

namespace A326503.P10220038899524043720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) - 2 * A078182 (n + 1)

end

end A326503.P10220038899524043720

namespace A326503

/-- `A046913(n+1)-2*A078182(n+1)` -/
def P10220038899524043720.Spec : Prop :=
  ∀ n, P10220038899524043720.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P16063595322864199580

`∑{d}[n+1, A023900(#)*A131099((n+1)/#)]`
-/

namespace A326503.P16063595322864199580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A131099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326503.P16063595322864199580

namespace A326503

/-- `∑{d}[n+1, A023900(#)*A131099((n+1)/#)]` -/
def P16063595322864199580.Spec : Prop :=
  ∀ n, P16063595322864199580.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P13351132171315305518

`∑{d}[n+1, A113421(#)*A374366((n+1)/#)]`
-/

namespace A326503.P13351132171315305518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113421 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326503.P13351132171315305518

namespace A326503

/-- `∑{d}[n+1, A113421(#)*A374366((n+1)/#)]` -/
def P13351132171315305518.Spec : Prop :=
  ∀ n, P13351132171315305518.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P11584380502415419188

`A000203(n+1)-(A082050(n+1)+A078182(n+1))`
-/

namespace A326503.P11584380502415419188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A082050 (n + 1) + A078182 (n + 1))

end

end A326503.P11584380502415419188

namespace A326503

/-- `A000203(n+1)-(A082050(n+1)+A078182(n+1))` -/
def P11584380502415419188.Spec : Prop :=
  ∀ n, P11584380502415419188.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P13266272095693300542

`∑{d}[n+1, #*A102283(#)]`
-/

namespace A326503.P13266272095693300542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A102283 d

end

end A326503.P13266272095693300542

namespace A326503

/-- `∑{d}[n+1, #*A102283(#)]` -/
def P13266272095693300542.Spec : Prop :=
  ∀ n, P13266272095693300542.a n = A326503 (n + 1)

end A326503

/-! ## A326503.P14272710879457806562

`∑{d}[n+1, #*A106510(#)]`
-/

namespace A326503.P14272710879457806562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A106510 d

end

end A326503.P14272710879457806562

namespace A326503

/-- `∑{d}[n+1, #*A106510(#)]` -/
def P14272710879457806562.Spec : Prop :=
  ∀ n, P14272710879457806562.a n = A326503 (n + 1)

end A326503

/-!
# A326504: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly three 0's.

The programs for A326504, the canonical program `A326504.P9021019185211962238` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326504 has offset 3).

The definition of A326504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326504.P9021019185211962238

`A058187(n)-A007590(A028242(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A326504

/-- `A058187(n)-A007590(A028242(n))` -/
def P9021019185211962238.Spec : Prop :=
  ∀ n, P9021019185211962238.a n = A326504 (n + 3)

theorem P9021019185211962238.correct : P9021019185211962238.Spec := by
  intro n
  simp only [A326504, Nat.add_sub_cancel]

end A326504

/-! ## A326504.P2429285046922102875

`A007590(A110654(n))+A000125(A004526(n))`
-/

namespace A326504.P2429285046922102875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A110654 n).toNat + A000125 (A004526 n).toNat

end

end A326504.P2429285046922102875

namespace A326504

/-- `A007590(A110654(n))+A000125(A004526(n))` -/
def P2429285046922102875.Spec : Prop :=
  ∀ n, P2429285046922102875.a n = A326504 (n + 3)

end A326504

/-! ## A326504.P7091889970037835124

`A055803(n+4)+A002265(n+1)`
-/

namespace A326504.P7091889970037835124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055803 (n + 4) + A002265 (n + 1)

end

end A326504.P7091889970037835124

namespace A326504

/-- `A055803(n+4)+A002265(n+1)` -/
def P7091889970037835124.Spec : Prop :=
  ∀ n, P7091889970037835124.a n = A326504 (n + 3)

end A326504

/-! ## A326504.P8953392725169104670

`A055803(n+4)+A004526(A004526(n+1))`
-/

namespace A326504.P8953392725169104670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055803 (n + 4) + A004526 (A004526 (n + 1)).toNat

end

end A326504.P8953392725169104670

namespace A326504

/-- `A055803(n+4)+A004526(A004526(n+1))` -/
def P8953392725169104670.Spec : Prop :=
  ∀ n, P8953392725169104670.a n = A326504 (n + 3)

end A326504

/-! ## A326504.P5021556283104722582

`A123108(A004525(n+1))+A055803(n+4)`
-/

namespace A326504.P5021556283104722582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004525 (n + 1)).toNat + A055803 (n + 4)

end

end A326504.P5021556283104722582

namespace A326504

/-- `A123108(A004525(n+1))+A055803(n+4)` -/
def P5021556283104722582.Spec : Prop :=
  ∀ n, P5021556283104722582.a n = A326504 (n + 3)

end A326504

/-! ## A326504.P7102515593025628988

`A004526(A110654(n)²)+A000125(A004526(n))`
-/

namespace A326504.P7102515593025628988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110654 n ^ 2).toNat + A000125 (A004526 n).toNat

end

end A326504.P7102515593025628988

namespace A326504

/-- `A004526(A110654(n)²)+A000125(A004526(n))` -/
def P7102515593025628988.Spec : Prop :=
  ∀ n, P7102515593025628988.a n = A326504 (n + 3)

end A326504

/-! ## A326504.P6658182093101094847

`A004524(A004526(n+1)²)+A000125(A004526(n))`
-/

namespace A326504.P6658182093101094847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004526 (n + 1) ^ 2).toNat + A000125 (A004526 n).toNat

end

end A326504.P6658182093101094847

namespace A326504

/-- `A004524(A004526(n+1)²)+A000125(A004526(n))` -/
def P6658182093101094847.Spec : Prop :=
  ∀ n, P6658182093101094847.a n = A326504 (n + 3)

end A326504

/-! ## A326504.P4553348924320303556

`A309049(∑[n+3]+6)`
-/

namespace A326504.P4553348924320303556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A326504.P4553348924320303556

namespace A326504

/-- `A309049(∑[n+3]+6)` -/
def P4553348924320303556.Spec : Prop :=
  ∀ n, P4553348924320303556.a n = A326504 (n + 3)

end A326504

/-!
# A326505: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly four 0's.

The programs for A326505, there is no canonical definition to state claims against.
-/

/-! ## A326505.P12915957755625916124

`A309049(∑[n+4]+10)`
-/

namespace A326505.P12915957755625916124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A326505.P12915957755625916124

/-! ## A326505.P6253906954597160733

`A309049(A000217(n+4)+4)%A020701(n)`
-/

namespace A326505.P6253906954597160733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309049 (A000217 (n + 4) + 4).toNat) (A020701 n)

end

end A326505.P6253906954597160733

/-! ## A326505.P8362748822424695914

`A309049(A034856(n+3)+6)%A001538(n)`
-/

namespace A326505.P8362748822424695914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309049 (A034856 (n + 3) + 6).toNat) (A001538 n)

end

end A326505.P8362748822424695914

/-! ## A326505.P17904440166995826386

`A057077(n)²*A309049(A000217(n+4)+4)`
-/

namespace A326505.P17904440166995826386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A309049 (A000217 (n + 4) + 4).toNat

end

end A326505.P17904440166995826386

/-! ## A326505.P18053114598368093976

`and(1, A000265(n+1))*A309049(A000217(n+4)+4)`
-/

namespace A326505.P18053114598368093976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000265 (n + 1)) * A309049 (A000217 (n + 4) + 4).toNat

end

end A326505.P18053114598368093976

/-! ## A326505.P11478754078184280620

`A078560(a(n%2))*A309049(A000217(n+4)+4)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A326505.P11478754078184280620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A078560 (a (n % 2)).toNat * A309049 (A000217 (n + 4) + 4).toNat

end

end A326505.P11478754078184280620

/-! ## A326505.P12562270627521377163

`A309049(A000217(n+4)+4)+and(4, A014963(2*(n+1)))`
-/

namespace A326505.P12562270627521377163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A000217 (n + 4) + 4).toNat + Int.land 4 (A014963 (2 * (n + 1)))

end

end A326505.P12562270627521377163

/-! ## A326505.P9420877733893878587

`A309049(A167614(n+1)+A020744(n))%A001538(n)`
-/

namespace A326505.P9420877733893878587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309049 (A167614 (n + 1) + A020744 n).toNat) (A001538 n)

end

end A326505.P9420877733893878587

/-!
# A326506: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly five 0's.

The programs for A326506, there is no canonical definition to state claims against.
-/

/-! ## A326506.P3564607807636224123

`A309049(A167499(n+4))`
-/

namespace A326506.P3564607807636224123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A167499 (n + 4)).toNat

end

end A326506.P3564607807636224123

/-! ## A326506.P13768784174720983526

`A309049(A167614(n+4)+2)`
-/

namespace A326506.P13768784174720983526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A167614 (n + 4) + 2).toNat

end

end A326506.P13768784174720983526

/-! ## A326506.P4510544833345850412

`A309049(A133263(n+5)+3)`
-/

namespace A326506.P4510544833345850412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A133263 (n + 5) + 3).toNat

end

end A326506.P4510544833345850412

/-! ## A326506.P14403003672034482072

`A309049(A055998(n+3)+8)`
-/

namespace A326506.P14403003672034482072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A055998 (n + 3) + 8).toNat

end

end A326506.P14403003672034482072

/-! ## A326506.P11042946700086101378

`A309049(A161680(n+6)+5)`
-/

namespace A326506.P11042946700086101378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A161680 (n + 6) + 5).toNat

end

end A326506.P11042946700086101378

/-! ## A326506.P3803664978665407597

`A309049(A034856(n+4)+8-A057427(n))`
-/

namespace A326506.P3803664978665407597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A034856 (n + 4) + 8 - A057427 n).toNat

end

end A326506.P3803664978665407597

/-! ## A326506.P9409275851192470848

`A309049(A345478(5*n+6)+A000124(n))`
-/

namespace A326506.P9409275851192470848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A345478 (5 * n + 6) + A000124 n).toNat

end

end A326506.P9409275851192470848

/-!
# A326507: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly six 0's.

The programs for A326507, there is no canonical definition to state claims against.
-/

/-! ## A326507.P17766066129934391257

`A309049(A167499(n+5)+1)`
-/

namespace A326507.P17766066129934391257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A167499 (n + 5) + 1).toNat

end

end A326507.P17766066129934391257

/-! ## A326507.P17578956123587451697

`A309049(eq[6, A002262(n)])`
-/

namespace A326507.P17578956123587451697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326507.P17578956123587451697

/-! ## A326507.P12895999539264998646

`A367128(A275079(n))`
-/

namespace A326507.P12895999539264998646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367128 (A275079 n).toNat

end

end A326507.P12895999539264998646

/-! ## A326507.P9254139911910850894

`A368887(A104161(n+1))`
-/

namespace A326507.P9254139911910850894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368887 (A104161 (n + 1)).toNat

end

end A326507.P9254139911910850894

/-! ## A326507.P3678716538931569095

`A000196(A000290(A073336(n+1)-n))`
-/

namespace A326507.P3678716538931569095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000290 (A073336 (n + 1) - (n : ℤ)).toNat).toNat

end

end A326507.P3678716538931569095

/-!
# A326508: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly seven 0's.

The programs for A326508, there is no canonical definition to state claims against.
-/

/-! ## A326508.P2081860820218206215

`A309049(A167499(n+6)+2)`
-/

namespace A326508.P2081860820218206215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A167499 (n + 6) + 2).toNat

end

end A326508.P2081860820218206215

/-! ## A326508.P7198151339407476516

`A309049(A052905(n+7)-A008486(n+5))`
-/

namespace A326508.P7198151339407476516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A052905 (n + 7) - A008486 (n + 5)).toNat

end

end A326508.P7198151339407476516

/-! ## A326508.P813239657180906890

`A309049(eq[8, A002260(n+1)])`
-/

namespace A326508.P813239657180906890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326508.P813239657180906890

/-! ## A326508.P9754145941447125929

`A309049(eq[7, A002262(n)])`
-/

namespace A326508.P9754145941447125929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326508.P9754145941447125929

/-! ## A326508.P15147321413081801598

`A309049(eq[13, A141169(n)])`
-/

namespace A326508.P15147321413081801598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326508.P15147321413081801598

/-!
# A326509: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly eight 0's.

The programs for A326509, there is no canonical definition to state claims against.
-/

/-! ## A326509.P8632163486571973069

`A309049(A167499(n+7)+3)`
-/

namespace A326509.P8632163486571973069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A167499 (n + 7) + 3).toNat

end

end A326509.P8632163486571973069

/-! ## A326509.P3410879178707751134

`A309049(A133263(n+8)+6)`
-/

namespace A326509.P3410879178707751134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A133263 (n + 8) + 6).toNat

end

end A326509.P3410879178707751134

/-! ## A326509.P5017407969899828278

`A309049(A034856(n+7)+10)`
-/

namespace A326509.P5017407969899828278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A034856 (n + 7) + 10).toNat

end

end A326509.P5017407969899828278

/-! ## A326509.P8394491132510581875

`A309049(A052905(n+7)-5-Δ[n²])`
-/

namespace A326509.P8394491132510581875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A052905 (n + 7) - 5 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A326509.P8394491132510581875

/-! ## A326509.P5105837926422462516

`A309049(A241850(n+5)-A000217(n+1))`
-/

namespace A326509.P5105837926422462516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A241850 (n + 5) - A000217 (n + 1)).toNat

end

end A326509.P5105837926422462516

/-! ## A326509.P17228907754855985959

`A309049(A020723(n)+A000096(n+6)+8)`
-/

namespace A326509.P17228907754855985959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A020723 n + (A000096 (n + 6) + 8)).toNat

end

end A326509.P17228907754855985959

/-!
# A326510: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly nine 0's.

The programs for A326510, there is no canonical definition to state claims against.
-/

/-! ## A326510.P12737962094961008348

`A309049(A000217(n+10)-(n+1))`
-/

namespace A326510.P12737962094961008348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A326510.P12737962094961008348

/-! ## A326510.P6459442010025028053

`A309049(A046691(n)+A017053(n+7))`
-/

namespace A326510.P6459442010025028053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A046691 n + A017053 (n + 7)).toNat

end

end A326510.P6459442010025028053

/-! ## A326510.P9117458107206455148

`A309049(A008458(n+8)+A000217(n+3))`
-/

namespace A326510.P9117458107206455148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A008458 (n + 8) + A000217 (n + 3)).toNat

end

end A326510.P9117458107206455148

/-! ## A326510.P16314905469194996063

`A309049(eq[10, A002260(n+1)])`
-/

namespace A326510.P16314905469194996063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326510.P16314905469194996063

/-! ## A326510.P3508250232825495935

`A309049(eq[9, A002262(n)])`
-/

namespace A326510.P3508250232825495935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326510.P3508250232825495935

/-! ## A326510.P11719073760570722592

`A309049(eq[9, A144328(n+1)])`
-/

namespace A326510.P11719073760570722592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326510.P11719073760570722592

/-!
# A326511: Number of (binary) max-heaps on n elements from the set {0,1} containing exactly ten 0's.

The programs for A326511, there is no canonical definition to state claims against.
-/

/-! ## A326511.P3509676803743272348

`A309049(A000096(n+9)+11)`
-/

namespace A326511.P3509676803743272348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A000096 (n + 9) + 11).toNat

end

end A326511.P3509676803743272348

/-! ## A326511.P1534434161841626851

`A309049(A000217(n+11)-(n+1))`
-/

namespace A326511.P1534434161841626851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A326511.P1534434161841626851

/-! ## A326511.P2746214954469521303

`A309049(A167499(n+4)+A008706(n+9))`
-/

namespace A326511.P2746214954469521303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A167499 (n + 4) + A008706 (n + 9)).toNat

end

end A326511.P2746214954469521303

/-! ## A326511.P17580830052022541741

`A309049(eq[10, A002262(n)])`
-/

namespace A326511.P17580830052022541741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326511.P17580830052022541741

/-! ## A326511.P10451701553673287469

`A309049(eq[10, A144328(n+1)])`
-/

namespace A326511.P10451701553673287469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326511.P10451701553673287469

/-!
# A326513: Number of set partitions of {1..n} where each block has a different average.

The programs for A326513, there is no canonical definition to state claims against.
-/

/-! ## A326513.P18255506057324641798

`A215070(n+1)-A226356(A036637(n))`
-/

namespace A326513.P18255506057324641798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215070 (n + 1) - A226356 (A036637 n).toNat

end

end A326513.P18255506057324641798

/-! ## A326513.P16012514423959249924

`A326516(A002110(n))`
-/

namespace A326513.P16012514423959249924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326516 (A002110 n).toNat

end

end A326513.P16012514423959249924

/-! ## A326513.P16861835051986910594

`A289341(A112740(n))`
-/

namespace A326513.P16861835051986910594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (A112740 n).toNat

end

end A326513.P16861835051986910594

/-!
# A326514: Number of factorizations of n into factors > 1 where each factor has a different number of prime factors counted with multiplicity.

The programs for A326514, there is no canonical definition to state claims against.
-/

/-! ## A326514.P13010169619212663372

`A077565(n+1)-A125688(A181819(n+1))`
-/

namespace A326514.P13010169619212663372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (n + 1) - A125688 (A181819 (n + 1)).toNat

end

end A326514.P13010169619212663372

/-! ## A326514.P2768800266397496963

`A087437(A101296(n+1))-A165190(A008480(n+1))`
-/

namespace A326514.P2768800266397496963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087437 (A101296 (n + 1)).toNat - A165190 (A008480 (n + 1)).toNat

end

end A326514.P2768800266397496963

/-! ## A326514.P10392059826544283358

`A087437(A101296(n+1))-A125688(A181819(n+1))`
-/

namespace A326514.P10392059826544283358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087437 (A101296 (n + 1)).toNat - A125688 (A181819 (n + 1)).toNat

end

end A326514.P10392059826544283358

/-! ## A326514.P364432234256311301

`A200650(6*A305564(n+1))-A165190(A008480(n+1))`
-/

namespace A326514.P364432234256311301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (6 * A305564 (n + 1)).toNat - A165190 (A008480 (n + 1)).toNat

end

end A326514.P364432234256311301

/-! ## A326514.P15294618394842787101

`A200650(6*A305564(n+1))-A125688(A181819(n+1))`
-/

namespace A326514.P15294618394842787101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (6 * A305564 (n + 1)).toNat - A125688 (A181819 (n + 1)).toNat

end

end A326514.P15294618394842787101

/-!
# A326515: Number of factorizations of n into factors > 1 where every factor has the same average of prime indices.

The programs for A326515, there is no canonical definition to state claims against.
-/

/-! ## A326515.P17306954732781696948

`A000688(gcd(A122977(n+1), A326078(n)))`
-/

namespace A326515.P17306954732781696948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (Int.gcd (A122977 (n + 1)) (A326078 n))

end

end A326515.P17306954732781696948

/-! ## A326515.P14523454394892686162

`A000688(A122977(n+1))%p?[A247654((n+1)²)+1]`
-/

namespace A326515.P14523454394892686162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247654 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000688 (A122977 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A326515.P14523454394892686162

/-! ## A326515.P1110372802259617475

`A000688(A122977(n+1))+A000038(A269640(n+1))`
-/

namespace A326515.P1110372802259617475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A122977 (n + 1)).toNat + A000038 (A269640 (n + 1)).toNat

end

end A326515.P1110372802259617475

/-! ## A326515.P13954264880531145476

`A000688(A000040(n+1)*A122977(n+1))`
-/

namespace A326515.P13954264880531145476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000040 (n + 1) * A122977 (n + 1)).toNat

end

end A326515.P13954264880531145476

/-! ## A326515.P13754731949653726306

`A000688(A093931(n+1)*A122977(n+1))`
-/

namespace A326515.P13754731949653726306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A093931 (n + 1) * A122977 (n + 1)).toNat

end

end A326515.P13754731949653726306

/-!
# A326516: Number of factorizations of n into factors > 1 where each factor has a different average of prime indices.

The programs for A326516, there is no canonical definition to state claims against.
-/

/-! ## A326516.P478974755328713183

`A303707(n+1)-A145270(A007862(n+1))`
-/

namespace A326516.P478974755328713183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A145270 (A007862 (n + 1)).toNat

end

end A326516.P478974755328713183

/-! ## A326516.P14475350151983254645

`A303707(n+1)-A005044(A173441(n+1))`
-/

namespace A326516.P14475350151983254645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A005044 (A173441 (n + 1)).toNat

end

end A326516.P14475350151983254645

/-! ## A326516.P11616022747663341517

`A303707(n+1)-A302110(A045967(n+1))`
-/

namespace A326516.P11616022747663341517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A302110 (A045967 (n + 1)).toNat

end

end A326516.P11616022747663341517

/-! ## A326516.P7305585456715037359

`A303707(n+1)-A055641(A208644(n+1))`
-/

namespace A326516.P7305585456715037359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A055641 (A208644 (n + 1)).toNat

end

end A326516.P7305585456715037359

/-! ## A326516.P225287209615900206

`A303707(n+1)-A358754(A107834(n+1))`
-/

namespace A326516.P225287209615900206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A358754 (A107834 (n + 1)).toNat

end

end A326516.P225287209615900206

/-! ## A326516.P4177889059630227646

`A303707(n+1)-A271102(A074400(A324695(n+1)))`
-/

namespace A326516.P4177889059630227646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) - A271102 (A074400 (A324695 (n + 1)).toNat).toNat

end

end A326516.P4177889059630227646

/-! ## A326516.P9508123875719991745

`A167447(n+1)-A061395(A181821(n+1))`
-/

namespace A326516.P9508123875719991745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (n + 1) - A061395 (A181821 (n + 1)).toNat

end

end A326516.P9508123875719991745

/-!
# A326517: Number of normal multiset partitions of weight n where each part has a different size.

The programs for A326517, there is no canonical definition to state claims against.
-/

/-! ## A326517.P13686333556217889456

`A139251(A001055(n+1)*A002449(n))`
-/

namespace A326517.P13686333556217889456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A001055 (n + 1) * A002449 n).toNat

end

end A326517.P13686333556217889456

/-! ## A326517.P3258723767260719975

`A139251(A002449(n)*A349137(n+2))`
-/

namespace A326517.P3258723767260719975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A002449 n * A349137 (n + 2)).toNat

end

end A326517.P3258723767260719975

/-!
# A326518: Number of normal multiset partitions of weight n where every part has the same sum.

The programs for A326518, there is no canonical definition to state claims against.
-/

/-! ## A326518.P11572366637567162856

`A229791(A130802(n+1))`
-/

namespace A326518.P11572366637567162856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (A130802 (n + 1)).toNat

end

end A326518.P11572366637567162856

/-! ## A326518.P11687258872766226799

`or(A062069(A000142(n)), A066601(n+1))`
-/

namespace A326518.P11687258872766226799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062069 (A000142 n).toNat) (A066601 (n + 1))

end

end A326518.P11687258872766226799

/-!
# A326519: Number of normal multiset partitions of weight n where each part has a different sum.

The programs for A326519, there is no canonical definition to state claims against.
-/

/-! ## A326519.P143902929739035171

`n*A265560(a(n-1)+1)-1` with `a(0)=1`
-/

namespace A326519.P143902929739035171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A265560 (a (n - 1) + 1).toNat - 1

end

end A326519.P143902929739035171

/-! ## A326519.P3031514381461219666

`A111039(A000110(n))`
-/

namespace A326519.P3031514381461219666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111039 (A000110 n).toNat

end

end A326519.P3031514381461219666

/-!
# A326520: Number of normal multiset partitions of weight n where every part has the same average.

The programs for A326520, there is no canonical definition to state claims against.
-/

/-! ## A326520.P1478351557409665388

`A210494(A334593(n!))`
-/

namespace A326520.P1478351557409665388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (A334593 (Nat.factorial n)).toNat

end

end A326520.P1478351557409665388

/-! ## A326520.P7630391474432549156

`A274497(n)+A092689(n)`
-/

namespace A326520.P7630391474432549156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 n + A092689 n

end

end A326520.P7630391474432549156

/-! ## A326520.P12507794329000751653

`A073737(A039897(2*n)+1)`
-/

namespace A326520.P12507794329000751653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073737 (A039897 (2 * n) + 1).toNat

end

end A326520.P12507794329000751653

/-! ## A326520.P1613374124432560253

`A109613(n*A173673(3*n))`
-/

namespace A326520.P1613374124432560253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ((n : ℤ) * A173673 (3 * n)).toNat

end

end A326520.P1613374124432560253

/-!
# A326521: Number of normal multiset partitions of weight n where each part has a different average.

The programs for A326521, there is no canonical definition to state claims against.
-/

/-! ## A326521.P6294696591492187991

`A079411(A110710(n)-A329697(n+1))`
-/

namespace A326521.P6294696591492187991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079411 (A110710 n - A329697 (n + 1)).toNat

end

end A326521.P6294696591492187991

/-! ## A326521.P4188472684273735199

`A280498(∑[(n+1)^(n-1)]+1)`
-/

namespace A326521.P4188472684273735199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A326521.P4188472684273735199

/-!
# A326522: Number of partitions of n into 9 squarefree parts.

The programs for A326522, there is no canonical definition to state claims against.
-/

/-! ## A326522.P1495385387964866734

`A326523(n)/(abs(1-n)+1)`
-/

namespace A326522.P1495385387964866734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326523 n : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ)

end

end A326522.P1495385387964866734

/-! ## A326522.P3878496937471258851

`floor(A326523(n)/A028310(n))`
-/

namespace A326522.P3878496937471258851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326523 n : ℚ) / (A028310 n : ℚ)⌋

end

end A326522.P3878496937471258851

/-! ## A326522.P12187890105842057270

`A326626(n+1)-A340988(A000009(n+1))`
-/

namespace A326522.P12187890105842057270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 (n + 1) - A340988 ((A000009 (n + 1)).toNat + 91)

end

end A326522.P12187890105842057270

/-!
# A326523: Sum of all the parts in the partitions of n into 9 squarefree parts.

The programs for A326523, there is no canonical definition to state claims against.
-/

/-! ## A326523.P3486238748648729733

`n*A326522(n)`
-/

namespace A326523.P3486238748648729733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A326522 n

end

end A326523.P3486238748648729733

/-! ## A326523.P16762265952919444873

`A326524(n)+A326525(n)+A326526(n)+A326527(n)+A326528(n)+A326529(n)+A326530(n)+A326531(n)+A326532(n)`
-/

namespace A326523.P16762265952919444873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326524 n + A326525 n + A326526 n + A326527 n + A326528 n + A326529 n + A326530 n + A326531 n + A326532 n

end

end A326523.P16762265952919444873

/-! ## A326523.P8146369634817684938

`log2(A000079(n)^A326522(n))`
-/

namespace A326523.P8146369634817684938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 n : ℚ) ^ (A326522 n : ℤ) : ℝ)

end

end A326523.P8146369634817684938

/-! ## A326523.P7111567023583889782

`n*A326628(A077342(n+1))`
-/

namespace A326523.P7111567023583889782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A326628 (A077342 (n + 1)).toNat

end

end A326523.P7111567023583889782

/-! ## A326523.P14120108993628602975

`A000005(A011782(n))*A326524(n)`
-/

namespace A326523.P14120108993628602975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A326524 n

end

end A326523.P14120108993628602975

/-!
# A326524: Sum of the smallest parts of the partitions of n into 9 squarefree parts.

The programs for A326524, there is no canonical definition to state claims against.
-/

/-! ## A326524.P3978856743614970323

`A326523(n)-A326525(n)-A326526(n)-A326527(n)-A326528(n)-A326529(n)-A326530(n)-A326531(n)-A326532(n)`
-/

namespace A326524.P3978856743614970323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326525 n - A326526 n - A326527 n - A326528 n - A326529 n - A326530 n - A326531 n - A326532 n

end

end A326524.P3978856743614970323

/-!
# A326525: Sum of the eighth largest parts in the partitions of n into 9 squarefree parts.

The programs for A326525, there is no canonical definition to state claims against.
-/

/-! ## A326525.P1441859530572150061

`A326523(n)-A326524(n)-A326526(n)-A326527(n)-A326528(n)-A326529(n)-A326530(n)-A326531(n)-A326532(n)`
-/

namespace A326525.P1441859530572150061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326526 n - A326527 n - A326528 n - A326529 n - A326530 n - A326531 n - A326532 n

end

end A326525.P1441859530572150061

/-!
# A326526: Sum of the seventh largest parts of the partitions of n into 9 squarefree parts.

The programs for A326526, there is no canonical definition to state claims against.
-/

/-! ## A326526.P11007277028855705642

`A326523(n)-A326524(n)-A326525(n)-A326527(n)-A326528(n)-A326529(n)-A326530(n)-A326531(n)-A326532(n)`
-/

namespace A326526.P11007277028855705642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326525 n - A326527 n - A326528 n - A326529 n - A326530 n - A326531 n - A326532 n

end

end A326526.P11007277028855705642

/-! ## A326526.P1684747814953210132

`A353090(A308990(n+1)+1)`
-/

namespace A326526.P1684747814953210132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (A308990 (n + 1) + 1).toNat

end

end A326526.P1684747814953210132

/-!
# A326527: Sum of the sixth largest parts of the partitions of n into 9 squarefree parts.

The programs for A326527, there is no canonical definition to state claims against.
-/

/-! ## A326527.P14015428186135810798

`A326523(n)-A326524(n)-A326525(n)-A326526(n)-A326528(n)-A326529(n)-A326530(n)-A326531(n)-A326532(n)`
-/

namespace A326527.P14015428186135810798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326525 n - A326526 n - A326528 n - A326529 n - A326530 n - A326531 n - A326532 n

end

end A326527.P14015428186135810798

/-!
# A326528: Sum of the fifth largest parts of the partitions of n into 9 squarefree parts.

The programs for A326528, there is no canonical definition to state claims against.
-/

/-! ## A326528.P6596685467347716075

`A326523(n)-A326524(n)-A326525(n)-A326526(n)-A326527(n)-A326529(n)-A326530(n)-A326531(n)-A326532(n)`
-/

namespace A326528.P6596685467347716075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326525 n - A326526 n - A326527 n - A326529 n - A326530 n - A326531 n - A326532 n

end

end A326528.P6596685467347716075

/-!
# A326529: Sum of the fourth largest parts of the partitions of n into 9 squarefree parts.

The programs for A326529, there is no canonical definition to state claims against.
-/

/-! ## A326529.P5602004353476689254

`A326523(n)-A326524(n)-A326525(n)-A326526(n)-A326527(n)-A326528(n)-A326530(n)-A326531(n)-A326532(n)`
-/

namespace A326529.P5602004353476689254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326525 n - A326526 n - A326527 n - A326528 n - A326530 n - A326531 n - A326532 n

end

end A326529.P5602004353476689254

/-!
# A326530: Sum of the third largest parts of the partitions of n into 9 squarefree parts.

The programs for A326530, there is no canonical definition to state claims against.
-/

/-! ## A326530.P17879356975873968452

`A326523(n)-A326524(n)-A326525(n)-A326526(n)-A326527(n)-A326528(n)-A326529(n)-A326531(n)-A326532(n)`
-/

namespace A326530.P17879356975873968452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326525 n - A326526 n - A326527 n - A326528 n - A326529 n - A326531 n - A326532 n

end

end A326530.P17879356975873968452

/-! ## A326530.P32925058100712517

`A326635(A077342(n+1))`
-/

namespace A326530.P32925058100712517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 (A077342 (n + 1)).toNat

end

end A326530.P32925058100712517

/-! ## A326530.P5228706784473965163

`A326635(A242474(n+1))`
-/

namespace A326530.P5228706784473965163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 (A242474 (n + 1)).toNat

end

end A326530.P5228706784473965163

/-! ## A326530.P8561752143687480447

`A326635(A351374(n+1))`
-/

namespace A326530.P8561752143687480447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 (A351374 (n + 1)).toNat

end

end A326530.P8561752143687480447

/-! ## A326530.P6181370020444077222

`A326635(C(A346132(n+1), n))`
-/

namespace A326530.P6181370020444077222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 (Nat.choose (A346132 (n + 1)).toNat n)

end

end A326530.P6181370020444077222

/-!
# A326531: Sum of the second largest parts of the partitions of n into 9 squarefree parts.

The programs for A326531, there is no canonical definition to state claims against.
-/

/-! ## A326531.P5334917315020639846

`A326523(n)-A326524(n)-A326525(n)-A326526(n)-A326527(n)-A326528(n)-A326529(n)-A326530(n)-A326532(n)`
-/

namespace A326531.P5334917315020639846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326525 n - A326526 n - A326527 n - A326528 n - A326529 n - A326530 n - A326532 n

end

end A326531.P5334917315020639846

/-! ## A326531.P9494240439836696559

`A072088(A326636(n+1))`
-/

namespace A326531.P9494240439836696559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A326636 (n + 1)).toNat

end

end A326531.P9494240439836696559

/-! ## A326531.P18350726248632805550

`A326636(A077342(n+1))`
-/

namespace A326531.P18350726248632805550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (A077342 (n + 1)).toNat

end

end A326531.P18350726248632805550

/-! ## A326531.P15475850778469212800

`A326636(A242474(n+1))`
-/

namespace A326531.P15475850778469212800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (A242474 (n + 1)).toNat

end

end A326531.P15475850778469212800

/-! ## A326531.P6549186178300357911

`A326636(A351374(n+1))`
-/

namespace A326531.P6549186178300357911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 (A351374 (n + 1)).toNat

end

end A326531.P6549186178300357911

/-!
# A326532: Sum of the largest parts of the partitions of n into 9 squarefree parts.

The programs for A326532, there is no canonical definition to state claims against.
-/

/-! ## A326532.P1756387016280652786

`A326523(n)-A326524(n)-A326525(n)-A326526(n)-A326527(n)-A326528(n)-A326529(n)-A326530(n)-A326531(n)`
-/

namespace A326532.P1756387016280652786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n - A326524 n - A326525 n - A326526 n - A326527 n - A326528 n - A326529 n - A326530 n - A326531 n

end

end A326532.P1756387016280652786

/-! ## A326532.P5808986599709497721

`A326637(A077342(n+1))`
-/

namespace A326532.P5808986599709497721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326637 (A077342 (n + 1)).toNat

end

end A326532.P5808986599709497721

/-! ## A326532.P14359994342653838592

`A118759(A326637(n+1))`
-/

namespace A326532.P14359994342653838592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A326637 (n + 1)).toNat

end

end A326532.P14359994342653838592

/-! ## A326532.P7782889549595005970

`A326637(A242474(n+1))`
-/

namespace A326532.P7782889549595005970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326637 (A242474 (n + 1)).toNat

end

end A326532.P7782889549595005970

/-! ## A326532.P16284116102838028307

`A326637(A351374(n+1))`
-/

namespace A326532.P16284116102838028307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326637 (A351374 (n + 1)).toNat

end

end A326532.P16284116102838028307

/-!
# A326533: MM-numbers of multiset partitions where each part has a different length.

The programs for A326533, there is no canonical definition to state claims against.
-/

/-! ## A326533.P13408458434595813044

`record[∏{p}[A331914(n+1), #]]`
-/

namespace A326533.P13408458434595813044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326533.P13408458434595813044

/-! ## A326533.P10325067298970195211

`record[A007913(A331914(n+1))]`
-/

namespace A326533.P10325067298970195211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A331914 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326533.P10325067298970195211

/-! ## A326533.P7264112376191968417

`filter[A331914(n+1), A008966(#)]`
-/

namespace A326533.P7264112376191968417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A326533.P7264112376191968417

/-! ## A326533.P6369802422862982084

`filter[A331914(n+1), A353559(#)]`
-/

namespace A326533.P6369802422862982084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A326533.P6369802422862982084

/-! ## A326533.P4960828133725903867

`record[A007947(A331914(n+1)²)]`
-/

namespace A326533.P4960828133725903867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A331914 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326533.P4960828133725903867

/-!
# A326534: MM-numbers of multiset partitions where every part has the same sum.

The programs for A326534, there is no canonical definition to state claims against.
-/

/-! ## A326534.P7450665166132503525

`lt[(n+1)/A068794(n+1), sqrt(2)]+1`
-/

namespace A326534.P7450665166132503525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A068794 (n + 1) : ℚ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A326534.P7450665166132503525

/-! ## A326534.P17179555165779790416

`or(A088157(n+1)², A298538(n+1))`
-/

namespace A326534.P17179555165779790416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088157 (n + 1) ^ 2) (A298538 (n + 1))

end

end A326534.P17179555165779790416

/-! ## A326534.P16689569478537985150

`lt[2/3, A020639(n+1)/A028234(n+1)]+1`
-/

namespace A326534.P16689569478537985150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) / (A028234 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A326534.P16689569478537985150

/-! ## A326534.P16171650012700199741

`lt[A130064(A028310(n)), A007494(n)]`
-/

namespace A326534.P16171650012700199741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326534.P16171650012700199741

/-! ## A326534.P17598714615586720010

`A298538(n+1)+A164735(A226378(n))`
-/

namespace A326534.P17598714615586720010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (n + 1) + A164735 (A226378 n).toNat

end

end A326534.P17598714615586720010

/-! ## A326534.P16507482121285527348

`A333149(A081753(n))+A298538(n+1)`
-/

namespace A326534.P16507482121285527348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333149 (A081753 n).toNat + A298538 (n + 1)

end

end A326534.P16507482121285527348

/-! ## A326534.P13804165859072414964

`or(A112316(A051597(n)), A298538(n+1))`
-/

namespace A326534.P13804165859072414964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112316 (A051597 n).toNat) (A298538 (n + 1))

end

end A326534.P13804165859072414964

/-! ## A326534.P16420042108172264091

`filter[A298538(n+1), A137794(#)]`
-/

namespace A326534.P16420042108172264091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A326534.P16420042108172264091

/-!
# A326535: MM-numbers of multiset partitions where each part has a different sum.

The programs for A326535, there is no canonical definition to state claims against.
-/

/-! ## A326535.P4713068333014332237

`∪[A325119(n+1), A325396(n+1)]`
-/

namespace A326535.P4713068333014332237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326535.P4713068333014332237

/-! ## A326535.P16047006401187897611

`∪[A325119(n+1), A325362(n+1)]`
-/

namespace A326535.P16047006401187897611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326535.P16047006401187897611

/-! ## A326535.P6010935846203609157

`∪[A325362(n+1), A371811(n+1)]`
-/

namespace A326535.P6010935846203609157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326535.P6010935846203609157

/-! ## A326535.P6149482283327051421

`A298540(n+1)`
-/

namespace A326535.P6149482283327051421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298540 (n + 1)

end

end A326535.P6149482283327051421

/-! ## A326535.P11927284700034631099

`A005117(A004830(n+2)%A180302(n+1))`
-/

namespace A326535.P11927284700034631099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.tmod (A004830 (n + 2)) (A180302 (n + 1))).toNat

end

end A326535.P11927284700034631099

/-!
# A326536: MM-numbers of multiset partitions where every part has the same average.

The programs for A326536, there is no canonical definition to state claims against.
-/

/-! ## A326536.P16146050211235737205

`∪[A322902(n+1), A158591(n)]`
-/

namespace A326536.P16146050211235737205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P16146050211235737205

/-! ## A326536.P4484461885925508100

`∪[A322902(n+1), A322055(n)]`
-/

namespace A326536.P4484461885925508100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P4484461885925508100

/-! ## A326536.P17575431275779572321

`∪[A322902(n+1), A322594(n²)]`
-/

namespace A326536.P17575431275779572321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P17575431275779572321

/-! ## A326536.P16061348810126325364

`∪[A044315(n+1), A322902(n+1)]`
-/

namespace A326536.P16061348810126325364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P16061348810126325364

/-! ## A326536.P11505130579407249893

`∪[A322594(2*n), A322902(n+1)]`
-/

namespace A326536.P11505130579407249893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P11505130579407249893

/-! ## A326536.P3041416461026058446

`∪[A044204(2*(n+1)), A322902(n+1)]`
-/

namespace A326536.P3041416461026058446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044204 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P3041416461026058446

/-! ## A326536.P1743630557489221335

`∪[A098500(3*n)+15, A322902(n+1)]`
-/

namespace A326536.P1743630557489221335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098500 (3 * n) + 15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P1743630557489221335

/-! ## A326536.P15372726570053436937

`∪[A322902(n+1), A276968(A276283(n))]`
-/

namespace A326536.P15372726570053436937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276968 (A276283 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P15372726570053436937

/-! ## A326536.P3142796267439921768

`∪[A015925(A015925(n+1)), A322902(n+1)]`
-/

namespace A326536.P3142796267439921768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (A015925 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P3142796267439921768

/-! ## A326536.P12863428847200746601

`∪[A001844(A190708(n+1)), A322902(n+1)]`
-/

namespace A326536.P12863428847200746601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A190708 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326536.P12863428847200746601

/-!
# A326537: MM-numbers of multiset partitions where each part has a different average.

The programs for A326537, there is no canonical definition to state claims against.
-/

/-! ## A326537.P9391999575187315314

`record[A366418(n+1)+A000007(A371129(n+1))]`
-/

namespace A326537.P9391999575187315314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366418 (n + 1) + A000007 (A371129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326537.P9391999575187315314

/-! ## A326537.P370277792569189039

`record[A366418(n+1)]%A366414(n+1)`
-/

namespace A326537.P370277792569189039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A366414 (n + 1))

end

end A326537.P370277792569189039

/-! ## A326537.P4520842851257581329

`record[A366418(n+1)%A366420(n+4)]`
-/

namespace A326537.P4520842851257581329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366418 (n + 1)) (A366420 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326537.P4520842851257581329

/-! ## A326537.P476895412316967884

`A302798(A328617(n+1))`
-/

namespace A326537.P476895412316967884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302798 (A328617 (n + 1)).toNat

end

end A326537.P476895412316967884

/-! ## A326537.P5969881869311920723

`A302798(A351831(n+2))`
-/

namespace A326537.P5969881869311920723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302798 (A351831 (n + 2)).toNat

end

end A326537.P5969881869311920723

/-!
# A326538: a(n) is the numerator of the image of 1/n by the Cantor staircase function.

The programs for A326538, there is no canonical definition to state claims against.
-/

/-! ## A326538.P13189354683124335780

`gcd(A038025(A064189(2*(n+1))), A286690(n+4))`
-/

namespace A326538.P13189354683124335780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038025 (A064189 (2 * (n + 1))).toNat) (A286690 (n + 4))

end

end A326538.P13189354683124335780

/-! ## A326538.P9053609485580818111

`gcd(A117396(A322981(n+1)), A128679(n+1))`
-/

namespace A326538.P9053609485580818111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117396 (A322981 (n + 1)).toNat) (A128679 (n + 1))

end

end A326538.P9053609485580818111

/-! ## A326538.P15706440693318344245

`gcd(A211422(2*n), A318705(A299089(n+1)))`
-/

namespace A326538.P15706440693318344245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211422 (2 * n)) (A318705 (A299089 (n + 1)).toNat)

end

end A326538.P15706440693318344245

/-! ## A326538.P10567482810624012837

`A368472(A046316(2*n+3)+A002383(n+1))`
-/

namespace A326538.P10567482810624012837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (A046316 (2 * n + 3) + A002383 (n + 1)).toNat

end

end A326538.P10567482810624012837

/-! ## A326538.P13759471425506763306

`A066715(A257106(n))`
-/

namespace A326538.P13759471425506763306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066715 (A257106 n).toNat

end

end A326538.P13759471425506763306

/-!
# A326539: a(n) is the denominator of the image of 1/n by the Cantor staircase function.

The programs for A326539, there is no canonical definition to state claims against.
-/

/-! ## A326539.P11035185408579274349

`A061392((n+1)*(A326538(n+1)²+1))`
-/

namespace A326539.P11035185408579274349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 ((n + 1 : ℤ) * (A326538 (n + 1) ^ 2 + 1)).toNat

end

end A326539.P11035185408579274349

/-! ## A326539.P5537957192276686317

`A081611(n*A326538(n+1)!)`
-/

namespace A326539.P5537957192276686317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (n * Nat.factorial (A326538 (n + 1)).toNat)

end

end A326539.P5537957192276686317

/-! ## A326539.P10875584405213331429

`A081611(n)+A001222(A326538(n+1)^10)`
-/

namespace A326539.P10875584405213331429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 n + A001222 (A326538 (n + 1) ^ 10).toNat

end

end A326539.P10875584405213331429

/-! ## A326539.P15560530189779971676

`A061392(2*(n+1))+A001222(A326538(n+1)^10)`
-/

namespace A326539.P15560530189779971676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (2 * (n + 1)) + A001222 (A326538 (n + 1) ^ 10).toNat

end

end A326539.P15560530189779971676

/-!
# A326540: Sum of all the parts in the partitions of n into 9 primes.

The programs for A326540, there is no canonical definition to state claims against.
-/

/-! ## A326540.P17964077781562749147

`A326541(n)+A326542(n)+A326543(n)+A326544(n)+A326545(n)+A326546(n)+A326547(n)+A326548(n)+A326549(n)`
-/

namespace A326540.P17964077781562749147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A326542 n + A326543 n + A326544 n + A326545 n + A326546 n + A326547 n + A326548 n + A326549 n

end

end A326540.P17964077781562749147

/-! ## A326540.P6808277557514486646

`n*A001221(A326541(n)!)`
-/

namespace A326540.P6808277557514486646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (Nat.factorial (A326541 n).toNat)

end

end A326540.P6808277557514486646

/-! ## A326540.P12604131213178828177

`n*A001221(A326542(n)!)`
-/

namespace A326540.P12604131213178828177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (Nat.factorial (A326542 n).toNat)

end

end A326540.P12604131213178828177

/-! ## A326540.P13120758589473824503

`n*A001221(A326544(n)!)`
-/

namespace A326540.P13120758589473824503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (Nat.factorial (A326544 n).toNat)

end

end A326540.P13120758589473824503

/-! ## A326540.P9092627099592536857

`n*A065358(A165878(n))`
-/

namespace A326540.P9092627099592536857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065358 (A165878 n).toNat

end

end A326540.P9092627099592536857

/-!
# A326541: Sum of the smallest parts of the partitions of n into 9 primes.

The programs for A326541, there is no canonical definition to state claims against.
-/

/-! ## A326541.P1971418902485955937

`A326540(n)-A326542(n)-A326543(n)-A326544(n)-A326545(n)-A326546(n)-A326547(n)-A326548(n)-A326549(n)`
-/

namespace A326541.P1971418902485955937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326542 n - A326543 n - A326544 n - A326545 n - A326546 n - A326547 n - A326548 n - A326549 n

end

end A326541.P1971418902485955937

/-!
# A326542: Sum of the eighth largest parts of the partitions of n into 9 primes.

The programs for A326542, there is no canonical definition to state claims against.
-/

/-! ## A326542.P10054569455095837533

`A326540(n)-A326541(n)-A326543(n)-A326544(n)-A326545(n)-A326546(n)-A326547(n)-A326548(n)-A326549(n)`
-/

namespace A326542.P10054569455095837533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326543 n - A326544 n - A326545 n - A326546 n - A326547 n - A326548 n - A326549 n

end

end A326542.P10054569455095837533

/-! ## A326542.P11608136754301299504

`or(A198317(A198317(n)), A326541(n))`
-/

namespace A326542.P11608136754301299504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198317 (A198317 n).toNat) (A326541 n)

end

end A326542.P11608136754301299504

/-!
# A326543: Sum of the seventh largest parts of the partitions of n into 9 primes.

The programs for A326543, there is no canonical definition to state claims against.
-/

/-! ## A326543.P3911954671177092300

`A326540(n)-A326541(n)-A326542(n)-A326544(n)-A326545(n)-A326546(n)-A326547(n)-A326548(n)-A326549(n)`
-/

namespace A326543.P3911954671177092300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326542 n - A326544 n - A326545 n - A326546 n - A326547 n - A326548 n - A326549 n

end

end A326543.P3911954671177092300

/-!
# A326544: Sum of the sixth largest parts of the partitions of n into 9 primes.

The programs for A326544, there is no canonical definition to state claims against.
-/

/-! ## A326544.P4947888206581379936

`A326540(n)-A326541(n)-A326542(n)-A326543(n)-A326545(n)-A326546(n)-A326547(n)-A326548(n)-A326549(n)`
-/

namespace A326544.P4947888206581379936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326542 n - A326543 n - A326545 n - A326546 n - A326547 n - A326548 n - A326549 n

end

end A326544.P4947888206581379936

/-!
# A326545: Sum of the fifth largest parts in the partitions of n into 9 primes.

The programs for A326545, there is no canonical definition to state claims against.
-/

/-! ## A326545.P5214431485476088934

`A326540(n)-A326541(n)-A326542(n)-A326543(n)-A326544(n)-A326546(n)-A326547(n)-A326548(n)-A326549(n)`
-/

namespace A326545.P5214431485476088934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326542 n - A326543 n - A326544 n - A326546 n - A326547 n - A326548 n - A326549 n

end

end A326545.P5214431485476088934

/-!
# A326546: Sum of the fourth largest parts in the partitions of n into 9 primes.

The programs for A326546, there is no canonical definition to state claims against.
-/

/-! ## A326546.P8383004992303201999

`A326540(n)-A326541(n)-A326542(n)-A326543(n)-A326544(n)-A326545(n)-A326547(n)-A326548(n)-A326549(n)`
-/

namespace A326546.P8383004992303201999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326542 n - A326543 n - A326544 n - A326545 n - A326547 n - A326548 n - A326549 n

end

end A326546.P8383004992303201999

/-!
# A326547: Sum of the third largest parts in the partitions of n into 9 primes.

The programs for A326547, there is no canonical definition to state claims against.
-/

/-! ## A326547.P717119459452618049

`A326540(n)-A326541(n)-A326542(n)-A326543(n)-A326544(n)-A326545(n)-A326546(n)-A326548(n)-A326549(n)`
-/

namespace A326547.P717119459452618049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326542 n - A326543 n - A326544 n - A326545 n - A326546 n - A326548 n - A326549 n

end

end A326547.P717119459452618049

/-!
# A326548: Sum of the second largest parts of the partitions of n into 9 primes.

The programs for A326548, there is no canonical definition to state claims against.
-/

/-! ## A326548.P14207297829968159636

`A326540(n)-A326541(n)-A326542(n)-A326543(n)-A326544(n)-A326545(n)-A326546(n)-A326547(n)-A326549(n)`
-/

namespace A326548.P14207297829968159636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326542 n - A326543 n - A326544 n - A326545 n - A326546 n - A326547 n - A326549 n

end

end A326548.P14207297829968159636

/-!
# A326549: Sum of the largest parts of the partitions of n into 9 primes.

The programs for A326549, there is no canonical definition to state claims against.
-/

/-! ## A326549.P8100436649818916315

`A326540(n)-A326541(n)-A326542(n)-A326543(n)-A326544(n)-A326545(n)-A326546(n)-A326547(n)-A326548(n)`
-/

namespace A326549.P8100436649818916315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n - A326541 n - A326542 n - A326543 n - A326544 n - A326545 n - A326546 n - A326547 n - A326548 n

end

end A326549.P8100436649818916315

/-! ## A326549.P10885240259701629856

`A326688(n+2)%A337721(n)`
-/

namespace A326549.P10885240259701629856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326688 (n + 2)) (A337721 n)

end

end A326549.P10885240259701629856

/-! ## A326549.P11678988292365513656

`and(A127581(n+2), A326688(n+2))`
-/

namespace A326549.P11678988292365513656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127581 (n + 2)) (A326688 (n + 2))

end

end A326549.P11678988292365513656

/-! ## A326549.P4060086065793524396

`A326688(n+2)+A000007(A016116(n))`
-/

namespace A326549.P4060086065793524396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 (n + 2) + A000007 (A016116 n).toNat

end

end A326549.P4060086065793524396

/-! ## A326549.P11476646815616186164

`A326688(n+2)+A000007(A038231(n))`
-/

namespace A326549.P11476646815616186164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 (n + 2) + A000007 (A038231 n).toNat

end

end A326549.P11476646815616186164

/-!
# A326550: E.g.f. A(x) satisfies: Sum_{n>=0} (exp(n*x) + A(x))^n * x^n / n! = Sum_{n>=0} (exp((n+1)*x) + 1)^n * x^n / n!.

The programs for A326550, there is no canonical definition to state claims against.
-/

/-! ## A326550.P11361610921651133127

`A343601(A151885(n!))`
-/

namespace A326550.P11361610921651133127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343601 (A151885 (Nat.factorial n)).toNat

end

end A326550.P11361610921651133127

/-! ## A326550.P13616906265445852704

`A052938(Δ[A096647(n)]²)`
-/

namespace A326550.P13616906265445852704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A326550.P13616906265445852704

/-!
# A326551: E.g.f. C(x), where C(x*y) + i*S(x*y) = exp( i*Integral Integral C(x*y) dx dy ) such that C(x)^2 + S(x)^2 = 1.

The programs for A326551, there is no canonical definition to state claims against.
-/

/-! ## A326551.P7671147810466986320

`A033999(n)*A325291(n)`
-/

namespace A326551.P7671147810466986320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A325291 n

end

end A326551.P7671147810466986320

/-! ## A326551.P13937499273954552214

`A325291(n)*A326801(n²)`
-/

namespace A326551.P13937499273954552214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325291 n * A326801 (n ^ 2)

end

end A326551.P13937499273954552214

/-! ## A326551.P17030573177199295814

`A325291(n)*A326802(n²)`
-/

namespace A326551.P17030573177199295814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325291 n * A326802 (n ^ 2)

end

end A326551.P17030573177199295814

/-! ## A326551.P13747554512408213209

`A325291(n)*A326797(∑[n])`
-/

namespace A326551.P13747554512408213209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325291 n * A326797 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326551.P13747554512408213209

/-! ## A326551.P831911624941306431

`A033999(n)*A325290(2*n)`
-/

namespace A326551.P831911624941306431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A325290 (2 * n)

end

end A326551.P831911624941306431

/-!
# A326552: E.g.f. S(x), where C(x*y) + iS(x*y) = exp( i*Integral Integral C(x*y) dx dy ) such that C(x)^2 + S(x)^2 = 1.

The programs for A326552, there is no canonical definition to state claims against.
-/

/-! ## A326552.P6081602022253931990

`A326802(A280344(n))`
-/

namespace A326552.P6081602022253931990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A280344 n).toNat

end

end A326552.P6081602022253931990

/-! ## A326552.P5768955120090968187

`A326802(∑[A017089(n)])`
-/

namespace A326552.P5768955120090968187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326552.P5768955120090968187

/-! ## A326552.P6589440283586750759

`A326802(A002939(n+1))`
-/

namespace A326552.P6589440283586750759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A002939 (n + 1)).toNat

end

end A326552.P6589440283586750759

/-! ## A326552.P7788478064244777628

`A326802(A118239(n+2))`
-/

namespace A326552.P7788478064244777628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A118239 (n + 2)).toNat

end

end A326552.P7788478064244777628

/-! ## A326552.P3217306542634605378

`A033999(n)*A325292(n)`
-/

namespace A326552.P3217306542634605378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A325292 n

end

end A326552.P3217306542634605378

/-!
# A326553: E.g.f. A(x) satisfies: Sum_{n>=1} (-1)^(n-1) * A(x)^n / (n + A(x)^n) = x.

The programs for A326553, there is no canonical definition to state claims against.
-/

/-! ## A326553.P13741612465789516577

`or(1, A276573(A121351(n)))`
-/

namespace A326553.P13741612465789516577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276573 (A121351 n).toNat)

end

end A326553.P13741612465789516577

/-!
# A326554: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} (exp(n*x) + A(x))^n * x^n/n!.

The programs for A326554, there is no canonical definition to state claims against.
-/

/-! ## A326554.P8220059994689763229

`A157465(or(2, A081180(n)))`
-/

namespace A326554.P8220059994689763229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157465 (Int.lor 2 (A081180 n)).toNat

end

end A326554.P8220059994689763229

/-!
# A326555: a(n) = (2^n + 3^n)^n for n>= 0.

The programs for A326555, the canonical program `A326555.P14571510572621192281` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326555 has offset 0).

The definition of A326555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+3^n)^n` (program `A326555.P14571510572621192281`, by `A326555.P14571510572621192281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326555.P14571510572621192281

`(2^n+3^n)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326555

/-- `(2^n+3^n)^n` -/
def P14571510572621192281.Spec : Prop :=
  ∀ n, (P14571510572621192281.a n : ℤ) = A326555 n

theorem P14571510572621192281.correct : P14571510572621192281.Spec := by
  intro n
  simp only [A326555]

end A326555

/-! ## A326555.P15655016755693334659

`abs(Δ[A094374(n)]^n)`
-/

namespace A326555.P15655016755693334659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ n|

end

end A326555.P15655016755693334659

namespace A326555

/-- `abs(Δ[A094374(n)]^n)` -/
def P15655016755693334659.Spec : Prop :=
  ∀ n, P15655016755693334659.a n = A326555 n

end A326555

/-! ## A326555.P11993528249301621961

`abs(Δ[A099754(n)]^n)`
-/

namespace A326555.P11993528249301621961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ n|

end

end A326555.P11993528249301621961

namespace A326555

/-- `abs(Δ[A099754(n)]^n)` -/
def P11993528249301621961.Spec : Prop :=
  ∀ n, P11993528249301621961.a n = A326555 n

end A326555

/-! ## A326555.P767522685950134937

`abs(Δ[A072674(n)/2]^n)`
-/

namespace A326555.P767522685950134937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072674 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ n|

end

end A326555.P767522685950134937

namespace A326555

/-- `abs(Δ[A072674(n)/2]^n)` -/
def P767522685950134937.Spec : Prop :=
  ∀ n, P767522685950134937.a n = (A326555 n : ℚ)

end A326555

/-! ## A326555.P15126163006291562696

`abs(Δ[A254028(n)/2]^n)`
-/

namespace A326555.P15126163006291562696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254028 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ n|

end

end A326555.P15126163006291562696

namespace A326555

/-- `abs(Δ[A254028(n)/2]^n)` -/
def P15126163006291562696.Spec : Prop :=
  ∀ n, P15126163006291562696.a n = (A326555 n : ℚ)

end A326555

/-!
# A326557: G.f. A(x) satisfies: Sum_{n>=0} A(x)^((n+1)^2) * x^n = Sum_{n>=0} ((1+x)^(n+1) + 1)^n * x^n.

The programs for A326557, there is no canonical definition to state claims against.
-/

/-! ## A326557.P4942503392333153690

`A112689(A215257(n)+1)`
-/

namespace A326557.P4942503392333153690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A215257 n + 1).toNat

end

end A326557.P4942503392333153690

/-! ## A326557.P6858613367711084488

`A103221(A215257(n)+2)`
-/

namespace A326557.P6858613367711084488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A215257 n + 2).toNat

end

end A326557.P6858613367711084488

/-! ## A326557.P13634219021813873303

`A008615(A215257(n)+4)`
-/

namespace A326557.P13634219021813873303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A215257 n + 4).toNat

end

end A326557.P13634219021813873303

/-!
# A326558: G.f. A(x) satisfies: Sum_{n>=0} A(x)^((n-1)^2) * x^n = Sum_{n>=0} ((1+x)^(n-1) + 1)^n * x^n.

The programs for A326558, there is no canonical definition to state claims against.
-/

/-! ## A326558.P12934940315990683173

`A007916(A346506(n))-A346505(n)`
-/

namespace A326558.P12934940315990683173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A346506 n).toNat - A346505 n

end

end A326558.P12934940315990683173

/-! ## A326558.P2035075002144022643

`A133493(A133551(n)+floor(acot(n))-1)`
-/

namespace A326558.P2035075002144022643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133493 (A133551 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A326558.P2035075002144022643

/-! ## A326558.P7183581297611715973

`A138178(n)+A046080(A072856(n+2))`
-/

namespace A326558.P7183581297611715973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138178 n + A046080 (A072856 (n + 2)).toNat

end

end A326558.P7183581297611715973

/-!
# A326560: G.f. A(x) satisfies: Sum_{n>=0} A(x)^(n^2+1) * x^n = Sum_{n>=0} (A(x)^n + 1)^n * x^n.

The programs for A326560, there is no canonical definition to state claims against.
-/

/-! ## A326560.P3301461167332397195

`A114719(A032101(n+1))+n!`
-/

namespace A326560.P3301461167332397195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114719 (A032101 (n + 1)).toNat + (Nat.factorial n : ℤ)

end

end A326560.P3301461167332397195

/-! ## A326560.P15869361072763358230

`A060384(A028263(n)-A004984(n))`
-/

namespace A326560.P15869361072763358230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A028263 n - A004984 n).toNat

end

end A326560.P15869361072763358230

/-! ## A326560.P13421283574790223856

`A114719(A032101(n+1))+A000142(n)`
-/

namespace A326560.P13421283574790223856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114719 (A032101 (n + 1)).toNat + A000142 n

end

end A326560.P13421283574790223856

/-!
# A326561: G.f. A(x) satisfies: Sum_{n>=0} A(x)^(n*(n+1)+1) * x^n = Sum_{n>=0} (A(x)^(n+1) + 1)^n * x^n.

The programs for A326561, there is no canonical definition to state claims against.
-/

/-! ## A326561.P16560395839320705335

`A273513(A001631(3*n))+A005315(n)`
-/

namespace A326561.P16560395839320705335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A001631 (3 * n)).toNat + A005315 n

end

end A326561.P16560395839320705335

/-! ## A326561.P17776113818492366033

`A081399((n+1)^(n-1)+1)`
-/

namespace A326561.P17776113818492366033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)).toNat

end

end A326561.P17776113818492366033

/-!
# A326562: G.f. A(x) satisfies: Sum_{n>=0} A(x)^(n*(n-1)+1) * x^n = Sum_{n>=0} (A(x)^(n-1) + 1)^n * x^n.

The programs for A326562, there is no canonical definition to state claims against.
-/

/-! ## A326562.P4769258401413189314

`A008621(abs(2-A080108(n+1)))`
-/

namespace A326562.P4769258401413189314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 |2 - A080108 (n + 1)|.toNat

end

end A326562.P4769258401413189314

/-! ## A326562.P6624065856837400844

`A008621(A080108(n+1)+2-n)`
-/

namespace A326562.P6624065856837400844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A080108 (n + 1) + (2 - (n : ℤ))).toNat

end

end A326562.P6624065856837400844

/-! ## A326562.P3336210580781775942

`A110655(A080108(n+1)-ceil(n/log2(10)))`
-/

namespace A326562.P3336210580781775942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A080108 (n + 1) - ⌈(n : ℝ) / Real.logb 2 (10 : ℝ)⌉).toNat

end

end A326562.P3336210580781775942

/-!
# A326563: G.f. A(x) satisfies: Sum_{n>=0} A(x)^((n-1)^2) * x^n = Sum_{n>=0} (A(x)^(n-2) + 1)^n * x^n.

The programs for A326563, there is no canonical definition to state claims against.
-/

/-! ## A326563.P14287027760751579180

`Δ[A230149(A374545(n))]+1`
-/

namespace A326563.P14287027760751579180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230149 (A374545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A326563.P14287027760751579180

/-! ## A326563.P7570757800338191417

`A105512(A263576(n+1)+3)`
-/

namespace A326563.P7570757800338191417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A263576 (n + 1) + 3).toNat

end

end A326563.P7570757800338191417

/-! ## A326563.P2406111410877337446

`A103221(A004040(n)+1+n)`
-/

namespace A326563.P2406111410877337446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004040 n + 1 + (n : ℤ)).toNat

end

end A326563.P2406111410877337446

/-!
# A326564: O.g.f. A(x) satisfies: 0 = Sum_{n>=1} (b(n) - A(x))^n * (2*x)^n / n, where b(n) = 1 if n is odd or b(n) = 2 if n is even.

The programs for A326564, there is no canonical definition to state claims against.
-/

/-! ## A326564.P6098715165570056791

`A165326(n)*A307413(n)`
-/

namespace A326564.P6098715165570056791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A307413 n

end

end A326564.P6098715165570056791

/-! ## A326564.P16816910292288031422

`A062157(∏{p}[n, #])*A307413(n)`
-/

namespace A326564.P16816910292288031422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∏ p ∈ Nat.primeFactors (f1 n), p) * A307413 n

end

end A326564.P16816910292288031422

/-! ## A326564.P7240031770930180068

`A062157(A257088(n))*A307413(n)`
-/

namespace A326564.P7240031770930180068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A257088 n).toNat * A307413 n

end

end A326564.P7240031770930180068

/-! ## A326564.P10749605035631167451

`A057722(Δ[A140106(n+1)])*A307413(n)`
-/

namespace A326564.P10749605035631167451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 (f1 (n + 1) - f1 n).toNat * A307413 n

end

end A326564.P10749605035631167451

/-! ## A326564.P7877729907628970293

`A316363(n+1)/(A036453(n+1)*A165326(n))`
-/

namespace A326564.P7877729907628970293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316363 (n + 1) : ℚ) / (A036453 (n + 1) * A165326 n : ℚ)

end

end A326564.P7877729907628970293

/-! ## A326564.P13112030397672551407

`A062157(∑[A270812(n+1)])*A307413(n)`
-/

namespace A326564.P13112030397672551407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A307413 n

end

end A326564.P13112030397672551407

/-!
# A326567: Numerator of the average of the multiset of prime indices of n.

The programs for A326567, the canonical program `A326567.P521325717167695711` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326567 has offset 2).

The definition of A326567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326567.P521325717167695711

`A056239(n+2)/A373381(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A326567

/-- `A056239(n+2)/A373381(n+2)` -/
def P521325717167695711.Spec : Prop :=
  ∀ n, P521325717167695711.a n = (A326567 (n + 2) : ℚ)

end A326567

/-! ## A326567.P15030843452712868423

`A354871(n+2)*A354872(n+2)/A373381(n+2)`
-/

namespace A326567.P15030843452712868423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354871 (n + 2) * A354872 (n + 2) : ℚ) / (A373381 (n + 2) : ℚ)

end

end A326567.P15030843452712868423

namespace A326567

/-- `A354871(n+2)*A354872(n+2)/A373381(n+2)` -/
def P15030843452712868423.Spec : Prop :=
  ∀ n, P15030843452712868423.a n = (A326567 (n + 2) : ℚ)

end A326567

/-! ## A326567.P11436198302147182721

`A360614(A358137(n+2))`
-/

namespace A326567.P11436198302147182721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A358137 (n + 2)).toNat

end

end A326567.P11436198302147182721

namespace A326567

/-- `A360614(A358137(n+2))` -/
def P11436198302147182721.Spec : Prop :=
  ∀ n, P11436198302147182721.a n = A326567 (n + 2)

end A326567

/-! ## A326567.P14338659038369379917

`A099246(A233249(n+2))`
-/

namespace A326567.P14338659038369379917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A233249 (n + 2)).toNat

end

end A326567.P14338659038369379917

namespace A326567

/-- `A099246(A233249(n+2))` -/
def P14338659038369379917.Spec : Prop :=
  ∀ n, P14338659038369379917.a n = A326567 (n + 2)

end A326567

/-! ## A326567.P2287431618793505854

`A099246(A333220(n+2))`
-/

namespace A326567.P2287431618793505854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A333220 (n + 2)).toNat

end

end A326567.P2287431618793505854

namespace A326567

/-- `A099246(A333220(n+2))` -/
def P2287431618793505854.Spec : Prop :=
  ∀ n, P2287431618793505854.a n = A326567 (n + 2)

end A326567

/-!
# A326568: Denominator of the average of the multiset of prime indices of n.

The programs for A326568, the canonical program `A326568.P10581882432405670796` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326568 has offset 2).

The definition of A326568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326568.P15636152074961041731

`A001222(n+2)/A373381(n+2)`
-/

namespace A326568.P15636152074961041731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) / (A373381 (n + 2) : ℚ)

end

end A326568.P15636152074961041731

namespace A326568

/-- `A001222(n+2)/A373381(n+2)` -/
def P15636152074961041731.Spec : Prop :=
  ∀ n, P15636152074961041731.a n = (A326568 (n + 2) : ℚ)

end A326568

/-! ## A326568.P10581882432405670796

`A001222(n+2)/gcd(A001222(n+2), A056239(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A326568

/-- `A001222(n+2)/gcd(A001222(n+2), A056239(n+2))` -/
def P10581882432405670796.Spec : Prop :=
  ∀ n, P10581882432405670796.a n = (A326568 (n + 2) : ℚ)

end A326568

/-! ## A326568.P10252929302846642340

`A001222(n+2)/A056239(n+2)*A326567(n+2)`
-/

namespace A326568.P10252929302846642340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) : ℚ) / (A056239 (n + 2) : ℚ) * (A326567 (n + 2) : ℚ)

end

end A326568.P10252929302846642340

namespace A326568

/-- `A001222(n+2)/A056239(n+2)*A326567(n+2)` -/
def P10252929302846642340.Spec : Prop :=
  ∀ n, P10252929302846642340.a n = (A326568 (n + 2) : ℚ)

end A326568

/-! ## A326568.P17046168092535093483

`A360615(A358137(n+2))`
-/

namespace A326568.P17046168092535093483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A358137 (n + 2)).toNat

end

end A326568.P17046168092535093483

namespace A326568

/-- `A360615(A358137(n+2))` -/
def P17046168092535093483.Spec : Prop :=
  ∀ n, P17046168092535093483.a n = A326568 (n + 2)

end A326568

/-! ## A326568.P7466634654003651625

`A360614(A181821(n+2))`
-/

namespace A326568.P7466634654003651625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A181821 (n + 2)).toNat

end

end A326568.P7466634654003651625

namespace A326568

/-- `A360614(A181821(n+2))` -/
def P7466634654003651625.Spec : Prop :=
  ∀ n, P7466634654003651625.a n = A326568 (n + 2)

end A326568

/-! ## A326568.P9721076700613562610

`A088530(A181821(n+2)/A088530(n+3)²)`
-/

namespace A326568.P9721076700613562610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (SequenceMachineLib.roundAway ((A181821 (n + 2) : ℚ) / (A088530 (n + 3) ^ 2 : ℚ))).toNat

end

end A326568.P9721076700613562610

namespace A326568

/-- `A088530(A181821(n+2)/A088530(n+3)²)` -/
def P9721076700613562610.Spec : Prop :=
  ∀ n, P9721076700613562610.a n = A326568 (n + 2)

end A326568

/-! ## A326568.P943702157450129186

`A088530(A181821(n+2)%A057660(3*n+5))`
-/

namespace A326568.P943702157450129186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (Int.tmod (A181821 (n + 2)) (A057660 (3 * n + 5))).toNat

end

end A326568.P943702157450129186

namespace A326568

/-- `A088530(A181821(n+2)%A057660(3*n+5))` -/
def P943702157450129186.Spec : Prop :=
  ∀ n, P943702157450129186.a n = A326568 (n + 2)

end A326568

/-! ## A326568.P6701501314011068420

`A360614(A304660(n+2))`
-/

namespace A326568.P6701501314011068420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A304660 (n + 2)).toNat

end

end A326568.P6701501314011068420

namespace A326568

/-- `A360614(A304660(n+2))` -/
def P6701501314011068420.Spec : Prop :=
  ∀ n, P6701501314011068420.a n = A326568 (n + 2)

end A326568

/-!
# A326569: Number of covering antichains of subsets of {1..n} with no singletons and different edge-sizes.

The programs for A326569, there is no canonical definition to state claims against.
-/

/-! ## A326569.P8626430862750170321

`A326570(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A326569.P8626430862750170321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326570 n - (n : ℤ) * a (n - 1)

end

end A326569.P8626430862750170321

/-! ## A326569.P12257695734872794059

`A089247(A326570(n))-A356292(n)`
-/

namespace A326569.P12257695734872794059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A326570 n).toNat - A356292 n

end

end A326569.P12257695734872794059

/-! ## A326569.P13860285646486174337

`A089247(A326570(n))-(A000272(n)-A355671(n))`
-/

namespace A326569.P13860285646486174337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A326570 n).toNat - (A000272 n - A355671 n)

end

end A326569.P13860285646486174337

/-!
# A326570: Number of covering antichains of subsets of {1..n} with different edge-sizes.

The programs for A326570, there is no canonical definition to state claims against.
-/

/-! ## A326570.P2789443677382339964

`A089247(A356292(n)+A326569(n))`
-/

namespace A326570.P2789443677382339964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A356292 n + A326569 n).toNat

end

end A326570.P2789443677382339964

/-! ## A326570.P16997980162848636867

`A235489(A356292(n)+A326569(n))`
-/

namespace A326570.P16997980162848636867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A356292 n + A326569 n).toNat

end

end A326570.P16997980162848636867

/-! ## A326570.P2005695484863396881

`A089247(A326569(n)+A000272(n)-A355671(n))`
-/

namespace A326570.P2005695484863396881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A326569 n + (A000272 n - A355671 n)).toNat

end

end A326570.P2005695484863396881

/-!
# A326571: Number of covering antichains of nonempty, non-singleton subsets of {1..n}, all having different sums.

The programs for A326571, there is no canonical definition to state claims against.
-/

/-! ## A326571.P17231421889068040014

`A324968(A000110(n))+floor(acot(n))-1`
-/

namespace A326571.P17231421889068040014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324968 (A000110 n).toNat + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A326571.P17231421889068040014

/-! ## A326571.P12389997588224029436

`A324968(A108304(n))+A057428(n)`
-/

namespace A326571.P12389997588224029436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324968 (A108304 n).toNat + A057428 n

end

end A326571.P12389997588224029436

/-!
# A326573: Number of connected antichains of subsets of {1..n}, all having different sums.

The programs for A326573, there is no canonical definition to state claims against.
-/

/-! ## A326573.P15412836647389724173

`A187790(or(1, A326571(n)))`
-/

namespace A326573.P15412836647389724173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187790 (Int.lor 1 (A326571 n)).toNat

end

end A326573.P15412836647389724173

/-! ## A326573.P7512692112113724302

`A008578(floor(sqrt(A110372(n+1))))`
-/

namespace A326573.P7512692112113724302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.sqrt (A110372 (n + 1))).toNat

end

end A326573.P7512692112113724302

/-!
# A326574: Number of antichains of subsets of {1..n} with equal edge-sums.

The programs for A326574, there is no canonical definition to state claims against.
-/

/-! ## A326574.P17232097353820230832

`A307482(A240172(n))+1+n`
-/

namespace A326574.P17232097353820230832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307482 (A240172 n).toNat + 1 + (n : ℤ)

end

end A326574.P17232097353820230832

/-! ## A326574.P16912385740423095789

`record[A064130(n)]-A329153(n+1)`
-/

namespace A326574.P16912385740423095789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A329153 (n + 1)

end

end A326574.P16912385740423095789

/-! ## A326574.P1907299496722713286

`A220124(n)+∑[∑[A276335(n!)]+1]`
-/

namespace A326574.P1907299496722713286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276335 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220124 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326574.P1907299496722713286

/-!
# A326575: Expansion of Sum_{k>=1} k * x^k * (1 + x^(2*k)) / (1 + x^(2*k) + x^(4*k)).

The programs for A326575, the canonical program `A326575.P1591157321063095187` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326575 has offset 1).

The definition of A326575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326575.P17478374245843783718

`∑{d}[n+1, A000010(#)*A035178((n+1)/#)]`
-/

namespace A326575.P17478374245843783718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P17478374245843783718

namespace A326575

/-- `∑{d}[n+1, A000010(#)*A035178((n+1)/#)]` -/
def P17478374245843783718.Spec : Prop :=
  ∀ n, P17478374245843783718.a n = A326575 (n + 1)

end A326575

/-! ## A326575.P11045318178925555611

`∑{d}[n+1, A002324(#)*A126246((n+1)/#)]`
-/

namespace A326575.P11045318178925555611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A126246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P11045318178925555611

namespace A326575

/-- `∑{d}[n+1, A002324(#)*A126246((n+1)/#)]` -/
def P11045318178925555611.Spec : Prop :=
  ∀ n, P11045318178925555611.a n = A326575 (n + 1)

end A326575

/-! ## A326575.P5814080711510358063

`∑{d}[n+1, A137608(#)*A162728((n+1)/#)]`
-/

namespace A326575.P5814080711510358063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137608 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P5814080711510358063

namespace A326575

/-- `∑{d}[n+1, A137608(#)*A162728((n+1)/#)]` -/
def P5814080711510358063.Spec : Prop :=
  ∀ n, P5814080711510358063.a n = A326575 (n + 1)

end A326575

/-! ## A326575.P1591157321063095187

`∑{d}[n+1, A113448(#)*A195459((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A326575

/-- `∑{d}[n+1, A113448(#)*A195459((n+1)/#)]` -/
def P1591157321063095187.Spec : Prop :=
  ∀ n, P1591157321063095187.a n = A326575 (n + 1)

theorem P1591157321063095187.correct : P1591157321063095187.Spec := by
  intro n
  simp only [A326575, Nat.add_sub_cancel]

end A326575

/-! ## A326575.P3889236419785625897

`∑{d}[n+1, A019590(#)*A326401((n+1)/#)]`
-/

namespace A326575.P3889236419785625897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A326401 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P3889236419785625897

namespace A326575

/-- `∑{d}[n+1, A019590(#)*A326401((n+1)/#)]` -/
def P3889236419785625897.Spec : Prop :=
  ∀ n, P3889236419785625897.a n = A326575 (n + 1)

end A326575

/-! ## A326575.P10171010254325938499

`∑{d}[n+1, A049347(#-1)*A080512((n+1)/#)]`
-/

namespace A326575.P10171010254325938499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A080512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P10171010254325938499

namespace A326575

/-- `∑{d}[n+1, A049347(#-1)*A080512((n+1)/#)]` -/
def P10171010254325938499.Spec : Prop :=
  ∀ n, P10171010254325938499.a n = A326575 (n + 1)

end A326575

/-! ## A326575.P5589322294542325079

`∑{d}[n+1, A010892(#-1)*A214682((n+1)/#)]`
-/

namespace A326575.P5589322294542325079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010892 (d - 1) * A214682 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P5589322294542325079

namespace A326575

/-- `∑{d}[n+1, A010892(#-1)*A214682((n+1)/#)]` -/
def P5589322294542325079.Spec : Prop :=
  ∀ n, P5589322294542325079.a n = A326575 (n + 1)

end A326575

/-! ## A326575.P2505397323552142744

`∑{d}[n+1, #*A134667((n+1)/#)]`
-/

namespace A326575.P2505397323552142744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A134667 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P2505397323552142744

namespace A326575

/-- `∑{d}[n+1, #*A134667((n+1)/#)]` -/
def P2505397323552142744.Spec : Prop :=
  ∀ n, P2505397323552142744.a n = A326575 (n + 1)

end A326575

/-! ## A326575.P14238783930398665970

`∑{d}[n+1, #*A163817((n+1)/#)]`
-/

namespace A326575.P14238783930398665970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A163817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326575.P14238783930398665970

namespace A326575

/-- `∑{d}[n+1, #*A163817((n+1)/#)]` -/
def P14238783930398665970.Spec : Prop :=
  ∀ n, P14238783930398665970.a n = A326575 (n + 1)

end A326575

/-!
# A326577: a(n) = (2*n - 1) / A326478(2*n - 1).

The programs for A326577, the canonical program `A326577.P11339216783745800958` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326577 has offset 1).

The definition of A326577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326577.P11339216783745800958

`(2*(n+1)-1)/A326478(2*(n+1)-1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A326577

/-- `(2*(n+1)-1)/A326478(2*(n+1)-1)` -/
def P11339216783745800958.Spec : Prop :=
  ∀ n, P11339216783745800958.a n = (A326577 (n + 1) : ℚ)

end A326577

/-! ## A326577.P5116209345627565927

`gcd(A002445(n), A016755(n))`
-/

namespace A326577.P5116209345627565927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A016755 n)

end

end A326577.P5116209345627565927

namespace A326577

/-- `gcd(A002445(n), A016755(n))` -/
def P5116209345627565927.Spec : Prop :=
  ∀ n, (P5116209345627565927.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P9264686825677526886

`A002445(n)/A050932(2*n)`
-/

namespace A326577.P9264686825677526886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A050932 (2 * n) : ℚ)

end

end A326577.P9264686825677526886

namespace A326577

/-- `A002445(n)/A050932(2*n)` -/
def P9264686825677526886.Spec : Prop :=
  ∀ n, P9264686825677526886.a n = (A326577 (n + 1) : ℚ)

end A326577

/-! ## A326577.P4546679142111795763

`gcd(A004273(n+1), A106458(2*n))`
-/

namespace A326577.P4546679142111795763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004273 (n + 1)) (A106458 (2 * n))

end

end A326577.P4546679142111795763

namespace A326577

/-- `gcd(A004273(n+1), A106458(2*n))` -/
def P4546679142111795763.Spec : Prop :=
  ∀ n, (P4546679142111795763.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P14864160719936549792

`A027642(2*n)/A050932(2*n)`
-/

namespace A326577.P14864160719936549792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A050932 (2 * n) : ℚ)

end

end A326577.P14864160719936549792

namespace A326577

/-- `A027642(2*n)/A050932(2*n)` -/
def P14864160719936549792.Spec : Prop :=
  ∀ n, P14864160719936549792.a n = (A326577 (n + 1) : ℚ)

end A326577

/-! ## A326577.P16366558234954617473

`gcd(A004442(2*n), A027642(2*n))`
-/

namespace A326577.P16366558234954617473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (2 * n)) (A027642 (2 * n))

end

end A326577.P16366558234954617473

namespace A326577

/-- `gcd(A004442(2*n), A027642(2*n))` -/
def P16366558234954617473.Spec : Prop :=
  ∀ n, (P16366558234954617473.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P15176210836312244432

`gcd(A081346(2*n), A141459(2*n))`
-/

namespace A326577.P15176210836312244432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081346 (2 * n)) (A141459 (2 * n))

end

end A326577.P15176210836312244432

namespace A326577

/-- `gcd(A081346(2*n), A141459(2*n))` -/
def P15176210836312244432.Spec : Prop :=
  ∀ n, (P15176210836312244432.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P3405361850995307388

`gcd(A109613(2*n), A141056(2*n))`
-/

namespace A326577.P3405361850995307388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109613 (2 * n)) (A141056 (2 * n))

end

end A326577.P3405361850995307388

namespace A326577

/-- `gcd(A109613(2*n), A141056(2*n))` -/
def P3405361850995307388.Spec : Prop :=
  ∀ n, (P3405361850995307388.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P182460964204593350

`A326584(Δ[n²])`
-/

namespace A326577.P182460964204593350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A326577.P182460964204593350

namespace A326577

/-- `A326584(Δ[n²])` -/
def P182460964204593350.Spec : Prop :=
  ∀ n, P182460964204593350.a n = A326577 (n + 1)

end A326577

/-! ## A326577.P11337384006042051907

`or(1, A326584(2*n+1))`
-/

namespace A326577.P11337384006042051907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326584 (2 * n + 1))

end

end A326577.P11337384006042051907

namespace A326577

/-- `or(1, A326584(2*n+1))` -/
def P11337384006042051907.Spec : Prop :=
  ∀ n, P11337384006042051907.a n = A326577 (n + 1)

end A326577

/-! ## A326577.P10677379073040133676

`filter[A326584(2*n+1), A000035(#)]`
-/

namespace A326577.P10677379073040133676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A326577.P10677379073040133676

namespace A326577

/-- `filter[A326584(2*n+1), A000035(#)]` -/
def P10677379073040133676.Spec : Prop :=
  ∀ n, P10677379073040133676.a n = A326577 (n + 1)

end A326577

/-! ## A326577.P4335233102657608377

`filter[A326584(2*n+1), A008966(#)]`
-/

namespace A326577.P4335233102657608377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A326577.P4335233102657608377

namespace A326577

/-- `filter[A326584(2*n+1), A008966(#)]` -/
def P4335233102657608377.Spec : Prop :=
  ∀ n, P4335233102657608377.a n = A326577 (n + 1)

end A326577

/-! ## A326577.P6019763090018159148

`A166260(2*n+1)+A166123(2*n+1)`
-/

namespace A326577.P6019763090018159148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (2 * n + 1) + A166123 (2 * n + 1)

end

end A326577.P6019763090018159148

namespace A326577

/-- `A166260(2*n+1)+A166123(2*n+1)` -/
def P6019763090018159148.Spec : Prop :=
  ∀ n, P6019763090018159148.a n = A326577 (n + 1)

end A326577

/-! ## A326577.P16541885728402067857

`gcd(A141056(2*n)², A007947(2*n+1))`
-/

namespace A326577.P16541885728402067857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141056 (2 * n) ^ 2) (A007947 (2 * n + 1))

end

end A326577.P16541885728402067857

namespace A326577

/-- `gcd(A141056(2*n)², A007947(2*n+1))` -/
def P16541885728402067857.Spec : Prop :=
  ∀ n, (P16541885728402067857.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P6961430375068446499

`gcd(A326579(2*n+1)², A326584(2*n+1))`
-/

namespace A326577.P6961430375068446499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326579 (2 * n + 1) ^ 2) (A326584 (2 * n + 1))

end

end A326577.P6961430375068446499

namespace A326577

/-- `gcd(A326579(2*n+1)², A326584(2*n+1))` -/
def P6961430375068446499.Spec : Prop :=
  ∀ n, (P6961430375068446499.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P211925067625114402

`gcd(A140812(n), A157142(n))`
-/

namespace A326577.P211925067625114402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140812 n) (A157142 n)

end

end A326577.P211925067625114402

namespace A326577

/-- `gcd(A140812(n), A157142(n))` -/
def P211925067625114402.Spec : Prop :=
  ∀ n, (P211925067625114402.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P8635188502358856724

`gcd(A004442(2*n)², A176289(2*n))`
-/

namespace A326577.P8635188502358856724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (2 * n) ^ 2) (A176289 (2 * n))

end

end A326577.P8635188502358856724

namespace A326577

/-- `gcd(A004442(2*n)², A176289(2*n))` -/
def P8635188502358856724.Spec : Prop :=
  ∀ n, (P8635188502358856724.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P6691290521235363041

`gcd(A007947(2*n+1), A172282(2*n))`
-/

namespace A326577.P6691290521235363041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (2 * n + 1)) (A172282 (2 * n))

end

end A326577.P6691290521235363041

namespace A326577

/-- `gcd(A007947(2*n+1), A172282(2*n))` -/
def P6691290521235363041.Spec : Prop :=
  ∀ n, (P6691290521235363041.a n : ℤ) = A326577 (n + 1)

end A326577

/-! ## A326577.P16831404260234797465

`A002445(n)/A006955(n)`
-/

namespace A326577.P16831404260234797465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A006955 n : ℚ)

end

end A326577.P16831404260234797465

namespace A326577

/-- `A002445(n)/A006955(n)` -/
def P16831404260234797465.Spec : Prop :=
  ∀ n, P16831404260234797465.a n = (A326577 (n + 1) : ℚ)

end A326577

/-! ## A326577.P17874647377320854578

`gcd(A016756(n), A140814(n))`
-/

namespace A326577.P17874647377320854578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016756 n) (A140814 n)

end

end A326577.P17874647377320854578

namespace A326577

/-- `gcd(A016756(n), A140814(n))` -/
def P17874647377320854578.Spec : Prop :=
  ∀ n, (P17874647377320854578.a n : ℤ) = A326577 (n + 1)

end A326577

/-!
# A326578: a(n) = n^2*denominator(n*Bernoulli(n-1))/denominator(Bernoulli(n-1)) = n*A326478(n).

The programs for A326578, the canonical program `A326578.P13322029343180356668` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326578 has offset 1).

The definition of A326578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326578.P13322029343180356668

`(n+1)*A326478(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A326578

/-- `(n+1)*A326478(n+1)` -/
def P13322029343180356668.Spec : Prop :=
  ∀ n, P13322029343180356668.a n = A326578 (n + 1)

theorem P13322029343180356668.correct : P13322029343180356668.Spec := by
  intro n
  simp only [A326578, Nat.add_sub_cancel]

end A326578

/-! ## A326578.P420867919396439128

`lcm(n+1, A309132(n+1))`
-/

namespace A326578.P420867919396439128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A309132 (n + 1))

end

end A326578.P420867919396439128

namespace A326578

/-- `lcm(n+1, A309132(n+1))` -/
def P420867919396439128.Spec : Prop :=
  ∀ n, (P420867919396439128.a n : ℤ) = A326578 (n + 1)

end A326578

/-! ## A326578.P8760533271338352243

`(n+1)²/A326584(n+1)`
-/

namespace A326578.P8760533271338352243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A326584 (n + 1) : ℚ)

end

end A326578.P8760533271338352243

namespace A326578

/-- `(n+1)²/A326584(n+1)` -/
def P8760533271338352243.Spec : Prop :=
  ∀ n, P8760533271338352243.a n = (A326578 (n + 1) : ℚ)

end A326578

/-! ## A326578.P8809659742220673204

`lcm((n+1)², A027642(n))/A027642(n)`
-/

namespace A326578.P8809659742220673204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A027642 n) : ℚ) / (A027642 n : ℚ)

end

end A326578.P8809659742220673204

namespace A326578

/-- `lcm((n+1)², A027642(n))/A027642(n)` -/
def P8809659742220673204.Spec : Prop :=
  ∀ n, P8809659742220673204.a n = (A326578 (n + 1) : ℚ)

end A326578

/-! ## A326578.P672563292034981457

`(n+1)*A008706(n+1)/A008706(A326584(n+1))`
-/

namespace A326578.P672563292034981457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A008706 (n + 1) : ℚ) / (A008706 (A326584 (n + 1)).toNat : ℚ))

end

end A326578.P672563292034981457

namespace A326578

/-- `(n+1)*A008706(n+1)/A008706(A326584(n+1))` -/
def P672563292034981457.Spec : Prop :=
  ∀ n, P672563292034981457.a n = (A326578 (n + 1) : ℚ)

end A326578

/-! ## A326578.P4532653373925536649

`(n+1)*gcd(n+1, A046094(n+1))`
-/

namespace A326578.P4532653373925536649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) (A046094 (n + 1))

end

end A326578.P4532653373925536649

namespace A326578

/-- `(n+1)*gcd(n+1, A046094(n+1))` -/
def P4532653373925536649.Spec : Prop :=
  ∀ n, (P4532653373925536649.a n : ℤ) = A326578 (n + 1)

end A326578

/-! ## A326578.P10834141022331894668

`A007947(n+1)*A309132(n+1)/A007947(A309132(n+1))`
-/

namespace A326578.P10834141022331894668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A309132 (n + 1) : ℚ) / (A007947 (A309132 (n + 1)).toNat : ℚ)

end

end A326578.P10834141022331894668

namespace A326578

/-- `A007947(n+1)*A309132(n+1)/A007947(A309132(n+1))` -/
def P10834141022331894668.Spec : Prop :=
  ∀ n, P10834141022331894668.a n = (A326578 (n + 1) : ℚ)

end A326578

/-! ## A326578.P9583920417966137825

`(n+1)*gcd(n+1, A050925(n))`
-/

namespace A326578.P9583920417966137825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) (A050925 n)

end

end A326578.P9583920417966137825

namespace A326578

/-- `(n+1)*gcd(n+1, A050925(n))` -/
def P9583920417966137825.Spec : Prop :=
  ∀ n, (P9583920417966137825.a n : ℤ) = A326578 (n + 1)

end A326578

/-!
# A326579: a(n) = n*denominator(n*Bernoulli(n-1)) for n >= 1 and a(0) = 0.

The programs for A326579, the canonical program `A326579.P2532843569177396573` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326579 has offset 0).

The definition of A326579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326579.P14156650607752419279

`n*A050932(xor(1, n))`
-/

namespace A326579.P14156650607752419279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050932 (Nat.xor 1 n)

end

end A326579.P14156650607752419279

namespace A326579

/-- `n*A050932(xor(1, n))` -/
def P14156650607752419279.Spec : Prop :=
  ∀ n, P14156650607752419279.a n = A326579 n

end A326579

/-! ## A326579.P12505035769124019672

`n*A050932(abs(1-n))`
-/

namespace A326579.P12505035769124019672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050932 |1 - (n : ℤ)|.toNat

end

end A326579.P12505035769124019672

namespace A326579

/-- `n*A050932(abs(1-n))` -/
def P12505035769124019672.Spec : Prop :=
  ∀ n, P12505035769124019672.a n = A326579 n

end A326579

/-! ## A326579.P2532843569177396573

`lcm(n, A027642(A004442(n)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A326579

/-- `lcm(n, A027642(A004442(n)))` -/
def P2532843569177396573.Spec : Prop :=
  ∀ n, (P2532843569177396573.a n : ℤ) = A326579 n

theorem P2532843569177396573.correct : P2532843569177396573.Spec := by
  intro n
  simp only [A326579]

end A326579

/-! ## A326579.P17121731057516995594

`lcm(gcd(n, 2*n), A164020(abs(1-n)))`
-/

namespace A326579.P17121731057516995594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd n (2 * n) : ℤ) (A164020 |1 - (n : ℤ)|.toNat)

end

end A326579.P17121731057516995594

namespace A326579

/-- `lcm(gcd(n, 2*n), A164020(abs(1-n)))` -/
def P17121731057516995594.Spec : Prop :=
  ∀ n, (P17121731057516995594.a n : ℤ) = A326579 n

end A326579

/-! ## A326579.P1000958981912761392

`n*A140219(n*and(1, n))`
-/

namespace A326579.P1000958981912761392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140219 (n * Nat.land 1 n)

end

end A326579.P1000958981912761392

namespace A326579

/-- `n*A140219(n*and(1, n))` -/
def P1000958981912761392.Spec : Prop :=
  ∀ n, P1000958981912761392.a n = A326579 n

end A326579

/-! ## A326579.P10366900602024269697

`n*A140219(A124625(n))`
-/

namespace A326579.P10366900602024269697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140219 (A124625 n).toNat

end

end A326579.P10366900602024269697

namespace A326579

/-- `n*A140219(A124625(n))` -/
def P10366900602024269697.Spec : Prop :=
  ∀ n, P10366900602024269697.a n = A326579 n

end A326579

/-! ## A326579.P5560531114948069771

`n*A140219(A338824(n+1))`
-/

namespace A326579.P5560531114948069771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140219 (A338824 (n + 1)).toNat

end

end A326579.P5560531114948069771

namespace A326579

/-- `n*A140219(A338824(n+1))` -/
def P5560531114948069771.Spec : Prop :=
  ∀ n, P5560531114948069771.a n = A326579 n

end A326579

/-! ## A326579.P9882577417755494926

`n*A100616(A093178(n))`
-/

namespace A326579.P9882577417755494926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100616 (A093178 n).toNat

end

end A326579.P9882577417755494926

namespace A326579

/-- `n*A100616(A093178(n))` -/
def P9882577417755494926.Spec : Prop :=
  ∀ n, P9882577417755494926.a n = A326579 n

end A326579

/-! ## A326579.P11947614815841845979

`n*A196839(∑[n]+1)`
-/

namespace A326579.P11947614815841845979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A196839 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A326579.P11947614815841845979

namespace A326579

/-- `n*A196839(∑[n]+1)` -/
def P11947614815841845979.Spec : Prop :=
  ∀ n, P11947614815841845979.a n = A326579 n

end A326579

/-!
# A326580: a(n) = (2*n+1)*denominator((2*n+1)*Bernoulli(2*n)).

The programs for A326580, the canonical program `A326580.P17319892627490507325` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326580 has offset 0).

The definition of A326580 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326579, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326580.P17319892627490507325

`A326579(2*n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A326580

/-- `A326579(2*n+1)` -/
def P17319892627490507325.Spec : Prop :=
  ∀ n, P17319892627490507325.a n = A326580 n

theorem P17319892627490507325.correct : P17319892627490507325.Spec := by
  intro n
  simp only [A326580]

end A326580

/-! ## A326580.P8208044622946226847

`lcm(Δ[n²], A002445(n))`
-/

namespace A326580.P8208044622946226847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A002445 n)

end

end A326580.P8208044622946226847

namespace A326580

/-- `lcm(Δ[n²], A002445(n))` -/
def P8208044622946226847.Spec : Prop :=
  ∀ n, (P8208044622946226847.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P10268134316024761711

`Δ[n²]*A050932(2*n)`
-/

namespace A326580.P10268134316024761711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A050932 (2 * n)

end

end A326580.P10268134316024761711

namespace A326580

/-- `Δ[n²]*A050932(2*n)` -/
def P10268134316024761711.Spec : Prop :=
  ∀ n, P10268134316024761711.a n = A326580 n

end A326580

/-! ## A326580.P2484420878269275191

`lcm(A002445(n), A157142(n))`
-/

namespace A326580.P2484420878269275191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002445 n) (A157142 n)

end

end A326580.P2484420878269275191

namespace A326580

/-- `lcm(A002445(n), A157142(n))` -/
def P2484420878269275191.Spec : Prop :=
  ∀ n, (P2484420878269275191.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P9193647080241040365

`lcm(2*n+1, A106458(2*n))`
-/

namespace A326580.P9193647080241040365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A106458 (2 * n))

end

end A326580.P9193647080241040365

namespace A326580

/-- `lcm(2*n+1, A106458(2*n))` -/
def P9193647080241040365.Spec : Prop :=
  ∀ n, (P9193647080241040365.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P15003382533467660748

`A050932(2*n)*A109613(2*n)`
-/

namespace A326580.P15003382533467660748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (2 * n) * A109613 (2 * n)

end

end A326580.P15003382533467660748

namespace A326580

/-- `A050932(2*n)*A109613(2*n)` -/
def P15003382533467660748.Spec : Prop :=
  ∀ n, P15003382533467660748.a n = A326580 n

end A326580

/-! ## A326580.P16985978846558232341

`lcm(A004442(2*n), A027642(2*n))`
-/

namespace A326580.P16985978846558232341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 (2 * n)) (A027642 (2 * n))

end

end A326580.P16985978846558232341

namespace A326580

/-- `lcm(A004442(2*n), A027642(2*n))` -/
def P16985978846558232341.Spec : Prop :=
  ∀ n, (P16985978846558232341.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P7736896342851024216

`A002445(n)*A326478(2*n+1)`
-/

namespace A326580.P7736896342851024216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n * A326478 (2 * n + 1)

end

end A326580.P7736896342851024216

namespace A326580

/-- `A002445(n)*A326478(2*n+1)` -/
def P7736896342851024216.Spec : Prop :=
  ∀ n, P7736896342851024216.a n = A326580 n

end A326580

/-! ## A326580.P3611832967568668852

`lcm(A079097(2*n), A141056(2*n))`
-/

namespace A326580.P3611832967568668852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079097 (2 * n)) (A141056 (2 * n))

end

end A326580.P3611832967568668852

namespace A326580

/-- `lcm(A079097(2*n), A141056(2*n))` -/
def P3611832967568668852.Spec : Prop :=
  ∀ n, (P3611832967568668852.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P5709356704428021991

`A027642(2*n)*A326478(2*n+1)`
-/

namespace A326580.P5709356704428021991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n) * A326478 (2 * n + 1)

end

end A326580.P5709356704428021991

namespace A326580

/-- `A027642(2*n)*A326478(2*n+1)` -/
def P5709356704428021991.Spec : Prop :=
  ∀ n, P5709356704428021991.a n = A326580 n

end A326580

/-! ## A326580.P7467601552423227974

`Δ[n²]*A006955(n)`
-/

namespace A326580.P7467601552423227974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A006955 n

end

end A326580.P7467601552423227974

namespace A326580

/-- `Δ[n²]*A006955(n)` -/
def P7467601552423227974.Spec : Prop :=
  ∀ n, P7467601552423227974.a n = A326580 n

end A326580

/-! ## A326580.P12834299838681346284

`lcm(1-2*(n+1), A164020(2*n))`
-/

namespace A326580.P12834299838681346284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (2 * (n + 1) : ℤ)) (A164020 (2 * n))

end

end A326580.P12834299838681346284

namespace A326580

/-- `lcm(1-2*(n+1), A164020(2*n))` -/
def P12834299838681346284.Spec : Prop :=
  ∀ n, (P12834299838681346284.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P15111462740654563435

`lcm(A001897(n), A133653(n+1))`
-/

namespace A326580.P15111462740654563435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001897 n) (A133653 (n + 1))

end

end A326580.P15111462740654563435

namespace A326580

/-- `lcm(A001897(n), A133653(n+1))` -/
def P15111462740654563435.Spec : Prop :=
  ∀ n, (P15111462740654563435.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P9420911173166339102

`lcm(A132084(n), A140139(n+1))`
-/

namespace A326580.P9420911173166339102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132084 n) (A140139 (n + 1))

end

end A326580.P9420911173166339102

namespace A326580

/-- `lcm(A132084(n), A140139(n+1))` -/
def P9420911173166339102.Spec : Prop :=
  ∀ n, (P9420911173166339102.a n : ℤ) = A326580 n

end A326580

/-! ## A326580.P8206589640917572526

`(2*n+1)*A140219(2*n)`
-/

namespace A326580.P8206589640917572526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A140219 (2 * n)

end

end A326580.P8206589640917572526

namespace A326580

/-- `(2*n+1)*A140219(2*n)` -/
def P8206589640917572526.Spec : Prop :=
  ∀ n, P8206589640917572526.a n = A326580 n

end A326580

/-! ## A326580.P13159586236197748296

`Δ[n²]*A100616(2*n+1)`
-/

namespace A326580.P13159586236197748296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A100616 (2 * n + 1)

end

end A326580.P13159586236197748296

namespace A326580

/-- `Δ[n²]*A100616(2*n+1)` -/
def P13159586236197748296.Spec : Prop :=
  ∀ n, P13159586236197748296.a n = A326580 n

end A326580

/-! ## A326580.P14523578606228412955

`A100616(2*n+1)*A109613(2*n)`
-/

namespace A326580.P14523578606228412955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (2 * n + 1) * A109613 (2 * n)

end

end A326580.P14523578606228412955

namespace A326580

/-- `A100616(2*n+1)*A109613(2*n)` -/
def P14523578606228412955.Spec : Prop :=
  ∀ n, P14523578606228412955.a n = A326580 n

end A326580

/-! ## A326580.P1289074287277322807

`A100616(2*n+1)*A193356(2*n+1)`
-/

namespace A326580.P1289074287277322807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (2 * n + 1) * A193356 (2 * n + 1)

end

end A326580.P1289074287277322807

namespace A326580

/-- `A100616(2*n+1)*A193356(2*n+1)` -/
def P1289074287277322807.Spec : Prop :=
  ∀ n, P1289074287277322807.a n = A326580 n

end A326580

/-!
# A326581: Odd integers which are prime or square.

The programs for A326581, the canonical program `A326581.P14785060729503683374` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326581 has offset 1).

The definition of A326581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326581.P14785060729503683374

`∪[p?[2*n+1], comp[2*n]²]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326581

/-- `∪[p?[2*n+1], comp[2*n]²]` -/
def P14785060729503683374.Spec : Prop :=
  ∀ n, (P14785060729503683374.a n : ℤ) = A326581 (n + 1)

theorem P14785060729503683374.correct : P14785060729503683374.Spec := by
  intro n
  simp only [A326581, Nat.add_sub_cancel]

end A326581

/-! ## A326581.P14212861453644791813

`∪[(2*n+1)², p?[2*n+1]]`
-/

namespace A326581.P14212861453644791813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A326581.P14212861453644791813

namespace A326581

/-- `∪[(2*n+1)², p?[2*n+1]]` -/
def P14212861453644791813.Spec : Prop :=
  ∀ n, (P14212861453644791813.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P7490886101817055200

`2*A326583(n+1)+1`
-/

namespace A326581.P7490886101817055200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326583 (n + 1) + 1

end

end A326581.P7490886101817055200

namespace A326581

/-- `2*A326583(n+1)+1` -/
def P7490886101817055200.Spec : Prop :=
  ∀ n, P7490886101817055200.a n = A326581 (n + 1)

end A326581

/-! ## A326581.P2141620059831879989

`∪[A065091(n+1), Δ[n²]²]`
-/

namespace A326581.P2141620059831879989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326581.P2141620059831879989

namespace A326581

/-- `∪[A065091(n+1), Δ[n²]²]` -/
def P2141620059831879989.Spec : Prop :=
  ∀ n, (P2141620059831879989.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P14203774904516685552

`∪[A000040(n+2), Δ[n²]²]`
-/

namespace A326581.P14203774904516685552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326581.P14203774904516685552

namespace A326581

/-- `∪[A000040(n+2), Δ[n²]²]` -/
def P14203774904516685552.Spec : Prop :=
  ∀ n, (P14203774904516685552.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P10383933128123655347

`∪[A006005(n+1), A016754(n)]`
-/

namespace A326581.P10383933128123655347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326581.P10383933128123655347

namespace A326581

/-- `∪[A006005(n+1), A016754(n)]` -/
def P10383933128123655347.Spec : Prop :=
  ∀ n, (P10383933128123655347.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P8145177173299759039

`∪[A016754(n), A000040(n+2)]`
-/

namespace A326581.P8145177173299759039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326581.P8145177173299759039

namespace A326581

/-- `∪[A016754(n), A000040(n+2)]` -/
def P8145177173299759039.Spec : Prop :=
  ∀ n, (P8145177173299759039.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P1668004638963925399

`∩[2*n+1, A089237(n+1)]`
-/

namespace A326581.P1668004638963925399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326581.P1668004638963925399

namespace A326581

/-- `∩[2*n+1, A089237(n+1)]` -/
def P1668004638963925399.Spec : Prop :=
  ∀ n, (P1668004638963925399.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P17729632967093746183

`filter[A089237(n+2), A361023(#)]`
-/

namespace A326581.P17729632967093746183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A326581.P17729632967093746183

namespace A326581

/-- `filter[A089237(n+2), A361023(#)]` -/
def P17729632967093746183.Spec : Prop :=
  ∀ n, P17729632967093746183.a n = A326581 (n + 1)

end A326581

/-! ## A326581.P15004586322123860164

`∩[2*n+1, A222030(n)]`
-/

namespace A326581.P15004586322123860164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326581.P15004586322123860164

namespace A326581

/-- `∩[2*n+1, A222030(n)]` -/
def P15004586322123860164.Spec : Prop :=
  ∀ n, (P15004586322123860164.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P14578510566909512920

`filter[A089237(n+2), A039982(#)]`
-/

namespace A326581.P14578510566909512920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A326581.P14578510566909512920

namespace A326581

/-- `filter[A089237(n+2), A039982(#)]` -/
def P14578510566909512920.Spec : Prop :=
  ∀ n, P14578510566909512920.a n = A326581 (n + 1)

end A326581

/-! ## A326581.P4510683950699885693

`∩[A089237(n+1), A060747(n)]`
-/

namespace A326581.P4510683950699885693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326581.P4510683950699885693

namespace A326581

/-- `∩[A089237(n+1), A060747(n)]` -/
def P4510683950699885693.Spec : Prop :=
  ∀ n, (P4510683950699885693.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P5107807267058011745

`filter[A222030(n), A000035(#)]`
-/

namespace A326581.P5107807267058011745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A326581.P5107807267058011745

namespace A326581

/-- `filter[A222030(n), A000035(#)]` -/
def P5107807267058011745.Spec : Prop :=
  ∀ n, P5107807267058011745.a n = A326581 (n + 1)

end A326581

/-! ## A326581.P17697741467954702650

`filter[A089237(n+1), A000035(#)]`
-/

namespace A326581.P17697741467954702650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A326581.P17697741467954702650

namespace A326581

/-- `filter[A089237(n+1), A000035(#)]` -/
def P17697741467954702650.Spec : Prop :=
  ∀ n, P17697741467954702650.a n = A326581 (n + 1)

end A326581

/-! ## A326581.P11381740953566671068

`eq[gcd(2, n), A093178(A032741(n))]`
-/

namespace A326581.P11381740953566671068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326581.P11381740953566671068

namespace A326581

/-- `eq[gcd(2, n), A093178(A032741(n))]` -/
def P11381740953566671068.Spec : Prop :=
  ∀ n, (P11381740953566671068.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P16490836464401412822

`record[gcd(A000265(n+1), A071321(n+1))]`
-/

namespace A326581.P16490836464401412822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A071321 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326581.P16490836464401412822

namespace A326581

/-- `record[gcd(A000265(n+1), A071321(n+1))]` -/
def P16490836464401412822.Spec : Prop :=
  ∀ n, (P16490836464401412822.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P1318654152305648027

`eq[A000035(n), A093178(A032741(n))]`
-/

namespace A326581.P1318654152305648027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326581.P1318654152305648027

namespace A326581

/-- `eq[A000035(n), A093178(A032741(n))]` -/
def P1318654152305648027.Spec : Prop :=
  ∀ n, (P1318654152305648027.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P1807366697253368086

`eq[A062157(n), A093178(A032741(n))]`
-/

namespace A326581.P1807366697253368086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326581.P1807366697253368086

namespace A326581

/-- `eq[A062157(n), A093178(A032741(n))]` -/
def P1807366697253368086.Spec : Prop :=
  ∀ n, (P1807366697253368086.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P11804305509290603704

`eq[A107279(n), A267635(n)]`
-/

namespace A326581.P11804305509290603704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326581.P11804305509290603704

namespace A326581

/-- `eq[A107279(n), A267635(n)]` -/
def P11804305509290603704.Spec : Prop :=
  ∀ n, (P11804305509290603704.a n : ℤ) = A326581 (n + 1)

end A326581

/-! ## A326581.P12988066508447358969

`eq[A214507(n)+1, A107279(n)²]`
-/

namespace A326581.P12988066508447358969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214507 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326581.P12988066508447358969

namespace A326581

/-- `eq[A214507(n)+1, A107279(n)²]` -/
def P12988066508447358969.Spec : Prop :=
  ∀ n, (P12988066508447358969.a n : ℤ) = A326581 (n + 1)

end A326581

/-!
# A326582: A signed variant of A309132.

The programs for A326582, there is no canonical definition to state claims against.
-/

/-! ## A326582.P15622223150309928554

`((n+1)/gcd(n+1, 1-∑[2^n]))^A161593(lcm(3, n+2)/3)`
-/

namespace A326582.P15622223150309928554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ)) ^ (A161593 (SequenceMachineLib.roundAway ((Nat.lcm 3 (n + 2) : ℚ) / 3)).toNat : ℤ)

end

end A326582.P15622223150309928554

/-! ## A326582.P13371104507279474132

`A032742(n+1)^(A187595(n+1)+1)`
-/

namespace A326582.P13371104507279474132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) ^ (A187595 (n + 1) + 1 : ℤ)

end

end A326582.P13371104507279474132

/-! ## A326582.P10554763178641695583

`A032742(n+1)^A175232(2*(n+1))`
-/

namespace A326582.P10554763178641695583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) ^ (A175232 (2 * (n + 1)) : ℤ)

end

end A326582.P10554763178641695583

/-! ## A326582.P15685574078054911404

`A159353(n+1)^A117970(2^n-1)`
-/

namespace A326582.P15685574078054911404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159353 (n + 1) : ℚ) ^ (A117970 (2 ^ n - 1) : ℤ)

end

end A326582.P15685574078054911404

/-! ## A326582.P12539514338516882542

`A032742(n+1)^A010693(or(1, 2^n)-n)`
-/

namespace A326582.P12539514338516882542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) ^ (A010693 (Nat.lor 1 (2 ^ n) - n) : ℤ)

end

end A326582.P12539514338516882542

/-!
# A326583: Integers k >= 0 such that 2*k + 1 is prime or square.

The programs for A326583, the canonical program `A326583.P3832413435923284178` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326583 has offset 1).

The definition of A326583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326583.P3832413435923284178

`floor(A326581(n+1)/2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326583

/-- `floor(A326581(n+1)/2)` -/
def P3832413435923284178.Spec : Prop :=
  ∀ n, P3832413435923284178.a n = A326583 (n + 1)

theorem P3832413435923284178.correct : P3832413435923284178.Spec := by
  intro n
  simp only [A326583, Nat.add_sub_cancel]

end A326583

/-! ## A326583.P679394292146683945

`∪[A005097(n+1), A046092(n)]`
-/

namespace A326583.P679394292146683945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326583.P679394292146683945

namespace A326583

/-- `∪[A005097(n+1), A046092(n)]` -/
def P679394292146683945.Spec : Prop :=
  ∀ n, (P679394292146683945.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P6816054131233734090

`∪[A102781(n+1), A046092(n)]`
-/

namespace A326583.P6816054131233734090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326583.P6816054131233734090

namespace A326583

/-- `∪[A102781(n+1), A046092(n)]` -/
def P6816054131233734090.Spec : Prop :=
  ∀ n, (P6816054131233734090.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P5461084006550121977

`comp[A226567(n+1)]`
-/

namespace A326583.P5461084006550121977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A326583.P5461084006550121977

namespace A326583

/-- `comp[A226567(n+1)]` -/
def P5461084006550121977.Spec : Prop :=
  ∀ n, (P5461084006550121977.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P11264287644126534265

`lt[∏{d}[2*n+1, -(#/2)], n]`
-/

namespace A326583.P11264287644126534265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-((d : ℚ) / 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A326583.P11264287644126534265

namespace A326583

/-- `lt[∏{d}[2*n+1, -(#/2)], n]` -/
def P11264287644126534265.Spec : Prop :=
  ∀ n, (P11264287644126534265.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P4904818431486685036

`lt[-∏{d}[2*n+1, 2-#], 2*n]`
-/

namespace A326583.P4904818431486685036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ d ∈ Nat.divisors (f2 n), (2 - (d : ℤ)))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A326583.P4904818431486685036

namespace A326583

/-- `lt[-∏{d}[2*n+1, 2-#], 2*n]` -/
def P4904818431486685036.Spec : Prop :=
  ∀ n, (P4904818431486685036.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P16182138480565330717

`record[gcd(n, A219695(n+1))]`
-/

namespace A326583.P16182138480565330717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A219695 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326583.P16182138480565330717

namespace A326583

/-- `record[gcd(n, A219695(n+1))]` -/
def P16182138480565330717.Spec : Prop :=
  ∀ n, (P16182138480565330717.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P8640973497829316115

`eq[A204131(n+1), A377864(n+1)]`
-/

namespace A326583.P8640973497829316115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326583.P8640973497829316115

namespace A326583

/-- `eq[A204131(n+1), A377864(n+1)]` -/
def P8640973497829316115.Spec : Prop :=
  ∀ n, (P8640973497829316115.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P5384127698779837857

`lt[A326059(2*n+1), 1]`
-/

namespace A326583.P5384127698779837857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326583.P5384127698779837857

namespace A326583

/-- `lt[A326059(2*n+1), 1]` -/
def P5384127698779837857.Spec : Prop :=
  ∀ n, (P5384127698779837857.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P17907344318104805937

`lt[abs(A291914(2*n+1)), 2]`
-/

namespace A326583.P17907344318104805937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291914 (2 * n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326583.P17907344318104805937

namespace A326583

/-- `lt[abs(A291914(2*n+1)), 2]` -/
def P17907344318104805937.Spec : Prop :=
  ∀ n, (P17907344318104805937.a n : ℤ) = A326583 (n + 1)

end A326583

/-! ## A326583.P7101015733445445302

`A004524(A326581(n+1))`
-/

namespace A326583.P7101015733445445302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A326581 (n + 1)).toNat

end

end A326583.P7101015733445445302

namespace A326583

/-- `A004524(A326581(n+1))` -/
def P7101015733445445302.Spec : Prop :=
  ∀ n, P7101015733445445302.a n = A326583 (n + 1)

end A326583

/-!
# A326584: a(n) = gcd(n*N(n-1), D(n-1)), with N(n)/D(n) = B(n) the n-th Bernoulli number.

The programs for A326584, the canonical program `A326584.P8203747700615488689` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326584 has offset 1).

The definition of A326584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326584.P8203747700615488689

`(n+1)/A326478(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A326584

/-- `(n+1)/A326478(n+1)` -/
def P8203747700615488689.Spec : Prop :=
  ∀ n, P8203747700615488689.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P10237485694935127831

`gcd(n+1, A027642(n))`
-/

namespace A326584.P10237485694935127831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A027642 n)

end

end A326584.P10237485694935127831

namespace A326584

/-- `gcd(n+1, A027642(n))` -/
def P10237485694935127831.Spec : Prop :=
  ∀ n, (P10237485694935127831.a n : ℤ) = A326584 (n + 1)

end A326584

/-! ## A326584.P11445404009696967540

`(n+1)²/A326578(n+1)`
-/

namespace A326584.P11445404009696967540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A326578 (n + 1) : ℚ)

end

end A326584.P11445404009696967540

namespace A326584

/-- `(n+1)²/A326578(n+1)` -/
def P11445404009696967540.Spec : Prop :=
  ∀ n, P11445404009696967540.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P18248055283968426979

`A027642(n)/A050932(n)`
-/

namespace A326584.P18248055283968426979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A050932 n : ℚ)

end

end A326584.P18248055283968426979

namespace A326584

/-- `A027642(n)/A050932(n)` -/
def P18248055283968426979.Spec : Prop :=
  ∀ n, P18248055283968426979.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P8605272050236698212

`gcd(n*A027642(n), A004442(n))`
-/

namespace A326584.P8605272050236698212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A027642 n) (A004442 n)

end

end A326584.P8605272050236698212

namespace A326584

/-- `gcd(n*A027642(n), A004442(n))` -/
def P8605272050236698212.Spec : Prop :=
  ∀ n, (P8605272050236698212.a n : ℤ) = A326584 (n + 1)

end A326584

/-! ## A326584.P14506793827797004060

`A166260(n+1)+A166123(n+1)`
-/

namespace A326584.P14506793827797004060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1) + A166123 (n + 1)

end

end A326584.P14506793827797004060

namespace A326584

/-- `A166260(n+1)+A166123(n+1)` -/
def P14506793827797004060.Spec : Prop :=
  ∀ n, P14506793827797004060.a n = A326584 (n + 1)

end A326584

/-! ## A326584.P13663256970678034559

`A089026(n+1)*A166123(n+1)`
-/

namespace A326584.P13663256970678034559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A166123 (n + 1)

end

end A326584.P13663256970678034559

namespace A326584

/-- `A089026(n+1)*A166123(n+1)` -/
def P13663256970678034559.Spec : Prop :=
  ∀ n, P13663256970678034559.a n = A326584 (n + 1)

end A326584

/-! ## A326584.P8147002627350561265

`(n+1)/A000027(A326578(n+1)/(n+1))`
-/

namespace A326584.P8147002627350561265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000027 (SequenceMachineLib.roundAway ((A326578 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ)

end

end A326584.P8147002627350561265

namespace A326584

/-- `(n+1)/A000027(A326578(n+1)/(n+1))` -/
def P8147002627350561265.Spec : Prop :=
  ∀ n, P8147002627350561265.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P62638601889377493

`A014963(A080305(n+1))*A166123(n+1)`
-/

namespace A326584.P62638601889377493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A080305 (n + 1)).toNat * A166123 (n + 1)

end

end A326584.P62638601889377493

namespace A326584

/-- `A014963(A080305(n+1))*A166123(n+1)` -/
def P62638601889377493.Spec : Prop :=
  ∀ n, P62638601889377493.a n = A326584 (n + 1)

end A326584

/-! ## A326584.P14365861608514828415

`gcd(A007947(n+1), A172282(n))`
-/

namespace A326584.P14365861608514828415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A172282 n)

end

end A326584.P14365861608514828415

namespace A326584

/-- `gcd(A007947(n+1), A172282(n))` -/
def P14365861608514828415.Spec : Prop :=
  ∀ n, (P14365861608514828415.a n : ℤ) = A326584 (n + 1)

end A326584

/-! ## A326584.P11689163914197068944

`A089026(n+1)*A166120(n+1)/A050932(n)`
-/

namespace A326584.P11689163914197068944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (n + 1) * A166120 (n + 1) : ℚ) / (A050932 n : ℚ)

end

end A326584.P11689163914197068944

namespace A326584

/-- `A089026(n+1)*A166120(n+1)/A050932(n)` -/
def P11689163914197068944.Spec : Prop :=
  ∀ n, P11689163914197068944.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P18361615337059038020

`A166123(n+1)/A166120(n+1)*A027642(n)`
-/

namespace A326584.P18361615337059038020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166123 (n + 1) : ℚ) / (A166120 (n + 1) : ℚ) * (A027642 n : ℚ)

end

end A326584.P18361615337059038020

namespace A326584

/-- `A166123(n+1)/A166120(n+1)*A027642(n)` -/
def P18361615337059038020.Spec : Prop :=
  ∀ n, P18361615337059038020.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P6209002444519308661

`gcd((n+1)², A164869(n))`
-/

namespace A326584.P6209002444519308661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A164869 n)

end

end A326584.P6209002444519308661

namespace A326584

/-- `gcd((n+1)², A164869(n))` -/
def P6209002444519308661.Spec : Prop :=
  ∀ n, (P6209002444519308661.a n : ℤ) = A326584 (n + 1)

end A326584

/-! ## A326584.P5842403936786479470

`gcd(n*A164869(n), A129196(n))`
-/

namespace A326584.P5842403936786479470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A164869 n) (A129196 n)

end

end A326584.P5842403936786479470

namespace A326584

/-- `gcd(n*A164869(n), A129196(n))` -/
def P5842403936786479470.Spec : Prop :=
  ∀ n, (P5842403936786479470.a n : ℤ) = A326584 (n + 1)

end A326584

/-! ## A326584.P18153702198920543235

`gcd(A057174(n), A306821(n))`
-/

namespace A326584.P18153702198920543235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057174 n) (A306821 n)

end

end A326584.P18153702198920543235

namespace A326584

/-- `gcd(A057174(n), A306821(n))` -/
def P18153702198920543235.Spec : Prop :=
  ∀ n, (P18153702198920543235.a n : ℤ) = A326584 (n + 1)

end A326584

/-! ## A326584.P15134182637550270908

`A027642(n)/gcd(A027642(n)², A318256(n))`
-/

namespace A326584.P15134182637550270908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (Int.gcd (A027642 n ^ 2) (A318256 n) : ℚ)

end

end A326584.P15134182637550270908

namespace A326584

/-- `A027642(n)/gcd(A027642(n)², A318256(n))` -/
def P15134182637550270908.Spec : Prop :=
  ∀ n, P15134182637550270908.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P7577760369443714428

`gcd(A027642(n), A135854(n))`
-/

namespace A326584.P7577760369443714428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A135854 n)

end

end A326584.P7577760369443714428

namespace A326584

/-- `gcd(A027642(n), A135854(n))` -/
def P7577760369443714428.Spec : Prop :=
  ∀ n, (P7577760369443714428.a n : ℤ) = A326584 (n + 1)

end A326584

/-! ## A326584.P8695518648212762690

`A007913(A326578(n+1))`
-/

namespace A326584.P8695518648212762690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326578 (n + 1)).toNat

end

end A326584.P8695518648212762690

namespace A326584

/-- `A007913(A326578(n+1))` -/
def P8695518648212762690.Spec : Prop :=
  ∀ n, P8695518648212762690.a n = A326584 (n + 1)

end A326584

/-! ## A326584.P11821455213800292392

`ratio[A034386(n)]*A166123(n+1)`
-/

namespace A326584.P11821455213800292392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A166123 (n + 1) : ℚ)

end

end A326584.P11821455213800292392

namespace A326584

/-- `ratio[A034386(n)]*A166123(n+1)` -/
def P11821455213800292392.Spec : Prop :=
  ∀ n, P11821455213800292392.a n = (A326584 (n + 1) : ℚ)

end A326584

/-! ## A326584.P3558079687405169655

`(n+1)/A000188(A309132(n+1))`
-/

namespace A326584.P3558079687405169655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (A309132 (n + 1)).toNat : ℚ)

end

end A326584.P3558079687405169655

namespace A326584

/-- `(n+1)/A000188(A309132(n+1))` -/
def P3558079687405169655.Spec : Prop :=
  ∀ n, P3558079687405169655.a n = (A326584 (n + 1) : ℚ)

end A326584

/-!
# A326586: Odd numbers which do not satisfy Korselt's criterion, complement of A324050.

The programs for A326586, there is no canonical definition to state claims against.
-/

/-! ## A326586.P3412929877811324686

`lt[A327420(n)+1, n]`
-/

namespace A326586.P3412929877811324686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326586.P3412929877811324686

/-! ## A326586.P1543708038959629672

`A014076(n+2)%430`
-/

namespace A326586.P1543708038959629672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014076 (n + 2)) 430

end

end A326586.P1543708038959629672

/-! ## A326586.P13024288482672819477

`A071904(n+1)%473`
-/

namespace A326586.P13024288482672819477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071904 (n + 1)) 473

end

end A326586.P13024288482672819477

/-! ## A326586.P18035377102266712752

`lt[A324103(n+1), 0]+1`
-/

namespace A326586.P18035377102266712752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324103 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A326586.P18035377102266712752

/-! ## A326586.P16485696714476817691

`lt[A324397(n+1), 0]+1`
-/

namespace A326586.P16485696714476817691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A326586.P16485696714476817691

/-! ## A326586.P8442683093081212188

`lt[A062771(n+1), n]+1`
-/

namespace A326586.P8442683093081212188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062771 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A326586.P8442683093081212188

/-! ## A326586.P8057269787439267092

`lt[A327119(n+1)+1, n]`
-/

namespace A326586.P8057269787439267092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327119 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326586.P8057269787439267092

/-! ## A326586.P1884957286361751047

`lt[1, A276976(n^(n%2))]`
-/

namespace A326586.P1884957286361751047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A326586.P1884957286361751047

/-! ## A326586.P522606942297583085

`lt[gcd(2, n)², A001222(or(1, n))]`
-/

namespace A326586.P522606942297583085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A326586.P522606942297583085

/-! ## A326586.P12039662113804557530

`∩[2*n+1, A125493(n+1)]`
-/

namespace A326586.P12039662113804557530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326586.P12039662113804557530

/-!
# A326588: Sum of all the parts in the partitions of n into 10 parts.

The programs for A326588, there is no canonical definition to state claims against.
-/

/-! ## A326588.P10483619318461785998

`n*A026816(n)`
-/

namespace A326588.P10483619318461785998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026816 n

end

end A326588.P10483619318461785998

/-! ## A326588.P7094915803018998730

`A326589(n)+A326590(n)+A326591(n)+A326592(n)+A326593(n)+A326594(n)+A326595(n)+A326596(n)+A326597(n)+A326598(n)`
-/

namespace A326588.P7094915803018998730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326589 n + A326590 n + A326591 n + A326592 n + A326593 n + A326594 n + A326595 n + A326596 n + A326597 n + A326598 n

end

end A326588.P7094915803018998730

/-! ## A326588.P18045057969936044470

`n*(A008639(n)-A008638(n))`
-/

namespace A326588.P18045057969936044470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008639 n - A008638 n)

end

end A326588.P18045057969936044470

/-! ## A326588.P17065111595363181520

`n*(A266778(n)-A060029(n))`
-/

namespace A326588.P17065111595363181520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A266778 n - A060029 n)

end

end A326588.P17065111595363181520

/-! ## A326588.P7048479576982827434

`n*(A008639(n)-∑[A266777(n)])`
-/

namespace A326588.P7048479576982827434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008639 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326588.P7048479576982827434

/-! ## A326588.P6301137956433086371

`n*(∑[A266778(n)]-A008638(n))`
-/

namespace A326588.P6301137956433086371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A008638 n)

end

end A326588.P6301137956433086371

/-! ## A326588.P3150364541292272172

`n*∑[A266778(n)-A266777(n)]`
-/

namespace A326588.P3150364541292272172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n - A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326588.P3150364541292272172

/-! ## A326588.P15427190843548953795

`A069229(n)%(A000051(n)-A026816(n))`
-/

namespace A326588.P15427190843548953795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069229 n) (A000051 n - A026816 n)

end

end A326588.P15427190843548953795

/-! ## A326588.P3527054852613511612

`A309664(n)+A309661(n)`
-/

namespace A326588.P3527054852613511612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309664 n + A309661 n

end

end A326588.P3527054852613511612

/-!
# A326589: Sum of the smallest parts of the partitions of n into 10 parts.

The programs for A326589, there is no canonical definition to state claims against.
-/

/-! ## A326589.P7326820327273845525

`A326588(n)-A326590(n)-A326591(n)-A326592(n)-A326593(n)-A326594(n)-A326595(n)-A326596(n)-A326597(n)-A326598(n)`
-/

namespace A326589.P7326820327273845525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326590 n - A326591 n - A326592 n - A326593 n - A326594 n - A326595 n - A326596 n - A326597 n - A326598 n

end

end A326589.P7326820327273845525

/-! ## A326589.P17697191020254392715

`A123068(A026816(n)+1)`
-/

namespace A326589.P17697191020254392715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A026816 n + 1).toNat

end

end A326589.P17697191020254392715

/-! ## A326589.P1130537634428042504

`A185284(A094210(n+1))+A026816(n)`
-/

namespace A326589.P1130537634428042504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A094210 (n + 1)).toNat + A026816 n

end

end A326589.P1130537634428042504

/-! ## A326589.P9416862099619856519

`A123068(A008639(n)+1-A008638(n))`
-/

namespace A326589.P9416862099619856519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A008639 n + (1 - A008638 n)).toNat

end

end A326589.P9416862099619856519

/-! ## A326589.P1202999061798830487

`A123068(A266778(n)-A060029(n)+1)`
-/

namespace A326589.P1202999061798830487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A266778 n - A060029 n + 1).toNat

end

end A326589.P1202999061798830487

/-!
# A326590: Sum of the ninth largest parts of the partitions of n into 10 parts.

The programs for A326590, there is no canonical definition to state claims against.
-/

/-! ## A326590.P16407169507670109020

`A326588(n)-A326589(n)-A326591(n)-A326592(n)-A326593(n)-A326594(n)-A326595(n)-A326596(n)-A326597(n)-A326598(n)`
-/

namespace A326590.P16407169507670109020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326591 n - A326592 n - A326593 n - A326594 n - A326595 n - A326596 n - A326597 n - A326598 n

end

end A326590.P16407169507670109020

/-! ## A326590.P8527012993397988882

`A000196(A319475(n)*A326592(n))`
-/

namespace A326590.P8527012993397988882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A319475 n * A326592 n).toNat

end

end A326590.P8527012993397988882

/-! ## A326590.P4587837682043790758

`A326598(A110654(n))+A123068(A026816(n)+1)`
-/

namespace A326590.P4587837682043790758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326598 (A110654 n).toNat + A123068 (A026816 n + 1).toNat

end

end A326590.P4587837682043790758

/-! ## A326590.P2893197922743149033

`A347520(A326589(n))-A054900(A218027(n))`
-/

namespace A326590.P2893197922743149033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A326589 n).toNat - A054900 (A218027 n).toNat

end

end A326590.P2893197922743149033

/-! ## A326590.P17090641963481145857

`∑{e}[A003945(n), A024793(#)]`
-/

namespace A326590.P17090641963481145857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A024793 (Nat.factorization (f1 n).natAbs p)

end

end A326590.P17090641963481145857

/-!
# A326591: Sum of the eighth largest parts of the partitions of n into 10 parts.

The programs for A326591, there is no canonical definition to state claims against.
-/

/-! ## A326591.P17990980194192462597

`A326588(n)-A326589(n)-A326590(n)-A326592(n)-A326593(n)-A326594(n)-A326595(n)-A326596(n)-A326597(n)-A326598(n)`
-/

namespace A326591.P17990980194192462597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326592 n - A326593 n - A326594 n - A326595 n - A326596 n - A326597 n - A326598 n

end

end A326591.P17990980194192462597

/-! ## A326591.P3091502359769096483

`A347520(A326589(n))`
-/

namespace A326591.P3091502359769096483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A326589 n).toNat

end

end A326591.P3091502359769096483

/-! ## A326591.P38688990828015155

`A004526(A326589(n)+floor(A239496(3*n+2)/40))`
-/

namespace A326591.P38688990828015155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A326589 n + ⌊(A239496 (3 * n + 2) : ℚ) / 40⌋).toNat

end

end A326591.P38688990828015155

/-! ## A326591.P18332196630638110638

`∑{e}[A003945(n), A326466(#)]`
-/

namespace A326591.P18332196630638110638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326466 (Nat.factorization (f1 n).natAbs p)

end

end A326591.P18332196630638110638

/-! ## A326591.P8209095092165776065

`∑{e}[A042950(n), A326466(#)]`
-/

namespace A326591.P8209095092165776065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326466 (Nat.factorization (f1 n).natAbs p)

end

end A326591.P8209095092165776065

/-!
# A326592: Sum of the seventh largest parts in the partitions of n into 10 parts.

The programs for A326592, there is no canonical definition to state claims against.
-/

/-! ## A326592.P17235732093808926360

`A326588(n)-A326589(n)-A326590(n)-A326591(n)-A326593(n)-A326594(n)-A326595(n)-A326596(n)-A326597(n)-A326598(n)`
-/

namespace A326592.P17235732093808926360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326591 n - A326593 n - A326594 n - A326595 n - A326596 n - A326597 n - A326598 n

end

end A326592.P17235732093808926360

/-! ## A326592.P16435641126924088358

`floor(A239496(3*n+2)/40)`
-/

namespace A326592.P16435641126924088358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239496 (3 * n + 2) : ℚ) / 40⌋

end

end A326592.P16435641126924088358

/-! ## A326592.P7086133373442059797

`floor(A319646(n)/A017305(n))`
-/

namespace A326592.P7086133373442059797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319646 n : ℚ) / (A017305 n : ℚ)⌋

end

end A326592.P7086133373442059797

/-! ## A326592.P3286366873271089957

`floor(A319646(n)/A250120(2*(n+1)))`
-/

namespace A326592.P3286366873271089957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319646 n : ℚ) / (A250120 (2 * (n + 1)) : ℚ)⌋

end

end A326592.P3286366873271089957

/-! ## A326592.P1166119212928748354

`A347520(A326589(n))+A064459(A319475(n))`
-/

namespace A326592.P1166119212928748354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A326589 n).toNat + A064459 (A319475 n).toNat

end

end A326592.P1166119212928748354

/-!
# A326593: Sum of the sixth largest parts of the partitions of n into 10 parts.

The programs for A326593, there is no canonical definition to state claims against.
-/

/-! ## A326593.P4388772880221300354

`A326588(n)-A326589(n)-A326590(n)-A326591(n)-A326592(n)-A326594(n)-A326595(n)-A326596(n)-A326597(n)-A326598(n)`
-/

namespace A326593.P4388772880221300354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326591 n - A326592 n - A326594 n - A326595 n - A326596 n - A326597 n - A326598 n

end

end A326593.P4388772880221300354

/-! ## A326593.P10390390380129093406

`A007095(A326592(n)%A124534(n))`
-/

namespace A326593.P10390390380129093406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A326592 n) (A124534 n)).toNat

end

end A326593.P10390390380129093406

/-! ## A326593.P15799218521683736490

`A007095(A326592(n))%A238476(2*n+3)`
-/

namespace A326593.P15799218521683736490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A326592 n).toNat) (A238476 (2 * n + 3))

end

end A326593.P15799218521683736490

/-! ## A326593.P2670634439614928476

`A347520(A326592(n)+A054900(n))`
-/

namespace A326593.P2670634439614928476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A326592 n + A054900 n).toNat

end

end A326593.P2670634439614928476

/-! ## A326593.P4444612629114928150

`A007095(floor(A319646(n)/A017305(n)))`
-/

namespace A326593.P4444612629114928150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ⌊(A319646 n : ℚ) / (A017305 n : ℚ)⌋.toNat

end

end A326593.P4444612629114928150

/-!
# A326594: Sum of the fifth largest parts of the partitions of n into 10 parts.

The programs for A326594, there is no canonical definition to state claims against.
-/

/-! ## A326594.P4624465672305955214

`A326588(n)-A326589(n)-A326590(n)-A326591(n)-A326592(n)-A326593(n)-A326595(n)-A326596(n)-A326597(n)-A326598(n)`
-/

namespace A326594.P4624465672305955214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326591 n - A326592 n - A326593 n - A326595 n - A326596 n - A326597 n - A326598 n

end

end A326594.P4624465672305955214

/-!
# A326595: Sum of the fourth largest parts of the partitions of n into 10 parts.

The programs for A326595, there is no canonical definition to state claims against.
-/

/-! ## A326595.P3711699399357627283

`A326588(n)-A326589(n)-A326590(n)-A326591(n)-A326592(n)-A326593(n)-A326594(n)-A326596(n)-A326597(n)-A326598(n)`
-/

namespace A326595.P3711699399357627283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326591 n - A326592 n - A326593 n - A326594 n - A326596 n - A326597 n - A326598 n

end

end A326595.P3711699399357627283

/-! ## A326595.P9215498745642761631

`A000196(A026815(∑[A029228(n)]))`
-/

namespace A326595.P9215498745642761631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A026815 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A326595.P9215498745642761631

/-!
# A326596: Sum of the third largest parts of the partitions of n into 10 parts.

The programs for A326596, there is no canonical definition to state claims against.
-/

/-! ## A326596.P12354963694126450990

`A326588(n)-A326589(n)-A326590(n)-A326591(n)-A326592(n)-A326593(n)-A326594(n)-A326595(n)-A326597(n)-A326598(n)`
-/

namespace A326596.P12354963694126450990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326591 n - A326592 n - A326593 n - A326594 n - A326595 n - A326597 n - A326598 n

end

end A326596.P12354963694126450990

/-! ## A326596.P4453817171741540143

`∑{e}[A003945(n), A326471(#)]`
-/

namespace A326596.P4453817171741540143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326471 (Nat.factorization (f1 n).natAbs p)

end

end A326596.P4453817171741540143

/-! ## A326596.P1463770746675226776

`∑{e}[A042950(n), A326471(#)]`
-/

namespace A326596.P1463770746675226776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326471 (Nat.factorization (f1 n).natAbs p)

end

end A326596.P1463770746675226776

/-! ## A326596.P4133064382982927731

`∑{e}[A170060(n), A326471(#)]`
-/

namespace A326596.P4133064382982927731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326471 (Nat.factorization (f1 n).natAbs p)

end

end A326596.P4133064382982927731

/-!
# A326597: Sum of the second largest parts of the partitions of n into 10 parts.

The programs for A326597, there is no canonical definition to state claims against.
-/

/-! ## A326597.P11956813155368145505

`A326588(n)-A326589(n)-A326590(n)-A326591(n)-A326592(n)-A326593(n)-A326594(n)-A326595(n)-A326596(n)-A326598(n)`
-/

namespace A326597.P11956813155368145505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326591 n - A326592 n - A326593 n - A326594 n - A326595 n - A326596 n - A326598 n

end

end A326597.P11956813155368145505

/-! ## A326597.P16042482607277827252

`A026816(n)+A326598(n)-∑[A026816(n)]`
-/

namespace A326597.P16042482607277827252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 n + (A326598 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326597.P16042482607277827252

/-! ## A326597.P7364943756909032060

`A326472((n-1)^floor(n/10))`
-/

namespace A326597.P7364943756909032060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326472 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (⌊(n : ℚ) / 10⌋ : ℤ))).toNat

end

end A326597.P7364943756909032060

/-! ## A326597.P15403613056395797640

`∑{e}[A003945(n), A326472(#)]`
-/

namespace A326597.P15403613056395797640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326472 (Nat.factorization (f1 n).natAbs p)

end

end A326597.P15403613056395797640

/-! ## A326597.P385354223524327230

`∑{e}[A042950(n), A326472(#)]`
-/

namespace A326597.P385354223524327230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326472 (Nat.factorization (f1 n).natAbs p)

end

end A326597.P385354223524327230

/-!
# A326598: Sum of the largest parts of the partitions of n into 10 parts.

The programs for A326598, there is no canonical definition to state claims against.
-/

/-! ## A326598.P849305732000054073

`A326588(n)-A326589(n)-A326590(n)-A326591(n)-A326592(n)-A326593(n)-A326594(n)-A326595(n)-A326596(n)-A326597(n)`
-/

namespace A326598.P849305732000054073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 n - A326589 n - A326590 n - A326591 n - A326592 n - A326593 n - A326594 n - A326595 n - A326596 n - A326597 n

end

end A326598.P849305732000054073

/-! ## A326598.P9440142025007210932

`∑[A026816(n)]+A326597(n)-A026816(n)`
-/

namespace A326598.P9440142025007210932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A326597 n - A026816 n)

end

end A326598.P9440142025007210932

/-! ## A326598.P3009728076412363663

`∑{e}[A003945(n), A326473(#)]`
-/

namespace A326598.P3009728076412363663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326473 (Nat.factorization (f1 n).natAbs p)

end

end A326598.P3009728076412363663

/-! ## A326598.P4396140493922119827

`∑{e}[A042950(n), A326473(#)]`
-/

namespace A326598.P4396140493922119827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326473 (Nat.factorization (f1 n).natAbs p)

end

end A326598.P4396140493922119827

/-! ## A326598.P1093250495196407824

`∑{e}[A170060(n), A326473(#)]`
-/

namespace A326598.P1093250495196407824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A326473 (Nat.factorization (f1 n).natAbs p)

end

end A326598.P1093250495196407824

/-!
# A326599: G.f.: Sum_{n>=0} x^n * (1 + x^n)^n / (1 - x*(1 + x^n))^(n+1).

The programs for A326599, there is no canonical definition to state claims against.
-/

/-! ## A326599.P12266463448337253591

`A157271(A156616(n+1)-A026814(2*n+1))`
-/

namespace A326599.P12266463448337253591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A156616 (n + 1) - A026814 (2 * n + 1)).toNat

end

end A326599.P12266463448337253591

/-! ## A326599.P3189883717312386675

`∑[A116939(∑[A001655(n)])]`
-/

namespace A326599.P3189883717312386675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326599.P3189883717312386675

/-! ## A326599.P10105162986461064411

`∑[∑[A239235(A002478(n))]]`
-/

namespace A326599.P10105162986461064411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (A002478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326599.P10105162986461064411

