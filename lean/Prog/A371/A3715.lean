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
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A371500: Decimal expansion of Sum_{k>=0} (-1)^k / (k^2 - k)!.

The programs for A371500, there is no canonical definition to state claims against.
-/

/-! ## A371500.P5461501128688823321

`9-A370012(n)`
-/

namespace A371500.P5461501128688823321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A370012 n

end

end A371500.P5461501128688823321

/-!
# A371502: Decimal expansion of Sum_{k>=0} (-1)^k / (k^2 + k + 1)!.

The programs for A371502, there is no canonical definition to state claims against.
-/

/-! ## A371502.P1741454604162275371

`9-A371504(n)`
-/

namespace A371502.P1741454604162275371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A371504 n

end

end A371502.P1741454604162275371

/-!
# A371504: Decimal expansion of Sum_{k>=0} (-1)^k / (k^2 - k + 1)!.

The programs for A371504, there is no canonical definition to state claims against.
-/

/-! ## A371504.P13283825452969736915

`9-A371502(n)`
-/

namespace A371504.P13283825452969736915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A371502 n

end

end A371504.P13283825452969736915

/-!
# A371509: a(n) is the smallest prime that becomes composite if any single digit of its base-(2n+1) expansion is changed to a different digit (but not to zero).

The programs for A371509, there is no canonical definition to state claims against.
-/

/-! ## A371509.P6429431940021497859

`A323745(2*(n+1)+1)`
-/

namespace A371509.P6429431940021497859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323745 (2 * (n + 1) + 1)

end

end A371509.P6429431940021497859

/-!
# A371515: Centered truncated octahedral numbers: the number of integer triples (x,y,z) such that max(|x|,|y|,|z|) <= 2n and |x|+|y|+|z| <= 3n.

The programs for A371515, the canonical program `A371515.P14566401465883106100` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371515 has offset 0).

The definition of A371515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371515.P14566401465883106100

`n*(n*(32*n+18)+6)+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A371515

/-- `n*(n*(32*n+18)+6)+1` -/
def P14566401465883106100.Spec : Prop :=
  ∀ n, (P14566401465883106100.a n : ℤ) = A371515 n

theorem P14566401465883106100.correct : P14566401465883106100.Spec := by
  intro n
  simp only [A371515]

end A371515

/-! ## A371515.P8164026084165277301

`A016813((2*n+1)^3-A220083(n))`
-/

namespace A371515.P8164026084165277301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (((2 * n + 1) ^ 3 : ℤ) - A220083 n).toNat

end

end A371515.P8164026084165277301

namespace A371515

/-- `A016813((2*n+1)^3-A220083(n))` -/
def P8164026084165277301.Spec : Prop :=
  ∀ n, P8164026084165277301.a n = A371515 n

end A371515

/-! ## A371515.P7814222413260890426

`A005408(A033431(2*n)+A002378(3*n))`
-/

namespace A371515.P7814222413260890426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A033431 (2 * n) + A002378 (3 * n)).toNat

end

end A371515.P7814222413260890426

namespace A371515

/-- `A005408(A033431(2*n)+A002378(3*n))` -/
def P7814222413260890426.Spec : Prop :=
  ∀ n, P7814222413260890426.a n = A371515 n

end A371515

/-!
# A371516: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1-x))^3.

The programs for A371516, there is no canonical definition to state claims against.
-/

/-! ## A371516.P6230533101897372256

`A000007(n)+Δ[A307678(n)]`
-/

namespace A371516.P6230533101897372256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A371516.P6230533101897372256

/-! ## A371516.P1704743363050092726

`Δ[A307678(n)+A057427(n)]`
-/

namespace A371516.P1704743363050092726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307678 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371516.P1704743363050092726

/-! ## A371516.P3889590066287053597

`Δ[A307678(n)-A057428(n)]`
-/

namespace A371516.P3889590066287053597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307678 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371516.P3889590066287053597

/-! ## A371516.P9893891116695562461

`Δ[A307678(n)%A020555(n)]`
-/

namespace A371516.P9893891116695562461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307678 n) (A020555 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371516.P9893891116695562461

/-!
# A371517: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1-x))^4.

The programs for A371517, there is no canonical definition to state claims against.
-/

/-! ## A371517.P14177925640413317660

`A000007(n)+Δ[A349331(n)]`
-/

namespace A371517.P14177925640413317660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A371517.P14177925640413317660

/-! ## A371517.P14262233798936698760

`Δ[A349331(n)+A057427(n)]`
-/

namespace A371517.P14262233798936698760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349331 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371517.P14262233798936698760

/-! ## A371517.P7713465059243173893

`Δ[A349331(n)-A054977(n)]`
-/

namespace A371517.P7713465059243173893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349331 n - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371517.P7713465059243173893

/-! ## A371517.P1122506674085022879

`A010051(3*(n+1))+Δ[A349331(n)]`
-/

namespace A371517.P1122506674085022879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A371517.P1122506674085022879

/-! ## A371517.P6212103935378487337

`Δ[A349331(n)%A060531(n)]`
-/

namespace A371517.P6212103935378487337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349331 n) (A060531 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371517.P6212103935378487337

/-!
# A371518: G.f. A(x) satisfies A(x) = (1 + x*A(x)^2 / (1-x))^2.

The programs for A371518, there is no canonical definition to state claims against.
-/

/-! ## A371518.P10720062264074645244

`A217438(∑[A378686(n)])`
-/

namespace A371518.P10720062264074645244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371518.P10720062264074645244

/-!
# A371519: G.f. A(x) satisfies A(x) = 1 / (1 - x*A(x) / (1-x))^5.

The programs for A371519, there is no canonical definition to state claims against.
-/

/-! ## A371519.P13939687482994031900

`A047309(A002866(n)*A312680(n))`
-/

namespace A371519.P13939687482994031900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (A002866 n * A312680 n).toNat

end

end A371519.P13939687482994031900

/-!
# A371520: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1-x))^5.

The programs for A371520, there is no canonical definition to state claims against.
-/

/-! ## A371520.P3805587123930254433

`A000007(n)+Δ[A349332(n)]`
-/

namespace A371520.P3805587123930254433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A371520.P3805587123930254433

/-! ## A371520.P4956868011462260659

`Δ[A349332(n)+A057427(n)]`
-/

namespace A371520.P4956868011462260659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349332 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371520.P4956868011462260659

/-! ## A371520.P10434902782207645019

`Δ[A349332(n)+A178334(n)]`
-/

namespace A371520.P10434902782207645019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349332 n + A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371520.P10434902782207645019

/-! ## A371520.P1435029993929542536

`Δ[A349332(n)%A346650(n)]`
-/

namespace A371520.P1435029993929542536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349332 n) (A346650 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371520.P1435029993929542536

/-!
# A371521: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1-x))^6.

The programs for A371521, there is no canonical definition to state claims against.
-/

/-! ## A371521.P2569314332244811175

`A000007(n)+Δ[A349333(n)]`
-/

namespace A371521.P2569314332244811175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A371521.P2569314332244811175

/-! ## A371521.P6850687055593989851

`Δ[A349333(n)+A057427(n)]`
-/

namespace A371521.P6850687055593989851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349333 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371521.P6850687055593989851

/-! ## A371521.P12386373664328632125

`Δ[A349333(n)-A057428(n)]`
-/

namespace A371521.P12386373664328632125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349333 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371521.P12386373664328632125

/-! ## A371521.P9666090302923528461

`Δ[A349333(n)%A120588(2*n+1)]`
-/

namespace A371521.P9666090302923528461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349333 n) (A120588 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371521.P9666090302923528461

/-! ## A371521.P5342239630316507049

`Δ[A349333(n)%A371522(n)]`
-/

namespace A371521.P5342239630316507049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349333 n) (A371522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371521.P5342239630316507049

/-!
# A371522: G.f. A(x) satisfies A(x) = (1 + x*A(x)^2 / (1-x))^3.

The programs for A371522, there is no canonical definition to state claims against.
-/

/-! ## A371522.P10135316141438284114

`A052382(A291819(n+1)-A056239(n+1))`
-/

namespace A371522.P10135316141438284114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A291819 (n + 1) - A056239 (n + 1)).toNat

end

end A371522.P10135316141438284114

/-!
# A371523: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3 / (1-x))^2.

The programs for A371523, there is no canonical definition to state claims against.
-/

/-! ## A371523.P1068656936621137179

`A042965(A343261(n))-n`
-/

namespace A371523.P1068656936621137179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A343261 n).toNat - (n : ℤ)

end

end A371523.P1068656936621137179

/-!
# A371524: E.g.f. A(x) satisfies A(x) = exp( 2 * x * (1 + A(x)^(1/4)) ).

The programs for A371524, there is no canonical definition to state claims against.
-/

/-! ## A371524.P13549614048356705421

`A218302(n)/A011782(n)`
-/

namespace A371524.P13549614048356705421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218302 n : ℚ) / (A011782 n : ℚ)

end

end A371524.P13549614048356705421

/-! ## A371524.P10671649914758364769

`A218302(n)/A000010(2^n)`
-/

namespace A371524.P10671649914758364769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218302 n : ℚ) / (A000010 (2 ^ n) : ℚ)

end

end A371524.P10671649914758364769

/-! ## A371524.P155958812300315922

`A218302(n)/sqrt(A127473(2^n))`
-/

namespace A371524.P155958812300315922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218302 n : ℝ) / Real.sqrt (A127473 (2 ^ n) : ℝ)

end

end A371524.P155958812300315922

/-! ## A371524.P5264730861850774409

`A218302(n)/A057979(2^n+1)`
-/

namespace A371524.P5264730861850774409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218302 n : ℚ) / (A057979 (2 ^ n + 1) : ℚ)

end

end A371524.P5264730861850774409

/-! ## A371524.P15151485409348742460

`A218302(n)/A004001(A000079(n))`
-/

namespace A371524.P15151485409348742460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218302 n : ℚ) / (A004001 (A000079 n).toNat : ℚ)

end

end A371524.P15151485409348742460

/-!
# A371531: a(n) is the multiplicative order of A053669(n) modulo n.

The programs for A371531, there is no canonical definition to state claims against.
-/

/-! ## A371531.P421743303494756216

`A216327(A225531(n))`
-/

namespace A371531.P421743303494756216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216327 (A225531 n).toNat

end

end A371531.P421743303494756216

/-! ## A371531.P2955432999568182272

`A216327(A005728(n)+1)`
-/

namespace A371531.P2955432999568182272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216327 (A005728 n + 1).toNat

end

end A371531.P2955432999568182272

/-! ## A371531.P12721345456307748846

`A002322(n+1)/A347437(A320056(3*n+4))`
-/

namespace A371531.P12721345456307748846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A347437 (A320056 (3 * n + 4)).toNat : ℚ)

end

end A371531.P12721345456307748846

/-! ## A371531.P2013281375932504716

`A002322(n+1)/A033630(A000055(n))`
-/

namespace A371531.P2013281375932504716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A033630 (A000055 n).toNat : ℚ)

end

end A371531.P2013281375932504716

/-! ## A371531.P11016179881615938771

`A002322(n+1)/A003989(A225118(n))`
-/

namespace A371531.P11016179881615938771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A003989 (A225118 n).toNat : ℚ)

end

end A371531.P11016179881615938771

/-!
# A371532: Centered cuboctahedral numbers: the number of integer triples (x,y,z) such that max(|x|,|y|,|z|) <= n and |x|+|y|+|z| <= 2n.

The programs for A371532, the canonical program `A371532.P1408315877249718398` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371532 has offset 0).

The definition of A371532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371532.P17408046310215500097

`(20*n^3+24*n²+10*n+3)/3`
-/

namespace A371532.P17408046310215500097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 * n ^ 3 + 24 * n ^ 2 + 10 * n + 3 : ℚ) / 3

end

end A371532.P17408046310215500097

namespace A371532

/-- `(20*n^3+24*n²+10*n+3)/3` -/
def P17408046310215500097.Spec : Prop :=
  ∀ n, P17408046310215500097.a n = (A371532 n : ℚ)

theorem P17408046310215500097.correct : P17408046310215500097.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A371532, Nat.add_sub_cancel, A371532.P17408046310215500097.a, A371532.P1408315877249718398.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A371532, Nat.add_sub_cancel, A371532.P17408046310215500097.a, A371532.P1408315877249718398.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A371532

/-! ## A371532.P1408315877249718398

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=19, a(2)=93, a(3)=263`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A371532

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1408315877249718398.Spec : Prop :=
  ∀ n, P1408315877249718398.a n = A371532 n

theorem P1408315877249718398.correct : P1408315877249718398.Spec := by
  intro n
  simp only [A371532]

end A371532

/-! ## A371532.P13020027925005115854

`∑[A022145(n)]`
-/

namespace A371532.P13020027925005115854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371532.P13020027925005115854

namespace A371532

/-- `∑[A022145(n)]` -/
def P13020027925005115854.Spec : Prop :=
  ∀ n, P13020027925005115854.a n = A371532 n

end A371532

/-! ## A371532.P8834159189118215986

`∑[A010010(n)-4*n]`
-/

namespace A371532.P8834159189118215986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371532.P8834159189118215986

namespace A371532

/-- `∑[A010010(n)-4*n]` -/
def P8834159189118215986.Spec : Prop :=
  ∀ n, P8834159189118215986.a n = A371532 n

end A371532

/-! ## A371532.P9165760691957328612

`A139757(n)+A063523(n)`
-/

namespace A371532.P9165760691957328612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + A063523 n

end

end A371532.P9165760691957328612

namespace A371532

/-- `A139757(n)+A063523(n)` -/
def P9165760691957328612.Spec : Prop :=
  ∀ n, P9165760691957328612.a n = A371532 n

end A371532

/-! ## A371532.P7267492771907969818

`A300758(n)+A168574(n)`
-/

namespace A371532.P7267492771907969818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A168574 n

end

end A371532.P7267492771907969818

namespace A371532

/-- `A300758(n)+A168574(n)` -/
def P7267492771907969818.Spec : Prop :=
  ∀ n, P7267492771907969818.a n = A371532 n

end A371532

/-! ## A371532.P15495558301252532974

`A188050(n)-A056220(n)`
-/

namespace A371532.P15495558301252532974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 n - A056220 n

end

end A371532.P15495558301252532974

namespace A371532

/-- `A188050(n)-A056220(n)` -/
def P15495558301252532974.Spec : Prop :=
  ∀ n, P15495558301252532974.a n = A371532 n

end A371532

/-! ## A371532.P1205714681498676750

`A063495(n+1)+A007587(n)`
-/

namespace A371532.P1205714681498676750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063495 (n + 1) + A007587 n

end

end A371532.P1205714681498676750

namespace A371532

/-- `A063495(n+1)+A007587(n)` -/
def P1205714681498676750.Spec : Prop :=
  ∀ n, P1205714681498676750.a n = A371532 n

end A371532

/-! ## A371532.P5799008997771085418

`A100179(n+1)+A045950(n)`
-/

namespace A371532.P5799008997771085418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100179 (n + 1) + A045950 n

end

end A371532.P5799008997771085418

namespace A371532

/-- `A100179(n+1)+A045950(n)` -/
def P5799008997771085418.Spec : Prop :=
  ∀ n, P5799008997771085418.a n = A371532 n

end A371532

/-! ## A371532.P16988174739166977303

`A100187(n+1)+A063521(n)`
-/

namespace A371532.P16988174739166977303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100187 (n + 1) + A063521 n

end

end A371532.P16988174739166977303

namespace A371532

/-- `A100187(n+1)+A063521(n)` -/
def P16988174739166977303.Spec : Prop :=
  ∀ n, P16988174739166977303.a n = A371532 n

end A371532

/-! ## A371532.P16981476859619489550

`A258582(n)+A050492(n+1)`
-/

namespace A371532.P16981476859619489550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n + A050492 (n + 1)

end

end A371532.P16981476859619489550

namespace A371532

/-- `A258582(n)+A050492(n+1)` -/
def P16981476859619489550.Spec : Prop :=
  ∀ n, P16981476859619489550.a n = A371532 n

end A371532

/-! ## A371532.P14350482871567785698

`A169711(n+1)+A146298(n)`
-/

namespace A371532.P14350482871567785698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1) + A146298 n

end

end A371532.P14350482871567785698

namespace A371532

/-- `A169711(n+1)+A146298(n)` -/
def P14350482871567785698.Spec : Prop :=
  ∀ n, P14350482871567785698.a n = A371532 n

end A371532

/-! ## A371532.P6976153983089591308

`A336288(n+1)+A084367(n)`
-/

namespace A371532.P6976153983089591308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1) + A084367 n

end

end A371532.P6976153983089591308

namespace A371532

/-- `A336288(n+1)+A084367(n)` -/
def P6976153983089591308.Spec : Prop :=
  ∀ n, P6976153983089591308.a n = A371532 n

end A371532

/-! ## A371532.P3060965928271897571

`A095265(n+1)-A014105(n)`
-/

namespace A371532.P3060965928271897571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095265 (n + 1) - A014105 n

end

end A371532.P3060965928271897571

namespace A371532

/-- `A095265(n+1)-A014105(n)` -/
def P3060965928271897571.Spec : Prop :=
  ∀ n, P3060965928271897571.a n = A371532 n

end A371532

/-! ## A371532.P14541361018713312962

`A100161(n+1)-A033954(n)`
-/

namespace A371532.P14541361018713312962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (n + 1) - A033954 n

end

end A371532.P14541361018713312962

namespace A371532

/-- `A100161(n+1)-A033954(n)` -/
def P14541361018713312962.Spec : Prop :=
  ∀ n, P14541361018713312962.a n = A371532 n

end A371532

/-! ## A371532.P15873699859094083139

`A193228(n+1)-A200431(n+1)`
-/

namespace A371532.P15873699859094083139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 1) - A200431 (n + 1)

end

end A371532.P15873699859094083139

namespace A371532

/-- `A193228(n+1)-A200431(n+1)` -/
def P15873699859094083139.Spec : Prop :=
  ∀ n, P15873699859094083139.a n = A371532 n

end A371532

/-! ## A371532.P9086337495462054636

`A095265(n+1)+n-A046092(n)`
-/

namespace A371532.P9086337495462054636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095265 (n + 1) + ((n : ℤ) - A046092 n)

end

end A371532.P9086337495462054636

namespace A371532

/-- `A095265(n+1)+n-A046092(n)` -/
def P9086337495462054636.Spec : Prop :=
  ∀ n, P9086337495462054636.a n = A371532 n

end A371532

/-! ## A371532.P12198464065847461396

`A193218(n+1)+A006331(n)-A046092(n)`
-/

namespace A371532.P12198464065847461396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (n + 1) + (A006331 n - A046092 n)

end

end A371532.P12198464065847461396

namespace A371532

/-- `A193218(n+1)+A006331(n)-A046092(n)` -/
def P12198464065847461396.Spec : Prop :=
  ∀ n, P12198464065847461396.a n = A371532 n

end A371532

/-! ## A371532.P4058132866054886939

`A203552(Δ[n²])-n`
-/

namespace A371532.P4058132866054886939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A371532.P4058132866054886939

namespace A371532

/-- `A203552(Δ[n²])-n` -/
def P4058132866054886939.Spec : Prop :=
  ∀ n, P4058132866054886939.a n = A371532 n

end A371532

/-! ## A371532.P1957083587607008852

`A162148(2*n)+n+1`
-/

namespace A371532.P1957083587607008852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 (2 * n) + (n + 1 : ℤ)

end

end A371532.P1957083587607008852

namespace A371532

/-- `A162148(2*n)+n+1` -/
def P1957083587607008852.Spec : Prop :=
  ∀ n, P1957083587607008852.a n = A371532 n

end A371532

/-!
# A371533: Numbers k such that A001227(2*k) = A001222(2*k).

The programs for A371533, the canonical program `A371533.P15110129469889322330` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371533 has offset 1).

The definition of A371533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371533.P15110129469889322330

`eq[A001227(n+1), A073093(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A371533

/-- `eq[A001227(n+1), A073093(n+1)]+1` -/
def P15110129469889322330.Spec : Prop :=
  ∀ n, (P15110129469889322330.a n : ℤ) = A371533 (n + 1)

theorem P15110129469889322330.correct : P15110129469889322330.Spec := by
  intro n
  simp only [A371533, Nat.add_sub_cancel]

end A371533

/-! ## A371533.P5657806784921418919

`eq[A001222(2*(n+1)), A001227(n+1)]+1`
-/

namespace A371533.P5657806784921418919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A371533.P5657806784921418919

namespace A371533

/-- `eq[A001222(2*(n+1)), A001227(n+1)]+1` -/
def P5657806784921418919.Spec : Prop :=
  ∀ n, (P5657806784921418919.a n : ℤ) = A371533 (n + 1)

end A371533

/-! ## A371533.P15835565374019507027

`A003602(eq[A001222(n+1), A001227(n+1)])`
-/

namespace A371533.P15835565374019507027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A371533.P15835565374019507027

namespace A371533

/-- `A003602(eq[A001222(n+1), A001227(n+1)])` -/
def P15835565374019507027.Spec : Prop :=
  ∀ n, P15835565374019507027.a n = A371533 (n + 1)

end A371533

/-! ## A371533.P12613831342560617932

`A008619(eq[A001222(n+1), A001227(n+1)])`
-/

namespace A371533.P12613831342560617932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A371533.P12613831342560617932

namespace A371533

/-- `A008619(eq[A001222(n+1), A001227(n+1)])` -/
def P12613831342560617932.Spec : Prop :=
  ∀ n, P12613831342560617932.a n = A371533 (n + 1)

end A371533

/-! ## A371533.P15272410302334791714

`A220466(eq[A001222(n+1), A001227(n+1)])`
-/

namespace A371533.P15272410302334791714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A371533.P15272410302334791714

namespace A371533

/-- `A220466(eq[A001222(n+1), A001227(n+1)])` -/
def P15272410302334791714.Spec : Prop :=
  ∀ n, P15272410302334791714.a n = A371533 (n + 1)

end A371533

/-!
# A371536: a(n) is the number of unobscured pentagons remaining after completing step n.

The programs for A371536, there is no canonical definition to state claims against.
-/

/-! ## A371536.P4906262851019982910

`5*A041515(n)-4`
-/

namespace A371536.P4906262851019982910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A041515 n - 4

end

end A371536.P4906262851019982910

/-!
# A371537: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3 / (1+x))^2.

The programs for A371537, there is no canonical definition to state claims against.
-/

/-! ## A371537.P17846710168216445913

`A320347(n*A024815(n)+1)`
-/

namespace A371537.P17846710168216445913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320347 ((n : ℤ) * A024815 n + 1).toNat

end

end A371537.P17846710168216445913

/-!
# A371538: G.f. A(x) satisfies A(x) = (1 + x*A(x)^2 / (1+x))^3.

The programs for A371538, there is no canonical definition to state claims against.
-/

/-! ## A371538.P14831615732959247768

`∑[A026741(A340895(n+1))]`
-/

namespace A371538.P14831615732959247768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A340895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371538.P14831615732959247768

/-!
# A371539: G.f. A(x) satisfies A(x) = (1 + x*A(x)^(3/2) / (1+x))^4.

The programs for A371539, there is no canonical definition to state claims against.
-/

/-! ## A371539.P11109158932618181904

`A367307(A354263(n)+A000120(n))`
-/

namespace A371539.P11109158932618181904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367307 (A354263 n + A000120 n).toNat

end

end A371539.P11109158932618181904

/-!
# A371542: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1+x))^3.

The programs for A371542, there is no canonical definition to state claims against.
-/

/-! ## A371542.P6387912601741428394

`A127897(n+1)+A127897(n)`
-/

namespace A371542.P6387912601741428394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127897 (n + 1) + A127897 n

end

end A371542.P6387912601741428394

/-! ## A371542.P12933445517132281252

`A048865(A362338(n)+A318745(3*(n+1)))`
-/

namespace A371542.P12933445517132281252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A362338 n + A318745 (3 * (n + 1))).toNat

end

end A371542.P12933445517132281252

/-!
# A371543: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1+x))^4.

The programs for A371543, there is no canonical definition to state claims against.
-/

/-! ## A371543.P12768175636457452330

`A136250(A149350(n+1))`
-/

namespace A371543.P12768175636457452330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136250 (A149350 (n + 1)).toNat

end

end A371543.P12768175636457452330

/-!
# A371544: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1+x))^5.

The programs for A371544, there is no canonical definition to state claims against.
-/

/-! ## A371544.P1110973402532322288

`A261776(∑[A190877(n)]²)`
-/

namespace A371544.P1110973402532322288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261776 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A371544.P1110973402532322288

/-!
# A371545: G.f. A(x) satisfies A(x) = (1 + x*A(x)^2 / (1+x))^2.

The programs for A371545, there is no canonical definition to state claims against.
-/

/-! ## A371545.P7484876748206882214

`A007680(n)-A001222(A347012(n))`
-/

namespace A371545.P7484876748206882214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007680 n - A001222 (A347012 n).toNat

end

end A371545.P7484876748206882214

/-! ## A371545.P7022640165457653170

`A103221(A238115(n+1)+A238113(n))`
-/

namespace A371545.P7022640165457653170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A238115 (n + 1) + A238113 n).toNat

end

end A371545.P7022640165457653170

/-!
# A371546: Expansion of e.g.f. Product_{k>=1} 1 / (1 - 2*x^k/k!).

The programs for A371546, there is no canonical definition to state claims against.
-/

/-! ## A371546.P6744093853427065989

`A341270(A229183(n))`
-/

namespace A371546.P6744093853427065989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341270 (A229183 n).toNat

end

end A371546.P6744093853427065989

/-!
# A371547: Expansion of e.g.f. Product_{k>=1} 1 / (1 - 2*x^k/k).

The programs for A371547, there is no canonical definition to state claims against.
-/

/-! ## A371547.P13339157460366160249

`A115392(A047863(n))`
-/

namespace A371547.P13339157460366160249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (A047863 n).toNat

end

end A371547.P13339157460366160249

/-!
# A371548: Expansion of e.g.f. Product_{k>=1} (1 + 2*x^k/k).

The programs for A371548, there is no canonical definition to state claims against.
-/

/-! ## A371548.P13948602465807718106

`∏{e}[A280607(n), #+1]*A004251(n)`
-/

namespace A371548.P13948602465807718106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) * A004251 n

end

end A371548.P13948602465807718106

/-! ## A371548.P13528555650956398363

`A014420(A007840(n+1))*A056323(n)`
-/

namespace A371548.P13528555650956398363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014420 (A007840 (n + 1)).toNat * A056323 n

end

end A371548.P13528555650956398363

/-!
# A371549: Expansion of e.g.f. Product_{k>=1} 1 / (1 - mu(k)^2*x^k/k!).

The programs for A371549, there is no canonical definition to state claims against.
-/

/-! ## A371549.P4425729332748968901

`floor((A325160(A005651(n)+1)+1)/2)`
-/

namespace A371549.P4425729332748968901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325160 (A005651 n + 1).toNat + 1 : ℚ) / 2⌋

end

end A371549.P4425729332748968901

/-! ## A371549.P6050810049051521867

`A144000(A151063(n))`
-/

namespace A371549.P6050810049051521867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144000 (A151063 n).toNat

end

end A371549.P6050810049051521867

/-!
# A371553: Consider primitive pairs of integers (b, c) with b > 0 such that x^5 + b*x + c = 0 is irreducible and solvable by radicals: sequence gives values of b.

The programs for A371553, there is no canonical definition to state claims against.
-/

/-! ## A371553.P17355527140766887741

`A139605(xor(A000048(2*n), A093680(3*n+2)))`
-/

namespace A371553.P17355527140766887741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139605 (Int.xor (A000048 (2 * n)) (A093680 (3 * n + 2))).toNat

end

end A371553.P17355527140766887741

/-!
# A371555: Smallest position m such that A005350(m)=n.

The programs for A371555, there is no canonical definition to state claims against.
-/

/-! ## A371555.P9349149909519898163

`A028260(n+1)+A011684(A026383(n))`
-/

namespace A371555.P9349149909519898163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1) + A011684 (A026383 n).toNat

end

end A371555.P9349149909519898163

/-! ## A371555.P17676891458412768537

`A377191(A000045(n))+A028260(n+1)`
-/

namespace A371555.P17676891458412768537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377191 (A000045 n).toNat + A028260 (n + 1)

end

end A371555.P17676891458412768537

/-! ## A371555.P11718388961032138283

`A028260(n+1)+A003849(A114538(n+4))`
-/

namespace A371555.P11718388961032138283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1) + A003849 (A114538 (n + 4)).toNat

end

end A371555.P11718388961032138283

/-! ## A371555.P4107001281902547140

`A379476(A000081(n+4))+A028260(n+1)`
-/

namespace A371555.P4107001281902547140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (A000081 (n + 4)).toNat + A028260 (n + 1)

end

end A371555.P4107001281902547140

/-!
# A371560: a(n) = n!*(n+1)!^3.

The programs for A371560, there is no canonical definition to state claims against.
-/

/-! ## A371560.P3046359222562025671

`(n+1)!^3*n!`
-/

namespace A371560.P3046359222562025671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 3 * Nat.factorial n

end

end A371560.P3046359222562025671

/-! ## A371560.P1645518651489982443

`(n+1)*((n+1)*n!²)²`
-/

namespace A371560.P1645518651489982443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) * Nat.factorial n ^ 2) ^ 2

end

end A371560.P1645518651489982443

/-! ## A371560.P3656640246102446157

`n*a(n-1)*Δ[∑[n]²]` with `a(0)=1`
-/

namespace A371560.P3656640246102446157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A371560.P3656640246102446157

/-! ## A371560.P2396505182794549716

`n*(n+1)^3*a(n-1)` with `a(0)=1`
-/

namespace A371560.P2396505182794549716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * ((n + 1) ^ 3 * a (n - 1))

end

end A371560.P2396505182794549716

/-! ## A371560.P10943055407346865455

`2*(n+1)²*a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A371560.P10943055407346865455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 1) ^ 2 * a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A371560.P10943055407346865455

/-!
# A371561: Numbers with multiplicative digital root of 5 that are free of 1s and have their digits in ascending order.

The programs for A371561, there is no canonical definition to state claims against.
-/

/-! ## A371561.P7470354035286561099

`∩[A034052(n+1), A318276(n+1)]`
-/

namespace A371561.P7470354035286561099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371561.P7470354035286561099

/-! ## A371561.P8865997767047914954

`∩[A051807(n+1), A318276(n+1)]`
-/

namespace A371561.P8865997767047914954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371561.P8865997767047914954

/-! ## A371561.P6734743367948787384

`∩[A318276(n+1), A092454(n)]`
-/

namespace A371561.P6734743367948787384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371561.P6734743367948787384

/-! ## A371561.P3786149728169330789

`∩[A011535(n+1), A318276(n+1)]`
-/

namespace A371561.P3786149728169330789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371561.P3786149728169330789

/-!
# A371562: G.f. A(x) satisfies A(x) = 1 + x/A(x)^3 * (1 + A(x)^5).

The programs for A371562, there is no canonical definition to state claims against.
-/

/-! ## A371562.P13457813108782238603

`A319997(or(n, A108800(n)))`
-/

namespace A371562.P13457813108782238603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (Int.lor (n : ℤ) (A108800 n)).toNat

end

end A371562.P13457813108782238603

/-!
# A371564: Number of binary strings of length n which have more 01 than 00 substrings.

The programs for A371564, there is no canonical definition to state claims against.
-/

/-! ## A371564.P1865084422272725750

`2*a(n-1)-A163493(n)+A163493(n-1)+A163493(n-2)+A370048(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A371564.P1865084422272725750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) - A163493 n + A163493 (n - 1) + A163493 (n - 2) + A370048 (n - 2)

end

end A371564.P1865084422272725750

/-! ## A371564.P7265708225503415170

`2^n-A163493(n)-A371358(n)`
-/

namespace A371564.P7265708225503415170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A163493 n - A371358 n

end

end A371564.P7265708225503415170

/-! ## A371564.P17776160447732256735

`A000079(n)-(A371358(n)+A163493(n))`
-/

namespace A371564.P17776160447732256735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A371358 n + A163493 n)

end

end A371564.P17776160447732256735

/-! ## A371564.P17357685307300820101

`A363743(A149857(n))`
-/

namespace A371564.P17357685307300820101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363743 (A149857 n).toNat

end

end A371564.P17357685307300820101

/-! ## A371564.P14240005495180312530

`A343229(A193418(n+1))`
-/

namespace A371564.P14240005495180312530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (A193418 (n + 1)).toNat

end

end A371564.P14240005495180312530

/-!
# A371566: 

The programs for A371566, there is no canonical definition to state claims against.
-/

/-! ## A371566.P10952508246544575671

`∩[A106284(n+1), A106309(n+1)]`
-/

namespace A371566.P10952508246544575671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371566.P10952508246544575671

/-!
# A371568: Array read by ascending antidiagonals: A(n, k) is the number of paths of length k in Z^n from the origin to points such that x1+x2+...+xn = k with x1,...,xn > 0.

The programs for A371568, there is no canonical definition to state claims against.
-/

/-! ## A371568.P1955827993374022228

`A050724(A105868(n)+1)`
-/

namespace A371568.P1955827993374022228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050724 (A105868 n + 1).toNat

end

end A371568.P1955827993374022228

/-! ## A371568.P16852405358919124524

`A105868(n)+A010893(A024462(n))`
-/

namespace A371568.P16852405358919124524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 n + A010893 ((A024462 n).toNat + 13)

end

end A371568.P16852405358919124524

/-! ## A371568.P2399060527410917670

`or(A089233(A060455(n)), A105868(n))`
-/

namespace A371568.P2399060527410917670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089233 (A060455 n).toNat) (A105868 n)

end

end A371568.P2399060527410917670

/-! ## A371568.P7080923924726168164

`A007094(A105868(n)^A342666(n+2))`
-/

namespace A371568.P7080923924726168164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A105868 n : ℚ) ^ (A342666 (n + 2) : ℤ))).toNat

end

end A371568.P7080923924726168164

/-! ## A371568.P2004143677285320186

`A007094(C(A105868(n), A342666(n+2)))`
-/

namespace A371568.P2004143677285320186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.choose (A105868 n).toNat (A342666 (n + 2)).toNat)

end

end A371568.P2004143677285320186

/-!
# A371571: Irregular triangle read by rows: row n lists the 1-based positions (starting from the left) of zeros in the binary expansion of n, or 0 if the binary expansion of n contains only ones.

The programs for A371571, there is no canonical definition to state claims against.
-/

/-! ## A371571.P5012338724663023050

`A105783(A153918(n))`
-/

namespace A371571.P5012338724663023050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (A153918 n).toNat

end

end A371571.P5012338724663023050

/-! ## A371571.P5498071842357806240

`A333628(A244052(n+1)+2)`
-/

namespace A371571.P5498071842357806240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (A244052 (n + 1) + 2).toNat

end

end A371571.P5498071842357806240

/-!
# A371572: Irregular triangle read by rows: row n lists the 1-based positions (starting from the left) of ones in the binary expansion of n, with row 0 = 0.

The programs for A371572, there is no canonical definition to state claims against.
-/

/-! ## A371572.P12229204852325568637

`A371883(Δ[A374631(n+2)])`
-/

namespace A371572.P12229204852325568637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371883 (f1 (n + 1) - f1 n).toNat

end

end A371572.P12229204852325568637

/-! ## A371572.P10459241408975693305

`A357180((n+3)*A163352(n))`
-/

namespace A371572.P10459241408975693305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357180 ((n + 3 : ℤ) * A163352 n).toNat

end

end A371572.P10459241408975693305

/-! ## A371572.P577958457745390104

`A257990(A301554(n)+A163077(n+1))`
-/

namespace A371572.P577958457745390104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A301554 n + A163077 (n + 1)).toNat

end

end A371572.P577958457745390104

/-! ## A371572.P11794661320040076566

`A357137(A029931(n)*A295935(n+1))`
-/

namespace A371572.P11794661320040076566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A029931 n * A295935 (n + 1)).toNat

end

end A371572.P11794661320040076566

/-! ## A371572.P15007799189089731442

`A362611(A304709(3*n+1)+A151949(n))`
-/

namespace A371572.P15007799189089731442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A304709 (3 * n + 1) + A151949 n).toNat

end

end A371572.P15007799189089731442

/-!
# A371573: a(n) = lcm(A020639(n), A032742(n)).

The programs for A371573, there is no canonical definition to state claims against.
-/

/-! ## A371573.P9436650177485846646

`A032742(n+1)*A126773(n+1)`
-/

namespace A371573.P9436650177485846646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A126773 (n + 1)

end

end A371573.P9436650177485846646

/-! ## A371573.P7130643535667498829

`lcm(A007913(n+1), A032742(n+1))`
-/

namespace A371573.P7130643535667498829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A032742 (n + 1))

end

end A371573.P7130643535667498829

/-! ## A371573.P12274343996194156704

`lcm(A015052(n+1), A063928(n+1))`
-/

namespace A371573.P12274343996194156704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015052 (n + 1)) (A063928 (n + 1))

end

end A371573.P12274343996194156704

/-! ## A371573.P12959468226480043577

`lcm(A015053(n+1), A117818(n+1))`
-/

namespace A371573.P12959468226480043577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015053 (n + 1)) (A117818 (n + 1))

end

end A371573.P12959468226480043577

/-! ## A371573.P5197700074951984596

`(n+1)/A020639(A008833(A028233(n+1)))`
-/

namespace A371573.P5197700074951984596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A008833 (A028233 (n + 1)).toNat).toNat : ℚ)

end

end A371573.P5197700074951984596

/-! ## A371573.P16474508133997172692

`(n+1)/A006530(A329888(A323130(n+1)))`
-/

namespace A371573.P16474508133997172692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (A329888 (A323130 (n + 1)).toNat).toNat : ℚ)

end

end A371573.P16474508133997172692

/-!
# A371574: G.f. satisfies A(x) = ( 1 + x*A(x)^(5/2) * (1 + x*A(x)) )^2.

The programs for A371574, there is no canonical definition to state claims against.
-/

/-! ## A371574.P17655912091740562961

`A004526(2*A371586(n))`
-/

namespace A371574.P17655912091740562961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A371586 n).toNat

end

end A371574.P17655912091740562961

/-!
# A371575: G.f. satisfies A(x) = ( 1 + x*A(x)^3 * (1 + x*A(x)) )^2.

The programs for A371575, there is no canonical definition to state claims against.
-/

/-! ## A371575.P6266641742134431568

`A289440(A049388(n)+A003319(n))`
-/

namespace A371575.P6266641742134431568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A049388 n + A003319 n).toNat

end

end A371575.P6266641742134431568

/-!
# A371576: G.f. satisfies A(x) = ( 1 + x*A(x)^(3/2) * (1 + x) )^2.

The programs for A371576, there is no canonical definition to state claims against.
-/

/-! ## A371576.P9963150617257315975

`A378323(∑[n+3])`
-/

namespace A371576.P9963150617257315975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371576.P9963150617257315975

/-! ## A371576.P17472775965098701307

`A379173(n)-a(n-1)` with `a(0)=1`
-/

namespace A371576.P17472775965098701307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A379173 n - a (n - 1)

end

end A371576.P17472775965098701307

/-! ## A371576.P15721313567336397603

`record[A243148(n+2)*A378323(n)]`
-/

namespace A371576.P15721313567336397603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (n + 2) * A378323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371576.P15721313567336397603

/-! ## A371576.P10296333912124809140

`record[A378323(n)/A080247(n+2)]`
-/

namespace A371576.P10296333912124809140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378323 n : ℚ) / (A080247 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371576.P10296333912124809140

/-!
# A371577: G.f. satisfies A(x) = ( 1 + x*A(x)^2 * (1 + x) )^2.

The programs for A371577, there is no canonical definition to state claims against.
-/

/-! ## A371577.P16782347326435897111

`A026504(A192816(n+1))`
-/

namespace A371577.P16782347326435897111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026504 (A192816 (n + 1)).toNat

end

end A371577.P16782347326435897111

/-!
# A371578: G.f. satisfies A(x) = ( 1 + x*A(x)^(5/2) * (1 + x) )^2.

The programs for A371578, there is no canonical definition to state claims against.
-/

/-! ## A371578.P2023755055604268470

`A266193(A003407(3*n))+1`
-/

namespace A371578.P2023755055604268470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A003407 (3 * n)).toNat + 1

end

end A371578.P2023755055604268470

/-!
# A371579: G.f. satisfies A(x) = ( 1 + x*A(x)^(5/2) * (1 + x*A(x))^2 )^2.

The programs for A371579, there is no canonical definition to state claims against.
-/

/-! ## A371579.P4634277762342832111

`A071933(A176733(n)-n)`
-/

namespace A371579.P4634277762342832111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071933 (A176733 n - (n : ℤ)).toNat

end

end A371579.P4634277762342832111

/-!
# A371580: G.f. satisfies A(x) = ( 1 + x*A(x)^(5/2) * (1 + x)^2 )^2.

The programs for A371580, there is no canonical definition to state claims against.
-/

/-! ## A371580.P7157541168328499007

`A005727(n)+A004728(A098297(n))`
-/

namespace A371580.P7157541168328499007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005727 n + A004728 (A098297 n).toNat

end

end A371580.P7157541168328499007

/-!
# A371581: G.f. satisfies A(x) = ( 1 + x*A(x)^(5/2) / (1 - x*A(x)) )^2.

The programs for A371581, there is no canonical definition to state claims against.
-/

/-! ## A371581.P15337729468403878108

`A194963(A143363(2*n+1)-n)`
-/

namespace A371581.P15337729468403878108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (A143363 (2 * n + 1) - (n : ℤ)).toNat

end

end A371581.P15337729468403878108

/-!
# A371582: G.f. satisfies A(x) = ( 1 + x*A(x)^3 / (1 - x*A(x)) )^2.

The programs for A371582, there is no canonical definition to state claims against.
-/

/-! ## A371582.P15617169672972600459

`A236836(∑[A000108(2*n)]-n)`
-/

namespace A371582.P15617169672972600459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A371582.P15617169672972600459

/-!
# A371583: G.f. satisfies A(x) = ( 1 + x*A(x)^(5/2) / (1 - x) )^2.

The programs for A371583, there is no canonical definition to state claims against.
-/

/-! ## A371583.P17869986732572636404

`A187186(A120996(n)+2)`
-/

namespace A371583.P17869986732572636404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A120996 n + 2).toNat

end

end A371583.P17869986732572636404

/-!
# A371584: G.f. satisfies A(x) = ( 1 + x*A(x)^(5/2) / (1 - x*A(x))^2 )^2.

The programs for A371584, there is no canonical definition to state claims against.
-/

/-! ## A371584.P17203374019119536199

`A101684(A000108(2*n))+2*n`
-/

namespace A371584.P17203374019119536199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101684 (A000108 (2 * n)).toNat + (2 * n : ℤ)

end

end A371584.P17203374019119536199

/-!
# A371587: a(n) is the number of integers m from 1 to n inclusive such that m^m is a cube.

The programs for A371587, the canonical program `A371587.P1586689219007776295` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371587 has offset 1).

The definition of A371587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371587.P1586689219007776295

`∑[char[A376279(n+1)-1]]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A371587

/-- `∑[char[A376279(n+1)-1]]` -/
def P1586689219007776295.Spec : Prop :=
  ∀ n, (P1586689219007776295.a n : ℤ) = A371587 (n + 1)

theorem P1586689219007776295.correct : P1586689219007776295.Spec := by
  intro n
  simp only [A371587, Nat.add_sub_cancel]

end A371587

/-! ## A371587.P2619960927751238271

`∑[C(A122698(n+1), A343866(2*n+3))]`
-/

namespace A371587.P2619960927751238271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122698 (n + 1)).toNat (A343866 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371587.P2619960927751238271

namespace A371587

/-- `∑[C(A122698(n+1), A343866(2*n+3))]` -/
def P2619960927751238271.Spec : Prop :=
  ∀ n, (P2619960927751238271.a n : ℤ) = A371587 (n + 1)

end A371587

/-! ## A371587.P1065496784098925640

`A000523(A089688(2*n)+A000041(n))`
-/

namespace A371587.P1065496784098925640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A089688 (2 * n) + A000041 n).toNat

end

end A371587.P1065496784098925640

namespace A371587

/-- `A000523(A089688(2*n)+A000041(n))` -/
def P1065496784098925640.Spec : Prop :=
  ∀ n, P1065496784098925640.a n = A371587 (n + 1)

end A371587

/-! ## A371587.P12438989814058184149

`∑[abs(A010815(A033865(3*n+1)))]`
-/

namespace A371587.P12438989814058184149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 (A033865 (3 * n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371587.P12438989814058184149

namespace A371587

/-- `∑[abs(A010815(A033865(3*n+1)))]` -/
def P12438989814058184149.Spec : Prop :=
  ∀ n, P12438989814058184149.a n = A371587 (n + 1)

end A371587

/-!
# A371590: Irregular table T(n, k), n >= 0, k = 1..max(2, 2^n), read by rows; the n-th row lists the nonnegative numbers whose Zeckendorf-binary representation has n nonleading zeros.

The programs for A371590, there is no canonical definition to state claims against.
-/

/-! ## A371590.P6939596103359775417

`A048680(A187769(n))`
-/

namespace A371590.P6939596103359775417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A187769 n).toNat

end

end A371590.P6939596103359775417

/-! ## A371590.P7670103237675489044

`A048680(A357491(n))%A265813(2*n+3)`
-/

namespace A371590.P7670103237675489044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048680 (A357491 n).toNat) (A265813 (2 * n + 3))

end

end A371590.P7670103237675489044

/-!
# A371591: Inverse permutation to A371590.

The programs for A371591, there is no canonical definition to state claims against.
-/

/-! ## A371591.P8289454188037042222

`A357491(A048679(n)%A103170(n+1))`
-/

namespace A371591.P8289454188037042222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357491 (Int.tmod (A048679 n) (A103170 (n + 1))).toNat

end

end A371591.P8289454188037042222

/-! ## A371591.P6652334044802808987

`A357491(A048679(n))%A304284(n+1)`
-/

namespace A371591.P6652334044802808987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357491 (A048679 n).toNat) (A304284 (n + 1))

end

end A371591.P6652334044802808987

/-! ## A371591.P5213610391828174138

`A048679(n)-A304570(A049029(n+1))`
-/

namespace A371591.P5213610391828174138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n - A304570 (A049029 (n + 1)).toNat

end

end A371591.P5213610391828174138

/-! ## A371591.P808938000339383980

`A074050(n+1)-A384225(A074097(n+2))`
-/

namespace A371591.P808938000339383980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074050 (n + 1) - A384225 (A074097 (n + 2)).toNat

end

end A371591.P808938000339383980

/-! ## A371591.P1467660941766863375

`A048679(n)-A322358(A322391(2*n+1))`
-/

namespace A371591.P1467660941766863375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n - A322358 (A322391 (2 * n + 1)).toNat

end

end A371591.P1467660941766863375

/-!
# A371594: Starting positions of runs in the paperfolding sequence A014707.

The programs for A371594, there is no canonical definition to state claims against.
-/

/-! ## A371594.P11401894646604350062

`1-(char[xor(n, Δ[xor(n, 2*n)])]-3*n)-n`
-/

namespace A371594.P11401894646604350062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (3 * n : ℤ)) - (n : ℤ)

end

end A371594.P11401894646604350062

/-! ## A371594.P13018704447190956944

`record[xor(n, A090678(n))]`
-/

namespace A371594.P13018704447190956944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A090678 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371594.P13018704447190956944

/-! ## A371594.P16715798173574751487

`eq[4, A007400(n+1)]`
-/

namespace A371594.P16715798173574751487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371594.P16715798173574751487

/-! ## A371594.P2333134943493678777

`eq[4, A007400(n)]-1`
-/

namespace A371594.P2333134943493678777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A371594.P2333134943493678777

/-! ## A371594.P2377987716872590347

`eq[2, and(2, A004200(n))]`
-/

namespace A371594.P2377987716872590347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A004200 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371594.P2377987716872590347

/-! ## A371594.P7566364754871714801

`A317538(n+1)-n`
-/

namespace A371594.P7566364754871714801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317538 (n + 1) - (n : ℤ)

end

end A371594.P7566364754871714801

/-!
# A371595: a(n) is the least period of the 5-step recurrence x(k) = (x(k-1) + x(k-2) + x(k-3) + x(k-4) + x(k-5)) mod prime(n) for initial conditions (x(0),x(1),x(2),x(3),x(4)) other than (0,0,0,0,0) in [0..prime(n)-1]^5.

The programs for A371595, there is no canonical definition to state claims against.
-/

/-! ## A371595.P6031096201825891955

`A000203(A030514(n+1))%A098406(3*n)`
-/

namespace A371595.P6031096201825891955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A030514 (n + 1)).toNat) (A098406 (3 * n))

end

end A371595.P6031096201825891955

/-! ## A371595.P9089406362246772076

`A106298(n+1)%A000567(A001405(2*(n+1)))`
-/

namespace A371595.P9089406362246772076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106298 (n + 1)) (A000567 (A001405 (2 * (n + 1))).toNat)

end

end A371595.P9089406362246772076

/-!
# A371596: The number of unilevel points (unique points at their height) on Delannoy paths ending when x = n.

The programs for A371596, the canonical program `A371596.P6475309989599802734` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371596 has offset 0).

The definition of A371596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371596.P6475309989599802734

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A371596

/-- `2*a(n-1)+a(n-2)` -/
def P6475309989599802734.Spec : Prop :=
  ∀ n, (P6475309989599802734.a n : ℤ) = A371596 n

theorem P6475309989599802734.correct : P6475309989599802734.Spec := by
  intro n
  simp only [A371596]

end A371596

/-! ## A371596.P10037979708491742535

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A371596.P10037979708491742535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A371596.P10037979708491742535

namespace A371596

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P10037979708491742535.Spec : Prop :=
  ∀ n, (P10037979708491742535.a n : ℤ) = A371596 n

theorem P10037979708491742535.correct : P10037979708491742535.Spec := by
  intro n
  simp only [A371596, Nat.add_sub_cancel, A371596.P10037979708491742535.a, A371596.P6475309989599802734.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A371596

/-! ## A371596.P12397868822510408443

`2*a(n-1)-(a(n-2)%2-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A371596.P12397868822510408443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) - (Int.tmod (a (n - 2)) 2 - a (n - 2))

end

end A371596.P12397868822510408443

namespace A371596

/-- `2*a(n-1)-(a(n-2)%2-a(n-2))` -/
def P12397868822510408443.Spec : Prop :=
  ∀ n, P12397868822510408443.a n = A371596 n

end A371596

/-! ## A371596.P4941264503445463393

`Δ[A099425(n)]`
-/

namespace A371596.P4941264503445463393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371596.P4941264503445463393

namespace A371596

/-- `Δ[A099425(n)]` -/
def P4941264503445463393.Spec : Prop :=
  ∀ n, P4941264503445463393.a n = A371596 n

end A371596

/-! ## A371596.P15954670101888685050

`A123932(n)*A215928(n)`
-/

namespace A371596.P15954670101888685050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A215928 n

end

end A371596.P15954670101888685050

namespace A371596

/-- `A123932(n)*A215928(n)` -/
def P15954670101888685050.Spec : Prop :=
  ∀ n, P15954670101888685050.a n = A371596 n

end A371596

/-! ## A371596.P6114798820320088016

`A163271(n+1)+A052542(n)`
-/

namespace A371596.P6114798820320088016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A052542 n

end

end A371596.P6114798820320088016

namespace A371596

/-- `A163271(n+1)+A052542(n)` -/
def P6114798820320088016.Spec : Prop :=
  ∀ n, P6114798820320088016.a n = A371596 n

end A371596

/-! ## A371596.P1406577548220530061

`A002203(n+1)-A099425(n)`
-/

namespace A371596.P1406577548220530061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - A099425 n

end

end A371596.P1406577548220530061

namespace A371596

/-- `A002203(n+1)-A099425(n)` -/
def P1406577548220530061.Spec : Prop :=
  ∀ n, P1406577548220530061.a n = A371596 n

end A371596

/-! ## A371596.P3310794669049675399

`A099425(n+1)-A099425(n)`
-/

namespace A371596.P3310794669049675399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (n + 1) - A099425 n

end

end A371596.P3310794669049675399

namespace A371596

/-- `A099425(n+1)-A099425(n)` -/
def P3310794669049675399.Spec : Prop :=
  ∀ n, P3310794669049675399.a n = A371596 n

end A371596

/-! ## A371596.P5180468105772012502

`A036453(n+1)*A052542(n)`
-/

namespace A371596.P5180468105772012502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A052542 n

end

end A371596.P5180468105772012502

namespace A371596

/-- `A036453(n+1)*A052542(n)` -/
def P5180468105772012502.Spec : Prop :=
  ∀ n, P5180468105772012502.a n = A371596 n

end A371596

/-! ## A371596.P10331873578012539775

`A052542(n)+2*A000129(n)`
-/

namespace A371596.P10331873578012539775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n + 2 * A000129 n

end

end A371596.P10331873578012539775

namespace A371596

/-- `A052542(n)+2*A000129(n)` -/
def P10331873578012539775.Spec : Prop :=
  ∀ n, P10331873578012539775.a n = A371596 n

end A371596

/-! ## A371596.P16680374246437240621

`(2-A000007(n))*A052542(n)`
-/

namespace A371596.P16680374246437240621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A052542 n

end

end A371596.P16680374246437240621

namespace A371596

/-- `(2-A000007(n))*A052542(n)` -/
def P16680374246437240621.Spec : Prop :=
  ∀ n, P16680374246437240621.a n = A371596 n

end A371596

/-! ## A371596.P5714771175257911279

`2*A078057(n)-A099425(n)`
-/

namespace A371596.P5714771175257911279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078057 n - A099425 n

end

end A371596.P5714771175257911279

namespace A371596

/-- `2*A078057(n)-A099425(n)` -/
def P5714771175257911279.Spec : Prop :=
  ∀ n, P5714771175257911279.a n = A371596 n

end A371596

/-! ## A371596.P16621792393114077860

`Δ[A001333(n)+Δ[A215928(n)]]`
-/

namespace A371596.P16621792393114077860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371596.P16621792393114077860

namespace A371596

/-- `Δ[A001333(n)+Δ[A215928(n)]]` -/
def P16621792393114077860.Spec : Prop :=
  ∀ n, P16621792393114077860.a n = A371596 n

end A371596

/-! ## A371596.P18282893603077741093

`A119016(2*n+1)+A052542(n)`
-/

namespace A371596.P18282893603077741093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n + 1) + A052542 n

end

end A371596.P18282893603077741093

namespace A371596

/-- `A119016(2*n+1)+A052542(n)` -/
def P18282893603077741093.Spec : Prop :=
  ∀ n, P18282893603077741093.a n = A371596 n

end A371596

/-! ## A371596.P10126364986085967212

`A119016(2*n+1)+A082766(2*n+1)`
-/

namespace A371596.P10126364986085967212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n + 1) + A082766 (2 * n + 1)

end

end A371596.P10126364986085967212

namespace A371596

/-- `A119016(2*n+1)+A082766(2*n+1)` -/
def P10126364986085967212.Spec : Prop :=
  ∀ n, P10126364986085967212.a n = A371596 n

end A371596

/-! ## A371596.P7240440968408164680

`A105561(A105561(n+1))²*A215928(n)`
-/

namespace A371596.P7240440968408164680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105561 (A105561 (n + 1)).toNat ^ 2 * A215928 n

end

end A371596.P7240440968408164680

namespace A371596

/-- `A105561(A105561(n+1))²*A215928(n)` -/
def P7240440968408164680.Spec : Prop :=
  ∀ n, P7240440968408164680.a n = A371596 n

end A371596

/-!
# A371598: a(n) = (Product_{i=1..n} Fibonacci(i)) mod Fibonacci(n + 1).

The programs for A371598, there is no canonical definition to state claims against.
-/

/-! ## A371598.P2484719805012191237

`A003266(n+1)%A000045(n+2)`
-/

namespace A371598.P2484719805012191237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003266 (n + 1)) (A000045 (n + 2))

end

end A371598.P2484719805012191237

/-!
# A371599: Numbers of least prime signature (A025487) whose prime factorization has equal number of even and odd exponents.

The programs for A371599, there is no canonical definition to state claims against.
-/

/-! ## A371599.P15369674749524167534

`∩[A025487(n+1), A187039(n+1)]`
-/

namespace A371599.P15369674749524167534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371599.P15369674749524167534

/-! ## A371599.P11815344683627664481

`∩[A187039(n+1), A333964(n+1)]`
-/

namespace A371599.P11815344683627664481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371599.P11815344683627664481

/-! ## A371599.P10434045129935622688

`filter[A187039(n+1), A322585(#)]`
-/

namespace A371599.P10434045129935622688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A371599.P10434045129935622688

/-! ## A371599.P17248530558757608695

`∩[A034878(n+1), A187039(n+1)]`
-/

namespace A371599.P17248530558757608695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371599.P17248530558757608695

