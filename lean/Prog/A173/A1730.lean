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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A173000: a(n) = binomial(n + 4, 4)*9^n.

The programs for A173000, the canonical program `A173000.P8761777745281903887` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173000 has offset 0).

The definition of A173000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173000.P8761777745281903887

`A000332(n+4)*A001019(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173000

/-- `A000332(n+4)*A001019(n)` -/
def P8761777745281903887.Spec : Prop :=
  ∀ n, P8761777745281903887.a n = A173000 n

theorem P8761777745281903887.correct : P8761777745281903887.Spec := by
  intro n
  simp only [A173000]

end A173000

/-! ## A173000.P3628697647435566701

`9^n*C(n+4, 4)`
-/

namespace A173000.P3628697647435566701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * Nat.choose (n + 4) 4

end

end A173000.P3628697647435566701

namespace A173000

/-- `9^n*C(n+4, 4)` -/
def P3628697647435566701.Spec : Prop :=
  ∀ n, (P3628697647435566701.a n : ℤ) = A173000 n

end A173000

/-! ## A173000.P17660287390962113171

`9^n*∑[∑[∑[n+1]]]`
-/

namespace A173000.P17660287390962113171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173000.P17660287390962113171

namespace A173000

/-- `9^n*∑[∑[∑[n+1]]]` -/
def P17660287390962113171.Spec : Prop :=
  ∀ n, (P17660287390962113171.a n : ℤ) = A173000 n

end A173000

/-! ## A173000.P15876549651411582910

`Δ[3^n]*A036217(n)/2`
-/

namespace A173000.P15876549651411582910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A036217 n : ℚ) / 2

end

end A173000.P15876549651411582910

namespace A173000

/-- `Δ[3^n]*A036217(n)/2` -/
def P15876549651411582910.Spec : Prop :=
  ∀ n, P15876549651411582910.a n = (A173000 n : ℚ)

end A173000

/-! ## A173000.P9814560260430117668

`A038291(eq[4, A002262(n)])`
-/

namespace A173000.P9814560260430117668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173000.P9814560260430117668

namespace A173000

/-- `A038291(eq[4, A002262(n)])` -/
def P9814560260430117668.Spec : Prop :=
  ∀ n, P9814560260430117668.a n = A173000 n

end A173000

/-! ## A173000.P9464739681092877377

`A038291(eq[5, A002260(n+1)])`
-/

namespace A173000.P9464739681092877377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173000.P9464739681092877377

namespace A173000

/-- `A038291(eq[5, A002260(n+1)])` -/
def P9464739681092877377.Spec : Prop :=
  ∀ n, P9464739681092877377.a n = A173000 n

end A173000

/-! ## A173000.P15975378280840788802

`floor(A139626(n)/(A000051(n)-1)*3^n)`
-/

namespace A173000.P15975378280840788802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139626 n : ℚ) / (A000051 n - 1 : ℚ) * (3 ^ n : ℚ)⌋

end

end A173000.P15975378280840788802

namespace A173000

/-- `floor(A139626(n)/(A000051(n)-1)*3^n)` -/
def P15975378280840788802.Spec : Prop :=
  ∀ n, P15975378280840788802.a n = A173000 n

end A173000

/-! ## A173000.P17413322798233941628

`lcm(A000244(n)*A036217(n), A000244(n))`
-/

namespace A173000.P17413322798233941628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n * A036217 n) (A000244 n)

end

end A173000.P17413322798233941628

namespace A173000

/-- `lcm(A000244(n)*A036217(n), A000244(n))` -/
def P17413322798233941628.Spec : Prop :=
  ∀ n, (P17413322798233941628.a n : ℤ) = A173000 n

end A173000

/-! ## A173000.P8056187215150053126

`floor(A027471(n+2)*A080951(n)/A057711(n+1)*3^n)`
-/

namespace A173000.P8056187215150053126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027471 (n + 2) * A080951 n : ℚ) / (A057711 (n + 1) : ℚ) * (3 ^ n : ℚ)⌋

end

end A173000.P8056187215150053126

namespace A173000

/-- `floor(A027471(n+2)*A080951(n)/A057711(n+1)*3^n)` -/
def P8056187215150053126.Spec : Prop :=
  ∀ n, P8056187215150053126.a n = A173000 n

end A173000

/-! ## A173000.P3139380075326242811

`A013616(eq[4, A025581(n)])`
-/

namespace A173000.P3139380075326242811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173000.P3139380075326242811

namespace A173000

/-- `A013616(eq[4, A025581(n)])` -/
def P3139380075326242811.Spec : Prop :=
  ∀ n, P3139380075326242811.a n = A173000 n

end A173000

/-!
# A173001: Values of n such that exactly one of 5n+1 and 5n^2+5n+1 is prime.

The programs for A173001, there is no canonical definition to state claims against.
-/

/-! ## A173001.P18180035595472238334

`∑[A196274(A005287(n+4))]`
-/

namespace A173001.P18180035595472238334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (A005287 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173001.P18180035595472238334

/-! ## A173001.P4149930203820186528

`lt[A336423(3*n+2), dr(A054683(n+1))]`
-/

namespace A173001.P4149930203820186528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336423 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A054683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173001.P4149930203820186528

/-! ## A173001.P12418929616853149967

`lt[A227141(2*C(n, 3)), A227147(n+2)!]`
-/

namespace A173001.P12418929616853149967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227141 (2 * Nat.choose n 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A227147 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173001.P12418929616853149967

/-! ## A173001.P6339785752628271141

`A325130(n+1)-A055641(A003242(n))`
-/

namespace A173001.P6339785752628271141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1) - A055641 (A003242 n).toNat

end

end A173001.P6339785752628271141

/-!
# A173003: Antidiagonal triangle sequence based on recursion: f(n,a)=a*n*f(n-1,a)+f(n-2,a).

The programs for A173003, there is no canonical definition to state claims against.
-/

/-! ## A173003.P2191513997207324050

`A250002(A027193(n))+A109971(A038722(n+1))`
-/

namespace A173003.P2191513997207324050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A027193 n).toNat + A109971 (A038722 (n + 1)).toNat

end

end A173003.P2191513997207324050

/-! ## A173003.P7184520909220943731

`A226046(A320905(n+1))`
-/

namespace A173003.P7184520909220943731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A320905 (n + 1)).toNat

end

end A173003.P7184520909220943731

/-! ## A173003.P5753880057652090036

`A254045(A375354(n+1))`
-/

namespace A173003.P5753880057652090036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A375354 (n + 1)).toNat

end

end A173003.P5753880057652090036

/-! ## A173003.P12634425097583296978

`A360866(lt[28, A360862(3*(n+2))])`
-/

namespace A173003.P12634425097583296978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360862 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A173003.P12634425097583296978

/-! ## A173003.P4641172145535164279

`A341023(A193091(n))+A002262(n)`
-/

namespace A173003.P4641172145535164279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341023 ((A193091 n).toNat + 56) + A002262 n

end

end A173003.P4641172145535164279

/-!
# A173004: Square array A(n,k) read by antidiagonals: T(n,k) = A(n-k+1,k) where A(n,0)=0, A(n,1)=1, and A(n,k) = n*A(n,k-1) + k*A(n,k-2).

The programs for A173004, there is no canonical definition to state claims against.
-/

/-! ## A173004.P14372332184266969644

`A076620(A229417(n+1))-char[A079896(n+1)]`
-/

namespace A173004.P14372332184266969644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A229417 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A173004.P14372332184266969644

/-! ## A173004.P14819990854239647130

`floor(A008949(n)/A001221(A249530(n+1)))`
-/

namespace A173004.P14819990854239647130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008949 n : ℚ) / (A001221 (A249530 (n + 1)).toNat : ℚ)⌋

end

end A173004.P14819990854239647130

/-! ## A173004.P1961057006326706509

`A287866(A137634(n))`
-/

namespace A173004.P1961057006326706509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287866 (A137634 n).toNat

end

end A173004.P1961057006326706509

/-! ## A173004.P12790445832826023645

`A172263(A355257(n))`
-/

namespace A173004.P12790445832826023645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A355257 n).toNat

end

end A173004.P12790445832826023645

/-! ## A173004.P17170317397036067959

`A257564(A378062(n))`
-/

namespace A173004.P17170317397036067959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A378062 n).toNat

end

end A173004.P17170317397036067959

/-!
# A173005: A product triangle sequence based on recursion:a=4; f(n,a)=(2*a+1)*f(n-1,a)+f(n-2,a).

The programs for A173005, there is no canonical definition to state claims against.
-/

/-! ## A173005.P12446614630575206247

`A335358(A022167(n)*A152972(n))`
-/

namespace A173005.P12446614630575206247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 (A022167 n * A152972 n).toNat

end

end A173005.P12446614630575206247

/-! ## A173005.P13772066163531745366

`A018913(A007318(n)^A050782(n))`
-/

namespace A173005.P13772066163531745366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A050782 n : ℤ))).toNat

end

end A173005.P13772066163531745366

/-! ## A173005.P17625071100632517563

`A018913(A095142(n)^A033630(n))`
-/

namespace A173005.P17625071100632517563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (SequenceMachineLib.roundAway ((A095142 n : ℚ) ^ (A033630 n : ℤ))).toNat

end

end A173005.P17625071100632517563

/-! ## A173005.P3773550769576312391

`A018913(sqrt(A008459(n))^A122083(n))`
-/

namespace A173005.P3773550769576312391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ) ^ (A122083 n : ℤ))).toNat

end

end A173005.P3773550769576312391

/-! ## A173005.P10767909076861458524

`A018913(Δ[A102363(n)]^A122083(n))`
-/

namespace A173005.P10767909076861458524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) ^ (A122083 n : ℤ))).toNat

end

end A173005.P10767909076861458524

/-!
# A173006: A product triangle sequence based on recursion:a=5; f(n,a)=(2*a+1)*f(n-1,a)+f(n-2,a).

The programs for A173006, there is no canonical definition to state claims against.
-/

/-! ## A173006.P11151224302512553194

`A004190(A014473(n)^A058306(n))`
-/

namespace A173006.P11151224302512553194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004190 (SequenceMachineLib.roundAway ((A014473 n : ℚ) ^ (A058306 n : ℤ))).toNat

end

end A173006.P11151224302512553194

/-! ## A173006.P11838553787224814704

`A004190(A228275(n))%A294900(n+1)`
-/

namespace A173006.P11838553787224814704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004190 (A228275 n).toNat) (A294900 (n + 1))

end

end A173006.P11838553787224814704

/-! ## A173006.P1848112488733265424

`A004190(A004247(n)%A004196(n+5))`
-/

namespace A173006.P1848112488733265424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004190 (Int.tmod (A004247 n) (A004196 (n + 5))).toNat

end

end A173006.P1848112488733265424

/-! ## A173006.P8692527630422479230

`A004190(A226545(n)%A279407(n+5))`
-/

namespace A173006.P8692527630422479230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004190 (Int.tmod (A226545 n) (A279407 (n + 5))).toNat

end

end A173006.P8692527630422479230

/-! ## A173006.P5620050623505679548

`A237667(gcd(A104460(n+1), A376619(n+1)))`
-/

namespace A173006.P5620050623505679548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 (Int.gcd (A104460 (n + 1)) (A376619 (n + 1)))

end

end A173006.P5620050623505679548

/-!
# A173007: Triangle T(n,k) read by rows: coefficient [x^k] of the polynomial Product_{i=1..n} (x + q^i) in row n and q = 3.

The programs for A173007, there is no canonical definition to state claims against.
-/

/-! ## A173007.P2898922314955943887

`A022167(n)*A047656(A004736(n+1))`
-/

namespace A173007.P2898922314955943887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A047656 (A004736 (n + 1)).toNat

end

end A173007.P2898922314955943887

/-! ## A173007.P3735157160397619016

`lcm(A047656(A004736(n+1)), A157783(n))`
-/

namespace A173007.P3735157160397619016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047656 (A004736 (n + 1)).toNat) (A157783 n)

end

end A173007.P3735157160397619016

/-! ## A173007.P8204983349735502253

`A007955(A140303(n))*A022167(n)`
-/

namespace A173007.P8204983349735502253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A140303 n).toNat * A022167 n

end

end A173007.P8204983349735502253

/-!
# A173008: Triangle T(n,k) read by rows: coefficient [x^k] of the polynomial Product_{i=1..n} (x + q^i) in row n, column 0<=k<=n, and q = 4.

The programs for A173008, there is no canonical definition to state claims against.
-/

/-! ## A173008.P13627956125905966132

`A022168(n)*A053763(A004736(n+1))`
-/

namespace A173008.P13627956125905966132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n * A053763 (A004736 (n + 1)).toNat

end

end A173008.P13627956125905966132

/-! ## A173008.P12355826080631282524

`A000079(A095832(n+1))*A022168(n)`
-/

namespace A173008.P12355826080631282524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A095832 (n + 1)).toNat * A022168 n

end

end A173008.P12355826080631282524

/-! ## A173008.P11254911170134994927

`lcm(A053763(A004736(n+1)), A157784(n))`
-/

namespace A173008.P11254911170134994927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053763 (A004736 (n + 1)).toNat) (A157784 n)

end

end A173008.P11254911170134994927

/-! ## A173008.P13649344776837986740

`abs(A000079(A025581(n))²*A157784(n))`
-/

namespace A173008.P13649344776837986740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (A025581 n).toNat ^ 2 * A157784 n|

end

end A173008.P13649344776837986740

/-! ## A173008.P7191846778305587320

`abs(A000079(2*A025581(n))*A157784(n))`
-/

namespace A173008.P7191846778305587320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (2 * A025581 n).toNat * A157784 n|

end

end A173008.P7191846778305587320

/-!
# A173009: Expansion of o.g.f. x*(1 - x + x^2)/(1 -3*x +x^2 +3*x^3 -2*x^4).

The programs for A173009, the canonical program `A173009.P7865311023066401779` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173009 has offset 1).

The definition of A173009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173009.P7865311023066401779

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173009

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P7865311023066401779.Spec : Prop :=
  ∀ n, P7865311023066401779.a n = A173009 (n + 1)

theorem P7865311023066401779.correct : P7865311023066401779.Spec := by
  intro n
  simp only [A173009, Nat.add_sub_cancel]

end A173009

/-! ## A173009.P14159928219507633572

`round(A000295(n+1)/2)`
-/

namespace A173009.P14159928219507633572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000295 (n + 1) : ℚ) / 2)

end

end A173009.P14159928219507633572

namespace A173009

/-- `round(A000295(n+1)/2)` -/
def P14159928219507633572.Spec : Prop :=
  ∀ n, P14159928219507633572.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P5971253023803053727

`2^n-∑[char[2*n]]`
-/

namespace A173009.P5971253023803053727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A173009.P5971253023803053727

namespace A173009

/-- `2^n-∑[char[2*n]]` -/
def P5971253023803053727.Spec : Prop :=
  ∀ n, P5971253023803053727.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P7653823585164870759

`floor(∑[A255047(n)/2])`
-/

namespace A173009.P7653823585164870759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255047 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A173009.P7653823585164870759

namespace A173009

/-- `floor(∑[A255047(n)/2])` -/
def P7653823585164870759.Spec : Prop :=
  ∀ n, P7653823585164870759.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P14308002767716256304

`ceil(∑[A000225(n)/2])`
-/

namespace A173009.P14308002767716256304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A173009.P14308002767716256304

namespace A173009

/-- `ceil(∑[A000225(n)/2])` -/
def P14308002767716256304.Spec : Prop :=
  ∀ n, P14308002767716256304.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P7504108559964349416

`ceil(A000295(n)+n/2)`
-/

namespace A173009.P7504108559964349416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000295 n : ℚ) + (n : ℚ) / 2⌉

end

end A173009.P7504108559964349416

namespace A173009

/-- `ceil(A000295(n)+n/2)` -/
def P7504108559964349416.Spec : Prop :=
  ∀ n, P7504108559964349416.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P2070486031787347643

`ceil(∑[∑[A131577(n)/2]])`
-/

namespace A173009.P2070486031787347643
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A173009.P2070486031787347643

namespace A173009

/-- `ceil(∑[∑[A131577(n)/2]])` -/
def P2070486031787347643.Spec : Prop :=
  ∀ n, P2070486031787347643.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P17900806208549340354

`abs(1-(2^n-A002265(2*n)))`
-/

namespace A173009.P17900806208549340354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((2 ^ n : ℤ) - A002265 (2 * n))|

end

end A173009.P17900806208549340354

namespace A173009

/-- `abs(1-(2^n-A002265(2*n)))` -/
def P17900806208549340354.Spec : Prop :=
  ∀ n, P17900806208549340354.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P1632064310937227242

`xor(A000295(n), A003188(n))`
-/

namespace A173009.P1632064310937227242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000295 n) (A003188 n)

end

end A173009.P1632064310937227242

namespace A173009

/-- `xor(A000295(n), A003188(n))` -/
def P1632064310937227242.Spec : Prop :=
  ∀ n, P1632064310937227242.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P11557122828758750067

`xor(A000225(n), A004526(n))`
-/

namespace A173009.P11557122828758750067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A004526 n)

end

end A173009.P11557122828758750067

namespace A173009

/-- `xor(A000225(n), A004526(n))` -/
def P11557122828758750067.Spec : Prop :=
  ∀ n, P11557122828758750067.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P8760930332110937805

`xor(A123108(n), A255047(n))`
-/

namespace A173009.P8760930332110937805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123108 n) (A255047 n)

end

end A173009.P8760930332110937805

namespace A173009

/-- `xor(A123108(n), A255047(n))` -/
def P8760930332110937805.Spec : Prop :=
  ∀ n, P8760930332110937805.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P9230599354389611608

`xor(A135481(n), A320933(n))`
-/

namespace A173009.P9230599354389611608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135481 n) (A320933 n)

end

end A173009.P9230599354389611608

namespace A173009

/-- `xor(A135481(n), A320933(n))` -/
def P9230599354389611608.Spec : Prop :=
  ∀ n, P9230599354389611608.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P17131141926314977386

`abs(A002265(2*n)+1-A000079(n))`
-/

namespace A173009.P17131141926314977386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002265 (2 * n) + 1 - A000079 n|

end

end A173009.P17131141926314977386

namespace A173009

/-- `abs(A002265(2*n)+1-A000079(n))` -/
def P17131141926314977386.Spec : Prop :=
  ∀ n, P17131141926314977386.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P6339993791615020984

`(or(1, ∑[2^n]-n)-1)/2`
-/

namespace A173009.P6339993791615020984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) - 1 : ℚ) / 2

end

end A173009.P6339993791615020984

namespace A173009

/-- `(or(1, ∑[2^n]-n)-1)/2` -/
def P6339993791615020984.Spec : Prop :=
  ∀ n, P6339993791615020984.a n = (A173009 (n + 1) : ℚ)

end A173009

/-! ## A173009.P10862077960731713309

`(A084173(n)-1)/2`
-/

namespace A173009.P10862077960731713309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084173 n - 1 : ℚ) / 2

end

end A173009.P10862077960731713309

namespace A173009

/-- `(A084173(n)-1)/2` -/
def P10862077960731713309.Spec : Prop :=
  ∀ n, P10862077960731713309.a n = (A173009 (n + 1) : ℚ)

end A173009

/-! ## A173009.P15232104729029016126

`floor(A083706(n)/2-n)`
-/

namespace A173009.P15232104729029016126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083706 n : ℚ) / 2 - (n : ℚ)⌋

end

end A173009.P15232104729029016126

namespace A173009

/-- `floor(A083706(n)/2-n)` -/
def P15232104729029016126.Spec : Prop :=
  ∀ n, P15232104729029016126.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P14161328005679854645

`floor((A126646(n)-n)/2)`
-/

namespace A173009.P14161328005679854645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126646 n - (n : ℤ) : ℚ) / 2⌋

end

end A173009.P14161328005679854645

namespace A173009

/-- `floor((A126646(n)-n)/2)` -/
def P14161328005679854645.Spec : Prop :=
  ∀ n, P14161328005679854645.a n = A173009 (n + 1)

end A173009

/-! ## A173009.P2838752813988214316

`(∑[A062510(n)]-n)/2`
-/

namespace A173009.P2838752813988214316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A173009.P2838752813988214316

namespace A173009

/-- `(∑[A062510(n)]-n)/2` -/
def P2838752813988214316.Spec : Prop :=
  ∀ n, P2838752813988214316.a n = (A173009 (n + 1) : ℚ)

end A173009

/-! ## A173009.P8558324985828238558

`∑[floor(Δ[A141023(n)/2])]`
-/

namespace A173009.P8558324985828238558
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141023 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173009.P8558324985828238558

namespace A173009

/-- `∑[floor(Δ[A141023(n)/2])]` -/
def P8558324985828238558.Spec : Prop :=
  ∀ n, P8558324985828238558.a n = A173009 (n + 1)

end A173009

/-!
# A173010: a(n) = round((2^n - n - 1)/4).

The programs for A173010, the canonical program `A173010.P4199476158976118774` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173010 has offset 1).

The definition of A173010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173010.P4199476158976118774

`round(A000295(n+1)/4)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173010

/-- `round(A000295(n+1)/4)` -/
def P4199476158976118774.Spec : Prop :=
  ∀ n, P4199476158976118774.a n = A173010 (n + 1)

theorem P4199476158976118774.correct : P4199476158976118774.Spec := by
  intro n
  simp only [A173010, Nat.add_sub_cancel]

end A173010

/-! ## A173010.P13750112512480875008

`A131577(n)-∑[char[4*n+1]]`
-/

namespace A173010.P13750112512480875008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A173010.P13750112512480875008

namespace A173010

/-- `A131577(n)-∑[char[4*n+1]]` -/
def P13750112512480875008.Spec : Prop :=
  ∀ n, P13750112512480875008.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P11280787599623742993

`floor(2^(n-1))+n-A047203(n+1)`
-/

namespace A173010.P11280787599623742993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (n : ℤ) - A047203 (n + 1)

end

end A173010.P11280787599623742993

namespace A173010

/-- `floor(2^(n-1))+n-A047203(n+1)` -/
def P11280787599623742993.Spec : Prop :=
  ∀ n, P11280787599623742993.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P3865415378280043916

`A131577(n)-A047203(n+1)+n`
-/

namespace A173010.P3865415378280043916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A047203 (n + 1) + (n : ℤ)

end

end A173010.P3865415378280043916

namespace A173010

/-- `A131577(n)-A047203(n+1)+n` -/
def P3865415378280043916.Spec : Prop :=
  ∀ n, P3865415378280043916.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P7507407117952310435

`A011782(n)-A002265(abs(1-n)+4)`
-/

namespace A173010.P7507407117952310435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A002265 (|1 - (n : ℤ)| + 4).toNat

end

end A173010.P7507407117952310435

namespace A173010

/-- `A011782(n)-A002265(abs(1-n)+4)` -/
def P7507407117952310435.Spec : Prop :=
  ∀ n, P7507407117952310435.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P9571230262680843565

`ceil(2^(n-1))-A065033(A065033(n))`
-/

namespace A173010.P9571230262680843565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A065033 (A065033 n).toNat

end

end A173010.P9571230262680843565

namespace A173010

/-- `ceil(2^(n-1))-A065033(A065033(n))` -/
def P9571230262680843565.Spec : Prop :=
  ∀ n, P9571230262680843565.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P18191862627624445633

`A057360(2*n)+A158780(2*n)-n`
-/

namespace A173010.P18191862627624445633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (2 * n) + (A158780 (2 * n) - (n : ℤ))

end

end A173010.P18191862627624445633

namespace A173010

/-- `A057360(2*n)+A158780(2*n)-n` -/
def P18191862627624445633.Spec : Prop :=
  ∀ n, P18191862627624445633.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P4164810152337039188

`A094373(n)-A008619(A008619(n+1))`
-/

namespace A173010.P4164810152337039188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A008619 (A008619 (n + 1)).toNat

end

end A173010.P4164810152337039188

namespace A173010

/-- `A094373(n)-A008619(A008619(n+1))` -/
def P4164810152337039188.Spec : Prop :=
  ∀ n, P4164810152337039188.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P17823527757310733775

`A034008(n+1)-A110654(A110654(n))`
-/

namespace A173010.P17823527757310733775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) - A110654 (A110654 n).toNat

end

end A173010.P17823527757310733775

namespace A173010

/-- `A034008(n+1)-A110654(A110654(n))` -/
def P17823527757310733775.Spec : Prop :=
  ∀ n, P17823527757310733775.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P13812475153072393567

`A094373(n)-A080513(A080513(n)-1)`
-/

namespace A173010.P13812475153072393567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A080513 (A080513 n - 1).toNat

end

end A173010.P13812475153072393567

namespace A173010

/-- `A094373(n)-A080513(A080513(n)-1)` -/
def P13812475153072393567.Spec : Prop :=
  ∀ n, P13812475153072393567.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P12142284685509287107

`A034008(n+1)-A004526(A008619(n+1))`
-/

namespace A173010.P12142284685509287107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) - A004526 (A008619 (n + 1)).toNat

end

end A173010.P12142284685509287107

namespace A173010

/-- `A034008(n+1)-A004526(A008619(n+1))` -/
def P12142284685509287107.Spec : Prop :=
  ∀ n, P12142284685509287107.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P14720715186699747640

`A034008(n+1)-A004526(A004526(n+3))`
-/

namespace A173010.P14720715186699747640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) - A004526 (A004526 (n + 3)).toNat

end

end A173010.P14720715186699747640

namespace A173010

/-- `A034008(n+1)-A004526(A004526(n+3))` -/
def P14720715186699747640.Spec : Prop :=
  ∀ n, P14720715186699747640.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P13664862507241182580

`round(∑[(2^n-1)/4])`
-/

namespace A173010.P13664862507241182580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173010.P13664862507241182580

namespace A173010

/-- `round(∑[(2^n-1)/4])` -/
def P13664862507241182580.Spec : Prop :=
  ∀ n, P13664862507241182580.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P8538231006005802788

`floor(A084174(n)/2)`
-/

namespace A173010.P8538231006005802788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084174 n : ℚ) / 2⌋

end

end A173010.P8538231006005802788

namespace A173010

/-- `floor(A084174(n)/2)` -/
def P8538231006005802788.Spec : Prop :=
  ∀ n, P8538231006005802788.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P8178533669998541426

`ceil(A320933(n)/2)`
-/

namespace A173010.P8178533669998541426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320933 n : ℚ) / 2⌉

end

end A173010.P8178533669998541426

namespace A173010

/-- `ceil(A320933(n)/2)` -/
def P8178533669998541426.Spec : Prop :=
  ∀ n, P8178533669998541426.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P438428579897127205

`floor((A000079(n)-A110654(n))/2)`
-/

namespace A173010.P438428579897127205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n - A110654 n : ℚ) / 2⌋

end

end A173010.P438428579897127205

namespace A173010

/-- `floor((A000079(n)-A110654(n))/2)` -/
def P438428579897127205.Spec : Prop :=
  ∀ n, P438428579897127205.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P15513799623305179867

`round(A000225(n)/2)-A110655(n)`
-/

namespace A173010.P15513799623305179867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000225 n : ℚ) / 2) - A110655 n

end

end A173010.P15513799623305179867

namespace A173010

/-- `round(A000225(n)/2)-A110655(n)` -/
def P15513799623305179867.Spec : Prop :=
  ∀ n, P15513799623305179867.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P5757379248337164662

`Δ[A011782(n)]-A110654(A110654(n))`
-/

namespace A173010.P5757379248337164662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110654 (A110654 n).toNat

end

end A173010.P5757379248337164662

namespace A173010

/-- `Δ[A011782(n)]-A110654(A110654(n))` -/
def P5757379248337164662.Spec : Prop :=
  ∀ n, P5757379248337164662.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P6342143189500420615

`floor((A000079(n+1)-n)/4)`
-/

namespace A173010.P6342143189500420615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) - (n : ℤ) : ℚ) / 4⌋

end

end A173010.P6342143189500420615

namespace A173010

/-- `floor((A000079(n+1)-n)/4)` -/
def P6342143189500420615.Spec : Prop :=
  ∀ n, P6342143189500420615.a n = A173010 (n + 1)

end A173010

/-! ## A173010.P13728015954192444593

`floor((A155559(n+1)-n)/4)`
-/

namespace A173010.P13728015954192444593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155559 (n + 1) - (n : ℤ) : ℚ) / 4⌋

end

end A173010.P13728015954192444593

namespace A173010

/-- `floor((A155559(n+1)-n)/4)` -/
def P13728015954192444593.Spec : Prop :=
  ∀ n, P13728015954192444593.a n = A173010 (n + 1)

end A173010

/-!
# A173012: a(1) = 1, for n >= 2; a(n) = the smallest number h such that sigma(h) = A000203(h) = a(n-1) + 2, a(n) = 0 if no such number exists.

The programs for A173012, the canonical program `A173012.P6241669055184447807` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173012 has offset 1).

The definition of A173012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A173012.P6241669055184447807`, by `A173012.P6241669055184447807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173012.P6241669055184447807

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173012

/-- `a(n-1)` -/
def P6241669055184447807.Spec : Prop :=
  ∀ n, (P6241669055184447807.a n : ℤ) = A173012 (n + 1)

theorem P6241669055184447807.correct : P6241669055184447807.Spec := by
  intro n
  simp only [A173012, Nat.add_sub_cancel]

end A173012

/-!
# A173013: a(1) = 1, for n >= 2; a(n) = the smallest number h such that sigma(h) = A000203(h) = a(n-1) + 3, a(n) = 0 if no such number exists.

The programs for A173013, the canonical program `A173013.P5957264422260819099` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173013 has offset 1).

The definition of A173013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173013.P5957264422260819099

`a(n-2)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=0, a(5)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173013

/-- `a(n-2)` -/
def P5957264422260819099.Spec : Prop :=
  ∀ n, (P5957264422260819099.a n : ℤ) = A173013 (n + 1)

theorem P5957264422260819099.correct : P5957264422260819099.Spec := by
  intro n
  simp only [A173013, Nat.add_sub_cancel]

end A173013

/-!
# A173014: a(1) = 1, for n >= 2; a(n) = the smallest number h such that sigma(h) = A000203(h) = a(n-1) + 4, a(n) = 0 if no such number exists.

The programs for A173014, the canonical program `A173014.P3903345232513258109` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173014 has offset 1).

The definition of A173014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173014.P3903345232513258109

`a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173014

/-- `a(n-4)` -/
def P3903345232513258109.Spec : Prop :=
  ∀ n, (P3903345232513258109.a n : ℤ) = A173014 (n + 1)

theorem P3903345232513258109.correct : P3903345232513258109.Spec := by
  intro n
  simp only [A173014, Nat.add_sub_cancel]

end A173014

/-!
# A173015: Numbers k such that sequence of type a_k(n): {a(1) = 1, for n >= 2: a(n) = the smallest number h such that sigma(h) = A000203(h) = a(n-1) + k, a(n) = 0 if no such number exists} is sequence A063524(n) for n >= 1.

The programs for A173015, the canonical program `A173015.P11072420852092885662` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173015 has offset 1).

The definition of A173015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173015.P7677282643079694402

`comp[A173016(n+1)-1]+1`
-/

namespace A173015.P7677282643079694402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173016 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A173015.P7677282643079694402

namespace A173015

/-- `comp[A173016(n+1)-1]+1` -/
def P7677282643079694402.Spec : Prop :=
  ∀ n, (P7677282643079694402.a n : ℤ) = A173015 (n + 1)

end A173015

/-! ## A173015.P11072420852092885662

`comp[A000203(floor(n/2)+1)-n%2]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173015

/-- `comp[A000203(floor(n/2)+1)-n%2]` -/
def P11072420852092885662.Spec : Prop :=
  ∀ n, (P11072420852092885662.a n : ℤ) = A173015 (n + 1)

theorem P11072420852092885662.correct : P11072420852092885662.Spec := by
  intro n
  simp only [A173015, Nat.add_sub_cancel]

end A173015

/-! ## A173015.P7739804349514709626

`∩[A007369(n+1)-1, A007369(n+1)]`
-/

namespace A173015.P7739804349514709626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173015.P7739804349514709626

namespace A173015

/-- `∩[A007369(n+1)-1, A007369(n+1)]` -/
def P7739804349514709626.Spec : Prop :=
  ∀ n, (P7739804349514709626.a n : ℤ) = A173015 (n + 1)

end A173015

/-! ## A173015.P4364698872688850470

`lt[char[∑{d}[n+1, #]], A175253(n+1)]`
-/

namespace A173015.P4364698872688850470
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A173015.P4364698872688850470

namespace A173015

/-- `lt[char[∑{d}[n+1, #]], A175253(n+1)]` -/
def P4364698872688850470.Spec : Prop :=
  ∀ n, (P4364698872688850470.a n : ℤ) = A173015 (n + 1)

end A173015

/-! ## A173015.P6594322833024918435

`eq[char[A000203(n+1)], A057637(n+1)]`
-/

namespace A173015.P6594322833024918435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A173015.P6594322833024918435

namespace A173015

/-- `eq[char[A000203(n+1)], A057637(n+1)]` -/
def P6594322833024918435.Spec : Prop :=
  ∀ n, (P6594322833024918435.a n : ℤ) = A173015 (n + 1)

end A173015

/-! ## A173015.P14954959313469443734

`lt[char[A000203(n+1)], A175253(n+1)]`
-/

namespace A173015.P14954959313469443734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A173015.P14954959313469443734

namespace A173015

/-- `lt[char[A000203(n+1)], A175253(n+1)]` -/
def P14954959313469443734.Spec : Prop :=
  ∀ n, (P14954959313469443734.a n : ℤ) = A173015 (n + 1)

end A173015

/-! ## A173015.P10814599933219597239

`eq[A051444(n+1), A051444(n+2)]+1`
-/

namespace A173015.P10814599933219597239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173015.P10814599933219597239

namespace A173015

/-- `eq[A051444(n+1), A051444(n+2)]+1` -/
def P10814599933219597239.Spec : Prop :=
  ∀ n, (P10814599933219597239.a n : ℤ) = A173015 (n + 1)

end A173015

/-!
# A173016: Numbers k such that the sequence B = B_k defined by {B(1) = 1; for i >= 2: B(i) = the smallest number h such that sigma(h) = A000203(h) = B(i-1) + k; or B(i) = 0 if no such number h exists} is not the sequence {A063524(j): j >= 1}.

The programs for A173016, the canonical program `A173016.P1321067361305043164` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173016 has offset 1).

The definition of A173016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173016.P1321067361305043164

`∪[A002191(n+1), ∑[A083531(n+1)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173016

/-- `∪[A002191(n+1), ∑[A083531(n+1)]]` -/
def P1321067361305043164.Spec : Prop :=
  ∀ n, (P1321067361305043164.a n : ℤ) = A173016 (n + 1)

theorem P1321067361305043164.correct : P1321067361305043164.Spec := by
  intro n
  simp only [A173016, Nat.add_sub_cancel]

end A173016

/-! ## A173016.P3031213450893974818

`∪[A002191(n+1), A002191(n+2)-1]`
-/

namespace A173016.P3031213450893974818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173016.P3031213450893974818

namespace A173016

/-- `∪[A002191(n+1), A002191(n+2)-1]` -/
def P3031213450893974818.Spec : Prop :=
  ∀ n, (P3031213450893974818.a n : ℤ) = A173016 (n + 1)

end A173016

/-! ## A173016.P14020688136741066076

`record[A002191(A065033(n))-n%2]`
-/

namespace A173016.P14020688136741066076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (A065033 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173016.P14020688136741066076

namespace A173016

/-- `record[A002191(A065033(n))-n%2]` -/
def P14020688136741066076.Spec : Prop :=
  ∀ n, P14020688136741066076.a n = A173016 (n + 1)

end A173016

/-!
# A173018: Euler's triangle: triangle of Eulerian numbers T(n,k) (n>=0, 0 <= k <= n) read by rows.

The programs for A173018, there is no canonical definition to state claims against.
-/

/-! ## A173018.P1183203170371261550

`A008518(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A173018.P1183203170371261550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008518 n - a (n - 1)

end

end A173018.P1183203170371261550

/-! ## A173018.P3274644307888062910

`A123125(2-(1-n)%(n+1))`
-/

namespace A173018.P3274644307888062910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (2 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A173018.P3274644307888062910

/-! ## A173018.P4674248187274682816

`A123125((n+1)%(2*n+1))`
-/

namespace A173018.P4674248187274682816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 ((n + 1) % (2 * n + 1))

end

end A173018.P4674248187274682816

/-! ## A173018.P1407239168536222110

`A123125(A028310(n)+1)`
-/

namespace A173018.P1407239168536222110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A028310 n + 1).toNat

end

end A173018.P1407239168536222110

/-! ## A173018.P16196779732217150403

`A123125(A087156(n+1))`
-/

namespace A173018.P16196779732217150403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A087156 (n + 1)).toNat

end

end A173018.P16196779732217150403

/-! ## A173018.P5364056856272353580

`A123125(A254667(n+1))`
-/

namespace A173018.P5364056856272353580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A254667 (n + 1)).toNat

end

end A173018.P5364056856272353580

/-! ## A173018.P3193076678425220500

`A123125(A199969(n+2))`
-/

namespace A173018.P3193076678425220500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A199969 (n + 2)).toNat

end

end A173018.P3193076678425220500

/-! ## A173018.P16658087705702309652

`A123125(A057427(n)+n)`
-/

namespace A173018.P16658087705702309652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A057427 n + (n : ℤ)).toNat

end

end A173018.P16658087705702309652

/-! ## A173018.P3824431017073457271

`A123125(n+1)+A000007(n)`
-/

namespace A173018.P3824431017073457271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (n + 1) + A000007 n

end

end A173018.P3824431017073457271

/-! ## A173018.P3053329133716668857

`A123125(A004277(n)+1-n)`
-/

namespace A173018.P3053329133716668857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A004277 n + (1 - (n : ℤ))).toNat

end

end A173018.P3053329133716668857

/-! ## A173018.P16462620889351853188

`A123125(A103517(n)-(n+1))`
-/

namespace A173018.P16462620889351853188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A103517 n - (n + 1 : ℤ)).toNat

end

end A173018.P16462620889351853188

/-! ## A173018.P7246566498536317260

`A123125(1-(A000007(n)-n))`
-/

namespace A173018.P7246566498536317260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (1 - (A000007 n - (n : ℤ))).toNat

end

end A173018.P7246566498536317260

/-! ## A173018.P12506900609201794824

`A123125(1-(n-A004277(n)))`
-/

namespace A173018.P12506900609201794824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A173018.P12506900609201794824

/-! ## A173018.P2828575311859672594

`A123125(A103517(n)-1-n)`
-/

namespace A173018.P2828575311859672594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A103517 n - 1 - (n : ℤ)).toNat

end

end A173018.P2828575311859672594

/-! ## A173018.P5289046838687130500

`A123125(2-(A057427(n)-n))`
-/

namespace A173018.P5289046838687130500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (2 - (A057427 n - (n : ℤ))).toNat

end

end A173018.P5289046838687130500

/-! ## A173018.P10641653481439349467

`A123125(A178226(2*n)+n)`
-/

namespace A173018.P10641653481439349467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A178226 (2 * n) + (n : ℤ)).toNat

end

end A173018.P10641653481439349467

/-! ## A173018.P5647238498934181171

`A123125(A267635(2*n+1)+n)`
-/

namespace A173018.P5647238498934181171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A267635 (2 * n + 1) + (n : ℤ)).toNat

end

end A173018.P5647238498934181171

/-! ## A173018.P15957719151616647133

`A123125(A005408(n)-A028310(n))`
-/

namespace A173018.P15957719151616647133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A005408 n - A028310 n).toNat

end

end A173018.P15957719151616647133

/-! ## A173018.P17256787521251020827

`A123125(A133263(n+1)-A133263(n))`
-/

namespace A173018.P17256787521251020827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A133263 (n + 1) - A133263 n).toNat

end

end A173018.P17256787521251020827

/-! ## A173018.P3867615809120392554

`A000720(2*(n+1))+A123125(n+1)-A000720(2*n+1)`
-/

namespace A173018.P3867615809120392554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) + (A123125 (n + 1) - A000720 (2 * n + 1))

end

end A173018.P3867615809120392554

/-!
# A173019: a(n) is the value of row n in triangle A083093 seen as ternary number.

The programs for A173019, there is no canonical definition to state claims against.
-/

/-! ## A173019.P15218349201273742789

`A242399(a(n-1))` with `a(0)=1`
-/

namespace A173019.P15218349201273742789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242399 (a (n - 1)).toNat

end

end A173019.P15218349201273742789

/-! ## A173019.P14747921931476496555

`A071770(3*a(n-1))` with `a(0)=1`
-/

namespace A173019.P14747921931476496555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071770 (3 * a (n - 1)).toNat

end

end A173019.P14747921931476496555

/-! ## A173019.P4475547539888066177

`A117967(A117977(n))`
-/

namespace A173019.P4475547539888066177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A117977 n).toNat

end

end A173019.P4475547539888066177

/-! ## A173019.P6954960607798693266

`record[A242399(a(A004247(n)))]` with `a(0)=1`
-/

namespace A173019.P6954960607798693266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A242399 (f1 (A004247 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173019.P6954960607798693266

/-! ## A173019.P9224348540768043069

`record[A242399(a(A048735(n)))]` with `a(0)=1`
-/

namespace A173019.P9224348540768043069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A242399 (f1 (A048735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173019.P9224348540768043069

/-!
# A173021: Number of numbers <= n whose binary representation is without isolated ones or isolated double ones.

The programs for A173021, the canonical program `A173021.P684069692350449466` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173021 has offset 0).

The definition of A173021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173021.P684069692350449466

`∑[char[A173024(n+1)]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A173021

/-- `∑[char[A173024(n+1)]]` -/
def P684069692350449466.Spec : Prop :=
  ∀ n, (P684069692350449466.a n : ℤ) = A173021 n

theorem P684069692350449466.correct : P684069692350449466.Spec := by
  intro n
  simp only [A173021]

end A173021

/-! ## A173021.P14723174469163561183

`∑[char[or(n, A269160(n))]]`
-/

namespace A173021.P14723174469163561183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A269160 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P14723174469163561183

namespace A173021

/-- `∑[char[or(n, A269160(n))]]` -/
def P14723174469163561183.Spec : Prop :=
  ∀ n, (P14723174469163561183.a n : ℤ) = A173021 n

end A173021

/-! ## A173021.P7865913684918630125

`∑[char[A163617(A163617(n))]]`
-/

namespace A173021.P7865913684918630125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A163617 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P7865913684918630125

namespace A173021

/-- `∑[char[A163617(A163617(n))]]` -/
def P7865913684918630125.Spec : Prop :=
  ∀ n, (P7865913684918630125.a n : ℤ) = A173021 n

end A173021

/-! ## A173021.P3529755749935749538

`∑[A133639(A246029(n)²)]`
-/

namespace A173021.P3529755749935749538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133639 (A246029 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P3529755749935749538

namespace A173021

/-- `∑[A133639(A246029(n)²)]` -/
def P3529755749935749538.Spec : Prop :=
  ∀ n, P3529755749935749538.a n = A173021 n

end A173021

/-! ## A173021.P16676247069674822963

`∑[A163537(A167614(A278222(n)))]`
-/

namespace A173021.P16676247069674822963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163537 (A167614 (A278222 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P16676247069674822963

namespace A173021

/-- `∑[A163537(A167614(A278222(n)))]` -/
def P16676247069674822963.Spec : Prop :=
  ∀ n, P16676247069674822963.a n = A173021 n

end A173021

/-! ## A173021.P9264800808144571106

`∑[A039966(5*5*A005836(n+1))]`
-/

namespace A173021.P9264800808144571106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (5 * (5 * A005836 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P9264800808144571106

namespace A173021

/-- `∑[A039966(5*5*A005836(n+1))]` -/
def P9264800808144571106.Spec : Prop :=
  ∀ n, P9264800808144571106.a n = A173021 n

end A173021

/-! ## A173021.P9729025750747802656

`∑[A140820(2*n²)]`
-/

namespace A173021.P9729025750747802656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140820 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173021.P9729025750747802656

namespace A173021

/-- `∑[A140820(2*n²)]` -/
def P9729025750747802656.Spec : Prop :=
  ∀ n, P9729025750747802656.a n = A173021 n

end A173021

/-!
# A173022: Number of numbers <= n whose binary representation is without isolated ones.

The programs for A173022, the canonical program `A173022.P828756553346167184` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173022 has offset 0).

The definition of A173022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173022.P828756553346167184

`∑[char[or(n, 2*n)]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173022

/-- `∑[char[or(n, 2*n)]]` -/
def P828756553346167184.Spec : Prop :=
  ∀ n, (P828756553346167184.a n : ℤ) = A173022 n

theorem P828756553346167184.correct : P828756553346167184.Spec := by
  intro n
  simp only [A173022]

end A173022

/-! ## A173022.P13682886682444955883

`char[or(n, 2*n)]+a(n-1)` with `a(0)=1`
-/

namespace A173022.P13682886682444955883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A173022.P13682886682444955883

namespace A173022

/-- `char[or(n, 2*n)]+a(n-1)` -/
def P13682886682444955883.Spec : Prop :=
  ∀ n, (P13682886682444955883.a n : ℤ) = A173022 n

end A173022

/-! ## A173022.P14201489531849186651

`∑[char[and(2*n, -(n+1))+n]]`
-/

namespace A173022.P14201489531849186651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173022.P14201489531849186651

namespace A173022

/-- `∑[char[and(2*n, -(n+1))+n]]` -/
def P14201489531849186651.Spec : Prop :=
  ∀ n, (P14201489531849186651.a n : ℤ) = A173022 n

end A173022

/-! ## A173022.P14532603882653471640

`∑[char[A163617(n)]]`
-/

namespace A173022.P14532603882653471640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173022.P14532603882653471640

namespace A173022

/-- `∑[char[A163617(n)]]` -/
def P14532603882653471640.Spec : Prop :=
  ∀ n, (P14532603882653471640.a n : ℤ) = A173022 n

end A173022

/-! ## A173022.P1644351437227737184

`∑[A246029(n)%2]`
-/

namespace A173022.P1644351437227737184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246029 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173022.P1644351437227737184

namespace A173022

/-- `∑[A246029(n)%2]` -/
def P1644351437227737184.Spec : Prop :=
  ∀ n, P1644351437227737184.a n = A173022 n

end A173022

/-! ## A173022.P5509122900409958254

`∑[char[A269170(2*n)]]`
-/

namespace A173022.P5509122900409958254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173022.P5509122900409958254

namespace A173022

/-- `∑[char[A269170(2*n)]]` -/
def P5509122900409958254.Spec : Prop :=
  ∀ n, (P5509122900409958254.a n : ℤ) = A173022 n

end A173022

/-! ## A173022.P2472652511104563457

`∑[char[A144795(n+1)]]+1`
-/

namespace A173022.P2472652511104563457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144795 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173022.P2472652511104563457

namespace A173022

/-- `∑[char[A144795(n+1)]]+1` -/
def P2472652511104563457.Spec : Prop :=
  ∀ n, (P2472652511104563457.a n : ℤ) = A173022 n

end A173022

/-! ## A173022.P9191359061910347830

`∑[A055641(val(A246029(n), 2))]`
-/

namespace A173022.P9191359061910347830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.valuation (A246029 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173022.P9191359061910347830

namespace A173022

/-- `∑[A055641(val(A246029(n), 2))]` -/
def P9191359061910347830.Spec : Prop :=
  ∀ n, P9191359061910347830.a n = A173022 n

end A173022

/-! ## A173022.P9133471421400750998

`∑[char[A007494(n)+A003188(n)]]`
-/

namespace A173022.P9133471421400750998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + A003188 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173022.P9133471421400750998

namespace A173022

/-- `∑[char[A007494(n)+A003188(n)]]` -/
def P9133471421400750998.Spec : Prop :=
  ∀ n, (P9133471421400750998.a n : ℤ) = A173022 n

end A173022

/-!
# A173023: Number of numbers <= n whose binary representation contains no isolated digits "11".

The programs for A173023, the canonical program `A173023.P442632253626153546` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173023 has offset 0).

The definition of A173023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173023.P6034936887599909896

`∑[A246029(n)²%3]`
-/

namespace A173023.P6034936887599909896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246029 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P6034936887599909896

namespace A173023

/-- `∑[A246029(n)²%3]` -/
def P6034936887599909896.Spec : Prop :=
  ∀ n, P6034936887599909896.a n = A173023 n

end A173023

/-! ## A173023.P442632253626153546

`∑[char[or(n, A048728(n))]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A173023

/-- `∑[char[or(n, A048728(n))]]` -/
def P442632253626153546.Spec : Prop :=
  ∀ n, (P442632253626153546.a n : ℤ) = A173023 n

theorem P442632253626153546.correct : P442632253626153546.Spec := by
  intro n
  simp only [A173023]

end A173023

/-! ## A173023.P995190315420325633

`∑[char[or(n, A184617(n))]]`
-/

namespace A173023.P995190315420325633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A184617 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P995190315420325633

namespace A173023

/-- `∑[char[or(n, A184617(n))]]` -/
def P995190315420325633.Spec : Prop :=
  ∀ n, (P995190315420325633.a n : ℤ) = A173023 n

end A173023

/-! ## A173023.P9820142813404031818

`∑[A055641(val(A246029(n), 3))]`
-/

namespace A173023.P9820142813404031818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.valuation (A246029 n).toNat 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P9820142813404031818

namespace A173023

/-- `∑[A055641(val(A246029(n), 3))]` -/
def P9820142813404031818.Spec : Prop :=
  ∀ n, P9820142813404031818.a n = A173023 n

end A173023

/-! ## A173023.P16041023409351347048

`∑[A085357(A003188(A048735(2*n)))]`
-/

namespace A173023.P16041023409351347048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A003188 (A048735 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P16041023409351347048

namespace A173023

/-- `∑[A085357(A003188(A048735(2*n)))]` -/
def P16041023409351347048.Spec : Prop :=
  ∀ n, P16041023409351347048.a n = A173023 n

end A173023

/-! ## A173023.P11712751960009374479

`∑[A246685(n)²%3]`
-/

namespace A173023.P11712751960009374479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246685 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P11712751960009374479

namespace A173023

/-- `∑[A246685(n)²%3]` -/
def P11712751960009374479.Spec : Prop :=
  ∀ n, P11712751960009374479.a n = A173023 n

end A173023

/-! ## A173023.P14205529601491926792

`∑[1-A324966(A246685(n)+2)]`
-/

namespace A173023.P14205529601491926792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324966 (A246685 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P14205529601491926792

namespace A173023

/-- `∑[1-A324966(A246685(n)+2)]` -/
def P14205529601491926792.Spec : Prop :=
  ∀ n, P14205529601491926792.a n = A173023 n

end A173023

/-! ## A173023.P16987538540785283963

`∑[A059906(A246685(n)+1)%3]`
-/

namespace A173023.P16987538540785283963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059906 (A246685 n + 1).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173023.P16987538540785283963

namespace A173023

/-- `∑[A059906(A246685(n)+1)%3]` -/
def P16987538540785283963.Spec : Prop :=
  ∀ n, P16987538540785283963.a n = A173023 n

end A173023

/-!
# A173024: Numbers having neither isolated ones nor isolated double ones in their binary representations.

The programs for A173024, the canonical program `A173024.P3410906692018923875` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173024 has offset 1).

The definition of A173024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173024.P3410906692018923875

`A163617(eq[xor(n, 3*n)/2, xor(n, 2*n)])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173024

/-- `A163617(eq[xor(n, 3*n)/2, xor(n, 2*n)])` -/
def P3410906692018923875.Spec : Prop :=
  ∀ n, P3410906692018923875.a n = A173024 (n + 1)

theorem P3410906692018923875.correct : P3410906692018923875.Spec := by
  intro n
  simp only [A173024, Nat.add_sub_cancel]

end A173024

/-! ## A173024.P614356405937041507

`A163617(record[2*and(n, 2*n)-and(n, 3*n)])`
-/

namespace A173024.P614356405937041507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land n (2 * n) : ℤ) - (Nat.land n (3 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173024.P614356405937041507

namespace A173024

/-- `A163617(record[2*and(n, 2*n)-and(n, 3*n)])` -/
def P614356405937041507.Spec : Prop :=
  ∀ n, P614356405937041507.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P2619354049261490676

`A163617(eq[(or(n, 3*n)-n)/2, and(2*n, -n)])`
-/

namespace A173024.P2619354049261490676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (3 * n) : ℤ) - (n : ℤ) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A173024.P2619354049261490676

namespace A173024

/-- `A163617(eq[(or(n, 3*n)-n)/2, and(2*n, -n)])` -/
def P2619354049261490676.Spec : Prop :=
  ∀ n, P2619354049261490676.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P14261018293557503887

`A163617(A048717(n))`
-/

namespace A173024.P14261018293557503887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A048717 n).toNat

end

end A173024.P14261018293557503887

namespace A173024

/-- `A163617(A048717(n))` -/
def P14261018293557503887.Spec : Prop :=
  ∀ n, P14261018293557503887.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P15671355209701043596

`record[(n+1)%(A141036(A144790(n+1))+n)]`
-/

namespace A173024.P15671355209701043596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A141036 (A144790 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173024.P15671355209701043596

namespace A173024

/-- `record[(n+1)%(A141036(A144790(n+1))+n)]` -/
def P15671355209701043596.Spec : Prop :=
  ∀ n, P15671355209701043596.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P3823334777704482565

`A163617(eq[0, A213370(A048724(n))])`
-/

namespace A173024.P3823334777704482565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (A048724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173024.P3823334777704482565

namespace A173024

/-- `A163617(eq[0, A213370(A048724(n))])` -/
def P3823334777704482565.Spec : Prop :=
  ∀ n, P3823334777704482565.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P11200404578073286018

`A163617(eq[A048725(n), A269173(n)])`
-/

namespace A173024.P11200404578073286018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A173024.P11200404578073286018

namespace A173024

/-- `A163617(eq[A048725(n), A269173(n)])` -/
def P11200404578073286018.Spec : Prop :=
  ∀ n, P11200404578073286018.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P13326735802638837398

`record[A104895(A269161(n)+A005843(n))]`
-/

namespace A173024.P13326735802638837398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A269161 n + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173024.P13326735802638837398

namespace A173024

/-- `record[A104895(A269161(n)+A005843(n))]` -/
def P13326735802638837398.Spec : Prop :=
  ∀ n, P13326735802638837398.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P2911594076101894420

`A269170(2*A048717(n))`
-/

namespace A173024.P2911594076101894420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (2 * A048717 n).toNat

end

end A173024.P2911594076101894420

namespace A173024

/-- `A269170(2*A048717(n))` -/
def P2911594076101894420.Spec : Prop :=
  ∀ n, P2911594076101894420.a n = A173024 (n + 1)

end A173024

/-! ## A173024.P4987167945341158865

`eq[1, A010229(A246029(n))]`
-/

namespace A173024.P4987167945341158865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010229 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173024.P4987167945341158865

namespace A173024

/-- `eq[1, A010229(A246029(n))]` -/
def P4987167945341158865.Spec : Prop :=
  ∀ n, (P4987167945341158865.a n : ℤ) = A173024 (n + 1)

end A173024

/-!
# A173025: Numbers whose binary representation contains no isolated digits "11".

The programs for A173025, the canonical program `A173025.P5198389285230754889` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173025 has offset 1).

The definition of A173025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173025.P14941476809217569034

`comp[A395242(n+1)]`
-/

namespace A173025.P14941476809217569034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173025.P14941476809217569034

namespace A173025

/-- `comp[A395242(n+1)]` -/
def P14941476809217569034.Spec : Prop :=
  ∀ n, (P14941476809217569034.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P10140023957652880999

`eq[1, gcd(3, A246029(n))]`
-/

namespace A173025.P10140023957652880999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A246029 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173025.P10140023957652880999

namespace A173025

/-- `eq[1, gcd(3, A246029(n))]` -/
def P10140023957652880999.Spec : Prop :=
  ∀ n, (P10140023957652880999.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P11909134195874499908

`eq[0, A277937(and(n, 2*n))]`
-/

namespace A173025.P11909134195874499908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173025.P11909134195874499908

namespace A173025

/-- `eq[0, A277937(and(n, 2*n))]` -/
def P11909134195874499908.Spec : Prop :=
  ∀ n, (P11909134195874499908.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P11416259489210823237

`eq[2, A010229(2*A246029(n))]`
-/

namespace A173025.P11416259489210823237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010229 (2 * A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173025.P11416259489210823237

namespace A173025

/-- `eq[2, A010229(2*A246029(n))]` -/
def P11416259489210823237.Spec : Prop :=
  ∀ n, (P11416259489210823237.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P13860784470674232572

`eq[1, A118973(val(A246029(n), 3))]`
-/

namespace A173025.P13860784470674232572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118973 (SequenceMachineLib.valuation (A246029 n).toNat 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173025.P13860784470674232572

namespace A173025

/-- `eq[1, A118973(val(A246029(n), 3))]` -/
def P13860784470674232572.Spec : Prop :=
  ∀ n, (P13860784470674232572.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P16752520926933493973

`eq[1, A246029(val(A246029(n), 3))]`
-/

namespace A173025.P16752520926933493973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (SequenceMachineLib.valuation (A246029 n).toNat 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173025.P16752520926933493973

namespace A173025

/-- `eq[1, A246029(val(A246029(n), 3))]` -/
def P16752520926933493973.Spec : Prop :=
  ∀ n, (P16752520926933493973.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P5198389285230754889

`eq[A048733(A048735(n)), A048735(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173025

/-- `eq[A048733(A048735(n)), A048735(n)]` -/
def P5198389285230754889.Spec : Prop :=
  ∀ n, (P5198389285230754889.a n : ℤ) = A173025 (n + 1)

theorem P5198389285230754889.correct : P5198389285230754889.Spec := by
  intro n
  simp only [A173025, Nat.add_sub_cancel]

end A173025

/-! ## A173025.P4257354286168456513

`eq[A147534(A246029(n)+1), A246029(n)]`
-/

namespace A173025.P4257354286168456513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A246029 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173025.P4257354286168456513

namespace A173025

/-- `eq[A147534(A246029(n)+1), A246029(n)]` -/
def P4257354286168456513.Spec : Prop :=
  ∀ n, (P4257354286168456513.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P13941555137509949233

`eq[A246029(n)², A147534(A246029(n)²)]`
-/

namespace A173025.P13941555137509949233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A246029 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173025.P13941555137509949233

namespace A173025

/-- `eq[A246029(n)², A147534(A246029(n)²)]` -/
def P13941555137509949233.Spec : Prop :=
  ∀ n, (P13941555137509949233.a n : ℤ) = A173025 (n + 1)

end A173025

/-! ## A173025.P15250987374802293241

`eq[1, A246685(n)²%3]`
-/

namespace A173025.P15250987374802293241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246685 n ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173025.P15250987374802293241

namespace A173025

/-- `eq[1, A246685(n)²%3]` -/
def P15250987374802293241.Spec : Prop :=
  ∀ n, (P15250987374802293241.a n : ℤ) = A173025 (n + 1)

end A173025

/-!
# A173027: Numbers of rows R of the Wythoff array such that R is the n-th multiple of a tail of the Fibonacci sequence.

The programs for A173027, the canonical program `A173027.P13841836014063150265` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173027 has offset 1).

The definition of A173027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173027.P13841836014063150265

`lt[n, gcd(n, floor(ϕ*(n+1)))²]+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173027

/-- `lt[n, gcd(n, floor(ϕ*(n+1)))²]+1` -/
def P13841836014063150265.Spec : Prop :=
  ∀ n, (P13841836014063150265.a n : ℤ) = A173027 (n + 1)

theorem P13841836014063150265.correct : P13841836014063150265.Spec := by
  intro n
  simp only [A173027, Nat.add_sub_cancel]

end A173027

/-! ## A173027.P696893456227912046

`lt[n, (gcd(2*A000201(n+1), 2*n)/2)²]+1`
-/

namespace A173027.P696893456227912046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (2 * A000201 (n + 1)) (2 * n : ℤ) : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A173027.P696893456227912046

namespace A173027

/-- `lt[n, (gcd(2*A000201(n+1), 2*n)/2)²]+1` -/
def P696893456227912046.Spec : Prop :=
  ∀ n, (P696893456227912046.a n : ℤ) = A173027 (n + 1)

end A173027

/-! ## A173027.P13958243894261005506

`A003603(12*12*(n+1))`
-/

namespace A173027.P13958243894261005506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (12 * (12 * (n + 1)))

end

end A173027.P13958243894261005506

namespace A173027

/-- `A003603(12*12*(n+1))` -/
def P13958243894261005506.Spec : Prop :=
  ∀ n, P13958243894261005506.a n = A173027 (n + 1)

end A173027

/-! ## A173027.P9353112206595742904

`A194293(A168114(n+1))+A019586(55*(n+1))`
-/

namespace A173027.P9353112206595742904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194293 (A168114 (n + 1)).toNat + A019586 (55 * (n + 1))

end

end A173027.P9353112206595742904

namespace A173027

/-- `A194293(A168114(n+1))+A019586(55*(n+1))` -/
def P9353112206595742904.Spec : Prop :=
  ∀ n, P9353112206595742904.a n = A173027 (n + 1)

end A173027

/-! ## A173027.P11719188102858991451

`A269725(n+1)+1`
-/

namespace A173027.P11719188102858991451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269725 (n + 1) + 1

end

end A173027.P11719188102858991451

namespace A173027

/-- `A269725(n+1)+1` -/
def P11719188102858991451.Spec : Prop :=
  ∀ n, P11719188102858991451.a n = A173027 (n + 1)

end A173027

/-! ## A173027.P4566843622242105678

`A194293(A168113(n+1))+A019586(55*(n+1))`
-/

namespace A173027.P4566843622242105678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194293 (A168113 (n + 1)).toNat + A019586 (55 * (n + 1))

end

end A173027.P4566843622242105678

namespace A173027

/-- `A194293(A168113(n+1))+A019586(55*(n+1))` -/
def P4566843622242105678.Spec : Prop :=
  ∀ n, P4566843622242105678.a n = A173027 (n + 1)

end A173027

/-!
# A173029: Partial sums of naughty primes A164968.

The programs for A173029, there is no canonical definition to state claims against.
-/

/-! ## A173029.P10030182481382557236

`∑[A164968(n+1)]`
-/

namespace A173029.P10030182481382557236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173029.P10030182481382557236

/-! ## A173029.P686250151413028271

`∑[record[A164968(ceil(C(or(1, n), n)/2))]]`
-/

namespace A173029.P686250151413028271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164968 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173029.P686250151413028271

/-! ## A173029.P9642700809076873959

`∑[record[A164968(A028920(n))]]`
-/

namespace A173029.P9642700809076873959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164968 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173029.P9642700809076873959

/-! ## A173029.P15311711600589420925

`∑[record[A164968(A038568(n))]]`
-/

namespace A173029.P15311711600589420925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164968 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173029.P15311711600589420925

/-! ## A173029.P12321379848803475090

`∑[record[A164968(A065648(n))]]`
-/

namespace A173029.P12321379848803475090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164968 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173029.P12321379848803475090

/-!
# A173031: Sequence whose G.f is given by: 1/(1-z)/(1-2*z)^2/(1-z-z^2).

The programs for A173031, the canonical program `A173031.P472100740147014782` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173031 has offset 0).

The definition of A173031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173031.P472100740147014782

`∑[∑[∑[A079282(n)]]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A173031

/-- `∑[∑[∑[A079282(n)]]]` -/
def P472100740147014782.Spec : Prop :=
  ∀ n, P472100740147014782.a n = A173031 n

theorem P472100740147014782.correct : P472100740147014782.Spec := by
  intro n
  simp only [A173031]

end A173031

/-! ## A173031.P2962309380133693520

`A139756(n+5)-A232580(n+6)`
-/

namespace A173031.P2962309380133693520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 5) - A232580 (n + 6)

end

end A173031.P2962309380133693520

namespace A173031

/-- `A139756(n+5)-A232580(n+6)` -/
def P2962309380133693520.Spec : Prop :=
  ∀ n, P2962309380133693520.a n = A173031 n

end A173031

/-!
# A173032: Primes having no representation of the form n -+ Omega(n), where Omega is A001222.

The programs for A173032, the canonical program `A173032.P16951806919415081916` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173032 has offset 1).

The definition of A173032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173032.P16951806919415081916

`∩[A069350(n+1), A069351(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A173032

/-- `∩[A069350(n+1), A069351(n+1)]` -/
def P16951806919415081916.Spec : Prop :=
  ∀ n, (P16951806919415081916.a n : ℤ) = A173032 (n + 1)

theorem P16951806919415081916.correct : P16951806919415081916.Spec := by
  intro n
  simp only [A173032, Nat.add_sub_cancel]

end A173032

/-! ## A173032.P3016526317941059977

`∩[A069351(n+1), A386572(n+1)]`
-/

namespace A173032.P3016526317941059977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173032.P3016526317941059977

namespace A173032

/-- `∩[A069351(n+1), A386572(n+1)]` -/
def P3016526317941059977.Spec : Prop :=
  ∀ n, (P3016526317941059977.a n : ℤ) = A173032 (n + 1)

end A173032

/-!
# A173033: Second diagonal under the main diagonal in A172119 written in a square (see comment).

The programs for A173033, the canonical program `A173033.P3108013390864531137` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173033 has offset 0).

The definition of A173033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173033.P3108013390864531137

`2*a(n-1)+4` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173033

/-- `2*a(n-1)+4` -/
def P3108013390864531137.Spec : Prop :=
  ∀ n, (P3108013390864531137.a n : ℤ) = A173033 n

theorem P3108013390864531137.correct : P3108013390864531137.Spec := by
  intro n
  simp only [A173033]

end A173033

/-! ## A173033.P12943280561348795711

`A240951(n+3)-4`
-/

namespace A173033.P12943280561348795711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240951 (n + 3) - 4

end

end A173033.P12943280561348795711

namespace A173033

/-- `A240951(n+3)-4` -/
def P12943280561348795711.Spec : Prop :=
  ∀ n, P12943280561348795711.a n = A173033 n

end A173033

/-! ## A173033.P8751901911800155397

`∑[∑[char[2]+2^n]]`
-/

namespace A173033.P8751901911800155397
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173033.P8751901911800155397

namespace A173033

/-- `∑[∑[char[2]+2^n]]` -/
def P8751901911800155397.Spec : Prop :=
  ∀ n, (P8751901911800155397.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P9753523905473308137

`lcm(4, a(n-1)+2)` with `a(0)=1, a(1)=4`
-/

namespace A173033.P9753523905473308137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lcm 4 (a (n - 1) + 2)

end

end A173033.P9753523905473308137

namespace A173033

/-- `lcm(4, a(n-1)+2)` -/
def P9753523905473308137.Spec : Prop :=
  ∀ n, (P9753523905473308137.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P4806356107852758231

`2*or(2, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A173033.P4806356107852758231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * Nat.lor 2 (a (n - 1))

end

end A173033.P4806356107852758231

namespace A173033

/-- `2*or(2, a(n-1))` -/
def P4806356107852758231.Spec : Prop :=
  ∀ n, (P4806356107852758231.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P7783955308023802007

`2*xor(2, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A173033.P7783955308023802007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * Nat.xor 2 (a (n - 1))

end

end A173033.P7783955308023802007

namespace A173033

/-- `2*xor(2, a(n-1))` -/
def P7783955308023802007.Spec : Prop :=
  ∀ n, (P7783955308023802007.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P1209036301798955643

`record[2*a(n-1)]-4` with `a(0)=5, a(1)=1`
-/

namespace A173033.P1209036301798955643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 4

end

end A173033.P1209036301798955643

namespace A173033

/-- `record[2*a(n-1)]-4` -/
def P1209036301798955643.Spec : Prop :=
  ∀ n, P1209036301798955643.a n = A173033 n

end A173033

/-! ## A173033.P1061221782416568185

`record[a(n-1)+2^n]` with `a(0)=1, a(1)=0`
-/

namespace A173033.P1061221782416568185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173033.P1061221782416568185

namespace A173033

/-- `record[a(n-1)+2^n]` -/
def P1061221782416568185.Spec : Prop :=
  ∀ n, (P1061221782416568185.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P15287940503394388746

`6-2*(1-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A173033.P15287940503394388746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 - 2 * (1 - a (n - 1))

end

end A173033.P15287940503394388746

namespace A173033

/-- `6-2*(1-a(n-1))` -/
def P15287940503394388746.Spec : Prop :=
  ∀ n, P15287940503394388746.a n = A173033 n

end A173033

/-! ## A173033.P11696331305556504537

`a(n-1)+2^(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A173033.P11696331305556504537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 2 ^ (n + 1)

end

end A173033.P11696331305556504537

namespace A173033

/-- `a(n-1)+2^(n+1)` -/
def P11696331305556504537.Spec : Prop :=
  ∀ n, (P11696331305556504537.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P17167454201526899009

`xor(a(n-1)+4, a(n-1))` with `a(0)=1`
-/

namespace A173033.P17167454201526899009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1) + 4) (a (n - 1))

end

end A173033.P17167454201526899009

namespace A173033

/-- `xor(a(n-1)+4, a(n-1))` -/
def P17167454201526899009.Spec : Prop :=
  ∀ n, (P17167454201526899009.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P2372409578051856637

`record[2^n-2*n]+2*n`
-/

namespace A173033.P2372409578051856637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℤ)

end

end A173033.P2372409578051856637

namespace A173033

/-- `record[2^n-2*n]+2*n` -/
def P2372409578051856637.Spec : Prop :=
  ∀ n, P2372409578051856637.a n = A173033 n

end A173033

/-! ## A173033.P6546506404984217913

`floor(∑[2^(n+1)]-atan(n+1))`
-/

namespace A173033.P6546506404984217913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.arctan (n + 1 : ℝ)⌋

end

end A173033.P6546506404984217913

namespace A173033

/-- `floor(∑[2^(n+1)]-atan(n+1))` -/
def P6546506404984217913.Spec : Prop :=
  ∀ n, P6546506404984217913.a n = A173033 n

end A173033

/-! ## A173033.P5939605863398244653

`∑[2^(n+1)]-ceil(atan(n+1))`
-/

namespace A173033.P5939605863398244653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A173033.P5939605863398244653

namespace A173033

/-- `∑[2^(n+1)]-ceil(atan(n+1))` -/
def P5939605863398244653.Spec : Prop :=
  ∀ n, P5939605863398244653.a n = A173033 n

end A173033

/-! ## A173033.P14460962279142499565

`or(a(n-1)+4, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A173033.P14460962279142499565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lor (a (n - 1) + 4) (a (n - 1))

end

end A173033.P14460962279142499565

namespace A173033

/-- `or(a(n-1)+4, a(n-1))` -/
def P14460962279142499565.Spec : Prop :=
  ∀ n, (P14460962279142499565.a n : ℤ) = A173033 n

end A173033

/-! ## A173033.P5844321894821969731

`(a(n-1)+2)/(1-1/2)` with `a(0)=1, a(1)=4`
-/

namespace A173033.P5844321894821969731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + 2) / (1 - (1 : ℚ) / 2)

end

end A173033.P5844321894821969731

namespace A173033

/-- `(a(n-1)+2)/(1-1/2)` -/
def P5844321894821969731.Spec : Prop :=
  ∀ n, P5844321894821969731.a n = (A173033 n : ℚ)

end A173033

/-! ## A173033.P7026346246801550176

`4-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=4`
-/

namespace A173033.P7026346246801550176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A173033.P7026346246801550176

namespace A173033

/-- `4-a(n-1)/(1/2-1)` -/
def P7026346246801550176.Spec : Prop :=
  ∀ n, P7026346246801550176.a n = (A173033 n : ℚ)

end A173033

/-! ## A173033.P14423732645948715602

`abs(a(n-1)+a(n-1)+4)` with `a(0)=1, a(1)=4`
-/

namespace A173033.P14423732645948715602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + 4)

end

end A173033.P14423732645948715602

namespace A173033

/-- `abs(a(n-1)+a(n-1)+4)` -/
def P14423732645948715602.Spec : Prop :=
  ∀ n, (P14423732645948715602.a n : ℤ) = A173033 n

theorem P14423732645948715602.correct : P14423732645948715602.Spec := by
  intro n
  simp only [A173033, Nat.add_sub_cancel, A173033.P14423732645948715602.a, A173033.P3108013390864531137.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173033

/-!
# A173034: Expansion of g.f. 8/(1-2*z)-12/(1-z)+z+5.

The programs for A173034, the canonical program `A173034.P8065975519633469841` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173034 has offset 0).

The definition of A173034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173034.P8065975519633469841

`2*a(n-1)+12` with `a(0)=1, a(1)=5, a(2)=20`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173034

/-- `2*a(n-1)+12` -/
def P8065975519633469841.Spec : Prop :=
  ∀ n, (P8065975519633469841.a n : ℤ) = A173034 n

theorem P8065975519633469841.correct : P8065975519633469841.Spec := by
  intro n
  simp only [A173034]

end A173034

/-! ## A173034.P4003583997138673518

`∑[2*a(n-1)]` with `a(0)=1, a(1)=4, a(2)=15, a(3)=32`
-/

namespace A173034.P4003583997138673518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 15, 32] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173034.P4003583997138673518

namespace A173034

/-- `∑[2*a(n-1)]` -/
def P4003583997138673518.Spec : Prop :=
  ∀ n, (P4003583997138673518.a n : ℤ) = A173034 n

end A173034

/-! ## A173034.P4915647351286037266

`2*(or(9, a(n-1))-3)` with `a(0)=1, a(1)=5`
-/

namespace A173034.P4915647351286037266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (Int.lor 9 (a (n - 1)) - 3)

end

end A173034.P4915647351286037266

namespace A173034

/-- `2*(or(9, a(n-1))-3)` -/
def P4915647351286037266.Spec : Prop :=
  ∀ n, P4915647351286037266.a n = A173034 n

end A173034

/-! ## A173034.P7243314426429300467

`lcm(4, floor(a(n-1)/2)+3)` with `a(0)=1, a(1)=5`
-/

namespace A173034.P7243314426429300467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lcm 4 (⌊(a (n - 1) : ℚ) / 2⌋ + 3)

end

end A173034.P7243314426429300467

namespace A173034

/-- `lcm(4, floor(a(n-1)/2)+3)` -/
def P7243314426429300467.Spec : Prop :=
  ∀ n, (P7243314426429300467.a n : ℤ) = A173034 n

end A173034

/-! ## A173034.P7993840970404672524

`∑[2^(n+2)-C(n+3, 2*n+1)]`
-/

namespace A173034.P7993840970404672524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - (Nat.choose (n + 3) (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173034.P7993840970404672524

namespace A173034

/-- `∑[2^(n+2)-C(n+3, 2*n+1)]` -/
def P7993840970404672524.Spec : Prop :=
  ∀ n, P7993840970404672524.a n = A173034 n

end A173034

/-! ## A173034.P5434276891610887535

`record[or(a(n-1), A000079(n))]` with `a(0)=1, a(1)=5, a(2)=1, a(3)=4`
-/

namespace A173034.P5434276891610887535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 1, 4] fun n f1 =>
  Int.lor (f1 (n - 1)) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173034.P5434276891610887535

namespace A173034

/-- `record[or(a(n-1), A000079(n))]` -/
def P5434276891610887535.Spec : Prop :=
  ∀ n, P5434276891610887535.a n = A173034 n

end A173034

/-! ## A173034.P6832386574935914904

`xor(3, A164874(A027379(n)))`
-/

namespace A173034.P6832386574935914904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A164874 (A027379 n).toNat)

end

end A173034.P6832386574935914904

namespace A173034

/-- `xor(3, A164874(A027379(n)))` -/
def P6832386574935914904.Spec : Prop :=
  ∀ n, P6832386574935914904.a n = A173034 n

end A173034

/-!
# A173035: Cat years in human years: a(0) = 0, a(1) = 15, a(2) = 24, a(n) = a(n-1) + 4 for n >= 3.

The programs for A173035, the canonical program `A173035.P15148792957286005794` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173035 has offset 0).

The definition of A173035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4+a(n-1)` (program `A173035.P15148792957286005794`, by `A173035.P15148792957286005794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173035.P15148792957286005794

`4+a(n-1)` with `a(0)=0, a(1)=15, a(2)=24`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173035

/-- `4+a(n-1)` -/
def P15148792957286005794.Spec : Prop :=
  ∀ n, (P15148792957286005794.a n : ℤ) = A173035 n

theorem P15148792957286005794.correct : P15148792957286005794.Spec := by
  intro n
  simp only [A173035]

end A173035

/-! ## A173035.P18405737033412653439

`a(n-1)+4` with `a(0)=0, a(1)=15, a(2)=24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173035.P18405737033412653439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 15, 24] fun n a =>
  a (n - 1) + 4

end

end A173035.P18405737033412653439

namespace A173035

/-- `a(n-1)+4` -/
def P18405737033412653439.Spec : Prop :=
  ∀ n, (P18405737033412653439.a n : ℤ) = A173035 n

theorem P18405737033412653439.correct : P18405737033412653439.Spec := by
  intro n
  simp only [A173035, Nat.add_sub_cancel, A173035.P18405737033412653439.a, A173035.P15148792957286005794.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173035

/-!
# A173036: a(n) = binomial(n+1, 2) + 13.

The programs for A173036, the canonical program `A173036.P3961407815560661957` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173036 has offset 0).

The definition of A173036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173036.P3961407815560661957

`n*(n+1)/2+13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173036

/-- `n*(n+1)/2+13` -/
def P3961407815560661957.Spec : Prop :=
  ∀ n, P3961407815560661957.a n = (A173036 n : ℚ)

end A173036

/-! ## A173036.P14516701881300337910

`abs(a(n-1)+n)` with `a(0)=13`
-/

namespace A173036.P14516701881300337910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) + n

end

end A173036.P14516701881300337910

namespace A173036

/-- `abs(a(n-1)+n)` -/
def P14516701881300337910.Spec : Prop :=
  ∀ n, (P14516701881300337910.a n : ℤ) = A173036 n

end A173036

/-! ## A173036.P13650633822141647257

`floor(a(n-1)+n)` with `a(0)=13`

`floor` is left out, it is the identity on integers.
-/

namespace A173036.P13650633822141647257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) + n

end

end A173036.P13650633822141647257

namespace A173036

/-- `floor(a(n-1)+n)` -/
def P13650633822141647257.Spec : Prop :=
  ∀ n, (P13650633822141647257.a n : ℤ) = A173036 n

end A173036

/-! ## A173036.P7485160938451710241

`ceil(a(n-1)+n)` with `a(0)=13`

`ceil` is left out, it is the identity on integers.
-/

namespace A173036.P7485160938451710241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) + n

end

end A173036.P7485160938451710241

namespace A173036

/-- `ceil(a(n-1)+n)` -/
def P7485160938451710241.Spec : Prop :=
  ∀ n, (P7485160938451710241.a n : ℤ) = A173036 n

end A173036

/-! ## A173036.P1293989592922954047

`round(a(n-1)+n)` with `a(0)=13`

`round` is left out, it is the identity on integers.
-/

namespace A173036.P1293989592922954047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) + n

end

end A173036.P1293989592922954047

namespace A173036

/-- `round(a(n-1)+n)` -/
def P1293989592922954047.Spec : Prop :=
  ∀ n, (P1293989592922954047.a n : ℤ) = A173036 n

end A173036

/-! ## A173036.P5401700522841418738

`∑[C(n, a(n-1))]` with `a(0)=13, a(1)=1`
-/

namespace A173036.P5401700522841418738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173036.P5401700522841418738

namespace A173036

/-- `∑[C(n, a(n-1))]` -/
def P5401700522841418738.Spec : Prop :=
  ∀ n, (P5401700522841418738.a n : ℤ) = A173036 n

end A173036

/-! ## A173036.P8751236449850230856

`∑[n^(n-a(n-1))]` with `a(0)=13`
-/

namespace A173036.P8751236449850230856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [13] fun n f1 =>
  (n : ℝ) ^ ((n : ℝ) - f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173036.P8751236449850230856

namespace A173036

/-- `∑[n^(n-a(n-1))]` -/
def P8751236449850230856.Spec : Prop :=
  ∀ n, P8751236449850230856.a n = (A173036 n : ℝ)

end A173036

/-! ## A173036.P6465288105159235330

`(a(n-1)+n)%(11*n+6)²` with `a(0)=13`
-/

namespace A173036.P6465288105159235330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  (a (n - 1) + n) % (11 * n + 6) ^ 2

end

end A173036.P6465288105159235330

namespace A173036

/-- `(a(n-1)+n)%(11*n+6)²` -/
def P6465288105159235330.Spec : Prop :=
  ∀ n, (P6465288105159235330.a n : ℤ) = A173036 n

end A173036

/-! ## A173036.P16079825995048734569

`abs(A307681(n+3)+16)`
-/

namespace A173036.P16079825995048734569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307681 (n + 3) + 16|

end

end A173036.P16079825995048734569

namespace A173036

/-- `abs(A307681(n+3)+16)` -/
def P16079825995048734569.Spec : Prop :=
  ∀ n, P16079825995048734569.a n = A173036 n

end A173036

/-! ## A173036.P9870211350117418497

`(A241890(n)+2+n)/2`
-/

namespace A173036.P9870211350117418497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241890 n + 2 + (n : ℤ) : ℚ) / 2

end

end A173036.P9870211350117418497

namespace A173036

/-- `(A241890(n)+2+n)/2` -/
def P9870211350117418497.Spec : Prop :=
  ∀ n, P9870211350117418497.a n = (A173036 n : ℚ)

end A173036

/-! ## A173036.P11169182061897053036

`(A241889(n)+3+n)/2`
-/

namespace A173036.P11169182061897053036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241889 n + 3 + (n : ℤ) : ℚ) / 2

end

end A173036.P11169182061897053036

namespace A173036

/-- `(A241889(n)+3+n)/2` -/
def P11169182061897053036.Spec : Prop :=
  ∀ n, P11169182061897053036.a n = (A173036 n : ℚ)

end A173036

/-! ## A173036.P7355985752121135186

`(A261521(n)-(n+3))/2`
-/

namespace A173036.P7355985752121135186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261521 n - (n + 3 : ℤ) : ℚ) / 2

end

end A173036.P7355985752121135186

namespace A173036

/-- `(A261521(n)-(n+3))/2` -/
def P7355985752121135186.Spec : Prop :=
  ∀ n, P7355985752121135186.a n = (A173036 n : ℚ)

end A173036

/-! ## A173036.P1819421498769091664

`abs(12-∑[n-A004277(n)])`
-/

namespace A173036.P1819421498769091664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A173036.P1819421498769091664

namespace A173036

/-- `abs(12-∑[n-A004277(n)])` -/
def P1819421498769091664.Spec : Prop :=
  ∀ n, P1819421498769091664.a n = A173036 n

end A173036

/-! ## A173036.P11149087400951546978

`abs(Δ[A004006(n)]+12)`
-/

namespace A173036.P11149087400951546978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 12|

end

end A173036.P11149087400951546978

namespace A173036

/-- `abs(Δ[A004006(n)]+12)` -/
def P11149087400951546978.Spec : Prop :=
  ∀ n, P11149087400951546978.a n = A173036 n

end A173036

/-! ## A173036.P14187334053746718360

`Δ[A011826(n+1)+12*n]`
-/

namespace A173036.P14187334053746718360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (n + 1) + (12 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173036.P14187334053746718360

namespace A173036

/-- `Δ[A011826(n+1)+12*n]` -/
def P14187334053746718360.Spec : Prop :=
  ∀ n, P14187334053746718360.a n = A173036 n

end A173036

/-! ## A173036.P1992182361995515765

`(A114964(n+1)-(n+5))/2`
-/

namespace A173036.P1992182361995515765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114964 (n + 1) - (n + 5 : ℤ) : ℚ) / 2

end

end A173036.P1992182361995515765

namespace A173036

/-- `(A114964(n+1)-(n+5))/2` -/
def P1992182361995515765.Spec : Prop :=
  ∀ n, P1992182361995515765.a n = (A173036 n : ℚ)

end A173036

/-! ## A173036.P1620622053326920569

`Δ[A017653(n)+C(n+1, 3)+n]`
-/

namespace A173036.P1620622053326920569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + (Nat.choose (n + 1) 3 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173036.P1620622053326920569

namespace A173036

/-- `Δ[A017653(n)+C(n+1, 3)+n]` -/
def P1620622053326920569.Spec : Prop :=
  ∀ n, P1620622053326920569.a n = A173036 n

end A173036

/-! ## A173036.P10071276519607733810

`Δ[A017533(n)+A004006(n)]`
-/

namespace A173036.P10071276519607733810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n + A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173036.P10071276519607733810

namespace A173036

/-- `Δ[A017533(n)+A004006(n)]` -/
def P10071276519607733810.Spec : Prop :=
  ∀ n, P10071276519607733810.a n = A173036 n

end A173036

/-! ## A173036.P5965715448277488474

`A020723(A145018(n+1))`
-/

namespace A173036.P5965715448277488474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A145018 (n + 1)).toNat

end

end A173036.P5965715448277488474

namespace A173036

/-- `A020723(A145018(n+1))` -/
def P5965715448277488474.Spec : Prop :=
  ∀ n, P5965715448277488474.a n = A173036 n

end A173036

/-! ## A173036.P3712694454391205698

`A196081(A027691(n))`
-/

namespace A173036.P3712694454391205698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196081 (A027691 n).toNat

end

end A173036.P3712694454391205698

namespace A173036

/-- `A196081(A027691(n))` -/
def P3712694454391205698.Spec : Prop :=
  ∀ n, P3712694454391205698.a n = A173036 n

end A173036

/-!
# A173037: Numbers k such that k-4, k-2, k+2 and k+4 are prime.

The programs for A173037, there is no canonical definition to state claims against.
-/

/-! ## A173037.P11375521199753393360

`A007530(n+1)+4`
-/

namespace A173037.P11375521199753393360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) + 4

end

end A173037.P11375521199753393360

/-! ## A173037.P8859099440643161763

`A125855(n+1)+5`
-/

namespace A173037.P8859099440643161763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1) + 5

end

end A173037.P8859099440643161763

/-! ## A173037.P8655084500829050576

`A136720(n+1)+2`
-/

namespace A173037.P8655084500829050576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1) + 2

end

end A173037.P8655084500829050576

/-! ## A173037.P7411720446799008577

`A136721(n+1)-2`
-/

namespace A173037.P7411720446799008577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1) - 2

end

end A173037.P7411720446799008577

/-! ## A173037.P4752831694829964173

`A090258(n+1)-4`
-/

namespace A173037.P4752831694829964173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1) - 4

end

end A173037.P4752831694829964173

/-! ## A173037.P9658459457244395594

`3*A173092(n+1)`
-/

namespace A173037.P9658459457244395594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1)

end

end A173037.P9658459457244395594

/-! ## A173037.P9359001027987472536

`A064974(n+1)-5`
-/

namespace A173037.P9359001027987472536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1) - 5

end

end A173037.P9359001027987472536

/-! ## A173037.P11830017748684139431

`A136162(A016825(n))+2`
-/

namespace A173037.P11830017748684139431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A016825 n).toNat + 2

end

end A173037.P11830017748684139431

/-! ## A173037.P7040551888455386272

`A136162(A004767(n))-2`
-/

namespace A173037.P7040551888455386272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A004767 n).toNat - 2

end

end A173037.P7040551888455386272

/-! ## A173037.P5051493546189058657

`A136162(A016813(n))+4`
-/

namespace A173037.P5051493546189058657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A016813 n).toNat + 4

end

end A173037.P5051493546189058657

/-! ## A173037.P12545435183356066314

`A136162(A130824(n+1))+2`
-/

namespace A173037.P12545435183356066314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A130824 (n + 1)).toNat + 2

end

end A173037.P12545435183356066314

/-! ## A173037.P4883000691904770613

`A136162(A008586(n)+2)+2`
-/

namespace A173037.P4883000691904770613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A008586 n + 2).toNat + 2

end

end A173037.P4883000691904770613

/-! ## A173037.P8898729399460842753

`A136162(A111284(n+2))+2`
-/

namespace A173037.P8898729399460842753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A111284 (n + 2)).toNat + 2

end

end A173037.P8898729399460842753

/-! ## A173037.P9106970202032575932

`A136162(A131098(n+2))-2`
-/

namespace A173037.P9106970202032575932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A131098 (n + 2)).toNat - 2

end

end A173037.P9106970202032575932

/-! ## A173037.P17005776596088536390

`∩[A022005(n+1), A073648(n+1)]+2`
-/

namespace A173037.P17005776596088536390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A173037.P17005776596088536390

/-! ## A173037.P6317970427688652106

`∩[A007529(n+1), A073648(n+1)]+2`
-/

namespace A173037.P6317970427688652106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A173037.P6317970427688652106

/-! ## A173037.P13968772393025661091

`∩[A022005(n+1), A098414(n+1)]+2`
-/

namespace A173037.P13968772393025661091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A173037.P13968772393025661091

/-! ## A173037.P1594419514614211161

`∩[A073649(n+1), A098415(n+1)]-2`
-/

namespace A173037.P1594419514614211161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A173037.P1594419514614211161

/-! ## A173037.P2699765182766153435

`∩[A007529(n+1), A194581(n+1)]+2`
-/

namespace A173037.P2699765182766153435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A173037.P2699765182766153435

/-! ## A173037.P14916461514582361338

`∩[A022005(n+1), A194581(n+1)]+2`
-/

namespace A173037.P14916461514582361338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A173037.P14916461514582361338

/-!
# A173038: a(n) = (1/4)*(n^2 - 5*n + 2)*(n-2)! + 1.

The programs for A173038, the canonical program `A173038.P7218111731275712553` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173038 has offset 2).

The definition of A173038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173038.P7218111731275712553

`1/4*((n+2)²-5*(n+2)+2)*n!+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173038

/-- `1/4*((n+2)²-5*(n+2)+2)*n!+1` -/
def P7218111731275712553.Spec : Prop :=
  ∀ n, P7218111731275712553.a n = (A173038 (n + 2) : ℚ)

end A173038

/-! ## A173038.P1579465734820998506

`n!*∑[n]+1-(∑[n+1]+1)/2*n!`
-/

namespace A173038.P1579465734820998506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A173038.P1579465734820998506

namespace A173038

/-- `n!*∑[n]+1-(∑[n+1]+1)/2*n!` -/
def P1579465734820998506.Spec : Prop :=
  ∀ n, P1579465734820998506.a n = (A173038 (n + 2) : ℚ)

end A173038

/-! ## A173038.P16807788090221379527

`(n!*∑[n]+1)%((∑[n+1]+1)/2*n!)`
-/

namespace A173038.P16807788090221379527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ) (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ)))

end

end A173038.P16807788090221379527

namespace A173038

/-- `(n!*∑[n]+1)%((∑[n+1]+1)/2*n!)` -/
def P16807788090221379527.Spec : Prop :=
  ∀ n, P16807788090221379527.a n = A173038 (n + 2)

end A173038

/-! ## A173038.P17977586874862982627

`A001809(n)+1-n!`
-/

namespace A173038.P17977586874862982627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + 1 - (Nat.factorial n : ℤ)

end

end A173038.P17977586874862982627

namespace A173038

/-- `A001809(n)+1-n!` -/
def P17977586874862982627.Spec : Prop :=
  ∀ n, P17977586874862982627.a n = A173038 (n + 2)

end A173038

/-! ## A173038.P6545934614789446080

`A138772(n+1)-∑[n*n!]`
-/

namespace A173038.P6545934614789446080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A173038.P6545934614789446080

namespace A173038

/-- `A138772(n+1)-∑[n*n!]` -/
def P6545934614789446080.Spec : Prop :=
  ∀ n, P6545934614789446080.a n = A173038 (n + 2)

end A173038

/-! ## A173038.P5502332450382312250

`A001809(n)-A033312(n)`
-/

namespace A173038.P5502332450382312250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n - A033312 n

end

end A173038.P5502332450382312250

namespace A173038

/-- `A001809(n)-A033312(n)` -/
def P5502332450382312250.Spec : Prop :=
  ∀ n, P5502332450382312250.a n = A173038 (n + 2)

end A173038

/-! ## A173038.P6923203583428131110

`A001809(n)+1-A000142(n)`
-/

namespace A173038.P6923203583428131110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + (1 - A000142 n)

end

end A173038.P6923203583428131110

namespace A173038

/-- `A001809(n)+1-A000142(n)` -/
def P6923203583428131110.Spec : Prop :=
  ∀ n, P6923203583428131110.a n = A173038 (n + 2)

end A173038

/-! ## A173038.P17834511444556354087

`A180119(n)+1-A006595(n)`
-/

namespace A173038.P17834511444556354087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n + (1 - A006595 n)

end

end A173038.P17834511444556354087

namespace A173038

/-- `A180119(n)+1-A006595(n)` -/
def P17834511444556354087.Spec : Prop :=
  ∀ n, P17834511444556354087.a n = A173038 (n + 2)

end A173038

/-! ## A173038.P589775564475075116

`A138772(n+1)-∑[A001563(n)]`
-/

namespace A173038.P589775564475075116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173038.P589775564475075116

namespace A173038

/-- `A138772(n+1)-∑[A001563(n)]` -/
def P589775564475075116.Spec : Prop :=
  ∀ n, P589775564475075116.a n = A173038 (n + 2)

end A173038

/-!
# A173039: Odd numerators of the fractions (1/4-1/n^2), n>= -2.

The programs for A173039, the canonical program `A173039.P12042214237465507907` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173039 has offset 1).

The definition of A173039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173039.P12042214237465507907

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=-3, a(1)=-1, a(2)=-3, a(3)=5, a(4)=3, a(5)=21, a(6)=45, a(7)=15, a(8)=77`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173039

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P12042214237465507907.Spec : Prop :=
  ∀ n, P12042214237465507907.a n = A173039 (n + 1)

theorem P12042214237465507907.correct : P12042214237465507907.Spec := by
  intro n
  simp only [A173039, Nat.add_sub_cancel]

end A173039

/-! ## A173039.P3588774111413888236

`A173536(n+1)-gcd(2, n%3)²`
-/

namespace A173039.P3588774111413888236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173536 (n + 1) - (Nat.gcd 2 (n % 3) ^ 2 : ℤ)

end

end A173039.P3588774111413888236

namespace A173039

/-- `A173536(n+1)-gcd(2, n%3)²` -/
def P3588774111413888236.Spec : Prop :=
  ∀ n, P3588774111413888236.a n = A173039 (n + 1)

end A173039

/-! ## A173039.P17788585478684965680

`A173536(n+1)-A173259(n+1)`
-/

namespace A173039.P17788585478684965680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173536 (n + 1) - A173259 (n + 1)

end

end A173039.P17788585478684965680

namespace A173039

/-- `A173536(n+1)-A173259(n+1)` -/
def P17788585478684965680.Spec : Prop :=
  ∀ n, P17788585478684965680.a n = A173039 (n + 1)

end A173039

/-! ## A173039.P5463247015934562646

`A173536(n+1)-(A131713(n)+3)`
-/

namespace A173039.P5463247015934562646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173536 (n + 1) - (A131713 n + 3)

end

end A173039.P5463247015934562646

namespace A173039

/-- `A173536(n+1)-(A131713(n)+3)` -/
def P5463247015934562646.Spec : Prop :=
  ∀ n, P5463247015934562646.a n = A173039 (n + 1)

end A173039

/-! ## A173039.P3990016191222949181

`A006369(abs(1-n))²-A010156(A173773(n))`
-/

namespace A173039.P3990016191222949181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 |1 - (n : ℤ)|.toNat ^ 2 - A010156 (A173773 n).toNat

end

end A173039.P3990016191222949181

namespace A173039

/-- `A006369(abs(1-n))²-A010156(A173773(n))` -/
def P3990016191222949181.Spec : Prop :=
  ∀ n, P3990016191222949181.a n = A173039 (n + 1)

end A173039

/-! ## A173039.P9667813639277024064

`A174679(A042968(n+1))-A010156(A173773(n))`
-/

namespace A173039.P9667813639277024064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174679 (A042968 (n + 1)).toNat - A010156 (A173773 n).toNat

end

end A173039.P9667813639277024064

namespace A173039

/-- `A174679(A042968(n+1))-A010156(A173773(n))` -/
def P9667813639277024064.Spec : Prop :=
  ∀ n, P9667813639277024064.a n = A173039 (n + 1)

end A173039

/-! ## A173039.P17826041023460512265

`A000265(A042968(n+1)²)-A188134(A042968(n+1))`
-/

namespace A173039.P17826041023460512265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A042968 (n + 1) ^ 2).toNat - A188134 (A042968 (n + 1)).toNat

end

end A173039.P17826041023460512265

namespace A173039

/-- `A000265(A042968(n+1)²)-A188134(A042968(n+1))` -/
def P17826041023460512265.Spec : Prop :=
  ∀ n, P17826041023460512265.a n = A173039 (n + 1)

end A173039

/-! ## A173039.P14377716073196508757

`A097062(A173536(n+1))-2`
-/

namespace A173039.P14377716073196508757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (A173536 (n + 1)).toNat - 2

end

end A173039.P14377716073196508757

namespace A173039

/-- `A097062(A173536(n+1))-2` -/
def P14377716073196508757.Spec : Prop :=
  ∀ n, P14377716073196508757.a n = A173039 (n + 1)

end A173039

/-! ## A173039.P4061913702935998576

`A097062((1-A265667(n))²)-2`
-/

namespace A173039.P4061913702935998576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 ((1 - A265667 n) ^ 2).toNat - 2

end

end A173039.P4061913702935998576

namespace A173039

/-- `A097062((1-A265667(n))²)-2` -/
def P4061913702935998576.Spec : Prop :=
  ∀ n, P4061913702935998576.a n = A173039 (n + 1)

end A173039

/-!
# A173040: Single primes having no representation of the form n-+d(n), where d(n) is the number of divisors of n.

The programs for A173040, there is no canonical definition to state claims against.
-/

/-! ## A173040.P1511399258586690563

`p?[A348093(n+1)]`
-/

namespace A173040.P1511399258586690563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173040.P1511399258586690563

/-! ## A173040.P6139809934677686157

`p?[record[A348093(A052938(n))]]`
-/

namespace A173040.P6139809934677686157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173040.P6139809934677686157

/-! ## A173040.P9635648015287166010

`filter[A348093(n+1), A010051(#)]`
-/

namespace A173040.P9635648015287166010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A173040.P9635648015287166010

/-! ## A173040.P10943242423961307564

`filter[A348093(n+1), A080339(#)]`
-/

namespace A173040.P10943242423961307564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A173040.P10943242423961307564

/-! ## A173040.P3453495875819298441

`filter[A348093(n+1), A080545(#)]`
-/

namespace A173040.P3453495875819298441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A173040.P3453495875819298441

/-! ## A173040.P9237881889836911863

`filter[A348093(n+1), A171387(#)]`
-/

namespace A173040.P9237881889836911863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A173040.P9237881889836911863

/-! ## A173040.P10037754951283905338

`filter[A348093(n+1), A302777(#)]`
-/

namespace A173040.P10037754951283905338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A173040.P10037754951283905338

/-! ## A173040.P14662732639593430067

`filter[A348093(n+1), A323152(#)]`
-/

namespace A173040.P14662732639593430067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A173040.P14662732639593430067

/-! ## A173040.P5867591261258821079

`filter[A348093(n+1), A323153(#)]`
-/

namespace A173040.P5867591261258821079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A173040.P5867591261258821079

/-! ## A173040.P11201191071437631334

`filter[A348093(n+1), A355937(#)]`
-/

namespace A173040.P11201191071437631334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A173040.P11201191071437631334

/-!
# A173041: a(n) = 2*10^n + 3.

The programs for A173041, the canonical program `A173041.P2098755369761441248` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173041 has offset 0).

The definition of A173041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*10^n+3` (program `A173041.P2098755369761441248`, by `A173041.P2098755369761441248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173041.P2098755369761441248

`2*10^n+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173041

/-- `2*10^n+3` -/
def P2098755369761441248.Spec : Prop :=
  ∀ n, (P2098755369761441248.a n : ℤ) = A173041 n

theorem P2098755369761441248.correct : P2098755369761441248.Spec := by
  intro n
  simp only [A173041]

end A173041

/-! ## A173041.P7575339631037475249

`∑[10*a(n-1)]` with `a(0)=5, a(1)=18`
-/

namespace A173041.P7575339631037475249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 18] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173041.P7575339631037475249

namespace A173041

/-- `∑[10*a(n-1)]` -/
def P7575339631037475249.Spec : Prop :=
  ∀ n, (P7575339631037475249.a n : ℤ) = A173041 n

end A173041

/-! ## A173041.P4582239779616740024

`abs(10*a(n-1)-27)` with `a(0)=5`
-/

namespace A173041.P4582239779616740024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |10 * a (n - 1) - 27|

end

end A173041.P4582239779616740024

namespace A173041

/-- `abs(10*a(n-1)-27)` -/
def P4582239779616740024.Spec : Prop :=
  ∀ n, P4582239779616740024.a n = A173041 n

end A173041

/-! ## A173041.P17456856703458786413

`(A199684(n)+5)/2`
-/

namespace A173041.P17456856703458786413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199684 n + 5 : ℚ) / 2

end

end A173041.P17456856703458786413

namespace A173041

/-- `(A199684(n)+5)/2` -/
def P17456856703458786413.Spec : Prop :=
  ∀ n, P17456856703458786413.a n = (A173041 n : ℚ)

end A173041

/-! ## A173041.P17930876646500878065

`or(1, A199682(n)+1)`
-/

namespace A173041.P17930876646500878065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A199682 n + 1)

end

end A173041.P17930876646500878065

namespace A173041

/-- `or(1, A199682(n)+1)` -/
def P17930876646500878065.Spec : Prop :=
  ∀ n, P17930876646500878065.a n = A173041 n

end A173041

/-! ## A173041.P6341212643664059838

`abs(Δ[A002276(n)]+3)`
-/

namespace A173041.P6341212643664059838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 3|

end

end A173041.P6341212643664059838

namespace A173041

/-- `abs(Δ[A002276(n)]+3)` -/
def P6341212643664059838.Spec : Prop :=
  ∀ n, P6341212643664059838.a n = A173041 n

end A173041

/-! ## A173041.P2215537981443784326

`Δ[A093135(n)+3*n]`
-/

namespace A173041.P2215537981443784326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093135 n + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173041.P2215537981443784326

namespace A173041

/-- `Δ[A093135(n)+3*n]` -/
def P2215537981443784326.Spec : Prop :=
  ∀ n, P2215537981443784326.a n = A173041 n

end A173041

/-! ## A173041.P10648924076125864245

`or(1, A067272(n+1)+4)`
-/

namespace A173041.P10648924076125864245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A067272 (n + 1) + 4)

end

end A173041.P10648924076125864245

namespace A173041

/-- `or(1, A067272(n+1)+4)` -/
def P10648924076125864245.Spec : Prop :=
  ∀ n, P10648924076125864245.a n = A173041 n

end A173041

/-! ## A173041.P3162845411879145468

`abs(2*(A011557(n)+2)-1)`
-/

namespace A173041.P3162845411879145468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A011557 n + 2) - 1|

end

end A173041.P3162845411879145468

namespace A173041

/-- `abs(2*(A011557(n)+2)-1)` -/
def P3162845411879145468.Spec : Prop :=
  ∀ n, P3162845411879145468.a n = A173041 n

end A173041

/-! ## A173041.P17992031759604322934

`or(1, ∑[3*A090019(n)]+2)`
-/

namespace A173041.P17992031759604322934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A173041.P17992031759604322934

namespace A173041

/-- `or(1, ∑[3*A090019(n)]+2)` -/
def P17992031759604322934.Spec : Prop :=
  ∀ n, P17992031759604322934.a n = A173041 n

end A173041

/-! ## A173041.P18085430597152792303

`Δ[3*n+2*A002275(n)]`
-/

namespace A173041.P18085430597152792303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + 2 * A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173041.P18085430597152792303

namespace A173041

/-- `Δ[3*n+2*A002275(n)]` -/
def P18085430597152792303.Spec : Prop :=
  ∀ n, P18085430597152792303.a n = A173041 n

end A173041

/-! ## A173041.P10657885292416445423

`or(1, A004643(2*n+1)+2)`
-/

namespace A173041.P10657885292416445423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004643 (2 * n + 1) + 2)

end

end A173041.P10657885292416445423

namespace A173041

/-- `or(1, A004643(2*n+1)+2)` -/
def P10657885292416445423.Spec : Prop :=
  ∀ n, P10657885292416445423.a n = A173041 n

end A173041

/-! ## A173041.P15476504932997467876

`Δ[2*A047855(n)+3*(n+2)]`
-/

namespace A173041.P15476504932997467876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047855 n + (3 * (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173041.P15476504932997467876

namespace A173041

/-- `Δ[2*A047855(n)+3*(n+2)]` -/
def P15476504932997467876.Spec : Prop :=
  ∀ n, P15476504932997467876.a n = A173041 n

end A173041

/-! ## A173041.P10318157857918184933

`Δ[A016789(n)+A002276(n)]`
-/

namespace A173041.P10318157857918184933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173041.P10318157857918184933

namespace A173041

/-- `Δ[A016789(n)+A002276(n)]` -/
def P10318157857918184933.Spec : Prop :=
  ∀ n, P10318157857918184933.a n = A173041 n

end A173041

/-!
# A173044: Product plus sum of five consecutive nonnegative numbers.

The programs for A173044, the canonical program `A173044.P4946247005506153513` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173044 has offset 0).

The definition of A173044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173044.P4946247005506153513

`(n+2)*(n^4+8*n^3+19*n²+12*n+5)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173044

/-- `(n+2)*(n^4+8*n^3+19*n²+12*n+5)` -/
def P4946247005506153513.Spec : Prop :=
  ∀ n, (P4946247005506153513.a n : ℤ) = A173044 n

theorem P4946247005506153513.correct : P4946247005506153513.Spec := by
  intro n
  simp only [A173044]

end A173044

/-! ## A173044.P17783552452502303929

`∑[5*A062938(n)]+5`
-/

namespace A173044.P17783552452502303929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A062938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A173044.P17783552452502303929

namespace A173044

/-- `∑[5*A062938(n)]+5` -/
def P17783552452502303929.Spec : Prop :=
  ∀ n, P17783552452502303929.a n = A173044 n

end A173044

/-! ## A173044.P13652562296814552400

`5*(A158874(n)+1+n)+5`
-/

namespace A173044.P13652562296814552400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158874 n + 1 + (n : ℤ)) + 5

end

end A173044.P13652562296814552400

namespace A173044

/-- `5*(A158874(n)+1+n)+5` -/
def P13652562296814552400.Spec : Prop :=
  ∀ n, P13652562296814552400.a n = A173044 n

end A173044

/-! ## A173044.P10179891412050120215

`A166942(n)+4*A166942(n)`
-/

namespace A173044.P10179891412050120215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166942 n + 4 * A166942 n

end

end A173044.P10179891412050120215

namespace A173044

/-- `A166942(n)+4*A166942(n)` -/
def P10179891412050120215.Spec : Prop :=
  ∀ n, P10179891412050120215.a n = A173044 n

end A173044

/-! ## A173044.P12443781058867748063

`∑[5*A000038(n)!*A062938(n)]`
-/

namespace A173044.P12443781058867748063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.factorial (A000038 n).toNat : ℤ) * A062938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173044.P12443781058867748063

namespace A173044

/-- `∑[5*A000038(n)!*A062938(n)]` -/
def P12443781058867748063.Spec : Prop :=
  ∀ n, P12443781058867748063.a n = A173044 n

end A173044

/-! ## A173044.P16061075421630218576

`4*(n*A033487(n+1)+n+2)+n+2`
-/

namespace A173044.P16061075421630218576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A033487 (n + 1) + (n + 2 : ℤ)) + (n + 2 : ℤ)

end

end A173044.P16061075421630218576

namespace A173044

/-- `4*(n*A033487(n+1)+n+2)+n+2` -/
def P16061075421630218576.Spec : Prop :=
  ∀ n, P16061075421630218576.a n = A173044 n

end A173044

/-! ## A173044.P10666370304548876650

`∑[A033429((n+1)²+n)]+5`
-/

namespace A173044.P10666370304548876650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 ((n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A173044.P10666370304548876650

namespace A173044

/-- `∑[A033429((n+1)²+n)]+5` -/
def P10666370304548876650.Spec : Prop :=
  ∀ n, P10666370304548876650.a n = A173044 n

end A173044

/-!
# A173046: Triangle T(n, k, q) = binomial(n, k) + q^n*binomial(n-2, k-1) - 1 with T(n, 0) = T(n, n) = 1 and q = 2, read by rows.

The programs for A173046, there is no canonical definition to state claims against.
-/

/-! ## A173046.P8662435668011594706

`2*A146986(n)-A132735(n)`
-/

namespace A173046.P8662435668011594706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146986 n - A132735 n

end

end A173046.P8662435668011594706

/-! ## A173046.P1493909220135904600

`A004277(A146986(n))-A132735(n)`
-/

namespace A173046.P1493909220135904600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A146986 n).toNat - A132735 n

end

end A173046.P1493909220135904600

/-! ## A173046.P4519233311850169866

`A319656(A173043(n))`
-/

namespace A173046.P4519233311850169866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 (A173043 n).toNat

end

end A173046.P4519233311850169866

/-! ## A173046.P7261146365629844501

`A354435(A181370(n+1))`
-/

namespace A173046.P7261146365629844501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354435 (A181370 (n + 1)).toNat

end

end A173046.P7261146365629844501

/-! ## A173046.P10476653000109431529

`A173043(n)%(4*A108285(2*n+3))`
-/

namespace A173046.P10476653000109431529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173043 n) (4 * A108285 (2 * n + 3))

end

end A173046.P10476653000109431529

/-!
# A173047: Triangle T(n, k, q) = binomial(n, k) + q^n*binomial(n-2, k-1) - 1 with T(n, 0) = T(n, n) = 1 and q = 3, read by rows.

The programs for A173047, there is no canonical definition to state claims against.
-/

/-! ## A173047.P9430778640567478806

`A207829(A146766(n))`
-/

namespace A173047.P9430778640567478806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207829 (A146766 n).toNat

end

end A173047.P9430778640567478806

/-! ## A173047.P14324116288080578660

`A230034(A154984(n))`
-/

namespace A173047.P14324116288080578660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230034 (A154984 n).toNat

end

end A173047.P14324116288080578660

/-! ## A173047.P17110670758531845366

`A258266(A154979(n))`
-/

namespace A173047.P17110670758531845366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A154979 n).toNat

end

end A173047.P17110670758531845366

/-! ## A173047.P5149500381409593616

`A390531(A034801(n))`
-/

namespace A173047.P5149500381409593616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390531 (A034801 n).toNat

end

end A173047.P5149500381409593616

/-! ## A173047.P11446050451719629796

`A000196(A173045(n)²)`
-/

namespace A173047.P11446050451719629796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A173045 n ^ 2).toNat

end

end A173047.P11446050451719629796

/-!
# A173048: Triangle T(n, k) = [x^k](p(x, n, q)) where p(x,n,q) = Product_{j=1..n} (x + q^j) + Product_{j=1..n} (x*q^j + 1), p(x, 0, q) = 1, and q = 2, read by rows.

The programs for A173048, there is no canonical definition to state claims against.
-/

/-! ## A173048.P16701738813550206890

`A065361(A173049(n))`
-/

namespace A173048.P16701738813550206890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A173049 n).toNat

end

end A173048.P16701738813550206890

/-!
# A173050: Triangle, read by rows, given by [0,1,1,1,1,1,1,1,...] DELTA [1,0,1,0,2,0,3,0,4,0,5,0,6,0,...] where DELTA is the operator defined in A084938.

The programs for A173050, there is no canonical definition to state claims against.
-/

/-! ## A173050.P6189848497291801014

`A172380(n)-A338210(A144324(n+1))`
-/

namespace A173050.P6189848497291801014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172380 n - A338210 (A144324 (n + 1)).toNat

end

end A173050.P6189848497291801014

/-! ## A173050.P14305803668052703378

`A172380(n)-A250002(A176668(n))`
-/

namespace A173050.P14305803668052703378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172380 n - A250002 (A176668 n).toNat

end

end A173050.P14305803668052703378

/-! ## A173050.P13230967349287738685

`A172380(n)-A309785(A331562(n))`
-/

namespace A173050.P13230967349287738685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172380 n - A309785 (A331562 n).toNat

end

end A173050.P13230967349287738685

/-!
# A173051: Partial sums of A050288.

The programs for A173051, there is no canonical definition to state claims against.
-/

/-! ## A173051.P11893493026387159817

`∑[A050288(n+1)]`
-/

namespace A173051.P11893493026387159817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173051.P11893493026387159817

/-! ## A173051.P8915588114084100296

`∑[record[A050288(A291769(n))]]`
-/

namespace A173051.P8915588114084100296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050288 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173051.P8915588114084100296

/-! ## A173051.P16822576792481748640

`∑[record[A050288(A328396(n))]]`
-/

namespace A173051.P16822576792481748640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050288 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173051.P16822576792481748640

/-! ## A173051.P702975484618028188

`∑[record[A050288(A126759(n))]]`
-/

namespace A173051.P702975484618028188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050288 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173051.P702975484618028188

/-! ## A173051.P12091201521146229766

`∑[record[A050288(A065648(n))]]`
-/

namespace A173051.P12091201521146229766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050288 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173051.P12091201521146229766

/-! ## A173051.P11681167418109430838

`∑[record[A050288(A286478(n))]]`
-/

namespace A173051.P11681167418109430838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050288 (A286478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173051.P11681167418109430838

/-! ## A173051.P12685130493276278251

`∑[record[A050288(A137734(n))]]`
-/

namespace A173051.P12685130493276278251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050288 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173051.P12685130493276278251

/-!
# A173052: Partial sums of A072857.

The programs for A173052, there is no canonical definition to state claims against.
-/

/-! ## A173052.P5297829234220330010

`∑[A072857(n+1)]`
-/

namespace A173052.P5297829234220330010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173052.P5297829234220330010

/-! ## A173052.P7067764620203150902

`∑[record[A072857(A028920(n))]]`
-/

namespace A173052.P7067764620203150902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173052.P7067764620203150902

/-! ## A173052.P13673883436133970498

`∑[record[A072857(A065648(n))]]`
-/

namespace A173052.P13673883436133970498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173052.P13673883436133970498

/-! ## A173052.P8275707284266033690

`∑[record[A072857(A109785(n))]]`
-/

namespace A173052.P8275707284266033690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173052.P8275707284266033690

/-! ## A173052.P12454374126800376690

`∑[record[A072857(A117910(n))]]`
-/

namespace A173052.P12454374126800376690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072857 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173052.P12454374126800376690

/-!
# A173053: Numbers n such that 2^(2*n)+2*n+1 is a prime.

The programs for A173053, there is no canonical definition to state claims against.
-/

/-! ## A173053.P9352270417262496938

`floor(A061422(n+1)/2)`
-/

namespace A173053.P9352270417262496938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061422 (n + 1) : ℚ) / 2⌋

end

end A173053.P9352270417262496938

/-! ## A173053.P18029757818945833256

`A100359(n+1)/2`
-/

namespace A173053.P18029757818945833256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100359 (n + 1) : ℚ) / 2

end

end A173053.P18029757818945833256

/-! ## A173053.P5112360010601635723

`xor(1, A061422(gcd(n²+n, ∏{p}[n+1, #²])))/2`
-/

namespace A173053.P5112360010601635723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A061422 (Nat.gcd (n ^ 2 + n) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))) : ℚ) / 2

end

end A173053.P5112360010601635723

/-!
# A173054: Numbers of the form x^y + y^x, 1 < x < y.

The programs for A173054, there is no canonical definition to state claims against.
-/

/-! ## A173054.P6221385430218021570

`∩[A076980(n+1), A385232(n+1)]`
-/

namespace A173054.P6221385430218021570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173054.P6221385430218021570

/-! ## A173054.P1819901522957159774

`∩[A076980(n+1), A385969(n+1)]`
-/

namespace A173054.P1819901522957159774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173054.P1819901522957159774

/-! ## A173054.P10144827095900966640

`∩[A076980(n+1), A387302(n+1)]`
-/

namespace A173054.P10144827095900966640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173054.P10144827095900966640

/-! ## A173054.P10163852073550860651

`∩[A385232(n+1), A387302(n+1)]`
-/

namespace A173054.P10163852073550860651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173054.P10163852073550860651

/-! ## A173054.P13671169335566430702

`filter[A076980(n+2), A316824(#)]`
-/

namespace A173054.P13671169335566430702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316824 (f1 j).toNat = 1) n)

end

end A173054.P13671169335566430702

/-!
# A173056: Numbers of the form a^b+b^a, a and b are primes.

The programs for A173056, there is no canonical definition to state claims against.
-/

/-! ## A173056.P2915640314007615504

`filter[A076980(n+2), A189628(#)]`
-/

namespace A173056.P2915640314007615504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189628 (f1 j).toNat = 1) n)

end

end A173056.P2915640314007615504

/-! ## A173056.P3617977649770477799

`∩[A076980(A005097(n+1)), A287073(n+1)]`
-/

namespace A173056.P3617977649770477799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076980 (A005097 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173056.P3617977649770477799

/-!
# A173057: Partial sums of A024770.

The programs for A173057, there is no canonical definition to state claims against.
-/

/-! ## A173057.P995721866089721508

`∑[A024770(n+1)]`
-/

namespace A173057.P995721866089721508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P995721866089721508

/-! ## A173057.P5863912176333171812

`∑[2*A024770(-xor(n, -1))]/2`
-/

namespace A173057.P5863912176333171812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024770 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A173057.P5863912176333171812

/-! ## A173057.P17446153367127968628

`∑[record[A024770(A022446(n))]]`
-/

namespace A173057.P17446153367127968628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P17446153367127968628

/-! ## A173057.P15462031834273114441

`∑[record[A024770(A065648(n))]]`
-/

namespace A173057.P15462031834273114441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P15462031834273114441

/-! ## A173057.P6811148284341749050

`∑[record[A024770(A106466(n))]]`
-/

namespace A173057.P6811148284341749050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P6811148284341749050

/-! ## A173057.P13136866899644732246

`∑[record[A024770(A109785(n))]]`
-/

namespace A173057.P13136866899644732246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P13136866899644732246

/-! ## A173057.P17294231862101275273

`∑[record[A024770(A117910(n))]]`
-/

namespace A173057.P17294231862101275273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P17294231862101275273

/-! ## A173057.P11549727779995905016

`∑[record[A024770(A126759(n))]]`
-/

namespace A173057.P11549727779995905016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P11549727779995905016

/-! ## A173057.P12370151587180374131

`∑[record[A024770(A133310(n))]]`
-/

namespace A173057.P12370151587180374131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P12370151587180374131

/-! ## A173057.P7744555996623570655

`∑[record[A024770(A154958(n))]]`
-/

namespace A173057.P7744555996623570655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173057.P7744555996623570655

/-!
# A173059: Nonnegative numbers k such that 2*k + 17 is prime.

The programs for A173059, the canonical program `A173059.P8847239120286303274` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173059 has offset 1).

The definition of A173059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173059.P3796815357148759984

`A089559(n+1)-1`
-/

namespace A173059.P3796815357148759984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1) - 1

end

end A173059.P3796815357148759984

namespace A173059

/-- `A089559(n+1)-1` -/
def P3796815357148759984.Spec : Prop :=
  ∀ n, P3796815357148759984.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P2737689065850043732

`A086303(n+1)/2-1`
-/

namespace A173059.P2737689065850043732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086303 (n + 1) : ℚ) / 2 - 1

end

end A173059.P2737689065850043732

namespace A173059

/-- `A086303(n+1)/2-1` -/
def P2737689065850043732.Spec : Prop :=
  ∀ n, P2737689065850043732.a n = (A173059 (n + 1) : ℚ)

end A173059

/-! ## A173059.P10372456371713982311

`A273943(∑[A001223(n+6)])-2`
-/

namespace A173059.P10372456371713982311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A173059.P10372456371713982311

namespace A173059

/-- `A273943(∑[A001223(n+6)])-2` -/
def P10372456371713982311.Spec : Prop :=
  ∀ n, P10372456371713982311.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P8847239120286303274

`A153143(A028310(n))+A057427(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A173059

/-- `A153143(A028310(n))+A057427(n)` -/
def P8847239120286303274.Spec : Prop :=
  ∀ n, P8847239120286303274.a n = A173059 (n + 1)

theorem P8847239120286303274.correct : P8847239120286303274.Spec := by
  intro n
  simp only [A173059, Nat.add_sub_cancel]

end A173059

/-! ## A173059.P8147560282820990384

`A153081(n+2)-2`
-/

namespace A173059.P8147560282820990384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 2) - 2

end

end A173059.P8147560282820990384

namespace A173059

/-- `A153081(n+2)-2` -/
def P8147560282820990384.Spec : Prop :=
  ∀ n, P8147560282820990384.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P6551252470064274617

`A101448(n+3)-3`
-/

namespace A173059.P6551252470064274617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 3) - 3

end

end A173059.P6551252470064274617

namespace A173059

/-- `A101448(n+3)-3` -/
def P6551252470064274617.Spec : Prop :=
  ∀ n, P6551252470064274617.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P17536219059277741674

`A155722(n+3)-4`
-/

namespace A173059.P17536219059277741674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 3) - 4

end

end A173059.P17536219059277741674

namespace A173059

/-- `A155722(n+3)-4` -/
def P17536219059277741674.Spec : Prop :=
  ∀ n, P17536219059277741674.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P9579274392814570025

`A008507(A020715(n))-2+n`
-/

namespace A173059.P9579274392814570025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (A020715 n).toNat - 2 + (n : ℤ)

end

end A173059.P9579274392814570025

namespace A173059

/-- `A008507(A020715(n))-2+n` -/
def P9579274392814570025.Spec : Prop :=
  ∀ n, P9579274392814570025.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P17382123033278286675

`(A000040(n+7)-15)/2-1`
-/

namespace A173059.P17382123033278286675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 7) - 15 : ℚ) / 2 - 1

end

end A173059.P17382123033278286675

namespace A173059

/-- `(A000040(n+7)-15)/2-1` -/
def P17382123033278286675.Spec : Prop :=
  ∀ n, P17382123033278286675.a n = (A173059 (n + 1) : ℚ)

end A173059

/-! ## A173059.P18369794407564754039

`lt[A001222(2*n+17), 2]`
-/

namespace A173059.P18369794407564754039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 17)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173059.P18369794407564754039

namespace A173059

/-- `lt[A001222(2*n+17), 2]` -/
def P18369794407564754039.Spec : Prop :=
  ∀ n, (P18369794407564754039.a n : ℤ) = A173059 (n + 1)

end A173059

/-! ## A173059.P4900711775726613501

`eq[1, A010051(2*(n+7)+3)]`
-/

namespace A173059.P4900711775726613501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 7) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173059.P4900711775726613501

namespace A173059

/-- `eq[1, A010051(2*(n+7)+3)]` -/
def P4900711775726613501.Spec : Prop :=
  ∀ n, (P4900711775726613501.a n : ℤ) = A173059 (n + 1)

end A173059

/-! ## A173059.P9834080589205830635

`lt[A000005(2*(n+7)+3), 3]`
-/

namespace A173059.P9834080589205830635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 7) + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173059.P9834080589205830635

namespace A173059

/-- `lt[A000005(2*(n+7)+3), 3]` -/
def P9834080589205830635.Spec : Prop :=
  ∀ n, (P9834080589205830635.a n : ℤ) = A173059 (n + 1)

end A173059

/-! ## A173059.P9108436805551571297

`eq[1, A001222(2*(n+4)+9)]`
-/

namespace A173059.P9108436805551571297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 4) + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173059.P9108436805551571297

namespace A173059

/-- `eq[1, A001222(2*(n+4)+9)]` -/
def P9108436805551571297.Spec : Prop :=
  ∀ n, (P9108436805551571297.a n : ℤ) = A173059 (n + 1)

end A173059

/-! ## A173059.P7013681910657274661

`record[n+1-A097272(2*n+1)²]`
-/

namespace A173059.P7013681910657274661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A097272 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173059.P7013681910657274661

namespace A173059

/-- `record[n+1-A097272(2*n+1)²]` -/
def P7013681910657274661.Spec : Prop :=
  ∀ n, P7013681910657274661.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P1638113852558651047

`A004483(A089559(n+1))`
-/

namespace A173059.P1638113852558651047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A089559 (n + 1)).toNat

end

end A173059.P1638113852558651047

namespace A173059

/-- `A004483(A089559(n+1))` -/
def P1638113852558651047.Spec : Prop :=
  ∀ n, P1638113852558651047.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P14941760367289053188

`A023444(A153081(n+2))`
-/

namespace A173059.P14941760367289053188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A153081 (n + 2)).toNat

end

end A173059.P14941760367289053188

namespace A173059

/-- `A023444(A153081(n+2))` -/
def P14941760367289053188.Spec : Prop :=
  ∀ n, P14941760367289053188.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P11732019957854468999

`A023444(A089559(n+1)+1)`
-/

namespace A173059.P11732019957854468999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089559 (n + 1) + 1).toNat

end

end A173059.P11732019957854468999

namespace A173059

/-- `A023444(A089559(n+1)+1)` -/
def P11732019957854468999.Spec : Prop :=
  ∀ n, P11732019957854468999.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P2342835564635242473

`A004483(A086303(n+1)/2)`
-/

namespace A173059.P2342835564635242473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (SequenceMachineLib.roundAway ((A086303 (n + 1) : ℚ) / 2)).toNat

end

end A173059.P2342835564635242473

namespace A173059

/-- `A004483(A086303(n+1)/2)` -/
def P2342835564635242473.Spec : Prop :=
  ∀ n, P2342835564635242473.a n = A173059 (n + 1)

end A173059

/-! ## A173059.P16721723239544438382

`eq[2, A099774(n+9)]`
-/

namespace A173059.P16721723239544438382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173059.P16721723239544438382

namespace A173059

/-- `eq[2, A099774(n+9)]` -/
def P16721723239544438382.Spec : Prop :=
  ∀ n, (P16721723239544438382.a n : ℤ) = A173059 (n + 1)

end A173059

/-! ## A173059.P2521230282959425337

`eq[3, A138479(n+3)]-1`
-/

namespace A173059.P2521230282959425337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A173059.P2521230282959425337

namespace A173059

/-- `eq[3, A138479(n+3)]-1` -/
def P2521230282959425337.Spec : Prop :=
  ∀ n, P2521230282959425337.a n = A173059 (n + 1)

end A173059

/-!
# A173060: Partial sums of A024785.

The programs for A173060, there is no canonical definition to state claims against.
-/

/-! ## A173060.P3957587332360332640

`∑[A024785(n+1)]`
-/

namespace A173060.P3957587332360332640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P3957587332360332640

/-! ## A173060.P12348937842987614301

`∑[record[A024785(A328399(n))]]`
-/

namespace A173060.P12348937842987614301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P12348937842987614301

/-! ## A173060.P14830410007275118330

`∑[record[A024785(A344180(n))]]`
-/

namespace A173060.P14830410007275118330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P14830410007275118330

/-! ## A173060.P2576341676178628913

`∑[record[A024785(A126759(n))]]`
-/

namespace A173060.P2576341676178628913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P2576341676178628913

/-! ## A173060.P8979934041186946997

`∑[record[A024785(A065648(n))]]`
-/

namespace A173060.P8979934041186946997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P8979934041186946997

/-! ## A173060.P11299346032656215184

`∑[∩[A033664(n+1), A038618(n+1)]]`
-/

namespace A173060.P11299346032656215184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P11299346032656215184

/-! ## A173060.P6954389785833665447

`∑[record[A004719(A033664(n+1))]]`
-/

namespace A173060.P6954389785833665447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A033664 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P6954389785833665447

/-! ## A173060.P15720861765484788315

`∑[record[A004719(A308711(n+1))]]`
-/

namespace A173060.P15720861765484788315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A308711 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P15720861765484788315

/-! ## A173060.P9977877902539933094

`∑[record[A024785(A137735(n))]]`
-/

namespace A173060.P9977877902539933094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173060.P9977877902539933094

/-!
# A173062: Primes of the form 2^r * 13^s - 1.

The programs for A173062, there is no canonical definition to state claims against.
-/

/-! ## A173062.P6192849223433525637

`p?[A107326(n+1)-1]`
-/

namespace A173062.P6192849223433525637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173062.P6192849223433525637

/-! ## A173062.P2551485051330988221

`p?[Δ[A107326(A158416(n))]]`
-/

namespace A173062.P2551485051330988221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173062.P2551485051330988221

/-! ## A173062.P10957973606878914856

`p?[A112190(A166333(2*n+1))+A107326(n+1)]`
-/

namespace A173062.P10957973606878914856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112190 (A166333 (2 * n + 1)).toNat + A107326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173062.P10957973606878914856

/-! ## A173062.P926451544802069351

`p?[eq[3, A006530(A076618(n+1))]]`
-/

namespace A173062.P926451544802069351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076618 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173062.P926451544802069351

/-!
# A173064: a(n) = prime(n) - 5.

The programs for A173064, the canonical program `A173064.P10400322332268938577` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173064 has offset 3).

The definition of A173064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173064.P10400322332268938577

`p?[2*n+5]-5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173064

/-- `p?[2*n+5]-5` -/
def P10400322332268938577.Spec : Prop :=
  ∀ n, P10400322332268938577.a n = A173064 (n + 3)

theorem P10400322332268938577.correct : P10400322332268938577.Spec := by
  intro n
  simp only [A173064, Nat.add_sub_cancel]

end A173064

/-! ## A173064.P17799559756310234485

`A172367(n+1)-1`
-/

namespace A173064.P17799559756310234485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) - 1

end

end A173064.P17799559756310234485

namespace A173064

/-- `A172367(n+1)-1` -/
def P17799559756310234485.Spec : Prop :=
  ∀ n, P17799559756310234485.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P3515945548692403982

`2*A089038(n+1)`
-/

namespace A173064.P3515945548692403982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089038 (n + 1)

end

end A173064.P3515945548692403982

namespace A173064

/-- `2*A089038(n+1)` -/
def P3515945548692403982.Spec : Prop :=
  ∀ n, P3515945548692403982.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P16802178081912160959

`A215848(n+1)-5`
-/

namespace A173064.P16802178081912160959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - 5

end

end A173064.P16802178081912160959

namespace A173064

/-- `A215848(n+1)-5` -/
def P16802178081912160959.Spec : Prop :=
  ∀ n, P16802178081912160959.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P17347631236304075666

`A156037(n+3)-4`
-/

namespace A173064.P17347631236304075666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 3) - 4

end

end A173064.P17347631236304075666

namespace A173064

/-- `A156037(n+3)-4` -/
def P17347631236304075666.Spec : Prop :=
  ∀ n, P17347631236304075666.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P18404592644958259574

`∑[A001223(n+2)]-2`
-/

namespace A173064.P18404592644958259574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A173064.P18404592644958259574

namespace A173064

/-- `∑[A001223(n+2)]-2` -/
def P18404592644958259574.Spec : Prop :=
  ∀ n, P18404592644958259574.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P14839478373415536354

`2*(A161720(n+3)+1)`
-/

namespace A173064.P14839478373415536354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A161720 (n + 3) + 1)

end

end A173064.P14839478373415536354

namespace A173064

/-- `2*(A161720(n+3)+1)` -/
def P14839478373415536354.Spec : Prop :=
  ∀ n, P14839478373415536354.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P2546222796380521197

`∑[Δ[p?[2*n+1]]%(2*n+1)]`
-/

namespace A173064.P2546222796380521197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173064.P2546222796380521197

namespace A173064

/-- `∑[Δ[p?[2*n+1]]%(2*n+1)]` -/
def P2546222796380521197.Spec : Prop :=
  ∀ n, P2546222796380521197.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P11195110844234967732

`A118538(n+2)+1`
-/

namespace A173064.P11195110844234967732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 2) + 1

end

end A173064.P11195110844234967732

namespace A173064

/-- `A118538(n+2)+1` -/
def P11195110844234967732.Spec : Prop :=
  ∀ n, P11195110844234967732.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P10097133617984237937

`A154115(n+2)-2`
-/

namespace A173064.P10097133617984237937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 2) - 2

end

end A173064.P10097133617984237937

namespace A173064

/-- `A154115(n+2)-2` -/
def P10097133617984237937.Spec : Prop :=
  ∀ n, P10097133617984237937.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P4204230939315343753

`A165972(n+2)-4`
-/

namespace A173064.P4204230939315343753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 2) - 4

end

end A173064.P4204230939315343753

namespace A173064

/-- `A165972(n+2)-4` -/
def P4204230939315343753.Spec : Prop :=
  ∀ n, P4204230939315343753.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P13600438388091424846

`A045344(n+2)-5`
-/

namespace A173064.P13600438388091424846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - 5

end

end A173064.P13600438388091424846

namespace A173064

/-- `A045344(n+2)-5` -/
def P13600438388091424846.Spec : Prop :=
  ∀ n, P13600438388091424846.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P7873705304275656330

`A065091(n+2)-5`
-/

namespace A173064.P7873705304275656330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - 5

end

end A173064.P7873705304275656330

namespace A173064

/-- `A065091(n+2)-5` -/
def P7873705304275656330.Spec : Prop :=
  ∀ n, P7873705304275656330.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P501437956957603987

`A140475(n+2)-5`
-/

namespace A173064.P501437956957603987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 2) - 5

end

end A173064.P501437956957603987

namespace A173064

/-- `A140475(n+2)-5` -/
def P501437956957603987.Spec : Prop :=
  ∀ n, P501437956957603987.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P13144004863237708631

`A135731(n+2)-6`
-/

namespace A173064.P13144004863237708631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 2) - 6

end

end A173064.P13144004863237708631

namespace A173064

/-- `A135731(n+2)-6` -/
def P13144004863237708631.Spec : Prop :=
  ∀ n, P13144004863237708631.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P9743882644008173419

`A048974(n+2)-7`
-/

namespace A173064.P9743882644008173419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 2) - 7

end

end A173064.P9743882644008173419

namespace A173064

/-- `A048974(n+2)-7` -/
def P9743882644008173419.Spec : Prop :=
  ∀ n, P9743882644008173419.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P2307689473528220320

`Δ[A071148(n+1)]-5`
-/

namespace A173064.P2307689473528220320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 5

end

end A173064.P2307689473528220320

namespace A173064

/-- `Δ[A071148(n+1)]-5` -/
def P2307689473528220320.Spec : Prop :=
  ∀ n, P2307689473528220320.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P11753026148627135248

`2*(A067076(n+2)-1)`
-/

namespace A173064.P11753026148627135248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067076 (n + 2) - 1)

end

end A173064.P11753026148627135248

namespace A173064

/-- `2*(A067076(n+2)-1)` -/
def P11753026148627135248.Spec : Prop :=
  ∀ n, P11753026148627135248.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P18380338092460484448

`A048448(n+2)-A175222(n+1)`
-/

namespace A173064.P18380338092460484448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2) - A175222 (n + 1)

end

end A173064.P18380338092460484448

namespace A173064

/-- `A048448(n+2)-A175222(n+1)` -/
def P18380338092460484448.Spec : Prop :=
  ∀ n, P18380338092460484448.a n = A173064 (n + 3)

end A173064

/-! ## A173064.P11178979791154861132

`A001043(n+2)-A175222(n+2)`
-/

namespace A173064.P11178979791154861132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) - A175222 (n + 2)

end

end A173064.P11178979791154861132

namespace A173064

/-- `A001043(n+2)-A175222(n+2)` -/
def P11178979791154861132.Spec : Prop :=
  ∀ n, P11178979791154861132.a n = A173064 (n + 3)

end A173064

/-!
# A173066: a(n) = A130665(n-1) - A160120(n).

The programs for A173066, there is no canonical definition to state claims against.
-/

/-! ## A173066.P8803845378011086044

`A130665(n)-A160120(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173066.P8803845378011086044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n - A160120 (n + 1)

end

end A173066.P8803845378011086044

/-! ## A173066.P16051916271418172896

`∑[A173451(n+1)]`
-/

namespace A173066.P16051916271418172896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173066.P16051916271418172896

/-! ## A173066.P5146075829905647741

`abs(∑[A173451(A008619(2*n))])`
-/

namespace A173066.P5146075829905647741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173451 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A173066.P5146075829905647741

/-! ## A173066.P11078593196696965223

`∑[A048883(n)-Δ[A160120(n)]]`
-/

namespace A173066.P11078593196696965223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173066.P11078593196696965223

/-! ## A173066.P3745106541024536416

`∑[A048883(n)-A160121(n+1)]`
-/

namespace A173066.P3745106541024536416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - A160121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173066.P3745106541024536416

/-! ## A173066.P6056085461683169232

`∑[A048883(n)]-A160120(n+1)`
-/

namespace A173066.P6056085461683169232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160120 (n + 1)

end

end A173066.P6056085461683169232

/-! ## A173066.P7284172779042904581

`A130665(n)-∑[A160121(n+1)]`
-/

namespace A173066.P7284172779042904581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173066.P7284172779042904581

/-! ## A173066.P3521494311255087436

`∑[A173451(A008619(2*n))]%A000032(n)`
-/

namespace A173066.P3521494311255087436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173451 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000032 n)

end

end A173066.P3521494311255087436

/-! ## A173066.P9803500751851790312

`∑[A173451(A008619(2*n))]-(n-A292579(n))`
-/

namespace A173066.P9803500751851790312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173451 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - A292579 n)

end

end A173066.P9803500751851790312

/-!
# A173068: a(n) = A160120(n) - A160715(n).

The programs for A173068, there is no canonical definition to state claims against.
-/

/-! ## A173068.P17164898274128556856

`A160120(n)-A160715(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173068.P17164898274128556856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n - A160715 n

end

end A173068.P17164898274128556856

/-! ## A173068.P16654978780843472406

`∑[A173453(n^(n%2))]`
-/

namespace A173068.P16654978780843472406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173068.P16654978780843472406

/-! ## A173068.P2617776807398743068

`∑[A173453(round(acot(n)+n))]`
-/

namespace A173068.P2617776807398743068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173068.P2617776807398743068

/-! ## A173068.P4981910538122140397

`A173453(n)+a(n-1)` with `a(0)=0`
-/

namespace A173068.P4981910538122140397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173453 n + a (n - 1)

end

end A173068.P4981910538122140397

/-! ## A173068.P2061963483140272607

`∑[A173453(abs(1-n)+1)]`
-/

namespace A173068.P2061963483140272607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173068.P2061963483140272607

/-!
# A173069: a(n) = A139251(n) - A105321(n).

The programs for A173069, there is no canonical definition to state claims against.
-/

/-! ## A173069.P2314047425799160565

`A139251(n)-A105321(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173069.P2314047425799160565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - A105321 n

end

end A173069.P2314047425799160565

/-! ## A173069.P12575366372285432668

`Δ[A173454(n)-A139251(n)]`
-/

namespace A173069.P12575366372285432668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173454 n - A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173069.P12575366372285432668

/-! ## A173069.P2882389959326453213

`A139251(n)-Δ[A173522(n)]`
-/

namespace A173069.P2882389959326453213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - (f1 (n + 1) - f1 n)

end

end A173069.P2882389959326453213

/-! ## A173069.P10154985887312470281

`Δ[floor(A187220(n)/2)]-A105321(n)`
-/

namespace A173069.P10154985887312470281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A105321 n

end

end A173069.P10154985887312470281

/-! ## A173069.P14953292683578272192

`A139251(n)-(Δ[n²]-A249304(n))`
-/

namespace A173069.P14953292683578272192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A249304 n)

end

end A173069.P14953292683578272192

/-! ## A173069.P16400054404456972709

`Δ[floor(A187220(n)/2)]-Δ[A173522(n)]`
-/

namespace A173069.P16400054404456972709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (f2 (n + 1) - f2 n)

end

end A173069.P16400054404456972709

/-! ## A173069.P10463780482064658810

`Δ[A139250(n-ceil(n/(n+1)))]-A105321(n)`
-/

namespace A173069.P10463780482064658810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A105321 n

end

end A173069.P10463780482064658810

/-! ## A173069.P5502631543140372303

`A139251(n)+A001489(Δ[A173522(n)])`
-/

namespace A173069.P5502631543140372303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n + A001489 (f1 (n + 1) - f1 n).toNat

end

end A173069.P5502631543140372303

/-! ## A173069.P4670469242775417729

`A139251(n)-Δ[A151566(A004273(n))]`
-/

namespace A173069.P4670469242775417729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - (f1 (n + 1) - f1 n)

end

end A173069.P4670469242775417729

/-! ## A173069.P311318217799933422

`A139251(n)+A173522(n)-A173522(n+1)`
-/

namespace A173069.P311318217799933422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n + (A173522 n - A173522 (n + 1))

end

end A173069.P311318217799933422

/-! ## A173069.P14940591154841994135

`Δ[A004524(A187220(n))-A173522(n)]`
-/

namespace A173069.P14940591154841994135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A187220 n).toNat - A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173069.P14940591154841994135

/-!
# A173070: Palindromic mountain numbers.

The programs for A173070, there is no canonical definition to state claims against.
-/

/-! ## A173070.P3946661095891903794

`∩[A043036(n+1), A134941(n+1)]`
-/

namespace A173070.P3946661095891903794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P3946661095891903794

/-! ## A173070.P1049457511202490191

`∩[A134941(n+1), A393806(n+1)]`
-/

namespace A173070.P1049457511202490191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P1049457511202490191

/-! ## A173070.P15100309672669715522

`∩[A083136(n+1), A134941(n+1)]`
-/

namespace A173070.P15100309672669715522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P15100309672669715522

/-! ## A173070.P2662302782978634600

`∩[A050783(n+1), A134941(n+1)]`
-/

namespace A173070.P2662302782978634600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P2662302782978634600

/-! ## A173070.P14024351406471014619

`∩[A002113(n+1), A134941(n+1)]`
-/

namespace A173070.P14024351406471014619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P14024351406471014619

/-! ## A173070.P14895686287614941206

`∩[A029950(n+1), A134941(n+1)]`
-/

namespace A173070.P14895686287614941206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P14895686287614941206

/-! ## A173070.P15882892343375529568

`∩[A056525(n+1), A134941(n+1)]`
-/

namespace A173070.P15882892343375529568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P15882892343375529568

/-! ## A173070.P7792369913444244706

`∩[A098897(n+1), A134941(n+1)]`
-/

namespace A173070.P7792369913444244706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173070.P7792369913444244706

/-!
# A173071: Palindromic mountain primes.

The programs for A173071, there is no canonical definition to state claims against.
-/

/-! ## A173071.P12168506190145663376

`∩[A084836(n+1), A134951(n+1)]`
-/

namespace A173071.P12168506190145663376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173071.P12168506190145663376

/-! ## A173071.P10615027178234464750

`∩[A002385(n+1), A134941(n+1)]`
-/

namespace A173071.P10615027178234464750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173071.P10615027178234464750

/-! ## A173071.P5723828070623301081

`∩[A173070(n+1), A084836(n+2)]`
-/

namespace A173071.P5723828070623301081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173071.P5723828070623301081

/-! ## A173071.P7642451083731034918

`∩[A002385(n+1), A134951(n+1)]`
-/

namespace A173071.P7642451083731034918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173071.P7642451083731034918

/-! ## A173071.P14567000718121434622

`∩[A050784(n+1), A134941(n+1)]`
-/

namespace A173071.P14567000718121434622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173071.P14567000718121434622

/-!
# A173072: n-th prime minus n-th even number.

The programs for A173072, the canonical program `A173072.P15776542700832946734` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173072 has offset 1).

The definition of A173072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173072.P15776542700832946734

`A000040(n+1)-2*n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173072

/-- `A000040(n+1)-2*n` -/
def P15776542700832946734.Spec : Prop :=
  ∀ n, P15776542700832946734.a n = A173072 (n + 1)

theorem P15776542700832946734.correct : P15776542700832946734.Spec := by
  intro n
  simp only [A173072, Nat.add_sub_cancel]

end A173072

/-! ## A173072.P11352946018541053193

`A131733(n+1)+1`
-/

namespace A173072.P11352946018541053193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + 1

end

end A173072.P11352946018541053193

namespace A173072

/-- `A131733(n+1)+1` -/
def P11352946018541053193.Spec : Prop :=
  ∀ n, P11352946018541053193.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P4467808875618263161

`A014692(n+1)-n`
-/

namespace A173072.P4467808875618263161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - (n : ℤ)

end

end A173072.P4467808875618263161

namespace A173072

/-- `A014692(n+1)-n` -/
def P4467808875618263161.Spec : Prop :=
  ∀ n, P4467808875618263161.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P3221496211073398636

`Δ[A007504(n)]-2*n`
-/

namespace A173072.P3221496211073398636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * n : ℤ)

end

end A173072.P3221496211073398636

namespace A173072

/-- `Δ[A007504(n)]-2*n` -/
def P3221496211073398636.Spec : Prop :=
  ∀ n, P3221496211073398636.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P1897167366156569640

`p?[A259153(n)]-2*n`
-/

namespace A173072.P1897167366156569640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (2 * n : ℤ)

end

end A173072.P1897167366156569640

namespace A173072

/-- `p?[A259153(n)]-2*n` -/
def P1897167366156569640.Spec : Prop :=
  ∀ n, P1897167366156569640.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P18137314457049584060

`A014689(n+1)+1-n`
-/

namespace A173072.P18137314457049584060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (1 - (n : ℤ))

end

end A173072.P18137314457049584060

namespace A173072

/-- `A014689(n+1)+1-n` -/
def P18137314457049584060.Spec : Prop :=
  ∀ n, P18137314457049584060.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P7899016781058870014

`A065890(n+1)+2-n`
-/

namespace A173072.P7899016781058870014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (2 - (n : ℤ))

end

end A173072.P7899016781058870014

namespace A173072

/-- `A065890(n+1)+2-n` -/
def P7899016781058870014.Spec : Prop :=
  ∀ n, P7899016781058870014.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P17790639398797491027

`A095116(n+1)-3*n`
-/

namespace A173072.P17790639398797491027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (3 * n : ℤ)

end

end A173072.P17790639398797491027

namespace A173072

/-- `A095116(n+1)-3*n` -/
def P17790639398797491027.Spec : Prop :=
  ∀ n, P17790639398797491027.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P10364874857448351060

`A129726(n+1)-4*n`
-/

namespace A173072.P10364874857448351060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129726 (n + 1) - (4 * n : ℤ)

end

end A173072.P10364874857448351060

namespace A173072

/-- `A129726(n+1)-4*n` -/
def P10364874857448351060.Spec : Prop :=
  ∀ n, P10364874857448351060.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P17752417564771496651

`A008864(n+1)-Δ[n²]`
-/

namespace A173072.P17752417564771496651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A173072.P17752417564771496651

namespace A173072

/-- `A008864(n+1)-Δ[n²]` -/
def P17752417564771496651.Spec : Prop :=
  ∀ n, P17752417564771496651.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P18349565349604130138

`sqrt(A001248(n+1))-2*n`
-/

namespace A173072.P18349565349604130138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (2 * n : ℝ)

end

end A173072.P18349565349604130138

namespace A173072

/-- `sqrt(A001248(n+1))-2*n` -/
def P18349565349604130138.Spec : Prop :=
  ∀ n, P18349565349604130138.a n = (A173072 (n + 1) : ℝ)

end A173072

/-! ## A173072.P2376876140055119818

`∑[A054541(n+1)]-2*n`
-/

namespace A173072.P2376876140055119818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A173072.P2376876140055119818

namespace A173072

/-- `∑[A054541(n+1)]-2*n` -/
def P2376876140055119818.Spec : Prop :=
  ∀ n, P2376876140055119818.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P13679790409047967526

`A028815(n+1)-(2*n+1)`
-/

namespace A173072.P13679790409047967526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - (2 * n + 1 : ℤ)

end

end A173072.P13679790409047967526

namespace A173072

/-- `A028815(n+1)-(2*n+1)` -/
def P13679790409047967526.Spec : Prop :=
  ∀ n, P13679790409047967526.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P9739520741719335859

`A052147(n+1)-2*(n+1)`
-/

namespace A173072.P9739520741719335859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (2 * (n + 1) : ℤ)

end

end A173072.P9739520741719335859

namespace A173072

/-- `A052147(n+1)-2*(n+1)` -/
def P9739520741719335859.Spec : Prop :=
  ∀ n, P9739520741719335859.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P4303847351566312991

`A040976(n+1)-2*n+2`
-/

namespace A173072.P4303847351566312991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - (2 * n : ℤ) + 2

end

end A173072.P4303847351566312991

namespace A173072

/-- `A040976(n+1)-2*n+2` -/
def P4303847351566312991.Spec : Prop :=
  ∀ n, P4303847351566312991.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P3301176655841446432

`A113935(n+1)-(2*n+3)`
-/

namespace A173072.P3301176655841446432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - (2 * n + 3 : ℤ)

end

end A173072.P3301176655841446432

namespace A173072

/-- `A113935(n+1)-(2*n+3)` -/
def P3301176655841446432.Spec : Prop :=
  ∀ n, P3301176655841446432.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P5493852202770256459

`a(n-1)+A001223(n)-2` with `a(0)=2`
-/

namespace A173072.P5493852202770256459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A001223 n - 2)

end

end A173072.P5493852202770256459

namespace A173072

/-- `a(n-1)+A001223(n)-2` -/
def P5493852202770256459.Spec : Prop :=
  ∀ n, P5493852202770256459.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P7300700362749695756

`A000040(C(n+1, n))-n-n`
-/

namespace A173072.P7300700362749695756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (n + 1) n) - (n : ℤ) - (n : ℤ)

end

end A173072.P7300700362749695756

namespace A173072

/-- `A000040(C(n+1, n))-n-n` -/
def P7300700362749695756.Spec : Prop :=
  ∀ n, P7300700362749695756.a n = A173072 (n + 1)

theorem P7300700362749695756.correct : P7300700362749695756.Spec := by
  intro n
  simp only [A173072, Nat.add_sub_cancel, A173072.P7300700362749695756.a, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A173072

/-! ## A173072.P1003709952526768

`A000040(2*n-(n-1))-n-n`
-/

namespace A173072.P1003709952526768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ) - (n : ℤ)

end

end A173072.P1003709952526768

namespace A173072

/-- `A000040(2*n-(n-1))-n-n` -/
def P1003709952526768.Spec : Prop :=
  ∀ n, P1003709952526768.a n = A173072 (n + 1)

end A173072

/-! ## A173072.P1577437745409884943

`A024000(n)+A014689(n+1)`
-/

namespace A173072.P1577437745409884943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A014689 (n + 1)

end

end A173072.P1577437745409884943

namespace A173072

/-- `A024000(n)+A014689(n+1)` -/
def P1577437745409884943.Spec : Prop :=
  ∀ n, P1577437745409884943.a n = A173072 (n + 1)

end A173072

/-!
# A173073: (n-th nonnegative nonprime) minus (n-1).

The programs for A173073, the canonical program `A173073.P16730298799530633578` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173073 has offset 1).

The definition of A173073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173073.P16730298799530633578

`A141468(n+1)-n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173073

/-- `A141468(n+1)-n` -/
def P16730298799530633578.Spec : Prop :=
  ∀ n, P16730298799530633578.a n = A173073 (n + 1)

theorem P16730298799530633578.correct : P16730298799530633578.Spec := by
  intro n
  simp only [A173073, Nat.add_sub_cancel]

end A173073

/-! ## A173073.P9841424507185605331

`comp[p?[xor(1, n)]]-n`
-/

namespace A173073.P9841424507185605331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A173073.P9841424507185605331

namespace A173073

/-- `comp[p?[xor(1, n)]]-n` -/
def P9841424507185605331.Spec : Prop :=
  ∀ n, P9841424507185605331.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P11546812380185996424

`comp[A060264(n)]-n`
-/

namespace A173073.P11546812380185996424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P11546812380185996424

namespace A173073

/-- `comp[A060264(n)]-n` -/
def P11546812380185996424.Spec : Prop :=
  ∀ n, P11546812380185996424.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P11223782596061324728

`comp[A088732(n)]-n`
-/

namespace A173073.P11223782596061324728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P11223782596061324728

namespace A173073

/-- `comp[A088732(n)]-n` -/
def P11223782596061324728.Spec : Prop :=
  ∀ n, P11223782596061324728.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P13953507073988812695

`comp[A134204(n)]-n`
-/

namespace A173073.P13953507073988812695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P13953507073988812695

namespace A173073

/-- `comp[A134204(n)]-n` -/
def P13953507073988812695.Spec : Prop :=
  ∀ n, P13953507073988812695.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P11144163550739019363

`comp[A151800(n)]-n`
-/

namespace A173073.P11144163550739019363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P11144163550739019363

namespace A173073

/-- `comp[A151800(n)]-n` -/
def P11144163550739019363.Spec : Prop :=
  ∀ n, P11144163550739019363.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P5473263224138959061

`comp[A162753(n)]-n`
-/

namespace A173073.P5473263224138959061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P5473263224138959061

namespace A173073

/-- `comp[A162753(n)]-n` -/
def P5473263224138959061.Spec : Prop :=
  ∀ n, P5473263224138959061.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P1054283221046466269

`comp[Δ[A007504(n)]]-n`
-/

namespace A173073.P1054283221046466269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P1054283221046466269

namespace A173073

/-- `comp[Δ[A007504(n)]]-n` -/
def P1054283221046466269.Spec : Prop :=
  ∀ n, P1054283221046466269.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P7626452586605494347

`comp[p?[A003188(n)]]-n`
-/

namespace A173073.P7626452586605494347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P7626452586605494347

namespace A173073

/-- `comp[p?[A003188(n)]]-n` -/
def P7626452586605494347.Spec : Prop :=
  ∀ n, P7626452586605494347.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P14404178217718919432

`comp[p?[A005206(n)]]-n`
-/

namespace A173073.P14404178217718919432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P14404178217718919432

namespace A173073

/-- `comp[p?[A005206(n)]]-n` -/
def P14404178217718919432.Spec : Prop :=
  ∀ n, P14404178217718919432.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P4424894650839003966

`sqrt(A161753(n+1))-n`
-/

namespace A173073.P4424894650839003966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A161753 (n + 1) : ℝ) - (n : ℝ)

end

end A173073.P4424894650839003966

namespace A173073

/-- `sqrt(A161753(n+1))-n` -/
def P4424894650839003966.Spec : Prop :=
  ∀ n, P4424894650839003966.a n = (A173073 (n + 1) : ℝ)

end A173073

/-! ## A173073.P17357391627932430139

`comp[A000040(n+1)]-n`
-/

namespace A173073.P17357391627932430139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P17357391627932430139

namespace A173073

/-- `comp[A000040(n+1)]-n` -/
def P17357391627932430139.Spec : Prop :=
  ∀ n, P17357391627932430139.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P3256166546488772008

`comp[A000705(n+1)]-n`
-/

namespace A173073.P3256166546488772008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P3256166546488772008

namespace A173073

/-- `comp[A000705(n+1)]-n` -/
def P3256166546488772008.Spec : Prop :=
  ∀ n, P3256166546488772008.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P3083569440177524033

`comp[A236388(n+1)]-n`
-/

namespace A173073.P3083569440177524033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P3083569440177524033

namespace A173073

/-- `comp[A236388(n+1)]-n` -/
def P3083569440177524033.Spec : Prop :=
  ∀ n, P3083569440177524033.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P9910714758517570855

`comp[A006530(n+2)]-n`
-/

namespace A173073.P9910714758517570855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P9910714758517570855

namespace A173073

/-- `comp[A006530(n+2)]-n` -/
def P9910714758517570855.Spec : Prop :=
  ∀ n, P9910714758517570855.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P16781357854068680973

`comp[A020639(n+2)]-n`
-/

namespace A173073.P16781357854068680973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P16781357854068680973

namespace A173073

/-- `comp[A020639(n+2)]-n` -/
def P16781357854068680973.Spec : Prop :=
  ∀ n, P16781357854068680973.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P17537698762413307483

`A176100(n+1)/2-n`
-/

namespace A173073.P17537698762413307483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176100 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A173073.P17537698762413307483

namespace A173073

/-- `A176100(n+1)/2-n` -/
def P17537698762413307483.Spec : Prop :=
  ∀ n, P17537698762413307483.a n = (A173073 (n + 1) : ℚ)

end A173073

/-! ## A173073.P14760131426876786237

`A073425((n-1)%(n+1))`
-/

namespace A173073.P14760131426876786237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A173073.P14760131426876786237

namespace A173073

/-- `A073425((n-1)%(n+1))` -/
def P14760131426876786237.Spec : Prop :=
  ∀ n, P14760131426876786237.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P14811550153408499288

`comp[A095116(n+1)-n]-n`
-/

namespace A173073.P14811550153408499288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A173073.P14811550153408499288

namespace A173073

/-- `comp[A095116(n+1)-n]-n` -/
def P14811550153408499288.Spec : Prop :=
  ∀ n, P14811550153408499288.a n = A173073 (n + 1)

end A173073

/-! ## A173073.P8193625993750150944

`∪[A018252(n+1), n²]-n`
-/

namespace A173073.P8193625993750150944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n : ℤ) - (n : ℤ)

end

end A173073.P8193625993750150944

namespace A173073

/-- `∪[A018252(n+1), n²]-n` -/
def P8193625993750150944.Spec : Prop :=
  ∀ n, P8193625993750150944.a n = A173073 (n + 1)

end A173073

/-!
# A173075: T(n,k) = binomial(n, k) - 1 + q^(floor(n/2))*binomial(n-2, k-1) for 0 < k < n with T(n,0) = T(n,n) = 1 and q = 1. Triangle read by rows.

The programs for A173075, the canonical program `A173075.P2388564592646506827` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173075 has offset 0).

The definition of A173075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173075.P2388564592646506827

`A132731(n)+1-A072405(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A173075

/-- `A132731(n)+1-A072405(n)` -/
def P2388564592646506827.Spec : Prop :=
  ∀ n, P2388564592646506827.a n = A173075 n

theorem P2388564592646506827.correct : P2388564592646506827.Spec := by
  intro n
  simp only [A173075]

end A173075

/-! ## A173075.P6552102474762466559

`A028262(n)+-1%A007318(n)`
-/

namespace A173075.P6552102474762466559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + Int.tmod (-1) (A007318 n)

end

end A173075.P6552102474762466559

namespace A173075

/-- `A028262(n)+-1%A007318(n)` -/
def P6552102474762466559.Spec : Prop :=
  ∀ n, P6552102474762466559.a n = A173075 n

end A173075

/-! ## A173075.P13758153473024403880

`A028262(n)-A178489(A004197(n))`
-/

namespace A173075.P13758153473024403880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A178489 (A004197 n).toNat

end

end A173075.P13758153473024403880

namespace A173075

/-- `A028262(n)-A178489(A004197(n))` -/
def P13758153473024403880.Spec : Prop :=
  ∀ n, P13758153473024403880.a n = A173075 n

end A173075

/-! ## A173075.P15519877957161308190

`A028262(n)-A059841(A238392(n))`
-/

namespace A173075.P15519877957161308190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A059841 (A238392 n).toNat

end

end A173075.P15519877957161308190

namespace A173075

/-- `A028262(n)-A059841(A238392(n))` -/
def P15519877957161308190.Spec : Prop :=
  ∀ n, P15519877957161308190.a n = A173075 n

end A173075

/-! ## A173075.P4798974061924092450

`A028262(n)-A091562(C(2, A028262(n)))`
-/

namespace A173075.P4798974061924092450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A091562 (Nat.choose 2 (A028262 n).toNat)

end

end A173075.P4798974061924092450

namespace A173075

/-- `A028262(n)-A091562(C(2, A028262(n)))` -/
def P4798974061924092450.Spec : Prop :=
  ∀ n, P4798974061924092450.a n = A173075 n

end A173075

/-! ## A173075.P2786105726850572346

`A007318(n)+(A007318(n)-1)%A072405(n)`
-/

namespace A173075.P2786105726850572346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A007318 n - 1) (A072405 n)

end

end A173075.P2786105726850572346

namespace A173075

/-- `A007318(n)+(A007318(n)-1)%A072405(n)` -/
def P2786105726850572346.Spec : Prop :=
  ∀ n, P2786105726850572346.a n = A173075 n

end A173075

/-! ## A173075.P6461688710903614592

`A208510(n+1)-A323211(n+1)%A208510(n+1)`
-/

namespace A173075.P6461688710903614592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) - Int.tmod (A323211 (n + 1)) (A208510 (n + 1))

end

end A173075.P6461688710903614592

namespace A173075

/-- `A208510(n+1)-A323211(n+1)%A208510(n+1)` -/
def P6461688710903614592.Spec : Prop :=
  ∀ n, P6461688710903614592.a n = A173075 n

end A173075

/-! ## A173075.P8792962870451065372

`A028262(n)-A019431(A271910(n+1))`
-/

namespace A173075.P8792962870451065372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A019431 (A271910 (n + 1)).toNat

end

end A173075.P8792962870451065372

namespace A173075

/-- `A028262(n)-A019431(A271910(n+1))` -/
def P8792962870451065372.Spec : Prop :=
  ∀ n, P8792962870451065372.a n = A173075 n

end A173075

/-! ## A173075.P13496370627204232892

`A028262(n)-A057427(A028262(n)-1)`
-/

namespace A173075.P13496370627204232892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n - A057427 (A028262 n - 1).toNat

end

end A173075.P13496370627204232892

namespace A173075

/-- `A028262(n)-A057427(A028262(n)-1)` -/
def P13496370627204232892.Spec : Prop :=
  ∀ n, P13496370627204232892.a n = A173075 n

end A173075

/-! ## A173075.P9565961642766358551

`A028242(2*(A132731(n)-A072405(n)))`
-/

namespace A173075.P9565961642766358551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (A132731 n - A072405 n)).toNat

end

end A173075.P9565961642766358551

namespace A173075

/-- `A028242(2*(A132731(n)-A072405(n)))` -/
def P9565961642766358551.Spec : Prop :=
  ∀ n, P9565961642766358551.a n = A173075 n

end A173075

/-!
# A173076: Triangle T(n, k, q) = binomial(n, k) - 1 + q^(floor(n/2))*binomial(n-2, k-1) with T(n, 0, q) = T(n, n, q) = 1 and q = 2, read by rows.

The programs for A173076, there is no canonical definition to state claims against.
-/

/-! ## A173076.P6215388689681587729

`A324849(A026374(n))%p?[A070048(n)]`
-/

namespace A173076.P6215388689681587729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324849 (A026374 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A173076.P6215388689681587729

/-! ## A173076.P2651230323677446690

`A047201(A026374(n))%A131062(n+1)`
-/

namespace A173076.P2651230323677446690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047201 (A026374 n).toNat) (A131062 (n + 1))

end

end A173076.P2651230323677446690

/-! ## A173076.P1701929127847075834

`A005100(A026374(n))%A133025(n+5)`
-/

namespace A173076.P1701929127847075834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005100 (A026374 n).toNat) (A133025 (n + 5))

end

end A173076.P1701929127847075834

/-! ## A173076.P7142138176143902770

`A324849(A026374(n))+A010051(A051797(n))`
-/

namespace A173076.P7142138176143902770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (A026374 n).toNat + A010051 (A051797 n).toNat

end

end A173076.P7142138176143902770

/-! ## A173076.P11475584621791590957

`A196179(A171229(n))`
-/

namespace A173076.P11475584621791590957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196179 (A171229 n).toNat

end

end A173076.P11475584621791590957

/-!
# A173077: Triangle T(n, k, q) = binomial(n, k) - 1 + q^floor(n/2)*binomial(n-2, k-1) with T(n, 0, q) = T(n, n, q) = 1 and q = 3, read by rows.

The programs for A173077, there is no canonical definition to state claims against.
-/

/-! ## A173077.P11611662603930674541

`A102510(A171229(n)+A004247(n))`
-/

namespace A173077.P11611662603930674541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (A171229 n + A004247 n).toNat

end

end A173077.P11611662603930674541

/-! ## A173077.P1583392808174554846

`A003983(A081581(n)*A143007(n))`
-/

namespace A173077.P1583392808174554846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A081581 n * A143007 n).toNat

end

end A173077.P1583392808174554846

/-! ## A173077.P15916870427826723849

`A102705(A008288(n))+A025689(A059328(n))`
-/

namespace A173077.P15916870427826723849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A008288 n).toNat + A025689 (A059328 n).toNat

end

end A173077.P15916870427826723849

/-! ## A173077.P7194090015201830431

`A196393(A007318(n)²)+A001057(A014473(n))`
-/

namespace A173077.P7194090015201830431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A007318 n ^ 2).toNat + A001057 (A014473 n).toNat

end

end A173077.P7194090015201830431

/-!
# A173078: a(n) = (5*2^n - 2*(-1)^n - 9)/3.

The programs for A173078, the canonical program `A173078.P1626447664035236616` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173078 has offset 1).

The definition of A173078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*2^(n+1)-2*(-1)^(n+1)-9)/3` (program `A173078.P5463943878888135535`, by `A173078.P5463943878888135535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173078.P1626447664035236616

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173078

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P1626447664035236616.Spec : Prop :=
  ∀ n, P1626447664035236616.a n = A173078 (n + 1)

theorem P1626447664035236616.correct : P1626447664035236616.Spec := by
  intro n
  simp only [A173078, Nat.add_sub_cancel]

end A173078

/-! ## A173078.P14972570310022305432

`A084214(n+2)-3`
-/

namespace A173078.P14972570310022305432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (n + 2) - 3

end

end A173078.P14972570310022305432

namespace A173078

/-- `A084214(n+2)-3` -/
def P14972570310022305432.Spec : Prop :=
  ∀ n, P14972570310022305432.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P5463943878888135535

`(5*2^(n+1)-2*(-1)^(n+1)-9)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173078.P5463943878888135535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ (n + 1) : ℤ) - 2 * (-1) ^ (n + 1) - 9 : ℚ) / 3

end

end A173078.P5463943878888135535

namespace A173078

/-- `(5*2^(n+1)-2*(-1)^(n+1)-9)/3` -/
def P5463943878888135535.Spec : Prop :=
  ∀ n, P5463943878888135535.a n = (A173078 (n + 1) : ℚ)

theorem P5463943878888135535.correct : P5463943878888135535.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A173078, Nat.add_sub_cancel, A173078.P5463943878888135535.a, A173078.P1626447664035236616.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A173078, Nat.add_sub_cancel, A173078.P5463943878888135535.a, A173078.P1626447664035236616.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173078

/-! ## A173078.P12580555390986101813

`a(n-1)+2*a(n-2)+6` with `a(0)=1, a(1)=3`
-/

namespace A173078.P12580555390986101813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 6

end

end A173078.P12580555390986101813

namespace A173078

/-- `a(n-1)+2*a(n-2)+6` -/
def P12580555390986101813.Spec : Prop :=
  ∀ n, (P12580555390986101813.a n : ℤ) = A173078 (n + 1)

end A173078

/-! ## A173078.P16028512759149603527

`abs(2-A159290(n))`
-/

namespace A173078.P16028512759149603527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A159290 n|

end

end A173078.P16028512759149603527

namespace A173078

/-- `abs(2-A159290(n))` -/
def P16028512759149603527.Spec : Prop :=
  ∀ n, P16028512759149603527.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P12813022280929981991

`xor(1, 2*A084640(n))`
-/

namespace A173078.P12813022280929981991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A084640 n)

end

end A173078.P12813022280929981991

namespace A173078

/-- `xor(1, 2*A084640(n))` -/
def P12813022280929981991.Spec : Prop :=
  ∀ n, P12813022280929981991.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P1512529302294940089

`or(1, ∑[A048573(n)]-2)`
-/

namespace A173078.P1512529302294940089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A173078.P1512529302294940089

namespace A173078

/-- `or(1, ∑[A048573(n)]-2)` -/
def P1512529302294940089.Spec : Prop :=
  ∀ n, P1512529302294940089.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P3769500746159361908

`∑[A155559(n)+A097073(n)]`
-/

namespace A173078.P3769500746159361908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A097073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173078.P3769500746159361908

namespace A173078

/-- `∑[A155559(n)+A097073(n)]` -/
def P3769500746159361908.Spec : Prop :=
  ∀ n, P3769500746159361908.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P15312397651678482885

`∑[A168642(n)-A062510(n)]`
-/

namespace A173078.P15312397651678482885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168642 n - A062510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173078.P15312397651678482885

namespace A173078

/-- `∑[A168642(n)-A062510(n)]` -/
def P15312397651678482885.Spec : Prop :=
  ∀ n, P15312397651678482885.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P15145485403494524319

`∑[gcd(2, A000010(n+2))*A084214(n)]`
-/

namespace A173078.P15145485403494524319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A084214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173078.P15145485403494524319

namespace A173078

/-- `∑[gcd(2, A000010(n+2))*A084214(n)]` -/
def P15145485403494524319.Spec : Prop :=
  ∀ n, P15145485403494524319.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P5827792154371170791

`abs(6-(5*2^n-a(n-1)))` with `a(0)=1`
-/

namespace A173078.P5827792154371170791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |6 - ((5 * 2 ^ n : ℤ) - a (n - 1))|

end

end A173078.P5827792154371170791

namespace A173078

/-- `abs(6-(5*2^n-a(n-1)))` -/
def P5827792154371170791.Spec : Prop :=
  ∀ n, P5827792154371170791.a n = A173078 (n + 1)

end A173078

/-! ## A173078.P2397875363016255398

`A156127(n)%A340627(n)`
-/

namespace A173078.P2397875363016255398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156127 n) (A340627 n)

end

end A173078.P2397875363016255398

namespace A173078

/-- `A156127(n)%A340627(n)` -/
def P2397875363016255398.Spec : Prop :=
  ∀ n, P2397875363016255398.a n = A173078 (n + 1)

end A173078

/-!
# A173080: Positive integers with the property that the sum of the cubes of their divisors is a multiple of 585.

The programs for A173080, there is no canonical definition to state claims against.
-/

/-! ## A173080.P1417949380196079045

`eq[2, A089612(A008458(n))]`
-/

namespace A173080.P1417949380196079045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089612 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173080.P1417949380196079045

/-! ## A173080.P433001191138776435

`eq[3, A346070(A055456(n+1))]`
-/

namespace A173080.P433001191138776435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346070 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173080.P433001191138776435

/-! ## A173080.P10929174994717415128

`∑[A221528(p?[A205104(n+1)])]`
-/

namespace A173080.P10929174994717415128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205104 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173080.P10929174994717415128

/-! ## A173080.P3311946705499144147

`∩[A171949(n+1), A260400(n+1)]`
-/

namespace A173080.P3311946705499144147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173080.P3311946705499144147

/-! ## A173080.P11006718615097491038

`∩[A260400(n+1), A385097(n+1)]`
-/

namespace A173080.P11006718615097491038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173080.P11006718615097491038

/-!
# A173081: Number of twin prime pairs < 10^n that contain at least one Ramanujan prime (A104272).

The programs for A173081, there is no canonical definition to state claims against.
-/

/-! ## A173081.P12900596287148549376

`A036468(A090816(n))-2^val(n+1, 2)`
-/

namespace A173081.P12900596287148549376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036468 (A090816 n).toNat - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A173081.P12900596287148549376

/-!
# A173082: Semiprimes q such that q^2+2 and q^2-2 are also semiprimes.

The programs for A173082, there is no canonical definition to state claims against.
-/

/-! ## A173082.P8351772819891078562

`sqrt(∩[A074985(n+1), A278022(n+1)])`
-/

namespace A173082.P8351772819891078562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278022 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A173082.P8351772819891078562

/-!
# A173084: Semiprimes q such that q^2-4 and q^2+4 are also semiprimes.

The programs for A173084, there is no canonical definition to state claims against.
-/

/-! ## A173084.P17278661112849184186

`A139538(A290234(n))`
-/

namespace A173084.P17278661112849184186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139538 (A290234 n).toNat

end

end A173084.P17278661112849184186

/-!
# A173085: Numbers k such that k, k^2 - 5, and k^2 + 5 are semiprime.

The programs for A173085, there is no canonical definition to state claims against.
-/

/-! ## A173085.P4667011536078904515

`A086960(A352352(2*(n+1)+1))`
-/

namespace A173085.P4667011536078904515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086960 (A352352 (2 * (n + 1) + 1)).toNat

end

end A173085.P4667011536078904515

/-!
# A173086: Numbers k such that k, k^2 - 6, and k^2 + 6 are semiprime.

The programs for A173086, there is no canonical definition to state claims against.
-/

/-! ## A173086.P6972176841333738473

`record[A103607(n+1)/A084600(A129854(n))]`
-/

namespace A173086.P6972176841333738473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103607 (n + 1) : ℚ) / (A084600 (A129854 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173086.P6972176841333738473

/-!
# A173088: Numbers k such that 6*k - 1, 6*k + 1, 6*k + 29, and 6*k + 31 are primes.

The programs for A173088, there is no canonical definition to state claims against.
-/

/-! ## A173088.P10205349016403145616

`ceil(A247089(n+1)/6)`
-/

namespace A173088.P10205349016403145616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247089 (n + 1) : ℚ) / 6⌉

end

end A173088.P10205349016403145616

/-! ## A173088.P9619576113183793371

`round(A247089(n+1)/6)%A016959(n)`
-/

namespace A173088.P9619576113183793371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A247089 (n + 1) : ℚ) / 6)) (A016959 n)

end

end A173088.P9619576113183793371

/-! ## A173088.P3266979373676697209

`floor(cos(A136522(n))+A247089(n+1)/6)`
-/

namespace A173088.P3266979373676697209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A136522 n : ℝ) + ((A247089 (n + 1) : ℚ) / 6 : ℝ)⌋

end

end A173088.P3266979373676697209

/-! ## A173088.P14091302013716756897

`floor(A001222(A051698(n))+A247089(n+1)/6)`
-/

namespace A173088.P14091302013716756897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (A051698 n).toNat : ℚ) + (A247089 (n + 1) : ℚ) / 6⌋

end

end A173088.P14091302013716756897

/-! ## A173088.P13895753259771812066

`floor(A247089(n+1)/6-A008683(A020484(n)))`
-/

namespace A173088.P13895753259771812066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247089 (n + 1) : ℚ) / 6 - (A008683 (A020484 n).toNat : ℚ)⌋

end

end A173088.P13895753259771812066

/-! ## A173088.P5199191684870236331

`A218858(A218858(n))+round(A247089(n+1)/6)`
-/

namespace A173088.P5199191684870236331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218858 (A218858 n).toNat + SequenceMachineLib.roundAway ((A247089 (n + 1) : ℚ) / 6)

end

end A173088.P5199191684870236331

/-! ## A173088.P11941667058965531273

`A004525(A126760(A247089(n+1)))`
-/

namespace A173088.P11941667058965531273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A126760 (A247089 (n + 1)).toNat).toNat

end

end A173088.P11941667058965531273

/-! ## A173088.P4963800010244319061

`A126760(A247089(n+1))/A020639(A017293(n))`
-/

namespace A173088.P4963800010244319061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126760 (A247089 (n + 1)).toNat : ℚ) / (A020639 (A017293 n).toNat : ℚ)

end

end A173088.P4963800010244319061

/-! ## A173088.P12722661136235755309

`A126760(A247089(n+1))/A020639(A017545(n))`
-/

namespace A173088.P12722661136235755309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126760 (A247089 (n + 1)).toNat : ℚ) / (A020639 (A017545 n).toNat : ℚ)

end

end A173088.P12722661136235755309

/-! ## A173088.P11308525174869114281

`A278529(A247089(n+1))`
-/

namespace A173088.P11308525174869114281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A247089 (n + 1)).toNat

end

end A173088.P11308525174869114281

/-!
# A173089: a(n) = 25*n^2 + n.

The programs for A173089, the canonical program `A173089.P7640154185192742210` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173089 has offset 1).

The definition of A173089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(n+1)²+n+1` (program `A173089.P7640154185192742210`, by `A173089.P7640154185192742210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173089.P7640154185192742210

`25*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173089

/-- `25*(n+1)²+n+1` -/
def P7640154185192742210.Spec : Prop :=
  ∀ n, (P7640154185192742210.a n : ℤ) = A173089 (n + 1)

theorem P7640154185192742210.correct : P7640154185192742210.Spec := by
  intro n
  simp only [A173089, Nat.add_sub_cancel]

end A173089

/-! ## A173089.P12518534220285239543

`(n+1)*A158060(n+1)`
-/

namespace A173089.P12518534220285239543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158060 (n + 1)

end

end A173089.P12518534220285239543

namespace A173089

/-- `(n+1)*A158060(n+1)` -/
def P12518534220285239543.Spec : Prop :=
  ∀ n, P12518534220285239543.a n = A173089 (n + 1)

end A173089

/-! ## A173089.P2172600059454555759

`(n+1)*(A008607(n+1)+1)`
-/

namespace A173089.P2172600059454555759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008607 (n + 1) + 1)

end

end A173089.P2172600059454555759

namespace A173089

/-- `(n+1)*(A008607(n+1)+1)` -/
def P2172600059454555759.Spec : Prop :=
  ∀ n, P2172600059454555759.a n = A173089 (n + 1)

end A173089

/-! ## A173089.P8251168841434381600

`(n+1)*(A183010(n+1)+n+3)`
-/

namespace A173089.P8251168841434381600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A183010 (n + 1) + (n + 3 : ℤ))

end

end A173089.P8251168841434381600

namespace A173089

/-- `(n+1)*(A183010(n+1)+n+3)` -/
def P8251168841434381600.Spec : Prop :=
  ∀ n, P8251168841434381600.a n = A173089 (n + 1)

end A173089

/-!
# A173090: a(1)=1, a(2)=2, a(n)=a(n-1)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1))).

The programs for A173090, the canonical program `A173090.P8809619584512541900` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173090 has offset 1).

The definition of A173090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` (program `A173090.P8809619584512541900`, by `A173090.P8809619584512541900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173090.P8809619584512541900

`a(n-1)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173090

/-- `a(n-1)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` -/
def P8809619584512541900.Spec : Prop :=
  ∀ n, P8809619584512541900.a n = A173090 (n + 1)

theorem P8809619584512541900.correct : P8809619584512541900.Spec := by
  intro n
  simp only [A173090, Nat.add_sub_cancel]

end A173090

/-! ## A173090.P1463473363493641985

`floor(a(n-1)+a(n-1)/(a(n-1)/a(n-2)+1))` with `a(0)=1, a(1)=2`
-/

namespace A173090.P1463473363493641985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) : ℚ) / ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) + 1)⌋

end

end A173090.P1463473363493641985

namespace A173090

/-- `floor(a(n-1)+a(n-1)/(a(n-1)/a(n-2)+1))` -/
def P1463473363493641985.Spec : Prop :=
  ∀ n, P1463473363493641985.a n = A173090 (n + 1)

end A173090

/-! ## A173090.P3712193089416424523

`A000267(A007590(a(n-1)))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A173090.P3712193089416424523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A000267 (A007590 (a (n - 1)).toNat).toNat

end

end A173090.P3712193089416424523

namespace A173090

/-- `A000267(A007590(a(n-1)))` -/
def P3712193089416424523.Spec : Prop :=
  ∀ n, P3712193089416424523.a n = A173090 (n + 1)

end A173090

/-! ## A173090.P11239273430488480246

`A172471(or(a(n-1)², A000035(n)))` with `a(0)=1, a(1)=2`
-/

namespace A173090.P11239273430488480246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A172471 (Int.lor (a (n - 1) ^ 2) (A000035 n)).toNat

end

end A173090.P11239273430488480246

namespace A173090

/-- `A172471(or(a(n-1)², A000035(n)))` -/
def P11239273430488480246.Spec : Prop :=
  ∀ n, P11239273430488480246.a n = A173090 (n + 1)

end A173090

/-! ## A173090.P17411015911024726771

`A103128(a(n-1)²+1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A173090.P17411015911024726771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A103128 (a (n - 1) ^ 2 + 1).toNat

end

end A173090.P17411015911024726771

namespace A173090

/-- `A103128(a(n-1)²+1)` -/
def P17411015911024726771.Spec : Prop :=
  ∀ n, P17411015911024726771.a n = A173090 (n + 1)

end A173090

/-!
# A173091: a(1)=2, a(2)=2, a(n)=a(n-2)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1))).

The programs for A173091, the canonical program `A173091.P10250195753505520917` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173091 has offset 1).

The definition of A173091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` (program `A173091.P10250195753505520917`, by `A173091.P10250195753505520917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173091.P10250195753505520917

`a(n-2)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173091

/-- `a(n-2)+floor(a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` -/
def P10250195753505520917.Spec : Prop :=
  ∀ n, P10250195753505520917.a n = A173091 (n + 1)

theorem P10250195753505520917.correct : P10250195753505520917.Spec := by
  intro n
  simp only [A173091, Nat.add_sub_cancel]

end A173091

/-! ## A173091.P7094966847725648937

`floor(a(n-2)+a(n-1)/(a(n-1)/a(n-2)+1))` with `a(0)=2, a(1)=2`
-/

namespace A173091.P7094966847725648937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + (a (n - 1) : ℚ) / ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) + 1)⌋

end

end A173091.P7094966847725648937

namespace A173091

/-- `floor(a(n-2)+a(n-1)/(a(n-1)/a(n-2)+1))` -/
def P7094966847725648937.Spec : Prop :=
  ∀ n, P7094966847725648937.a n = A173091 (n + 1)

end A173091

/-!
# A173092: Numbers k such that 3k-4, 3k-2, 3k+2, and 3k+4 are primes.

The programs for A173092, there is no canonical definition to state claims against.
-/

/-! ## A173092.P6509639590399202309

`A173037(n+1)/3`
-/

namespace A173092.P6509639590399202309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173037 (n + 1) : ℚ) / 3

end

end A173092.P6509639590399202309

/-! ## A173092.P17396588943652866107

`floor(A136721(n+1)/3)`
-/

namespace A173092.P17396588943652866107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136721 (n + 1) : ℚ) / 3⌋

end

end A173092.P17396588943652866107

/-! ## A173092.P11373352222559705779

`ceil(A136720(n+1)/3)`
-/

namespace A173092.P11373352222559705779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136720 (n + 1) : ℚ) / 3⌉

end

end A173092.P11373352222559705779

/-! ## A173092.P4870505541988900234

`(A007530(n+1)+4)/3`
-/

namespace A173092.P4870505541988900234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007530 (n + 1) + 4 : ℚ) / 3

end

end A173092.P4870505541988900234

/-! ## A173092.P10073739599758537593

`(A090258(n+1)-4)/3`
-/

namespace A173092.P10073739599758537593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090258 (n + 1) - 4 : ℚ) / 3

end

end A173092.P10073739599758537593

/-! ## A173092.P3351272051760109083

`(A125855(n+1)+5)/3`
-/

namespace A173092.P3351272051760109083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125855 (n + 1) + 5 : ℚ) / 3

end

end A173092.P3351272051760109083

/-! ## A173092.P14779700330972527170

`(A064974(n+1)-5)/3`
-/

namespace A173092.P14779700330972527170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064974 (n + 1) - 5 : ℚ) / 3

end

end A173092.P14779700330972527170

/-! ## A173092.P17338225557346067183

`2*A178145(n+1)+1`
-/

namespace A173092.P17338225557346067183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178145 (n + 1) + 1

end

end A173092.P17338225557346067183

/-!
# A173093: a(1)=1, a(2)=3, a(n)=a(n-2)*a(n-1)-a(n-2).

The programs for A173093, the canonical program `A173093.P15584356646522013756` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173093 has offset 1).

The definition of A173093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-1)-a(n-2)` (program `A173093.P15584356646522013756`, by `A173093.P15584356646522013756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173093.P15584356646522013756

`a(n-2)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173093

/-- `a(n-2)*a(n-1)-a(n-2)` -/
def P15584356646522013756.Spec : Prop :=
  ∀ n, P15584356646522013756.a n = A173093 (n + 1)

theorem P15584356646522013756.correct : P15584356646522013756.Spec := by
  intro n
  simp only [A173093, Nat.add_sub_cancel]

end A173093

/-! ## A173093.P17870650503979858923

`(a(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A173093.P17870650503979858923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) - 1) * a (n - 2)

end

end A173093.P17870650503979858923

namespace A173093

/-- `(a(n-1)-1)*a(n-2)` -/
def P17870650503979858923.Spec : Prop :=
  ∀ n, P17870650503979858923.a n = A173093 (n + 1)

end A173093

/-! ## A173093.P16595131732157765041

`(a(n-1)-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=3`
-/

namespace A173093.P16595131732157765041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A173093.P16595131732157765041

namespace A173093

/-- `(a(n-1)-1)/a(n-2)^(-1)` -/
def P16595131732157765041.Spec : Prop :=
  ∀ n, P16595131732157765041.a n = (A173093 (n + 1) : ℚ)

end A173093

/-! ## A173093.P7083232136467302883

`lcm(a(n-1), a(n-2))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A173093.P7083232136467302883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm (a (n - 1)) (a (n - 2)) : ℤ) - a (n - 2)

end

end A173093.P7083232136467302883

namespace A173093

/-- `lcm(a(n-1), a(n-2))-a(n-2)` -/
def P7083232136467302883.Spec : Prop :=
  ∀ n, P7083232136467302883.a n = A173093 (n + 1)

end A173093

/-! ## A173093.P4930528173629157318

`a(n-2)*A023443(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A173093.P4930528173629157318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) * A023443 (a (n - 1)).toNat

end

end A173093.P4930528173629157318

namespace A173093

/-- `a(n-2)*A023443(a(n-1))` -/
def P4930528173629157318.Spec : Prop :=
  ∀ n, P4930528173629157318.a n = A173093 (n + 1)

end A173093

/-!
# A173094: a(1)=2, a(2)=3, a(n)=a(n-2)*a(n-1)-a(n-1).

The programs for A173094, the canonical program `A173094.P12854225393549579433` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173094 has offset 1).

The definition of A173094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-1)-a(n-1)` (program `A173094.P12854225393549579433`, by `A173094.P12854225393549579433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173094.P12854225393549579433

`a(n-2)*a(n-1)-a(n-1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173094

/-- `a(n-2)*a(n-1)-a(n-1)` -/
def P12854225393549579433.Spec : Prop :=
  ∀ n, P12854225393549579433.a n = A173094 (n + 1)

theorem P12854225393549579433.correct : P12854225393549579433.Spec := by
  intro n
  simp only [A173094, Nat.add_sub_cancel]

end A173094

/-! ## A173094.P404173159524237495

`a(n-1)*(a(n-2)-1)` with `a(0)=2, a(1)=3`
-/

namespace A173094.P404173159524237495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) * (a (n - 2) - 1)

end

end A173094.P404173159524237495

namespace A173094

/-- `a(n-1)*(a(n-2)-1)` -/
def P404173159524237495.Spec : Prop :=
  ∀ n, P404173159524237495.a n = A173094 (n + 1)

end A173094

/-! ## A173094.P818798092690082067

`a(n-1)/(a(n-2)-1)^(-1)` with `a(0)=2, a(1)=3`
-/

namespace A173094.P818798092690082067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) / (a (n - 2) - 1) ^ (-1 : ℤ)

end

end A173094.P818798092690082067

namespace A173094

/-- `a(n-1)/(a(n-2)-1)^(-1)` -/
def P818798092690082067.Spec : Prop :=
  ∀ n, P818798092690082067.a n = (A173094 (n + 1) : ℚ)

end A173094

/-! ## A173094.P12538169255109481647

`gcd(A000038(n), A007567(n))+1`
-/

namespace A173094.P12538169255109481647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007567 n) + 1

end

end A173094.P12538169255109481647

namespace A173094

/-- `gcd(A000038(n), A007567(n))+1` -/
def P12538169255109481647.Spec : Prop :=
  ∀ n, (P12538169255109481647.a n : ℤ) = A173094 (n + 1)

end A173094

/-! ## A173094.P14365702768196953119

`lcm(A007567(n)+1, A007538(n+1))`
-/

namespace A173094.P14365702768196953119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007567 n + 1) (A007538 (n + 1))

end

end A173094.P14365702768196953119

namespace A173094

/-- `lcm(A007567(n)+1, A007538(n+1))` -/
def P14365702768196953119.Spec : Prop :=
  ∀ n, (P14365702768196953119.a n : ℤ) = A173094 (n + 1)

end A173094

/-!
# A173095: Partial sums of A108810.

The programs for A173095, there is no canonical definition to state claims against.
-/

/-! ## A173095.P6912309574761683438

`∑[A108810(n+1)]`
-/

namespace A173095.P6912309574761683438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173095.P6912309574761683438

/-! ## A173095.P2071502951511743250

`∑[record[A108810(A028920(n))]]`
-/

namespace A173095.P2071502951511743250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108810 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173095.P2071502951511743250

/-! ## A173095.P8446078804939391881

`∑[record[A108810(A051340(n))]]`
-/

namespace A173095.P8446078804939391881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108810 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173095.P8446078804939391881

/-! ## A173095.P10654860355629548325

`∑[record[A108810(A117910(n))]]`
-/

namespace A173095.P10654860355629548325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108810 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173095.P10654860355629548325

/-! ## A173095.P1276311437716640885

`∑[record[A108810(A133310(n))]]`
-/

namespace A173095.P1276311437716640885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108810 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173095.P1276311437716640885

/-!
# A173096: a(1) = 3, a(2) = 4, a(n) = a(n-2)*a(n-1)-a(n-2)-a(n-1).

The programs for A173096, the canonical program `A173096.P17560468073559602025` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173096 has offset 1).

The definition of A173096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-1)-a(n-2)-a(n-1)` (program `A173096.P17560468073559602025`, by `A173096.P17560468073559602025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173096.P17560468073559602025

`a(n-2)*a(n-1)-a(n-2)-a(n-1)` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173096

/-- `a(n-2)*a(n-1)-a(n-2)-a(n-1)` -/
def P17560468073559602025.Spec : Prop :=
  ∀ n, P17560468073559602025.a n = A173096 (n + 1)

theorem P17560468073559602025.correct : P17560468073559602025.Spec := by
  intro n
  simp only [A173096, Nat.add_sub_cancel]

end A173096

/-! ## A173096.P6264189431048716652

`(1-a(n-1))*(1-a(n-2))-1` with `a(0)=3, a(1)=4`
-/

namespace A173096.P6264189431048716652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  (1 - a (n - 1)) * (1 - a (n - 2)) - 1

end

end A173096.P6264189431048716652

namespace A173096

/-- `(1-a(n-1))*(1-a(n-2))-1` -/
def P6264189431048716652.Spec : Prop :=
  ∀ n, P6264189431048716652.a n = A173096 (n + 1)

end A173096

/-! ## A173096.P8222052853299141548

`lcm(1-a(n-2), a(n-1))-a(n-2)` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A173096.P8222052853299141548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5] fun n a =>
  (Int.lcm (1 - a (n - 2)) (a (n - 1)) : ℤ) - a (n - 2)

end

end A173096.P8222052853299141548

namespace A173096

/-- `lcm(1-a(n-2), a(n-1))-a(n-2)` -/
def P8222052853299141548.Spec : Prop :=
  ∀ n, P8222052853299141548.a n = A173096 (n + 1)

end A173096

/-!
# A173097: a(1)=1, a(2)=2, a(n)=2*a(n-2)*a(n-1)-a(n-2).

The programs for A173097, the canonical program `A173097.P6840407767548952958` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173097 has offset 1).

The definition of A173097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)*a(n-1)-a(n-2)` (program `A173097.P6840407767548952958`, by `A173097.P6840407767548952958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173097.P6840407767548952958

`2*a(n-2)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173097

/-- `2*a(n-2)*a(n-1)-a(n-2)` -/
def P6840407767548952958.Spec : Prop :=
  ∀ n, P6840407767548952958.a n = A173097 (n + 1)

theorem P6840407767548952958.correct : P6840407767548952958.Spec := by
  intro n
  simp only [A173097, Nat.add_sub_cancel]

end A173097

/-! ## A173097.P2522626292932255306

`(2*a(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A173097.P2522626292932255306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * a (n - 1) - 1) * a (n - 2)

end

end A173097.P2522626292932255306

namespace A173097

/-- `(2*a(n-1)-1)*a(n-2)` -/
def P2522626292932255306.Spec : Prop :=
  ∀ n, P2522626292932255306.a n = A173097 (n + 1)

end A173097

/-! ## A173097.P4074526454045590142

`a(n-2)*A004273(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A173097.P4074526454045590142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A004273 (a (n - 1)).toNat

end

end A173097.P4074526454045590142

namespace A173097

/-- `a(n-2)*A004273(a(n-1))` -/
def P4074526454045590142.Spec : Prop :=
  ∀ n, P4074526454045590142.a n = A173097 (n + 1)

end A173097

/-!
# A173098: a(1)=1, a(2)=2, a(n)=2*a(n-2)*a(n-1)-a(n-1).

The programs for A173098, the canonical program `A173098.P10957527888696551902` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173098 has offset 1).

The definition of A173098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)*a(n-1)-a(n-1)` (program `A173098.P10957527888696551902`, by `A173098.P10957527888696551902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173098.P10957527888696551902

`2*a(n-2)*a(n-1)-a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173098

/-- `2*a(n-2)*a(n-1)-a(n-1)` -/
def P10957527888696551902.Spec : Prop :=
  ∀ n, P10957527888696551902.a n = A173098 (n + 1)

theorem P10957527888696551902.correct : P10957527888696551902.Spec := by
  intro n
  simp only [A173098, Nat.add_sub_cancel]

end A173098

/-! ## A173098.P17983160933107947406

`(2*a(n-2)-1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A173098.P17983160933107947406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * a (n - 2) - 1) * a (n - 1)

end

end A173098.P17983160933107947406

namespace A173098

/-- `(2*a(n-2)-1)*a(n-1)` -/
def P17983160933107947406.Spec : Prop :=
  ∀ n, P17983160933107947406.a n = A173098 (n + 1)

theorem P17983160933107947406.correct : P17983160933107947406.Spec := by
  intro n
  simp only [A173098, Nat.add_sub_cancel, A173098.P17983160933107947406.a, A173098.P10957527888696551902.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173098

/-! ## A173098.P8487392362656399563

`xor(3, floor(A007568(n)/2))`
-/

namespace A173098.P8487392362656399563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ⌊(A007568 n : ℚ) / 2⌋

end

end A173098.P8487392362656399563

namespace A173098

/-- `xor(3, floor(A007568(n)/2))` -/
def P8487392362656399563.Spec : Prop :=
  ∀ n, P8487392362656399563.a n = A173098 (n + 1)

end A173098

/-! ## A173098.P2252772312347303312

`a(n-1)*A004273(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A173098.P2252772312347303312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A004273 (a (n - 2)).toNat

end

end A173098.P2252772312347303312

namespace A173098

/-- `a(n-1)*A004273(a(n-2))` -/
def P2252772312347303312.Spec : Prop :=
  ∀ n, P2252772312347303312.a n = A173098 (n + 1)

end A173098

/-! ## A173098.P11569110126327782548

`a(n-1)*A266664(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A173098.P11569110126327782548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A266664 (a (n - 2)).toNat

end

end A173098.P11569110126327782548

namespace A173098

/-- `a(n-1)*A266664(a(n-2))` -/
def P11569110126327782548.Spec : Prop :=
  ∀ n, P11569110126327782548.a n = A173098 (n + 1)

end A173098

/-!
# A173099: a(1)=1, a(2)=3, a(n)=2*a(n-2)*a(n-1)-a(n-2)-a(n-1).

The programs for A173099, the canonical program `A173099.P18022624544663646800` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173099 has offset 1).

The definition of A173099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)*a(n-1)-a(n-2)-a(n-1)` (program `A173099.P18022624544663646800`, by `A173099.P18022624544663646800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173099.P18022624544663646800

`2*a(n-2)*a(n-1)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A173099

/-- `2*a(n-2)*a(n-1)-a(n-2)-a(n-1)` -/
def P18022624544663646800.Spec : Prop :=
  ∀ n, P18022624544663646800.a n = A173099 (n + 1)

theorem P18022624544663646800.correct : P18022624544663646800.Spec := by
  intro n
  simp only [A173099, Nat.add_sub_cancel]

end A173099

/-! ## A173099.P13693602729589251818

`(2*a(n-1)-1)*a(n-2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A173099.P13693602729589251818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 * a (n - 1) - 1) * a (n - 2) - a (n - 1)

end

end A173099.P13693602729589251818

namespace A173099

/-- `(2*a(n-1)-1)*a(n-2)-a(n-1)` -/
def P13693602729589251818.Spec : Prop :=
  ∀ n, P13693602729589251818.a n = A173099 (n + 1)

end A173099

/-! ## A173099.P3129670922210624961

`a(n-1)*A004273(a(n-2))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A173099.P3129670922210624961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A004273 (a (n - 2)).toNat - a (n - 2)

end

end A173099.P3129670922210624961

namespace A173099

/-- `a(n-1)*A004273(a(n-2))-a(n-2)` -/
def P3129670922210624961.Spec : Prop :=
  ∀ n, P3129670922210624961.a n = A173099 (n + 1)

end A173099

/-! ## A173099.P1268412218941679324

`a(n-2)*A285253(a(n-1))-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A173099.P1268412218941679324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) * A285253 (a (n - 1)).toNat - a (n - 1)

end

end A173099.P1268412218941679324

namespace A173099

/-- `a(n-2)*A285253(a(n-1))-a(n-1)` -/
def P1268412218941679324.Spec : Prop :=
  ∀ n, P1268412218941679324.a n = A173099 (n + 1)

end A173099

