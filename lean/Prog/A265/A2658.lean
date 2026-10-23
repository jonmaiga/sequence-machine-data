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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A265800: Numerators of primes-only best approximates (POBAs) to the golden ratio, phi; see Comments.

The programs for A265800, there is no canonical definition to state claims against.
-/

/-! ## A265800.P13556795672894714246

`A165572(abs(1-n)+1)`
-/

namespace A265800.P13556795672894714246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165572 (|1 - (n : ℤ)| + 1).toNat

end

end A265800.P13556795672894714246

/-! ## A265800.P12461839458196396807

`A108539(A165569(abs(1-n)+1))`
-/

namespace A265800.P12461839458196396807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108539 (A165569 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A265800.P12461839458196396807

/-! ## A265800.P2018073535201924458

`A165572(A028310(n))+floor(acot(n)²)`
-/

namespace A265800.P2018073535201924458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165572 (A028310 n).toNat + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A265800.P2018073535201924458

/-! ## A265800.P5429542905322202783

`A165572(A028310(n))+A000038(n)`
-/

namespace A265800.P5429542905322202783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165572 (A028310 n).toNat + A000038 n

end

end A265800.P5429542905322202783

/-! ## A265800.P7135107963770404608

`A165572(A137734(n²))+A000038(n)`
-/

namespace A265800.P7135107963770404608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165572 (A137734 (n ^ 2)).toNat + A000038 n

end

end A265800.P7135107963770404608

/-!
# A265801: Denominators of primes-only best approximates (POBAs) to the golden ratio, phi; see Comments.

The programs for A265801, there is no canonical definition to state claims against.
-/

/-! ## A265801.P3419792811200655439

`A165571(floor(acot(n)+n))`
-/

namespace A265801.P3419792811200655439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A265801.P3419792811200655439

/-! ## A265801.P18124154862529643348

`A165571(n^floor(atan(n)))`
-/

namespace A265801.P18124154862529643348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A265801.P18124154862529643348

/-! ## A265801.P2341945852726363830

`A165571(C(n, floor(atan(n))))`
-/

namespace A265801.P2341945852726363830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A265801.P2341945852726363830

/-! ## A265801.P602259767090779413

`A165571(or(n, floor(acot(n))))`
-/

namespace A265801.P602259767090779413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A265801.P602259767090779413

/-! ## A265801.P15389007587928917891

`A165571(xor(n, floor(acot(n))))`
-/

namespace A265801.P15389007587928917891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A265801.P15389007587928917891

/-!
# A265802: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,4,1,1,1,...], where 1^n means n ones.

The programs for A265802, the canonical program `A265802.P8383590762961382801` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265802 has offset 0).

The definition of A265802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265802.P8383590762961382801

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=11, a(2)=19`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265802

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P8383590762961382801.Spec : Prop :=
  ∀ n, P8383590762961382801.a n = A265802 n

theorem P8383590762961382801.correct : P8383590762961382801.Spec := by
  intro n
  simp only [A265802]

end A265802

/-! ## A265802.P6577689294533961958

`ogf((1+9x-5x^2)/(1-2x-2x^2+x^3))`
-/

namespace A265802.P6577689294533961958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -5] [1, -2, -2, 1] n

end

end A265802.P6577689294533961958

namespace A265802

/-- `ogf((1+9x-5x^2)/(1-2x-2x^2+x^3))` -/
def P6577689294533961958.Spec : Prop :=
  ∀ n, P6577689294533961958.a n = A265802 n

end A265802

/-! ## A265802.P17057894141266880900

`A102714(n)+Δ[A192916(n)]`
-/

namespace A265802.P17057894141266880900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102714 n + (f1 (n + 1) - f1 n)

end

end A265802.P17057894141266880900

namespace A265802

/-- `A102714(n)+Δ[A192916(n)]` -/
def P17057894141266880900.Spec : Prop :=
  ∀ n, P17057894141266880900.a n = A265802 n

end A265802

/-! ## A265802.P15557616323682265227

`A059929(n)+A001254(n+1)`
-/

namespace A265802.P15557616323682265227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n + A001254 (n + 1)

end

end A265802.P15557616323682265227

namespace A265802

/-- `A059929(n)+A001254(n+1)` -/
def P15557616323682265227.Spec : Prop :=
  ∀ n, P15557616323682265227.a n = A265802 n

end A265802

/-! ## A265802.P3377708567130423688

`A192916(n+1)+A069959(n)`
-/

namespace A265802.P3377708567130423688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192916 (n + 1) + A069959 n

end

end A265802.P3377708567130423688

namespace A265802

/-- `A192916(n+1)+A069959(n)` -/
def P3377708567130423688.Spec : Prop :=
  ∀ n, P3377708567130423688.a n = A265802 n

end A265802

/-! ## A265802.P10886428502306913769

`A192919(n+1)+A129905(n)`
-/

namespace A265802.P10886428502306913769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192919 (n + 1) + A129905 n

end

end A265802.P10886428502306913769

namespace A265802

/-- `A192919(n+1)+A129905(n)` -/
def P10886428502306913769.Spec : Prop :=
  ∀ n, P10886428502306913769.a n = A265802 n

end A265802

/-! ## A265802.P9957966689332404756

`A264080(n)+6*A007598(n)`
-/

namespace A265802.P9957966689332404756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264080 n + 6 * A007598 n

end

end A265802.P9957966689332404756

namespace A265802

/-- `A264080(n)+6*A007598(n)` -/
def P9957966689332404756.Spec : Prop :=
  ∀ n, P9957966689332404756.a n = A265802 n

end A265802

/-! ## A265802.P4208922251368631285

`A059929(n)+A000032(n+1)²`
-/

namespace A265802.P4208922251368631285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n + A000032 (n + 1) ^ 2

end

end A265802.P4208922251368631285

namespace A265802

/-- `A059929(n)+A000032(n+1)²` -/
def P4208922251368631285.Spec : Prop :=
  ∀ n, P4208922251368631285.a n = A265802 n

end A265802

/-! ## A265802.P8290752341242785752

`A000204(n+1)²+A208176(n)-1`
-/

namespace A265802.P8290752341242785752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) ^ 2 + (A208176 n - 1)

end

end A265802.P8290752341242785752

namespace A265802

/-- `A000204(n+1)²+A208176(n)-1` -/
def P8290752341242785752.Spec : Prop :=
  ∀ n, P8290752341242785752.a n = A265802 n

end A265802

/-! ## A265802.P2221709137969732064

`A022112(2*n)-A295676(2*n+1)`
-/

namespace A265802.P2221709137969732064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 (2 * n) - A295676 (2 * n + 1)

end

end A265802.P2221709137969732064

namespace A265802

/-- `A022112(2*n)-A295676(2*n+1)` -/
def P2221709137969732064.Spec : Prop :=
  ∀ n, P2221709137969732064.a n = A265802 n

end A265802

/-! ## A265802.P1534391368260448525

`A111573(2*n)+A111572(2*n+3)`
-/

namespace A265802.P1534391368260448525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 (2 * n) + A111572 (2 * n + 3)

end

end A265802.P1534391368260448525

namespace A265802

/-- `A111573(2*n)+A111572(2*n+3)` -/
def P1534391368260448525.Spec : Prop :=
  ∀ n, P1534391368260448525.a n = A265802 n

end A265802

/-! ## A265802.P10851959970673957665

`A001254(n+1)+A007598(n)+A001654(n)`
-/

namespace A265802.P10851959970673957665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (n + 1) + (A007598 n + A001654 n)

end

end A265802.P10851959970673957665

namespace A265802

/-- `A001254(n+1)+A007598(n)+A001654(n)` -/
def P10851959970673957665.Spec : Prop :=
  ∀ n, P10851959970673957665.a n = A265802 n

end A265802

/-! ## A265802.P2934412902163782706

`A001906(n+1)+A000045(n)*A022121(n)`
-/

namespace A265802.P2934412902163782706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + A000045 n * A022121 n

end

end A265802.P2934412902163782706

namespace A265802

/-- `A001906(n+1)+A000045(n)*A022121(n)` -/
def P2934412902163782706.Spec : Prop :=
  ∀ n, P2934412902163782706.a n = A265802 n

end A265802

/-! ## A265802.P1303584263732995466

`A000032(n+1)²+A000045(n+2)*A000045(n)`
-/

namespace A265802.P1303584263732995466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) ^ 2 + A000045 (n + 2) * A000045 n

end

end A265802.P1303584263732995466

namespace A265802

/-- `A000032(n+1)²+A000045(n+2)*A000045(n)` -/
def P1303584263732995466.Spec : Prop :=
  ∀ n, P1303584263732995466.a n = A265802 n

end A265802

/-! ## A265802.P665046629082331721

`Δ[2*A022086(2*n)]-a(n-1)` with `a(0)=1`
-/

namespace A265802.P665046629082331721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022086 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A265802.P665046629082331721

namespace A265802

/-- `Δ[2*A022086(2*n)]-a(n-1)` -/
def P665046629082331721.Spec : Prop :=
  ∀ n, P665046629082331721.a n = A265802 n

end A265802

/-! ## A265802.P7489489407676416728

`6*A000045(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A265802.P7489489407676416728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * A000045 (2 * n + 1) - a (n - 1)

end

end A265802.P7489489407676416728

namespace A265802

/-- `6*A000045(2*n+1)-a(n-1)` -/
def P7489489407676416728.Spec : Prop :=
  ∀ n, P7489489407676416728.a n = A265802 n

end A265802

/-! ## A265802.P5623050687400896689

`A000285(n)²-A192917(n)`
-/

namespace A265802.P5623050687400896689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n ^ 2 - A192917 n

end

end A265802.P5623050687400896689

namespace A265802

/-- `A000285(n)²-A192917(n)` -/
def P5623050687400896689.Spec : Prop :=
  ∀ n, P5623050687400896689.a n = A265802 n

end A265802

/-! ## A265802.P17212855371944925388

`A189316(n+1)-2*A175395(n+1)`
-/

namespace A265802.P17212855371944925388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189316 (n + 1) - 2 * A175395 (n + 1)

end

end A265802.P17212855371944925388

namespace A265802

/-- `A189316(n+1)-2*A175395(n+1)` -/
def P17212855371944925388.Spec : Prop :=
  ∀ n, P17212855371944925388.a n = A265802 n

end A265802

/-!
# A265803: Coefficient of x in minimal polynomial of the continued fraction [1^n,4,1,1,1,...], where 1^n means n ones.

The programs for A265803, the canonical program `A265803.P16345557795966518920` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265803 has offset 0).

The definition of A265803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265803.P16345557795966518920

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=-7, a(1)=-29, a(2)=-67`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265803

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P16345557795966518920.Spec : Prop :=
  ∀ n, P16345557795966518920.a n = A265803 n

theorem P16345557795966518920.correct : P16345557795966518920.Spec := by
  intro n
  simp only [A265803]

end A265803

/-! ## A265803.P7800079022105147891

`Δ[char[2*n]-∑[6*A236428(n)]]`
-/

namespace A265803.P7800079022105147891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236428 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265803.P7800079022105147891

namespace A265803

/-- `Δ[char[2*n]-∑[6*A236428(n)]]` -/
def P7800079022105147891.Spec : Prop :=
  ∀ n, P7800079022105147891.a n = A265803 n

end A265803

/-! ## A265803.P17404294501684883423

`A265802(n)-Δ[A265802(n+1)]`
-/

namespace A265803.P17404294501684883423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265802 n - (f1 (n + 1) - f1 n)

end

end A265803.P17404294501684883423

namespace A265803

/-- `A265802(n)-Δ[A265802(n+1)]` -/
def P17404294501684883423.Spec : Prop :=
  ∀ n, P17404294501684883423.a n = A265803 n

end A265803

/-! ## A265803.P10620389504285567448

`A192878(n+1)-Δ[A001254(n+2)]`
-/

namespace A265803.P10620389504285567448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192878 (n + 1) - (f1 (n + 1) - f1 n)

end

end A265803.P10620389504285567448

namespace A265803

/-- `A192878(n+1)-Δ[A001254(n+2)]` -/
def P10620389504285567448.Spec : Prop :=
  ∀ n, P10620389504285567448.a n = A265803 n

end A265803

/-! ## A265803.P907015870301998974

`A265802(n+1)+A265802(n)-A265802(n+2)`
-/

namespace A265803.P907015870301998974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265802 (n + 1) + (A265802 n - A265802 (n + 2))

end

end A265803.P907015870301998974

namespace A265803

/-- `A265802(n+1)+A265802(n)-A265802(n+2)` -/
def P907015870301998974.Spec : Prop :=
  ∀ n, P907015870301998974.a n = A265803 n

end A265803

/-! ## A265803.P9146309704245607066

`(13*(-1)^n-12*A000032(2*n+3))/5`
-/

namespace A265803.P9146309704245607066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * (-1) ^ n - 12 * A000032 (2 * n + 3) : ℚ) / 5

end

end A265803.P9146309704245607066

namespace A265803

/-- `(13*(-1)^n-12*A000032(2*n+3))/5` -/
def P9146309704245607066.Spec : Prop :=
  ∀ n, P9146309704245607066.a n = (A265803 n : ℚ)

end A265803

/-!
# A265804: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,5,1,1,1,...], where 1^n means n ones.

The programs for A265804, the canonical program `A265804.P17438189311100578741` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265804 has offset 0).

The definition of A265804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265804.P17438189311100578741

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=19, a(2)=29`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265804

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P17438189311100578741.Spec : Prop :=
  ∀ n, P17438189311100578741.a n = A265804 n

theorem P17438189311100578741.correct : P17438189311100578741.Spec := by
  intro n
  simp only [A265804]

end A265804

/-! ## A265804.P4300112719461413293

`A081714(n)+A000285(n)²`
-/

namespace A265804.P4300112719461413293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n + A000285 n ^ 2

end

end A265804.P4300112719461413293

namespace A265804

/-- `A081714(n)+A000285(n)²` -/
def P4300112719461413293.Spec : Prop :=
  ∀ n, P4300112719461413293.a n = A265804 n

end A265804

/-! ## A265804.P6267663496181524060

`A069959(n)+7*A059929(n)`
-/

namespace A265804.P6267663496181524060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069959 n + 7 * A059929 n

end

end A265804.P6267663496181524060

namespace A265804

/-- `A069959(n)+7*A059929(n)` -/
def P6267663496181524060.Spec : Prop :=
  ∀ n, P6267663496181524060.a n = A265804 n

end A265804

/-! ## A265804.P589034486573338558

`A001519(n)+9*A059929(n)`
-/

namespace A265804.P589034486573338558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 9 * A059929 n

end

end A265804.P589034486573338558

namespace A265804

/-- `A001519(n)+9*A059929(n)` -/
def P589034486573338558.Spec : Prop :=
  ∀ n, P589034486573338558.a n = A265804 n

end A265804

/-! ## A265804.P13352070229840111341

`A000285(n)*A022095(n)-A000045(n)²`
-/

namespace A265804.P13352070229840111341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n * A022095 n - A000045 n ^ 2

end

end A265804.P13352070229840111341

namespace A265804

/-- `A000285(n)*A022095(n)-A000045(n)²` -/
def P13352070229840111341.Spec : Prop :=
  ∀ n, P13352070229840111341.a n = A265804 n

end A265804

/-! ## A265804.P1994324962506035935

`A000285(n)²+A000045(n)*A000204(n+1)`
-/

namespace A265804.P1994324962506035935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n ^ 2 + A000045 n * A000204 (n + 1)

end

end A265804.P1994324962506035935

namespace A265804

/-- `A000285(n)²+A000045(n)*A000204(n+1)` -/
def P1994324962506035935.Spec : Prop :=
  ∀ n, P1994324962506035935.a n = A265804 n

end A265804

/-! ## A265804.P4145788470011624877

`A014717(n+1)-A000032(n+1)*A013655(n)`
-/

namespace A265804.P4145788470011624877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014717 (n + 1) - A000032 (n + 1) * A013655 n

end

end A265804.P4145788470011624877

namespace A265804

/-- `A014717(n+1)-A000032(n+1)*A013655(n)` -/
def P4145788470011624877.Spec : Prop :=
  ∀ n, P4145788470011624877.a n = A265804 n

end A265804

/-! ## A265804.P17274659222059189748

`A000045(n)*A206423(n+2)-A121646(n+1)`
-/

namespace A265804.P17274659222059189748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A206423 (n + 2) - A121646 (n + 1)

end

end A265804.P17274659222059189748

namespace A265804

/-- `A000045(n)*A206423(n+2)-A121646(n+1)` -/
def P17274659222059189748.Spec : Prop :=
  ∀ n, P17274659222059189748.a n = A265804 n

end A265804

/-! ## A265804.P15667573195063481696

`abs(A266709(n)+6*A236428(n))`
-/

namespace A265804.P15667573195063481696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266709 n + 6 * A236428 n|

end

end A265804.P15667573195063481696

namespace A265804

/-- `abs(A266709(n)+6*A236428(n))` -/
def P15667573195063481696.Spec : Prop :=
  ∀ n, P15667573195063481696.a n = A265804 n

end A265804

/-! ## A265804.P17669163164828355174

`A022095(n)*A022113(n)-A000285(n)²`
-/

namespace A265804.P17669163164828355174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n * A022113 n - A000285 n ^ 2

end

end A265804.P17669163164828355174

namespace A265804

/-- `A022095(n)*A022113(n)-A000285(n)²` -/
def P17669163164828355174.Spec : Prop :=
  ∀ n, P17669163164828355174.a n = A265804 n

end A265804

/-!
# A265805: Coefficient of x in minimal polynomial of the continued fraction [1^n,5,1,1,1,...], where 1^n means n ones.

The programs for A265805, the canonical program `A265805.P10099621625771147693` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265805 has offset 0).

The definition of A265805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265805.P10099621625771147693

`A265804(n)-Δ[A265804(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265805

/-- `A265804(n)-Δ[A265804(n+1)]` -/
def P10099621625771147693.Spec : Prop :=
  ∀ n, P10099621625771147693.a n = A265805 n

theorem P10099621625771147693.correct : P10099621625771147693.Spec := by
  intro n
  simp only [A265805]

end A265805

/-! ## A265805.P10888920116628330256

`A265804(n+1)+A265804(n)-A265804(n+2)`
-/

namespace A265805.P10888920116628330256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265804 (n + 1) + (A265804 n - A265804 (n + 2))

end

end A265805.P10888920116628330256

namespace A265805

/-- `A265804(n+1)+A265804(n)-A265804(n+2)` -/
def P10888920116628330256.Spec : Prop :=
  ∀ n, P10888920116628330256.a n = A265805 n

theorem P10888920116628330256.correct : P10888920116628330256.Spec := by
  intro n
  simp only [A265805, Nat.add_sub_cancel, A265805.P10888920116628330256.a, A265805.P10099621625771147693.f1, A265805.P10099621625771147693.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A265805

/-! ## A265805.P10467027382007753835

`A265762(n+1)+A265803(n+1)-A266702(n+1)`
-/

namespace A265805.P10467027382007753835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265762 (n + 1) + (A265803 (n + 1) - A266702 (n + 1))

end

end A265805.P10467027382007753835

namespace A265805

/-- `A265762(n+1)+A265803(n+1)-A266702(n+1)` -/
def P10467027382007753835.Spec : Prop :=
  ∀ n, P10467027382007753835.a n = A265805 n

end A265805

/-!
# A265806: Numerators of primes-only best approximates (POBAs) to 1/(golden ratio) = 1/phi; see Comments.

The programs for A265806, there is no canonical definition to state claims against.
-/

/-! ## A265806.P582686612244379721

`A265801(comp[5^n-1])`
-/

namespace A265806.P582686612244379721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265801 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A265806.P582686612244379721

/-! ## A265806.P213958902105713271

`p?[A265801(n+1)+char[3]]`
-/

namespace A265806.P213958902105713271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265801 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265806.P213958902105713271

/-! ## A265806.P6081339964807909918

`p?[A265801(A242410(n+1))]`
-/

namespace A265806.P6081339964807909918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265801 (A242410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265806.P6081339964807909918

/-! ## A265806.P15176416859882475824

`A165571(A185115(n²)+n)`
-/

namespace A265806.P15176416859882475824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (A185115 (n ^ 2) + (n : ℤ)).toNat

end

end A265806.P15176416859882475824

/-! ## A265806.P10049740490200571317

`A165571(n+1-char[A000712(n)^n])`
-/

namespace A265806.P10049740490200571317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165571 (n + 1 - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A265806.P10049740490200571317

/-!
# A265807: Denominators of primes-only best approximates (POBAs) to 1/(golden ratio) = 1/phi; see Comments.

The programs for A265807, there is no canonical definition to state claims against.
-/

/-! ## A265807.P10935969946306612930

`A001221(a(n-1))*A265800(n+2)` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A265807.P10935969946306612930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A001221 (a (n - 1)).toNat * A265800 (n + 2)

end

end A265807.P10935969946306612930

/-! ## A265807.P16773897994012221406

`A022342(A265806(n+1)+A057427(n))`
-/

namespace A265807.P16773897994012221406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A265806 (n + 1) + A057427 n).toNat

end

end A265807.P16773897994012221406

/-! ## A265807.P12072124706032187401

`A022342(A265806(n+1)+A178334(n))`
-/

namespace A265807.P12072124706032187401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A265806 (n + 1) + A178334 n).toNat

end

end A265807.P12072124706032187401

/-! ## A265807.P7390201628777566067

`A007067(A265806(n+1)-A000007(n))`
-/

namespace A265807.P7390201628777566067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A265806 (n + 1) - A000007 n).toNat

end

end A265807.P7390201628777566067

/-! ## A265807.P10023803165492696672

`A007067(A265806(n+1)-A111332(n))`
-/

namespace A265807.P10023803165492696672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A265806 (n + 1) - A111332 n).toNat

end

end A265807.P10023803165492696672

/-!
# A265809: Denominators of lower primes-only best approximates (POBAs) to Pi; see Comments.

The programs for A265809, there is no canonical definition to state claims against.
-/

/-! ## A265809.P15522394254350275876

`∩[A161750(n+1), A216496(n+1)]`
-/

namespace A265809.P15522394254350275876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265809.P15522394254350275876

/-!
# A265811: Denominators of upper primes-only best approximates (POBAs) to Pi; see Comments.

The programs for A265811, there is no canonical definition to state claims against.
-/

/-! ## A265811.P11372519865532433423

`floor(A265810(n+1)/π)`
-/

namespace A265811.P11372519865532433423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265810 (n + 1) : ℝ) / Real.pi⌋

end

end A265811.P11372519865532433423

/-! ## A265811.P5330167222522778778

`A032615(A265810(n+1))`
-/

namespace A265811.P5330167222522778778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A265810 (n + 1)).toNat

end

end A265811.P5330167222522778778

/-! ## A265811.P15065281448761672234

`A062300(p?[A265810(n+1)])`
-/

namespace A265811.P15065281448761672234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265811.P15065281448761672234

/-! ## A265811.P16697549329403911377

`A062299(A265810(n+1)+1)`
-/

namespace A265811.P16697549329403911377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A265810 (n + 1) + 1).toNat

end

end A265811.P16697549329403911377

/-! ## A265811.P17114657211703669650

`A062300(A265810(n+1)-1)`
-/

namespace A265811.P17114657211703669650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A265810 (n + 1) - 1).toNat

end

end A265811.P17114657211703669650

/-!
# A265812: Numerators of primes-only best approximates (POBAs) to Pi; see Comments.

The programs for A265812, there is no canonical definition to state claims against.
-/

/-! ## A265812.P14185791342106013262

`A265810(A100793(n))`
-/

namespace A265812.P14185791342106013262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265810 (A100793 n).toNat

end

end A265812.P14185791342106013262

/-! ## A265812.P11266806413949862794

`filter[A265810(n+1), A276254(#)]`
-/

namespace A265812.P11266806413949862794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276254 (f1 j).toNat = 1) n)

end

end A265812.P11266806413949862794

/-!
# A265813: Denominators of primes-only best approximates (POBAs) to Pi; see Comments.

The programs for A265813, there is no canonical definition to state claims against.
-/

/-! ## A265813.P18178920827536681633

`round(A265812(n+1)/π)`
-/

namespace A265813.P18178920827536681633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265812 (n + 1) : ℝ) / Real.pi)

end

end A265813.P18178920827536681633

/-! ## A265813.P7928515384174637861

`A062299(A265812(n+1))`
-/

namespace A265813.P7928515384174637861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A265812 (n + 1)).toNat

end

end A265813.P7928515384174637861

/-!
# A265814: Numerators of lower primes-only best approximates (POBAs) to e; see Comments.

The programs for A265814, there is no canonical definition to state claims against.
-/

/-! ## A265814.P15849968812695873667

`floor(e*A265815(n+1))`
-/

namespace A265814.P15849968812695873667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A265815 (n + 1) : ℝ)⌋

end

end A265814.P15849968812695873667

/-! ## A265814.P17761855257780104121

`ceil(e*A265815(n+1)-A033999(n)²)`
-/

namespace A265814.P17761855257780104121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A265815 (n + 1) : ℝ) - (A033999 n ^ 2 : ℝ)⌉

end

end A265814.P17761855257780104121

/-! ## A265814.P41581075586750709

`ceil(e*A265815(n+1)-A007318(∑[n+1]))`
-/

namespace A265814.P41581075586750709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A265815 (n + 1) : ℝ) - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A265814.P41581075586750709

/-! ## A265814.P1881604067281415192

`ceil(e*A265815(n+1)-A000045(gcd(n, n+1)))`
-/

namespace A265814.P1881604067281415192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A265815 (n + 1) : ℝ) - (A000045 (Nat.gcd n (n + 1)) : ℝ)⌉

end

end A265814.P1881604067281415192

/-! ## A265814.P14472643025995104435

`ceil(e*A265815(n+1)-A000045(A014963(2*(n+1))))`
-/

namespace A265814.P14472643025995104435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A265815 (n + 1) : ℝ) - (A000045 (A014963 (2 * (n + 1))).toNat : ℝ)⌉

end

end A265814.P14472643025995104435

/-!
# A265815: Denominators of lower primes-only best approximates (POBAs) to e; see Comments.

The programs for A265815, there is no canonical definition to state claims against.
-/

/-! ## A265815.P16500643455214651551

`ceil(A265814(n+1)/e)`
-/

namespace A265815.P16500643455214651551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265814 (n + 1) : ℝ) / Real.exp 1⌉

end

end A265815.P16500643455214651551

/-! ## A265815.P10102561160947591666

`gcd(round(A265814(n+1)/e), A000038(n))`
-/

namespace A265815.P10102561160947591666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A265814 (n + 1) : ℝ) / Real.exp 1)) (A000038 n)

end

end A265815.P10102561160947591666

/-! ## A265815.P14166828310275310234

`round(A265814(n+1)/e*A007318(∑[n]))`
-/

namespace A265815.P14166828310275310234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265814 (n + 1) : ℝ) / Real.exp 1 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A265815.P14166828310275310234

/-! ## A265815.P8355710881295498218

`round(A265814(n+1)/e)*A014963(6*(n+1))`
-/

namespace A265815.P8355710881295498218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265814 (n + 1) : ℝ) / Real.exp 1) * A014963 (6 * (n + 1))

end

end A265815.P8355710881295498218

/-! ## A265815.P11496594740717180251

`A006530(round(A265814(n+1)/e))`
-/

namespace A265815.P11496594740717180251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A265814 (n + 1) : ℝ) / Real.exp 1)).toNat

end

end A265815.P11496594740717180251

/-!
# A265816: Numerators of upper primes-only best approximates (POBAs) to e; see Comments.

The programs for A265816, there is no canonical definition to state claims against.
-/

/-! ## A265816.P16242897857740650653

`A159477(A293857(n)+A017053(n))`
-/

namespace A265816.P16242897857740650653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A293857 n + A017053 n).toNat

end

end A265816.P16242897857740650653

/-! ## A265816.P3218155187070808673

`record[A006530(A118679(2*(n+2))+A000188(n+2))]`
-/

namespace A265816.P3218155187070808673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A118679 (2 * (n + 2)) + A000188 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265816.P3218155187070808673

/-!
# A265818: Numerators of primes-only best approximates (POBAs) to e; see Comments.

The programs for A265818, there is no canonical definition to state claims against.
-/

/-! ## A265818.P291675682368624866

`A357170(A052830(n)+2)`
-/

namespace A265818.P291675682368624866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357170 (A052830 n + 2).toNat

end

end A265818.P291675682368624866

/-!
# A265819: Denominators of primes-only best approximates (POBAs) to e; see Comments.

The programs for A265819, there is no canonical definition to state claims against.
-/

/-! ## A265819.P4291408933385493171

`A226033(A265818(n+1))`
-/

namespace A265819.P4291408933385493171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226033 (A265818 (n + 1)).toNat

end

end A265819.P4291408933385493171

/-! ## A265819.P13575602270119570717

`A119388(a(n-2)+2)` with `a(0)=2, a(1)=2, a(2)=5`
-/

namespace A265819.P13575602270119570717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 5] fun n a =>
  A119388 (a (n - 2) + 2).toNat

end

end A265819.P13575602270119570717

/-!
# A265823: Continued fraction expansion of the prime zeta function at 2.

The programs for A265823, there is no canonical definition to state claims against.
-/

/-! ## A265823.P6560762025491725557

`gcd(A099994(n+1), A241092(A028259(n+1)))`
-/

namespace A265823.P6560762025491725557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099994 (n + 1)) (A241092 (A028259 (n + 1)).toNat)

end

end A265823.P6560762025491725557

/-!
# A265826: a(0) = 1, a(n) = Sum_{k=1..n} a(n-k)*ceiling(sin(k)).

The programs for A265826, there is no canonical definition to state claims against.
-/

/-! ## A265826.P2254179644948609099

`Δ[A049864(n+1)%A303552(2*(n+1))]`
-/

namespace A265826.P2254179644948609099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049864 (n + 1)) (A303552 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265826.P2254179644948609099

/-! ## A265826.P2660327735317968514

`A049858(A146888(n))+∑[A049856(n+1)]`
-/

namespace A265826.P2660327735317968514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (A146888 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265826.P2660327735317968514

/-! ## A265826.P11987870073797183202

`A059633(A321162(2*n+3)+1)`
-/

namespace A265826.P11987870073797183202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (A321162 (2 * n + 3) + 1).toNat

end

end A265826.P11987870073797183202

/-! ## A265826.P5152341168929924637

`A187837(a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A265826.P5152341168929924637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A187837 (a (n - 1)).toNat + 1

end

end A265826.P5152341168929924637

/-! ## A265826.P12782023609178126292

`-A001489(round(a(n-1)+ϕ*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A265826.P12782023609178126292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  -A001489 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.goldenRatio * (a (n - 2) : ℝ))).toNat

end

end A265826.P12782023609178126292

/-!
# A265829: Expansion of Product_{k>=1} 1/(1 - (4*k-2)*x^(4*k-2)).

The programs for A265829, there is no canonical definition to state claims against.
-/

/-! ## A265829.P684353040480430204

`lcm(A091337(n+1), A228944(A001405(n)))`
-/

namespace A265829.P684353040480430204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091337 (n + 1)) (A228944 (A001405 n).toNat)

end

end A265829.P684353040480430204

/-! ## A265829.P3543262375508482089

`and(A228944(A001405(n)), A353460(n+1))`
-/

namespace A265829.P3543262375508482089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228944 (A001405 n).toNat) (A353460 (n + 1))

end

end A265829.P3543262375508482089

/-!
# A265830: Expansion of Product_{k>=1} 1/(1 - (4*k-3)*x^(4*k-3)).

The programs for A265830, there is no canonical definition to state claims against.
-/

/-! ## A265830.P14232161697933366737

`A285048(n)+A185255(A285048(n))`
-/

namespace A265830.P14232161697933366737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285048 n + A185255 (A285048 n).toNat

end

end A265830.P14232161697933366737

/-! ## A265830.P17285714296239440292

`A285048(n)+A284977(A284995(n+1))`
-/

namespace A265830.P17285714296239440292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285048 n + A284977 (A284995 (n + 1)).toNat

end

end A265830.P17285714296239440292

/-!
# A265831: Expansion of Product_{k>=1} 1/(1 - (5*k-1)*x^(5*k-1)).

The programs for A265831, there is no canonical definition to state claims against.
-/

/-! ## A265831.P16010910762200546725

`lcm(A090677(n), A285721(A000051(n+1)))`
-/

namespace A265831.P16010910762200546725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090677 n) (A285721 (A000051 (n + 1)).toNat)

end

end A265831.P16010910762200546725

/-!
# A265833: Expansion of Product_{k>=1} 1/(1 - (5*k-3)*x^(5*k-3)).

The programs for A265833, there is no canonical definition to state claims against.
-/

/-! ## A265833.P14421333678907270186

`2^floor(n/2)-A007814(A110035(n))`
-/

namespace A265833.P14421333678907270186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (A007814 (A110035 n).toNat : ℚ)

end

end A265833.P14421333678907270186

/-!
# A265835: Numbers n such that A015128(n)/2 is prime.

The programs for A265835, there is no canonical definition to state claims against.
-/

/-! ## A265835.P15140530946412087299

`A001259(A027383(n))-1`
-/

namespace A265835.P15140530946412087299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001259 (A027383 n).toNat - 1

end

end A265835.P15140530946412087299

/-! ## A265835.P15769021176916550310

`A001259(A103445(n))-1`
-/

namespace A265835.P15769021176916550310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001259 (A103445 n).toNat - 1

end

end A265835.P15769021176916550310

/-!
# A265836: Expansion of Product_{k>=1} 1/(1 - k*(k+1)*x^k).

The programs for A265836, there is no canonical definition to state claims against.
-/

/-! ## A265836.P15156369372347160232

`A293689(A291623(n+1))`
-/

namespace A265836.P15156369372347160232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293689 (A291623 (n + 1)).toNat

end

end A265836.P15156369372347160232

/-! ## A265836.P11484396346860916444

`A174569(A100982(n+2))`
-/

namespace A265836.P11484396346860916444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174569 (A100982 (n + 2)).toNat

end

end A265836.P11484396346860916444

/-!
# A265837: Expansion of Product_{k>=1} 1/(1 - k^3*x^k).

The programs for A265837, there is no canonical definition to state claims against.
-/

/-! ## A265837.P3374152086921884396

`A292193(∑[n+3]+n+3)`
-/

namespace A265837.P3374152086921884396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A265837.P3374152086921884396

/-! ## A265837.P5204395839084076609

`A285241(n)+A004016(A190801(n+1))`
-/

namespace A265837.P5204395839084076609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285241 n + A004016 (A190801 (n + 1)).toNat

end

end A265837.P5204395839084076609

/-!
# A265838: Expansion of Product_{k>=1} 1/(1 - k^4*x^k).

The programs for A265838, there is no canonical definition to state claims against.
-/

/-! ## A265838.P8897575078605201740

`A292193(eq[4, A025581(n)])`
-/

namespace A265838.P8897575078605201740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265838.P8897575078605201740

/-! ## A265838.P16192627708350961078

`A292193(A046691(n+3)-1)`
-/

namespace A265838.P16192627708350961078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (A046691 (n + 3) - 1).toNat

end

end A265838.P16192627708350961078

/-! ## A265838.P15556555743836006538

`A292193(A000217(n+5)-5)`
-/

namespace A265838.P15556555743836006538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (A000217 (n + 5) - 5).toNat

end

end A265838.P15556555743836006538

/-! ## A265838.P1997948505936142419

`A292193(Δ[A023545(n+1)]-1)`
-/

namespace A265838.P1997948505936142419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (f1 (n + 1) - f1 n - 1).toNat

end

end A265838.P1997948505936142419

/-! ## A265838.P12018014031142334538

`A292193(Δ[A008778(n+1)]+n+2)`
-/

namespace A265838.P12018014031142334538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (f1 (n + 1) - f1 n + (n + 2 : ℤ)).toNat

end

end A265838.P12018014031142334538

/-!
# A265839: Expansion of Product_{k>=1} 1/(1 - k^5*x^k).

The programs for A265839, there is no canonical definition to state claims against.
-/

/-! ## A265839.P3253964375109817637

`A292193(A055999(n+3))`
-/

namespace A265839.P3253964375109817637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (A055999 (n + 3)).toNat

end

end A265839.P3253964375109817637

/-! ## A265839.P13758748913888555073

`A292193(eq[5, A025581(n)])`
-/

namespace A265839.P13758748913888555073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265839.P13758748913888555073

/-! ## A265839.P16007929249441521950

`A292193(Δ[A026054(n+3)])`
-/

namespace A265839.P16007929249441521950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (f1 (n + 1) - f1 n).toNat

end

end A265839.P16007929249441521950

/-! ## A265839.P6778882496368283242

`A292193(Δ[A023545(n+2)]-2)`
-/

namespace A265839.P6778882496368283242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (f1 (n + 1) - f1 n - 2).toNat

end

end A265839.P6778882496368283242

/-! ## A265839.P3295083344420610219

`A292193(A000124(n+5)+n-1)`
-/

namespace A265839.P3295083344420610219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (A000124 (n + 5) + (n : ℤ) - 1).toNat

end

end A265839.P3295083344420610219

/-!
# A265840: Expansion of Product_{k>=1} (1 + k^3*x^k).

The programs for A265840, there is no canonical definition to state claims against.
-/

/-! ## A265840.P5680480944648548129

`A292189(∑[n+3]+n+3)`
-/

namespace A265840.P5680480944648548129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A265840.P5680480944648548129

/-!
# A265841: Expansion of Product_{k>=1} (1 + k^4*x^k).

The programs for A265841, there is no canonical definition to state claims against.
-/

/-! ## A265841.P317982244896559683

`A292189(A052905(n+2))`
-/

namespace A265841.P317982244896559683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (A052905 (n + 2)).toNat

end

end A265841.P317982244896559683

/-! ## A265841.P9748334657759994576

`A292189(eq[4, A025581(n)])`
-/

namespace A265841.P9748334657759994576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265841.P9748334657759994576

/-! ## A265841.P6829235420712287508

`A292189(A000217(n+4)+n)`
-/

namespace A265841.P6829235420712287508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A265841.P6829235420712287508

/-! ## A265841.P13113304614217900186

`A292189(lt[A176230(n+4), A001222(n+2)])`
-/

namespace A265841.P13113304614217900186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176230 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265841.P13113304614217900186

/-! ## A265841.P9081113427215852872

`A292189(eq[3, A332954(n)])`
-/

namespace A265841.P9081113427215852872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265841.P9081113427215852872

/-!
# A265842: Expansion of Product_{k>=1} (1 + k^5*x^k).

The programs for A265842, there is no canonical definition to state claims against.
-/

/-! ## A265842.P14442529538243919908

`A292189(A055999(n+3))`
-/

namespace A265842.P14442529538243919908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (A055999 (n + 3)).toNat

end

end A265842.P14442529538243919908

/-! ## A265842.P15888551532809652493

`A292189(eq[5, A025581(n)])`
-/

namespace A265842.P15888551532809652493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265842.P15888551532809652493

/-! ## A265842.P16542315850447617645

`A292189(eq[6, A004736(n+1)])`
-/

namespace A265842.P16542315850447617645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265842.P16542315850447617645

/-!
# A265843: Number of moves for the prime winding graph to have a zero x coordinate value.

The programs for A265843, there is no canonical definition to state claims against.
-/

/-! ## A265843.P8038799613272614402

`lt[gcd(n+1, ∏{p}[n+1, (n+1)/#]), A146290(2*n+3)]`
-/

namespace A265843.P8038799613272614402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146290 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A265843.P8038799613272614402

/-! ## A265843.P5980199000529431599

`A125703(A186752(n+2))`
-/

namespace A265843.P5980199000529431599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125703 (A186752 (n + 2)).toNat

end

end A265843.P5980199000529431599

/-! ## A265843.P9583697148295082011

`∏{e}[A055842(n), A028392(#)]`
-/

namespace A265843.P9583697148295082011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028392 (Nat.factorization (f1 n).natAbs p)

end

end A265843.P9583697148295082011

/-! ## A265843.P5826412677306002757

`∏{e}[A055842(n), A062974(#)]`
-/

namespace A265843.P5826412677306002757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062974 (Nat.factorization (f1 n).natAbs p)

end

end A265843.P5826412677306002757

/-! ## A265843.P5276644983977970639

`∏{e}[A055842(n), A066049(#)]`
-/

namespace A265843.P5276644983977970639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066049 (Nat.factorization (f1 n).natAbs p)

end

end A265843.P5276644983977970639

/-!
# A265844: Expansion of Product_{k>=1} (1 + k^2*x^k)/(1 - k^2*x^k).

The programs for A265844, there is no canonical definition to state claims against.
-/

/-! ## A265844.P12371645340192371660

`record[A103517(n)/A243713(n+1)]`
-/

namespace A265844.P12371645340192371660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A243713 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265844.P12371645340192371660

/-! ## A265844.P9872820036329446319

`A206622(n)+A138471(A322451(n))`
-/

namespace A265844.P9872820036329446319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206622 n + A138471 (A322451 n).toNat

end

end A265844.P9872820036329446319

/-! ## A265844.P3749154939465505102

`A004275(lcm(A052544(n), A058281(n)))`
-/

namespace A265844.P3749154939465505102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.lcm (A052544 n) (A058281 n))

end

end A265844.P3749154939465505102

/-!
# A265846: Number of permutations of {1,2,...,2n} that result in a binary search tree of height n.

The programs for A265846, there is no canonical definition to state claims against.
-/

/-! ## A265846.P15129760279691391365

`A195581(∑[4*n])`
-/

namespace A265846.P15129760279691391365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265846.P15129760279691391365

/-! ## A265846.P10995470622758048948

`gcd(A000038(n), A195581(A046092(n)))`
-/

namespace A265846.P10995470622758048948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A195581 (A046092 n).toNat)

end

end A265846.P10995470622758048948

/-! ## A265846.P14970441048701307725

`lcm(A020985(n), A195581(A046092(n)))`
-/

namespace A265846.P14970441048701307725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A195581 (A046092 n).toNat)

end

end A265846.P14970441048701307725

/-! ## A265846.P8692599515623127067

`or(A000007(n), A195581(A046092(n)))`
-/

namespace A265846.P8692599515623127067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A195581 (A046092 n).toNat)

end

end A265846.P8692599515623127067

/-! ## A265846.P6058980483434980673

`A195581(A046092(n))^A136400(n)`
-/

namespace A265846.P6058980483434980673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195581 (A046092 n).toNat : ℚ) ^ (A136400 n : ℤ)

end

end A265846.P6058980483434980673

/-!
# A265847: Number of different quasi-orders with n labeled elements, modulo n.

The programs for A265847, there is no canonical definition to state claims against.
-/

/-! ## A265847.P14454429669630630095

`A000798(n+1)%(n+1)`
-/

namespace A265847.P14454429669630630095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000798 (n + 1)) (n + 1 : ℤ)

end

end A265847.P14454429669630630095

/-! ## A265847.P5562100600238844949

`Δ[A173399(n)]%(n+1)`
-/

namespace A265847.P5562100600238844949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A265847.P5562100600238844949

/-! ## A265847.P16128658522752151169

`A333628(A151708(n)-A023416(n+1))`
-/

namespace A265847.P16128658522752151169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (A151708 n - A023416 (n + 1)).toNat

end

end A265847.P16128658522752151169

/-! ## A265847.P1971100767960475071

`A107847(n+1)%A244971(A168022(n))`
-/

namespace A265847.P1971100767960475071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107847 (n + 1)) (A244971 (A168022 n).toNat)

end

end A265847.P1971100767960475071

/-! ## A265847.P1742862673367358547

`A305534(n+1)%A035092(A296266(n))`
-/

namespace A265847.P1742862673367358547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305534 (n + 1)) (A035092 (A296266 n).toNat)

end

end A265847.P1742862673367358547

/-!
# A265848: Pascal's triangle, right and left halves interchanged.

The programs for A265848, the canonical program `A265848.P6844072925367765983` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265848 has offset 0).

The definition of A265848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265848.P6844072925367765983

`A107430(A185180(n+1)-1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265848

/-- `A107430(A185180(n+1)-1)` -/
def P6844072925367765983.Spec : Prop :=
  ∀ n, P6844072925367765983.a n = A265848 n

theorem P6844072925367765983.correct : P6844072925367765983.Spec := by
  intro n
  simp only [A265848]

end A265848

/-! ## A265848.P11872152661569297421

`A249095(A057211(n+1)+2*n+1)`
-/

namespace A265848.P11872152661569297421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 (A057211 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A265848.P11872152661569297421

namespace A265848

/-- `A249095(A057211(n+1)+2*n+1)` -/
def P11872152661569297421.Spec : Prop :=
  ∀ n, P11872152661569297421.a n = A265848 n

end A265848

/-! ## A265848.P13634713893442207667

`A249095(2*(n+1)-A003056(n)%2)`
-/

namespace A265848.P13634713893442207667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249095 ((2 * (n + 1) : ℤ) - Int.tmod (A003056 n) 2).toNat

end

end A265848.P13634713893442207667

namespace A265848

/-- `A249095(2*(n+1)-A003056(n)%2)` -/
def P13634713893442207667.Spec : Prop :=
  ∀ n, P13634713893442207667.a n = A265848 n

end A265848

/-! ## A265848.P3857790026275651809

`A211226(4*n+3-A211197(n+1))`
-/

namespace A265848.P3857790026275651809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 ((4 * n + 3 : ℤ) - A211197 (n + 1)).toNat

end

end A265848.P3857790026275651809

namespace A265848

/-- `A211226(4*n+3-A211197(n+1))` -/
def P3857790026275651809.Spec : Prop :=
  ∀ n, P3857790026275651809.a n = A265848 n

end A265848

/-!
# A265849: First differences of A006751.

The programs for A265849, there is no canonical definition to state claims against.
-/

/-! ## A265849.P10967167891270584457

`A006751(n+2)-A006751(n+1)`
-/

namespace A265849.P10967167891270584457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006751 (n + 2) - A006751 (n + 1)

end

end A265849.P10967167891270584457

/-! ## A265849.P14129489482419111468

`Δ[A001140(n+1)]`
-/

namespace A265849.P14129489482419111468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265849.P14129489482419111468

/-! ## A265849.P711882045807473326

`Δ[A001141(n+1)]`
-/

namespace A265849.P711882045807473326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265849.P711882045807473326

/-! ## A265849.P13433029650024586004

`Δ[A001143(n+1)]`
-/

namespace A265849.P13433029650024586004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265849.P13433029650024586004

/-! ## A265849.P17095661887128503614

`Δ[A001145(n+1)]`
-/

namespace A265849.P17095661887128503614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265849.P17095661887128503614

/-!
# A265850: Numbers k such that phi(k-2) = phi(k+5) - 2.

The programs for A265850, there is no canonical definition to state claims against.
-/

/-! ## A265850.P9814492471985957458

`A303818(n+1)+A303809(A000142(n+3))`
-/

namespace A265850.P9814492471985957458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1) + A303809 (A000142 (n + 3)).toNat

end

end A265850.P9814492471985957458

/-!
# A265851: Primes p such that phi(p-2) = phi(p+5) - 2.

The programs for A265851, there is no canonical definition to state claims against.
-/

/-! ## A265851.P18191264384827320463

`p?[xor(val(n+1, 2)+1, 2^n)]`
-/

namespace A265851.P18191264384827320463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (SequenceMachineLib.valuation (n + 1) 2 + 1) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265851.P18191264384827320463

/-!
# A265852: n such that A261807(n) = n^3 - n.

The programs for A265852, the canonical program `A265852.P9116113039620238483` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265852 has offset 1).

The definition of A265852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265852.P9116113039620238483

`eq[n, and(n, n^3)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265852

/-- `eq[n, and(n, n^3)]` -/
def P9116113039620238483.Spec : Prop :=
  ∀ n, (P9116113039620238483.a n : ℤ) = A265852 (n + 1)

theorem P9116113039620238483.correct : P9116113039620238483.Spec := by
  intro n
  simp only [A265852, Nat.add_sub_cancel]

end A265852

/-! ## A265852.P7862027625304120284

`lt[n-1, and(n, n^3)]`
-/

namespace A265852.P7862027625304120284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265852.P7862027625304120284

namespace A265852

/-- `lt[n-1, and(n, n^3)]` -/
def P7862027625304120284.Spec : Prop :=
  ∀ n, (P7862027625304120284.a n : ℤ) = A265852 (n + 1)

end A265852

/-! ## A265852.P6330213093881356382

`lt[and(n, -(n*n²+1)), 2]`
-/

namespace A265852.P6330213093881356382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n * n ^ 2 + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265852.P6330213093881356382

namespace A265852

/-- `lt[and(n, -(n*n²+1)), 2]` -/
def P6330213093881356382.Spec : Prop :=
  ∀ n, (P6330213093881356382.a n : ℤ) = A265852 (n + 1)

end A265852

/-! ## A265852.P18255957710998225535

`record[gcd(n, A261807(n)/2)]`
-/

namespace A265852.P18255957710998225535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((A261807 n : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265852.P18255957710998225535

namespace A265852

/-- `record[gcd(n, A261807(n)/2)]` -/
def P18255957710998225535.Spec : Prop :=
  ∀ n, (P18255957710998225535.a n : ℤ) = A265852 (n + 1)

end A265852

/-! ## A265852.P4673665723575559546

`eq[0, and(n, A007531(n+1))²]`
-/

namespace A265852.P4673665723575559546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A007531 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265852.P4673665723575559546

namespace A265852

/-- `eq[0, and(n, A007531(n+1))²]` -/
def P4673665723575559546.Spec : Prop :=
  ∀ n, (P4673665723575559546.a n : ℤ) = A265852 (n + 1)

end A265852

/-! ## A265852.P4580245458772555561

`record[A026741(gcd(n, A261807(n)))]`
-/

namespace A265852.P4580245458772555561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (n : ℤ) (A261807 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265852.P4580245458772555561

namespace A265852

/-- `record[A026741(gcd(n, A261807(n)))]` -/
def P4580245458772555561.Spec : Prop :=
  ∀ n, P4580245458772555561.a n = A265852 (n + 1)

end A265852

/-! ## A265852.P15685221688430558941

`eq[0, A000290(and(n, A007531(n+1)))]`
-/

namespace A265852.P15685221688430558941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.land (n : ℤ) (A007531 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265852.P15685221688430558941

namespace A265852

/-- `eq[0, A000290(and(n, A007531(n+1)))]` -/
def P15685221688430558941.Spec : Prop :=
  ∀ n, (P15685221688430558941.a n : ℤ) = A265852 (n + 1)

end A265852

/-! ## A265852.P365921887221938943

`eq[1, A323237(and(n+1, A007531(n+1))+1)]`
-/

namespace A265852.P365921887221938943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (Int.land (n + 1 : ℤ) (A007531 (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265852.P365921887221938943

namespace A265852

/-- `eq[1, A323237(and(n+1, A007531(n+1))+1)]` -/
def P365921887221938943.Spec : Prop :=
  ∀ n, (P365921887221938943.a n : ℤ) = A265852 (n + 1)

end A265852

/-! ## A265852.P17644748614292981275

`eq[1, A000041(and(n, A007531(n+1)))]`
-/

namespace A265852.P17644748614292981275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land (n : ℤ) (A007531 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265852.P17644748614292981275

namespace A265852

/-- `eq[1, A000041(and(n, A007531(n+1)))]` -/
def P17644748614292981275.Spec : Prop :=
  ∀ n, (P17644748614292981275.a n : ℤ) = A265852 (n + 1)

end A265852

/-! ## A265852.P10451448631992919983

`eq[1, A143324(and(n, A007531(n+1))+1)]`
-/

namespace A265852.P10451448631992919983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (Int.land (n : ℤ) (A007531 (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265852.P10451448631992919983

namespace A265852

/-- `eq[1, A143324(and(n, A007531(n+1))+1)]` -/
def P10451448631992919983.Spec : Prop :=
  ∀ n, (P10451448631992919983.a n : ℤ) = A265852 (n + 1)

end A265852

/-!
# A265853: a(0)=1; for n >= 1, a(n) is the number of subsets of [a(0), a(1), ..., a(n-1)] whose sum is equal to a(n-1).

The programs for A265853, there is no canonical definition to state claims against.
-/

/-! ## A265853.P2155993952198895773

`A236362(record[A340244(n+1)]+n-1)`
-/

namespace A265853.P2155993952198895773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 1)).toNat

end

end A265853.P2155993952198895773

/-!
# A265854: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any horizontal or antidiagonal neighbor equal to n-1.

The programs for A265854, there is no canonical definition to state claims against.
-/

/-! ## A265854.P16126373714018963695

`A265856(∑[n+2])`
-/

namespace A265854.P16126373714018963695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265854.P16126373714018963695

/-!
# A265855: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any horizontal or antidiagonal neighbor equal to n-1.

The programs for A265855, there is no canonical definition to state claims against.
-/

/-! ## A265855.P7318904778596837937

`A265856(∑[n+3]+1)`
-/

namespace A265855.P7318904778596837937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265855.P7318904778596837937

/-!
# A265857: Number of 3Xn arrays containing n copies of 0..3-1 with no element plus any horizontal or antidiagonal neighbor equal to 3-1.

The programs for A265857, there is no canonical definition to state claims against.
-/

/-! ## A265857.P92613119176865403

`A265856(∑[n+2]+4)`
-/

namespace A265857.P92613119176865403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265857.P92613119176865403

/-! ## A265857.P7543923940834506254

`lcm(2, A265856(A167614(n+1)))`
-/

namespace A265857.P7543923940834506254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265856 (A167614 (n + 1)).toNat)

end

end A265857.P7543923940834506254

/-! ## A265857.P5178047080299495875

`A265856(A167614(n+1))+A018795(n)`
-/

namespace A265857.P5178047080299495875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (A167614 (n + 1)).toNat + A018795 n

end

end A265857.P5178047080299495875

/-! ## A265857.P317089553050932301

`A265856(A167614(n+1))%A107464(n)`
-/

namespace A265857.P317089553050932301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265856 (A167614 (n + 1)).toNat) (A107464 n)

end

end A265857.P317089553050932301

/-! ## A265857.P7902777394214837638

`A265856(A167614(n+1))+A061217(n+1)`
-/

namespace A265857.P7902777394214837638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (A167614 (n + 1)).toNat + A061217 (n + 1)

end

end A265857.P7902777394214837638

/-!
# A265858: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any horizontal or antidiagonal neighbor equal to 4-1.

The programs for A265858, there is no canonical definition to state claims against.
-/

/-! ## A265858.P7791936877561657559

`A265856(A141214(n)+7)`
-/

namespace A265858.P7791936877561657559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (A141214 n + 7).toNat

end

end A265858.P7791936877561657559

/-! ## A265858.P5207209287369067107

`A265856(A052905(n)+9)`
-/

namespace A265858.P5207209287369067107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (A052905 n + 9).toNat

end

end A265858.P5207209287369067107

/-! ## A265858.P9392391611020374988

`A265856(A055999(n)+10)`
-/

namespace A265858.P9392391611020374988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (A055999 n + 10).toNat

end

end A265858.P9392391611020374988

/-! ## A265858.P5775523371816097506

`A265856(eq[5, A066657(n)])`
-/

namespace A265858.P5775523371816097506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265858.P5775523371816097506

/-!
# A265859: Unluckiness of n.

The programs for A265859, there is no canonical definition to state claims against.
-/

/-! ## A265859.P16242231162859167008

`(1-A145649(n+1))*A260438(n+1)`
-/

namespace A265859.P16242231162859167008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A145649 (n + 1)) * A260438 (n + 1)

end

end A265859.P16242231162859167008

/-! ## A265859.P9752951459653293627

`A260438(n+1)%A056578(A264940(n+1))`
-/

namespace A265859.P9752951459653293627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260438 (n + 1)) (A056578 (A264940 (n + 1)).toNat)

end

end A265859.P9752951459653293627

/-! ## A265859.P9837332969129659302

`A260438(A145649(n+1)+n+1)-A145649(n+1)`
-/

namespace A265859.P9837332969129659302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (A145649 (n + 1) + (n : ℤ) + 1).toNat - A145649 (n + 1)

end

end A265859.P9837332969129659302

/-! ## A265859.P9197114751609238847

`A145649((n+1)*A145649(n+1)+1)*A260438(n+1)`
-/

namespace A265859.P9197114751609238847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 ((n + 1 : ℤ) * A145649 (n + 1) + 1).toNat * A260438 (n + 1)

end

end A265859.P9197114751609238847

/-! ## A265859.P8531627791822716301

`A001222(A020639(A260429(n+1))^A260438(n+1))`
-/

namespace A265859.P8531627791822716301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A020639 (A260429 (n + 1)).toNat : ℚ) ^ (A260438 (n + 1) : ℤ))).toNat

end

end A265859.P8531627791822716301

/-! ## A265859.P16383733420870039561

`A002262(A255546(n+1))`
-/

namespace A265859.P16383733420870039561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A255546 (n + 1)).toNat

end

end A265859.P16383733420870039561

/-! ## A265859.P5349340165794845037

`A002260(A255546(n+1)+1)-1`
-/

namespace A265859.P5349340165794845037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A255546 (n + 1) + 1).toNat - 1

end

end A265859.P5349340165794845037

/-! ## A265859.P14252168300667362221

`A145649(A145649(n+1)+A057698(n+1))*A260438(n+1)`
-/

namespace A265859.P14252168300667362221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A145649 (n + 1) + A057698 (n + 1)).toNat * A260438 (n + 1)

end

end A265859.P14252168300667362221

/-!
# A265860: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any vertical neighbor equal to n-1.

The programs for A265860, there is no canonical definition to state claims against.
-/

/-! ## A265860.P2779799397608994938

`A265863(∑[n+2])`
-/

namespace A265860.P2779799397608994938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265860.P2779799397608994938

/-! ## A265860.P5327914941763032280

`A266183(∑[n+2])`
-/

namespace A265860.P5327914941763032280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265860.P5327914941763032280

/-! ## A265860.P12928142604845708694

`record[A265863(A198455(n+1))]`
-/

namespace A265860.P12928142604845708694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265860.P12928142604845708694

/-! ## A265860.P4880754382037567673

`record[A265863(record[A185180(n+1)])]`
-/

namespace A265860.P4880754382037567673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265860.P4880754382037567673

/-!
# A265861: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any vertical neighbor equal to n-1.

The programs for A265861, there is no canonical definition to state claims against.
-/

/-! ## A265861.P1155245257953386639

`A265863(∑[n+3]+1)`
-/

namespace A265861.P1155245257953386639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265861.P1155245257953386639

/-!
# A265862: Number of n X 4 arrays of permutations of 4 copies of 0..n-1 with no element plus any vertical neighbor equal to n-1.

The programs for A265862, there is no canonical definition to state claims against.
-/

/-! ## A265862.P5194826153441550326

`A265863(∑[n+4]+3)`
-/

namespace A265862.P5194826153441550326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265862.P5194826153441550326

/-! ## A265862.P6672588962575283029

`record[A265863(A027379(n))]`
-/

namespace A265862.P6672588962575283029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265862.P6672588962575283029

/-!
# A265864: Number of 3Xn arrays containing n copies of 0..3-1 with no element plus any vertical neighbor equal to 3-1.

The programs for A265864, there is no canonical definition to state claims against.
-/

/-! ## A265864.P17630076743063209172

`A265863(∑[n+2]+4)`
-/

namespace A265864.P17630076743063209172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265864.P17630076743063209172

/-! ## A265864.P15174889798953376822

`lcm(2, A265863(A167614(n+1)))`
-/

namespace A265864.P15174889798953376822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265863 (A167614 (n + 1)).toNat)

end

end A265864.P15174889798953376822

/-! ## A265864.P10110587383543251409

`A265863(A167614(n+1))+A011729(n)`
-/

namespace A265864.P10110587383543251409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (A167614 (n + 1)).toNat + A011729 n

end

end A265864.P10110587383543251409

/-! ## A265864.P5725897793043043318

`A265863(A167614(n+1))+A025437(n)`
-/

namespace A265864.P5725897793043043318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (A167614 (n + 1)).toNat + A025437 n

end

end A265864.P5725897793043043318

/-!
# A265865: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any vertical neighbor equal to 4-1.

The programs for A265865, there is no canonical definition to state claims against.
-/

/-! ## A265865.P12050932479995629522

`A265863(∑[n+3]+7)`
-/

namespace A265865.P12050932479995629522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265865.P12050932479995629522

/-!
# A265866: Number of 5Xn arrays containing n copies of 0..5-1 with no element plus any vertical neighbor equal to 5-1.

The programs for A265866, there is no canonical definition to state claims against.
-/

/-! ## A265866.P16829632084868562198

`A265863(A167499(n+3))`
-/

namespace A265866.P16829632084868562198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (A167499 (n + 3)).toNat

end

end A265866.P16829632084868562198

/-! ## A265866.P9710312396072399805

`A265863(A056000(n)+15)`
-/

namespace A265866.P9710312396072399805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265863 (A056000 n + 15).toNat

end

end A265866.P9710312396072399805

/-!
# A265867: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any antidiagonal neighbor equal to n-1.

The programs for A265867, there is no canonical definition to state claims against.
-/

/-! ## A265867.P2927723887291590975

`A265870(∑[n+2])`
-/

namespace A265867.P2927723887291590975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265867.P2927723887291590975

/-! ## A265867.P5725025629495848052

`record[A265870(gcd(n, A265890(n)))]`
-/

namespace A265867.P5725025629495848052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (Int.gcd (n : ℤ) (A265890 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265867.P5725025629495848052

/-! ## A265867.P6028555944842810921

`record[gcd(A265870(n+1), A353315(n))]`
-/

namespace A265867.P6028555944842810921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265870 (n + 1)) (A353315 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265867.P6028555944842810921

/-! ## A265867.P5309198677385303449

`record[A265870(A000096(∏{e}[n+1, #]))]`
-/

namespace A265867.P5309198677385303449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265867.P5309198677385303449

/-! ## A265867.P6770205994501089213

`record[A265870(n+2)/A265870(n+4)]`
-/

namespace A265867.P6770205994501089213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265870 (n + 2) : ℚ) / (A265870 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265867.P6770205994501089213

/-!
# A265868: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any antidiagonal neighbor equal to n-1.

The programs for A265868, there is no canonical definition to state claims against.
-/

/-! ## A265868.P12443816366169994535

`A265870(∑[n+3]+1)`
-/

namespace A265868.P12443816366169994535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265868.P12443816366169994535

/-! ## A265868.P7412716949756899421

`record[A265870(A237519(n+1))]`
-/

namespace A265868.P7412716949756899421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265868.P7412716949756899421

/-! ## A265868.P14534222621252157952

`record[A265870(gcd(n, A353315(n)))]`
-/

namespace A265868.P14534222621252157952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (Int.gcd (n : ℤ) (A353315 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265868.P14534222621252157952

/-! ## A265868.P11144457015985789813

`record[A010054(n+3)*A265870(n+1)]`
-/

namespace A265868.P11144457015985789813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A265870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265868.P11144457015985789813

/-!
# A265869: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no element plus any antidiagonal neighbor equal to n-1.

The programs for A265869, there is no canonical definition to state claims against.
-/

/-! ## A265869.P4950802289444511222

`A265870(A141214(n+1))`
-/

namespace A265869.P4950802289444511222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A141214 (n + 1)).toNat

end

end A265869.P4950802289444511222

/-! ## A265869.P11219918064253497967

`A265870(A052905(n+1)+2)`
-/

namespace A265869.P11219918064253497967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A052905 (n + 1) + 2).toNat

end

end A265869.P11219918064253497967

/-!
# A265870: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element plus any antidiagonal neighbor equal to n-1.

The programs for A265870, there is no canonical definition to state claims against.
-/

/-! ## A265870.P11089822437969963096

`gcd(A053615(A299474(2*(n+2))), A157386(n+1))`
-/

namespace A265870.P11089822437969963096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053615 (A299474 (2 * (n + 2))).toNat) (A157386 (n + 1))

end

end A265870.P11089822437969963096

/-! ## A265870.P8692442473100247731

`A051059(A071949(n))`
-/

namespace A265870.P8692442473100247731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051059 (A071949 n).toNat

end

end A265870.P8692442473100247731

/-! ## A265870.P7308433749273819648

`A317245(A363419(n)+1)`
-/

namespace A265870.P7308433749273819648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 (A363419 n + 1).toNat

end

end A265870.P7308433749273819648

/-! ## A265870.P10672290769337118789

`A130212(A283433(n)+4)`
-/

namespace A265870.P10672290769337118789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130212 (A283433 n + 4).toNat

end

end A265870.P10672290769337118789

/-! ## A265870.P15211525924273867060

`A009195(A127927(n)+A006068(n))`
-/

namespace A265870.P15211525924273867060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A127927 n + A006068 n).toNat

end

end A265870.P15211525924273867060

/-!
# A265871: Number of 3Xn arrays containing n copies of 0..3-1 with no element plus any antidiagonal neighbor equal to 3-1.

The programs for A265871, there is no canonical definition to state claims against.
-/

/-! ## A265871.P11824461085236202383

`A265870(∑[n+2]+4)`
-/

namespace A265871.P11824461085236202383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265871.P11824461085236202383

/-! ## A265871.P12885620477100970354

`lcm(2, A265870(A167614(n+1)))`
-/

namespace A265871.P12885620477100970354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265870 (A167614 (n + 1)).toNat)

end

end A265871.P12885620477100970354

/-! ## A265871.P15817323188384447086

`A065648(n)*A265870(A167614(n+1))`
-/

namespace A265871.P15817323188384447086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A265870 (A167614 (n + 1)).toNat

end

end A265871.P15817323188384447086

/-! ## A265871.P9300937898300761083

`or(A000038(n), A265870(A167614(n+1)))`
-/

namespace A265871.P9300937898300761083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A265870 (A167614 (n + 1)).toNat)

end

end A265871.P9300937898300761083

/-! ## A265871.P10006167742371292375

`A265870(A167614(n+1))+A000038(n+1)`
-/

namespace A265871.P10006167742371292375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A265871.P10006167742371292375

/-!
# A265872: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any antidiagonal neighbor equal to 4-1.

The programs for A265872, there is no canonical definition to state claims against.
-/

/-! ## A265872.P13768638396557193348

`A265870(A141214(n)+7)`
-/

namespace A265872.P13768638396557193348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A141214 n + 7).toNat

end

end A265872.P13768638396557193348

/-! ## A265872.P10864152418957058641

`A265870(A052905(n)+9)`
-/

namespace A265872.P10864152418957058641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A052905 n + 9).toNat

end

end A265872.P10864152418957058641

/-! ## A265872.P5507997155477991906

`A265870(A055999(n)+10)`
-/

namespace A265872.P5507997155477991906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (A055999 n + 10).toNat

end

end A265872.P5507997155477991906

/-! ## A265872.P2929976943063933432

`A265870(eq[5, A066657(n)])`
-/

namespace A265872.P2929976943063933432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265872.P2929976943063933432

/-!
# A265873: Number of 5Xn arrays containing n copies of 0..5-1 with no element plus any antidiagonal neighbor equal to 5-1.

The programs for A265873, there is no canonical definition to state claims against.
-/

/-! ## A265873.P17363726057592507530

`A265870(eq[6, A131818(n+1)])`
-/

namespace A265873.P17363726057592507530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265873.P17363726057592507530

/-!
# A265874: Number of nX2 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than itself.

The programs for A265874, there is no canonical definition to state claims against.
-/

/-! ## A265874.P4753769846407724429

`A265878(∑[n+1]+2)`
-/

namespace A265874.P4753769846407724429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265874.P4753769846407724429

/-! ## A265874.P2485400346861936122

`record[root(A265878(n+2), A200370(n+1))]`
-/

namespace A265874.P2485400346861936122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265878 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265874.P2485400346861936122

/-! ## A265874.P9885689488350559664

`record[A265878(abs(A201163(n)))]`
-/

namespace A265874.P9885689488350559664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265874.P9885689488350559664

/-! ## A265874.P11793033772076561119

`record[A265878(A117142(n+2))]`
-/

namespace A265874.P11793033772076561119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265874.P11793033772076561119

/-! ## A265874.P3840415709406272828

`record[A265878(Δ[A003453(n+5)])]`
-/

namespace A265874.P3840415709406272828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265874.P3840415709406272828

/-!
# A265875: Number of nX3 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than itself.

The programs for A265875, there is no canonical definition to state claims against.
-/

/-! ## A265875.P2771585441573209352

`A265878(∑[n+2]+4)`
-/

namespace A265875.P2771585441573209352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265875.P2771585441573209352

/-! ## A265875.P13123955800529561035

`A265878(A167614(n+1))+A054908(n)`
-/

namespace A265875.P13123955800529561035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A167614 (n + 1)).toNat + A054908 n

end

end A265875.P13123955800529561035

/-! ## A265875.P1672990977144802160

`A265878(A167614(n+1))+A185284(n)`
-/

namespace A265875.P1672990977144802160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A167614 (n + 1)).toNat + A185284 n

end

end A265875.P1672990977144802160

/-! ## A265875.P11791316124538871037

`lcm(A193592(n), A265878(A167614(n+1)))`
-/

namespace A265875.P11791316124538871037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193592 n) (A265878 (A167614 (n + 1)).toNat)

end

end A265875.P11791316124538871037

/-! ## A265875.P18185764763635994872

`or(A018843(n), A265878(A167614(n+1)))`
-/

namespace A265875.P18185764763635994872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 n) (A265878 (A167614 (n + 1)).toNat)

end

end A265875.P18185764763635994872

/-!
# A265876: Number of nX4 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than itself.

The programs for A265876, there is no canonical definition to state claims against.
-/

/-! ## A265876.P10583730953745238800

`A265878(A374004(n+1))`
-/

namespace A265876.P10583730953745238800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A374004 (n + 1)).toNat

end

end A265876.P10583730953745238800

/-! ## A265876.P17624487862172758337

`A265878(A052905(n)+9)`
-/

namespace A265876.P17624487862172758337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A052905 n + 9).toNat

end

end A265876.P17624487862172758337

/-! ## A265876.P13411739881156394253

`A265878(A055999(n)+10)`
-/

namespace A265876.P13411739881156394253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A055999 n + 10).toNat

end

end A265876.P13411739881156394253

/-! ## A265876.P17397624730436735904

`A265878(A167614(n+2)+1)`
-/

namespace A265876.P17397624730436735904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A167614 (n + 2) + 1).toNat

end

end A265876.P17397624730436735904

/-! ## A265876.P2637080402052551106

`A265878(A141214(n+1))`
-/

namespace A265876.P2637080402052551106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A141214 (n + 1)).toNat

end

end A265876.P2637080402052551106

/-!
# A265877: Number of nX5 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors less than itself.

The programs for A265877, there is no canonical definition to state claims against.
-/

/-! ## A265877.P14400031159501602778

`A265878(A374005(n+1))`
-/

namespace A265877.P14400031159501602778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A374005 (n + 1)).toNat

end

end A265877.P14400031159501602778

/-! ## A265877.P10772561990887645467

`A265878(A155212(n)+13)`
-/

namespace A265877.P10772561990887645467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A155212 n + 13).toNat

end

end A265877.P10772561990887645467

/-! ## A265877.P6470414576596235561

`A265878(A056000(n)+15)`
-/

namespace A265877.P6470414576596235561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A056000 n + 15).toNat

end

end A265877.P6470414576596235561

/-! ## A265877.P11341228011576488536

`A265878(eq[7, A066657(n)])`
-/

namespace A265877.P11341228011576488536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265877.P11341228011576488536

/-! ## A265877.P6690042526563535069

`A265878(A000124(n+4)+4)`
-/

namespace A265877.P6690042526563535069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265878 (A000124 (n + 4) + 4).toNat

end

end A265877.P6690042526563535069

/-!
# A265879: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any horizontal neighbor equal to n-1.

The programs for A265879, there is no canonical definition to state claims against.
-/

/-! ## A265879.P16213327218821820421

`A265882(∑[n+2])`
-/

namespace A265879.P16213327218821820421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265879.P16213327218821820421

/-! ## A265879.P2701209746616450259

`record[A265882(record[A374531(n+2)])]`
-/

namespace A265879.P2701209746616450259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265879.P2701209746616450259

/-! ## A265879.P7704710344024376107

`record[A055137(n+1)*A265882(n+1)]`
-/

namespace A265879.P7704710344024376107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 (n + 1) * A265882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265879.P7704710344024376107

/-! ## A265879.P16353745739357508776

`record[A190033(n+1)%2*A265882(n+1)]`
-/

namespace A265879.P16353745739357508776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190033 (n + 1)) 2 * A265882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265879.P16353745739357508776

/-! ## A265879.P15927642446297629005

`A265882(A000096(n+1))+A089806(2*n+3)`
-/

namespace A265879.P15927642446297629005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (A000096 (n + 1)).toNat + A089806 (2 * n + 3)

end

end A265879.P15927642446297629005

/-!
# A265880: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any horizontal neighbor equal to n-1.

The programs for A265880, there is no canonical definition to state claims against.
-/

/-! ## A265880.P401138526257048251

`A265882(∑[n+3]+1)`
-/

namespace A265880.P401138526257048251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265880.P401138526257048251

/-!
# A265881: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no element plus any horizontal neighbor equal to n-1.

The programs for A265881, there is no canonical definition to state claims against.
-/

/-! ## A265881.P11654443799003213825

`A265882(A141214(n+1))`
-/

namespace A265881.P11654443799003213825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (A141214 (n + 1)).toNat

end

end A265881.P11654443799003213825

/-! ## A265881.P7584269203213803805

`A265882(A052905(n+1)+2)`
-/

namespace A265881.P7584269203213803805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (A052905 (n + 1) + 2).toNat

end

end A265881.P7584269203213803805

/-!
# A265882: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element plus any horizontal neighbor equal to n-1.

The programs for A265882, there is no canonical definition to state claims against.
-/

/-! ## A265882.P12273666749254738633

`A264954(A326474(n)!+n)`
-/

namespace A265882.P12273666749254738633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (Nat.factorial (A326474 n).toNat + n)

end

end A265882.P12273666749254738633

/-! ## A265882.P10678389413172573069

`A264954(A265170(n+1)!+n)`
-/

namespace A265882.P10678389413172573069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (Nat.factorial (A265170 (n + 1)).toNat + n)

end

end A265882.P10678389413172573069

/-! ## A265882.P14242580149717066203

`A265552(A131689(n)*A198632(n))`
-/

namespace A265882.P14242580149717066203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265552 (A131689 n * A198632 n).toNat

end

end A265882.P14242580149717066203

/-! ## A265882.P14626302568867248329

`A000120(A047701(n+1))*A361951(n)`
-/

namespace A265882.P14626302568867248329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A047701 (n + 1)).toNat * A361951 n

end

end A265882.P14626302568867248329

/-! ## A265882.P13623548454814921484

`A264954(n+1)*A264969(A264926(n))`
-/

namespace A265882.P13623548454814921484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (n + 1) * A264969 (A264926 n).toNat

end

end A265882.P13623548454814921484

/-!
# A265883: Number of 3 X n arrays containing n copies of 0..3-1 with no element plus any horizontal neighbor equal to 3-1.

The programs for A265883, there is no canonical definition to state claims against.
-/

/-! ## A265883.P11063362288596793205

`A265882(∑[n+2]+4)`
-/

namespace A265883.P11063362288596793205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265883.P11063362288596793205

/-! ## A265883.P512131028685268402

`lcm(2, A265882(A167614(n+1)))`
-/

namespace A265883.P512131028685268402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265882 (A167614 (n + 1)).toNat)

end

end A265883.P512131028685268402

/-! ## A265883.P7469571102883867330

`A265882(A167614(n+1))+A025437(n)`
-/

namespace A265883.P7469571102883867330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (A167614 (n + 1)).toNat + A025437 n

end

end A265883.P7469571102883867330

/-! ## A265883.P7690624190275323503

`A265882(A167614(n+1))+A031286(n)`
-/

namespace A265883.P7690624190275323503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (A167614 (n + 1)).toNat + A031286 n

end

end A265883.P7690624190275323503

/-!
# A265884: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any horizontal neighbor equal to 4-1.

The programs for A265884, there is no canonical definition to state claims against.
-/

/-! ## A265884.P16880746490409967316

`A265882(∑[n+3]+7)`
-/

namespace A265884.P16880746490409967316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265884.P16880746490409967316

/-!
# A265885: a(n) = n IMPL prime(n), where IMPL is the bitwise logical implication.

The programs for A265885, there is no canonical definition to state claims against.
-/

/-! ## A265885.P9674588095070373478

`or(A000040(n+1), A359359(A144289(n)))`
-/

namespace A265885.P9674588095070373478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000040 (n + 1)) (A359359 (A144289 n).toNat)

end

end A265885.P9674588095070373478

/-! ## A265885.P1381333070510664181

`or(A000040(n+1), A280815(A139714(n+4)))`
-/

namespace A265885.P1381333070510664181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000040 (n + 1)) (A280815 (A139714 (n + 4)).toNat)

end

end A265885.P1381333070510664181

/-! ## A265885.P14166890664639889727

`or(∑{e}[A022558(n), #], A000040(n+1))`
-/

namespace A265885.P14166890664639889727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A000040 (n + 1))

end

end A265885.P14166890664639889727

/-! ## A265885.P16310213304189556346

`or(A000040(n+1), A033988(n*(8*n²+3)))`
-/

namespace A265885.P16310213304189556346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000040 (n + 1)) (A033988 (n * (8 * n ^ 2 + 3)))

end

end A265885.P16310213304189556346

/-! ## A265885.P8888478067525294414

`or(A000040(n+1), A010879(A006451(n)))`
-/

namespace A265885.P8888478067525294414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000040 (n + 1)) (A010879 (A006451 n).toNat)

end

end A265885.P8888478067525294414

/-!
# A265886: Number of n X n 0..2 arrays with the sum of the absolute differences of each element with its horizontal and vertical neighbors equal to the number of neighbors.

The programs for A265886, there is no canonical definition to state claims against.
-/

/-! ## A265886.P11701296923913634444

`A265887(∑[4*n]+1)`
-/

namespace A265886.P11701296923913634444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265887 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265886.P11701296923913634444

/-! ## A265886.P6656555863438969565

`record[gcd(A114327(n), A265887(n+1))]`
-/

namespace A265886.P6656555863438969565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A265887 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265886.P6656555863438969565

/-! ## A265886.P1619399152796635356

`lcm(A011782(n), A265887(A001844(n)))`
-/

namespace A265886.P1619399152796635356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A265887 (A001844 n).toNat)

end

end A265886.P1619399152796635356

/-! ## A265886.P14581806357516520727

`A007318(C(2, n)+1)*A265887(A001844(n))`
-/

namespace A265886.P14581806357516520727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * A265887 (A001844 n).toNat

end

end A265886.P14581806357516520727

/-! ## A265886.P3000061813043961667

`A014963(A008458(n))*A265887(A001844(n))`
-/

namespace A265886.P3000061813043961667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A265887 (A001844 n).toNat

end

end A265886.P3000061813043961667

/-!
# A265888: a(n) = n + floor(n/4)*(-1)^(n mod 4).

The programs for A265888, the canonical program `A265888.P1530133813374726272` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265888 has offset 0).

The definition of A265888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(n/4)*(-1)^n` (program `A265888.P1530133813374726272`, by `A265888.P1530133813374726272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A265888.P1530133813374726272

`n+floor(n/4)*(-1)^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265888

/-- `n+floor(n/4)*(-1)^n` -/
def P1530133813374726272.Spec : Prop :=
  ∀ n, P1530133813374726272.a n = A265888 n

theorem P1530133813374726272.correct : P1530133813374726272.Spec := by
  intro n
  simp only [A265888]

end A265888

/-! ## A265888.P5783169709587566900

`floor(A097140(n)/2+n)`
-/

namespace A265888.P5783169709587566900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097140 n : ℚ) / 2 + (n : ℚ)⌋

end

end A265888.P5783169709587566900

namespace A265888

/-- `floor(A097140(n)/2+n)` -/
def P5783169709587566900.Spec : Prop :=
  ∀ n, P5783169709587566900.a n = A265888 n

end A265888

/-! ## A265888.P8086030182961383194

`abs(floor(n/4)-A181983(n))`
-/

namespace A265888.P8086030182961383194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℚ) / 4⌋ - A181983 n|

end

end A265888.P8086030182961383194

namespace A265888

/-- `abs(floor(n/4)-A181983(n))` -/
def P8086030182961383194.Spec : Prop :=
  ∀ n, P8086030182961383194.a n = A265888 n

end A265888

/-! ## A265888.P10236301065086645219

`round(A225144(n)/(2*n+1))`
-/

namespace A265888.P10236301065086645219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A225144 n : ℚ) / (2 * n + 1 : ℚ))

end

end A265888.P10236301065086645219

namespace A265888

/-- `round(A225144(n)/(2*n+1))` -/
def P10236301065086645219.Spec : Prop :=
  ∀ n, P10236301065086645219.a n = A265888 n

end A265888

/-! ## A265888.P16683334789660512897

`abs(and(2*n, A280193(n))-floor(n/4)-n)`
-/

namespace A265888.P16683334789660512897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land (2 * n : ℤ) (A280193 n) - ⌊(n : ℚ) / 4⌋ - (n : ℤ)|

end

end A265888.P16683334789660512897

namespace A265888

/-- `abs(and(2*n, A280193(n))-floor(n/4)-n)` -/
def P16683334789660512897.Spec : Prop :=
  ∀ n, P16683334789660512897.a n = A265888 n

end A265888

/-!
# A265889: Primes which are multiple-digit narcissistic numbers in at least one base.

The programs for A265889, there is no canonical definition to state claims against.
-/

/-! ## A265889.P1116349754301675654

`p?[A256359(n+1)]`
-/

namespace A265889.P1116349754301675654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265889.P1116349754301675654

/-! ## A265889.P490473221869486337

`∩[A000040(n+1), A256359(n+1)]`
-/

namespace A265889.P490473221869486337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P490473221869486337

/-! ## A265889.P3278932310005585660

`∩[A006005(n+1), A256359(n+1)]`
-/

namespace A265889.P3278932310005585660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P3278932310005585660

/-! ## A265889.P17954769796809325971

`∩[A008578(n+1), A256359(n+1)]`
-/

namespace A265889.P17954769796809325971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P17954769796809325971

/-! ## A265889.P1434993923282889946

`∩[A033946(n+1), A256359(n+1)]`
-/

namespace A265889.P1434993923282889946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P1434993923282889946

/-! ## A265889.P10790279238913441767

`∩[A045344(n+1), A256359(n+1)]`
-/

namespace A265889.P10790279238913441767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P10790279238913441767

/-! ## A265889.P16169136271379716039

`∩[A046022(n+1), A256359(n+1)]`
-/

namespace A265889.P16169136271379716039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P16169136271379716039

/-! ## A265889.P10744671142155654863

`∩[A051948(n+1), A256359(n+1)]`
-/

namespace A265889.P10744671142155654863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P10744671142155654863

/-! ## A265889.P781626363541059878

`∩[A062972(n+1), A256359(n+1)]`
-/

namespace A265889.P781626363541059878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P781626363541059878

/-! ## A265889.P10409444688343728151

`∩[A065091(n+1), A256359(n+1)]`
-/

namespace A265889.P10409444688343728151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P10409444688343728151

/-! ## A265889.P14312874030425756242

`∩[A067126(n+1), A256359(n+1)]`
-/

namespace A265889.P14312874030425756242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P14312874030425756242

/-! ## A265889.P17879423210155193252

`∩[A083249(n+1), A256359(n+1)]`
-/

namespace A265889.P17879423210155193252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P17879423210155193252

/-! ## A265889.P18336093665732073325

`∩[A108719(n+1), A256359(n+1)]`
-/

namespace A265889.P18336093665732073325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P18336093665732073325

/-! ## A265889.P2627942108024334658

`∩[A116974(n+1), A256359(n+1)]`
-/

namespace A265889.P2627942108024334658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P2627942108024334658

/-! ## A265889.P12981924821943968120

`∩[A140475(n+1), A256359(n+1)]`
-/

namespace A265889.P12981924821943968120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P12981924821943968120

/-! ## A265889.P18243482221461616028

`∩[A158611(n+1), A256359(n+1)]`
-/

namespace A265889.P18243482221461616028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P18243482221461616028

/-! ## A265889.P5907877996201867939

`∩[A161346(n+1), A256359(n+1)]`
-/

namespace A265889.P5907877996201867939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P5907877996201867939

/-! ## A265889.P5947014192854950949

`∩[A171577(n+1), A256359(n+1)]`
-/

namespace A265889.P5947014192854950949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P5947014192854950949

/-! ## A265889.P9178799919535084007

`∩[A175787(n+1), A256359(n+1)]`
-/

namespace A265889.P9178799919535084007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P9178799919535084007

/-! ## A265889.P1525871956797723548

`∩[A182140(n+1), A256359(n+1)]`
-/

namespace A265889.P1525871956797723548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265889.P1525871956797723548

/-!
# A265890: Array read by ascending antidiagonals: A(n,k) = A099563(A265609(n,k)), with n as row >= 0, k as column >= 0; the most significant digit in the factorial base representation of rising factorial n^(k) = (n+k-1)!/(n-1)!.

The programs for A265890, the canonical program `A265890.P7956634040998674457` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265890 has offset 0).

The definition of A265890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A265609, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265890.P7956634040998674457

`A099563(A265609(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A265890

/-- `A099563(A265609(n))` -/
def P7956634040998674457.Spec : Prop :=
  ∀ n, P7956634040998674457.a n = A265890 n

theorem P7956634040998674457.correct : P7956634040998674457.Spec := by
  intro n
  simp only [A265890]

end A265890

/-! ## A265890.P10816925184501070562

`A099563(A071919(n)*A233543(n))`
-/

namespace A265890.P10816925184501070562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A071919 n * A233543 n).toNat

end

end A265890.P10816925184501070562

namespace A265890

/-- `A099563(A071919(n)*A233543(n))` -/
def P10816925184501070562.Spec : Prop :=
  ∀ n, P10816925184501070562.a n = A265890 n

end A265890

/-! ## A265890.P3572184311735660021

`A099563(A002262(n)!*A071919(n))`
-/

namespace A265890.P3572184311735660021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 ((Nat.factorial (A002262 n).toNat : ℤ) * A071919 n).toNat

end

end A265890.P3572184311735660021

namespace A265890

/-- `A099563(A002262(n)!*A071919(n))` -/
def P3572184311735660021.Spec : Prop :=
  ∀ n, P3572184311735660021.a n = A265890 n

end A265890

/-! ## A265890.P15837735873256527645

`A099563(A163351(n)!*A071919(n))`
-/

namespace A265890.P15837735873256527645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 ((Nat.factorial (A163351 n).toNat : ℤ) * A071919 n).toNat

end

end A265890.P15837735873256527645

namespace A265890

/-- `A099563(A163351(n)!*A071919(n))` -/
def P15837735873256527645.Spec : Prop :=
  ∀ n, P15837735873256527645.a n = A265890 n

end A265890

/-! ## A265890.P7683831668620764900

`A099563(A025668(n+1)!*A071919(n))`
-/

namespace A265890.P7683831668620764900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 ((Nat.factorial (A025668 (n + 1)).toNat : ℤ) * A071919 n).toNat

end

end A265890.P7683831668620764900

namespace A265890

/-- `A099563(A025668(n+1)!*A071919(n))` -/
def P7683831668620764900.Spec : Prop :=
  ∀ n, P7683831668620764900.a n = A265890 n

end A265890

/-!
# A265891: a(n) = A099563(A000407(n)); the most significant digit in factorial base representation of (2n+1)! / n!.

The programs for A265891, there is no canonical definition to state claims against.
-/

/-! ## A265891.P5814526865014413622

`A265890(∑[4*(n+1)])`
-/

namespace A265891.P5814526865014413622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265890 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265891.P5814526865014413622

/-!
# A265892: Array read by ascending antidiagonals: A(n,k) = A265893(A265609(n,k)), with n as row >= 0, k as column >= 0; the number of significant digits counted without trailing zeros in the factorial base representation of rising factorial n^(k) = (n+k-1)!/(n-1)!.

The programs for A265892, the canonical program `A265892.P3280630500737208173` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265892 has offset 0).

The definition of A265892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265609, A265893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265892.P3280630500737208173

`A265893(A265609(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A265892

/-- `A265893(A265609(n))` -/
def P3280630500737208173.Spec : Prop :=
  ∀ n, P3280630500737208173.a n = A265892 n

theorem P3280630500737208173.correct : P3280630500737208173.Spec := by
  intro n
  simp only [A265892]

end A265892

/-! ## A265892.P10665947994264203699

`A265893(A071919(n)*A233543(n))`
-/

namespace A265892.P10665947994264203699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A071919 n * A233543 n).toNat

end

end A265892.P10665947994264203699

namespace A265892

/-- `A265893(A071919(n)*A233543(n))` -/
def P10665947994264203699.Spec : Prop :=
  ∀ n, P10665947994264203699.a n = A265892 n

end A265892

/-! ## A265892.P1968335579200248950

`A265893(A114219(n)!*A071919(n))`
-/

namespace A265892.P1968335579200248950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 ((Nat.factorial (A114219 n).toNat : ℤ) * A071919 n).toNat

end

end A265892.P1968335579200248950

namespace A265892

/-- `A265893(A114219(n)!*A071919(n))` -/
def P1968335579200248950.Spec : Prop :=
  ∀ n, P1968335579200248950.a n = A265892 n

end A265892

/-! ## A265892.P16960600643816396576

`A265893(A163351(n)!*A071919(n))`
-/

namespace A265892.P16960600643816396576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 ((Nat.factorial (A163351 n).toNat : ℤ) * A071919 n).toNat

end

end A265892.P16960600643816396576

namespace A265892

/-- `A265893(A163351(n)!*A071919(n))` -/
def P16960600643816396576.Spec : Prop :=
  ∀ n, P16960600643816396576.a n = A265892 n

end A265892

/-! ## A265892.P6869449710634297555

`A265893(A166352(n)!*A071919(n))`
-/

namespace A265892.P6869449710634297555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 ((Nat.factorial (A166352 n).toNat : ℤ) * A071919 n).toNat

end

end A265892.P6869449710634297555

namespace A265892

/-- `A265893(A166352(n)!*A071919(n))` -/
def P6869449710634297555.Spec : Prop :=
  ∀ n, P6869449710634297555.a n = A265892 n

end A265892

/-! ## A265892.P13143334643432517055

`A265893(A025668(n+1)!*A071919(n))`
-/

namespace A265892.P13143334643432517055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 ((Nat.factorial (A025668 (n + 1)).toNat : ℤ) * A071919 n).toNat

end

end A265892.P13143334643432517055

namespace A265892

/-- `A265893(A025668(n+1)!*A071919(n))` -/
def P13143334643432517055.Spec : Prop :=
  ∀ n, P13143334643432517055.a n = A265892 n

end A265892

/-!
# A265893: a(n) = A084558(n) - A230403(n); the length of factorial base representation of n without its trailing zeros.

The programs for A265893, the canonical program `A265893.P4567769337452854523` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265893 has offset 0).

The definition of A265893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265893.P4567769337452854523

`A084558(n)-A230403(A028310(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265893

/-- `A084558(n)-A230403(A028310(n))` -/
def P4567769337452854523.Spec : Prop :=
  ∀ n, P4567769337452854523.a n = A265893 n

theorem P4567769337452854523.correct : P4567769337452854523.Spec := by
  intro n
  simp only [A265893]

end A265893

/-! ## A265893.P8101118599940320270

`A084558(n)+1-A055881(A220695(n+1))`
-/

namespace A265893.P8101118599940320270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (1 - A055881 (A220695 (n + 1)).toNat)

end

end A265893.P8101118599940320270

namespace A265893

/-- `A084558(n)+1-A055881(A220695(n+1))` -/
def P8101118599940320270.Spec : Prop :=
  ∀ n, P8101118599940320270.a n = A265893 n

end A265893

/-! ## A265893.P1593151467561418856

`A001222(A278225(n))-A055881(A220695(n+1))`
-/

namespace A265893.P1593151467561418856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278225 n).toNat - A055881 (A220695 (n + 1)).toNat

end

end A265893.P1593151467561418856

namespace A265893

/-- `A001222(A278225(n))-A055881(A220695(n+1))` -/
def P1593151467561418856.Spec : Prop :=
  ∀ n, P1593151467561418856.a n = A265893 n

end A265893

/-! ## A265893.P2118442665918907166

`A084558(A231720(n))-A055881(A220695(n+1))`
-/

namespace A265893.P2118442665918907166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A231720 n).toNat - A055881 (A220695 (n + 1)).toNat

end

end A265893.P2118442665918907166

namespace A265893

/-- `A084558(A231720(n))-A055881(A220695(n+1))` -/
def P2118442665918907166.Spec : Prop :=
  ∀ n, P2118442665918907166.a n = A265893 n

end A265893

/-! ## A265893.P15839914362721224223

`A001222(A111701(A275725(n)))`
-/

namespace A265893.P15839914362721224223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A111701 (A275725 n).toNat).toNat

end

end A265893.P15839914362721224223

namespace A265893

/-- `A001222(A111701(A275725(n)))` -/
def P15839914362721224223.Spec : Prop :=
  ∀ n, P15839914362721224223.a n = A265893 n

end A265893

/-! ## A265893.P4453434688858697706

`A265892(∑[n+1]+1)`
-/

namespace A265893.P4453434688858697706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265893.P4453434688858697706

namespace A265893

/-- `A265892(∑[n+1]+1)` -/
def P4453434688858697706.Spec : Prop :=
  ∀ n, P4453434688858697706.a n = A265893 n

end A265893

/-!
# A265894: a(n) = A099563(A001813(n)); the most significant digit in factorial base representation of (2n)! / n!.

The programs for A265894, there is no canonical definition to state claims against.
-/

/-! ## A265894.P16521269844494821053

`A265890(2*(n+1)²-1)`
-/

namespace A265894.P16521269844494821053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265890 (2 * (n + 1) ^ 2 - 1)

end

end A265894.P16521269844494821053

/-! ## A265894.P1619588801175844285

`gcd(A117154(A117132(2*n+5)), A117167(n+4))`
-/

namespace A265894.P1619588801175844285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117154 (A117132 (2 * n + 5)).toNat) (A117167 (n + 4))

end

end A265894.P1619588801175844285

/-! ## A265894.P9638862860794811233

`A053978(gcd(A000740(n+1), A056308(n)))`
-/

namespace A265894.P9638862860794811233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053978 (Int.gcd (A000740 (n + 1)) (A056308 n))

end

end A265894.P9638862860794811233

/-!
# A265895: Square array: A(row,col) = A263273(A265345(row,col)) = 2^row * A263273(A265341(col)).

The programs for A265895, there is no canonical definition to state claims against.
-/

/-! ## A265895.P16913073661021293525

`A135764(A265896(A135764(n+1)))`
-/

namespace A265895.P16913073661021293525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A265896 (A135764 (n + 1)).toNat).toNat

end

end A265895.P16913073661021293525

/-! ## A265895.P76973096063192957

`A263273(A265345(n+1))`
-/

namespace A265895.P76973096063192957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265345 (n + 1)).toNat

end

end A265895.P76973096063192957

/-! ## A265895.P12028592257215739746

`A263273(A265347(∑[char[∑[n]]]²-n))`
-/

namespace A265895.P12028592257215739746
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265347 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat

end

end A265895.P12028592257215739746

/-! ## A265895.P17718463367186629669

`A263272(A265342(A265345(n+1))/2)`
-/

namespace A265895.P17718463367186629669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A265342 (A265345 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A265895.P17718463367186629669

/-! ## A265895.P3282888989920855437

`A265354(A264985(A265345(A264985(A264985(n+1)))))`
-/

namespace A265895.P3282888989920855437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A264985 (A265345 (A264985 (A264985 (n + 1)).toNat).toNat).toNat).toNat

end

end A265895.P3282888989920855437

/-! ## A265895.P4053071398907268976

`A265345(A265896(A265345(A265911(A265341(n)))))`
-/

namespace A265895.P4053071398907268976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A265896 (A265345 (A265911 (A265341 n).toNat).toNat).toNat).toNat

end

end A265895.P4053071398907268976

/-! ## A265895.P13710762490929367451

`A265345(A265896(A265345(A265345(A265346(n+1)))))`
-/

namespace A265895.P13710762490929367451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A265896 (A265345 (A265345 (A265346 (n + 1)).toNat).toNat).toNat).toNat

end

end A265895.P13710762490929367451

/-!
# A265896: Inverse permutation to A265895: a(n) = A265346(A263273(n)).

The programs for A265896, there is no canonical definition to state claims against.
-/

/-! ## A265896.P2570241595757443241

`A265346(A263273(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265896.P2570241595757443241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (A263273 (n + 1)).toNat

end

end A265896.P2570241595757443241

/-! ## A265896.P599083675869830288

`A265346(3^val(n+1, 3)*A030102(n+1))`
-/

namespace A265896.P599083675869830288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 ((3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) * A030102 (n + 1)).toNat

end

end A265896.P599083675869830288

/-! ## A265896.P9860393080678842340

`A265346(A030102(n+1)*A038500(n+1))`
-/

namespace A265896.P9860393080678842340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (A030102 (n + 1) * A038500 (n + 1)).toNat

end

end A265896.P9860393080678842340

/-! ## A265896.P2169511037808321501

`A265346(lcm(A030102(n+1), A038500(n+1)))`
-/

namespace A265896.P2169511037808321501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (Int.lcm (A030102 (n + 1)) (A038500 (n + 1)))

end

end A265896.P2169511037808321501

/-! ## A265896.P593873472740671533

`A265346(A265895(A265346(n+1)))`
-/

namespace A265896.P593873472740671533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (A265895 (A265346 (n + 1)).toNat).toNat

end

end A265896.P593873472740671533

/-!
# A265897: Numbers n for which (2n+1)! / n! [= A000407(n)] is >= k! but < 2*k! for some k; positions of ones in A265891.

The programs for A265897, there is no canonical definition to state claims against.
-/

/-! ## A265897.P4644735197839089325

`eq[1, A265891(n)]`
-/

namespace A265897.P4644735197839089325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265897.P4644735197839089325

/-! ## A265897.P3958030785711145126

`record[n/A265891(n)^A099563(n)]`
-/

namespace A265897.P3958030785711145126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A265891 n : ℚ) ^ (A099563 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265897.P3958030785711145126

/-! ## A265897.P4019138771823955511

`record[A005843(n)-n*A265891(n)]`
-/

namespace A265897.P4019138771823955511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (n : ℤ) * A265891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265897.P4019138771823955511

/-! ## A265897.P12438532253852160798

`record[A004442(A004442(n))/A265891(n)]`
-/

namespace A265897.P12438532253852160798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 (A004442 n).toNat : ℚ) / (A265891 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265897.P12438532253852160798

/-! ## A265897.P13398433768831383973

`record[n/A090105(A265891(n)+1)]`
-/

namespace A265897.P13398433768831383973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A090105 (A265891 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265897.P13398433768831383973

/-! ## A265897.P8812938837789536274

`record[A005843(n)/A005843(A265891(n))]`
-/

namespace A265897.P8812938837789536274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A005843 (A265891 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265897.P8812938837789536274

/-! ## A265897.P5312236334238625039

`eq[n, n*A239259(A265894(n+1))]`
-/

namespace A265897.P5312236334238625039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A239259 (A265894 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265897.P5312236334238625039

/-!
# A265898: Numbers n for which (2n)! / n! [= A001813(n)] is >= k! but < 2*k! for some k; positions of ones in A265894.

The programs for A265898, there is no canonical definition to state claims against.
-/

/-! ## A265898.P17814155660674078715

`eq[1, A265894(n)]`
-/

namespace A265898.P17814155660674078715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265898.P17814155660674078715

/-! ## A265898.P2559967949271900927

`record[A005843(n)-n*A265894(n)]`
-/

namespace A265898.P2559967949271900927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (n : ℤ) * A265894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P2559967949271900927

/-! ## A265898.P8898972965639624217

`record[(A265894(n)-2)*A001489(n)]`
-/

namespace A265898.P8898972965639624217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265894 n - 2) * A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P8898972965639624217

/-! ## A265898.P5630958287986024796

`record[A222235(A222235(n))/A265894(n)]`
-/

namespace A265898.P5630958287986024796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222235 (A222235 n).toNat : ℚ) / (A265894 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P5630958287986024796

/-! ## A265898.P13072924356015203992

`record[A222239(A222239(n))/A265894(n)]`
-/

namespace A265898.P13072924356015203992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222239 (A222239 n).toNat : ℚ) / (A265894 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P13072924356015203992

/-! ## A265898.P13291227008642976520

`record[A001489(n)/A001489(A265894(n))]`
-/

namespace A265898.P13291227008642976520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 n : ℚ) / (A001489 (A265894 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P13291227008642976520

/-! ## A265898.P8365808086257209117

`record[A005843(n)/A005843(A265894(n))]`
-/

namespace A265898.P8365808086257209117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A005843 (A265894 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P8365808086257209117

/-! ## A265898.P7181205438896024483

`record[A092569(A092569(n))/A265894(n)]`
-/

namespace A265898.P7181205438896024483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (A092569 n).toNat : ℚ) / (A265894 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P7181205438896024483

/-! ## A265898.P11275842493498199438

`record[A004396(n)/A265894(A004396(n))]`
-/

namespace A265898.P11275842493498199438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 n : ℚ) / (A265894 (A004396 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265898.P11275842493498199438

/-!
# A265899: After a(1) = 1, positions of descents in A265894.

The programs for A265899, there is no canonical definition to state claims against.
-/

/-! ## A265899.P4602720734165465193

`A266119(n)+a(n-1)` with `a(0)=1`
-/

namespace A265899.P4602720734165465193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266119 n + a (n - 1)

end

end A265899.P4602720734165465193

/-! ## A265899.P9058528289375293068

`∑[A266119(A028310(n))]-1`
-/

namespace A265899.P9058528289375293068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266119 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A265899.P9058528289375293068

/-! ## A265899.P14109073776078409572

`∑[A266119(A028310(n))/A054977(n)]`
-/

namespace A265899.P14109073776078409572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266119 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265899.P14109073776078409572

/-! ## A265899.P16347892676781254774

`∑[A266119(A028310(n))^(A000290(n)%(n+1))]`
-/

namespace A265899.P16347892676781254774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266119 (A028310 n).toNat : ℚ) ^ (Int.tmod (A000290 n) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265899.P16347892676781254774

/-! ## A265899.P1885604389309720740

`∑[A266119(n+1)]+1-A266119(n+1)`
-/

namespace A265899.P1885604389309720740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A266119 (n + 1))

end

end A265899.P1885604389309720740

/-! ## A265899.P12302821380752863941

`lt[Δ[A265894(n)], 1]+1`
-/

namespace A265899.P12302821380752863941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A265899.P12302821380752863941

/-! ## A265899.P16839764652892542486

`∑[A266119(A233583(n+2))]-A266119(n+1)`
-/

namespace A265899.P16839764652892542486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266119 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A266119 (n + 1)

end

end A265899.P16839764652892542486

